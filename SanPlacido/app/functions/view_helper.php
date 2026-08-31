<?php

/**
 * Renderizar vista con variables usando globals
 */
function load_view($viewPath, $data = []) {
    // Hacer las variables globales para que estén disponibles
    foreach ($data as $key => $value) {
        $GLOBALS[$key] = $value;
    }
    
    // También extraer normalmente
    extract($data);
    
    // Cargar vista
    if (is_file($viewPath)) {
        require $viewPath;
    } else {
        die('❌ Vista no encontrada: ' . $viewPath);
    }
}