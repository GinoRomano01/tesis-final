<?php

/**
 * NotificacionModel: gestiona las notificaciones tipo campanita
 * tanto para el panel admin (IdUsuario) como para el cliente (IdCliente).
 */
class NotificacionModel {

    /**
     * Devuelve el actor logueado actual: quién debe ver las notificaciones.
     * @return array ['campo' => 'IdUsuario'|'IdCliente', 'id' => int]|null
     */
    public static function actorActual() {
        if (isset($_SESSION['usuario_id'])) {
            return ['campo' => 'IdUsuario', 'id' => (int) $_SESSION['usuario_id']];
        }
        if (isset($_SESSION['cliente_id'])) {
            return ['campo' => 'IdCliente', 'id' => (int) $_SESSION['cliente_id']];
        }
        return null;
    }

    /**
     * Últimas notificaciones para el actor logueado (para el dropdown).
     */
    public static function ultimasParaActual($limit = 8) {
        $actor = self::actorActual();
        if (!$actor) return [];

        $sql = "SELECT * FROM notificaciones 
                WHERE {$actor['campo']} = ? AND FechaBorrado IS NULL 
                ORDER BY FechaCreacion DESC 
                LIMIT " . (int) $limit;

        $result = Db::query($sql, [$actor['id']]);
        return $result->fetchAll();
    }

    /**
     * Listado paginado para la página "Ver todas".
     */
    public static function paginadoParaActual($pagina = 1, $porPagina = 20) {
        $actor = self::actorActual();
        if (!$actor) return ['items' => [], 'total' => 0];

        $offset = ($pagina - 1) * $porPagina;

        $sql = "SELECT * FROM notificaciones 
                WHERE {$actor['campo']} = ? AND FechaBorrado IS NULL 
                ORDER BY FechaCreacion DESC 
                LIMIT {$porPagina} OFFSET {$offset}";
        $items = Db::query($sql, [$actor['id']])->fetchAll();

        $total = Db::query(
            "SELECT COUNT(*) AS c FROM notificaciones WHERE {$actor['campo']} = ? AND FechaBorrado IS NULL",
            [$actor['id']]
        )->fetch()['c'];

        return ['items' => $items, 'total' => (int) $total];
    }

    /**
     * Cantidad de notificaciones no leídas del actor logueado.
     */
    public static function contarNoLeidas() {
        $actor = self::actorActual();
        if (!$actor) return 0;

        $sql = "SELECT COUNT(*) AS c FROM notificaciones 
                WHERE {$actor['campo']} = ? AND Leida = 0 AND FechaBorrado IS NULL";
        $result = Db::query($sql, [$actor['id']]);
        return (int) $result->fetch()['c'];
    }

    /**
     * Marca como leídas TODAS las notificaciones del actor logueado.
     * Se llama al abrir la campanita (comportamiento pedido por el usuario).
     */
    public static function marcarTodasComoLeidas() {
        $actor = self::actorActual();
        if (!$actor) return false;

        $sql = "UPDATE notificaciones 
                SET Leida = 1, FechaLeida = NOW() 
                WHERE {$actor['campo']} = ? AND Leida = 0 AND FechaBorrado IS NULL";
        Db::query($sql, [$actor['id']]);
        return true;
    }

    /**
     * Crea una notificación nueva. Usalo desde otros controllers cuando
     * ocurre un evento (venta nueva, reseña pendiente, stock bajo, etc.)
     *
     * @param array $data ['IdUsuario'=>?, 'IdCliente'=>?, 'Tipo', 'Titulo', 'Contenido'=>?, 'UrlDestino'=>?, 'Icono'=>?]
     */
    public static function crear($data) {
        $sql = "INSERT INTO notificaciones 
                (IdUsuario, IdCliente, Tipo, Titulo, Contenido, UrlDestino, Icono) 
                VALUES (?, ?, ?, ?, ?, ?, ?)";

        Db::query($sql, [
            $data['IdUsuario']   ?? null,
            $data['IdCliente']   ?? null,
            $data['Tipo']        ?? 'sistema',
            $data['Titulo'],
            $data['Contenido']   ?? null,
            $data['UrlDestino']  ?? null,
            $data['Icono']       ?? 'fa-bell',
        ]);
        return true;
    }

    /**
     * Notifica a TODOS los usuarios con un tipo de rol dado (ej: para avisar
     * a todos los admins/gerentes de una venta nueva). Inserta una fila por
     * usuario para que cada uno tenga su propio estado de "leída".
     */
    public static function notificarARoles($idsRoles, $data) {
        $placeholders = implode(',', array_fill(0, count($idsRoles), '?'));
        $usuarios = Db::query(
            "SELECT Id FROM Usuario WHERE IdTipodeRol IN ({$placeholders}) AND FechaBorrado IS NULL",
            $idsRoles
        )->fetchAll();

        foreach ($usuarios as $u) {
            $data['IdUsuario'] = $u['Id'];
            $data['IdCliente'] = null;
            self::crear($data);
        }
        return true;
    }
}