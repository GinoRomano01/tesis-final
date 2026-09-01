<?php

class CategoriaController extends Controller {
    
    private $model;
    
    public function __construct() {
        parent::__construct();
        $this->model = new CategoriaModel();
        $this->title = 'Categorías - San Plácido';
    }
    
    /**
     * Obtener todas las categorías
     * Este método es llamado por HomeController
     */
    public function mostrarCategorias() {
        try {
            return $this->model->obtenerTodas();
        } catch (Exception $e) {
            error_log('Error al obtener categorías: ' . $e->getMessage());
            return [];
        }
    }
    
    /**
     * Listar categorías (vista propia)
     * URL: /categoria o /categoria/index
     */
    public function index() {
        $categorias = $this->mostrarCategorias();
        
        $this->render('index', [
            'categorias' => $categorias
        ]);
    }
}