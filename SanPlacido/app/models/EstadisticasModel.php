<?php

/**
 * EstadisticasModel
 * -----------------
 * Consultas para el dashboard de estadísticas del admin.
 * Todas las queries usan las tablas de analytics en español
 * más las tablas existentes de SanPlacido.
 */
class EstadisticasModel extends Model {

    // ══ RESUMEN GENERAL ═══════════════════════════════════════════════════════

    /**
     * KPIs del día de hoy vs ayer
     * @return array
     */
    public function kpisHoy(): array {
        $hoy  = date('Y-m-d');
        $ayer = date('Y-m-d', strtotime('-1 day'));

        $stmt = Db::query(
            "SELECT
                SUM(CASE WHEN DATE(fc.FechaDeEmision) = ?
                    THEN fc.MontoTotal ELSE 0 END)          AS ventas_hoy,
                SUM(CASE WHEN DATE(fc.FechaDeEmision) = ?
                    THEN fc.MontoTotal ELSE 0 END)          AS ventas_ayer,
                COUNT(CASE WHEN DATE(fc.FechaDeEmision) = ?
                    AND ep.Nombre = 'Aprobado' THEN 1 END)  AS ordenes_hoy,
                COUNT(CASE WHEN DATE(fc.FechaDeEmision) = ?
                    AND ep.Nombre = 'Aprobado' THEN 1 END)  AS ordenes_ayer
             FROM FacturaCliente fc
             LEFT JOIN EstadodePago ep ON ep.Id = fc.IdEstadoDePago
             WHERE fc.FechaBorrado IS NULL
               AND DATE(fc.FechaDeEmision) IN (?, ?)",
            [$hoy, $ayer, $hoy, $ayer, $hoy, $ayer]
        );
        $row = $stmt->fetch() ?: [];

        // Visitas hoy / ayer
        $vis = Db::query(
            "SELECT
                SUM(DATE(FechaRegistro) = ?) AS visitas_hoy,
                SUM(DATE(FechaRegistro) = ?) AS visitas_ayer
             FROM VistasDePagina
             WHERE DATE(FechaRegistro) IN (?, ?)",
            [$hoy, $ayer, $hoy, $ayer]
        )->fetch() ?: [];

        // Clientes nuevos hoy (con carrito creado hoy como proxy)
        $clientes = Db::query(
            "SELECT
                COUNT(CASE WHEN DATE(u.Id) IS NOT NULL THEN 1 END) AS registros_hoy
             FROM Usuario u
             WHERE u.FechaBorrado IS NULL
               AND u.IdTipoDeRol IS NOT NULL
             LIMIT 1"
        )->fetch() ?: ['registros_hoy' => 0];

        return array_merge($row, $vis, $clientes);
    }

    /**
     * Ventas de los últimos N días (para gráfica de línea)
     * @param int $dias
     * @return array  [{fecha, monto_total, cantidad_ordenes}, ...]
     */
    public function ventasUltimosDias(int $dias = 30): array {
        return Db::query(
            "SELECT
                DATE(fc.FechaDeEmision)       AS fecha,
                COALESCE(SUM(fc.MontoTotal), 0) AS monto_total,
                COUNT(fc.Id)                  AS cantidad_ordenes
             FROM FacturaCliente fc
             LEFT JOIN EstadodePago ep ON ep.Id = fc.IdEstadoDePago
             WHERE fc.FechaBorrado IS NULL
               AND ep.Nombre = 'Aprobado'
               AND fc.FechaDeEmision >= DATE_SUB(CURDATE(), INTERVAL ? DAY)
             GROUP BY DATE(fc.FechaDeEmision)
             ORDER BY fecha ASC",
            [$dias]
        )->fetchAll();
    }

