<?php
// Guardá este archivo en la RAÍZ del proyecto (SanPlacido/test_stock.php)
// Entrá a: https://tu-dominio/SanPlacido/test_stock.php
// BORRALO después de diagnosticar

error_reporting(E_ALL);
ini_set('display_errors', 1);

echo '<pre>';

// 1. Verificar que el archivo existe
$path = __DIR__ . '/app/controllers/StockController.php';
echo "Archivo existe: " . (file_exists($path) ? 'SÍ' : 'NO') . "\n";

// 2. Verificar sintaxis
$output = shell_exec("php -l \"{$path}\" 2>&1");
echo "Sintaxis PHP: " . $output . "\n";

// 3. Cargar el archivo y verificar métodos
require_once __DIR__ . '/app/config/core_config.php';
require_once CLASSES . 'Autoloader.php';
Autoloader::init();
require_once CLASSES . 'Controller.php';
require_once CLASSES . 'Model.php';
require_once CLASSES . 'Db.php';

// Cargar el controller sin ejecutar el constructor
// usando ReflectionClass para no triggerar la auth
$rf = new ReflectionClass('StockController');
$metodos = array_map(fn($m) => $m->getName(), $rf->getMethods(ReflectionMethod::IS_PUBLIC));
sort($metodos);

echo "\nMétodos públicos de StockController:\n";
foreach ($metodos as $m) {
    echo "  - $m\n";
}

echo "\nmethod_exists('StockController', 'importarexcel'): ";
echo var_export(method_exists('StockController', 'importarexcel'), true) . "\n";

echo "\nmethod_exists('StockController', 'exportarexcel'): ";
echo var_export(method_exists('StockController', 'exportarexcel'), true) . "\n";

echo "\nmethod_exists('StockController', 'index'): ";
echo var_export(method_exists('StockController', 'index'), true) . "\n";

echo '</pre>';
