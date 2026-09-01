<?php
require_once __DIR__ . '/../../vendor/autoload.php';

// ─── Detección automática LOCAL vs PRODUCCIÓN ─────────────────────────────────
// Se detecta solo por el dominio, no hace falta comentar/descomentar a mano.
// Sin ngrok, vas a entrar directo por http://localhost:81/SanPlacido/ — ese
// HTTP_HOST tampoco coincide con el dominio de producción, así que esto sigue
// funcionando igual: IS_LOCAL = true.
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
// Sin túnel: accedés directo a Apache en el puerto 81, sin HTTPS pública.
// ⚠️ MercadoPago NO va a poder pegarle al webhook en este modo (no hay URL
// pública). El checkout en sí (ida al Checkout Pro y vuelta) funciona igual,
// pero la confirmación async de pagos "pending" depende 100% del parche
// PENDIENTE_AUTO_APROBAR_HORAS de más abajo.
define('URL', IS_LOCAL
    ? 'http://localhost:81/SanPlacido/'
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
define('LDB_HOST', 'localhost:3306');
define('LDB_NAME', 'sanplacido');
define('LDB_USER', 'root');
define('LDB_PASS', '');
define('LDB_CHARSET', 'utf8mb4');

// ─── Base de datos PRODUCCIÓN ──────────────────────────────────────────────────
// ⚠️ Confirmá que este es el hosting/base vigente antes de subir a producción.
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
// Las 4 son usadas por StockAnalisisModel.php.
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
// En este modo (sin ngrok) no vas a dar de alta ningún webhook, así que este
// valor no se usa realmente — lo dejamos como placeholder por si más adelante
// volvés a usar ngrok o subís a producción.
define('MP_WEBHOOK_SECRET', 'CLAVE-SECRETA-DEL-PANEL-DE-MP');

// ─── PARCHE: simulación de webhook (sin ngrok, no hay forma de recibirlo) ─────
// Sin túnel público, MercadoPago no tiene cómo avisarte que un pago pasó de
// "pending" a aprobado/rechazado. Todo pago que siga "Pendiente" después de
// esta cantidad de HORAS se da por aprobado automáticamente (ver
// PagoModel::sincronizarPendientesVencidos()), para poder seguir probando el
// flujo Pedido → Producción sin depender del webhook real.
// Bajado a un valor chico para pruebas locales rápidas (0.05 hs ≈ 3 minutos).
// Subilo de nuevo a 720 (30 días) si volvés a trabajar contra producción real.
define('PENDIENTE_AUTO_APROBAR_HORAS', 0.05);