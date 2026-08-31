<?php

class CarritoModel extends Model {

    // ── Obtener o crear el carrito ACTIVO del cliente ──────────────
    public function obtenerOCrearCarrito(int $clienteId): array {
        $row = Db::query(
            "SELECT * FROM Carrito WHERE IdCliente = ? AND Estado = 0 LIMIT 1",
            [$clienteId]
        )->fetch();

        if (!$row) {
            Db::query(
                "INSERT INTO Carrito (Cantidad, IdCliente, Estado) VALUES (0, ?, 0)",
                [$clienteId]
            );
            $id  = Db::getInstance()->getConnection()->lastInsertId();
            $row = ['Id' => $id, 'IdCliente' => $clienteId, 'Cantidad' => 0, 'Estado' => 0];
        }

        return $row;
    }

    // ── Agregar item o sumar cantidad si ya existe ─────────────────
    public function agregarItem(int $carritoId, int $idProducto, int $cantidad = 1): void {
        $existe = Db::query(
            "SELECT Id, Cantidad FROM ProductoCarrito WHERE IdCarrito = ? AND IdProducto = ? LIMIT 1",
            [$carritoId, $idProducto]
        )->fetch();

        if ($existe) {
            Db::query(
                "UPDATE ProductoCarrito SET Cantidad = Cantidad + ? WHERE Id = ?",
                [$cantidad, $existe['Id']]
            );
        } else {
            Db::query(
                "INSERT INTO ProductoCarrito (IdProducto, IdCarrito, Cantidad) VALUES (?, ?, ?)",
                [$idProducto, $carritoId, $cantidad]
            );
        }

        $this->actualizarContadorCarrito($carritoId);
    }

    // ── Actualizar cantidad de un item ─────────────────────────────
    public function actualizarCantidad(int $carritoId, int $idProducto, int $cantidad): void {
        Db::query(
            "UPDATE ProductoCarrito SET Cantidad = ? WHERE IdCarrito = ? AND IdProducto = ?",
            [$cantidad, $carritoId, $idProducto]
        );
        $this->actualizarContadorCarrito($carritoId);
    }

    // ── Eliminar un item del carrito ───────────────────────────────
    public function eliminarItem(int $carritoId, int $idProducto): void {
        Db::query(
            "DELETE FROM ProductoCarrito WHERE IdCarrito = ? AND IdProducto = ?",
            [$carritoId, $idProducto]
        );
        $this->actualizarContadorCarrito($carritoId);
    }

    // ── Vaciar el carrito (para uso manual desde la web) ──────────
    public function vaciarCarrito(int $carritoId): void {
        Db::query("DELETE FROM ProductoCarrito WHERE IdCarrito = ?", [$carritoId]);
        Db::query("UPDATE Carrito SET Cantidad = 0 WHERE Id = ?", [$carritoId]);
    }

    // ── Concretar el carrito al finalizar una compra ───────────────
    // Marca Estado = 1 para que no aparezca en la web como activo.
    // Los items quedan en BD para historial y la Venta lo referencia.
    public function concretarCarrito(int $carritoId): void {
        Db::query(
            "UPDATE Carrito SET Estado = 1 WHERE Id = ?",
            [$carritoId]
        );
    }

    // ── Contar items únicos en el carrito activo ───────────────────
    public function contarItems(int $carritoId): int {
        return (int) Db::query(
            "SELECT COALESCE(SUM(Cantidad), 0) FROM ProductoCarrito WHERE IdCarrito = ?",
            [$carritoId]
        )->fetchColumn();
    }

    // ── Obtener items del carrito ACTIVO del cliente ───────────────
    public function getItemsCarrito(int $clienteId): array {
        return Db::query("
            SELECT
                pc.Id           AS ItemId,
                pc.Cantidad,
                p.Id            AS IdProducto,
                p.NombredelProducto,
                p.PrecioVenta,
                p.URLImagen,
                p.Ancho, p.Alto, p.Largo,
                c.Nombre        AS NombreCategoria,
                tp.Nombre       AS NombreTipo
            FROM ProductoCarrito pc
            JOIN Carrito         ca ON ca.Id  = pc.IdCarrito
            JOIN Producto        p  ON p.Id   = pc.IdProducto
            LEFT JOIN Categoria      c  ON c.Id  = p.IdCategoria
            LEFT JOIN TipodeProducto tp ON tp.Id = p.IdTipodeProducto
            WHERE ca.IdCliente   = ?
              AND ca.Estado      = 0
              AND p.FechaBorrado IS NULL
            ORDER BY pc.Id ASC
        ", [$clienteId])->fetchAll();
    }

    // ── Actualizar contador en tabla Carrito ───────────────────────
    private function actualizarContadorCarrito(int $carritoId): void {
        Db::query(
            "UPDATE Carrito
             SET Cantidad = (
                 SELECT COALESCE(SUM(Cantidad), 0)
                 FROM ProductoCarrito
                 WHERE IdCarrito = ?
             )
             WHERE Id = ?",
            [$carritoId, $carritoId]
        );
    }
}