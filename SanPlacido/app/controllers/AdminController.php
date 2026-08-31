<?php

class AdminController extends Controller {
    
    public function __construct() {
        parent::__construct();
        $this->title = 'Panel Admin - San Plácido';
    }
    
    private function verificarAdmin() {
        // 1. Verificar que esté logueado
        if (!isset($_SESSION['usuario_id'])) {
            Toast::new('Debes iniciar sesión primero', 'warning');
            Redirect::to('login');
            exit;
        }
        
        // 2. Verificar que NO sea cliente (tipo 2)
        $tipoUsuario = $_SESSION['tipo_usuario'] ?? 2;
        if ($tipoUsuario == 2) {
            Toast::new('No tienes permisos para acceder al panel administrativo', 'danger');
            Redirect::to('');
            exit;
        }
    }
    
    /**
     * Lobby Admin (nombre del método coincide con la URL)
     * URL: /admin/LobbyAdmin
     */
    public function LobbyAdmin() {
        $this->verificarAdmin();

        // PARCHE TEMPORAL (ver core_config.php): esta es la primera pantalla
        // que ve el admin al loguearse, asi que sincronizamos aca tambien.
        (new PagoModel())->sincronizarPendientesVencidos();

        $model = new ResumenModel();

        $data = array_merge($this->data, [
            'title'             => 'Panel Admin — San Plácido',
            'totalClientes'     => $model->totalClientes(),
            'pedidosPendientes' => $model->pedidosPendientes(),
            'totalProductos'    => $model->totalProductos(),
            'ventasMes'         => $model->ventasMesActual(),
            'ultimasVentas'     => $model->ultimasVentas(5),
            'ultimosPedidos'    => $model->ultimosPedidos(5),
        ]);

        extract($data);
        require VIEWS . 'admin' . DS . 'LobbyAdmin.php';
    }
    
    /**
     * Lobby (alias)
     * URL: /admin/lobby
     */
    public function lobby() {
        $this->LobbyAdmin();
    }
    
    /**
     * Index (por defecto)
     * URL: /admin o /admin/index
     */
    public function index() {
        $this->LobbyAdmin();
    }
    
    public function clientes() {
        $this->verificarAdmin();
        
        $this->title = 'Clientes - Panel Admin';
        echo "Vista de clientes en desarrollo";
    }
    
    public function productos() {
        $this->verificarAdmin();
        
        $this->title = 'Productos - Panel Admin';
        echo "Vista de productos en desarrollo";
    }
    
    public function usuarios() {
        $this->verificarAdmin();
        
        $this->title = 'Usuarios - Panel Admin';
        echo "Vista de usuarios en desarrollo";
    }
    
    public function stock() {
        $this->verificarAdmin();
        
        $this->title = 'Stock - Panel Admin';
        echo "Vista de stock en desarrollo";
    }
}