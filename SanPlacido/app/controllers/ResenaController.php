<?php
class ResenaController extends Controller {

    public function index() {
        Redirect::to('catalogo');
    }

    public function guardar() {
        // 1. Sesión: clientes o empleados (todos pueden reseñar)
        if (empty($_SESSION['usuario_id'])) {
            $this->redirectWithMessage('login', 'Tenés que iniciar sesión para dejar una reseña.', 'warning');
            return;
        }

        // 2. Validar
        if (!$this->validatePost(['id_producto', 'puntuacion', 'contenido'])) {
            $this->redirectWithMessage('catalogo', 'Faltan datos en la reseña.', 'danger');
            return;
        }

        // El IdCliente sale de la sesión: si es cliente directo usamos cliente_id,
        // si es empleado (que también puede reseñar), usamos usuario_id como fallback.
        $idCliente   = (int) ($_SESSION['cliente_id'] ?? $_SESSION['usuario_id']);
        $idProducto  = (int) $this->post('id_producto');
        $puntuacion  = max(1, min(5, (int) $this->post('puntuacion')));
        $titulo      = $this->post('titulo');
        $contenidoOg = trim($_POST['contenido']); // sin clean() para preservar saltos de línea

        if (mb_strlen($contenidoOg) < 10) {
            $this->redirectWithMessage('productocliente/index/'.$idProducto,
                'La reseña es demasiado corta (mínimo 10 caracteres).', 'warning');
            return;
        }
        if (mb_strlen($contenidoOg) > RESENA_MAX_CARACTERES) {
            $contenidoOg = mb_substr($contenidoOg, 0, RESENA_MAX_CARACTERES);
        }

        // 3. Embellecer SIEMPRE (sin tocar el sentido del original)
        $contenidoFinal = $contenidoOg;
        $fueEmbellecida = false;
        $emb = ResenaIAService::embellecer($contenidoOg);
        if ($emb['ok'] && !empty($emb['texto'])) {
            $contenidoFinal = $emb['texto'];
            $fueEmbellecida = true;
        }

        // 4. Analizar el texto final
        $analisis = ResenaIAService::analizar($contenidoFinal);

        // 5. Decidir estado según umbrales y flags
        $estado = ResenaIAService::decidirEstado($analisis);

        // 6. Persistir
        $resenaModel = new ResenaModel();
        $idResena = $resenaModel->crear([
            'IdCliente'         => $idCliente,
            'IdProducto'        => $idProducto,
            'Puntuacion'        => $puntuacion,
            'Titulo'            => $titulo,
            'ContenidoOriginal' => $contenidoOg,
            'ContenidoPublicado'=> $contenidoFinal,
            'Estado'            => $estado,
            'FueEmbellecida'    => $fueEmbellecida,
        ]);

        (new ResenaAnalisisModel())->guardar($idResena, $analisis);

        $hist = new ResenaHistorialModel();
        $hist->registrar($idResena, 'creada', $idCliente, ['embellecida' => $fueEmbellecida]);
        if ($fueEmbellecida) {
            $hist->registrar($idResena, 'embellecida', $idCliente, []);
        }
        $hist->registrar($idResena, 'analizada', null, [
            'sentimiento'   => $analisis['sentimiento'],
            'toxicidad'     => $analisis['score_toxicidad'],
            'flags'         => $analisis['flags'],
            'estado_final'  => $estado,
        ]);

        // 7. Notificar a moderadores si la reseña quedó pendiente de revisión
        if ($estado === 'en_revision') {
            $this->_notificarModeradores($idResena, $idProducto, $puntuacion, $analisis);
        }

        // 8. Mensaje según estado
        $map = [
            'aprobada'    => ['¡Gracias! Tu reseña fue publicada.', 'success'],
            'en_revision' => ['Gracias por tu reseña. Está en revisión y se publicará pronto.', 'info'],
            'rechazada'   => ['Tu reseña no cumple con las normas de la comunidad y no fue publicada.', 'warning'],
        ];
        list($msg, $tipo) = $map[$estado] ?? ['Tu reseña fue recibida.', 'info'];

        $this->redirectWithMessage('productocliente/index/'.$idProducto, $msg, $tipo);
    }

    /**
     * Notifica a los gerentes (rol 1) que hay una reseña esperando moderación manual.
     * No corta el flujo del cliente si falla: se loguea y listo.
     */
    private function _notificarModeradores(int $idResena, int $idProducto, int $puntuacion, array $analisis): void {
        try {
            $flags = $analisis['flags'] ?? [];
            $motivo = !empty($flags) ? implode(', ', $flags) : 'sentimiento/puntuación fuera de rango';

            NotificacionModel::notificarARoles([1], [ // 1 = gerente
                'Tipo'       => 'resena_pendiente',
                'Titulo'     => 'Reseña marcada para revisión',
                'Contenido'  => "Puntuación {$puntuacion}/5 — motivo: {$motivo}",
                'UrlDestino' => 'estadisticas/resenas',
                'Icono'      => 'fa-flag',
            ]);
        } catch (\Exception $e) {
            error_log('ResenaController::_notificarModeradores - reseña #' . $idResena . ' - ' . $e->getMessage());
        }
    }
}