    /**
     * Productos más vendidos
     * @param int $limite
     * @return array
     */
    public function productosMasVendidos(int $limite = 10): array {
        return Db::query(
            "SELECT
                p.Id,
                p.NombredelProducto AS nombre,
                p.URLImagen          AS imagen,
                COALESCE(cat.Nombre, '—') AS categoria,
                SUM(pc.Cantidad)     AS unidades_vendidas,
                SUM(pc.Cantidad * p.PrecioVenta) AS ingreso_total
             FROM ProductoCarrito pc
             JOIN Carrito          c   ON c.Id  = pc.IdCarrito AND c.Estado = 1
             JOIN Producto         p   ON p.Id  = pc.IdProducto
             LEFT JOIN Categoria  cat ON cat.Id = p.IdCategoria
             WHERE p.FechaBorrado IS NULL
             GROUP BY p.Id
             ORDER BY unidades_vendidas DESC
             LIMIT ?",
            [$limite]
        )->fetchAll();
    }

    // ══ VISITAS ═══════════════════════════════════════════════════════════════

    /**
     * Páginas más visitadas
     */
    public function paginasMasVisitadas(int $limite = 10): array {
        return Db::query(
            "SELECT
                UrlVisitada AS url,
                Titulo      AS titulo,
                COUNT(*)    AS total_visitas,
                COUNT(DISTINCT SesionId) AS sesiones_unicas,
                AVG(TiempoEnPagina) AS tiempo_promedio_seg
             FROM VistasDePagina
             WHERE FechaRegistro >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY UrlVisitada, Titulo
             ORDER BY total_visitas DESC
             LIMIT ?",
            [$limite]
        )->fetchAll();
    }

    /**
     * Visitas por día (últimos N días)
     */
    public function visitasPorDia(int $dias = 30): array {
        return Db::query(
            "SELECT
                DATE(FechaRegistro) AS fecha,
                COUNT(*)            AS total_visitas,
                COUNT(DISTINCT SesionId) AS sesiones_unicas
             FROM VistasDePagina
             WHERE FechaRegistro >= DATE_SUB(CURDATE(), INTERVAL ? DAY)
             GROUP BY DATE(FechaRegistro)
             ORDER BY fecha ASC",
            [$dias]
        )->fetchAll();
    }

    /**
     * Distribución por dispositivo
     */
    public function visitasPorDispositivo(): array {
        return Db::query(
            "SELECT
                COALESCE(DispositivoTipo, 'desconocido') AS dispositivo,
                COUNT(*) AS total
             FROM VistasDePagina
             WHERE FechaRegistro >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY DispositivoTipo
             ORDER BY total DESC"
        )->fetchAll();
    }

    // ══ EVENTOS ═══════════════════════════════════════════════════════════════

    /**
     * Eventos por tipo (últimos 30 días)
     */
    public function eventosPorTipo(): array {
        return Db::query(
            "SELECT
                TipoEvento AS tipo,
                COUNT(*)   AS total
             FROM EventosDeUsuario
             WHERE FechaRegistro >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY TipoEvento
             ORDER BY total DESC"
        )->fetchAll();
    }

    /**
     * Embudo de conversión: visita → carrito → checkout → compra
     */
    public function embudoConversion(): array {
        $periodo = "DATE_SUB(NOW(), INTERVAL 30 DAY)";

        $visitas = (int) Db::query(
            "SELECT COUNT(*) FROM VistasDePagina WHERE FechaRegistro >= $periodo"
        )->fetchColumn();

        $carritos = (int) Db::query(
            "SELECT COUNT(*) FROM EventosDeUsuario
             WHERE TipoEvento = 'add_carrito'
               AND FechaRegistro >= $periodo"
        )->fetchColumn();

        $checkouts = (int) Db::query(
            "SELECT COUNT(*) FROM EventosDeUsuario
             WHERE TipoEvento = 'checkout_paso'
               AND FechaRegistro >= $periodo"
        )->fetchColumn();

        $compras = (int) Db::query(
            "SELECT COUNT(*) FROM FacturaCliente fc
             JOIN EstadodePago ep ON ep.Id = fc.IdEstadoDePago
             WHERE ep.Nombre = 'Aprobado'
               AND fc.FechaDeEmision >= $periodo
               AND fc.FechaBorrado IS NULL"
        )->fetchColumn();

        return [
            ['etapa' => 'Visitas',   'cantidad' => $visitas],
            ['etapa' => 'Carrito',   'cantidad' => $carritos],
            ['etapa' => 'Checkout',  'cantidad' => $checkouts],
            ['etapa' => 'Compras',   'cantidad' => $compras],
        ];
    }

