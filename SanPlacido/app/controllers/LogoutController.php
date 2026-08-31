<?php
// 🔐 INICIAR SESIÓN
session_start();

// 🧹 VACIAR VARIABLES DE SESIÓN
$_SESSION = [];

// 🍪 ELIMINAR COOKIE DE SESIÓN (seguridad extra)
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(
        session_name(),
        '',
        time() - 42000,
        $params["path"],
        $params["domain"],
        $params["secure"],
        $params["httponly"]
    );
}

// ❌ DESTRUIR SESIÓN
session_destroy();

// 🚀 REDIRIGIR AL LOGIN
header('Location: /SanPlacido/templates/views/cliente/login.php');
exit;
