<?php
require_once __DIR__ . '/../../vendor/autoload.php';

// ─── Detección automática LOCAL vs PRODUCCIÓN ─────────────────────────────────
// Se detecta solo por el dominio, no hace falta comentar/descomentar a mano.
// Como accedés en local A TRAVÉS de ngrok (para que MercadoPago pueda pegarle
// al webhook), esto sigue funcionando bien: HTTP_HOST va a ser el subdominio
// de ngrok (o 'localhost:81' si entrás directo sin pasar por el túnel), y
// ninguno de los dos coincide con el dominio real de producción → IS_LOCAL = true.
define('IS_LOCAL', ($_SERVER['HTTP_HOST'] ?? '') !== 'sanplacido.infinityfreeapp.com');

// ─── Errores: visibles en local, ocultos en producción ────────────────────────
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
// ⚠️ Cada vez que reiniciás ngrok sin dominio fijo pago, te da un subdominio
// nuevo. Actualizá esta línea con la URL que te muestre la consola de ngrok
// ANTES de probar el checkout/webhook, si no MercadoPago no va a poder
// devolver la confirmación del pago a tu servidor local.
define('URL', IS_LOCAL
    ? 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/'
    : 'https://sanplacido.infinityfreeapp.com/'
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

// ─── Base de datos PRODUCCIÓN ──────────────────────────────────────────────────
// ⚠️ Estos valores son distintos a los que tenías antes (sql101 / if0_41807885).
// Confirmá que este es el hosting/base vigente antes de subir a producción.
define('DB_ENGINE', 'mysql');
define('DB_HOST', 'sql200.infinityfree.com');
define('DB_NAME', 'if0_41556808_sanplacido');
define('DB_USER', 'if0_41556808');
define('DB_PASS', 'ginocrack123'); // ⚠️ rotá esta contraseña, quedó expuesta en el chat
define('DB_CHARSET', 'utf8mb4');

// ─── Groq API ─────────────────────────────────────────────────────────────────
define('GROQ_API_KEY', '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'); // ⚠️ rotá esta key
define('GROQ_API_URL', 'https://api.groq.com/openai/v1/chat/completions');
define('GROQ_MODEL', 'llama-3.3-70b-versatile');
define('DEFAULT_CONTROLLER', 'home');
define('DEFAULT_ERROR_CONTROLLER', 'error');
define('DEFAULT_METHOD', 'index');
define('GROK_TIMEOUT', 15);

define('RESENA_AUTO_APROBAR_TOXICIDAD_MAX', 0.20);
define('RESENA_AUTO_RECHAZAR_TOXICIDAD_MIN', 0.75);
define('RESENA_MAX_CARACTERES', 1500);

// ─── Umbrales de stock ──────────────────────────────────────────────────────────
// Las 4 son usadas por StockAnalisisModel.php — faltaban las 2 de FALLBACK,
// eso rompía el diagnóstico de stock con "Undefined constant".
define('STOCK_UMBRAL_BAJO', 2);                    // <= a este valor = "bajo stock"
define('STOCK_UMBRAL_SIN',  0);                     // <= a este valor = "sin stock"
define('STOCK_UMBRAL_MADERAS_FALLBACK', 5);
define('STOCK_UMBRAL_INSUMOS_FALLBACK', 5);
define('DIAS_MATERIAL_MUERTO', 90);                 // sin uso en ventas = material muerto

// ─── Modo de MercadoPago (independiente de IS_LOCAL) ──────────────────────────
// Permite estar en el dominio de producción usando igual las credenciales de
// test mientras seguís probando el checkout. Cambiá a false recién cuando
// tengas las credenciales reales de producción.
define('MP_MODO_TEST', true);

define('MP_PUBLIC_KEY', MP_MODO_TEST
    ? 'TEST-c959d509-b7f4-463c-a39c-56a77334bb0d'
    : 'APP-xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
);

define('MP_ACCESS_TOKEN', MP_MODO_TEST
    ? 'TEST-3999161517431645-031917-b4c56ab2a92b758a94b942484501b309-2436018553'
    : 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
);

// Secreto usado para validar la firma HMAC del webhook (PagoModel::sincronizar...
// usa hash_hmac('sha256', $manifest, MP_WEBHOOK_SECRET)). Se saca del panel de
// MP: Tu integración > Webhooks > (tu webhook) > "Firma secreta". NO es una URL.
define('MP_WEBHOOK_SECRET', 'CLAVE-SECRETA-DEL-PANEL-DE-MP'); // ⚠️ poné acá la firma secreta real

// La URL del webhook (a dar de alta en el panel de MP, no en este archivo) es:
//   IS_LOCAL: URL . 'checkout/webhook'   → hoy sería
//   https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/checkout/webhook
//   (actualizala en el panel de MP cada vez que cambie el subdominio de ngrok)
//   PRODUCCIÓN: https://sanplacido.infinityfreeapp.com/checkout/webhook

// ─── PARCHE TEMPORAL: simulación de webhook por hosting gratuito ──────────────
// InfinityFree bloquea la verificación que hace MercadoPago al dar de alta un
// webhook, por lo que MP no acepta la URL y nunca llega la confirmación async
// de pagos que quedan "pending" (típico en débito).
//
// Todo pago que siga "Pendiente" después de esta cantidad de HORAS se da por
// aprobado automáticamente (ver PagoModel::sincronizarPendientesVencidos()),
// para poder seguir probando el flujo Pedido → Producción sin depender del
// webhook real. Admite decimales para testear rápido, ej: 0.0166 ≈ 1 minuto.
define('PENDIENTE_AUTO_APROBAR_HORAS', 24 * 30); // 720 horas ≈ 30 días