    // ══ BÚSQUEDAS ═════════════════════════════════════════════════════════════

    /**
     * Términos más buscados
     */
    public function terminosMasBuscados(int $limite = 20): array {
        return Db::query(
            "SELECT
                TerminoBuscado AS termino,
                COUNT(*)       AS veces,
                AVG(CantidadResultados) AS resultados_promedio
             FROM Busquedas
             WHERE FechaRegistro >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY TerminoBuscado
             ORDER BY veces DESC
             LIMIT ?",
            [$limite]
        )->fetchAll();
    }

    /**
     * Búsquedas sin resultados (para mejorar catálogo)
     */
    public function busquedasSinResultados(int $limite = 20): array {
        return Db::query(
            "SELECT
                TerminoBuscado AS termino,
                COUNT(*) AS veces
             FROM Busquedas
             WHERE CantidadResultados = 0
               AND FechaRegistro >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY TerminoBuscado
             ORDER BY veces DESC
             LIMIT ?",
            [$limite]
        )->fetchAll();
    }

    // ══ VENTAS ADICIONALES ════════════════════════════════════════════════════

    /**
     * Ventas por tipo de pago
     */
    public function ventasPorTipoPago(): array {
        return Db::query(
            "SELECT
                tp.Nombre AS tipo_pago,
                COUNT(fc.Id) AS cantidad,
                SUM(fc.MontoTotal) AS monto_total
             FROM FacturaCliente fc
             JOIN TipodePago tp ON tp.Id = fc.IdTipoDePago
             WHERE fc.FechaBorrado IS NULL
               AND fc.FechaDeEmision >= DATE_SUB(NOW(), INTERVAL 30 DAY)
             GROUP BY tp.Nombre
             ORDER BY monto_total DESC"
        )->fetchAll();
    }

    /**
     * Estado de ventas del mes actual
     */
    public function estadoVentasMes(): array {
        return Db::query(
            "SELECT
                ep.Nombre AS estado,
                COUNT(fc.Id) AS cantidad,
                COALESCE(SUM(fc.MontoTotal), 0) AS monto_total
             FROM FacturaCliente fc
             JOIN EstadodePago ep ON ep.Id = fc.IdEstadoDePago
             WHERE fc.FechaBorrado IS NULL
               AND YEAR(fc.FechaDeEmision)  = YEAR(NOW())
               AND MONTH(fc.FechaDeEmision) = MONTH(NOW())
             GROUP BY ep.Nombre
             ORDER BY cantidad DESC"
        )->fetchAll();
    }

    /**
     * Resumen mensual de ventas (últimos 12 meses)
     */
    public function ventasMensuales(): array {
        return Db::query(
            "SELECT
                DATE_FORMAT(fc.FechaDeEmision, '%Y-%m') AS mes,
                COUNT(fc.Id)                            AS ordenes,
                COALESCE(SUM(fc.MontoTotal), 0)         AS monto_total
             FROM FacturaCliente fc
             JOIN EstadodePago ep ON ep.Id = fc.IdEstadoDePago
             WHERE fc.FechaBorrado IS NULL
               AND ep.Nombre = 'Aprobado'
               AND fc.FechaDeEmision >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)
             GROUP BY DATE_FORMAT(fc.FechaDeEmision, '%Y-%m')
             ORDER BY mes ASC"
        )->fetchAll();
    }

    /**
     * Top clientes por volumen de compra
     */
    public function topClientes(int $limite = 10): array {
        return Db::query(
            "SELECT
                CONCAT(c.Nombre, ' ', c.Apellido) AS cliente,
                c.Id AS id_cliente,
                COUNT(fc.Id)                       AS ordenes,
                SUM(fc.MontoTotal)                 AS total_gastado
             FROM Clientes c
             JOIN FacturaCliente fc ON fc.IdClientes = c.Id
             JOIN EstadodePago   ep ON ep.Id = fc.IdEstadoDePago
             WHERE fc.FechaBorrado IS NULL
               AND ep.Nombre = 'Aprobado'
               AND c.FechaBorrado IS NULL
             GROUP BY c.Id
             ORDER BY total_gastado DESC
             LIMIT ?",
            [$limite]
        )->fetchAll();
    }
}