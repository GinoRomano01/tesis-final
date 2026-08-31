<?php

class HomeController extends Controller {
    
    public function __construct() {
        parent::__construct();
        $this->title = 'Inicio - San Plácido';
    }
    
    /**
     * Página principal con categorías, productos nuevos y más vendidos
     * URL: http://localhost:81/SanPlacido/
     * URL: http://localhost:81/SanPlacido/home
     */
    public function index() {
        // Categorías
        $categoriaController = new CategoriaController();
        $categorias = $categoriaController->mostrarCategorias();

        // Productos
        $homeProductoModel = new HomeProductoModel();

        $productosNuevos   = $homeProductoModel->obtenerMasNuevos(5);
        $productosVendidos = $homeProductoModel->obtenerMasVendidos(5);

        // Normalizar URLs de imagen
        foreach ($productosNuevos as &$p) {
            $p['URLImagen'] = !empty($p['URLImagen'])
                ? IMG_PRODUCTOS . basename($p['URLImagen'])
                : null;
        }
        foreach ($productosVendidos as &$p) {
            $p['URLImagen'] = !empty($p['URLImagen'])
                ? IMG_PRODUCTOS . basename($p['URLImagen'])
                : null;
        }
        unset($p);

        $this->render('index', [
            'categorias'        => $categorias,
            'productosNuevos'   => $productosNuevos,
            'productosVendidos' => $productosVendidos,
        ]);
    }
}