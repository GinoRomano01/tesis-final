/**
 * tracker.js — SanPlacido Analytics
 * ------------------------------------
 * Incluir en el <head> o antes de </body> de cada página:
 *   <script src="<?= JS ?>tracker.js"></script>
 *
 * El script lee automáticamente window.SP_TRACKER si está definido:
 *   <script>
 *     window.SP_TRACKER = {
 *       endpoint:  '<?= URL ?>collect',   // URL del collect.php
 *       usuarioId: <?= $_SESSION['usuario_id'] ?? 'null' ?>,
 *       clienteId: <?= $_SESSION['cliente_id']  ?? 'null' ?>,
 *       sesionId:  '<?= session_id() ?>',
 *     };
 *   </script>
 */
(function () {
  'use strict';

  /* ── Configuración ─────────────────────────────────────────── */
  const cfg = window.SP_TRACKER || {};
  const ENDPOINT  = cfg.endpoint  || '/collect';
  const USUARIO   = cfg.usuarioId || null;
  const CLIENTE   = cfg.clienteId || null;
  const SESION    = cfg.sesionId  || null;
  const INICIO    = Date.now();

  /* ── Helper: enviar evento al servidor ─────────────────────── */
  function enviar(payload) {
    const datos = Object.assign({
      usuario_id: USUARIO,
      cliente_id: CLIENTE,
      sesion_id:  SESION,
    }, payload);

    // Usar sendBeacon si está disponible (no bloquea la navegación)
    const blob = new Blob([JSON.stringify(datos)], { type: 'application/json' });
    if (navigator.sendBeacon) {
      navigator.sendBeacon(ENDPOINT, blob);
    } else {
      fetch(ENDPOINT, { method: 'POST', body: blob, keepalive: true })
        .catch(function () {});
    }
  }

  /* ── 1. Vista de página ─────────────────────────────────────── */
  enviar({
    tipo_evento:  'page_view',
    url_visitada: location.href,
    titulo:       document.title,
    referidor:    document.referrer || null,
    dispositivo:  detectarDispositivo(),
    navegador:    detectarNavegador(),
  });

  /* ── 2. Tiempo en página (beacon al salir) ──────────────────── */
  window.addEventListener('visibilitychange', function () {
    if (document.visibilityState === 'hidden') {
      enviar({
        tipo_evento:       'tiempo_pagina',
        url_visitada:      location.href,
        tiempo_en_pagina:  Math.round((Date.now() - INICIO) / 1000),
      });
    }
  });

  /* ── 3. Clics con data-track ────────────────────────────────── */
  // Uso en HTML:
  //   <button data-track="clic" data-modulo="carrito"
  //           data-elemento-id="42" data-elemento-tipo="producto"
  //           data-valor='{"precio":15000}'>Agregar al carrito</button>
  document.addEventListener('click', function (e) {
    const el = e.target.closest('[data-track]');
    if (!el) return;

    enviar({
      tipo_evento:    el.dataset.track       || 'clic',
      modulo:         el.dataset.modulo      || null,
      elemento_id:    el.dataset.elementoId  || null,
      elemento_tipo:  el.dataset.elementoTipo || null,
      valor_extra:    el.dataset.valor        || null,
      url_visitada:   location.href,
    });
  });

  /* ── 4. Búsquedas (formulario con data-track-busqueda) ─────── */
  // Uso:
  //   <form data-track-busqueda>
  //     <input name="buscar" ...>
  //   </form>
  document.addEventListener('submit', function (e) {
    const form = e.target.closest('[data-track-busqueda]');
    if (!form) return;

    const input = form.querySelector('input[name="buscar"], input[type="search"]');
    if (!input || !input.value.trim()) return;

    enviar({
      tipo_evento:     'busqueda',
      modulo:          'catalogo',
      valor_extra:     JSON.stringify({ query: input.value.trim() }),
      url_visitada:    location.href,
    });
  });

  /* ── Helpers ────────────────────────────────────────────────── */
  function detectarDispositivo() {
    const ua = navigator.userAgent;
    if (/Mobi|Android/i.test(ua))  return 'mobile';
    if (/Tablet|iPad/i.test(ua))   return 'tablet';
    return 'desktop';
  }

  function detectarNavegador() {
    const ua = navigator.userAgent;
    if (/Firefox/i.test(ua))   return 'Firefox';
    if (/Edg/i.test(ua))       return 'Edge';
    if (/OPR|Opera/i.test(ua)) return 'Opera';
    if (/Chrome/i.test(ua))    return 'Chrome';
    if (/Safari/i.test(ua))    return 'Safari';
    return 'Otro';
  }

})();