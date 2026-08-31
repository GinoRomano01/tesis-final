<?php

/**
 * Convierte un array asociativo en un objeto
 * Útil para acceder a datos con notación de objeto ($user->name)
 * en lugar de notación de array ($user['name'])
 * 
 * @param array $data Array a convertir
 * @return object Objeto con las propiedades del array
 */
function to_Object($data) {
    if (is_array($data)) {
        return (object) $data;
    }
    return $data;
}

/**
 * Obtener el nombre del sitio desde la configuración
 * @return string Nombre del sitio
 */
function get_sitename() {
    return 'San Plácido'; // Puedes mover esto a core_config.php también
}

/**
 * Sanitizar string para prevenir XSS
 * @param string $string String a sanitizar
 * @return string String sanitizado
 */
function clean($string) {
    return htmlspecialchars(trim($string), ENT_QUOTES, 'UTF-8');
}

/**
 * Verificar si el usuario está logueado
 * @return bool
 */
function is_logged_in() {
    return isset($_SESSION['user_id']);
}

/**
 * Verificar si el usuario es administrador
 * @return bool
 */
function is_admin() {
    return isset($_SESSION['user_role']) && $_SESSION['user_role'] === 'admin';
}

/**
 * Formatear precio en pesos argentinos
 * @param float $price Precio a formatear
 * @return string Precio formateado
 */
function format_price($price) {
    return '$' . number_format($price, 2, ',', '.');
}

/**
 * Debug helper - var_dump con formato
 * @param mixed $data Datos a mostrar
 */
function dd($data) {
    echo '<pre>';
    var_dump($data);
    echo '</pre>';
    die();
}