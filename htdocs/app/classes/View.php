<?php

class View {
    
    public static function render($view, $data = []) {
        /*
        $viewPath = VIEWS . CONTROLLER . DS . $view . '.php';
        die('Buscando: ' . $viewPath . ' — Existe: ' . (is_file($viewPath) ? 'SI' : 'NO'));
        */
        // Extraer TODAS las variables

        if (!empty($data)) {
            foreach ($data as $key => $value) {
                $$key = $value;
            }
        }
        
        // Construir ruta
        $viewPath = VIEWS . CONTROLLER . DS . $view . '.php';
        
        if (is_file($viewPath)) {
            require $viewPath;
        } else {
            require VIEWS . 'error' . DS . 'View_error_404.php';
        }
    }
}
