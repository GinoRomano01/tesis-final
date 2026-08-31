<?php

class EntregaController extends Controller {

    private EntregaModel $model;

    public function __construct() {
        parent::__construct();
        $this->verificarAdmin();
        $this->title = 'Entregas — San Plácido Admin';
        $this->model = new EntregaModel();

        if (!puedeVerEntregas()) {
            Toast::new('Sin permisos para acceder a Entregas.', 'danger');
            Redirect::to('admin/LobbyAdmin');
            exit;
        }
        $estados = $this->model->getEstados();
        if (empty($estados)) {
            $this->model->seedEstados();
        }
    }

    private function verificarAdmin(): void {
        if (!isset($_SESSION['usuario_id'])) {
            Toast::new('Debés iniciar sesión', 'warning');
            Redirect::to('login');
            exit;
        }
        if (($_SESSION['tipo_usuario'] ?? 2) == 2) {
            Toast::new('Sin permisos', 'danger');
            Redirect::to('');
            exit;
        }
    }

    // ══ LISTADO ═══════════════════════════════════════════════════════════════

    public function index(): void {
        $buscar   = trim($_GET['buscar']   ?? '');
        $idEstado = (int)($_GET['estado']  ?? 0);

        $entregas = $this->model->listarEntregas($buscar, $idEstado);
        $estados  = $this->model->getEstados();
        $tipos    = $this->model->getTiposEntrega();
        $conteos  = $this->model->contarPorEstado();

        $this->render('index', compact('entregas', 'estados', 'tipos', 'buscar', 'idEstado', 'conteos'));
    }

    // ══ EDITAR ════════════════════════════════════════════════════════════════

    public function guardar(): void {
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            Redirect::to('entrega');
            exit;
        }

        $id = (int)($_POST['Id'] ?? 0);
        if ($id <= 0) {
            Toast::new('Entrega no válida', 'danger');
            Redirect::to('entrega');
            exit;
        }

        // Traer la entrega ANTES de editar, para saber si el estado realmente cambió
        $entregaActual   = $this->model->getPorId($id); // asumiendo que existe este método en EntregaModel
        $estadoAnterior  = (int)($entregaActual['IdEstadosdeEntrega'] ?? 0);

        $d = [
            'IdEstadosdeEntrega' => $_POST['IdEstadosdeEntrega'] ?? 1,
            'IdTipodeEntrega'    => $_POST['IdTipodeEntrega']    ?? 1,
            'FechadeEntrega'     => $_POST['FechadeEntrega']     ?? null,
            'Direccion'          => $_POST['Direccion']          ?? '',
            'CostoEnvio'         => $_POST['CostoEnvio']        ?? 0,
            'CodigoEntrega'      => $_POST['CodigoEntrega']      ?? '',
        ];

        $this->model->editarEntrega($id, $d);

        $nuevoEstado = (int)$d['IdEstadosdeEntrega'];
        if ($nuevoEstado !== $estadoAnterior) {
            $this->_notificarCambioEstado($entregaActual, $nuevoEstado);
        }

        Toast::new('Entrega actualizada correctamente', 'success');
        Redirect::to('entrega');
        exit;
    }

    // ══ CAMBIO RÁPIDO DE ESTADO (inline desde la tabla) ══════════════════════

    public function estado($id = null): void {
        $id       = (int)$id;
        $idEstado = (int)($_GET['s'] ?? 0);

        if ($id <= 0 || $idEstado <= 0) {
            Redirect::to('entrega');
            exit;
        }

        $entregaActual = $this->model->getPorId($id);

        $this->model->cambiarEstado($id, $idEstado);

        if ($entregaActual) {
            $this->_notificarCambioEstado($entregaActual, $idEstado);
        }

        Toast::new('Estado actualizado', 'success');
        Redirect::to('entrega');
        exit;
    }

    // ══ NOTIFICACIÓN AL CLIENTE ═══════════════════════════════════════════════

    /**
     * Resuelve el IdCliente dueño de una entrega a partir de la venta asociada.
     */
    private function _getClienteIdDesdeVenta(int $idVenta): ?int {
        $row = Db::query("
            SELECT car.IdCliente
            FROM Venta v
            LEFT JOIN Carrito car ON car.Id = v.IdCarrito
            WHERE v.Id = ?
            LIMIT 1
        ", [$idVenta])->fetch();

        return $row['IdCliente'] ?? null;
    }

    /**
     * Mapea IdEstadosdeEntrega → título + ícono para la notificación.
     * (1=Pendiente, 2=En preparación, 3=Listo para retirar, 4=En camino, 5=Entregado)
     */
    private function _mensajeEstadoEntrega(int $idEstado): array {
        return match ($idEstado) {
            2 => ['Tu pedido está en preparación',      'fa-hammer'],
            3 => ['Tu pedido está listo para retirar',  'fa-box-open'],
            4 => ['Tu pedido está en camino',           'fa-truck'],
            5 => ['Tu pedido fue entregado',            'fa-circle-check'],
            default => ['Actualización de tu pedido',   'fa-bell'],
        };
    }

    private function _notificarCambioEstado(array $entrega, int $nuevoEstado): void {
        $idVenta   = (int)($entrega['IdVenta'] ?? 0);
        if (!$idVenta) return;

        $idCliente = $this->_getClienteIdDesdeVenta($idVenta);
        if (!$idCliente) return;

        [$titulo, $icono] = $this->_mensajeEstadoEntrega($nuevoEstado);

        NotificacionModel::crear([
            'IdCliente'  => $idCliente,
            'Tipo'       => 'entrega_actualizada',
            'Titulo'     => $titulo,
            'Contenido'  => 'Código de entrega: ' . ($entrega['CodigoEntrega'] ?? '—'),
            'UrlDestino' => 'pedidocliente',
            'Icono'      => $icono,
        ]);
    }
}