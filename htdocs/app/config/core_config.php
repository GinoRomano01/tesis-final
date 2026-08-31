<?php
require_once __DIR__ . '/../../vendor/autoload.php';

// ─── Detección automática LOCAL vs PRODUCCIÓN ─────────────────────────────────
// Se detecta solo por el dominio, no hace falta comentar/descomentar a mano.
define('IS_LOCAL', ($_SERVER['HTTP_HOST'] ?? '') !== 'sanplacido.infinityfree.me');

// ─── Errores: visibles en local, ocultos en producción ────────────────────────
// (Este bloque va DESPUÉS de definir IS_LOCAL, nunca antes)
if (IS_LOCAL) {
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
} else {
    error_reporting(0);
    ini_set('display_errors', 0);
    ini_set('display_startup_errors', 0);
}

date_default_timezone_set('America/Argentina/Buenos_Aires');

define('LANG', 'es');

define('BASEPATH', IS_LOCAL
    ? '/SanPlacido/'
    : '/'
);

define('AUTH_SALT', 'San Placido!');

define('PORT', IS_LOCAL ? '81' : '80');

// ─── URL ───────────────────────────────────────────────────────────────────────
define('URL', IS_LOCAL
    ? 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/'
    : 'https://sanplacido.infinityfree.me/'
);

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', getcwd() . DS);

define('APP', ROOT . 'app' . DS);
define('CLASSES', APP . 'classes' . DS);
define('CONFIG', APP . 'config' . DS);
define('CONTROLLERS', APP . 'controllers' . DS);
define('FUNCTIONS', APP . 'functions' . DS);
define('MODELS', APP . 'models' . DS);

define('TEMPLATES', ROOT . 'templates' . DS);
define('INCLUDES', TEMPLATES . 'includes' . DS);
define('MODULES', TEMPLATES . 'modules' . DS);
define('VIEWS', TEMPLATES . 'views' . DS);

define('ASSETS', URL . 'assets/');
define('CSS', ASSETS . 'css/');
define('FAVICON', ASSETS . 'favicon/');
define('FONTS', ASSETS . 'fonts/');
define('IMAGES', ASSETS . 'images/');
define('JS', ASSETS . 'js/');
define('PLUGINS', ASSETS . 'plugins/');
define('UPLOADS', ASSETS . 'uploads/');

define('IMG', URL . 'templates/assets/imagenes/');
define('IMG_PRODUCTOS', IMG . 'productos/');
define('IMG_HERO', IMG . 'hero/');
define('IMG_CATEGORIAS', IMG . 'categorias/');

define('SERVICIOS', APP . 'servicios' . DS);

// ─── Base de datos LOCAL ───────────────────────────────────────────────────────
define('LDB_ENGINE', 'mysql');
define('LDB_HOST', 'localhost:3307');
define('LDB_NAME', 'sanplacido');
define('LDB_USER', 'root');
define('LDB_PASS', '');
define('LDB_CHARSET', 'utf8mb4');

// ─── Base de datos PRODUCCIÓN (InfinityFree) ───────────────────────────────────
define('DB_ENGINE', 'mysql');
define('DB_HOST', 'sql101.infinityfree.com');
define('DB_NAME', 'if0_41807885_sanplacido');
define('DB_USER', 'if0_41807885');
define('DB_PASS', 'ginocrack123'); // ⚠️ TODAVÍA es un placeholder — poné la contraseña real (rotada) acá
define('DB_CHARSET', 'utf8mb4');

// ─── Groq API ─────────────────────────────────────────────────────────────────
define('GROQ_API_KEY', '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'); // ⚠️ TODAVÍA es un placeholder — generá una clave nueva y ponela acá
define('GROQ_API_URL', 'https://api.groq.com/openai/v1/chat/completions');
define('GROQ_MODEL', 'llama-3.3-70b-versatile');
define('DEFAULT_CONTROLLER', 'home');
define('DEFAULT_ERROR_CONTROLLER', 'error');
define('DEFAULT_METHOD', 'index');
define('GROK_TIMEOUT', 15);

define('RESENA_AUTO_APROBAR_TOXICIDAD_MAX', 0.20);
define('RESENA_AUTO_RECHAZAR_TOXICIDAD_MIN', 0.75);
define('RESENA_MAX_CARACTERES', 1500);

define('STOCK_UMBRAL_MADERAS_FALLBACK', 5);
define('STOCK_UMBRAL_INSUMOS_FALLBACK', 5);
define('STOCK_UMBRAL_SIN',  0);



define('DIAS_MATERIAL_MUERTO', 90);

// ─── Modo de MercadoPago (independiente de IS_LOCAL) ──────────────────────────
// Cambiá esto a false recién cuando tengas las credenciales reales de producción.
// OJO: esta es la ÚNICA definición de MP_PUBLIC_KEY / MP_ACCESS_TOKEN — antes
// estaban duplicadas y la segunda definición se ignoraba silenciosamente.
define('MP_MODO_TEST', true);

define('MP_PUBLIC_KEY', MP_MODO_TEST
    ? 'TEST-c959d509-b7f4-463c-a39c-56a77334bb0d'
    : 'APP-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
);

define('MP_ACCESS_TOKEN', MP_MODO_TEST
    ? 'TEST-3999161517431645-031917-b4c56ab2a92b758a94b942484501b309-2436018553'
    : 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
);

define('MP_WEBHOOK_SECRET', 'CLAVE-SECRETA-DEL-PANEL-DE-MP'); // ⚠️ TODAVÍA es un placeholder

// ─── PARCHE TEMPORAL: simulación de webhook por hosting gratuito ──────────────
// InfinityFree bloquea el pedido de verificación que hace Mercado Pago al dar
// de alta un webhook (muestra su página anti-bot "?i=1" en vez de nuestro código),
// por lo que MP no acepta la URL y nunca podemos recibir la confirmación async
// de pagos que quedan en estado "pending" (típico en débito).
//
// Mientras tanto: todo pago que siga en estado "Pendiente" después de esta
// cantidad de HORAS se da por aprobado automáticamente (ver
// PagoModel::sincronizarPendientesVencidos()), para poder seguir probando el
// flujo de Pedido → Producción sin depender del webhook real.
//
// Cuando se mude a un dominio/servidor propio: dar de alta el webhook real en
// el panel de MP, borrar este bloque y el método sincronizarPendientesVencidos(),
// y dejar que actualizarEstadoPago() (llamado desde el webhook real) sea la
// única vía de actualización de estado.
//
// Cambiar el valor de acá para ajustar el período. 30 días = 30 * 24 = 720 hs.
// Admite decimales — útil para testear sin esperar horas reales, por ejemplo:
//   0.001  → ~3.6 segundos
//   0.0166 → ~1 minuto
define('PENDIENTE_AUTO_APROBAR_HORAS', 24 * 30); // 720 horas ≈ 30 días