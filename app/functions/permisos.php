<?php

/**
 * Devuelve el tipo_usuario de la sesión.
 * 1=vendedor, 2=cliente, 3=administrador
 */
function getTipoUsuario(): int {
    return (int)($_SESSION['tipo_usuario'] ?? 2);
}

/**
 * Devuelve el rol de la sesión.
 * 1=gerente, 2=cliente, 3=repartidor, 4=vendedor, 5=carpintero
 */
function getRol(): int {
    return (int)($_SESSION['tipo_rol'] ?? 2);
}

function esAdmin(): bool {
    return getTipoUsuario() === 3;
}

function esGerente(): bool {
    return getRol() === 1;
}

function esVendedor(): bool {
    return getRol() === 4;
}

function esCarpintero(): bool {
    return getRol() === 5;
}

function esRepartidor(): bool {
    return getRol() === 3;
}

/**
 * ¿Puede ver el módulo de usuarios?
 * Solo admin o gerente
 */
function puedeVerUsuarios(): bool {
    return esAdmin() || esGerente();
}

/**
 * ¿Puede eliminar registros?
 * Carpinteros y vendedores no pueden
 */
function puedeEliminar(): bool {
    return esAdmin() || esGerente();
}

/**
 * ¿Puede ver ventas?
 */
function puedeVerVentas(): bool {
    return esAdmin() || esGerente() || esVendedor();
}

/**
 * ¿Puede ver stock?
 */
function puedeVerStock(): bool {
    return esAdmin() || esGerente() || esCarpintero();
}

/**
 * ¿Puede ver producción/pedidos?
 */
function puedeVerProduccion(): bool {
    return esAdmin() || esGerente() || esCarpintero() || esVendedor();
}

/**
 * ¿Puede ver entregas?
 */
function puedeVerEntregas(): bool {
    return esAdmin() || esGerente() || esCarpintero() || esVendedor() || esRepartidor();
}

/**
 * ¿Puede ver estadísticas?
 */
function puedeVerEstadisticas(): bool {
    return esAdmin() || esGerente();
}

/**
 * Guard para controllers — redirige si no tiene permiso.
 * Uso: checkPermiso('puedeVerStock');
 */
function checkPermiso(string $funcion): void {
    if (!$funcion()) {
        Toast::new('No tenés permisos para acceder a esa sección.', 'danger');
        Redirect::to('admin/LobbyAdmin');
        exit;
    }
}