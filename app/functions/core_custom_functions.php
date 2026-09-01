<?php
/**
 * Funciones personalizadas del proyecto San Plácido
 * Aquí van funciones específicas de tu negocio

    


 */

require_once FUNCTIONS . 'permisos.php';

// Ejemplo de función personalizada
function calcular_descuento($precio, $porcentaje) {
    return $precio - ($precio * $porcentaje / 100);
}

/**
 * Convierte una fecha en un texto relativo tipo "hace 5 minutos".
 */
function timeAgo($fecha) {
    $ahora = new DateTime();
    $entonces = new DateTime($fecha);
    $diff = $ahora->getTimestamp() - $entonces->getTimestamp();

    if ($diff < 60)     return 'hace un momento';
    if ($diff < 3600)   return 'hace ' . floor($diff / 60) . ' min';
    if ($diff < 86400)  return 'hace ' . floor($diff / 3600) . ' h';
    if ($diff < 604800) return 'hace ' . floor($diff / 86400) . ' d';

    return $entonces->format('d/m/Y H:i');
}

// Más funciones según las necesites...