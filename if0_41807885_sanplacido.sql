-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql101.infinityfree.com
-- Tiempo de generación: 31-08-2026 a las 18:52:56
-- Versión del servidor: 11.4.13-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_41807885_sanplacido`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AutorizaciondePago`
--

CREATE TABLE `AutorizaciondePago` (
  `Id` int(11) NOT NULL,
  `TokendePago` varchar(255) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL,
  `PaymentIdMP` varchar(100) DEFAULT NULL COMMENT 'ID del pago en MercadoPago',
  `Status` varchar(30) DEFAULT NULL COMMENT 'approved, pending, rejected',
  `StatusDetail` varchar(100) DEFAULT NULL COMMENT 'motivo del rechazo/estado',
  `PaymentMethod` varchar(50) DEFAULT NULL COMMENT 'visa, master, rapipago, etc.',
  `Cuotas` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `AutorizaciondePago`
--

INSERT INTO `AutorizaciondePago` (`Id`, `TokendePago`, `FechaBorrado`, `PaymentIdMP`, `Status`, `StatusDetail`, `PaymentMethod`, `Cuotas`) VALUES
(1, '5e2789ed53c87ff90498a6dfcd4dd792', NULL, '', 'approved', 'simulado_sin_webhook', 'undefined', 1),
(2, '877d8dfb1244d5437e2d46664f3e43a1', NULL, '', 'approved', 'simulado_sin_webhook', 'undefined', 1),
(3, '73364a679ba23728ea15b78eef547dd8', NULL, '', 'approved', 'simulado_sin_webhook', 'undefined', 1),
(4, '2ac7ccebfc366e5983ad797cee717446', NULL, '1345680609', 'approved', 'accredited', 'master', 1),
(5, '71534f922d6944edbfd3455dbd411d8c', NULL, '1345680673', 'approved', 'accredited', 'master', 1),
(6, '653f747cad1ec2c8fc2ae76190dc7337', NULL, '', 'approved', 'simulado_sin_webhook', 'mercadopago_cc', 1),
(7, 'eb9b7764f2d6b3274a07cc1f185c715a', NULL, '', 'approved', 'simulado_sin_webhook', 'mercadopago_cc', 1),
(8, 'cf6558b5a870c3cec753bf2fddd9747c', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(9, '', NULL, '1345679475', 'approved', 'accredited', 'master', 1),
(10, '', NULL, '1345679543', 'approved', 'accredited', 'master', 1),
(11, '', NULL, '1345711761', 'approved', 'accredited', 'master', 3),
(12, '', NULL, '1345712825', 'approved', 'accredited', 'debmaster', 1),
(13, '', NULL, '1326695204', 'approved', 'accredited', 'debmaster', 1),
(14, '', NULL, '1326698396', 'approved', 'accredited', 'debmaster', 1),
(15, '', NULL, '1326715972', 'approved', 'accredited', 'visa', 3),
(16, '', NULL, '1326716096', 'approved', 'accredited', 'debmaster', 1),
(17, '', NULL, '1345767023', 'approved', 'accredited', 'visa', 1),
(18, '', NULL, '1346257119', 'approved', 'accredited', 'visa', 1),
(19, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(20, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(21, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(22, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(23, '', NULL, '1346479929', 'approved', 'accredited', 'debmaster', 1),
(24, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(25, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(26, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(27, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(28, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(29, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(30, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(31, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(32, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(33, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(34, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(35, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(36, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(37, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(38, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(39, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(40, '', NULL, '', 'approved', 'simulado_sin_webhook', '', 1),
(41, '', NULL, '1346576467', 'approved', 'accredited', 'master', 1),
(42, '', NULL, '1327173522', 'approved', 'accredited', 'debvisa', 1),
(43, '', NULL, '1346582391', 'approved', 'accredited', 'visa', 1),
(44, '', NULL, '1327285128', 'approved', 'accredited', 'master', 12),
(45, '', NULL, '1346844183', 'approved', 'accredited', 'visa', 12),
(46, '', NULL, '1327479252', 'approved', 'accredited', 'debmaster', 1),
(47, '', NULL, '1327479282', 'approved', 'accredited', 'visa', 6),
(48, '', NULL, '', '400', '', 'mastercard', 12),
(49, '', NULL, '', '400', '', 'mastercard', 12),
(50, '', NULL, '1327477818', 'approved', 'accredited', 'debvisa', 1),
(51, '', NULL, '1327790978', 'rejected', 'cc_rejected_other_reason', 'debmaster', 1),
(52, '', NULL, '', '500', '', 'mastercard', 1),
(53, '', NULL, '1350387531', 'approved', 'accredited', 'master', 1),
(54, '', NULL, '1327873852', 'approved', 'accredited', 'master', 6),
(55, '', NULL, '1327906546', 'approved', 'accredited', 'debmaster', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Busquedas`
--

CREATE TABLE `Busquedas` (
  `Id` int(11) NOT NULL,
  `TerminoBuscado` varchar(300) NOT NULL COMMENT 'Texto ingresado por el usuario',
  `CantidadResultados` int(11) DEFAULT NULL COMMENT 'Cuántos productos devolvió',
  `IdUsuario` int(11) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `SesionId` varchar(100) DEFAULT NULL,
  `FechaRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Busquedas`
--

INSERT INTO `Busquedas` (`Id`, `TerminoBuscado`, `CantidadResultados`, `IdUsuario`, `IdCliente`, `SesionId`, `FechaRegistro`) VALUES
(1, 'mesa', 1, 4, 4, 'b9cr9clm6e8qfqgn6ugclu926b', '2026-05-07 21:01:58'),
(2, 'silla', 0, 4, 4, 'b9cr9clm6e8qfqgn6ugclu926b', '2026-05-07 21:02:03'),
(3, 'placard', 1, 4, 4, 'b9cr9clm6e8qfqgn6ugclu926b', '2026-05-07 21:02:08'),
(4, 'puertas', 0, 4, 4, 'b9cr9clm6e8qfqgn6ugclu926b', '2026-05-07 21:02:14'),
(5, 'ventanas', 0, 4, 4, 'b9cr9clm6e8qfqgn6ugclu926b', '2026-05-07 21:02:20'),
(6, 'mesa', 1, 4, 4, '5tbqm9bajafvvsu680a9b1ffq6', '2026-05-14 17:02:58'),
(7, 'sillas', 0, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:48:43'),
(8, 'silla', 0, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:48:45'),
(9, 'silla', 0, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:48:49'),
(10, 'si', 1, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:48:54'),
(11, 'sillon', 1, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:49:00'),
(12, 'mesada', 1, 4, 4, '2vuvf3l9gcdrolp95v4f2rd251', '2026-05-14 21:49:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Caja`
--

CREATE TABLE `Caja` (
  `Id` int(11) NOT NULL,
  `CantidadTotal` decimal(10,2) DEFAULT NULL,
  `FechadeCaja` datetime DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Carrito`
--

CREATE TABLE `Carrito` (
  `Id` int(11) NOT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `Estado` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=activo, 1=concretado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Carrito`
--

INSERT INTO `Carrito` (`Id`, `Cantidad`, `IdCliente`, `Estado`) VALUES
(1, 2, 1, 1),
(2, 2, 3, 0),
(3, 1, 2, 1),
(4, 1, 2, 1),
(5, 2, 2, 1),
(6, 2, 2, 1),
(7, 1, 2, 1),
(8, 1, 2, 1),
(9, 1, 2, 1),
(10, 2, 1, 1),
(11, 1, 2, 1),
(12, 2, 1, 1),
(13, 1, 1, 0),
(14, 1, 4, 1),
(15, 1, 4, 1),
(16, 2, 5, 1),
(17, 1, 4, 1),
(18, 4, 4, 1),
(19, 4, 6, 1),
(20, 1, 4, 1),
(21, 1, 6, 1),
(22, 2, 6, 1),
(23, 2, 6, 1),
(24, 3, 10, 1),
(25, 1, 6, 1),
(26, 1, 4, 1),
(27, 2, 4, 1),
(28, 2, 2, 1),
(29, 1, 10, 1),
(30, 1, 10, 1),
(31, 1, 4, 1),
(32, 1, 8, 1),
(33, 1, 11, 1),
(34, 1, 2, 1),
(35, 1, 13, 1),
(36, 1, 13, 1),
(37, 1, 13, 1),
(38, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Categoria`
--

CREATE TABLE `Categoria` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Categoria`
--

INSERT INTO `Categoria` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'muebles interior', NULL),
(2, 'muebles cocina', NULL),
(3, 'placares', NULL),
(4, 'mesas de noche', NULL),
(5, 'aberturas interior', NULL),
(6, 'aberturas exterior', NULL),
(7, 'guarda ropas', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `Id` int(11) NOT NULL,
  `DNI` varchar(300) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `IdLocalidad` int(11) DEFAULT NULL,
  `IdTipodeDni` int(11) DEFAULT NULL,
  `IdDomicilio` int(11) DEFAULT NULL,
  `IdTipodomicilio` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Clientes`
--

INSERT INTO `Clientes` (`Id`, `DNI`, `Nombre`, `Apellido`, `Telefono`, `IdLocalidad`, `IdTipodeDni`, `IdDomicilio`, `IdTipodomicilio`, `FechaBorrado`) VALUES
(1, '46000999', 'LUCÍA', 'FERNÁNDEZ', '3516001234', 1, 1, 1, 1, NULL),
(2, '43410903', 'GINO VALENTIN', 'ROMANO', '3543 579974', 167, 1, 2, 3, NULL),
(3, '25346677', 'teo', 'pelotudo', '3423459821', 179, 1, 3, 1, NULL),
(4, '43410903', 'GINO', 'ROMANO', '3543579974', 174, 1, 10, 1, NULL),
(5, '12907356', 'JOSE', 'PEREZ', '3523367891', 97, 1, 12, 1, NULL),
(6, '45971324', 'JOSE ARTURO', 'RAMIREZ', '3423456821', 11, 1, 13, 1, NULL),
(7, '34690241', 'GERMAN', 'AGUIRRE', '3515578921', 102, 1, 14, 1, NULL),
(8, '31683274', 'Jose Daniel', 'Perez', '35155781239', 3, 1, 15, 1, NULL),
(9, '31683274', 'JOSE DANIEL', 'PEREZ', '35155781239', 3, 1, 16, 1, NULL),
(10, '39789312', 'Juan Carlos', 'Magallan', '3515562345', 127, 1, 17, 1, NULL),
(11, '46010999', 'IGNACIO JUAN', 'DIAZ', '35155781239', 3, 1, 18, 1, NULL),
(12, '43410999', 'JOSE LUIS', 'ANTONIO', '', 6, 1, 19, 1, NULL),
(13, '49532591', 'DANILO ANDRES', 'MACERATA', '3543 579974', 174, 1, 20, 1, NULL),
(14, '43410903', 'CRISTOPHER GIGENA', 'VALDEZ', '', 97, 1, 21, 1, NULL),
(15, '42654901', 'TOMAS YAMIL', 'RUFFINO', '', 97, 1, 22, 1, NULL),
(16, '459999', 'MATIAS', 'IRALDE', '', 97, 1, 23, 1, NULL),
(17, '', 'VIDA', 'RUFFINO', '', NULL, 1, 24, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DatosEmpresa`
--

CREATE TABLE `DatosEmpresa` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `CorreoElectronico` varchar(50) DEFAULT NULL,
  `IdRazonSocial` int(11) DEFAULT NULL,
  `IdLocalidad` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `DatosEmpresa`
--

INSERT INTO `DatosEmpresa` (`Id`, `Nombre`, `Apellido`, `Telefono`, `Calle`, `Numero`, `CorreoElectronico`, `IdRazonSocial`, `IdLocalidad`, `FechaBorrado`) VALUES
(1, 'San Plácido', '', 1100000000, 'Sin calle', 1, 'contacto@sanplacido.com', 1, 1, NULL),
(2, 'San Plácido', '', 1100000000, 'Sin calle', 1, 'contacto@sanplacido.com', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetallesDeBalance`
--

CREATE TABLE `DetallesDeBalance` (
  `Id` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdStock` int(11) DEFAULT NULL,
  `IdCaja` int(11) DEFAULT NULL,
  `IdEstadoBancarios` int(11) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetallesProveedor`
--

CREATE TABLE `DetallesProveedor` (
  `Id` int(11) NOT NULL,
  `IdMaderas` int(11) DEFAULT NULL,
  `IdInsumosdeCarpinteria` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DetallesVenta`
--

CREATE TABLE `DetallesVenta` (
  `Id` int(11) NOT NULL,
  `IdVenta` int(11) NOT NULL,
  `Ancho` decimal(10,2) DEFAULT NULL,
  `Alto` decimal(10,2) DEFAULT NULL,
  `Largo` decimal(10,2) DEFAULT NULL,
  `IdTipodeProducto` int(11) DEFAULT NULL,
  `IdTipodeMadera` int(11) DEFAULT NULL,
  `IdTipodeAcabado` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `DetallesVenta`
--

INSERT INTO `DetallesVenta` (`Id`, `IdVenta`, `Ancho`, `Alto`, `Largo`, `IdTipodeProducto`, `IdTipodeMadera`, `IdTipodeAcabado`, `FechaBorrado`) VALUES
(1, 2, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(2, 3, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(3, 4, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(4, 5, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(5, 6, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(6, 7, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(7, 8, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(8, 9, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(9, 10, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(10, 11, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(11, 12, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(12, 13, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(13, 14, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(14, 15, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(15, 16, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(16, 17, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(17, 18, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(18, 19, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(19, 20, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(20, 21, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(21, 22, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(22, 23, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(23, 24, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(24, 25, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(25, 26, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(26, 27, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(27, 28, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(28, 29, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(29, 30, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(30, 31, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(31, 32, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(32, 33, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(33, 34, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(34, 35, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(35, 36, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(36, 37, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(37, 38, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(38, 39, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(39, 40, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(40, 41, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(41, 42, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(42, 43, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(43, 44, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(44, 44, '70.00', '80.00', '190.00', NULL, NULL, NULL, NULL),
(45, 44, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(46, 45, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(47, 46, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(48, 47, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(49, 47, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(50, 48, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(51, 48, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(52, 49, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(53, 50, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(54, 51, '70.00', '80.00', '190.00', NULL, NULL, NULL, NULL),
(55, 52, '70.00', '80.00', '190.00', NULL, NULL, NULL, NULL),
(56, 52, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(57, 53, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(58, 53, '60.00', '60.00', '160.00', NULL, NULL, NULL, NULL),
(59, 54, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(60, 54, '70.00', '80.00', '190.00', NULL, NULL, NULL, NULL),
(61, 55, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(62, 56, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(63, 57, '70.00', '80.00', '190.00', NULL, NULL, NULL, NULL),
(64, 58, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(65, 59, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(66, 60, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(67, 61, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(68, 62, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL),
(69, 63, '90.00', '180.00', '70.00', NULL, NULL, NULL, NULL),
(70, 64, '70.00', '40.00', '60.00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Diseño`
--

CREATE TABLE `Diseño` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechadeCreación` datetime DEFAULT NULL,
  `UrlDoc` varchar(650) DEFAULT NULL,
  `IdTipodeDiseño` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Domicilio`
--

CREATE TABLE `Domicilio` (
  `Id` int(11) NOT NULL,
  `Calle` varchar(50) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Barrio` varchar(200) DEFAULT NULL,
  `IdTipoDomicilio` int(11) DEFAULT NULL,
  `Piso` int(11) DEFAULT NULL,
  `numeroPiso` int(11) DEFAULT NULL,
  `CodigoPostal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Domicilio`
--

INSERT INTO `Domicilio` (`Id`, `Calle`, `Numero`, `Country`, `Departamento`, `Barrio`, `IdTipoDomicilio`, `Piso`, `numeroPiso`, `CodigoPostal`) VALUES
(1, 'Belgrano', 742, NULL, NULL, 'Nueva Córdoba', 1, NULL, NULL, '5091'),
(2, 'colon', 2456, 'Las Corzuelas', NULL, 'Manzana 8', 3, NULL, NULL, '5126'),
(3, 'colon', 23456, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(4, 'los robles', 345, 'las corzuelas', NULL, '25', 3, NULL, NULL, NULL),
(5, 'los robles', 456, 'las corzuelas', NULL, '25', 3, NULL, NULL, NULL),
(6, 'san miguel', 3546, NULL, NULL, NULL, 2, 4, 67, NULL),
(7, 'san miguel', 3456, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(8, 'san miguel', 4567, NULL, NULL, NULL, 2, 5, 67, NULL),
(9, 'los robles', 987, NULL, NULL, NULL, 2, 5, 67, NULL),
(10, 'los robles', 3456, NULL, NULL, NULL, 1, NULL, NULL, '5111'),
(11, 'los robles', 3456, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(12, 'san martin', 2500, NULL, NULL, NULL, 1, NULL, NULL, '5000'),
(13, 'J. D. Perón', 4512, NULL, NULL, NULL, 1, NULL, NULL, '5071'),
(14, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5062'),
(15, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5113'),
(17, 'joseantonio', 3567, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5113'),
(19, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5241'),
(20, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5002'),
(22, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '5003'),
(23, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Emisor`
--

CREATE TABLE `Emisor` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EntidadBancaria`
--

CREATE TABLE `EntidadBancaria` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Entrega`
--

CREATE TABLE `Entrega` (
  `Id` int(11) NOT NULL,
  `FechadeEntrega` datetime DEFAULT NULL,
  `IdTipodeEntrega` int(11) DEFAULT NULL,
  `IdEstadosdeEntrega` int(11) DEFAULT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `IdVenta` int(11) DEFAULT NULL,
  `CodigoEntrega` varchar(20) DEFAULT NULL,
  `Direccion` varchar(200) DEFAULT NULL,
  `CostoEnvio` decimal(10,2) DEFAULT 0.00,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Entrega`
--

INSERT INTO `Entrega` (`Id`, `FechadeEntrega`, `IdTipodeEntrega`, `IdEstadosdeEntrega`, `IdUsuario`, `IdVenta`, `CodigoEntrega`, `Direccion`, `CostoEnvio`, `FechaBorrado`) VALUES
(1, '2026-03-22 18:12:50', 2, 1, 2, 12, 'SP-6C78E051', 'los robles 456', '20000.00', NULL),
(2, '2026-03-22 18:38:35', 1, 1, 2, 13, 'SP-BE671C75', '', '0.00', NULL),
(3, '2026-03-22 19:28:23', 1, 5, 2, 14, 'SP-B296195F', '', '0.00', NULL),
(4, '2026-03-23 01:46:22', 2, 1, 1, 15, 'SP-2B371CD3', 'san miguel 3456', '20000.00', NULL),
(5, '2026-03-24 20:41:55', 2, 1, 1, 16, 'SP-9ABAFC52', 'san miguel 4567', '20000.00', NULL),
(6, '2026-03-24 20:54:53', 1, 1, 2, 17, 'SP-D145E41C', '', '0.00', NULL),
(7, '2026-03-24 21:45:59', 2, 5, 1, 18, 'SP-3514A567', 'los robles 0987', '20000.00', NULL),
(8, '2026-04-21 21:39:18', 2, 1, 4, 19, 'SP-D2D6063C', 'los robles 3456', '20000.00', NULL),
(9, '2026-05-07 18:49:00', 1, 1, 4, 24, 'SP-4023180C', '', '0.00', NULL),
(10, '2026-05-14 16:53:57', 1, 1, 4, 42, 'SP-0A404431', '', '0.00', NULL),
(11, '2026-05-14 19:50:30', 2, 4, 6, 43, 'SP-9CD6F942', 'J. D. Perón 4512', '20000.00', NULL),
(12, '2026-05-14 21:53:01', 2, 2, 4, 44, 'SP-768947F3', 'los robles 3456', '20000.00', NULL),
(13, '2026-05-28 16:47:01', 2, 1, 4, 45, 'SP-ED744981', 'los robles 3456', '20000.00', NULL),
(14, '2026-05-28 00:00:00', 2, 3, 4, 48, 'SP-6D3B638D', 'J. D. Perón 4512', '20000.00', NULL),
(15, '2026-05-28 00:00:00', 2, 3, 7, 49, 'SP-9FA18E69', 'joseantonio 3567', '20000.00', NULL),
(16, '2026-05-28 00:00:00', 2, 5, 4, 50, 'SP-78E684A8', 'J. D. Perón 4512', '20000.00', NULL),
(17, '2026-05-28 22:35:07', 1, 2, 4, 51, 'SP-7D075582', '', '0.00', NULL),
(18, '2026-06-18 20:36:11', 1, 5, 4, 52, 'SP-9FB61CBA', '', '0.00', NULL),
(19, '2026-06-18 20:37:56', 2, 1, 5, 53, 'SP-6FFEB5D9', 'san martin 2500', '20000.00', NULL),
(20, '2026-06-18 20:40:46', 1, 1, 2, 54, 'SP-B4485A4E', '', '0.00', NULL),
(21, '2026-07-06 17:46:43', 1, 4, 4, 55, 'SP-DCAADD2F', '', '0.00', NULL),
(22, '2026-07-06 17:51:07', 1, 1, 4, 56, 'SP-41ED8B46', '', '0.00', NULL),
(23, '2026-08-04 20:46:43', 1, 4, 4, 57, 'SP-5A4638D6', '', '0.00', NULL),
(24, '2026-08-13 21:05:18', 1, 4, 4, 58, 'SP-96F9F41A', '', '0.00', NULL),
(25, '2026-08-13 23:21:13', 1, 1, 10, 59, 'SP-DCC7A2B5', '', '0.00', NULL),
(26, '2026-08-29 00:00:00', 1, 2, 4, 62, 'SP-BCBF0B03', '', '0.00', NULL),
(27, '2026-08-18 16:30:23', 1, 1, 4, 63, 'SP-4E62A109', '', '0.00', NULL),
(28, '2026-08-18 16:36:49', 1, 5, 4, 64, 'SP-B99C1F5F', '', '0.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EstadoBancarios`
--

CREATE TABLE `EstadoBancarios` (
  `Id` int(11) NOT NULL,
  `NumeroCuenta` varchar(30) DEFAULT NULL,
  `MontoTotal` decimal(10,2) DEFAULT NULL,
  `TotalNeto` decimal(10,2) DEFAULT NULL,
  `MontosaPagar` decimal(10,2) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EstadodePago`
--

CREATE TABLE `EstadodePago` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `EstadodePago`
--

INSERT INTO `EstadodePago` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Pendiente', NULL),
(2, 'Aprobado', NULL),
(3, 'Rechazado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EstadosdeEntrega`
--

CREATE TABLE `EstadosdeEntrega` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(200) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `EstadosdeEntrega`
--

INSERT INTO `EstadosdeEntrega` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Pendiente', NULL),
(2, 'En preparación', NULL),
(3, 'Listo para retirar', NULL),
(4, 'En camino', NULL),
(5, 'Entregado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EventosDeUsuario`
--

CREATE TABLE `EventosDeUsuario` (
  `Id` int(11) NOT NULL,
  `TipoEvento` varchar(50) NOT NULL COMMENT 'page_view | clic | registro | login | logout | add_carrito | busqueda | checkout_paso | compra',
  `Modulo` varchar(50) DEFAULT NULL COMMENT 'home | producto | carrito | checkout | login | admin | stock',
  `ElementoId` varchar(100) DEFAULT NULL COMMENT 'ID del elemento clickeado (p.ej. id del producto)',
  `ElementoTipo` varchar(50) DEFAULT NULL COMMENT 'producto | categoria | boton | enlace | formulario',
  `ValorExtra` varchar(500) DEFAULT NULL COMMENT 'JSON libre: {precio, query, paso, etc.}',
  `IdUsuario` int(11) DEFAULT NULL COMMENT 'FK Usuario.Id',
  `IdCliente` int(11) DEFAULT NULL COMMENT 'FK Clientes.Id',
  `SesionId` varchar(100) DEFAULT NULL,
  `IpHash` varchar(64) DEFAULT NULL,
  `FechaRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FacturaCliente`
--

CREATE TABLE `FacturaCliente` (
  `Id` int(11) NOT NULL,
  `NumeroFactura` int(11) DEFAULT NULL,
  `FechadeEmision` datetime DEFAULT NULL,
  `SubTotal` decimal(10,2) DEFAULT NULL,
  `Impuestos` decimal(10,2) DEFAULT NULL,
  `MontoTotal` decimal(10,2) DEFAULT NULL,
  `Interes` decimal(10,2) DEFAULT NULL,
  `Cuotas` int(11) DEFAULT NULL,
  `MarcaTarjeta` varchar(20) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `IdTipodePago` int(11) DEFAULT NULL,
  `IdEstadodePago` int(11) DEFAULT NULL,
  `IdEntidadBancaria` int(11) DEFAULT NULL,
  `IdDatosEmpresa` int(11) DEFAULT NULL,
  `IdAutorizaciondePago` int(11) DEFAULT NULL,
  `IdClientes` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `FacturaCliente`
--

INSERT INTO `FacturaCliente` (`Id`, `NumeroFactura`, `FechadeEmision`, `SubTotal`, `Impuestos`, `MontoTotal`, `Interes`, `Cuotas`, `MarcaTarjeta`, `IdEmisor`, `IdTipodePago`, `IdEstadodePago`, `IdEntidadBancaria`, `IdDatosEmpresa`, `IdAutorizaciondePago`, `IdClientes`, `FechaBorrado`) VALUES
(5, 1, '2026-03-20 20:22:16', '50000.00', '0.00', '50000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 1, 2, NULL),
(6, 2, '2026-03-20 20:26:33', '50000.00', '0.00', '50000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 2, 2, NULL),
(7, 3, '2026-03-20 20:40:35', '50000.00', '0.00', '50000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 3, 2, NULL),
(8, 4, '2026-03-20 20:45:04', '50000.00', '0.00', '50000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 4, 2, NULL),
(9, 5, '2026-03-20 20:50:52', '50000.00', '0.00', '50000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 5, 2, NULL),
(10, 6, '2026-03-20 20:56:48', '100000.00', '0.00', '100000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 6, 2, NULL),
(11, 7, '2026-03-20 21:00:03', '100000.00', '0.00', '100000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 7, 2, NULL),
(12, 8, '2026-03-20 21:10:38', '100000.00', '0.00', '100000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 8, 2, NULL),
(13, 9, '2026-03-20 21:17:40', '100000.00', '0.00', '100000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 9, 2, NULL),
(14, 10, '2026-03-20 21:23:27', '100000.00', '0.00', '100000.00', '0.00', 1, NULL, NULL, 1, 2, NULL, 1, 10, 2, NULL),
(15, 11, '2026-03-22 18:12:48', '70000.00', '0.00', '70000.00', '0.00', 3, 'mastercard', NULL, 1, 2, NULL, 2, 11, 2, NULL),
(16, 12, '2026-03-22 18:38:33', '50000.00', '0.00', '50000.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 12, 2, NULL),
(17, 13, '2026-03-22 19:28:22', '50000.00', '0.00', '50000.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 13, 2, NULL),
(18, 14, '2026-03-23 01:46:20', '121920.00', '0.00', '121920.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 14, 1, NULL),
(19, 15, '2026-03-24 20:41:53', '57804.00', '0.00', '57804.00', '0.00', 3, 'visa', NULL, 1, 2, NULL, 2, 15, 1, NULL),
(20, 16, '2026-03-24 20:54:51', '18902.00', '0.00', '18902.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 16, 2, NULL),
(21, 17, '2026-03-24 21:45:57', '57804.00', '0.00', '57804.00', '0.00', 1, 'mastercard', NULL, 1, 2, NULL, 2, 17, 1, NULL),
(22, 18, '2026-04-21 21:39:16', '71610.00', '0.00', '71610.00', '0.00', 1, 'mastercard', NULL, 1, 2, NULL, 2, 18, 4, NULL),
(23, 19, '2026-05-07 18:33:56', '51610.00', '0.00', '51610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 19, 4, NULL),
(24, 20, '2026-05-07 18:35:15', '51610.00', '0.00', '51610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 20, 4, NULL),
(25, 21, '2026-05-07 18:36:05', '51610.00', '0.00', '51610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 21, 4, NULL),
(26, 22, '2026-05-07 18:45:19', '51610.00', '0.00', '51610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 22, 4, NULL),
(27, 23, '2026-05-07 18:48:59', '51610.00', '0.00', '51610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 23, 4, NULL),
(28, 24, '2026-05-07 21:42:16', '71610.00', '0.00', '71610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 24, 5, NULL),
(29, 25, '2026-05-07 21:43:06', '71610.00', '0.00', '71610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 25, 5, NULL),
(30, 26, '2026-05-07 21:52:07', '71610.00', '0.00', '71610.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 26, 5, NULL),
(31, 27, '2026-05-07 21:54:14', '39162.00', '0.00', '39162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 27, 5, NULL),
(32, 28, '2026-05-07 21:55:46', '39162.00', '0.00', '39162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 28, 5, NULL),
(33, 29, '2026-05-07 21:56:29', '39162.00', '0.00', '39162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 29, 5, NULL),
(34, 30, '2026-05-07 21:59:48', '19162.00', '0.00', '19162.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 2, 30, 5, NULL),
(35, 31, '2026-05-07 22:00:05', '19162.00', '0.00', '19162.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 2, 31, 5, NULL),
(36, 32, '2026-05-07 22:05:54', '19162.00', '0.00', '19162.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 2, 32, 5, NULL),
(37, 33, '2026-05-07 22:12:42', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 33, 5, NULL),
(38, 34, '2026-05-07 22:15:40', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 34, 5, NULL),
(39, 35, '2026-05-07 22:17:46', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 35, 5, NULL),
(40, 36, '2026-05-07 22:22:55', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 36, 5, NULL),
(41, 37, '2026-05-07 22:23:27', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 37, 5, NULL),
(42, 38, '2026-05-07 22:27:03', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 38, 5, NULL),
(43, 39, '2026-05-07 22:34:01', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 39, 5, NULL),
(44, 40, '2026-05-07 22:42:08', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 40, 5, NULL),
(45, 41, '2026-05-14 16:53:57', '19162.00', '0.00', '19162.00', '0.00', 1, 'mastercard', NULL, 1, 2, NULL, 2, 41, 4, NULL),
(46, 42, '2026-05-14 19:50:30', '96648.00', '0.00', '96648.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 2, 42, 6, NULL),
(47, 43, '2026-05-14 21:53:01', '141446.00', '0.00', '141446.00', '0.00', 1, 'visa', NULL, 1, 2, NULL, 2, 43, 4, NULL),
(48, 44, '2026-05-28 16:47:01', '71610.00', '0.00', '110995.50', '39385.50', 12, 'mastercard', NULL, 1, 2, NULL, 2, 44, 4, NULL),
(49, 45, '2026-05-28 17:39:02', '12805.00', '0.00', '12805.00', '0.00', 1, '', NULL, 4, 2, NULL, 1, NULL, 6, NULL),
(50, 46, '2026-05-28 17:54:49', '64415.00', '0.00', '99843.25', '35428.25', 12, 'visa', NULL, 1, 2, NULL, 1, NULL, 6, NULL),
(51, 47, '2026-05-28 17:56:56', '31967.00', '0.00', '60548.85', '28581.85', 12, 'visa', NULL, 1, 2, NULL, 1, NULL, 6, NULL),
(52, 48, '2026-05-28 21:47:01', '38415.00', '0.00', '53018.75', '14603.75', 6, 'mastercard', NULL, 1, 2, NULL, 1, NULL, 10, NULL),
(53, 49, '2026-05-28 22:27:13', '12805.00', '0.00', '30847.75', '18042.75', 12, 'naranja', NULL, 1, 2, NULL, 1, NULL, 6, NULL),
(54, 50, '2026-05-28 22:35:07', '44226.00', '0.00', '68550.30', '24324.30', 12, 'visa', NULL, 1, 2, NULL, 2, 45, 4, NULL),
(55, 51, '2026-06-18 20:36:11', '58591.00', '0.00', '58591.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 46, 4, NULL),
(56, 52, '2026-06-18 20:37:56', '90772.00', '0.00', '113465.00', '22693.00', 6, 'visa', NULL, 1, 2, NULL, 2, 47, 5, NULL),
(57, 53, '2026-06-18 20:40:46', '58591.00', '0.00', '58591.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 2, 50, 2, NULL),
(58, 54, '2026-07-06 17:46:43', '15665.00', '0.00', '15665.00', '0.00', 1, '', NULL, 3, 2, NULL, 1, NULL, 10, NULL),
(59, 55, '2026-07-06 17:51:07', '51610.00', '0.00', '51610.00', '0.00', 1, '', NULL, 3, 2, NULL, 1, NULL, 10, NULL),
(60, 56, '2026-08-04 20:46:43', '44226.00', '0.00', '44226.00', '0.00', 1, '', NULL, 3, 2, NULL, 1, NULL, 8, NULL),
(61, 57, '2026-08-13 21:05:18', '15665.00', '0.00', '15665.00', '0.00', 1, 'mastercard', NULL, 1, 2, NULL, 2, 53, 4, NULL),
(62, 58, '2026-08-13 23:21:13', '15665.00', '0.00', '19581.25', '3916.25', 6, 'mastercard', NULL, 1, 2, NULL, 2, 54, 11, NULL),
(63, 59, '2026-08-14 13:16:59', '15665.00', '0.00', '17544.80', '1879.80', 3, 'visa', NULL, 1, 2, NULL, 1, NULL, 2, NULL),
(64, 60, '2026-08-14 13:17:41', '15665.00', '0.00', '19581.25', '3916.25', 6, 'visa', NULL, 1, 2, NULL, 1, NULL, 13, NULL),
(65, 61, '2026-08-14 13:24:38', '15665.00', '0.00', '15665.00', '0.00', 1, 'visa', NULL, 2, 2, NULL, 1, NULL, 13, NULL),
(66, 62, '2026-08-18 16:30:23', '51610.00', '0.00', '51610.00', '0.00', 1, '', NULL, 3, 2, NULL, 1, NULL, 13, NULL),
(67, 63, '2026-08-18 16:36:49', '15665.00', '0.00', '15665.00', '0.00', 1, 'mastercard', NULL, 2, 2, NULL, 2, 55, 4, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `insumosdecarpinteria`
--

CREATE TABLE `insumosdecarpinteria` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(20) DEFAULT NULL,
  `IdTipodeMaterial` int(11) DEFAULT NULL,
  `IdTipodeCorte` int(11) DEFAULT NULL,
  `PrecioUnitario` decimal(10,2) NOT NULL DEFAULT 0.00,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `insumosdecarpinteria`
--

INSERT INTO `insumosdecarpinteria` (`Id`, `Descripcion`, `IdTipodeMaterial`, `IdTipodeCorte`, `PrecioUnitario`, `FechaBorrado`) VALUES
(1, 'Cola vinílica 1 kg', 1, 13, '1850.00', NULL),
(2, 'Cola de contacto 1 l', 1, 13, '1200.00', NULL),
(3, 'Pegamento epoxi bico', 1, 13, '650.00', NULL),
(4, 'Lija al agua grano 8', 2, 16, '120.00', NULL),
(5, 'Lija al agua grano 1', 2, 16, '120.00', NULL),
(6, 'Lija al agua grano 1', 2, 16, '120.00', '2026-08-16 17:07:19'),
(7, 'Lija al agua grano 2', 2, 16, '120.00', NULL),
(8, 'Lija de banda grano', 2, 16, '350.00', NULL),
(9, 'Lija de banda grano ', 2, 16, '350.00', '2026-08-16 17:07:19'),
(10, 'Barniz marino brilla', 3, 14, '2800.00', NULL),
(11, 'Barniz marino mate 1', 3, 14, '2800.00', NULL),
(12, 'Laca poliuretano bri', 3, 14, '3200.00', NULL),
(13, 'Laca poliuretano mat', 3, 14, '3200.00', NULL),
(14, 'Aceite de tung 1 lt', 3, 14, '2800.00', NULL),
(15, 'Cera para madera 500', 3, 14, '900.00', NULL),
(16, 'Fondo para madera 1', 3, 14, '2500.00', NULL),
(17, 'Tornillo Spax 3.5x35', 4, 11, '180.00', NULL),
(18, 'Tornillo Spax 4x50 (', 4, 11, '220.00', NULL),
(19, 'Clavo sin cabeza 40m', 4, 11, '150.00', NULL),
(20, 'Tirafondo 6x80 (caja', 4, 14, '380.00', NULL),
(21, 'Taco plástico 6mm (b', 4, 1, '90.00', NULL),
(22, 'Tornillo para aglome', 4, 11, '250.00', NULL),
(23, 'Masilla para madera', 5, 17, '650.00', NULL),
(24, 'Masilla para madera ', 5, 17, '650.00', '2026-08-16 17:07:19'),
(25, 'Masilla para madera ', 5, 17, '650.00', '2026-08-16 17:07:19'),
(26, 'Sellador de poros 50', 5, 17, '480.00', NULL),
(27, 'Sellador fondo laca', 6, 17, '1500.00', NULL),
(28, 'Imprimación para mad', 6, 17, '1200.00', NULL),
(29, 'Tinte al agua roble', 7, 14, '850.00', NULL),
(30, 'Tinte al agua nogal', 7, 14, '850.00', NULL),
(31, 'Tinte al agua caoba', 7, 14, '850.00', NULL),
(32, 'Tinte al agua cedro', 7, 14, '850.00', NULL),
(33, 'Tinte al agua wengué', 7, 14, '850.00', NULL),
(34, 'Tinte al agua ebony', 7, 14, '850.00', NULL),
(35, 'Tela de tapicería li', 9, 18, '4500.00', NULL),
(36, 'Cuero ecológico por', 9, 18, '6500.00', NULL),
(37, 'Guata relleno 500 g', 9, 18, '1200.00', NULL),
(38, 'Goma espuma 3 cm por', 9, 18, '980.00', NULL),
(39, 'Vidrio float 4mm por', 10, 1, '8500.00', NULL),
(40, 'Vidrio templado 6mm', 10, 1, '12000.00', NULL),
(41, 'Ángulo metálico refu', 11, 12, '350.00', NULL),
(42, 'Escuadra metálica 50', 11, 12, '280.00', NULL),
(43, 'Perfil de aluminio 2', 11, 19, '1200.00', NULL),
(44, 'Tarugos de madera 8m', 4, 11, '180.00', NULL),
(45, 'Marco de aluminio pa', NULL, 19, '15800.00', NULL),
(46, 'Marco de madera maci', NULL, 19, '12500.00', NULL),
(47, 'Moldura perimetral M', NULL, 19, '3200.00', NULL),
(48, 'Bisagra codo 35mm', NULL, 20, '480.00', NULL),
(49, 'Corredera telescópic', NULL, 20, '3600.00', NULL),
(50, 'Tirador de aluminio', NULL, 20, '950.00', NULL),
(51, 'Pata metálica regula', NULL, 12, '1800.00', NULL),
(52, 'Tornillo autorroscan', NULL, 11, '2100.00', NULL),
(53, 'Tarugo de madera 8mm', NULL, 11, '850.00', NULL),
(54, 'Laca poliuretano en', NULL, 15, '3400.00', NULL),
(55, 'Fondo blanco en aero', NULL, 15, '2900.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Localidad`
--

CREATE TABLE `Localidad` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Localidad`
--

INSERT INTO `Localidad` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Achiras', NULL),
(2, 'Adelia María', NULL),
(3, 'Agua de Oro', NULL),
(4, 'Alcira Gigena', NULL),
(5, 'Aldea Santa María', NULL),
(6, 'Alejandro Roca', NULL),
(7, 'Alejo Ledesma', NULL),
(8, 'Alicia', NULL),
(9, 'Almafuerte', NULL),
(10, 'Alpa Corral', NULL),
(11, 'Alta Gracia', NULL),
(12, 'Alto Alegre', NULL),
(13, 'Altos de Chipión', NULL),
(14, 'Amboy', NULL),
(15, 'Ambul', NULL),
(16, 'Ana Zumarán', NULL),
(17, 'Anisacate', NULL),
(18, 'Arias', NULL),
(19, 'Arroyito', NULL),
(20, 'Arroyo Algodón', NULL),
(21, 'Arroyo Cabral', NULL),
(22, 'Arroyo de Los Patos', NULL),
(23, 'Assunta', NULL),
(24, 'Atahona', NULL),
(25, 'Ausonia', NULL),
(26, 'Avellaneda', NULL),
(27, 'Ballesteros', NULL),
(28, 'Ballesteros Sud', NULL),
(29, 'Balnearia', NULL),
(30, 'Bañado de Soto', NULL),
(31, 'Bell Ville', NULL),
(32, 'Bengolea', NULL),
(33, 'Benjamín Gould', NULL),
(34, 'Berrotarán', NULL),
(35, 'Bialet Massé', NULL),
(36, 'Bouwer', NULL),
(37, 'Brinkmann', NULL),
(38, 'Buchardo', NULL),
(39, 'Bulnes', NULL),
(40, 'Cabalango', NULL),
(41, 'Calchín', NULL),
(42, 'Calchín Oeste', NULL),
(43, 'Camilo Aldao', NULL),
(44, 'Caminiaga', NULL),
(45, 'Canals', NULL),
(46, 'Candelaria Sud', NULL),
(47, 'Cañada de Luque', NULL),
(48, 'Cañada de Machado', NULL),
(49, 'Cañada de Río Pinto', NULL),
(50, 'Cañada del Sauce', NULL),
(51, 'Capilla de los Remedios', NULL),
(52, 'Capilla de Sitón', NULL),
(53, 'Capilla del Carmen', NULL),
(54, 'Capilla del Monte', NULL),
(55, 'Carnerillo', NULL),
(56, 'Carrilobo', NULL),
(57, 'Casa Grande', NULL),
(58, 'Cavanagh', NULL),
(59, 'Cerro Colorado', NULL),
(60, 'Chaján', NULL),
(61, 'Chalácea', NULL),
(62, 'Chancaní', NULL),
(63, 'Chañar Viejo', NULL),
(64, 'Charbonier', NULL),
(65, 'Charras', NULL),
(66, 'Chazón', NULL),
(67, 'Chilibroste', NULL),
(68, 'Chucul', NULL),
(69, 'Chuña', NULL),
(70, 'Chuña Huasi', NULL),
(71, 'Churquí Cañada', NULL),
(72, 'Ciénaga del Coro', NULL),
(73, 'Cintra', NULL),
(74, 'Colazo', NULL),
(75, 'Colonia Almada', NULL),
(76, 'Colonia Anita', NULL),
(77, 'Colonia Barge', NULL),
(78, 'Colonia Bismarck', NULL),
(79, 'Colonia Bremen', NULL),
(80, 'Colonia Caroya', NULL),
(81, 'Colonia Italiana', NULL),
(82, 'Colonia Iturraspe', NULL),
(83, 'Colonia Las Cuatro Esquinas', NULL),
(84, 'Colonia Las Pichanas', NULL),
(85, 'Colonia Marina', NULL),
(86, 'Colonia Prosperidad', NULL),
(87, 'Colonia San Bartolomé', NULL),
(88, 'Colonia San Pedro', NULL),
(89, 'Colonia Tirolesa', NULL),
(90, 'Colonia Valtelina', NULL),
(91, 'Colonia Vicente Agüero', NULL),
(92, 'Colonia Videla', NULL),
(93, 'Colonia Vignaud', NULL),
(94, 'Comechingones', NULL),
(95, 'Conlara', NULL),
(96, 'Copacabana', NULL),
(97, 'Córdoba', NULL),
(98, 'Coronel Baigorria', NULL),
(99, 'Coronel Moldes', NULL),
(100, 'Corral de Bustos Ifflinger', NULL),
(101, 'Corralito', NULL),
(102, 'Cosquín', NULL),
(103, 'Costa Sacate', NULL),
(104, 'Cruz Alta', NULL),
(105, 'Cruz de Caña', NULL),
(106, 'Cruz del Eje', NULL),
(107, 'Cuesta Blanca', NULL),
(108, 'Dalmacio Vélez', NULL),
(109, 'Deán Funes', NULL),
(110, 'Del Campillo', NULL),
(111, 'Despeñaderos', NULL),
(112, 'Devoto', NULL),
(113, 'Diego de Rojas', NULL),
(114, 'Dique Chico', NULL),
(115, 'El Arañado', NULL),
(116, 'El Brete', NULL),
(117, 'El Chacho', NULL),
(118, 'El Crispín', NULL),
(119, 'El Fortín', NULL),
(120, 'El Manzano', NULL),
(121, 'El Rastreador', NULL),
(122, 'El Rodeo', NULL),
(123, 'El Tío', NULL),
(124, 'Elena', NULL),
(125, 'Embalse', NULL),
(126, 'Esquina', NULL),
(127, 'Estación General Paz', NULL),
(128, 'Estación Juárez Celman', NULL),
(129, 'Estancia de Guadalupe', NULL),
(130, 'Estancia Vieja', NULL),
(131, 'Etruria', NULL),
(132, 'Eufrasio Loza', NULL),
(133, 'Falda del Carmen', NULL),
(134, 'Freyre', NULL),
(135, 'General Baldissera', NULL),
(136, 'General Cabrera', NULL),
(137, 'General Deheza', NULL),
(138, 'General Fotheringham', NULL),
(139, 'General Levalle', NULL),
(140, 'General Roca', NULL),
(141, 'Guanaco Muerto', NULL),
(142, 'Guasapampa', NULL),
(143, 'Guatimozín', NULL),
(144, 'Gutemberg', NULL),
(145, 'Hernando', NULL),
(146, 'Huinca Renancó', NULL),
(147, 'Idiazábal', NULL),
(148, 'Inriville', NULL),
(149, 'Isla Verde', NULL),
(150, 'James Crámer', NULL),
(151, 'Jesús María', NULL),
(152, 'La Calera', NULL),
(153, 'La Carlota', NULL),
(154, 'La Cumbre', NULL),
(155, 'La Falda', NULL),
(156, 'La Granja', NULL),
(157, 'La Laguna', NULL),
(158, 'Laboulaye', NULL),
(159, 'Las Bajadas', NULL),
(160, 'Las Caleras', NULL),
(161, 'Las Varillas', NULL),
(162, 'Las Vertientes', NULL),
(163, 'Leones', NULL),
(164, 'Liu-Leu', NULL),
(165, 'Marcos Juárez', NULL),
(166, 'Mendoza ', NULL),
(167, 'Monte Buey', NULL),
(168, 'Morteros', NULL),
(169, 'Oliva', NULL),
(170, 'Oncativo', NULL),
(171, 'Pasco', NULL),
(172, 'Pilar', NULL),
(173, 'Pilar', NULL),
(174, 'Río Ceballos', NULL),
(175, 'Río Cuarto', NULL),
(176, 'Río Segundo', NULL),
(177, 'Río Tercero', NULL),
(178, 'San Francisco', NULL),
(179, 'Salsipuedes', NULL),
(180, 'Santa María de Punilla', NULL),
(181, 'Unquillo', NULL),
(182, 'Villa Allende', NULL),
(183, 'Villa Carlos Paz', NULL),
(184, 'Villa Del Río', NULL),
(185, 'Villa María', NULL),
(186, 'Villa Nueva', NULL),
(187, 'Villa Dolores', NULL),
(188, 'Villa Santo Domingo', NULL),
(189, 'Villa Serranópolis', NULL),
(190, 'Villa Valeria', NULL),
(191, 'Villa La Serranía', NULL),
(192, 'Villa General Belgrano', NULL),
(193, 'Villa Los Reartes', NULL),
(194, 'Villa Córdoba', NULL),
(195, 'Villa Santa Rosa', NULL),
(196, 'Zurigh-Ville', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maderas`
--

CREATE TABLE `maderas` (
  `Id` int(11) NOT NULL,
  `Alto` decimal(10,2) DEFAULT NULL,
  `Largo` decimal(10,2) DEFAULT NULL,
  `Ancho` decimal(10,2) DEFAULT NULL,
  `IdTipodeMadera` int(11) DEFAULT NULL,
  `Formato` enum('plancha','tablon') NOT NULL DEFAULT 'tablon',
  `PrecioUnitario` decimal(10,2) NOT NULL DEFAULT 0.00,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maderas`
--

INSERT INTO `maderas` (`Id`, `Alto`, `Largo`, `Ancho`, `IdTipodeMadera`, `Formato`, `PrecioUnitario`, `FechaBorrado`) VALUES
(1, '3.00', '300.00', '15.00', 1, 'tablon', '4900.00', NULL),
(2, '3.00', '300.00', '20.00', 1, 'tablon', '6300.00', NULL),
(3, '5.00', '300.00', '10.00', 1, 'tablon', '2900.00', NULL),
(4, '3.00', '300.00', '15.00', 2, 'tablon', '5200.00', NULL),
(5, '5.00', '300.00', '10.00', 2, 'tablon', '3100.00', NULL),
(6, '3.00', '250.00', '25.00', 2, 'tablon', '9500.00', NULL),
(7, '2.00', '300.00', '10.00', 3, 'tablon', '2400.00', NULL),
(8, '3.00', '300.00', '15.00', 3, 'tablon', '5000.00', NULL),
(9, '2.00', '300.00', '10.00', 4, 'tablon', '1200.00', NULL),
(10, '3.00', '300.00', '15.00', 4, 'tablon', '1800.00', NULL),
(11, '2.00', '300.00', '20.00', 4, 'tablon', '2200.00', NULL),
(12, '1.50', '240.00', '120.00', 4, 'plancha', '9500.00', NULL),
(13, '3.00', '300.00', '15.00', 5, 'tablon', '7800.00', NULL),
(14, '4.00', '300.00', '10.00', 5, 'tablon', '5600.00', NULL),
(15, '1.80', '244.00', '122.00', 12, 'plancha', '8200.00', NULL),
(16, '1.50', '244.00', '122.00', 12, 'plancha', '6800.00', NULL),
(17, '0.60', '244.00', '122.00', 12, 'plancha', '3200.00', NULL),
(18, '1.80', '244.00', '122.00', 13, 'plancha', '5400.00', NULL),
(19, '1.50', '244.00', '122.00', 13, 'plancha', '4700.00', NULL),
(20, '1.50', '244.00', '122.00', 14, 'plancha', '7200.00', NULL),
(21, '1.80', '244.00', '122.00', 14, 'plancha', '8900.00', NULL),
(22, '0.40', '244.00', '122.00', 14, 'plancha', '2800.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `Id` int(11) NOT NULL,
  `IdUsuario` int(11) DEFAULT NULL COMMENT 'FK usuario.Id — notificación para un empleado/admin puntual',
  `IdCliente` int(11) DEFAULT NULL COMMENT 'FK clientes.Id — notificación para un cliente puntual',
  `Tipo` varchar(40) NOT NULL COMMENT 'venta_nueva|resena_pendiente|stock_bajo|entrega_actualizada|pago_rechazado|sistema',
  `Titulo` varchar(150) NOT NULL,
  `Contenido` varchar(500) DEFAULT NULL,
  `UrlDestino` varchar(300) DEFAULT NULL COMMENT 'Ruta interna a la que redirige al hacer clic (ej: venta/detalle/12)',
  `Icono` varchar(40) NOT NULL DEFAULT 'fa-bell' COMMENT 'Clase de ícono FontAwesome',
  `Leida` tinyint(1) NOT NULL DEFAULT 0,
  `FechaLeida` datetime DEFAULT NULL,
  `FechaCreacion` datetime NOT NULL DEFAULT current_timestamp(),
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`Id`, `IdUsuario`, `IdCliente`, `Tipo`, `Titulo`, `Contenido`, `UrlDestino`, `Icono`, `Leida`, `FechaLeida`, `FechaCreacion`, `FechaBorrado`) VALUES
(1, 1, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #56 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-07-06 17:51:07', NULL),
(2, 4, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #56 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-07-06 17:51:09', '2026-07-06 17:51:07', NULL),
(3, 7, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #56 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-07-06 17:51:07', NULL),
(4, 1, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'JOSE LUIS ANTONIO — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-07-06 17:59:58', NULL),
(5, 4, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'JOSE LUIS ANTONIO — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 1, '2026-07-06 18:00:00', '2026-07-06 17:59:58', NULL),
(6, 1, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #57 — $44.226 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-04 20:46:43', NULL),
(7, 4, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #57 — $44.226 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-08-04 20:46:50', '2026-08-04 20:46:43', NULL),
(8, 7, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #57 — $44.226 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-04 20:46:43', NULL),
(9, 10, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #57 — $44.226 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-08-13 18:54:30', '2026-08-04 20:46:43', NULL),
(10, 1, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #62 — $15.665 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-14 13:24:38', NULL),
(11, 4, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #62 — $15.665 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-08-14 13:25:59', '2026-08-14 13:24:38', NULL),
(12, 7, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #62 — $15.665 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-14 13:24:38', NULL),
(13, 10, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #62 — $15.665 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-14 13:24:38', NULL),
(14, 1, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'CRISTOPHER GIGENA VALDEZ — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 16:01:05', NULL),
(15, 4, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'CRISTOPHER GIGENA VALDEZ — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:06:37', '2026-08-18 16:01:05', NULL),
(16, 13, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'CRISTOPHER GIGENA VALDEZ — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:10:14', '2026-08-18 16:01:05', NULL),
(17, 1, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'TOMAS YAMIL RUFFINO — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 16:04:29', NULL),
(18, 4, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'TOMAS YAMIL RUFFINO — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:06:37', '2026-08-18 16:04:29', NULL),
(19, 13, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'TOMAS YAMIL RUFFINO — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:10:14', '2026-08-18 16:04:29', NULL),
(20, 14, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'TOMAS YAMIL RUFFINO — Rol: Gerente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:04:59', '2026-08-18 16:04:29', NULL),
(21, 1, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'MATIAS IRALDE — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 16:13:28', NULL),
(22, 4, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'MATIAS IRALDE — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:16:43', '2026-08-18 16:13:28', NULL),
(23, 13, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'MATIAS IRALDE — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 16:15:26', '2026-08-18 16:13:28', NULL),
(24, 14, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'MATIAS IRALDE — Rol: Repartidor', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 16:13:28', NULL),
(25, NULL, 13, 'entrega_actualizada', 'Tu pedido está en preparación', 'Código de entrega: SP-BCBF0B03', 'pedidocliente', 'fa-hammer', 0, NULL, '2026-08-18 16:14:47', NULL),
(26, NULL, 4, 'entrega_actualizada', 'Tu pedido está en camino', 'Código de entrega: SP-96F9F41A', 'pedidocliente', 'fa-truck', 0, NULL, '2026-08-18 16:14:54', NULL),
(27, NULL, 8, 'entrega_actualizada', 'Tu pedido está en camino', 'Código de entrega: SP-5A4638D6', 'pedidocliente', 'fa-truck', 0, NULL, '2026-08-18 16:15:00', NULL),
(28, NULL, 10, 'entrega_actualizada', 'Tu pedido está en camino', 'Código de entrega: SP-DCAADD2F', 'pedidocliente', 'fa-truck', 0, NULL, '2026-08-18 16:15:13', NULL),
(29, NULL, 4, 'entrega_actualizada', 'Tu pedido fue entregado', 'Código de entrega: SP-9FB61CBA', 'pedidocliente', 'fa-circle-check', 0, NULL, '2026-08-18 16:15:19', NULL),
(30, NULL, 4, 'entrega_actualizada', 'Tu pedido fue entregado', 'Código de entrega: SP-7D075582', 'pedidocliente', 'fa-circle-check', 0, NULL, '2026-08-18 16:15:24', NULL),
(31, 1, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-18 16:30:23', NULL),
(32, 4, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-08-18 16:31:16', '2026-08-18 16:30:23', NULL),
(33, 13, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 1, '2026-08-18 16:31:30', '2026-08-18 16:30:23', NULL),
(34, 14, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-18 16:30:23', NULL),
(35, 7, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-18 16:30:23', NULL),
(36, 10, NULL, 'venta_nueva', 'Venta presencial registrada', 'Venta #63 — $51.610 (1 producto(s))', 'venta', 'fa-cart-shopping', 0, NULL, '2026-08-18 16:30:23', NULL),
(37, NULL, 4, 'entrega_actualizada', 'Tu pedido está en preparación', 'Código de entrega: SP-7D075582', 'pedidocliente', 'fa-hammer', 0, NULL, '2026-08-18 17:28:40', NULL),
(38, NULL, 4, 'entrega_actualizada', 'Tu pedido fue entregado', 'Código de entrega: SP-B99C1F5F', 'pedidocliente', 'fa-circle-check', 0, NULL, '2026-08-18 17:28:52', NULL),
(39, NULL, 6, 'entrega_actualizada', 'Tu pedido fue entregado', 'Código de entrega: SP-78E684A8', 'pedidocliente', 'fa-circle-check', 0, NULL, '2026-08-18 17:33:01', NULL),
(40, 1, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'VIDA RUFFINO — Rol: Cliente', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 18:19:36', NULL),
(41, 4, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'VIDA RUFFINO — Rol: Cliente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-24 14:59:07', '2026-08-18 18:19:36', NULL),
(42, 13, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'VIDA RUFFINO — Rol: Cliente', 'usuarioadmin', 'fa-user-plus', 1, '2026-08-18 18:22:04', '2026-08-18 18:19:36', NULL),
(43, 14, NULL, 'usuario_nuevo', 'Nuevo usuario creado', 'VIDA RUFFINO — Rol: Cliente', 'usuarioadmin', 'fa-user-plus', 0, NULL, '2026-08-18 18:19:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE `Pais` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pais`
--

INSERT INTO `Pais` (`Id`, `Nombre`) VALUES
(1, 'Argentina'),
(2, 'Bolivia'),
(3, 'Brasil'),
(4, 'Chile'),
(5, 'Colombia'),
(6, 'Costa Rica'),
(7, 'Cuba'),
(8, 'Ecuador'),
(9, 'El Salvador'),
(10, 'Guatemala'),
(11, 'Honduras'),
(12, 'México'),
(13, 'Nicaragua'),
(14, 'Panamá'),
(15, 'Paraguay'),
(16, 'Perú'),
(17, 'Puerto Rico'),
(18, 'República Dominicana'),
(19, 'Uruguay'),
(20, 'Venezuela'),
(21, 'Belice'),
(22, 'Haití');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pedido`
--

CREATE TABLE `Pedido` (
  `Id` int(11) NOT NULL,
  `Estado` varchar(30) DEFAULT NULL,
  `Responsable` varchar(50) DEFAULT NULL,
  `IdVenta` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Pedido`
--

INSERT INTO `Pedido` (`Id`, `Estado`, `Responsable`, `IdVenta`, `FechaBorrado`) VALUES
(1, 'Pendiente', '', 5, NULL),
(2, 'Pendiente', '', 6, NULL),
(3, 'Pendiente', '', 10, NULL),
(4, 'Pendiente', '', 11, NULL),
(5, 'Pendiente', '', 12, NULL),
(6, 'Pendiente', '', 13, NULL),
(7, 'Pendiente', '', 14, NULL),
(8, 'Pendiente', '', 15, NULL),
(9, 'Pendiente', '', 16, NULL),
(10, 'Pendiente', '', 17, NULL),
(11, 'Pendiente', '', 18, NULL),
(12, 'Pendiente', '', 19, NULL),
(13, 'Pendiente', '', 24, NULL),
(14, 'Pendiente', '', 42, NULL),
(16, 'Pendiente', '', 43, NULL),
(17, 'En producción', '', 44, NULL),
(18, 'Pendiente', '', 46, NULL),
(19, 'Pendiente', '', 47, NULL),
(20, 'Pendiente', '', 48, NULL),
(21, 'Pendiente', '', 45, NULL),
(22, 'Pendiente', '', 49, NULL),
(23, 'Pendiente', '', 50, NULL),
(24, 'Pendiente', '', 51, NULL),
(25, 'Pendiente', '', 52, NULL),
(26, 'Pendiente', '', 53, NULL),
(27, 'Entregado', '', 54, NULL),
(28, 'Pendiente', '', 55, NULL),
(29, 'Pendiente', '', 56, NULL),
(30, 'Pendiente', '', 57, NULL),
(31, 'Pendiente', '', 58, NULL),
(32, 'Pendiente', '', 60, NULL),
(33, 'Pendiente', '', 61, NULL),
(34, 'Pendiente', '', 62, NULL),
(35, 'Pendiente', '', 59, NULL),
(36, 'Pendiente', 'coco', 63, NULL),
(37, 'Pendiente', '', 64, NULL),
(38, 'Pendiente', '', 2, NULL),
(39, 'Pendiente', '', 3, NULL),
(40, 'Pendiente', '', 4, NULL),
(41, 'Pendiente', '', 7, NULL),
(42, 'Pendiente', '', 8, NULL),
(43, 'Pendiente', '', 9, NULL),
(44, 'Pendiente', '', 20, NULL),
(45, 'Pendiente', '', 21, NULL),
(46, 'Pendiente', '', 22, NULL),
(47, 'Pendiente', '', 23, NULL),
(48, 'Pendiente', '', 25, NULL),
(49, 'Pendiente', '', 26, NULL),
(50, 'Pendiente', '', 27, NULL),
(51, 'Pendiente', '', 28, NULL),
(52, 'Pendiente', '', 29, NULL),
(53, 'Pendiente', '', 30, NULL),
(54, 'Pendiente', '', 31, NULL),
(55, 'Pendiente', '', 32, NULL),
(56, 'Pendiente', '', 33, NULL),
(57, 'Pendiente', '', 34, NULL),
(58, 'Pendiente', '', 35, NULL),
(59, 'Pendiente', '', 36, NULL),
(60, 'Pendiente', '', 37, NULL),
(61, 'Pendiente', '', 38, NULL),
(62, 'Pendiente', '', 39, NULL),
(63, 'Pendiente', '', 40, NULL),
(64, 'Pendiente', '', 41, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PedidosCliente`
--

CREATE TABLE `PedidosCliente` (
  `Id` int(11) NOT NULL,
  `IdCLientes` int(11) DEFAULT NULL,
  `IdTipodePedido` int(11) DEFAULT NULL,
  `IdVenta` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Producto`
--

CREATE TABLE `Producto` (
  `Id` int(11) NOT NULL,
  `NombredelProducto` varchar(100) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
  `URLImagen` varchar(500) DEFAULT NULL,
  `Ancho` decimal(10,2) DEFAULT NULL,
  `Largo` decimal(10,2) DEFAULT NULL,
  `Alto` decimal(10,2) DEFAULT NULL,
  `CostoTotalMateriales` decimal(10,2) DEFAULT 0.00,
  `PorcentajeGanancia` decimal(5,2) NOT NULL DEFAULT 30.00 COMMENT '% ganancia sobre costo de materiales',
  `TiempoFabricacionHoras` decimal(5,2) DEFAULT 0.00,
  `PrecioVenta` decimal(10,2) DEFAULT NULL,
  `IdCategoria` int(11) DEFAULT NULL,
  `IdTipodeProducto` int(11) DEFAULT NULL,
  `IdTipodeDiseño` int(11) DEFAULT NULL,
  `IdTipodeAcabado` int(11) DEFAULT NULL,
  `IdTipodeHerraje` int(11) DEFAULT NULL,
  `IdTipodeAlmacenamiento` int(11) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT current_timestamp(),
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Producto`
--

INSERT INTO `Producto` (`Id`, `NombredelProducto`, `Descripcion`, `URLImagen`, `Ancho`, `Largo`, `Alto`, `CostoTotalMateriales`, `PorcentajeGanancia`, `TiempoFabricacionHoras`, `PrecioVenta`, `IdCategoria`, `IdTipodeProducto`, `IdTipodeDiseño`, `IdTipodeAcabado`, `IdTipodeHerraje`, `IdTipodeAlmacenamiento`, `FechaCreacion`, `FechaBorrado`) VALUES
(1, 'placard de madera de roble', 'placard de roble', 'http://localhost:81/SanPlacido/templates/assets/imagenes/productos/prod_69bb34c084c723.13485633.png', '90.00', '70.00', '180.00', '39700.00', '30.00', '90.00', '51610.00', 3, 5, 1, 2, 3, 7, '2026-03-18 20:26:56', NULL),
(2, 'Mesa de Noche de Roble', 'mesa de noche estilo colonial ideal para decorar habitaciones e interiores', 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_69c0c3e372d9f3.47310458.png', '60.00', '160.00', '60.00', '15740.00', '30.00', '60.00', '20462.00', 4, 11, 9, NULL, NULL, NULL, '2026-03-23 01:38:59', NULL),
(3, 'Mesada de Cocina', 'mesada de cocina de MDF de cedro tiene tres puertas de abertura lateral y dos cajones para utencilios', 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066b57147af9.21824180.png', '70.00', '190.00', '80.00', '34020.00', '30.00', '50.00', '44226.00', 2, 20, 3, 1, 4, 7, '2026-05-14 21:39:51', NULL),
(4, 'sillon de sala de cedro', 'sillon de sala de cedro diseñado con un estili escandinavo ideal para interiores', 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066d0fa02bf8.88975943.png', '70.00', '60.00', '40.00', '12050.00', '30.00', '8.00', '15665.00', 1, 3, 7, 6, NULL, NULL, '2026-05-14 21:47:11', NULL),
(5, 'ejemplo', 'ejemplo', 'https://sanplacido.infinityfree.me/templates/assets/imagenes/productos/prod_6a7e73f11d22b0.01081462.jpg', '45.00', '45.00', '45.00', '24650.00', '30.00', '0.00', '32045.00', 7, 5, 1, 2, NULL, 7, '2026-08-13 18:48:33', '2026-08-13 18:49:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProductoCarrito`
--

CREATE TABLE `ProductoCarrito` (
  `Id` int(11) NOT NULL,
  `IdProducto` int(11) DEFAULT NULL,
  `IdCarrito` int(11) DEFAULT NULL,
  `Cantidad` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ProductoCarrito`
--

INSERT INTO `ProductoCarrito` (`Id`, `IdProducto`, `IdCarrito`, `Cantidad`) VALUES
(1, 1, 1, 2),
(2, 1, 2, 2),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 2),
(6, 1, 6, 2),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 2, 10, 2),
(11, 2, 11, 1),
(12, 2, 12, 2),
(18, 1, 13, 1),
(21, 1, 14, 1),
(22, 1, 15, 1),
(26, 2, 17, 1),
(27, 1, 18, 1),
(28, 2, 19, 4),
(29, 3, 18, 1),
(30, 4, 18, 2),
(32, 1, 20, 1),
(33, 4, 21, 1),
(34, 1, 22, 1),
(35, 4, 22, 1),
(36, 4, 23, 1),
(37, 2, 23, 1),
(38, 4, 24, 3),
(39, 4, 25, 1),
(40, 3, 26, 1),
(44, 3, 27, 1),
(45, 4, 27, 1),
(46, 1, 16, 1),
(47, 2, 16, 1),
(48, 4, 28, 1),
(49, 3, 28, 1),
(50, 4, 29, 1),
(51, 1, 30, 1),
(53, 3, 32, 1),
(54, 4, 31, 1),
(55, 4, 33, 1),
(56, 4, 34, 1),
(57, 4, 35, 1),
(58, 4, 36, 1),
(59, 1, 37, 1),
(60, 4, 38, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProductoImagenes`
--

CREATE TABLE `ProductoImagenes` (
  `Id` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `URLImagen` varchar(500) NOT NULL,
  `Orden` tinyint(4) NOT NULL DEFAULT 1,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ProductoImagenes`
--

INSERT INTO `ProductoImagenes` (`Id`, `IdProducto`, `URLImagen`, `Orden`, `FechaBorrado`) VALUES
(1, 1, 'http://localhost:81/SanPlacido/templates/assets/imagenes/productos/prod_69bb34c08671b5.23511711.png', 1, NULL),
(2, 1, 'http://localhost:81/SanPlacido/templates/assets/imagenes/productos/prod_69bb34c0875219.41008083.png', 2, NULL),
(3, 1, 'http://localhost:81/SanPlacido/templates/assets/imagenes/productos/prod_69bb34c087eb84.26433872.png', 3, NULL),
(4, 2, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_69c0c3e374b092.28709361.png', 1, NULL),
(5, 2, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_69c0c3e3756b00.59773967.png', 2, NULL),
(6, 2, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_69c0c3e375f4b7.51407210.png', 3, NULL),
(7, 3, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066b57186169.12041851.png', 1, NULL),
(8, 3, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066b57196f35.27471792.png', 2, NULL),
(9, 3, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066b571a0f13.32463091.png', 3, NULL),
(10, 4, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066d0fa13855.59952095.png', 1, NULL),
(11, 4, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066d0fa1ee18.89092806.png', 2, NULL),
(12, 4, 'https://nonsensically-unethylated-leola.ngrok-free.dev/SanPlacido/templates/assets/imagenes/productos/prod_6a066d0fa28237.01339706.png', 3, NULL),
(13, 5, 'https://sanplacido.infinityfree.me/templates/assets/imagenes/productos/prod_6a7e73f11e0c19.57184555.jpg', 1, NULL),
(14, 5, 'https://sanplacido.infinityfree.me/templates/assets/imagenes/productos/prod_6a7e73f11e6ef3.21577340.jpg', 2, NULL),
(15, 5, 'https://sanplacido.infinityfree.me/templates/assets/imagenes/productos/prod_6a7e73f11ecfe0.06192330.jpg', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProductoInsumos`
--

CREATE TABLE `ProductoInsumos` (
  `Id` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdInsumoCarpinteria` int(11) NOT NULL,
  `CantidadNecesaria` decimal(10,2) NOT NULL,
  `CostoUnitario` decimal(10,2) DEFAULT NULL,
  `CostoTotal` decimal(10,2) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ProductoInsumos`
--

INSERT INTO `ProductoInsumos` (`Id`, `IdProducto`, `IdInsumoCarpinteria`, `CantidadNecesaria`, `CostoUnitario`, `CostoTotal`, `Observaciones`, `FechaBorrado`) VALUES
(1, 1, 10, '1.00', '2800.00', '2800.00', '', '2026-03-23 01:39:28'),
(2, 1, 21, '20.00', '90.00', '1800.00', '', '2026-03-23 01:39:28'),
(3, 1, 17, '20.00', '180.00', '3600.00', '', '2026-03-23 01:39:28'),
(4, 2, 19, '15.00', '150.00', '2250.00', '', NULL),
(5, 2, 6, '2.00', '120.00', '240.00', '', NULL),
(6, 2, 14, '1.00', '2800.00', '2800.00', '', NULL),
(7, 2, 25, '1.00', '650.00', '650.00', '', NULL),
(8, 1, 10, '1.00', '2800.00', '2800.00', '', NULL),
(9, 1, 21, '20.00', '90.00', '1800.00', '', NULL),
(10, 1, 17, '20.00', '180.00', '3600.00', '', NULL),
(11, 3, 42, '4.00', '280.00', '1120.00', '', '2026-05-14 21:47:53'),
(12, 3, 22, '28.00', '250.00', '7000.00', '', '2026-05-14 21:47:53'),
(13, 3, 24, '2.00', '650.00', '1300.00', '', '2026-05-14 21:47:53'),
(14, 4, 15, '1.00', '900.00', '900.00', '', '2026-05-28 21:40:58'),
(15, 4, 25, '1.00', '650.00', '650.00', '', '2026-05-28 21:40:58'),
(16, 4, 44, '15.00', '180.00', '2700.00', '', '2026-05-28 21:40:58'),
(17, 4, 14, '1.00', '1800.00', '1800.00', '', '2026-05-28 21:40:58'),
(18, 4, 15, '1.00', '900.00', '900.00', '', '2026-05-28 21:40:58'),
(19, 4, 25, '1.00', '650.00', '650.00', '', '2026-05-28 21:40:58'),
(20, 4, 44, '15.00', '180.00', '2700.00', '', '2026-05-28 21:40:58'),
(21, 4, 14, '1.00', '1800.00', '1800.00', '', '2026-05-28 21:40:58'),
(22, 3, 42, '4.00', '280.00', '1120.00', '', NULL),
(23, 3, 22, '28.00', '250.00', '7000.00', '', NULL),
(24, 3, 24, '2.00', '650.00', '1300.00', '', NULL),
(25, 4, 15, '1.00', '900.00', '900.00', '', NULL),
(26, 4, 25, '1.00', '650.00', '650.00', '', NULL),
(27, 4, 44, '15.00', '180.00', '2700.00', '', NULL),
(28, 4, 14, '1.00', '2800.00', '2800.00', '', NULL),
(29, 5, 1, '1.00', '1850.00', '1850.00', '', '2026-08-13 18:48:55'),
(30, 5, 22, '40.00', '250.00', '10000.00', '', '2026-08-13 18:48:55'),
(31, 5, 1, '1.00', '1850.00', '1850.00', '', NULL),
(32, 5, 22, '40.00', '250.00', '10000.00', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ProductoMaderas`
--

CREATE TABLE `ProductoMaderas` (
  `Id` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdMadera` int(11) NOT NULL,
  `CantidadNecesaria` decimal(10,2) NOT NULL,
  `CostoUnitario` decimal(10,2) DEFAULT NULL,
  `CostoTotal` decimal(10,2) DEFAULT NULL,
  `Observaciones` varchar(200) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ProductoMaderas`
--

INSERT INTO `ProductoMaderas` (`Id`, `IdProducto`, `IdMadera`, `CantidadNecesaria`, `CostoUnitario`, `CostoTotal`, `Observaciones`, `FechaBorrado`) VALUES
(1, 1, 2, '5.00', '6200.00', '31000.00', '', '2026-03-23 01:39:28'),
(2, 2, 1, '2.00', '4900.00', '9800.00', '', NULL),
(3, 1, 2, '5.00', '6300.00', '31500.00', '', NULL),
(4, 3, 15, '3.00', '8200.00', '24600.00', '', '2026-05-14 21:47:53'),
(5, 4, 8, '1.00', '3800.00', '3800.00', '', '2026-05-28 21:40:58'),
(6, 4, 8, '1.00', '3800.00', '3800.00', '', '2026-05-28 21:40:58'),
(7, 3, 15, '3.00', '8200.00', '24600.00', '', NULL),
(8, 4, 8, '1.00', '5000.00', '5000.00', '', NULL),
(9, 5, 17, '4.00', '3200.00', '12800.00', '', '2026-08-13 18:48:55'),
(10, 5, 17, '4.00', '3200.00', '12800.00', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedores`
--

CREATE TABLE `Proveedores` (
  `Id` int(11) NOT NULL,
  `cuit` int(11) DEFAULT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Apellido` varchar(30) DEFAULT NULL,
  `Telefono` int(11) DEFAULT NULL,
  `CorreoElectronico` varchar(50) DEFAULT NULL,
  `Calle` varchar(30) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `IdRazonSocial` int(11) DEFAULT NULL,
  `IdLocalidad` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RazonSocial`
--

CREATE TABLE `RazonSocial` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `RazonSocial`
--

INSERT INTO `RazonSocial` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Responsable Inscripto', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Remito`
--

CREATE TABLE `Remito` (
  `Id` int(11) NOT NULL,
  `NumerodeRemito` int(11) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `PrecioUnitario` decimal(10,2) DEFAULT NULL,
  `Subtotal` decimal(10,2) DEFAULT NULL,
  `FechadeEmision` datetime DEFAULT NULL,
  `IdTipodeEncargoRemito` int(11) DEFAULT NULL,
  `IdDetallesProveedor` int(11) DEFAULT NULL,
  `IdDatosEmpresa` int(11) DEFAULT NULL,
  `IdClientes` int(11) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `IdProveedor` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Resena`
--

CREATE TABLE `Resena` (
  `Id` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  `IdPedido` int(11) DEFAULT NULL,
  `Puntuacion` tinyint(4) NOT NULL,
  `Titulo` varchar(150) DEFAULT NULL,
  `ContenidoOriginal` text NOT NULL,
  `ContenidoPublicado` text DEFAULT NULL,
  `Estado` enum('pendiente','aprobada','rechazada','oculta','en_revision') NOT NULL DEFAULT 'pendiente',
  `FueEmbellecida` tinyint(1) NOT NULL DEFAULT 0,
  `FechaCreacion` datetime NOT NULL DEFAULT current_timestamp(),
  `FechaModeracion` datetime DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `Resena`
--

INSERT INTO `Resena` (`Id`, `IdCliente`, `IdProducto`, `IdPedido`, `Puntuacion`, `Titulo`, `ContenidoOriginal`, `ContenidoPublicado`, `Estado`, `FueEmbellecida`, `FechaCreacion`, `FechaModeracion`, `FechaBorrado`) VALUES
(1, 4, 4, NULL, 5, 'muy buen producto', 'ta bobina hermano un locura mal re flama lo unico lo saldo del ciopre', 'Ta bobo, hermano, es una locura, mal, re flama, lo único lo salva el precio', 'rechazada', 1, '2026-06-25 20:31:21', '2026-06-25 20:31:21', NULL),
(2, 4, 4, NULL, 5, 'muy buen producto', 'me gusta mucho buen producto buen precio calidad esta joya', 'Me gusta mucho, es un buen producto, buen precio y buena calidad, esta joya', 'aprobada', 1, '2026-06-25 20:32:01', '2026-06-25 20:32:01', NULL),
(3, 4, 4, NULL, 5, 'bueno', 'la berdad ni malo ni muy bueno buen producto bastante normal', 'La verdad, ni malo ni muy bueno, es un buen producto, bastante normal.', 'aprobada', 1, '2026-06-25 20:34:01', '2026-06-25 20:34:01', NULL),
(4, 2, 3, NULL, 5, 'producto malo', 'este producto es bastante mediocre y nopuedo creeer que saquen aljo aci', 'Este producto es bastante mediocre y no puedo creer que saquen algo así.', 'aprobada', 1, '2026-06-25 21:44:34', '2026-06-25 21:44:34', NULL),
(5, 2, 2, NULL, 5, 'mui vuen producto', 'demasiado bueno este producto no puedo creeer q lo puedoo temen por este presio con esa caliddas', 'Demasiado bueno este producto, no puedo creer que lo pueda tener por este precio con esa calidad', 'aprobada', 1, '2026-06-25 21:48:30', '2026-06-25 21:48:30', NULL),
(7, 2, 1, NULL, 4, 'muy buen producto', 'mui vuen prooduccto me justa su calida y su presio assecivle para todos los puvlicos', 'muy buen producto, me gusta su calidad y su precio accesible para todos los públicos', 'aprobada', 1, '2026-06-25 22:18:26', '2026-06-25 22:18:26', NULL),
(8, 2, 4, NULL, 5, 'hijos de mil puta', 'muy hijos de mil puta tosdos los imbeciles idiotas que trabajan en ese local de mierda', 'Muy hijos de mil puta, todos los imbeciles idiotas que trabajan en ese local de mierda', 'en_revision', 1, '2026-06-25 22:24:27', NULL, NULL),
(9, 2, 1, NULL, 5, 'alto muble capo', 'bobina mal re flama este mueble chorri ah', 'La bobina se re enciende mal, la flama de este mueble es un chorri ah', 'en_revision', 1, '2026-06-25 22:27:19', NULL, NULL),
(10, 2, 1, NULL, 3, 'buen producto ni malo ni muy bueno', 'la berdad por siertos detayes dela calida y peci o que mulestan', 'La verdad, por ciertos detalles de la calidad y precio que molestan.', 'aprobada', 1, '2026-06-25 22:43:55', '2026-06-25 22:43:55', NULL),
(11, 2, 1, NULL, 5, 'hijos de re contra remil re putas', 'cierren ese local de morondanga manga de negro homosexuales que les gusta demaciodo la pinchila', 'Cierren ese local de morondanga, manga de negros homosexuales que les gusta demás la pinchila', 'en_revision', 1, '2026-06-25 22:44:51', NULL, NULL),
(12, 2, 3, NULL, 5, 'medeiana', 'no me gusto este producto mucho', 'No me gustó este producto mucho', 'aprobada', 1, '2026-07-06 18:31:37', '2026-07-06 18:31:37', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ResenaAnalisisIA`
--

CREATE TABLE `ResenaAnalisisIA` (
  `Id` int(11) NOT NULL,
  `IdResena` int(11) NOT NULL,
  `Sentimiento` enum('positivo','neutro','negativo') NOT NULL,
  `ScoreSentimiento` decimal(4,3) NOT NULL,
  `ScoreToxicidad` decimal(4,3) NOT NULL,
  `Categorias` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `ResenaAnalisisIA`
--

INSERT INTO `ResenaAnalisisIA` (`Id`, `IdResena`, `Sentimiento`, `ScoreSentimiento`, `ScoreToxicidad`, `Categorias`, `Flags`, `ResumenCorto`, `ModeloUsado`, `TokensConsumidos`, `FechaAnalisis`) VALUES
(1, 1, 'negativo', '-0.667', '0.333', '[\"precio\"]', '[\"ofensivo\"]', 'Mala experiencia, solo el precio es bueno', 'llama-3.3-70b-versatile', 386, '2026-06-25 20:31:21'),
(2, 2, 'positivo', '0.875', '0.000', '[\"calidad\",\"precio\"]', '[]', 'Buena calidad y precio', 'llama-3.3-70b-versatile', 374, '2026-06-25 20:32:01'),
(3, 3, 'neutro', '0.000', '0.000', '[]', '[]', 'Producto normal', 'llama-3.3-70b-versatile', 366, '2026-06-25 20:34:01'),
(4, 4, 'negativo', '-0.800', '0.200', '[\"calidad\"]', '[]', 'Producto mediocre', 'llama-3.3-70b-versatile', 367, '2026-06-25 21:44:34'),
(5, 5, 'positivo', '0.999', '0.000', '[\"calidad\",\"precio\"]', '[]', 'Excelente calidad y precio', 'llama-3.3-70b-versatile', 377, '2026-06-25 21:48:30'),
(7, 7, 'positivo', '0.875', '0.000', '[\"calidad\",\"precio\"]', '[]', 'Buen producto y precio', 'llama-3.3-70b-versatile', 375, '2026-06-25 22:18:26'),
(8, 8, 'negativo', '-0.999', '0.950', '[]', '[\"ofensivo\"]', 'Reseña muy negativa y ofensiva', 'llama-3.3-70b-versatile', 672, '2026-06-25 22:24:27'),
(9, 9, 'negativo', '-0.800', '0.700', '[\"calidad\"]', '[\"ofensivo\"]', 'Problemas con la bobina y la flama', 'llama-3.3-70b-versatile', 674, '2026-06-25 22:27:19'),
(10, 10, 'negativo', '-0.500', '0.000', '[\"calidad\",\"precio\"]', '[]', 'Molesta la calidad y el precio', 'llama-3.3-70b-versatile', 664, '2026-06-25 22:43:55'),
(11, 11, 'negativo', '-0.999', '0.999', '[]', '[\"ofensivo\"]', 'Reseña ofensiva y negativa', 'llama-3.3-70b-versatile', 671, '2026-06-25 22:44:51'),
(12, 12, 'negativo', '-0.500', '0.000', '[]', '[]', 'No le gustó el producto', 'llama-3.3-70b-versatile', 647, '2026-07-06 18:31:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ResenaHistorial`
--

CREATE TABLE `ResenaHistorial` (
  `Id` int(11) NOT NULL,
  `IdResena` int(11) NOT NULL,
  `Accion` enum('creada','analizada','embellecida','aprobada','rechazada','oculta','respondida','editada') NOT NULL,
  `IdUsuario` int(11) DEFAULT NULL,
  `Detalle` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `ResenaHistorial`
--

INSERT INTO `ResenaHistorial` (`Id`, `IdResena`, `Accion`, `IdUsuario`, `Detalle`, `Fecha`) VALUES
(1, 1, 'creada', 4, '{\"embellecida\":true}', '2026-06-25 20:31:21'),
(2, 1, 'embellecida', 4, '[]', '2026-06-25 20:31:21'),
(3, 1, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0.333,\"flags\":[\"ofensivo\"],\"estado_final\":\"rechazada\"}', '2026-06-25 20:31:21'),
(4, 2, 'creada', 4, '{\"embellecida\":true}', '2026-06-25 20:32:01'),
(5, 2, 'embellecida', 4, '[]', '2026-06-25 20:32:01'),
(6, 2, 'analizada', NULL, '{\"sentimiento\":\"positivo\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 20:32:01'),
(7, 3, 'creada', 4, '{\"embellecida\":true}', '2026-06-25 20:34:01'),
(8, 3, 'embellecida', 4, '[]', '2026-06-25 20:34:01'),
(9, 3, 'analizada', NULL, '{\"sentimiento\":\"neutro\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 20:34:01'),
(10, 4, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 21:44:34'),
(11, 4, 'embellecida', 2, '[]', '2026-06-25 21:44:34'),
(12, 4, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0.2,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 21:44:34'),
(13, 5, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 21:48:30'),
(14, 5, 'embellecida', 2, '[]', '2026-06-25 21:48:30'),
(15, 5, 'analizada', NULL, '{\"sentimiento\":\"positivo\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 21:48:30'),
(19, 7, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 22:18:26'),
(20, 7, 'embellecida', 2, '[]', '2026-06-25 22:18:26'),
(21, 7, 'analizada', NULL, '{\"sentimiento\":\"positivo\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 22:18:26'),
(22, 8, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 22:24:27'),
(23, 8, 'embellecida', 2, '[]', '2026-06-25 22:24:27'),
(24, 8, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0.95,\"flags\":[\"ofensivo\"],\"estado_final\":\"en_revision\"}', '2026-06-25 22:24:27'),
(25, 9, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 22:27:19'),
(26, 9, 'embellecida', 2, '[]', '2026-06-25 22:27:19'),
(27, 9, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0.7,\"flags\":[\"ofensivo\"],\"estado_final\":\"en_revision\"}', '2026-06-25 22:27:19'),
(28, 10, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 22:43:55'),
(29, 10, 'embellecida', 2, '[]', '2026-06-25 22:43:55'),
(30, 10, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-06-25 22:43:55'),
(31, 11, 'creada', 2, '{\"embellecida\":true}', '2026-06-25 22:44:51'),
(32, 11, 'embellecida', 2, '[]', '2026-06-25 22:44:51'),
(33, 11, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0.999,\"flags\":[\"ofensivo\"],\"estado_final\":\"en_revision\"}', '2026-06-25 22:44:51'),
(34, 12, 'creada', 2, '{\"embellecida\":true}', '2026-07-06 18:31:37'),
(35, 12, 'embellecida', 2, '[]', '2026-07-06 18:31:37'),
(36, 12, 'analizada', NULL, '{\"sentimiento\":\"negativo\",\"toxicidad\":0,\"flags\":[],\"estado_final\":\"aprobada\"}', '2026-07-06 18:31:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ResenaRespuesta`
--

CREATE TABLE `ResenaRespuesta` (
  `Id` int(11) NOT NULL,
  `IdResena` int(11) NOT NULL,
  `IdUsuario` int(11) NOT NULL,
  `Contenido` text NOT NULL,
  `GeneradaPorIA` tinyint(1) NOT NULL DEFAULT 0,
  `Fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ResumenDeVentas`
--

CREATE TABLE `ResumenDeVentas` (
  `Id` int(11) NOT NULL,
  `Fecha` date NOT NULL COMMENT 'Día del resumen (sin hora)',
  `CantidadOrdenes` int(11) NOT NULL DEFAULT 0 COMMENT 'Total de ventas ese día',
  `MontoTotal` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'Suma de MontoTotal de FacturaCliente',
  `MontoPromedio` decimal(10,2) DEFAULT NULL COMMENT 'Ticket promedio del día',
  `CantidadProductos` int(11) NOT NULL DEFAULT 0 COMMENT 'Unidades vendidas',
  `VentasAprobadas` int(11) NOT NULL DEFAULT 0,
  `VentasPendientes` int(11) NOT NULL DEFAULT 0,
  `VentasRechazadas` int(11) NOT NULL DEFAULT 0,
  `ClientesNuevos` int(11) NOT NULL DEFAULT 0 COMMENT 'Clientes registrados ese día',
  `VisitasTotales` int(11) NOT NULL DEFAULT 0 COMMENT 'Vistas de página ese día',
  `FechaActualizacion` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SoporteDeProduccion`
--

CREATE TABLE `SoporteDeProduccion` (
  `Id` int(11) NOT NULL,
  `Descripcón` varchar(30) DEFAULT NULL,
  `CargadeTrabajo` int(11) DEFAULT NULL,
  `IdTipodeProducto` int(11) DEFAULT NULL,
  `IdDiseño` int(11) DEFAULT NULL,
  `IdEmisor` int(11) DEFAULT NULL,
  `IdTipodeAcabado` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `Id` int(11) NOT NULL,
  `IdMaterial` int(11) NOT NULL COMMENT 'FK a maderas.Id o insumosdecarpinteria.Id',
  `TipoMaterial` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Madera, 2 = Insumo',
  `Cantidad` decimal(10,2) NOT NULL DEFAULT 0.00,
  `FechaIngreso` datetime NOT NULL DEFAULT current_timestamp(),
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`Id`, `IdMaterial`, `TipoMaterial`, `Cantidad`, `FechaIngreso`, `FechaBorrado`) VALUES
(1, 1, 1, '2.00', '2027-04-08 21:57:00', NULL),
(2, 2, 1, '5.00', '2027-04-08 21:57:00', NULL),
(3, 3, 1, '10.00', '2027-04-08 21:57:00', NULL),
(4, 4, 1, '6.00', '2027-04-08 21:57:00', NULL),
(5, 5, 1, '6.00', '2027-04-08 21:57:00', NULL),
(6, 6, 1, '8.00', '2027-04-08 21:57:00', NULL),
(7, 7, 1, '5.00', '2027-04-08 21:57:00', NULL),
(8, 8, 1, '6.00', '2027-04-08 21:57:00', NULL),
(9, 9, 1, '5.00', '2027-04-08 21:57:00', NULL),
(10, 10, 1, '7.00', '2027-04-08 21:57:00', NULL),
(11, 11, 1, '8.00', '2027-04-08 21:57:00', NULL),
(12, 12, 1, '4.00', '2027-04-08 21:57:00', NULL),
(13, 13, 1, '10.00', '2027-04-08 21:57:00', NULL),
(14, 14, 1, '6.00', '2027-04-08 21:57:00', NULL),
(15, 15, 1, '10.00', '2027-04-08 21:57:00', NULL),
(16, 16, 1, '5.00', '2027-04-08 21:57:00', NULL),
(17, 17, 1, '7.00', '2027-04-08 21:57:00', NULL),
(18, 18, 1, '9.00', '2027-04-08 21:57:00', NULL),
(19, 19, 1, '5.00', '2027-04-08 21:57:00', NULL),
(20, 20, 1, '5.00', '2027-04-08 21:57:00', NULL),
(21, 21, 1, '13.00', '2027-04-08 21:57:00', NULL),
(22, 22, 1, '12.00', '2027-04-08 21:57:00', NULL),
(32, 1, 2, '5.00', '2027-04-08 21:57:00', NULL),
(33, 2, 2, '7.00', '2027-04-08 21:57:00', NULL),
(34, 3, 2, '8.00', '2027-04-08 21:57:00', NULL),
(35, 4, 2, '10.00', '2027-04-08 21:57:00', NULL),
(36, 5, 2, '13.00', '2027-04-08 21:57:00', NULL),
(37, 5, 2, '100.00', '2026-04-15 05:49:21', '2026-08-16 17:08:24'),
(38, 7, 2, '12.00', '2027-04-08 21:57:00', NULL),
(39, 8, 2, '12.00', '2027-04-08 21:57:00', NULL),
(40, 8, 2, '10.00', '2027-04-08 21:57:00', NULL),
(41, 10, 2, '10.00', '2027-04-08 21:57:00', NULL),
(42, 11, 2, '6.00', '2027-04-08 21:57:00', NULL),
(43, 12, 2, '8.00', '2027-04-08 21:57:00', NULL),
(44, 13, 2, '8.00', '2027-04-08 21:57:00', NULL),
(45, 14, 2, '7.00', '2027-04-08 21:57:00', NULL),
(46, 15, 2, '7.00', '2027-04-08 21:57:00', NULL),
(47, 16, 2, '11.00', '2027-04-08 21:57:00', NULL),
(48, 17, 2, '200.00', '2027-04-08 21:57:00', NULL),
(49, 18, 2, '200.00', '2027-04-08 21:57:00', NULL),
(50, 19, 2, '300.00', '2027-04-08 21:57:00', NULL),
(51, 20, 2, '500.00', '2027-04-08 21:57:00', NULL),
(52, 21, 2, '500.00', '2027-04-08 21:57:00', NULL),
(53, 22, 2, '500.00', '2027-04-08 21:57:00', NULL),
(54, 23, 2, '9.00', '2027-04-08 21:57:00', NULL),
(55, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:08:24'),
(56, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:08:24'),
(57, 26, 2, '9.00', '2027-04-08 21:57:00', NULL),
(58, 27, 2, '10.00', '2027-04-08 21:57:00', NULL),
(59, 28, 2, '10.00', '2027-04-08 21:57:00', NULL),
(60, 29, 2, '3.00', '2027-04-08 21:57:00', NULL),
(61, 30, 2, '3.00', '2027-04-08 21:57:00', NULL),
(62, 31, 2, '3.00', '2027-04-08 21:57:00', NULL),
(63, 32, 2, '6.00', '2027-04-08 21:57:00', NULL),
(64, 33, 2, '5.00', '2027-04-08 21:57:00', NULL),
(65, 34, 2, '4.00', '2027-04-08 21:57:00', NULL),
(66, 35, 2, '4.00', '2027-04-08 21:57:00', NULL),
(67, 36, 2, '8.00', '2027-04-08 21:57:00', NULL),
(68, 37, 2, '6.00', '2027-04-08 21:57:00', NULL),
(69, 38, 2, '11.00', '2027-04-08 21:57:00', NULL),
(70, 39, 2, '5.00', '2027-04-08 21:57:00', NULL),
(71, 40, 2, '3.00', '2027-04-08 21:57:00', NULL),
(72, 41, 2, '15.00', '2027-04-08 21:57:00', NULL),
(73, 42, 2, '20.00', '2027-04-08 21:57:00', NULL),
(74, 43, 2, '19.00', '2027-04-08 21:57:00', NULL),
(75, 44, 2, '99.00', '2027-04-08 21:57:00', NULL),
(76, 42, 2, '80.00', '2027-04-08 21:57:00', NULL),
(77, 41, 2, '50.00', '2027-04-08 21:57:00', NULL),
(78, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(79, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(80, 38, 2, '15.00', '2027-04-08 21:57:00', NULL),
(81, 37, 2, '20.00', '2027-04-08 21:57:00', NULL),
(82, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(83, 35, 2, '10.00', '2027-04-08 21:57:00', NULL),
(84, 34, 2, '30.00', '2027-04-08 21:57:00', NULL),
(85, 33, 2, '30.00', '2027-04-08 21:57:00', NULL),
(86, 32, 2, '30.00', '2027-04-08 21:57:00', NULL),
(87, 31, 2, '30.00', '2027-04-08 21:57:00', NULL),
(88, 30, 2, '30.00', '2027-04-08 21:57:00', NULL),
(89, 29, 2, '30.00', '2027-04-08 21:57:00', NULL),
(90, 28, 2, '25.00', '2027-04-08 21:57:00', NULL),
(91, 27, 2, '10.00', '2027-04-08 21:57:00', NULL),
(92, 26, 2, '15.00', '2027-04-08 21:57:00', NULL),
(93, 23, 2, '10.00', '2027-04-08 21:57:00', NULL),
(94, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(95, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(96, 22, 2, '100.00', '2027-04-08 21:57:00', NULL),
(97, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(98, 20, 2, '100.00', '2027-04-08 21:57:00', NULL),
(99, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(100, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(101, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(102, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(103, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(104, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(105, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(106, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(107, 11, 2, '8.00', '2027-04-08 21:57:00', NULL),
(108, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(109, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(110, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(111, 7, 2, '10.00', '2027-04-08 21:57:00', NULL),
(112, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(113, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(114, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(115, 3, 2, '8.00', '2027-04-08 21:57:00', NULL),
(116, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(117, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(118, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(119, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(120, 18, 1, '7.00', '2027-04-08 21:57:00', NULL),
(121, 17, 1, '3.00', '2027-04-08 21:57:00', NULL),
(122, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(123, 15, 1, '3.00', '2027-04-08 21:57:00', NULL),
(124, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(125, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(126, 12, 1, '2.00', '2027-04-08 21:57:00', NULL),
(127, 11, 1, '5.00', '2027-04-08 21:57:00', NULL),
(128, 10, 1, '4.00', '2027-04-08 21:57:00', NULL),
(129, 9, 1, '3.00', '2027-04-08 21:57:00', NULL),
(130, 8, 1, '3.00', '2027-04-08 21:57:00', NULL),
(131, 7, 1, '4.00', '2027-04-08 21:57:00', NULL),
(132, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(133, 5, 1, '9.00', '2027-04-08 21:57:00', NULL),
(134, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(135, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:11:49'),
(136, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(137, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(138, 22, 1, '4.00', '2027-04-08 21:57:00', NULL),
(139, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(140, 2, 1, '15.00', '2027-04-08 21:57:00', NULL),
(141, 1, 1, '5.00', '2027-04-08 21:57:00', NULL),
(142, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(143, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(144, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(145, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(146, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(147, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(148, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(149, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(150, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(151, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(152, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(153, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(154, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(155, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(156, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(157, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(158, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(159, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(160, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(161, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(162, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(163, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(164, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(165, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(166, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(167, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(168, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(169, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(170, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(171, 3, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(172, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(173, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(174, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(175, 7, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(176, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(177, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(178, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(179, 11, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(180, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(181, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(182, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(183, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(184, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(185, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(186, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(187, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(188, 20, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(189, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(190, 22, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(191, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(192, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(193, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(194, 26, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(195, 27, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(196, 28, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(197, 29, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(198, 30, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(199, 31, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(200, 32, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(201, 33, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(202, 34, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(203, 35, 2, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(204, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(205, 37, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(206, 38, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(207, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(208, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(209, 41, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(210, 42, 2, '80.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(211, 1, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(212, 2, 1, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(213, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(214, 22, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(215, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(216, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(217, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(218, 5, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(219, 7, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(220, 8, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(221, 9, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(222, 10, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(223, 11, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(224, 12, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(225, 15, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(226, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(227, 17, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(228, 18, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(229, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(230, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(231, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(232, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(233, 42, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(234, 41, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(235, 38, 2, '11.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(236, 37, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(237, 35, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(238, 34, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(239, 33, 2, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(240, 32, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(241, 31, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(242, 30, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(243, 29, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(244, 28, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(245, 27, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(246, 26, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(247, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(248, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(249, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(250, 22, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(251, 20, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(252, 11, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(253, 8, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:08:24'),
(254, 7, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(255, 3, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(256, 22, 1, '24.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(257, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(258, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(259, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(260, 18, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(261, 17, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(262, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(263, 15, 1, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(264, 12, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(265, 11, 1, '8.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(266, 10, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(267, 9, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(268, 8, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(269, 7, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(270, 5, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(271, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(272, 2, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(273, 1, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(274, 40, 2, '2.00', '2027-04-08 21:57:00', NULL),
(275, 39, 2, '3.00', '2027-04-08 21:57:00', NULL),
(276, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(277, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(278, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(279, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(280, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(281, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(282, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(283, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(284, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(285, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(286, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(287, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(288, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(289, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(290, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(291, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(292, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(293, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(294, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(295, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(296, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(297, 42, 2, '80.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(298, 41, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(299, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(300, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(301, 38, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(302, 37, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(303, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(304, 35, 2, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(305, 34, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(306, 33, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(307, 32, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(308, 31, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(309, 30, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(310, 29, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(311, 28, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(312, 27, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(313, 26, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(314, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(315, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(316, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(317, 22, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(318, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(319, 20, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(320, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(321, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(322, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(323, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(324, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(325, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(326, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(327, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(328, 11, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(329, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(330, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(331, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(332, 7, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(333, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(334, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10');
INSERT INTO `stock` (`Id`, `IdMaterial`, `TipoMaterial`, `Cantidad`, `FechaIngreso`, `FechaBorrado`) VALUES
(335, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(336, 3, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(337, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(338, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(339, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(340, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(341, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(342, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(343, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(344, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(345, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(346, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(347, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(348, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(349, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(350, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(351, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(352, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(353, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(354, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(355, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(356, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(357, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(358, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(359, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(360, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(361, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(362, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(363, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(364, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(365, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(366, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(367, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(368, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(369, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(370, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(371, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(372, 3, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(373, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(374, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(375, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(376, 7, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(377, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(378, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(379, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(380, 11, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(381, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(382, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(383, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(384, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(385, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(386, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(387, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(388, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(389, 20, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(390, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(391, 22, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(392, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(393, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(394, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(395, 26, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(396, 27, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(397, 28, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(398, 29, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(399, 30, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(400, 31, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(401, 32, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(402, 33, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(403, 34, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(404, 35, 2, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(405, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(406, 37, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(407, 38, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(408, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(409, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(410, 41, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(411, 42, 2, '80.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(412, 1, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(413, 2, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(414, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(415, 5, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(416, 7, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(417, 8, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(418, 9, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(419, 10, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(420, 11, 1, '8.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(421, 12, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(422, 15, 1, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(423, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(424, 17, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(425, 18, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(426, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(427, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(428, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(429, 22, 1, '24.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(430, 3, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(431, 7, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(432, 8, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(433, 11, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(434, 20, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(435, 22, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(436, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(437, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(438, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(439, 26, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(440, 27, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(441, 28, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(442, 29, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(443, 30, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(444, 31, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(445, 32, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(446, 33, 2, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(447, 34, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(448, 35, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(449, 37, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(450, 38, 2, '11.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(451, 41, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(452, 42, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(453, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(454, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(455, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(456, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(457, 18, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(458, 17, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(459, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(460, 15, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(461, 12, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(462, 11, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(463, 10, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(464, 9, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(465, 8, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(466, 7, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(467, 5, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(468, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(469, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(470, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(471, 22, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(472, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(473, 2, 1, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(474, 1, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(475, 1, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(476, 2, 1, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(477, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(478, 22, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(479, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(480, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(481, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(482, 5, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(483, 7, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(484, 8, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(485, 9, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(486, 10, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(487, 11, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(488, 12, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(489, 15, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(490, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(491, 17, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(492, 18, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(493, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(494, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(495, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(496, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(497, 42, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(498, 41, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(499, 38, 2, '11.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(500, 37, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(501, 35, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(502, 34, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(503, 33, 2, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(504, 32, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(505, 31, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(506, 30, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(507, 29, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(508, 28, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(509, 27, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(510, 26, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(511, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(512, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(513, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(514, 22, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(515, 20, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(516, 11, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(517, 8, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(518, 7, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(519, 3, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(520, 22, 1, '24.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(521, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(522, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(523, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(524, 18, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(525, 17, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(526, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(527, 15, 1, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(528, 12, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(529, 11, 1, '8.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(530, 10, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(531, 9, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(532, 8, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(533, 7, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(534, 5, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(535, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(536, 2, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(537, 1, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(538, 40, 2, '2.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(539, 39, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(540, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(541, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(542, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(543, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(544, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(545, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(546, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(547, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(548, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(549, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(550, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(551, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(552, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(553, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(554, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(555, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(556, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(557, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(558, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(559, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(560, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(561, 42, 2, '80.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(562, 41, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(563, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(564, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(565, 38, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(566, 37, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(567, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(568, 35, 2, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(569, 34, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(570, 33, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(571, 32, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(572, 31, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(573, 30, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(574, 29, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(575, 28, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(576, 27, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(577, 26, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(578, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(579, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(580, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(581, 22, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(582, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(583, 20, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(584, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(585, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(586, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(587, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(588, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(589, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(590, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(591, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(592, 11, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(593, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(594, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(595, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(596, 7, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(597, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(598, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(599, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(600, 3, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(601, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(602, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(603, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(604, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(605, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(606, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(607, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(608, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(609, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(610, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(611, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(612, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(613, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(614, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(615, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(616, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(617, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(618, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(619, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(620, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(621, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(622, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(623, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(624, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(625, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(626, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(627, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(628, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(629, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(630, 3, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(631, 6, 1, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(632, 13, 1, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(633, 14, 1, '6.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10');
INSERT INTO `stock` (`Id`, `IdMaterial`, `TipoMaterial`, `Cantidad`, `FechaIngreso`, `FechaBorrado`) VALUES
(634, 1, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(635, 2, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(636, 3, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(637, 4, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(638, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(639, 5, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(640, 7, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(641, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(642, 8, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(643, 10, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(644, 11, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(645, 12, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(646, 13, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(647, 14, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(648, 15, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(649, 16, 2, '18.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(650, 17, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(651, 18, 2, '200.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(652, 19, 2, '300.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(653, 20, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(654, 21, 2, '500.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(655, 22, 2, '100.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(656, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(657, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(658, 23, 2, '40.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(659, 26, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(660, 27, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(661, 28, 2, '25.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(662, 29, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(663, 30, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(664, 31, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(665, 32, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(666, 33, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(667, 34, 2, '30.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(668, 35, 2, '10.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(669, 36, 2, '8.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(670, 37, 2, '20.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(671, 38, 2, '15.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(672, 39, 2, '5.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(673, 40, 2, '3.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(674, 41, 2, '50.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(675, 42, 2, '80.00', '2026-04-15 05:49:00', '2026-08-16 17:06:10'),
(676, 1, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(677, 2, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(678, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(679, 5, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(680, 7, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(681, 8, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(682, 9, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(683, 10, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(684, 11, 1, '8.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(685, 12, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(686, 15, 1, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(687, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(688, 17, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(689, 18, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(690, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(691, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(692, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(693, 22, 1, '24.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(694, 3, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(695, 7, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(696, 8, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(697, 11, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(698, 20, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(699, 22, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(700, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(701, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(702, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(703, 26, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(704, 27, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(705, 28, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(706, 29, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(707, 30, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(708, 31, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(709, 32, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(710, 33, 2, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(711, 34, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(712, 35, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(713, 37, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(714, 38, 2, '11.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(715, 41, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(716, 42, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(717, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(718, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(719, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(720, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(721, 18, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(722, 17, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(723, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(724, 15, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(725, 12, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(726, 11, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(727, 10, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(728, 9, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(729, 8, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(730, 7, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(731, 5, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(732, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(733, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(734, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(735, 22, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(736, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(737, 2, 1, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(738, 1, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(739, 1, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(740, 2, 1, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(741, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(742, 22, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(743, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(744, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(745, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(746, 5, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(747, 7, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(748, 8, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(749, 9, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(750, 10, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(751, 11, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(752, 12, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(753, 15, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(754, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(755, 17, 1, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(756, 18, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(757, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(758, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(759, 44, 2, '99.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(760, 43, 2, '19.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(761, 42, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(762, 41, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(763, 38, 2, '11.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(764, 37, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(765, 35, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(766, 34, 2, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(767, 33, 2, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(768, 32, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(769, 31, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(770, 30, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(771, 29, 2, '3.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(772, 28, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(773, 27, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(774, 26, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(775, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(776, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(777, 23, 2, '15.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(778, 22, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(779, 20, 2, '500.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(780, 11, 2, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(781, 8, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(782, 7, 2, '20.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(783, 3, 2, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(784, 22, 1, '24.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(785, 21, 1, '13.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(786, 20, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(787, 19, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(788, 18, 1, '9.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(789, 17, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(790, 16, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(791, 15, 1, '10.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(792, 12, 1, '4.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(793, 11, 1, '8.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(794, 10, 1, '7.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(795, 9, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(796, 8, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(797, 7, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(798, 5, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(799, 4, 1, '6.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(800, 2, 1, '5.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10'),
(801, 1, 1, '2.00', '2026-04-15 00:00:00', '2026-08-16 17:06:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StockDiagnostico`
--

CREATE TABLE `StockDiagnostico` (
  `Id` int(11) NOT NULL,
  `FechaGenerado` datetime NOT NULL DEFAULT current_timestamp(),
  `GeneradoPor` int(11) DEFAULT NULL COMMENT 'FK → usuario.Id',
  `TotalMaderas` int(11) NOT NULL DEFAULT 0,
  `TotalInsumos` int(11) NOT NULL DEFAULT 0,
  `ValorTotalStock` decimal(14,2) NOT NULL DEFAULT 0.00,
  `ItemsBajoStock` int(11) NOT NULL DEFAULT 0,
  `ItemsSinStock` int(11) NOT NULL DEFAULT 0,
  `VariacionPromedioPct` decimal(6,2) DEFAULT NULL COMMENT 'Promedio % aumento de precios desde último diagnóstico',
  `DiagnosticoJSON` longtext NOT NULL COMMENT 'JSON con secciones: consumo, precios, alertas, recomendaciones',
  `ResumenTexto` text DEFAULT NULL COMMENT 'Primer párrafo del diagnóstico para preview',
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `StockDiagnostico`
--

INSERT INTO `StockDiagnostico` (`Id`, `FechaGenerado`, `GeneradoPor`, `TotalMaderas`, `TotalInsumos`, `ValorTotalStock`, `ItemsBajoStock`, `ItemsSinStock`, `VariacionPromedioPct`, `DiagnosticoJSON`, `ResumenTexto`, `FechaBorrado`) VALUES
(6, '2026-08-14 14:16:39', 4, 22, 44, '25784120.00', 0, 0, '0.00', '{\"metricas\":{\"generado_en\":\"2026-08-14 18:16:37\",\"resumen_general\":{\"total_maderas\":22,\"total_insumos\":44,\"valor_total\":25784120,\"valor_maderas\":9634800,\"valor_insumos\":16149320,\"items_bajo\":0,\"items_sin\":0,\"umbral_bajo\":2,\"umbral_sin\":0},\"inflacion_precios\":{\"cambios_totales_90d\":6,\"cambios_30d\":0,\"cambios_60d\":6,\"promedio_30d\":0,\"promedio_60d\":36.3299999999999982946974341757595539093017578125,\"promedio_90d\":36.3299999999999982946974341757595539093017578125,\"top_subas\":[{\"nombre\":\"Cola vinílica 1 kg\",\"precio_anterior\":850,\"precio_nuevo\":1850,\"variacion_pct\":117.650000000000005684341886080801486968994140625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Aceite de tung 1 lt\",\"precio_anterior\":1800,\"precio_nuevo\":2800,\"variacion_pct\":55.56000000000000227373675443232059478759765625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Madera Cedro #8\",\"precio_anterior\":3900,\"precio_nuevo\":5000,\"variacion_pct\":28.21000000000000085265128291212022304534912109375,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Algarrobo #6\",\"precio_anterior\":8500,\"precio_nuevo\":9500,\"variacion_pct\":11.7599999999999997868371792719699442386627197265625,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Aglomerado #19\",\"precio_anterior\":4600,\"precio_nuevo\":4700,\"variacion_pct\":2.1699999999999999289457264239899814128875732421875,\"fecha\":\"2026-06-17 18:06:56\"}]},\"top_consumidos\":{\"top_maderas\":[{\"TipoMadera\":\"Roble\",\"IdMadera\":2,\"Dimensiones\":\"3.00x20.00x300.00\",\"CantidadConsumida\":\"240.00\",\"CostoTotalConsumido\":\"1512000.00\",\"VecesVendido\":42},{\"TipoMadera\":\"Roble\",\"IdMadera\":1,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"284200.00\",\"VecesVendido\":24},{\"TipoMadera\":\"Cedro\",\"IdMadera\":8,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"17.00\",\"CostoTotalConsumido\":\"85000.00\",\"VecesVendido\":14},{\"TipoMadera\":\"MDF\",\"IdMadera\":15,\"Dimensiones\":\"1.80x122.00x244.00\",\"CantidadConsumida\":\"15.00\",\"CostoTotalConsumido\":\"123000.00\",\"VecesVendido\":5}],\"top_insumos\":[{\"IdInsumo\":17,\"Nombre\":\"Tornillo Spax 3.5x35\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"172800.00\",\"VecesVendido\":42},{\"IdInsumo\":21,\"Nombre\":\"Taco plástico 6mm (b\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"86400.00\",\"VecesVendido\":42},{\"IdInsumo\":19,\"Nombre\":\"Clavo sin cabeza 40m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"435.00\",\"CostoTotalConsumido\":\"65250.00\",\"VecesVendido\":24},{\"IdInsumo\":44,\"Nombre\":\"Tarugos de madera 8m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"255.00\",\"CostoTotalConsumido\":\"45900.00\",\"VecesVendido\":14},{\"IdInsumo\":22,\"Nombre\":\"Tornillo para aglome\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"140.00\",\"CostoTotalConsumido\":\"35000.00\",\"VecesVendido\":5},{\"IdInsumo\":6,\"Nombre\":\"Lija al agua grano 1\",\"TipoMaterial\":\"Abrasivo\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"6960.00\",\"VecesVendido\":24},{\"IdInsumo\":10,\"Nombre\":\"Barniz marino brilla\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"48.00\",\"CostoTotalConsumido\":\"134400.00\",\"VecesVendido\":42},{\"IdInsumo\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"128800.00\",\"VecesVendido\":37},{\"IdInsumo\":25,\"Nombre\":\"Masilla para madera \",\"TipoMaterial\":\"Relleno \\/ Masilla\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"29900.00\",\"VecesVendido\":37},{\"IdInsumo\":42,\"Nombre\":\"Escuadra metálica 50\",\"TipoMaterial\":\"Metal\",\"CantidadConsumida\":\"20.00\",\"CostoTotalConsumido\":\"5600.00\",\"VecesVendido\":5}]},\"materiales_muertos\":{\"dias_umbral\":90,\"maderas_muertas\":[{\"Id\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"PrecioUnitario\":\"8900.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"1388400.0000\"},{\"Id\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"PrecioUnitario\":\"7800.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"936000.0000\"},{\"Id\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"912000.0000\"},{\"Id\":18,\"Nombre\":\"Aglomerado 1.80x122.00x244.00\",\"PrecioUnitario\":\"5400.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"518400.0000\"},{\"Id\":22,\"Nombre\":\"Multilaminado \\/ Terciado 0.40x122.00x244.00\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"168.00\",\"CapitalInmovilizado\":\"470400.0000\"},{\"Id\":20,\"Nombre\":\"Multilaminado \\/ Terciado 1.50x122.00x244.00\",\"PrecioUnitario\":\"7200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":16,\"Nombre\":\"MDF 1.50x122.00x244.00\",\"PrecioUnitario\":\"6800.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":14,\"Nombre\":\"Nogal 4.00x10.00x300.00\",\"PrecioUnitario\":\"5600.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"403200.0000\"},{\"Id\":4,\"Nombre\":\"Algarrobo 3.00x15.00x300.00\",\"PrecioUnitario\":\"5200.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"374400.0000\"},{\"Id\":3,\"Nombre\":\"Roble 5.00x10.00x300.00\",\"PrecioUnitario\":\"2900.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"348000.0000\"},{\"Id\":12,\"Nombre\":\"Pino 1.50x120.00x240.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"36.00\",\"CapitalInmovilizado\":\"342000.0000\"},{\"Id\":19,\"Nombre\":\"Aglomerado 1.50x122.00x244.00\",\"PrecioUnitario\":\"4700.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"282000.0000\"},{\"Id\":5,\"Nombre\":\"Algarrobo 5.00x10.00x300.00\",\"PrecioUnitario\":\"3100.00\",\"StockActual\":\"90.00\",\"CapitalInmovilizado\":\"279000.0000\"},{\"Id\":17,\"Nombre\":\"MDF 0.60x122.00x244.00\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"192000.0000\"},{\"Id\":11,\"Nombre\":\"Pino 2.00x20.00x300.00\",\"PrecioUnitario\":\"2200.00\",\"StockActual\":\"78.00\",\"CapitalInmovilizado\":\"171600.0000\"}],\"insumos_muertos\":[{\"Id\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"PrecioUnitario\":\"380.00\",\"StockActual\":\"3600.00\",\"CapitalInmovilizado\":\"1368000.0000\"},{\"Id\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"PrecioUnitario\":\"1850.00\",\"StockActual\":\"600.00\",\"CapitalInmovilizado\":\"1110000.0000\"},{\"Id\":23,\"Nombre\":\"Masilla para madera \",\"PrecioUnitario\":\"650.00\",\"StockActual\":\"960.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":36,\"Nombre\":\"Cuero ecológico por \",\"PrecioUnitario\":\"6500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":13,\"Nombre\":\"Laca poliuretano mat\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":12,\"Nombre\":\"Laca poliuretano bri\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":16,\"Nombre\":\"Fondo para madera 1 \",\"PrecioUnitario\":\"2500.00\",\"StockActual\":\"216.00\",\"CapitalInmovilizado\":\"540000.0000\"},{\"Id\":18,\"Nombre\":\"Tornillo Spax 4x50 (\",\"PrecioUnitario\":\"220.00\",\"StockActual\":\"2400.00\",\"CapitalInmovilizado\":\"528000.0000\"},{\"Id\":39,\"Nombre\":\"Vidrio float 4mm por\",\"PrecioUnitario\":\"8500.00\",\"StockActual\":\"56.00\",\"CapitalInmovilizado\":\"476000.0000\"},{\"Id\":11,\"Nombre\":\"Barniz marino mate 1\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"436800.0000\"},{\"Id\":2,\"Nombre\":\"Cola de contacto 1 l\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"360.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":40,\"Nombre\":\"Vidrio templado 6mm \",\"PrecioUnitario\":\"12000.00\",\"StockActual\":\"34.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":35,\"Nombre\":\"Tela de tapicería li\",\"PrecioUnitario\":\"4500.00\",\"StockActual\":\"84.00\",\"CapitalInmovilizado\":\"378000.0000\"},{\"Id\":5,\"Nombre\":\"Lija al agua grano 1\",\"PrecioUnitario\":\"120.00\",\"StockActual\":\"2300.00\",\"CapitalInmovilizado\":\"276000.0000\"},{\"Id\":43,\"Nombre\":\"Perfil de aluminio 2\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"228.00\",\"CapitalInmovilizado\":\"273600.0000\"}],\"capital_inmovilizado_total\":16083800},\"impacto_margen\":{\"productos_afectados\":[],\"total_afectados\":0},\"valorizacion_stock\":{\"top_valor\":[{\"Tipo\":\"madera\",\"IdMaterial\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"Cantidad\":\"156.00\",\"PrecioUnitario\":\"8900.00\",\"ValorTotal\":\"1388400.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"380.00\",\"ValorTotal\":\"1368000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"Cantidad\":\"600.00\",\"PrecioUnitario\":\"1850.00\",\"ValorTotal\":\"1110000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"7800.00\",\"ValorTotal\":\"936000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"Cantidad\":\"96.00\",\"PrecioUnitario\":\"9500.00\",\"ValorTotal\":\"912000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":22,\"Nombre\":\"Tornillo para aglome\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"250.00\",\"ValorTotal\":\"900000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"Cantidad\":\"300.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"840000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":2,\"Nombre\":\"Roble 3.00x20.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"6300.00\",\"ValorTotal\":\"756000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":10,\"Nombre\":\"Barniz marino brilla\",\"Cantidad\":\"240.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"672000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":15,\"Nombre\":\"MDF 1.80x122.00x244.00\",\"Cantidad\":\"78.00\",\"PrecioUnitario\":\"8200.00\",\"ValorTotal\":\"639600.0000\"}]}},\"analisis\":{\"resumen_ejecutivo\":\"El stock tiene un valor total de $25.784.120, con un total de 22 maderas y 44 insumos. La situación inflacionaria es moderada, con un promedio de variación de precios del 36.33% en los últimos 90 días. No hay items críticos por debajo del umbral de stock.\",\"alertas_criticas\":[\"Revisar y ajustar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, debido a sus recientes aumentos de precio.\",\"Considerar la liquidación de materiales muertos como Tirafondo 6x80 y Cola vinílica 1 kg, que tienen un capital inmovilizado significativo.\"],\"analisis_inflacion\":\"La inflación ha afectado principalmente a la Cola vinílica 1 kg, que subió un 117.65%, y al Aceite de tung 1 lt, que subió un 55.56%. Estos aumentos deben ser considerados al actualizar los precios de los productos.\",\"recomendaciones_reposicion\":[\"Reponer Tornillo Spax 3.5x35, debido a su alta demanda y frecuencia de venta.\",\"Reponer Madera Roble 3.00x20.00x300.00, debido a su alta demanda y valor total consumido.\",\"Reponer Madera Cedro 3.00x15.00x300.00, debido a su demanda y valor total consumido.\"],\"materiales_muertos_recomendacion\":\"Se recomienda considerar la liquidación de materiales muertos como Tirafondo 6x80 y Cola vinílica 1 kg, que tienen un capital inmovilizado significativo. También se puede explorar la posibilidad de utilizar estos materiales en productos nuevos o alternativos.\",\"impacto_pricing\":\"Es necesario actualizar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, como el Barniz marino brilla y el Aceite de tung 1 lt.\",\"puntaje_salud_stock\":80,\"prioridad_inmediata\":\"Revisar y ajustar los precios de los productos que utilizan materiales con aumentos significativos de precio, como la Cola vinílica 1 kg y el Aceite de tung 1 lt.\"}}', 'El stock tiene un valor total de $25.784.120, con un total de 22 maderas y 44 insumos. La situación inflacionaria es moderada, con un promedio de variación de precios del 36.33% en los últimos 90 días. No hay items críticos por debajo del umbral de stock.', NULL);
INSERT INTO `StockDiagnostico` (`Id`, `FechaGenerado`, `GeneradoPor`, `TotalMaderas`, `TotalInsumos`, `ValorTotalStock`, `ItemsBajoStock`, `ItemsSinStock`, `VariacionPromedioPct`, `DiagnosticoJSON`, `ResumenTexto`, `FechaBorrado`) VALUES
(7, '2026-08-14 17:28:45', 4, 22, 44, '25784120.00', 1, 0, '0.00', '{\"metricas\":{\"generado_en\":\"2026-08-14 21:28:43\",\"resumen_general\":{\"total_maderas\":22,\"total_insumos\":44,\"valor_total\":25784120,\"valor_maderas\":9634800,\"valor_insumos\":16149320,\"items_bajo\":1,\"items_sin\":0,\"detalle_bajo\":[{\"nombre\":\"Lija de banda grano \",\"categoria\":\"Material de Uso y Abrasivos\",\"cantidad\":10,\"stock_minimo\":20,\"stock_aceptable\":80}],\"detalle_sin\":[]},\"inflacion_precios\":{\"cambios_totales_90d\":6,\"cambios_30d\":0,\"cambios_60d\":6,\"promedio_30d\":0,\"promedio_60d\":36.3299999999999982946974341757595539093017578125,\"promedio_90d\":36.3299999999999982946974341757595539093017578125,\"top_subas\":[{\"nombre\":\"Cola vinílica 1 kg\",\"precio_anterior\":850,\"precio_nuevo\":1850,\"variacion_pct\":117.650000000000005684341886080801486968994140625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Aceite de tung 1 lt\",\"precio_anterior\":1800,\"precio_nuevo\":2800,\"variacion_pct\":55.56000000000000227373675443232059478759765625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Madera Cedro #8\",\"precio_anterior\":3900,\"precio_nuevo\":5000,\"variacion_pct\":28.21000000000000085265128291212022304534912109375,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Algarrobo #6\",\"precio_anterior\":8500,\"precio_nuevo\":9500,\"variacion_pct\":11.7599999999999997868371792719699442386627197265625,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Aglomerado #19\",\"precio_anterior\":4600,\"precio_nuevo\":4700,\"variacion_pct\":2.1699999999999999289457264239899814128875732421875,\"fecha\":\"2026-06-17 18:06:56\"}]},\"top_consumidos\":{\"top_maderas\":[{\"TipoMadera\":\"Roble\",\"IdMadera\":2,\"Dimensiones\":\"3.00x20.00x300.00\",\"CantidadConsumida\":\"240.00\",\"CostoTotalConsumido\":\"1512000.00\",\"VecesVendido\":42},{\"TipoMadera\":\"Roble\",\"IdMadera\":1,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"284200.00\",\"VecesVendido\":24},{\"TipoMadera\":\"Cedro\",\"IdMadera\":8,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"17.00\",\"CostoTotalConsumido\":\"85000.00\",\"VecesVendido\":14},{\"TipoMadera\":\"MDF\",\"IdMadera\":15,\"Dimensiones\":\"1.80x122.00x244.00\",\"CantidadConsumida\":\"15.00\",\"CostoTotalConsumido\":\"123000.00\",\"VecesVendido\":5}],\"top_insumos\":[{\"IdInsumo\":17,\"Nombre\":\"Tornillo Spax 3.5x35\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"172800.00\",\"VecesVendido\":42},{\"IdInsumo\":21,\"Nombre\":\"Taco plástico 6mm (b\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"86400.00\",\"VecesVendido\":42},{\"IdInsumo\":19,\"Nombre\":\"Clavo sin cabeza 40m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"435.00\",\"CostoTotalConsumido\":\"65250.00\",\"VecesVendido\":24},{\"IdInsumo\":44,\"Nombre\":\"Tarugos de madera 8m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"255.00\",\"CostoTotalConsumido\":\"45900.00\",\"VecesVendido\":14},{\"IdInsumo\":22,\"Nombre\":\"Tornillo para aglome\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"140.00\",\"CostoTotalConsumido\":\"35000.00\",\"VecesVendido\":5},{\"IdInsumo\":6,\"Nombre\":\"Lija al agua grano 1\",\"TipoMaterial\":\"Abrasivo\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"6960.00\",\"VecesVendido\":24},{\"IdInsumo\":10,\"Nombre\":\"Barniz marino brilla\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"48.00\",\"CostoTotalConsumido\":\"134400.00\",\"VecesVendido\":42},{\"IdInsumo\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"128800.00\",\"VecesVendido\":37},{\"IdInsumo\":25,\"Nombre\":\"Masilla para madera \",\"TipoMaterial\":\"Relleno \\/ Masilla\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"29900.00\",\"VecesVendido\":37},{\"IdInsumo\":42,\"Nombre\":\"Escuadra metálica 50\",\"TipoMaterial\":\"Metal\",\"CantidadConsumida\":\"20.00\",\"CostoTotalConsumido\":\"5600.00\",\"VecesVendido\":5}]},\"materiales_muertos\":{\"dias_umbral\":90,\"maderas_muertas\":[{\"Id\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"PrecioUnitario\":\"8900.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"1388400.0000\"},{\"Id\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"PrecioUnitario\":\"7800.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"936000.0000\"},{\"Id\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"912000.0000\"},{\"Id\":18,\"Nombre\":\"Aglomerado 1.80x122.00x244.00\",\"PrecioUnitario\":\"5400.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"518400.0000\"},{\"Id\":22,\"Nombre\":\"Multilaminado \\/ Terciado 0.40x122.00x244.00\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"168.00\",\"CapitalInmovilizado\":\"470400.0000\"},{\"Id\":20,\"Nombre\":\"Multilaminado \\/ Terciado 1.50x122.00x244.00\",\"PrecioUnitario\":\"7200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":16,\"Nombre\":\"MDF 1.50x122.00x244.00\",\"PrecioUnitario\":\"6800.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":14,\"Nombre\":\"Nogal 4.00x10.00x300.00\",\"PrecioUnitario\":\"5600.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"403200.0000\"},{\"Id\":4,\"Nombre\":\"Algarrobo 3.00x15.00x300.00\",\"PrecioUnitario\":\"5200.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"374400.0000\"},{\"Id\":3,\"Nombre\":\"Roble 5.00x10.00x300.00\",\"PrecioUnitario\":\"2900.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"348000.0000\"},{\"Id\":12,\"Nombre\":\"Pino 1.50x120.00x240.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"36.00\",\"CapitalInmovilizado\":\"342000.0000\"},{\"Id\":19,\"Nombre\":\"Aglomerado 1.50x122.00x244.00\",\"PrecioUnitario\":\"4700.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"282000.0000\"},{\"Id\":5,\"Nombre\":\"Algarrobo 5.00x10.00x300.00\",\"PrecioUnitario\":\"3100.00\",\"StockActual\":\"90.00\",\"CapitalInmovilizado\":\"279000.0000\"},{\"Id\":17,\"Nombre\":\"MDF 0.60x122.00x244.00\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"192000.0000\"},{\"Id\":11,\"Nombre\":\"Pino 2.00x20.00x300.00\",\"PrecioUnitario\":\"2200.00\",\"StockActual\":\"78.00\",\"CapitalInmovilizado\":\"171600.0000\"}],\"insumos_muertos\":[{\"Id\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"PrecioUnitario\":\"380.00\",\"StockActual\":\"3600.00\",\"CapitalInmovilizado\":\"1368000.0000\"},{\"Id\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"PrecioUnitario\":\"1850.00\",\"StockActual\":\"600.00\",\"CapitalInmovilizado\":\"1110000.0000\"},{\"Id\":23,\"Nombre\":\"Masilla para madera \",\"PrecioUnitario\":\"650.00\",\"StockActual\":\"960.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":36,\"Nombre\":\"Cuero ecológico por \",\"PrecioUnitario\":\"6500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":13,\"Nombre\":\"Laca poliuretano mat\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":12,\"Nombre\":\"Laca poliuretano bri\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":16,\"Nombre\":\"Fondo para madera 1 \",\"PrecioUnitario\":\"2500.00\",\"StockActual\":\"216.00\",\"CapitalInmovilizado\":\"540000.0000\"},{\"Id\":18,\"Nombre\":\"Tornillo Spax 4x50 (\",\"PrecioUnitario\":\"220.00\",\"StockActual\":\"2400.00\",\"CapitalInmovilizado\":\"528000.0000\"},{\"Id\":39,\"Nombre\":\"Vidrio float 4mm por\",\"PrecioUnitario\":\"8500.00\",\"StockActual\":\"56.00\",\"CapitalInmovilizado\":\"476000.0000\"},{\"Id\":11,\"Nombre\":\"Barniz marino mate 1\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"436800.0000\"},{\"Id\":2,\"Nombre\":\"Cola de contacto 1 l\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"360.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":40,\"Nombre\":\"Vidrio templado 6mm \",\"PrecioUnitario\":\"12000.00\",\"StockActual\":\"34.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":35,\"Nombre\":\"Tela de tapicería li\",\"PrecioUnitario\":\"4500.00\",\"StockActual\":\"84.00\",\"CapitalInmovilizado\":\"378000.0000\"},{\"Id\":5,\"Nombre\":\"Lija al agua grano 1\",\"PrecioUnitario\":\"120.00\",\"StockActual\":\"2300.00\",\"CapitalInmovilizado\":\"276000.0000\"},{\"Id\":43,\"Nombre\":\"Perfil de aluminio 2\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"228.00\",\"CapitalInmovilizado\":\"273600.0000\"}],\"capital_inmovilizado_total\":16083800},\"impacto_margen\":{\"productos_afectados\":[],\"total_afectados\":0},\"valorizacion_stock\":{\"top_valor\":[{\"Tipo\":\"madera\",\"IdMaterial\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"Cantidad\":\"156.00\",\"PrecioUnitario\":\"8900.00\",\"ValorTotal\":\"1388400.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"380.00\",\"ValorTotal\":\"1368000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"Cantidad\":\"600.00\",\"PrecioUnitario\":\"1850.00\",\"ValorTotal\":\"1110000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"7800.00\",\"ValorTotal\":\"936000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"Cantidad\":\"96.00\",\"PrecioUnitario\":\"9500.00\",\"ValorTotal\":\"912000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":22,\"Nombre\":\"Tornillo para aglome\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"250.00\",\"ValorTotal\":\"900000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"Cantidad\":\"300.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"840000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":2,\"Nombre\":\"Roble 3.00x20.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"6300.00\",\"ValorTotal\":\"756000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":10,\"Nombre\":\"Barniz marino brilla\",\"Cantidad\":\"240.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"672000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":15,\"Nombre\":\"MDF 1.80x122.00x244.00\",\"Cantidad\":\"78.00\",\"PrecioUnitario\":\"8200.00\",\"ValorTotal\":\"639600.0000\"}]}},\"analisis\":{\"resumen_ejecutivo\":\"El stock actual tiene un valor total de $25.784.120, con un item crítico por debajo del stock mínimo. La inflación reciente ha afectado a varios materiales, con subas significativas en los últimos 90 días. La situación general es estable, pero requiere atención a los items críticos y la inflación.\",\"alertas_criticas\":[\"Reponer Lija de banda grano con urgencia, ya que se encuentra por debajo del stock mínimo para su categoría de Material de Uso y Abrasivos.\",\"Revisar y ajustar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, debido a las subas recientes en sus precios.\"],\"analisis_inflacion\":\"La inflación reciente ha afectado a varios materiales, con subas significativas en los últimos 90 días. Los materiales que más subieron fueron Cola vinílica 1 kg (117,65%) y Aceite de tung 1 lt (55,56%). Esto puede impactar en el margen de los productos que los utilizan.\",\"recomendaciones_reposicion\":[\"Reponer Tornillo Spax 3.5x35, debido a su alto consumo y frecuencia de venta.\",\"Reponer Taco plástico 6mm, debido a su alto consumo y frecuencia de venta.\",\"Reponer Clavo sin cabeza 40m, debido a su alto consumo y frecuencia de venta.\"],\"materiales_muertos_recomendacion\":\"Se recomienda revisar y considerar la liquidación o el uso en productos nuevos de los materiales muertos, como Multilaminado\\/Terciado 1.80x122.00x244.00 y Tirafondo 6x80, que tienen un capital inmovilizado significativo y no han tenido rotación en los últimos 90 días.\",\"impacto_pricing\":\"Es necesario revisar y ajustar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, debido a las subas recientes en sus precios.\",\"puntaje_salud_stock\":80,\"prioridad_inmediata\":\"Reponer Lija de banda grano con urgencia y revisar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt.\"}}', 'El stock actual tiene un valor total de $25.784.120, con un item crítico por debajo del stock mínimo. La inflación reciente ha afectado a varios materiales, con subas significativas en los últimos 90 días. La situación general es estable, pero requiere atención a los items críticos y la inflación.', NULL);
INSERT INTO `StockDiagnostico` (`Id`, `FechaGenerado`, `GeneradoPor`, `TotalMaderas`, `TotalInsumos`, `ValorTotalStock`, `ItemsBajoStock`, `ItemsSinStock`, `VariacionPromedioPct`, `DiagnosticoJSON`, `ResumenTexto`, `FechaBorrado`) VALUES
(8, '2026-08-16 13:14:41', 4, 22, 44, '25784120.00', 1, 0, '0.00', '{\"metricas\":{\"generado_en\":\"2026-08-16 17:14:39\",\"resumen_general\":{\"total_maderas\":22,\"total_insumos\":44,\"valor_total\":25784120,\"valor_maderas\":9634800,\"valor_insumos\":16149320,\"items_bajo\":1,\"items_sin\":0,\"detalle_bajo\":[{\"nombre\":\"Lija de banda grano \",\"categoria\":\"Material de Uso y Abrasivos\",\"cantidad\":10,\"stock_minimo\":20,\"stock_aceptable\":80}],\"detalle_sin\":[]},\"inflacion_precios\":{\"cambios_totales_90d\":6,\"cambios_30d\":0,\"cambios_60d\":6,\"promedio_30d\":0,\"promedio_60d\":36.3299999999999982946974341757595539093017578125,\"promedio_90d\":36.3299999999999982946974341757595539093017578125,\"top_subas\":[{\"nombre\":\"Cola vinílica 1 kg\",\"precio_anterior\":850,\"precio_nuevo\":1850,\"variacion_pct\":117.650000000000005684341886080801486968994140625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Aceite de tung 1 lt\",\"precio_anterior\":1800,\"precio_nuevo\":2800,\"variacion_pct\":55.56000000000000227373675443232059478759765625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Madera Cedro #8\",\"precio_anterior\":3900,\"precio_nuevo\":5000,\"variacion_pct\":28.21000000000000085265128291212022304534912109375,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Algarrobo #6\",\"precio_anterior\":8500,\"precio_nuevo\":9500,\"variacion_pct\":11.7599999999999997868371792719699442386627197265625,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Aglomerado #19\",\"precio_anterior\":4600,\"precio_nuevo\":4700,\"variacion_pct\":2.1699999999999999289457264239899814128875732421875,\"fecha\":\"2026-06-17 18:06:56\"}]},\"top_consumidos\":{\"top_maderas\":[{\"TipoMadera\":\"Roble\",\"IdMadera\":2,\"Dimensiones\":\"3.00x20.00x300.00\",\"CantidadConsumida\":\"240.00\",\"CostoTotalConsumido\":\"1512000.00\",\"VecesVendido\":42},{\"TipoMadera\":\"Roble\",\"IdMadera\":1,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"284200.00\",\"VecesVendido\":24},{\"TipoMadera\":\"Cedro\",\"IdMadera\":8,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"17.00\",\"CostoTotalConsumido\":\"85000.00\",\"VecesVendido\":14},{\"TipoMadera\":\"MDF\",\"IdMadera\":15,\"Dimensiones\":\"1.80x122.00x244.00\",\"CantidadConsumida\":\"15.00\",\"CostoTotalConsumido\":\"123000.00\",\"VecesVendido\":5}],\"top_insumos\":[{\"IdInsumo\":17,\"Nombre\":\"Tornillo Spax 3.5x35\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"172800.00\",\"VecesVendido\":42},{\"IdInsumo\":21,\"Nombre\":\"Taco plástico 6mm (b\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"86400.00\",\"VecesVendido\":42},{\"IdInsumo\":19,\"Nombre\":\"Clavo sin cabeza 40m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"435.00\",\"CostoTotalConsumido\":\"65250.00\",\"VecesVendido\":24},{\"IdInsumo\":44,\"Nombre\":\"Tarugos de madera 8m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"255.00\",\"CostoTotalConsumido\":\"45900.00\",\"VecesVendido\":14},{\"IdInsumo\":22,\"Nombre\":\"Tornillo para aglome\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"140.00\",\"CostoTotalConsumido\":\"35000.00\",\"VecesVendido\":5},{\"IdInsumo\":6,\"Nombre\":\"Lija al agua grano 1\",\"TipoMaterial\":\"Abrasivo\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"6960.00\",\"VecesVendido\":24},{\"IdInsumo\":10,\"Nombre\":\"Barniz marino brilla\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"48.00\",\"CostoTotalConsumido\":\"134400.00\",\"VecesVendido\":42},{\"IdInsumo\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"128800.00\",\"VecesVendido\":37},{\"IdInsumo\":25,\"Nombre\":\"Masilla para madera \",\"TipoMaterial\":\"Relleno \\/ Masilla\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"29900.00\",\"VecesVendido\":37},{\"IdInsumo\":42,\"Nombre\":\"Escuadra metálica 50\",\"TipoMaterial\":\"Metal\",\"CantidadConsumida\":\"20.00\",\"CostoTotalConsumido\":\"5600.00\",\"VecesVendido\":5}]},\"materiales_muertos\":{\"dias_umbral\":90,\"maderas_muertas\":[{\"Id\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"PrecioUnitario\":\"8900.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"1388400.0000\"},{\"Id\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"PrecioUnitario\":\"7800.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"936000.0000\"},{\"Id\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"912000.0000\"},{\"Id\":18,\"Nombre\":\"Aglomerado 1.80x122.00x244.00\",\"PrecioUnitario\":\"5400.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"518400.0000\"},{\"Id\":22,\"Nombre\":\"Multilaminado \\/ Terciado 0.40x122.00x244.00\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"168.00\",\"CapitalInmovilizado\":\"470400.0000\"},{\"Id\":20,\"Nombre\":\"Multilaminado \\/ Terciado 1.50x122.00x244.00\",\"PrecioUnitario\":\"7200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":16,\"Nombre\":\"MDF 1.50x122.00x244.00\",\"PrecioUnitario\":\"6800.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":14,\"Nombre\":\"Nogal 4.00x10.00x300.00\",\"PrecioUnitario\":\"5600.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"403200.0000\"},{\"Id\":4,\"Nombre\":\"Algarrobo 3.00x15.00x300.00\",\"PrecioUnitario\":\"5200.00\",\"StockActual\":\"72.00\",\"CapitalInmovilizado\":\"374400.0000\"},{\"Id\":3,\"Nombre\":\"Roble 5.00x10.00x300.00\",\"PrecioUnitario\":\"2900.00\",\"StockActual\":\"120.00\",\"CapitalInmovilizado\":\"348000.0000\"},{\"Id\":12,\"Nombre\":\"Pino 1.50x120.00x240.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"36.00\",\"CapitalInmovilizado\":\"342000.0000\"},{\"Id\":19,\"Nombre\":\"Aglomerado 1.50x122.00x244.00\",\"PrecioUnitario\":\"4700.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"282000.0000\"},{\"Id\":5,\"Nombre\":\"Algarrobo 5.00x10.00x300.00\",\"PrecioUnitario\":\"3100.00\",\"StockActual\":\"90.00\",\"CapitalInmovilizado\":\"279000.0000\"},{\"Id\":17,\"Nombre\":\"MDF 0.60x122.00x244.00\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"60.00\",\"CapitalInmovilizado\":\"192000.0000\"},{\"Id\":11,\"Nombre\":\"Pino 2.00x20.00x300.00\",\"PrecioUnitario\":\"2200.00\",\"StockActual\":\"78.00\",\"CapitalInmovilizado\":\"171600.0000\"}],\"insumos_muertos\":[{\"Id\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"PrecioUnitario\":\"380.00\",\"StockActual\":\"3600.00\",\"CapitalInmovilizado\":\"1368000.0000\"},{\"Id\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"PrecioUnitario\":\"1850.00\",\"StockActual\":\"600.00\",\"CapitalInmovilizado\":\"1110000.0000\"},{\"Id\":36,\"Nombre\":\"Cuero ecológico por \",\"PrecioUnitario\":\"6500.00\",\"StockActual\":\"96.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":23,\"Nombre\":\"Masilla para madera \",\"PrecioUnitario\":\"650.00\",\"StockActual\":\"960.00\",\"CapitalInmovilizado\":\"624000.0000\"},{\"Id\":12,\"Nombre\":\"Laca poliuretano bri\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":13,\"Nombre\":\"Laca poliuretano mat\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"180.00\",\"CapitalInmovilizado\":\"576000.0000\"},{\"Id\":16,\"Nombre\":\"Fondo para madera 1 \",\"PrecioUnitario\":\"2500.00\",\"StockActual\":\"216.00\",\"CapitalInmovilizado\":\"540000.0000\"},{\"Id\":18,\"Nombre\":\"Tornillo Spax 4x50 (\",\"PrecioUnitario\":\"220.00\",\"StockActual\":\"2400.00\",\"CapitalInmovilizado\":\"528000.0000\"},{\"Id\":39,\"Nombre\":\"Vidrio float 4mm por\",\"PrecioUnitario\":\"8500.00\",\"StockActual\":\"56.00\",\"CapitalInmovilizado\":\"476000.0000\"},{\"Id\":11,\"Nombre\":\"Barniz marino mate 1\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"156.00\",\"CapitalInmovilizado\":\"436800.0000\"},{\"Id\":2,\"Nombre\":\"Cola de contacto 1 l\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"360.00\",\"CapitalInmovilizado\":\"432000.0000\"},{\"Id\":40,\"Nombre\":\"Vidrio templado 6mm \",\"PrecioUnitario\":\"12000.00\",\"StockActual\":\"34.00\",\"CapitalInmovilizado\":\"408000.0000\"},{\"Id\":35,\"Nombre\":\"Tela de tapicería li\",\"PrecioUnitario\":\"4500.00\",\"StockActual\":\"84.00\",\"CapitalInmovilizado\":\"378000.0000\"},{\"Id\":5,\"Nombre\":\"Lija al agua grano 1\",\"PrecioUnitario\":\"120.00\",\"StockActual\":\"2300.00\",\"CapitalInmovilizado\":\"276000.0000\"},{\"Id\":43,\"Nombre\":\"Perfil de aluminio 2\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"228.00\",\"CapitalInmovilizado\":\"273600.0000\"}],\"capital_inmovilizado_total\":16083800},\"impacto_margen\":{\"productos_afectados\":[],\"total_afectados\":0},\"valorizacion_stock\":{\"top_valor\":[{\"Tipo\":\"madera\",\"IdMaterial\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"Cantidad\":\"156.00\",\"PrecioUnitario\":\"8900.00\",\"ValorTotal\":\"1388400.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"380.00\",\"ValorTotal\":\"1368000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":1,\"Nombre\":\"Cola vinílica 1 kg\",\"Cantidad\":\"600.00\",\"PrecioUnitario\":\"1850.00\",\"ValorTotal\":\"1110000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"7800.00\",\"ValorTotal\":\"936000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"Cantidad\":\"96.00\",\"PrecioUnitario\":\"9500.00\",\"ValorTotal\":\"912000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":22,\"Nombre\":\"Tornillo para aglome\",\"Cantidad\":\"3600.00\",\"PrecioUnitario\":\"250.00\",\"ValorTotal\":\"900000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"Cantidad\":\"300.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"840000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":2,\"Nombre\":\"Roble 3.00x20.00x300.00\",\"Cantidad\":\"120.00\",\"PrecioUnitario\":\"6300.00\",\"ValorTotal\":\"756000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":10,\"Nombre\":\"Barniz marino brilla\",\"Cantidad\":\"240.00\",\"PrecioUnitario\":\"2800.00\",\"ValorTotal\":\"672000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":15,\"Nombre\":\"MDF 1.80x122.00x244.00\",\"Cantidad\":\"78.00\",\"PrecioUnitario\":\"8200.00\",\"ValorTotal\":\"639600.0000\"}]}},\"analisis\":{\"resumen_ejecutivo\":\"El stock actual tiene un valor total de $25.784.120, con un solo item crítico por debajo del stock mínimo. La inflación ha sido moderada en los últimos 90 días, con un promedio de variación del 36.33%. La situación general es estable, pero requiere atención a los items críticos y la rotación de stock.\",\"alertas_criticas\":[\"Reponer Lija de banda grano con urgencia, ya que se encuentra por debajo del stock mínimo para su categoría de Material de Uso y Abrasivos.\",\"Revisar y ajustar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, debido a sus recientes aumentos de precio.\"],\"analisis_inflacion\":\"La inflación ha sido moderada en los últimos 90 días, con un promedio de variación del 36.33%. Los materiales que más subieron fueron Cola vinílica 1 kg y Aceite de tung 1 lt, con variaciones del 117.65% y 55.56%, respectivamente.\",\"recomendaciones_reposicion\":[\"Reponer Tornillo Spax 3.5x35, debido a su alta demanda y consumo.\",\"Reponer Taco plástico 6mm, debido a su alta demanda y consumo.\",\"Reponer Clavo sin cabeza 40m, debido a su alta demanda y consumo.\",\"Reponer Tarugos de madera 8m, debido a su alta demanda y consumo.\",\"Reponer Lija al agua grano 1, debido a su alta demanda y consumo.\"],\"materiales_muertos_recomendacion\":\"Se recomienda revisar y considerar la liquidación o reutilización de los materiales muertos, como Multilaminado\\/Terciado 1.80x122.00x244.00 y Tirafondo 6x80, que tienen un capital inmovilizado significativo y no han tenido rotación en los últimos 90 días.\",\"impacto_pricing\":\"Se necesitan actualizaciones de precio para los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt, debido a sus recientes aumentos de precio.\",\"puntaje_salud_stock\":80,\"prioridad_inmediata\":\"Reponer Lija de banda grano y revisar los precios de los productos que utilizan Cola vinílica 1 kg y Aceite de tung 1 lt.\"}}', 'El stock actual tiene un valor total de $25.784.120, con un solo item crítico por debajo del stock mínimo. La inflación ha sido moderada en los últimos 90 días, con un promedio de variación del 36.33%. La situación general es estable, pero requiere atención a los items críticos y la rotación de stock.', NULL);
INSERT INTO `StockDiagnostico` (`Id`, `FechaGenerado`, `GeneradoPor`, `TotalMaderas`, `TotalInsumos`, `ValorTotalStock`, `ItemsBajoStock`, `ItemsSinStock`, `VariacionPromedioPct`, `DiagnosticoJSON`, `ResumenTexto`, `FechaBorrado`) VALUES
(9, '2026-08-16 17:58:11', 4, 22, 40, '2536470.00', 3, 0, '0.00', '{\"metricas\":{\"generado_en\":\"2026-08-16 21:58:09\",\"resumen_general\":{\"total_maderas\":22,\"total_insumos\":40,\"valor_total\":2536470,\"valor_maderas\":1115200,\"valor_insumos\":1421270,\"items_bajo\":3,\"items_sin\":0,\"detalle_bajo\":[{\"nombre\":\"Lija al agua grano 8\",\"categoria\":\"Material de Uso y Abrasivos\",\"cantidad\":10,\"stock_minimo\":20,\"stock_aceptable\":80},{\"nombre\":\"Lija al agua grano 1\",\"categoria\":\"Material de Uso y Abrasivos\",\"cantidad\":13,\"stock_minimo\":20,\"stock_aceptable\":80},{\"nombre\":\"Tarugos de madera 8m\",\"categoria\":\"Fijación\",\"cantidad\":99,\"stock_minimo\":100,\"stock_aceptable\":400}],\"detalle_sin\":[]},\"inflacion_precios\":{\"cambios_totales_90d\":6,\"cambios_30d\":0,\"cambios_60d\":2,\"promedio_30d\":0,\"promedio_60d\":86.6099999999999994315658113919198513031005859375,\"promedio_90d\":36.3299999999999982946974341757595539093017578125,\"top_subas\":[{\"nombre\":\"Cola vinílica 1 kg\",\"precio_anterior\":850,\"precio_nuevo\":1850,\"variacion_pct\":117.650000000000005684341886080801486968994140625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Aceite de tung 1 lt\",\"precio_anterior\":1800,\"precio_nuevo\":2800,\"variacion_pct\":55.56000000000000227373675443232059478759765625,\"fecha\":\"2026-07-06 17:45:53\"},{\"nombre\":\"Madera Cedro #8\",\"precio_anterior\":3900,\"precio_nuevo\":5000,\"variacion_pct\":28.21000000000000085265128291212022304534912109375,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Algarrobo #6\",\"precio_anterior\":8500,\"precio_nuevo\":9500,\"variacion_pct\":11.7599999999999997868371792719699442386627197265625,\"fecha\":\"2026-06-17 18:06:56\"},{\"nombre\":\"Madera Aglomerado #19\",\"precio_anterior\":4600,\"precio_nuevo\":4700,\"variacion_pct\":2.1699999999999999289457264239899814128875732421875,\"fecha\":\"2026-06-17 18:06:56\"}]},\"top_consumidos\":{\"top_maderas\":[{\"TipoMadera\":\"Roble\",\"IdMadera\":2,\"Dimensiones\":\"3.00x20.00x300.00\",\"CantidadConsumida\":\"240.00\",\"CostoTotalConsumido\":\"1512000.00\",\"VecesVendido\":42},{\"TipoMadera\":\"Roble\",\"IdMadera\":1,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"284200.00\",\"VecesVendido\":24},{\"TipoMadera\":\"Cedro\",\"IdMadera\":8,\"Dimensiones\":\"3.00x15.00x300.00\",\"CantidadConsumida\":\"17.00\",\"CostoTotalConsumido\":\"85000.00\",\"VecesVendido\":14},{\"TipoMadera\":\"MDF\",\"IdMadera\":15,\"Dimensiones\":\"1.80x122.00x244.00\",\"CantidadConsumida\":\"15.00\",\"CostoTotalConsumido\":\"123000.00\",\"VecesVendido\":5}],\"top_insumos\":[{\"IdInsumo\":17,\"Nombre\":\"Tornillo Spax 3.5x35\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"172800.00\",\"VecesVendido\":42},{\"IdInsumo\":21,\"Nombre\":\"Taco plástico 6mm (b\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"960.00\",\"CostoTotalConsumido\":\"86400.00\",\"VecesVendido\":42},{\"IdInsumo\":19,\"Nombre\":\"Clavo sin cabeza 40m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"435.00\",\"CostoTotalConsumido\":\"65250.00\",\"VecesVendido\":24},{\"IdInsumo\":44,\"Nombre\":\"Tarugos de madera 8m\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"255.00\",\"CostoTotalConsumido\":\"45900.00\",\"VecesVendido\":14},{\"IdInsumo\":22,\"Nombre\":\"Tornillo para aglome\",\"TipoMaterial\":\"Fijación\",\"CantidadConsumida\":\"140.00\",\"CostoTotalConsumido\":\"35000.00\",\"VecesVendido\":5},{\"IdInsumo\":6,\"Nombre\":\"Lija al agua grano 1\",\"TipoMaterial\":\"Abrasivo\",\"CantidadConsumida\":\"58.00\",\"CostoTotalConsumido\":\"6960.00\",\"VecesVendido\":24},{\"IdInsumo\":10,\"Nombre\":\"Barniz marino brilla\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"48.00\",\"CostoTotalConsumido\":\"134400.00\",\"VecesVendido\":42},{\"IdInsumo\":14,\"Nombre\":\"Aceite de tung 1 lt\",\"TipoMaterial\":\"Protector \\/ Acabado\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"128800.00\",\"VecesVendido\":37},{\"IdInsumo\":25,\"Nombre\":\"Masilla para madera \",\"TipoMaterial\":\"Relleno \\/ Masilla\",\"CantidadConsumida\":\"46.00\",\"CostoTotalConsumido\":\"29900.00\",\"VecesVendido\":37},{\"IdInsumo\":42,\"Nombre\":\"Escuadra metálica 50\",\"TipoMaterial\":\"Metal\",\"CantidadConsumida\":\"20.00\",\"CostoTotalConsumido\":\"5600.00\",\"VecesVendido\":5}]},\"materiales_muertos\":{\"dias_umbral\":90,\"maderas_muertas\":[{\"Id\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"PrecioUnitario\":\"8900.00\",\"StockActual\":\"13.00\",\"CapitalInmovilizado\":\"115700.0000\"},{\"Id\":18,\"Nombre\":\"Aglomerado 1.80x122.00x244.00\",\"PrecioUnitario\":\"5400.00\",\"StockActual\":\"16.00\",\"CapitalInmovilizado\":\"86400.0000\"},{\"Id\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"PrecioUnitario\":\"7800.00\",\"StockActual\":\"10.00\",\"CapitalInmovilizado\":\"78000.0000\"},{\"Id\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"8.00\",\"CapitalInmovilizado\":\"76000.0000\"},{\"Id\":12,\"Nombre\":\"Pino 1.50x120.00x240.00\",\"PrecioUnitario\":\"9500.00\",\"StockActual\":\"6.00\",\"CapitalInmovilizado\":\"57000.0000\"},{\"Id\":5,\"Nombre\":\"Algarrobo 5.00x10.00x300.00\",\"PrecioUnitario\":\"3100.00\",\"StockActual\":\"15.00\",\"CapitalInmovilizado\":\"46500.0000\"},{\"Id\":22,\"Nombre\":\"Multilaminado \\/ Terciado 0.40x122.00x244.00\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"16.00\",\"CapitalInmovilizado\":\"44800.0000\"},{\"Id\":20,\"Nombre\":\"Multilaminado \\/ Terciado 1.50x122.00x244.00\",\"PrecioUnitario\":\"7200.00\",\"StockActual\":\"5.00\",\"CapitalInmovilizado\":\"36000.0000\"},{\"Id\":16,\"Nombre\":\"MDF 1.50x122.00x244.00\",\"PrecioUnitario\":\"6800.00\",\"StockActual\":\"5.00\",\"CapitalInmovilizado\":\"34000.0000\"},{\"Id\":14,\"Nombre\":\"Nogal 4.00x10.00x300.00\",\"PrecioUnitario\":\"5600.00\",\"StockActual\":\"6.00\",\"CapitalInmovilizado\":\"33600.0000\"},{\"Id\":17,\"Nombre\":\"MDF 0.60x122.00x244.00\",\"PrecioUnitario\":\"3200.00\",\"StockActual\":\"10.00\",\"CapitalInmovilizado\":\"32000.0000\"},{\"Id\":4,\"Nombre\":\"Algarrobo 3.00x15.00x300.00\",\"PrecioUnitario\":\"5200.00\",\"StockActual\":\"6.00\",\"CapitalInmovilizado\":\"31200.0000\"},{\"Id\":3,\"Nombre\":\"Roble 5.00x10.00x300.00\",\"PrecioUnitario\":\"2900.00\",\"StockActual\":\"10.00\",\"CapitalInmovilizado\":\"29000.0000\"},{\"Id\":11,\"Nombre\":\"Pino 2.00x20.00x300.00\",\"PrecioUnitario\":\"2200.00\",\"StockActual\":\"13.00\",\"CapitalInmovilizado\":\"28600.0000\"},{\"Id\":19,\"Nombre\":\"Aglomerado 1.50x122.00x244.00\",\"PrecioUnitario\":\"4700.00\",\"StockActual\":\"5.00\",\"CapitalInmovilizado\":\"23500.0000\"}],\"insumos_muertos\":[{\"Id\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"PrecioUnitario\":\"380.00\",\"StockActual\":\"600.00\",\"CapitalInmovilizado\":\"228000.0000\"},{\"Id\":39,\"Nombre\":\"Vidrio float 4mm por\",\"PrecioUnitario\":\"8500.00\",\"StockActual\":\"8.00\",\"CapitalInmovilizado\":\"68000.0000\"},{\"Id\":35,\"Nombre\":\"Tela de tapicería li\",\"PrecioUnitario\":\"4500.00\",\"StockActual\":\"14.00\",\"CapitalInmovilizado\":\"63000.0000\"},{\"Id\":40,\"Nombre\":\"Vidrio templado 6mm\",\"PrecioUnitario\":\"12000.00\",\"StockActual\":\"5.00\",\"CapitalInmovilizado\":\"60000.0000\"},{\"Id\":36,\"Nombre\":\"Cuero ecológico por\",\"PrecioUnitario\":\"6500.00\",\"StockActual\":\"8.00\",\"CapitalInmovilizado\":\"52000.0000\"},{\"Id\":18,\"Nombre\":\"Tornillo Spax 4x50 (\",\"PrecioUnitario\":\"220.00\",\"StockActual\":\"200.00\",\"CapitalInmovilizado\":\"44000.0000\"},{\"Id\":28,\"Nombre\":\"Imprimación para mad\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"35.00\",\"CapitalInmovilizado\":\"42000.0000\"},{\"Id\":11,\"Nombre\":\"Barniz marino mate 1\",\"PrecioUnitario\":\"2800.00\",\"StockActual\":\"14.00\",\"CapitalInmovilizado\":\"39200.0000\"},{\"Id\":37,\"Nombre\":\"Guata relleno 500 g\",\"PrecioUnitario\":\"1200.00\",\"StockActual\":\"26.00\",\"CapitalInmovilizado\":\"31200.0000\"},{\"Id\":32,\"Nombre\":\"Tinte al agua cedro\",\"PrecioUnitario\":\"850.00\",\"StockActual\":\"36.00\",\"CapitalInmovilizado\":\"30600.0000\"},{\"Id\":27,\"Nombre\":\"Sellador fondo laca\",\"PrecioUnitario\":\"1500.00\",\"StockActual\":\"20.00\",\"CapitalInmovilizado\":\"30000.0000\"},{\"Id\":33,\"Nombre\":\"Tinte al agua wengué\",\"PrecioUnitario\":\"850.00\",\"StockActual\":\"35.00\",\"CapitalInmovilizado\":\"29750.0000\"},{\"Id\":34,\"Nombre\":\"Tinte al agua ebony\",\"PrecioUnitario\":\"850.00\",\"StockActual\":\"34.00\",\"CapitalInmovilizado\":\"28900.0000\"},{\"Id\":30,\"Nombre\":\"Tinte al agua nogal\",\"PrecioUnitario\":\"850.00\",\"StockActual\":\"33.00\",\"CapitalInmovilizado\":\"28050.0000\"},{\"Id\":29,\"Nombre\":\"Tinte al agua roble\",\"PrecioUnitario\":\"850.00\",\"StockActual\":\"33.00\",\"CapitalInmovilizado\":\"28050.0000\"}],\"capital_inmovilizado_total\":1555050},\"impacto_margen\":{\"productos_afectados\":[],\"total_afectados\":0},\"valorizacion_stock\":{\"top_valor\":[{\"Tipo\":\"insumo\",\"IdMaterial\":20,\"Nombre\":\"Tirafondo 6x80 (caja\",\"Cantidad\":\"600.00\",\"PrecioUnitario\":\"380.00\",\"ValorTotal\":\"228000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":22,\"Nombre\":\"Tornillo para aglome\",\"Cantidad\":\"600.00\",\"PrecioUnitario\":\"250.00\",\"ValorTotal\":\"150000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":2,\"Nombre\":\"Roble 3.00x20.00x300.00\",\"Cantidad\":\"20.00\",\"PrecioUnitario\":\"6300.00\",\"ValorTotal\":\"126000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":21,\"Nombre\":\"Multilaminado \\/ Terciado 1.80x122.00x244.00\",\"Cantidad\":\"13.00\",\"PrecioUnitario\":\"8900.00\",\"ValorTotal\":\"115700.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":15,\"Nombre\":\"MDF 1.80x122.00x244.00\",\"Cantidad\":\"13.00\",\"PrecioUnitario\":\"8200.00\",\"ValorTotal\":\"106600.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":18,\"Nombre\":\"Aglomerado 1.80x122.00x244.00\",\"Cantidad\":\"16.00\",\"PrecioUnitario\":\"5400.00\",\"ValorTotal\":\"86400.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":13,\"Nombre\":\"Nogal 3.00x15.00x300.00\",\"Cantidad\":\"10.00\",\"PrecioUnitario\":\"7800.00\",\"ValorTotal\":\"78000.0000\"},{\"Tipo\":\"madera\",\"IdMaterial\":6,\"Nombre\":\"Algarrobo 3.00x25.00x250.00\",\"Cantidad\":\"8.00\",\"PrecioUnitario\":\"9500.00\",\"ValorTotal\":\"76000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":39,\"Nombre\":\"Vidrio float 4mm por\",\"Cantidad\":\"8.00\",\"PrecioUnitario\":\"8500.00\",\"ValorTotal\":\"68000.0000\"},{\"Tipo\":\"insumo\",\"IdMaterial\":35,\"Nombre\":\"Tela de tapicería li\",\"Cantidad\":\"14.00\",\"PrecioUnitario\":\"4500.00\",\"ValorTotal\":\"63000.0000\"}]}},\"analisis\":{\"resumen_ejecutivo\":\"El stock tiene un valor total de $2.536.470, con 3 items críticos que necesitan reposición. La inflación ha afectado a varios materiales, con subas significativas en los últimos 90 días.\",\"alertas_criticas\":[\"Lija al agua grano 8 (Material de Uso y Abrasivos) está por debajo del stock mínimo de 20 unidades\",\"Lija al agua grano 1 (Material de Uso y Abrasivos) está por debajo del stock mínimo de 20 unidades\",\"Tarugos de madera 8m (Fijación) están muy cerca del stock mínimo de 100 unidades\"],\"analisis_inflacion\":\"La inflación ha sido significativa en los últimos 90 días, con subas en materiales como Cola vinílica 1 kg (117,65%), Aceite de tung 1 lt (55,56%) y Madera Cedro #8 (28,21%). Esto puede afectar la rentabilidad de los productos que los utilizan.\",\"recomendaciones_reposicion\":[\"Reponer Tornillo Spax 3.5x35 (Fijación) debido a su alta demanda y consumo\",\"Reponer Taco plástico 6mm (Fijación) debido a su alta demanda y consumo\",\"Reponer Clavo sin cabeza 40m (Fijación) debido a su alta demanda y consumo\"],\"materiales_muertos_recomendacion\":\"Se recomienda considerar la liquidación o reutilización de materiales muertos como Tirafondo 6x80, Tela de tapicería y Vidrio float 4mm, que tienen un capital inmovilizado significativo y no han tenido rotación en los últimos 90 días.\",\"impacto_pricing\":\"Es necesario revisar y actualizar los precios de productos que utilizan materiales con subas significativas, como la Cola vinílica 1 kg y el Aceite de tung 1 lt, para evitar una compresión del margen.\",\"puntaje_salud_stock\":70,\"prioridad_inmediata\":\"Reponer los items críticos y revisar los precios de los productos afectados por la inflación para evitar pérdidas\"}}', 'El stock tiene un valor total de $2.536.470, con 3 items críticos que necesitan reposición. La inflación ha afectado a varios materiales, con subas significativas en los últimos 90 días.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `StockHistorialPrecios`
--

CREATE TABLE `StockHistorialPrecios` (
  `Id` int(11) NOT NULL,
  `IdStock` int(11) DEFAULT NULL,
  `TipoMaterial` tinyint(1) NOT NULL COMMENT '1=Madera, 2=Insumo',
  `IdMaterial` int(11) NOT NULL COMMENT 'FK → maderas.Id o insumosdecarpinteria.Id',
  `PrecioAnterior` decimal(10,2) DEFAULT NULL,
  `PrecioNuevo` decimal(10,2) NOT NULL,
  `Variacion` decimal(6,2) GENERATED ALWAYS AS (case when `PrecioAnterior` > 0 then round((`PrecioNuevo` - `PrecioAnterior`) / `PrecioAnterior` * 100,2) else NULL end) STORED COMMENT '% de cambio respecto al precio anterior',
  `FechaRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `StockHistorialPrecios`
--

INSERT INTO `StockHistorialPrecios` (`Id`, `IdStock`, `TipoMaterial`, `IdMaterial`, `PrecioAnterior`, `PrecioNuevo`, `FechaRegistro`) VALUES
(1, NULL, 1, 8, '3800.00', '3900.00', '2026-06-17 17:41:04'),
(2, NULL, 1, 19, '4600.00', '4700.00', '2026-06-17 18:06:56'),
(3, NULL, 1, 6, '8500.00', '9500.00', '2026-06-17 18:06:56'),
(4, NULL, 1, 8, '3900.00', '5000.00', '2026-06-17 18:06:56'),
(5, NULL, 2, 14, '1800.00', '2800.00', '2026-07-06 17:45:53'),
(6, NULL, 2, 1, '850.00', '1850.00', '2026-07-06 17:45:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeAcabado`
--

CREATE TABLE `TipodeAcabado` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeAcabado`
--

INSERT INTO `TipodeAcabado` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Lustrado', NULL),
(2, 'Barnizado', NULL),
(3, 'Laqueado', NULL),
(4, 'Pintado', NULL),
(5, 'Encerado', NULL),
(6, 'Aceite de tung', NULL),
(7, 'Teñido', NULL),
(8, 'Natural sin tratamiento', NULL),
(9, 'Poliuretano mate', NULL),
(10, 'Poliuretano brillante', NULL),
(11, 'Microcemento', NULL),
(12, 'Patinado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeAlmacenamiento`
--

CREATE TABLE `TipodeAlmacenamiento` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeAlmacenamiento`
--

INSERT INTO `TipodeAlmacenamiento` (`Id`, `Nombre`, `Descripcion`, `FechaBorrado`) VALUES
(1, 'Sin almacenamiento', 'El producto no tiene espacio de almacenamiento', NULL),
(2, 'Cajones', 'Uno o más cajones deslizantes', NULL),
(3, 'Puertas con estantes', 'Puertas que ocultan estantes internos', NULL),
(4, 'Puertas sin estantes', 'Puertas que ocultan espacio libre', NULL),
(5, 'Estantes abiertos', 'Estantes a la vista sin puertas', NULL),
(6, 'Baúl / contenedor', 'Tapa abatible con espacio interior amplio', NULL),
(7, 'Cajones + puertas', 'Combinación de cajones y puertas', NULL),
(8, 'Perchero', 'Barra o ganchos para colgar ropa', NULL),
(9, 'Perchero + cajones', 'Barra para colgar más cajones inferiores', NULL),
(10, 'Zapatera', 'Espacio diseñado para guardar calzado', NULL),
(11, 'Vitrina', 'Puertas de vidrio para exhibir objetos', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodecorte`
--

CREATE TABLE `tipodecorte` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `StockMinimo` decimal(10,2) NOT NULL DEFAULT 5.00,
  `StockAceptable` decimal(10,2) NOT NULL DEFAULT 20.00,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodecorte`
--

INSERT INTO `tipodecorte` (`Id`, `Nombre`, `StockMinimo`, `StockAceptable`, `FechaBorrado`) VALUES
(1, 'Sin corte', '5.00', '20.00', NULL),
(2, 'Recto', '5.00', '20.00', NULL),
(3, 'Diagonal / Ingleteado', '5.00', '20.00', NULL),
(4, 'Curvo / Fresado', '5.00', '20.00', NULL),
(5, 'Canaleta', '5.00', '20.00', NULL),
(6, 'Machimbre', '5.00', '20.00', NULL),
(7, 'Espiga', '5.00', '20.00', NULL),
(8, 'Caja y espiga', '5.00', '20.00', NULL),
(9, 'Dovetail / Cola de milano', '5.00', '20.00', NULL),
(10, 'A medida del cliente', '5.00', '20.00', NULL),
(11, 'Fijación', '100.00', '400.00', NULL),
(12, 'Herrajes para Placares y Esqui', '7.00', '28.00', NULL),
(13, 'Adhesivos', '3.00', '12.00', NULL),
(14, 'Pintura y Terminación en Lata', '3.00', '12.00', NULL),
(15, 'Pintura en Aerosol', '3.00', '12.00', NULL),
(16, 'Material de Uso y Abrasivos', '20.00', '80.00', NULL),
(17, 'Sellador y Masilla', '5.00', '20.00', NULL),
(18, 'Tapizado', '5.00', '20.00', NULL),
(19, 'Marcos y Perfiles', '3.00', '12.00', NULL),
(20, 'Herrajes de Puerta', '10.00', '40.00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeDiseño`
--

CREATE TABLE `TipodeDiseño` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeDiseño`
--

INSERT INTO `TipodeDiseño` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Clásico', NULL),
(2, 'Rústico', NULL),
(3, 'Moderno', NULL),
(4, 'Contemporáneo', NULL),
(5, 'Minimalista', NULL),
(6, 'Industrial', NULL),
(7, 'Escandinavo', NULL),
(8, 'Provenzal', NULL),
(9, 'Colonial', NULL),
(10, 'Art Déco', NULL),
(11, 'Vintage', NULL),
(12, 'Campestre', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeDni`
--

CREATE TABLE `TipodeDni` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeDni`
--

INSERT INTO `TipodeDni` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'DNI', NULL),
(2, 'Libreta', NULL),
(3, 'Pasaporte', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeEncargoRemito`
--

CREATE TABLE `TipodeEncargoRemito` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeEntrega`
--

CREATE TABLE `TipodeEntrega` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeEntrega`
--

INSERT INTO `TipodeEntrega` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Retiro en sucursal', NULL),
(2, 'Envío a domicilio', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeHerraje`
--

CREATE TABLE `TipodeHerraje` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeHerraje`
--

INSERT INTO `TipodeHerraje` (`Id`, `Nombre`, `Descripcion`, `FechaBorrado`) VALUES
(1, 'Sin herraje', 'Sin herraje adicional', NULL),
(2, 'Bisagras ocultas', 'Bisagras europeas de cierre suave', NULL),
(3, 'Bisagras vistas', 'Bisagras de hierro forjado o latón a la vista', NULL),
(4, 'Correderas simples', 'Correderas metálicas para cajones', NULL),
(5, 'Correderas soft-close', 'Correderas con cierre amortiguado', NULL),
(6, 'Patas metálicas', 'Patas de hierro o acero, varios acabados', NULL),
(7, 'Patas de madera', 'Patas torneadas o rectas en madera', NULL),
(8, 'Tiradores hierro', 'Tiradores de hierro rústico o forjado', NULL),
(9, 'Tiradores latón', 'Tiradores de latón dorado o envejecido', NULL),
(10, 'Tiradores acero', 'Tiradores de acero inoxidable', NULL),
(11, 'Ruedas', 'Ruedas con o sin freno para muebles móviles', NULL),
(12, 'Herraje de cama', 'Herraje estructural para camas y sommiers', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodemadera`
--

CREATE TABLE `tipodemadera` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodemadera`
--

INSERT INTO `tipodemadera` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Roble', NULL),
(2, 'Algarrobo', NULL),
(3, 'Cedro', NULL),
(4, 'Pino', NULL),
(5, 'Nogal', NULL),
(6, 'Guatambú', NULL),
(7, 'Lapacho', NULL),
(8, 'Eucaliptus', NULL),
(9, 'Paraíso', NULL),
(10, 'Fresno', NULL),
(11, 'Teca', NULL),
(12, 'MDF', NULL),
(13, 'Aglomerado', NULL),
(14, 'Multilaminado / Terciado', NULL),
(15, 'OSB', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodematerial`
--

CREATE TABLE `tipodematerial` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodematerial`
--

INSERT INTO `tipodematerial` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Adhesivo', NULL),
(2, 'Abrasivo', NULL),
(3, 'Protector / Acabado', NULL),
(4, 'Fijación', NULL),
(5, 'Relleno / Masilla', NULL),
(6, 'Sellador', NULL),
(7, 'Tinte / Colorante', NULL),
(8, 'Limpieza', NULL),
(9, 'Tapizado', NULL),
(10, 'Vidrio', NULL),
(11, 'Metal', NULL),
(12, 'Plástico / PVC', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodePago`
--

CREATE TABLE `TipodePago` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodePago`
--

INSERT INTO `TipodePago` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Tarjeta de Crédito', NULL),
(2, 'Tarjeta de Débito', NULL),
(3, 'Efectivo', NULL),
(4, 'MercadoPago', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodePedido`
--

CREATE TABLE `TipodePedido` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeProducto`
--

CREATE TABLE `TipodeProducto` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeProducto`
--

INSERT INTO `TipodeProducto` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Mesa', NULL),
(2, 'Silla', NULL),
(3, 'Sillón', NULL),
(4, 'Sofá', NULL),
(5, 'Ropero', NULL),
(6, 'Cómoda', NULL),
(7, 'Biblioteca', NULL),
(8, 'Escritorio', NULL),
(9, 'Cama', NULL),
(10, 'Cabecera', NULL),
(11, 'Mesa de luz', NULL),
(12, 'Mueble de TV', NULL),
(13, 'Aparador', NULL),
(14, 'Buffet', NULL),
(15, 'Baúl', NULL),
(16, 'Estantería', NULL),
(17, 'Banqueta', NULL),
(18, 'Taburete', NULL),
(19, 'Mueble de baño', NULL),
(20, 'Mueble de cocina', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeRol`
--

CREATE TABLE `TipodeRol` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeRol`
--

INSERT INTO `TipodeRol` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'gerente', NULL),
(2, 'cliente', NULL),
(3, 'repartidor', NULL),
(4, 'vendedor', NULL),
(5, 'carpintero', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipodeUsuario`
--

CREATE TABLE `TipodeUsuario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipodeUsuario`
--

INSERT INTO `TipodeUsuario` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'empleado', NULL),
(2, 'cliente', NULL),
(3, 'administrador', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TipoDomicilio`
--

CREATE TABLE `TipoDomicilio` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TipoDomicilio`
--

INSERT INTO `TipoDomicilio` (`Id`, `Nombre`, `FechaBorrado`) VALUES
(1, 'Domicilio', NULL),
(2, 'Departamento', NULL),
(3, 'Barrio Privado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `UmbralFormatoMadera`
--

CREATE TABLE `UmbralFormatoMadera` (
  `Formato` enum('plancha','tablon') NOT NULL,
  `StockMinimo` decimal(10,2) NOT NULL DEFAULT 10.00,
  `StockAceptable` decimal(10,2) NOT NULL DEFAULT 40.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `UmbralFormatoMadera`
--

INSERT INTO `UmbralFormatoMadera` (`Formato`, `StockMinimo`, `StockAceptable`) VALUES
('plancha', '5.00', '20.00'),
('tablon', '5.00', '20.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `Id` int(11) NOT NULL,
  `NombredeUsuario` varchar(40) DEFAULT NULL,
  `Contraseña` varchar(300) DEFAULT NULL,
  `CorreoElectronico` varchar(50) DEFAULT NULL,
  `Restablecer` int(11) DEFAULT NULL,
  `Confirmado` int(11) DEFAULT NULL,
  `Token` varchar(700) DEFAULT NULL,
  `IdTipodeUsuario` int(11) DEFAULT NULL,
  `IdTipodeRol` int(11) DEFAULT NULL,
  `IdCliente` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`Id`, `NombredeUsuario`, `Contraseña`, `CorreoElectronico`, `Restablecer`, `Confirmado`, `Token`, `IdTipodeUsuario`, `IdTipodeRol`, `IdCliente`, `FechaBorrado`) VALUES
(1, 'gino_admin', '$2y$10$NJqMee14zZe0szZVFk4Yl.rwKzyBRUmvd6.yu1Oy.Wf1Ch7TWr41i', 'lucia.fernandez@example.com', NULL, 1, NULL, 3, 1, 1, NULL),
(2, 'ginoromano01', '$2y$10$6P0vE9JEa1YskqOf8zIfJ.vVzIrvTHvn//8UIOh/fDxp9qFtQad2K', 'romanoginovalentin@gmail.com', NULL, 0, NULL, 2, 2, 2, NULL),
(3, 'teowars123', '$2y$10$tMpVpngLjmPr33QV6g82juXrWvZmi6m6eAcj1uO.UsfhD3JlDnGry', 'tteocri.mc@gmail.com', NULL, 0, NULL, 2, 2, 3, '2026-05-14 20:17:58'),
(4, 'Gino Romano', '$2y$10$caFk/lWgOYLlfPtaRv1Ysu9Nn6FkRn8E3hSsF3Xjfx05RyFEugRkq', 'gino.crack.carp@gmail.com', NULL, 1, NULL, 3, 1, 4, NULL),
(5, 'jose perez 01', '$2y$10$sGij9mYN738nMTDIUJ.jgONRqREsFNq.uGMvTblPqzT5US9zDjc0u', 'ginivalentinromano@gmail.com', NULL, 0, NULL, 2, 2, 5, '2026-08-13 23:52:46'),
(6, 'Jose Ramirez', '$2y$10$JKENSGH2Dt34iC4iz8tFVu5DETTLH.1dyj.FOsOU/p9a0TmfSM.eW', 'josearturoramirez357@gmail.com', NULL, 0, NULL, 2, 2, 6, NULL),
(7, 'German Aguirre', '$2y$10$1LOdSoh466t6zQcYn8wSWugKaHjqkx/l5mun3xNo8y/hFuFlg2Gc6', 'germanaguirre@gmail.com', NULL, 1, NULL, 1, 4, 7, NULL),
(8, 'Jose Perez', '$2y$10$OW0hfTXnlZhFbiJnnv7v9O.i.jrBs53HzqMzpJwN3ETPP3fqVzKd.', 'joseperez@gmail.com', NULL, 1, NULL, 1, 5, 8, '2026-05-28 19:54:16'),
(9, 'Jose Perez', '$2y$10$cowqKSq7aFsnjnh86afAOOKp4tZ4vJC0tQnlj.zGDubYo9dWU1QDS', 'joseperez@gmail.com', NULL, 1, NULL, 1, 5, 9, NULL),
(10, 'ignaciodiaz01', '$2y$10$5iRCWRXp7iQnCLXTDog0ee.bOUuyawdv0EoUWcgEeuOEO/PX.xxi2', 'ignaciodiaz01@gmail.com', NULL, 1, NULL, 3, 4, 11, NULL),
(11, 'JoseAntonio02', '$2y$10$HMFIt7/nYHglzMHjzfpgn.o4s8OGZH2n9ExXxMHaUEHuw4OiJw/0e', 'joseantonio02@gmail.com', NULL, 1, NULL, 1, 3, 12, NULL),
(12, 'andresmacerata', '$2y$10$EdYOmYyjz5NO8vKqZojKQ.bFgflGwYL/dxsIBATXdt2XUZTVbWgVK', 'ginivalentinromano@gmail.com', NULL, 0, NULL, 2, 2, 13, NULL),
(13, 'Cristopher ADM', '$2y$10$yDdT6DJK.qOzpwJm38h4wOfbK5mX1kJ/B7uX6Am4GtD1wuMyR331.', 'cristophervaldezgigena@gmail.com', NULL, 1, NULL, 3, 1, 14, NULL),
(14, 'Tomas Yamil', '$2y$10$2SvQMkFGTbHqCkYStTeLeO4q.A0zywVcLt.UQk.PnolOTfk50Lbdq', 'tomasruffino@gmail.com', NULL, 1, NULL, 3, 1, 15, NULL),
(15, 'MATIADM', '$2y$10$b6MC6vcqeiJDFDoKUL6sNuo7ENF.q7fgWkeN5LJQu0X.5xdjo2hzK', 'matiiralde@gmail.com', NULL, 1, NULL, 3, 3, 16, NULL),
(16, 'vida ruffino', '$2y$10$OaiqG3nuhDAwmIE1SbsEcOfvjYwOuhF0bFj8A/PvHncifc0rYltHq', 'vidaruffino@gmail.com', NULL, 1, NULL, 2, 2, 17, '2026-08-18 18:22:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Venta`
--

CREATE TABLE `Venta` (
  `Id` int(11) NOT NULL,
  `NumerodeVenta` int(11) DEFAULT NULL,
  `CantidadTotal` int(11) DEFAULT NULL,
  `IdCarrito` int(11) DEFAULT NULL,
  `IdFacturaCliente` int(11) DEFAULT NULL,
  `Identrega` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Venta`
--

INSERT INTO `Venta` (`Id`, `NumerodeVenta`, `CantidadTotal`, `IdCarrito`, `IdFacturaCliente`, `Identrega`, `FechaBorrado`) VALUES
(2, 1, 1, 3, 5, NULL, NULL),
(3, 2, 1, 3, 6, NULL, NULL),
(4, 3, 1, 3, 7, NULL, NULL),
(5, 4, 1, 3, 8, NULL, NULL),
(6, 5, 1, 4, 9, NULL, NULL),
(7, 6, 2, 5, 10, NULL, NULL),
(8, 7, 2, 5, 11, NULL, NULL),
(9, 8, 2, 5, 12, NULL, NULL),
(10, 9, 2, 5, 13, NULL, NULL),
(11, 10, 2, 6, 14, NULL, NULL),
(12, 11, 1, 7, 15, NULL, NULL),
(13, 12, 1, 8, 16, NULL, NULL),
(14, 13, 1, 9, 17, NULL, NULL),
(15, 14, 2, 1, 18, NULL, NULL),
(16, 15, 2, 10, 19, NULL, NULL),
(17, 16, 1, 11, 20, NULL, NULL),
(18, 17, 2, 12, 21, NULL, NULL),
(19, 18, 1, 14, 22, NULL, NULL),
(20, 19, 1, 15, 23, NULL, NULL),
(21, 20, 1, 15, 24, NULL, NULL),
(22, 21, 1, 15, 25, NULL, NULL),
(23, 22, 1, 15, 26, NULL, NULL),
(24, 23, 1, 15, 27, NULL, NULL),
(25, 24, 1, 16, 28, NULL, NULL),
(26, 25, 1, 16, 29, NULL, NULL),
(27, 26, 1, 16, 30, NULL, NULL),
(28, 27, 1, 16, 31, NULL, NULL),
(29, 28, 1, 16, 32, NULL, NULL),
(30, 29, 1, 16, 33, NULL, NULL),
(31, 30, 1, 16, 34, NULL, NULL),
(32, 31, 1, 16, 35, NULL, NULL),
(33, 32, 1, 16, 36, NULL, NULL),
(34, 33, 1, 16, 37, NULL, NULL),
(35, 34, 1, 16, 38, NULL, NULL),
(36, 35, 1, 16, 39, NULL, NULL),
(37, 36, 1, 16, 40, NULL, NULL),
(38, 37, 1, 16, 41, NULL, NULL),
(39, 38, 1, 16, 42, NULL, NULL),
(40, 39, 1, 16, 43, NULL, NULL),
(41, 40, 1, 16, 44, NULL, NULL),
(42, 41, 1, 17, 45, NULL, NULL),
(43, 42, 4, 19, 46, NULL, NULL),
(44, 43, 4, 18, 47, NULL, NULL),
(45, 44, 1, 20, 48, NULL, NULL),
(46, 45, 1, 21, 49, NULL, NULL),
(47, 46, 2, 22, 50, NULL, NULL),
(48, 47, 2, 23, 51, NULL, NULL),
(49, 48, 3, 24, 52, NULL, NULL),
(50, 49, 1, 25, 53, NULL, NULL),
(51, 50, 1, 26, 54, NULL, NULL),
(52, 51, 2, 27, 55, NULL, NULL),
(53, 52, 2, 16, 56, NULL, NULL),
(54, 53, 2, 28, 57, NULL, NULL),
(55, 54, 1, 29, 58, NULL, NULL),
(56, 55, 1, 30, 59, NULL, NULL),
(57, 56, 1, 32, 60, NULL, NULL),
(58, 57, 1, 31, 61, NULL, NULL),
(59, 58, 1, 33, 62, NULL, NULL),
(60, 59, 1, 34, 63, NULL, NULL),
(61, 60, 1, 35, 64, NULL, NULL),
(62, 61, 1, 36, 65, NULL, NULL),
(63, 62, 1, 37, 66, NULL, NULL),
(64, 63, 1, 38, 67, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `VistasDePagina`
--

CREATE TABLE `VistasDePagina` (
  `Id` int(11) NOT NULL,
  `UrlVisitada` varchar(500) NOT NULL COMMENT 'URL completa visitada',
  `Titulo` varchar(200) DEFAULT NULL COMMENT 'document.title de la página',
  `Referidor` varchar(500) DEFAULT NULL COMMENT 'document.referrer (origen)',
  `IdUsuario` int(11) DEFAULT NULL COMMENT 'FK Usuario.Id — NULL si anónimo',
  `IdCliente` int(11) DEFAULT NULL COMMENT 'FK Clientes.Id — NULL si anónimo',
  `SesionId` varchar(100) DEFAULT NULL COMMENT 'session_id() del servidor PHP',
  `DispositivoTipo` varchar(20) DEFAULT NULL COMMENT 'mobile / tablet / desktop',
  `Navegador` varchar(100) DEFAULT NULL COMMENT 'User-Agent simplificado',
  `IpHash` varchar(64) DEFAULT NULL COMMENT 'SHA-256 de IP (privacidad)',
  `TiempoEnPagina` int(11) DEFAULT NULL COMMENT 'Segundos en la página (beacon)',
  `FechaRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `VistasDePagina`
--

INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1143, 'https://sanplacido.infinityfree.me/?i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/?i=1', NULL, NULL, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:16:55'),
(1144, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:11'),
(1145, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:17'),
(1146, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:31'),
(1147, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:40'),
(1148, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:41'),
(1149, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:42'),
(1150, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:47'),
(1151, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:53'),
(1152, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:17:57'),
(1153, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:03'),
(1154, 'https://sanplacido.infinityfree.me/stock/maderas', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:11'),
(1155, 'https://sanplacido.infinityfree.me/stock/insumos', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:14'),
(1156, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/insumos', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:16'),
(1157, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/insumos', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:23'),
(1158, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/insumos', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:18:32'),
(1159, 'https://sanplacido.infinityfree.me/cliente/perfil', 'Mi Perfil — San Plácido', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:44'),
(1160, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/cliente/perfil', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:46'),
(1161, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:48'),
(1162, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:53'),
(1163, 'https://sanplacido.infinityfree.me/catalogo?orden=precio_asc&pagina=1', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:56'),
(1164, 'https://sanplacido.infinityfree.me/catalogo?orden=precio_desc&pagina=1', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo?orden=precio_asc&pagina=1', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:19:59'),
(1165, 'https://sanplacido.infinityfree.me/catalogo?orden=nuevo&pagina=1', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo?orden=precio_desc&pagina=1', 4, 4, 'c0cb4e8d21816753f92652a7fcd4a9f9', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-13 18:20:01'),
(1166, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo?orden=nuevo&pagina=1', NULL, NULL, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:20:19'),
(1167, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:20:31'),
(1168, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-13 18:25:37'),
(1169, 'https://sanplacido.infinityfree.me/cliente/perfil', 'Mi Perfil — San Plácido', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:26:31'),
(1170, 'https://sanplacido.infinityfree.me/pedidocliente', 'Mis Pedidos — San Plácido', 'https://sanplacido.infinityfree.me/cliente/perfil', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-13 18:26:33'),
(1171, 'https://sanplacido.infinityfree.me/producto/crear', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 304, '2026-08-13 18:34:36'),
(1172, 'https://sanplacido.infinityfree.me/producto/crear?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-13 18:41:54'),
(1173, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 18, '2026-08-13 18:41:57'),
(1174, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 126, '2026-08-13 18:42:15'),
(1175, 'https://sanplacido.infinityfree.me/producto/crear', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-13 18:44:21'),
(1176, 'https://sanplacido.infinityfree.me/producto/crear?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 43, '2026-08-13 18:44:30'),
(1177, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:48:35'),
(1178, 'https://sanplacido.infinityfree.me/producto/editar/5', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:48:49'),
(1179, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/editar/5', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:48:56'),
(1180, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:49:01'),
(1181, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:49:08'),
(1182, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:49:35'),
(1183, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:50:12'),
(1184, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:50:16'),
(1185, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:50:23'),
(1186, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 26, '2026-08-13 18:52:02'),
(1187, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 18:52:17'),
(1188, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-13 18:52:25'),
(1189, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-13 18:54:23'),
(1190, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11437, '2026-08-13 18:54:28'),
(1191, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 19:30:45'),
(1192, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 19:34:31'),
(1193, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 19:34:42'),
(1194, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 19:34:48'),
(1195, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 374, '2026-08-13 19:38:29'),
(1196, 'https://sanplacido.infinityfree.me/checkout/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 19:45:15'),
(1197, 'https://sanplacido.infinityfree.me/checkout/metodo', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/entrega', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4215, '2026-08-13 19:49:34'),
(1198, 'https://sanplacido.infinityfree.me/checkout/index', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/metodo', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-13 21:01:46'),
(1199, 'https://sanplacido.infinityfree.me/checkout/rechazado', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/index', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 27, '2026-08-13 21:03:17'),
(1200, 'https://sanplacido.infinityfree.me/checkout', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/rechazado', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:04:26'),
(1201, 'https://sanplacido.infinityfree.me/checkout/index', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/metodo', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:04:34'),
(1202, 'https://sanplacido.infinityfree.me/checkout/index', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/metodo', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:04:56'),
(1203, 'https://sanplacido.infinityfree.me/carrito', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/metodo', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:12:54'),
(1204, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/carrito', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:13:04'),
(1205, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:13:11'),
(1206, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-13 21:13:14'),
(1207, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos?i=1', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-13 21:44:59'),
(1208, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-13 21:47:03'),
(1209, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-13 21:47:05'),
(1210, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-13 21:47:12'),
(1211, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 89, '2026-08-13 21:47:31');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1212, 'https://sanplacido.infinityfree.me/cliente/perfil?i=1', 'Mi Perfil — San Plácido', 'https://sanplacido.infinityfree.me/cliente/perfil', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-13 23:20:14'),
(1213, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/cliente/perfil?i=1', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-13 23:20:19'),
(1214, 'https://sanplacido.infinityfree.me/checkout/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-13 23:20:28'),
(1215, 'https://sanplacido.infinityfree.me/checkout/metodo', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/entrega', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-13 23:20:32'),
(1216, 'https://sanplacido.infinityfree.me/checkout/index', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/metodo', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 31, '2026-08-13 23:20:42'),
(1217, 'https://sanplacido.infinityfree.me/checkout/aprobado/1327873852', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/index', 10, 11, 'c0833fd68ff1f16de613627795ff384b', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1718, '2026-08-13 23:21:14'),
(1218, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/aprobado/1327873852', NULL, NULL, 'db59f956be2d1b0d22a2f755a2424709', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-13 23:49:53'),
(1219, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'db59f956be2d1b0d22a2f755a2424709', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-13 23:52:34'),
(1220, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, 'db59f956be2d1b0d22a2f755a2424709', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-13 23:52:38'),
(1221, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, 'db59f956be2d1b0d22a2f755a2424709', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-13 23:52:47'),
(1222, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', NULL, NULL, '221268e540cb470a292832dc7f7f34fc', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-13 23:52:55'),
(1223, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/login?registro=exitoso', 12, 13, '221268e540cb470a292832dc7f7f34fc', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1283, '2026-08-13 23:55:47'),
(1224, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', 12, 13, '221268e540cb470a292832dc7f7f34fc', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-14 00:17:16'),
(1225, 'https://sanplacido.infinityfree.me/catalogo?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 12, 13, '221268e540cb470a292832dc7f7f34fc', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 198, '2026-08-14 00:17:34'),
(1226, 'https://sanplacido.infinityfree.me/catalogo?i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo?i=1', 12, 13, '221268e540cb470a292832dc7f7f34fc', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3420, '2026-08-14 11:45:23'),
(1227, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo?i=2', NULL, NULL, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-14 12:42:24'),
(1228, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-14 12:42:34'),
(1229, 'https://sanplacido.infinityfree.me/producto/crear', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas?dias=90', 4, 4, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 14, '2026-08-14 12:43:56'),
(1230, 'https://sanplacido.infinityfree.me/stock/maderas', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear', 4, 4, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 17822, '2026-08-14 12:44:09'),
(1231, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-14 13:08:06'),
(1232, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-14 13:08:11'),
(1233, 'https://sanplacido.infinityfree.me/stock/maderas', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 13, '2026-08-14 13:08:17'),
(1234, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 445, '2026-08-14 13:08:31'),
(1235, 'https://sanplacido.infinityfree.me/', 'Core Framework', NULL, 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 15, '2026-08-14 13:09:35'),
(1236, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 62, '2026-08-14 13:15:58'),
(1237, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11, '2026-08-14 13:17:08'),
(1238, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 21, '2026-08-14 13:17:20'),
(1239, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 40, '2026-08-14 13:23:59'),
(1240, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-14 13:24:40'),
(1241, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-14 13:25:49'),
(1242, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-14 13:25:51'),
(1243, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-14 13:25:54'),
(1244, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 86, '2026-08-14 13:25:57'),
(1245, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 332, '2026-08-14 13:27:27'),
(1246, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-14 13:36:11'),
(1247, 'https://sanplacido.infinityfree.me/stock?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-14 13:53:30'),
(1248, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-14 13:53:34'),
(1249, 'https://sanplacido.infinityfree.me/stock?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-14 13:53:43'),
(1250, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 267, '2026-08-14 13:53:46'),
(1251, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-14 14:05:04'),
(1252, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 170, '2026-08-14 14:05:11'),
(1253, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/generarDiagnostico', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-14 14:08:05'),
(1254, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 19, '2026-08-14 14:08:11'),
(1255, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 269, '2026-08-14 14:08:30'),
(1256, 'https://sanplacido.infinityfree.me/stock/verDiagnostico/6', 'Diagnóstico #6', 'https://sanplacido.infinityfree.me/stock?i=1', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 10, '2026-08-14 14:16:40'),
(1257, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock/verDiagnostico/6', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 623, '2026-08-14 14:16:50'),
(1258, 'https://sanplacido.infinityfree.me/stock/verDiagnostico/6', 'Diagnóstico #6', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 78, '2026-08-14 14:16:57'),
(1259, 'https://sanplacido.infinityfree.me/stock/insumos', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11412, '2026-08-14 14:18:18'),
(1260, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, '36fa87ce28c887a1c9e926abd6628d8d', 'mobile', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 19, '2026-08-14 14:36:36'),
(1261, 'https://sanplacido.infinityfree.me/infocliente/nosotros', 'Quiénes Somos – San Plácido', 'https://sanplacido.infinityfree.me/?i=1', NULL, NULL, '36fa87ce28c887a1c9e926abd6628d8d', 'mobile', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 4, '2026-08-14 14:36:55'),
(1262, 'https://sanplacido.infinityfree.me/stock/insumos', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-14 17:28:31'),
(1263, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/insumos', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-14 17:28:41'),
(1264, 'https://sanplacido.infinityfree.me/stock/verDiagnostico/7', 'Diagnóstico #7', 'https://sanplacido.infinityfree.me/stock', 4, 4, 'fec91100e9885efb7a09c483931ccff5', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 450, '2026-08-14 17:28:46'),
(1265, 'https://sanplacido.infinityfree.me/stock/maderas?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas', 4, 4, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1831, '2026-08-14 18:42:05'),
(1266, 'https://sanplacido.infinityfree.me/stock/maderas?i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas?i=1', 4, 4, 'c66151cc0129b3f1598f616a23641500', 'desktop', 'Opera', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-15 10:18:00'),
(1267, 'https://sanplacido.infinityfree.me/infocliente/nosotros?i=1', 'Quiénes Somos – San Plácido', 'https://sanplacido.infinityfree.me/infocliente/nosotros', NULL, NULL, 'b1eef1084f7132c8a1288848dcd236a0', 'mobile', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 9, '2026-08-15 21:22:13'),
(1268, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-16 13:14:00'),
(1269, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-16 13:14:13'),
(1270, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-16 13:14:18'),
(1271, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/estadisticas', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11, '2026-08-16 13:14:24'),
(1272, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-16 13:14:36'),
(1273, 'https://sanplacido.infinityfree.me/stock/verDiagnostico/8', 'Diagnóstico #8', 'https://sanplacido.infinityfree.me/stock', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 14, '2026-08-16 13:14:42'),
(1274, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock/verDiagnostico/8', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 18, '2026-08-16 13:14:56'),
(1275, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 152, '2026-08-16 13:15:15'),
(1276, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin?i=1', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 48, '2026-08-16 13:17:47'),
(1277, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1126, '2026-08-16 16:31:02'),
(1278, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-16 16:49:49'),
(1279, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/?i=1', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-16 16:49:51'),
(1280, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1141, '2026-08-16 16:49:59');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1281, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 180, '2026-08-16 17:09:01'),
(1282, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 51, '2026-08-16 17:12:02'),
(1283, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 601, '2026-08-16 17:12:55'),
(1284, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 49, '2026-08-16 17:24:20'),
(1285, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 13, '2026-08-16 17:25:56'),
(1286, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 80, '2026-08-16 17:26:30'),
(1287, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 21, '2026-08-16 17:27:52'),
(1288, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1759, '2026-08-16 17:28:14'),
(1289, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 38, '2026-08-16 17:57:33'),
(1290, 'https://sanplacido.infinityfree.me/stock/verDiagnostico/9', 'Diagnóstico #9', 'https://sanplacido.infinityfree.me/stock', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11, '2026-08-16 17:58:11'),
(1291, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock/verDiagnostico/9', 4, 4, '62eef118991bb6cbd46a7dba406eeab4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 704, '2026-08-16 17:58:23'),
(1292, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'fb52b2fce0638c1ce777b54c73a6d736', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 15:57:45'),
(1293, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'fb52b2fce0638c1ce777b54c73a6d736', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 15:57:59'),
(1294, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, 'fb52b2fce0638c1ce777b54c73a6d736', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 183, '2026-08-18 15:58:03'),
(1295, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, 'fb52b2fce0638c1ce777b54c73a6d736', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 204, '2026-08-18 16:01:06'),
(1296, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, 'fb52b2fce0638c1ce777b54c73a6d736', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 16, '2026-08-18 16:04:30'),
(1297, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', NULL, NULL, 'ae312f4e283f631e82d9b5e58824ff35', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:04:48'),
(1298, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 14, 15, 'ae312f4e283f631e82d9b5e58824ff35', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-18 16:04:55'),
(1299, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', NULL, NULL, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:05:08'),
(1300, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:05:18'),
(1301, 'https://sanplacido.infinityfree.me/', 'Core Framework', NULL, 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-18 16:06:17'),
(1302, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:06:28'),
(1303, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:06:30'),
(1304, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 13, '2026-08-18 16:06:33'),
(1305, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:06:46'),
(1306, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'dce53716223165fe636857487b558150', 'desktop', 'Chrome', '1760ab931d63509c5aabca22172a5954982eafa51f0ecf43bac93bb8c5d34e8e', NULL, '2026-08-18 16:06:47'),
(1307, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/resenas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:06:53'),
(1308, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:06:58'),
(1309, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 10, '2026-08-18 16:07:03'),
(1310, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '188dfd39f791bee2293cbf513efdb4c106fdd1c07a4e689c0e9b8ace927e0cda', 10, '2026-08-18 16:07:03'),
(1311, 'https://sanplacido.infinityfree.me/stock/maderas', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:07:13'),
(1312, 'https://sanplacido.infinityfree.me/stock/insumos', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 10, '2026-08-18 16:07:17'),
(1313, 'https://sanplacido.infinityfree.me/stock/maderas', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/insumos', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:07:28'),
(1314, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/maderas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:07:30'),
(1315, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-18 16:07:37'),
(1316, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-18 16:07:45'),
(1317, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-18 16:07:58'),
(1318, 'https://sanplacido.infinityfree.me/infocliente/nosotros', 'Quiénes Somos – San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:08:04'),
(1319, 'https://sanplacido.infinityfree.me/infocliente/ubicacion', 'Dónde Estamos – San Plácido', 'https://sanplacido.infinityfree.me/infocliente/nosotros', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 14, '2026-08-18 16:08:08'),
(1320, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/infocliente/ubicacion', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-18 16:08:23'),
(1321, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 22, '2026-08-18 16:08:32'),
(1322, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 55, '2026-08-18 16:08:55'),
(1323, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 46, '2026-08-18 16:08:57'),
(1324, 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=1', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:09:50'),
(1325, 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=3', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 14, '2026-08-18 16:09:53'),
(1326, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 2, '2026-08-18 16:09:58'),
(1327, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=3', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-18 16:10:09'),
(1328, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 11, '2026-08-18 16:10:10'),
(1329, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:10:14'),
(1330, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:10:19'),
(1331, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/ventas', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 0, '2026-08-18 16:10:20'),
(1332, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 16:10:22'),
(1333, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 16:10:24'),
(1334, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 907, '2026-08-18 16:10:26'),
(1335, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/resenas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:32'),
(1336, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:33'),
(1337, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:34'),
(1338, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:34'),
(1339, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 37, '2026-08-18 16:10:35'),
(1340, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:37'),
(1341, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:38'),
(1342, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 4, '2026-08-18 16:10:39'),
(1343, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:43'),
(1344, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-18 16:10:43'),
(1345, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 54, '2026-08-18 16:10:44'),
(1346, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:11:15'),
(1347, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 110, '2026-08-18 16:11:38'),
(1348, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 141, '2026-08-18 16:13:29'),
(1349, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:14:46'),
(1350, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:14:50');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1351, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:14:56'),
(1352, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:15:02'),
(1353, 'https://sanplacido.infinityfree.me/entrega?estado=4', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:15:04'),
(1354, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:15:09'),
(1355, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:15:15'),
(1356, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:15:20'),
(1357, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 23, '2026-08-18 16:15:26'),
(1358, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:15:49'),
(1359, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:15:50'),
(1360, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-18 16:15:53'),
(1361, 'https://sanplacido.infinityfree.me/entrega?buscar=mesa', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-18 16:16:00'),
(1362, 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=mesa', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 21, '2026-08-18 16:16:09'),
(1363, 'https://sanplacido.infinityfree.me/entrega?estado=1&buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:16:30'),
(1364, 'https://sanplacido.infinityfree.me/entrega?estado=2&buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1&buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:16:32'),
(1365, 'https://sanplacido.infinityfree.me/entrega?estado=3&buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2&buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:16:34'),
(1366, 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3&buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:16:36'),
(1367, 'https://sanplacido.infinityfree.me/entrega?estado=5&buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:16:37'),
(1368, 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5&buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 21, '2026-08-18 16:16:39'),
(1369, 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:17:00'),
(1370, 'https://sanplacido.infinityfree.me/entrega?buscar=', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=sillon', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-18 16:17:04'),
(1371, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-18 16:17:12'),
(1372, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-18 16:17:23'),
(1373, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-18 16:17:31'),
(1374, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:17:34'),
(1375, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-18 16:17:37'),
(1376, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-18 16:17:45'),
(1377, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-18 16:17:55'),
(1378, 'https://sanplacido.infinityfree.me/pedido?estado=Entregado', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-18 16:17:57'),
(1379, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido?estado=Entregado', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 129, '2026-08-18 16:18:06'),
(1380, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'd4551b00d44baddb323a865e9682b585', 'mobile', 'Safari', '8bd58c4cf4c0df99ee4dcae731febb418684041bd7990d7b187ef059575c105f', 275, '2026-08-18 16:18:27'),
(1381, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 7, '2026-08-18 16:18:55'),
(1382, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 257, '2026-08-18 16:20:16'),
(1383, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/resenas?desde=0003-02-01&hasta=2027-01-01', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 286, '2026-08-18 16:20:43'),
(1384, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 8, '2026-08-18 16:24:34'),
(1385, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 40, '2026-08-18 16:24:42'),
(1386, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:25:23'),
(1387, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:25:28'),
(1388, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/resenas?desde=0003-02-01&hasta=2027-01-01', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 176, '2026-08-18 16:25:30'),
(1389, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 234, '2026-08-18 16:25:32'),
(1390, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 30, '2026-08-18 16:25:33'),
(1391, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 436, '2026-08-18 16:25:36'),
(1392, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 5, '2026-08-18 16:26:04'),
(1393, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 16:26:10'),
(1394, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 16:26:12'),
(1395, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2096, '2026-08-18 16:26:14'),
(1396, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-18 16:29:28'),
(1397, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=2', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 19, '2026-08-18 16:29:32'),
(1398, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 30, '2026-08-18 16:29:53'),
(1399, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:30:26'),
(1400, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 11, '2026-08-18 16:30:32'),
(1401, 'https://sanplacido.infinityfree.me/pedido?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:30:44'),
(1402, 'https://sanplacido.infinityfree.me/pedido?estado=Pendiente', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:31:01'),
(1403, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido?estado=Pendiente', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:31:09'),
(1404, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:31:14'),
(1405, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:31:22'),
(1406, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 109, '2026-08-18 16:31:29'),
(1407, 'https://sanplacido.infinityfree.me/notificacion/listado', 'Notificaciones', 'https://sanplacido.infinityfree.me/estadisticas/ventas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 3, '2026-08-18 16:31:36'),
(1408, 'https://sanplacido.infinityfree.me/pedido?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 42, '2026-08-18 16:31:49'),
(1409, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 21, '2026-08-18 16:32:32'),
(1410, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 6, '2026-08-18 16:32:54'),
(1411, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 132, '2026-08-18 16:33:01'),
(1412, 'https://sanplacido.infinityfree.me/pedidocliente?i=1', 'Mis Pedidos — San Plácido', 'https://sanplacido.infinityfree.me/pedidocliente', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:33:19'),
(1413, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/ventas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 32, '2026-08-18 16:33:28'),
(1414, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/pedidocliente?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:33:30'),
(1415, 'https://sanplacido.infinityfree.me/checkout/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:33:33'),
(1416, 'https://sanplacido.infinityfree.me/checkout/metodo', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 36, '2026-08-18 16:33:42'),
(1417, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1387, '2026-08-18 16:34:00'),
(1418, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 5, '2026-08-18 16:34:08'),
(1419, 'https://sanplacido.infinityfree.me/checkout/index?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/index', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:34:19');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1420, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 7, '2026-08-18 16:35:13'),
(1421, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 8, '2026-08-18 16:35:21'),
(1422, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 15, '2026-08-18 16:35:30'),
(1423, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 3, '2026-08-18 16:35:45'),
(1424, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 110, '2026-08-18 16:35:48'),
(1425, 'https://sanplacido.infinityfree.me/checkout/aprobado/1327906546', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/index?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:36:50'),
(1426, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/checkout/aprobado/1327906546', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:37:12'),
(1427, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:37:13'),
(1428, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:37:18'),
(1429, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:37:23'),
(1430, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 15, '2026-08-18 16:37:26'),
(1431, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 71, '2026-08-18 16:37:39'),
(1432, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 88, '2026-08-18 16:38:51'),
(1433, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 2097, '2026-08-18 16:40:19'),
(1434, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:40:58'),
(1435, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:41:56'),
(1436, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:42:06'),
(1437, 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 'Historial de Diagnósticos', 'https://sanplacido.infinityfree.me/stock', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:42:19'),
(1438, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/stock/historialDiagnosticos', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:42:23'),
(1439, 'https://sanplacido.infinityfree.me/stock?tipo=1&buscar=', 'Core Framework', 'https://sanplacido.infinityfree.me/stock', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 16:42:38'),
(1440, 'https://sanplacido.infinityfree.me/stock?tipo=0&buscar=', 'Core Framework', 'https://sanplacido.infinityfree.me/stock?tipo=1&buscar=', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 718, '2026-08-18 16:42:43'),
(1441, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 12, '2026-08-18 16:58:09'),
(1442, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 4, '2026-08-18 16:58:23'),
(1443, 'https://sanplacido.infinityfree.me/?i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/?i=1', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 13, '2026-08-18 16:58:28'),
(1444, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 16, '2026-08-18 17:01:11'),
(1445, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 3, '2026-08-18 17:01:28'),
(1446, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 17:01:32'),
(1447, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 5, '2026-08-18 17:01:34'),
(1448, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 3, '2026-08-18 17:01:40'),
(1449, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 70, '2026-08-18 17:01:42'),
(1450, 'https://sanplacido.infinityfree.me/catalogo', 'Core Framework', 'https://sanplacido.infinityfree.me/?i=2', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 17:01:54'),
(1451, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 17:01:57'),
(1452, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 468, '2026-08-18 17:02:00'),
(1453, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:02:54'),
(1454, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 234, '2026-08-18 17:02:55'),
(1455, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 219, '2026-08-18 17:06:50'),
(1456, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 181, '2026-08-18 17:10:30'),
(1457, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:13:30'),
(1458, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:13:32'),
(1459, 'https://sanplacido.infinityfree.me/entrega?estado=4', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:13:33'),
(1460, 'https://sanplacido.infinityfree.me/entrega?estado=5', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 3, '2026-08-18 17:13:35'),
(1461, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 190, '2026-08-18 17:13:39'),
(1462, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 628, '2026-08-18 17:15:03'),
(1463, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 415, '2026-08-18 17:15:17'),
(1464, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 17:16:49'),
(1465, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:16:51'),
(1466, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 4, '2026-08-18 17:16:53'),
(1467, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 7, '2026-08-18 17:16:57'),
(1468, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 4, '2026-08-18 17:17:05'),
(1469, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 3, '2026-08-18 17:17:09'),
(1470, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:17:12'),
(1471, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:17:15'),
(1472, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 243, '2026-08-18 17:17:16'),
(1473, 'https://sanplacido.infinityfree.me/entrega?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 36, '2026-08-18 17:21:20'),
(1474, 'https://sanplacido.infinityfree.me/entrega?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 17, '2026-08-18 17:21:56'),
(1475, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 4, '2026-08-18 17:22:12'),
(1476, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 19, '2026-08-18 17:22:13'),
(1477, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1656, '2026-08-18 17:22:17'),
(1478, 'https://sanplacido.infinityfree.me/entrega?estado=4', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 30, '2026-08-18 17:22:32'),
(1479, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 6, '2026-08-18 17:23:02'),
(1480, 'https://sanplacido.infinityfree.me/entrega?estado=4', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 23, '2026-08-18 17:23:09'),
(1481, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 5, '2026-08-18 17:23:33'),
(1482, 'https://sanplacido.infinityfree.me/entrega?estado=4', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 9, '2026-08-18 17:23:38'),
(1483, 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=tomas', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 7, '2026-08-18 17:23:47'),
(1484, 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=tomas', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=tomas', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1, '2026-08-18 17:23:54'),
(1485, 'https://sanplacido.infinityfree.me/entrega?estado=5&buscar=tomas', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=4&buscar=tomas', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 4, '2026-08-18 17:23:55'),
(1486, 'https://sanplacido.infinityfree.me/entrega?estado=5', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 13, '2026-08-18 17:24:00'),
(1487, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 4, '2026-08-18 17:24:13'),
(1488, 'https://sanplacido.infinityfree.me/entrega?buscar=gino', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 22, '2026-08-18 17:24:18');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1489, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?buscar=gino', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 8, '2026-08-18 17:24:40'),
(1490, 'https://sanplacido.infinityfree.me/entrega?estado=5', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 233, '2026-08-18 17:24:47'),
(1491, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 12, '2026-08-18 17:28:41'),
(1492, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 2, '2026-08-18 17:28:54'),
(1493, 'https://sanplacido.infinityfree.me/entrega?estado=5', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 37, '2026-08-18 17:28:56'),
(1494, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 17:29:33'),
(1495, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 208, '2026-08-18 17:29:33'),
(1496, 'https://sanplacido.infinityfree.me/', 'Core Framework', 'https://sanplacido.infinityfree.me/catalogo', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1034, '2026-08-18 17:29:50'),
(1497, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 5, '2026-08-18 17:33:03'),
(1498, 'https://sanplacido.infinityfree.me/entrega?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 8, '2026-08-18 17:33:08'),
(1499, 'https://sanplacido.infinityfree.me/entrega?estado=5', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 74, '2026-08-18 17:33:16'),
(1500, 'https://sanplacido.infinityfree.me/entrega', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega?estado=5', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 1135, '2026-08-18 17:34:32'),
(1501, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1, '2026-08-18 17:49:56'),
(1502, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1, '2026-08-18 17:50:03'),
(1503, 'https://sanplacido.infinityfree.me/venta?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=2', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1, '2026-08-18 17:50:06'),
(1504, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1147, '2026-08-18 17:50:09'),
(1505, 'https://sanplacido.infinityfree.me/admin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', NULL, '2026-08-18 17:53:16'),
(1506, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/admin', 4, 4, '706ccf2fe0ffb78b9c0dffe004f9b5d4', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 814, '2026-08-18 17:53:18'),
(1507, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/entrega', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 588, '2026-08-18 17:53:27'),
(1508, 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=1', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 42, '2026-08-18 18:03:15'),
(1509, 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=2', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=1', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 17, '2026-08-18 18:03:58'),
(1510, 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=3', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=2', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 16, '2026-08-18 18:04:16'),
(1511, 'https://sanplacido.infinityfree.me/usuarioadmin?bajas', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?tipo=3', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 32, '2026-08-18 18:04:32'),
(1512, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?bajas', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 10, '2026-08-18 18:05:05'),
(1513, 'https://sanplacido.infinityfree.me/usuarioadmin?buscar=cordoba', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', 8, '2026-08-18 18:05:15'),
(1514, 'https://sanplacido.infinityfree.me/usuarioadmin?buscar=ruffino', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?buscar=cordoba', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '4bd9a62dfa6f4f1140b1b2fe5e7194caa826e5b38645fdcb2f4b2650de9b3d51', NULL, '2026-08-18 18:05:24'),
(1515, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 13, '2026-08-18 18:09:18'),
(1516, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 12, '2026-08-18 18:09:33'),
(1517, 'https://sanplacido.infinityfree.me/venta?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=2', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 109, '2026-08-18 18:09:47'),
(1518, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?buscar=ruffino', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 100, '2026-08-18 18:11:03'),
(1519, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 115, '2026-08-18 18:11:37'),
(1520, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 412, '2026-08-18 18:12:45'),
(1521, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 4, '2026-08-18 18:13:35'),
(1522, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 3, '2026-08-18 18:13:41'),
(1523, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1, '2026-08-18 18:13:45'),
(1524, 'https://sanplacido.infinityfree.me/venta?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=2', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1, '2026-08-18 18:13:47'),
(1525, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 3892, '2026-08-18 18:13:49'),
(1526, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/ventas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 27, '2026-08-18 18:15:17'),
(1527, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 156, '2026-08-18 18:19:38'),
(1528, 'https://sanplacido.infinityfree.me/usuarioadmin?bajas', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 8, '2026-08-18 18:22:15'),
(1529, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 10, '2026-08-18 18:22:16'),
(1530, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin?bajas', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 3, '2026-08-18 18:22:24'),
(1531, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 1, '2026-08-18 18:22:28'),
(1532, 'https://sanplacido.infinityfree.me/usuarioadmin?bajas', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 14, 15, '00bd52f22f66a57569de44462b41a412', 'desktop', 'Chrome', '07cbc671591a1482b4e5929998c8b11ae68e0fc03f406d4a67a418509daa80a5', 949, '2026-08-18 18:22:30'),
(1533, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/resenas', 13, 14, 'a71c7ae08b8e741f6b301226bd94474d', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 2, '2026-08-18 18:29:48'),
(1534, 'https://sanplacido.infinityfree.me/?i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/?i=1', NULL, NULL, '238ee52c2096ba2f1bade01cccfebe75', 'mobile', 'Safari', '323f993fa2ebff3b862768ccf0cccb46f512f19dbd66ef8b115e83d5a82515f2', 0, '2026-08-18 21:38:30'),
(1535, 'https://sanplacido.infinityfree.me/venta?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 103, '2026-08-19 11:58:06'),
(1536, 'https://sanplacido.infinityfree.me/venta?buscar=', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?i=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1721, '2026-08-19 11:59:50'),
(1537, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?buscar=', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 11, '2026-08-19 12:28:34'),
(1538, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 9, '2026-08-19 12:28:51'),
(1539, 'https://sanplacido.infinityfree.me/venta?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=2', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 239, '2026-08-19 12:29:00'),
(1540, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 8406, '2026-08-19 12:33:01'),
(1541, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 332, '2026-08-19 14:53:11'),
(1542, 'https://sanplacido.infinityfree.me/venta?buscar=', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 2, '2026-08-19 14:58:46'),
(1543, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 178, '2026-08-19 14:58:56'),
(1544, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 1616, '2026-08-19 15:01:55'),
(1545, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 359, '2026-08-19 15:28:54'),
(1546, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 25, '2026-08-19 15:34:55'),
(1547, 'https://sanplacido.infinityfree.me/venta?estado=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, 'c7e4d8b152b83eb00ccfe98a974ee86e', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 7414, '2026-08-19 15:35:22'),
(1548, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 13, 14, '16d55db1b42ca21fbacc14294296e13c', 'desktop', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 4, '2026-08-19 16:39:44'),
(1549, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 15, 16, '21284737ef618ea12c4539ebd848e67f', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 3, '2026-08-19 17:38:59'),
(1550, 'https://sanplacido.infinityfree.me/venta?estado=3', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 15, 16, '21284737ef618ea12c4539ebd848e67f', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 195, '2026-08-19 17:39:03'),
(1551, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=3', 15, 16, '21284737ef618ea12c4539ebd848e67f', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 865, '2026-08-19 17:42:20'),
(1552, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 15, 16, '21284737ef618ea12c4539ebd848e67f', 'desktop', 'Chrome', '406912d6d5a5269a1e39ff9ffc5a4dfd194689a3eef8f471900a78ea77345854', 15, '2026-08-19 17:56:48'),
(1553, 'https://sanplacido.infinityfree.me/infocliente/nosotros?i=2', 'Quiénes Somos – San Plácido', 'https://sanplacido.infinityfree.me/infocliente/nosotros?i=1', NULL, NULL, '2c1d8eb4030fed9f9fd48b652dc8018d', 'mobile', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 1, '2026-08-20 00:43:37'),
(1554, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, '2c1d8eb4030fed9f9fd48b652dc8018d', 'mobile', 'Chrome', '76a5f1d604631f44146240ce420c552005015580df410e250f3111efd5eaac9d', 18, '2026-08-20 00:43:39'),
(1555, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, '18f702d4263416fdacfbfe0bb6eea6c6', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 9, '2026-08-20 17:46:46'),
(1556, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2145, '2026-08-24 14:22:30'),
(1557, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-24 14:58:15');
INSERT INTO `VistasDePagina` (`Id`, `UrlVisitada`, `Titulo`, `Referidor`, `IdUsuario`, `IdCliente`, `SesionId`, `DispositivoTipo`, `Navegador`, `IpHash`, `TiempoEnPagina`, `FechaRegistro`) VALUES
(1558, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 6, '2026-08-24 14:58:26'),
(1559, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 12, '2026-08-24 14:58:33'),
(1560, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-24 14:58:45'),
(1561, 'https://sanplacido.infinityfree.me/venta?estado=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 57, '2026-08-24 14:58:53'),
(1562, 'https://sanplacido.infinityfree.me/venta?estado=1&i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1', 4, 4, 'b3277463f2456f65a997b198569d334e', 'mobile', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 14, '2026-08-24 14:59:50'),
(1563, 'https://sanplacido.infinityfree.me/venta?estado=1&i=2', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1&i=1', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 2, '2026-08-24 15:08:43'),
(1564, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/venta?estado=1&i=2', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 7, '2026-08-24 15:08:46'),
(1565, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3, '2026-08-24 15:08:53'),
(1566, 'https://sanplacido.infinityfree.me/pedido?estado=Pendiente', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 23, '2026-08-24 15:08:56'),
(1567, 'https://sanplacido.infinityfree.me/pedido', 'Core Framework', 'https://sanplacido.infinityfree.me/pedido?estado=Pendiente', 4, 4, 'b3277463f2456f65a997b198569d334e', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-24 15:09:19'),
(1568, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 12, '2026-08-26 15:54:02'),
(1569, 'https://sanplacido.infinityfree.me/venta', 'Core Framework', 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 1194, '2026-08-26 15:54:14'),
(1570, 'https://sanplacido.infinityfree.me/?i=1', 'Core Framework', 'https://sanplacido.infinityfree.me/', NULL, NULL, 'c65d284be79f833466e1b8e91718efcf', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 1, '2026-08-26 16:09:56'),
(1571, 'https://sanplacido.infinityfree.me/admin/LobbyAdmin', 'Panel Admin — San Plácido', 'https://sanplacido.infinityfree.me/login', 4, 4, 'c65d284be79f833466e1b8e91718efcf', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 34, '2026-08-26 16:10:08'),
(1572, 'https://sanplacido.infinityfree.me/usuarioadmin', 'Core Framework', 'https://sanplacido.infinityfree.me/estadisticas/stock', 4, 4, 'c65d284be79f833466e1b8e91718efcf', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 93, '2026-08-26 16:11:20'),
(1573, 'https://sanplacido.infinityfree.me/stock', 'Core Framework', 'https://sanplacido.infinityfree.me/usuarioadmin', 4, 4, 'c65d284be79f833466e1b8e91718efcf', 'desktop', 'Chrome', '694336b597515969b88612cad9ad326876605a0998adfa79e10e9b2505223e5e', 3215, '2026-08-26 16:12:54'),
(1574, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/venta', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 2, '2026-08-26 16:14:09'),
(1575, 'https://sanplacido.infinityfree.me/producto/crear', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 3, '2026-08-26 16:14:11'),
(1576, 'https://sanplacido.infinityfree.me/producto', 'Core Framework', 'https://sanplacido.infinityfree.me/producto/crear', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 3, '2026-08-26 16:14:15'),
(1577, 'https://sanplacido.infinityfree.me/producto/crear', 'Core Framework', 'https://sanplacido.infinityfree.me/producto', 15, 16, '66ecedd2af4b37711dfd33b7adee9360', 'desktop', 'Chrome', 'c3a54aa803217157abebe5b4d8bb9de8027808e89c60f9cb1581537afb08a886', 1640, '2026-08-26 16:14:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bak_insumos`
--

CREATE TABLE `_bak_insumos` (
  `Id` int(11) NOT NULL DEFAULT 0,
  `PrecioUniatrio` decimal(10,2) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Descripcion` varchar(20) DEFAULT NULL,
  `IdTipodeMaterial` int(11) DEFAULT NULL,
  `IdTipodeCorte` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bak_maderas`
--

CREATE TABLE `_bak_maderas` (
  `Id` int(11) NOT NULL DEFAULT 0,
  `PrecioUnitario` decimal(10,2) DEFAULT NULL,
  `CantidadStock` int(11) DEFAULT NULL,
  `Alto` decimal(10,2) DEFAULT NULL,
  `Largo` decimal(10,2) DEFAULT NULL,
  `Ancho` decimal(10,2) DEFAULT NULL,
  `IdTipodeMadera` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `_bak_stock`
--

CREATE TABLE `_bak_stock` (
  `Id` int(11) NOT NULL DEFAULT 0,
  `Fecha` datetime DEFAULT NULL,
  `CantitdadTotal` int(11) DEFAULT NULL,
  `MontoTotal` decimal(10,2) DEFAULT NULL,
  `IdMaderas` int(11) DEFAULT NULL,
  `IdInsumosdeCarpinteria` int(11) DEFAULT NULL,
  `FechaBorrado` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AutorizaciondePago`
--
ALTER TABLE `AutorizaciondePago`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Busquedas`
--
ALTER TABLE `Busquedas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_busquedas_termino` (`TerminoBuscado`(100)),
  ADD KEY `idx_busquedas_fecha` (`FechaRegistro`),
  ADD KEY `busquedas_ibfk_1` (`IdUsuario`),
  ADD KEY `busquedas_ibfk_2` (`IdCliente`);

--
-- Indices de la tabla `Caja`
--
ALTER TABLE `Caja`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdEmisor` (`IdEmisor`);

--
-- Indices de la tabla `Carrito`
--
ALTER TABLE `Carrito`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCliente` (`IdCliente`);

--
-- Indices de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdLocalidad` (`IdLocalidad`),
  ADD KEY `IdDomicilio` (`IdDomicilio`),
  ADD KEY `IdTipodeDni` (`IdTipodeDni`),
  ADD KEY `IdTipodomicilio` (`IdTipodomicilio`);

--
-- Indices de la tabla `DatosEmpresa`
--
ALTER TABLE `DatosEmpresa`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdRazonSocial` (`IdRazonSocial`),
  ADD KEY `IdLocalidad` (`IdLocalidad`);

--
-- Indices de la tabla `DetallesDeBalance`
--
ALTER TABLE `DetallesDeBalance`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProducto` (`IdProducto`),
  ADD KEY `IdUsuario` (`IdUsuario`),
  ADD KEY `IdCaja` (`IdCaja`),
  ADD KEY `IdEstadoBancarios` (`IdEstadoBancarios`),
  ADD KEY `IdEmisor` (`IdEmisor`),
  ADD KEY `detallesdebalance_ibfk_3` (`IdStock`);

--
-- Indices de la tabla `DetallesProveedor`
--
ALTER TABLE `DetallesProveedor`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdMaderas` (`IdMaderas`),
  ADD KEY `IdInsumosdeCarpinteria` (`IdInsumosdeCarpinteria`);

--
-- Indices de la tabla `DetallesVenta`
--
ALTER TABLE `DetallesVenta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeProducto` (`IdTipodeProducto`),
  ADD KEY `IdTipodeMadera` (`IdTipodeMadera`),
  ADD KEY `IdTipodeAcabado` (`IdTipodeAcabado`),
  ADD KEY `fk_detallesventa_venta` (`IdVenta`);

--
-- Indices de la tabla `Diseño`
--
ALTER TABLE `Diseño`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeDiseño` (`IdTipodeDiseño`),
  ADD KEY `IdUsuario` (`IdUsuario`),
  ADD KEY `IdEmisor` (`IdEmisor`);

--
-- Indices de la tabla `Domicilio`
--
ALTER TABLE `Domicilio`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipoDomicilio` (`IdTipoDomicilio`);

--
-- Indices de la tabla `Emisor`
--
ALTER TABLE `Emisor`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- Indices de la tabla `EntidadBancaria`
--
ALTER TABLE `EntidadBancaria`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Entrega`
--
ALTER TABLE `Entrega`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeEntrega` (`IdTipodeEntrega`),
  ADD KEY `IdEstadosdeEntrega` (`IdEstadosdeEntrega`),
  ADD KEY `IdUsuario` (`IdUsuario`),
  ADD KEY `IdVenta` (`IdVenta`);

--
-- Indices de la tabla `EstadoBancarios`
--
ALTER TABLE `EstadoBancarios`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdEmisor` (`IdEmisor`);

--
-- Indices de la tabla `EstadodePago`
--
ALTER TABLE `EstadodePago`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `EstadosdeEntrega`
--
ALTER TABLE `EstadosdeEntrega`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `EventosDeUsuario`
--
ALTER TABLE `EventosDeUsuario`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_eventos_tipo` (`TipoEvento`),
  ADD KEY `idx_eventos_usuario` (`IdUsuario`),
  ADD KEY `idx_eventos_cliente` (`IdCliente`),
  ADD KEY `idx_eventos_fecha` (`FechaRegistro`),
  ADD KEY `idx_eventos_modulo` (`Modulo`);

--
-- Indices de la tabla `FacturaCliente`
--
ALTER TABLE `FacturaCliente`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdEmisor` (`IdEmisor`),
  ADD KEY `IdTipodePago` (`IdTipodePago`),
  ADD KEY `IdEstadodePago` (`IdEstadodePago`),
  ADD KEY `IdEntidadBancaria` (`IdEntidadBancaria`),
  ADD KEY `IdDatosEmpresa` (`IdDatosEmpresa`),
  ADD KEY `IdAutorizaciondePago` (`IdAutorizaciondePago`),
  ADD KEY `IdClientes` (`IdClientes`);

--
-- Indices de la tabla `insumosdecarpinteria`
--
ALTER TABLE `insumosdecarpinteria`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeMaterial` (`IdTipodeMaterial`),
  ADD KEY `IdTipodeCorte` (`IdTipodeCorte`);

--
-- Indices de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `maderas`
--
ALTER TABLE `maderas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeMadera` (`IdTipodeMadera`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_notif_usuario` (`IdUsuario`,`Leida`),
  ADD KEY `idx_notif_cliente` (`IdCliente`,`Leida`),
  ADD KEY `idx_notif_fecha` (`FechaCreacion`);

--
-- Indices de la tabla `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Pedido`
--
ALTER TABLE `Pedido`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdVenta` (`IdVenta`);

--
-- Indices de la tabla `PedidosCliente`
--
ALTER TABLE `PedidosCliente`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCLientes` (`IdCLientes`),
  ADD KEY `IdTipodePedido` (`IdTipodePedido`),
  ADD KEY `IdVenta` (`IdVenta`);

--
-- Indices de la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCategoria` (`IdCategoria`),
  ADD KEY `IdTipodeProducto` (`IdTipodeProducto`),
  ADD KEY `IdTipodeDiseño` (`IdTipodeDiseño`),
  ADD KEY `IdTipodeAcabado` (`IdTipodeAcabado`),
  ADD KEY `IdTipodeHerraje` (`IdTipodeHerraje`),
  ADD KEY `IdTipodeAlmacenamiento` (`IdTipodeAlmacenamiento`);

--
-- Indices de la tabla `ProductoCarrito`
--
ALTER TABLE `ProductoCarrito`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProducto` (`IdProducto`),
  ADD KEY `IdCarrito` (`IdCarrito`);

--
-- Indices de la tabla `ProductoImagenes`
--
ALTER TABLE `ProductoImagenes`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_producto_imagenes` (`IdProducto`);

--
-- Indices de la tabla `ProductoInsumos`
--
ALTER TABLE `ProductoInsumos`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProducto` (`IdProducto`),
  ADD KEY `IdInsumoCarpinteria` (`IdInsumoCarpinteria`);

--
-- Indices de la tabla `ProductoMaderas`
--
ALTER TABLE `ProductoMaderas`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProducto` (`IdProducto`),
  ADD KEY `IdMadera` (`IdMadera`);

--
-- Indices de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdRazonSocial` (`IdRazonSocial`),
  ADD KEY `IdLocalidad` (`IdLocalidad`);

--
-- Indices de la tabla `RazonSocial`
--
ALTER TABLE `RazonSocial`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Remito`
--
ALTER TABLE `Remito`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeEncargoRemito` (`IdTipodeEncargoRemito`),
  ADD KEY `IdDetallesProveedor` (`IdDetallesProveedor`),
  ADD KEY `IdDatosEmpresa` (`IdDatosEmpresa`),
  ADD KEY `IdClientes` (`IdClientes`),
  ADD KEY `IdEmisor` (`IdEmisor`),
  ADD KEY `IdProveedor` (`IdProveedor`);

--
-- Indices de la tabla `Resena`
--
ALTER TABLE `Resena`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_resena_prod_estado` (`IdProducto`,`Estado`),
  ADD KEY `idx_resena_cliente` (`IdCliente`);

--
-- Indices de la tabla `ResenaRespuesta`
--
ALTER TABLE `ResenaRespuesta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_rr_resena` (`IdResena`);

--
-- Indices de la tabla `ResumenDeVentas`
--
ALTER TABLE `ResumenDeVentas`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `uk_resumen_fecha` (`Fecha`),
  ADD KEY `idx_resumen_fecha` (`Fecha`);

--
-- Indices de la tabla `SoporteDeProduccion`
--
ALTER TABLE `SoporteDeProduccion`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeProducto` (`IdTipodeProducto`),
  ADD KEY `IdDiseño` (`IdDiseño`),
  ADD KEY `IdEmisor` (`IdEmisor`),
  ADD KEY `IdTipodeAcabado` (`IdTipodeAcabado`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_stock_material` (`IdMaterial`,`TipoMaterial`);

--
-- Indices de la tabla `StockDiagnostico`
--
ALTER TABLE `StockDiagnostico`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_sd_fecha` (`FechaGenerado`),
  ADD KEY `idx_sd_usuario` (`GeneradoPor`);

--
-- Indices de la tabla `StockHistorialPrecios`
--
ALTER TABLE `StockHistorialPrecios`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_shp_stock` (`IdStock`),
  ADD KEY `idx_shp_fecha` (`FechaRegistro`),
  ADD KEY `idx_shp_material` (`TipoMaterial`,`IdMaterial`);

--
-- Indices de la tabla `TipodeAcabado`
--
ALTER TABLE `TipodeAcabado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeAlmacenamiento`
--
ALTER TABLE `TipodeAlmacenamiento`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tipodecorte`
--
ALTER TABLE `tipodecorte`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeDiseño`
--
ALTER TABLE `TipodeDiseño`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeDni`
--
ALTER TABLE `TipodeDni`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeEncargoRemito`
--
ALTER TABLE `TipodeEncargoRemito`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeEntrega`
--
ALTER TABLE `TipodeEntrega`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeHerraje`
--
ALTER TABLE `TipodeHerraje`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tipodemadera`
--
ALTER TABLE `tipodemadera`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `tipodematerial`
--
ALTER TABLE `tipodematerial`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodePago`
--
ALTER TABLE `TipodePago`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodePedido`
--
ALTER TABLE `TipodePedido`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeProducto`
--
ALTER TABLE `TipodeProducto`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeRol`
--
ALTER TABLE `TipodeRol`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipodeUsuario`
--
ALTER TABLE `TipodeUsuario`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `TipoDomicilio`
--
ALTER TABLE `TipoDomicilio`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `UmbralFormatoMadera`
--
ALTER TABLE `UmbralFormatoMadera`
  ADD PRIMARY KEY (`Formato`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTipodeUsuario` (`IdTipodeUsuario`),
  ADD KEY `IdTipodeRol` (`IdTipodeRol`),
  ADD KEY `IdCliente` (`IdCliente`);

--
-- Indices de la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCarrito` (`IdCarrito`),
  ADD KEY `IdFacturaCliente` (`IdFacturaCliente`);

--
-- Indices de la tabla `VistasDePagina`
--
ALTER TABLE `VistasDePagina`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `idx_vistas_usuario` (`IdUsuario`),
  ADD KEY `idx_vistas_cliente` (`IdCliente`),
  ADD KEY `idx_vistas_fecha` (`FechaRegistro`),
  ADD KEY `idx_vistas_url` (`UrlVisitada`(191));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `AutorizaciondePago`
--
ALTER TABLE `AutorizaciondePago`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `Busquedas`
--
ALTER TABLE `Busquedas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Caja`
--
ALTER TABLE `Caja`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Carrito`
--
ALTER TABLE `Carrito`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `Categoria`
--
ALTER TABLE `Categoria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `DatosEmpresa`
--
ALTER TABLE `DatosEmpresa`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `DetallesDeBalance`
--
ALTER TABLE `DetallesDeBalance`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `DetallesProveedor`
--
ALTER TABLE `DetallesProveedor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `DetallesVenta`
--
ALTER TABLE `DetallesVenta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `Diseño`
--
ALTER TABLE `Diseño`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Domicilio`
--
ALTER TABLE `Domicilio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `Emisor`
--
ALTER TABLE `Emisor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `EntidadBancaria`
--
ALTER TABLE `EntidadBancaria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Entrega`
--
ALTER TABLE `Entrega`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `EstadoBancarios`
--
ALTER TABLE `EstadoBancarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `EstadodePago`
--
ALTER TABLE `EstadodePago`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `EstadosdeEntrega`
--
ALTER TABLE `EstadosdeEntrega`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `EventosDeUsuario`
--
ALTER TABLE `EventosDeUsuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `FacturaCliente`
--
ALTER TABLE `FacturaCliente`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `insumosdecarpinteria`
--
ALTER TABLE `insumosdecarpinteria`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `Localidad`
--
ALTER TABLE `Localidad`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `maderas`
--
ALTER TABLE `maderas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `Pais`
--
ALTER TABLE `Pais`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `Pedido`
--
ALTER TABLE `Pedido`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `PedidosCliente`
--
ALTER TABLE `PedidosCliente`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Producto`
--
ALTER TABLE `Producto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ProductoCarrito`
--
ALTER TABLE `ProductoCarrito`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `ProductoImagenes`
--
ALTER TABLE `ProductoImagenes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ProductoInsumos`
--
ALTER TABLE `ProductoInsumos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `ProductoMaderas`
--
ALTER TABLE `ProductoMaderas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `RazonSocial`
--
ALTER TABLE `RazonSocial`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `Remito`
--
ALTER TABLE `Remito`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Resena`
--
ALTER TABLE `Resena`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ResenaAnalisisIA`
--
ALTER TABLE `ResenaAnalisisIA`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ResenaHistorial`
--
ALTER TABLE `ResenaHistorial`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ResenaRespuesta`
--
ALTER TABLE `ResenaRespuesta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ResumenDeVentas`
--
ALTER TABLE `ResumenDeVentas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `SoporteDeProduccion`
--
ALTER TABLE `SoporteDeProduccion`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;

--
-- AUTO_INCREMENT de la tabla `StockDiagnostico`
--
ALTER TABLE `StockDiagnostico`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `StockHistorialPrecios`
--
ALTER TABLE `StockHistorialPrecios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TipodeAcabado`
--
ALTER TABLE `TipodeAcabado`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `TipodeAlmacenamiento`
--
ALTER TABLE `TipodeAlmacenamiento`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipodecorte`
--
ALTER TABLE `tipodecorte`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `TipodeDiseño`
--
ALTER TABLE `TipodeDiseño`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `TipodeDni`
--
ALTER TABLE `TipodeDni`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TipodeEncargoRemito`
--
ALTER TABLE `TipodeEncargoRemito`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TipodeEntrega`
--
ALTER TABLE `TipodeEntrega`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `TipodeHerraje`
--
ALTER TABLE `TipodeHerraje`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `tipodemadera`
--
ALTER TABLE `tipodemadera`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipodematerial`
--
ALTER TABLE `tipodematerial`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `TipodePago`
--
ALTER TABLE `TipodePago`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `TipodePedido`
--
ALTER TABLE `TipodePedido`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TipodeProducto`
--
ALTER TABLE `TipodeProducto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `TipodeRol`
--
ALTER TABLE `TipodeRol`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `TipodeUsuario`
--
ALTER TABLE `TipodeUsuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TipoDomicilio`
--
ALTER TABLE `TipoDomicilio`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `Venta`
--
ALTER TABLE `Venta`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `VistasDePagina`
--
ALTER TABLE `VistasDePagina`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1578;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Busquedas`
--
ALTER TABLE `Busquedas`
  ADD CONSTRAINT `Busquedas_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `Busquedas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `Caja`
--
ALTER TABLE `Caja`
  ADD CONSTRAINT `Caja_ibfk_1` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`);

--
-- Filtros para la tabla `Carrito`
--
ALTER TABLE `Carrito`
  ADD CONSTRAINT `Carrito_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`);

--
-- Filtros para la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD CONSTRAINT `Clientes_ibfk_1` FOREIGN KEY (`IdLocalidad`) REFERENCES `Localidad` (`Id`),
  ADD CONSTRAINT `Clientes_ibfk_2` FOREIGN KEY (`IdDomicilio`) REFERENCES `Domicilio` (`Id`),
  ADD CONSTRAINT `Clientes_ibfk_3` FOREIGN KEY (`IdTipodeDni`) REFERENCES `TipodeDni` (`Id`),
  ADD CONSTRAINT `Clientes_ibfk_4` FOREIGN KEY (`IdTipodomicilio`) REFERENCES `TipoDomicilio` (`Id`);

--
-- Filtros para la tabla `DatosEmpresa`
--
ALTER TABLE `DatosEmpresa`
  ADD CONSTRAINT `DatosEmpresa_ibfk_1` FOREIGN KEY (`IdRazonSocial`) REFERENCES `RazonSocial` (`Id`),
  ADD CONSTRAINT `DatosEmpresa_ibfk_2` FOREIGN KEY (`IdLocalidad`) REFERENCES `Localidad` (`Id`);

--
-- Filtros para la tabla `DetallesDeBalance`
--
ALTER TABLE `DetallesDeBalance`
  ADD CONSTRAINT `DetallesDeBalance_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`),
  ADD CONSTRAINT `DetallesDeBalance_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`),
  ADD CONSTRAINT `DetallesDeBalance_ibfk_3` FOREIGN KEY (`IdStock`) REFERENCES `stock` (`Id`),
  ADD CONSTRAINT `DetallesDeBalance_ibfk_4` FOREIGN KEY (`IdCaja`) REFERENCES `Caja` (`Id`),
  ADD CONSTRAINT `DetallesDeBalance_ibfk_5` FOREIGN KEY (`IdEstadoBancarios`) REFERENCES `EstadoBancarios` (`Id`),
  ADD CONSTRAINT `DetallesDeBalance_ibfk_6` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`);

--
-- Filtros para la tabla `DetallesProveedor`
--
ALTER TABLE `DetallesProveedor`
  ADD CONSTRAINT `DetallesProveedor_ibfk_1` FOREIGN KEY (`IdMaderas`) REFERENCES `maderas` (`Id`),
  ADD CONSTRAINT `DetallesProveedor_ibfk_2` FOREIGN KEY (`IdInsumosdeCarpinteria`) REFERENCES `insumosdecarpinteria` (`Id`);

--
-- Filtros para la tabla `DetallesVenta`
--
ALTER TABLE `DetallesVenta`
  ADD CONSTRAINT `DetallesVenta_ibfk_1` FOREIGN KEY (`IdTipodeProducto`) REFERENCES `TipodeProducto` (`Id`),
  ADD CONSTRAINT `DetallesVenta_ibfk_2` FOREIGN KEY (`IdTipodeMadera`) REFERENCES `tipodemadera` (`Id`),
  ADD CONSTRAINT `DetallesVenta_ibfk_3` FOREIGN KEY (`IdTipodeAcabado`) REFERENCES `TipodeAcabado` (`Id`),
  ADD CONSTRAINT `fk_detallesventa_venta` FOREIGN KEY (`IdVenta`) REFERENCES `Venta` (`Id`);

--
-- Filtros para la tabla `Diseño`
--
ALTER TABLE `Diseño`
  ADD CONSTRAINT `Diseño_ibfk_1` FOREIGN KEY (`IdTipodeDiseño`) REFERENCES `TipodeDiseño` (`Id`),
  ADD CONSTRAINT `Diseño_ibfk_2` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`),
  ADD CONSTRAINT `Diseño_ibfk_3` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`);

--
-- Filtros para la tabla `Domicilio`
--
ALTER TABLE `Domicilio`
  ADD CONSTRAINT `Domicilio_ibfk_1` FOREIGN KEY (`IdTipoDomicilio`) REFERENCES `TipoDomicilio` (`Id`);

--
-- Filtros para la tabla `Emisor`
--
ALTER TABLE `Emisor`
  ADD CONSTRAINT `Emisor_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`);

--
-- Filtros para la tabla `Entrega`
--
ALTER TABLE `Entrega`
  ADD CONSTRAINT `Entrega_ibfk_1` FOREIGN KEY (`IdTipodeEntrega`) REFERENCES `TipodeEntrega` (`Id`),
  ADD CONSTRAINT `Entrega_ibfk_2` FOREIGN KEY (`IdEstadosdeEntrega`) REFERENCES `EstadosdeEntrega` (`Id`),
  ADD CONSTRAINT `Entrega_ibfk_3` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`),
  ADD CONSTRAINT `Entrega_ibfk_4` FOREIGN KEY (`IdVenta`) REFERENCES `Venta` (`Id`);

--
-- Filtros para la tabla `EstadoBancarios`
--
ALTER TABLE `EstadoBancarios`
  ADD CONSTRAINT `EstadoBancarios_ibfk_1` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`);

--
-- Filtros para la tabla `EventosDeUsuario`
--
ALTER TABLE `EventosDeUsuario`
  ADD CONSTRAINT `eventosUsuario_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `eventosUsuario_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `FacturaCliente`
--
ALTER TABLE `FacturaCliente`
  ADD CONSTRAINT `FacturaCliente_ibfk_1` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_2` FOREIGN KEY (`IdTipodePago`) REFERENCES `TipodePago` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_3` FOREIGN KEY (`IdEstadodePago`) REFERENCES `EstadodePago` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_4` FOREIGN KEY (`IdEntidadBancaria`) REFERENCES `EntidadBancaria` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_5` FOREIGN KEY (`IdDatosEmpresa`) REFERENCES `DatosEmpresa` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_6` FOREIGN KEY (`IdAutorizaciondePago`) REFERENCES `AutorizaciondePago` (`Id`),
  ADD CONSTRAINT `FacturaCliente_ibfk_7` FOREIGN KEY (`IdClientes`) REFERENCES `Clientes` (`Id`);

--
-- Filtros para la tabla `insumosdecarpinteria`
--
ALTER TABLE `insumosdecarpinteria`
  ADD CONSTRAINT `insumosdecarpinteria_ibfk_1` FOREIGN KEY (`IdTipodeMaterial`) REFERENCES `tipodematerial` (`Id`),
  ADD CONSTRAINT `insumosdecarpinteria_ibfk_2` FOREIGN KEY (`IdTipodeCorte`) REFERENCES `tipodecorte` (`Id`);

--
-- Filtros para la tabla `maderas`
--
ALTER TABLE `maderas`
  ADD CONSTRAINT `maderas_ibfk_1` FOREIGN KEY (`IdTipodeMadera`) REFERENCES `tipodemadera` (`Id`);

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `notificaciones_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notificaciones_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `Pedido`
--
ALTER TABLE `Pedido`
  ADD CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`IdVenta`) REFERENCES `Venta` (`Id`);

--
-- Filtros para la tabla `PedidosCliente`
--
ALTER TABLE `PedidosCliente`
  ADD CONSTRAINT `PedidosCliente_ibfk_1` FOREIGN KEY (`IdCLientes`) REFERENCES `Clientes` (`Id`),
  ADD CONSTRAINT `PedidosCliente_ibfk_2` FOREIGN KEY (`IdTipodePedido`) REFERENCES `TipodePedido` (`Id`),
  ADD CONSTRAINT `PedidosCliente_ibfk_3` FOREIGN KEY (`IdVenta`) REFERENCES `Venta` (`Id`);

--
-- Filtros para la tabla `Producto`
--
ALTER TABLE `Producto`
  ADD CONSTRAINT `Producto_ibfk_1` FOREIGN KEY (`IdCategoria`) REFERENCES `Categoria` (`Id`),
  ADD CONSTRAINT `Producto_ibfk_2` FOREIGN KEY (`IdTipodeProducto`) REFERENCES `TipodeProducto` (`Id`),
  ADD CONSTRAINT `Producto_ibfk_3` FOREIGN KEY (`IdTipodeDiseño`) REFERENCES `TipodeDiseño` (`Id`),
  ADD CONSTRAINT `Producto_ibfk_4` FOREIGN KEY (`IdTipodeAcabado`) REFERENCES `TipodeAcabado` (`Id`),
  ADD CONSTRAINT `Producto_ibfk_5` FOREIGN KEY (`IdTipodeHerraje`) REFERENCES `TipodeHerraje` (`Id`),
  ADD CONSTRAINT `Producto_ibfk_6` FOREIGN KEY (`IdTipodeAlmacenamiento`) REFERENCES `TipodeAlmacenamiento` (`Id`);

--
-- Filtros para la tabla `ProductoCarrito`
--
ALTER TABLE `ProductoCarrito`
  ADD CONSTRAINT `ProductoCarrito_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`),
  ADD CONSTRAINT `ProductoCarrito_ibfk_2` FOREIGN KEY (`IdCarrito`) REFERENCES `Carrito` (`Id`);

--
-- Filtros para la tabla `ProductoImagenes`
--
ALTER TABLE `ProductoImagenes`
  ADD CONSTRAINT `ProductoImagenes_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ProductoInsumos`
--
ALTER TABLE `ProductoInsumos`
  ADD CONSTRAINT `ProductoInsumos_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ProductoInsumos_ibfk_2` FOREIGN KEY (`IdInsumoCarpinteria`) REFERENCES `insumosdecarpinteria` (`Id`);

--
-- Filtros para la tabla `ProductoMaderas`
--
ALTER TABLE `ProductoMaderas`
  ADD CONSTRAINT `ProductoMaderas_ibfk_1` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ProductoMaderas_ibfk_2` FOREIGN KEY (`IdMadera`) REFERENCES `maderas` (`Id`);

--
-- Filtros para la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD CONSTRAINT `Proveedores_ibfk_1` FOREIGN KEY (`IdRazonSocial`) REFERENCES `RazonSocial` (`Id`),
  ADD CONSTRAINT `Proveedores_ibfk_2` FOREIGN KEY (`IdLocalidad`) REFERENCES `Localidad` (`Id`);

--
-- Filtros para la tabla `Remito`
--
ALTER TABLE `Remito`
  ADD CONSTRAINT `Remito_ibfk_1` FOREIGN KEY (`IdTipodeEncargoRemito`) REFERENCES `TipodeEncargoRemito` (`Id`),
  ADD CONSTRAINT `Remito_ibfk_2` FOREIGN KEY (`IdDetallesProveedor`) REFERENCES `DetallesProveedor` (`Id`),
  ADD CONSTRAINT `Remito_ibfk_3` FOREIGN KEY (`IdDatosEmpresa`) REFERENCES `DatosEmpresa` (`Id`),
  ADD CONSTRAINT `Remito_ibfk_4` FOREIGN KEY (`IdClientes`) REFERENCES `Clientes` (`Id`),
  ADD CONSTRAINT `Remito_ibfk_5` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`),
  ADD CONSTRAINT `Remito_ibfk_6` FOREIGN KEY (`IdProveedor`) REFERENCES `Proveedores` (`Id`);

--
-- Filtros para la tabla `Resena`
--
ALTER TABLE `Resena`
  ADD CONSTRAINT `fk_resena_cliente` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`),
  ADD CONSTRAINT `fk_resena_producto` FOREIGN KEY (`IdProducto`) REFERENCES `Producto` (`Id`);

--
-- Filtros para la tabla `ResenaRespuesta`
--
ALTER TABLE `ResenaRespuesta`
  ADD CONSTRAINT `fk_rr_resena` FOREIGN KEY (`IdResena`) REFERENCES `Resena` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `SoporteDeProduccion`
--
ALTER TABLE `SoporteDeProduccion`
  ADD CONSTRAINT `SoporteDeProduccion_ibfk_1` FOREIGN KEY (`IdTipodeProducto`) REFERENCES `TipodeProducto` (`Id`),
  ADD CONSTRAINT `SoporteDeProduccion_ibfk_2` FOREIGN KEY (`IdDiseño`) REFERENCES `Diseño` (`Id`),
  ADD CONSTRAINT `SoporteDeProduccion_ibfk_3` FOREIGN KEY (`IdEmisor`) REFERENCES `Emisor` (`Id`),
  ADD CONSTRAINT `SoporteDeProduccion_ibfk_4` FOREIGN KEY (`IdTipodeAcabado`) REFERENCES `TipodeAcabado` (`Id`);

--
-- Filtros para la tabla `StockDiagnostico`
--
ALTER TABLE `StockDiagnostico`
  ADD CONSTRAINT `sd_ibfk_1` FOREIGN KEY (`GeneradoPor`) REFERENCES `Usuario` (`Id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `Usuario_ibfk_1` FOREIGN KEY (`IdTipodeUsuario`) REFERENCES `TipodeUsuario` (`Id`),
  ADD CONSTRAINT `Usuario_ibfk_2` FOREIGN KEY (`IdTipodeRol`) REFERENCES `TipodeRol` (`Id`),
  ADD CONSTRAINT `Usuario_ibfk_3` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`);

--
-- Filtros para la tabla `Venta`
--
ALTER TABLE `Venta`
  ADD CONSTRAINT `Venta_ibfk_1` FOREIGN KEY (`IdCarrito`) REFERENCES `Carrito` (`Id`),
  ADD CONSTRAINT `Venta_ibfk_2` FOREIGN KEY (`IdFacturaCliente`) REFERENCES `FacturaCliente` (`Id`);

--
-- Filtros para la tabla `VistasDePagina`
--
ALTER TABLE `VistasDePagina`
  ADD CONSTRAINT `vistaspagina_ibfk_1` FOREIGN KEY (`IdUsuario`) REFERENCES `Usuario` (`Id`) ON DELETE SET NULL,
  ADD CONSTRAINT `vistaspagina_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `Clientes` (`Id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
