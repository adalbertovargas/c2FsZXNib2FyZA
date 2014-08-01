-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2014 at 11:45 AM
-- Server version: 5.5.37-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `adpmxcom_sb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cambios`
--

CREATE TABLE IF NOT EXISTS `cambios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_antes` int(11) NOT NULL,
  `estado_actual` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `fecha_cambio` datetime DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oportunidad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=232 ;

--
-- Dumping data for table `cambios`
--

INSERT INTO `cambios` (`id`, `estado_antes`, `estado_actual`, `usuario_id`, `fecha_cambio`, `comentario`, `created_at`, `updated_at`, `oportunidad_id`) VALUES
(34, 0, 1, 1, '2014-04-08 03:25:07', NULL, '2014-04-09 10:25:26', '2014-04-09 10:25:26', 14),
(35, 0, 1, 1, '2014-04-09 03:25:34', NULL, '2014-04-09 10:25:41', '2014-04-09 10:25:41', 15),
(36, 0, 1, 1, '2014-04-09 03:44:49', NULL, '2014-04-09 10:44:51', '2014-04-09 10:44:51', 18),
(37, 1, 2, 1, '2014-04-15 03:45:21', NULL, '2014-04-09 10:45:39', '2014-04-09 10:45:39', 15),
(38, 0, 1, 1, '2014-04-09 03:46:37', NULL, '2014-04-09 10:46:39', '2014-04-09 10:46:39', 16),
(39, 0, 1, 1, '2014-04-18 03:50:58', NULL, '2014-04-09 10:51:11', '2014-04-09 10:51:11', 22),
(40, 2, 4, 1, '2014-04-24 03:52:52', NULL, '2014-04-09 10:53:29', '2014-04-09 10:53:29', 15),
(41, 0, 1, 1, '2014-04-09 04:44:06', NULL, '2014-04-09 11:44:16', '2014-04-09 11:44:16', 17),
(42, 0, 1, 1, '2014-04-09 04:44:32', NULL, '2014-04-09 11:44:34', '2014-04-09 11:44:34', 19),
(43, 1, 2, 1, '2014-04-09 04:46:32', NULL, '2014-04-09 11:46:35', '2014-04-09 11:46:35', 14),
(44, 2, 3, 1, '2014-04-09 04:48:02', NULL, '2014-04-09 11:48:06', '2014-04-09 11:48:06', 14),
(45, 1, 2, 1, '2014-04-09 04:48:32', NULL, '2014-04-09 11:48:35', '2014-04-09 11:48:35', 17),
(46, 0, 1, 1, '2014-04-09 04:49:13', NULL, '2014-04-09 11:49:15', '2014-04-09 11:49:15', 20),
(47, 0, 1, 1, '2014-04-09 04:49:29', NULL, '2014-04-09 11:49:31', '2014-04-09 11:49:31', 21),
(48, 0, 4, 1, '2014-05-07 04:53:19', NULL, '2014-04-09 11:53:41', '2014-04-09 11:53:41', 27),
(49, 1, 1, 1, '2014-04-09 14:39:05', NULL, '2014-04-09 21:39:26', '2014-04-09 21:39:26', 20),
(50, 0, 2, 1, '2014-06-12 05:12:23', NULL, '2014-06-12 12:12:30', '2014-06-12 12:12:30', 18),
(51, 0, 4, 1, '2014-06-12 05:12:58', NULL, '2014-06-12 12:13:04', '2014-06-12 12:13:04', 21),
(52, 1, 2, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 04:24:19', '2014-06-14 04:24:19', 20),
(53, 2, 4, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 04:24:41', '2014-06-14 04:24:41', 18),
(54, 2, 3, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 06:14:15', '2014-06-14 06:14:15', 17),
(55, 3, 4, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 07:20:32', '2014-06-14 07:20:32', 14),
(56, 2, 1, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 07:40:37', '2014-06-14 07:40:37', 20),
(57, 1, 2, 1, '0000-00-00 00:00:00', NULL, '2014-06-14 07:43:16', '2014-06-14 07:43:16', 16),
(58, 2, 3, 1, '2014-06-14 00:00:00', NULL, '2014-06-14 08:15:15', '2014-06-14 08:15:15', 16),
(59, 0, 1, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:24:32', '2014-06-17 05:24:32', 28),
(60, 0, 1, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:24:40', '2014-06-17 05:24:40', 24),
(61, 0, 1, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:24:48', '2014-06-17 05:24:48', 23),
(62, 0, 1, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:24:57', '2014-06-17 05:24:57', 25),
(63, 0, 1, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:25:04', '2014-06-17 05:25:04', 26),
(64, 3, 4, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:25:16', '2014-06-17 05:25:16', 17),
(65, 3, 4, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:25:24', '2014-06-17 05:25:24', 16),
(66, 1, 4, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:26:43', '2014-06-17 05:26:43', 28),
(67, 1, 2, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:26:56', '2014-06-17 05:26:56', 19),
(68, 1, 3, 1, '2014-06-16 00:00:00', NULL, '2014-06-17 05:27:15', '2014-06-17 05:27:15', 22),
(69, -1, 3, 1, '2014-06-17 00:00:00', NULL, '2014-06-17 07:09:40', '2014-06-17 07:09:40', 33),
(70, 3, 0, 1, '2014-06-17 00:00:00', NULL, '2014-06-17 07:09:48', '2014-06-17 07:09:48', 33),
(71, -1, 3, 1, '2014-06-17 00:00:00', NULL, '2014-06-17 07:15:58', '2014-06-17 07:15:58', 34),
(72, 3, 4, 1, '2014-06-17 00:00:00', NULL, '2014-06-17 07:16:05', '2014-06-17 07:16:05', 34),
(75, -1, -1, 1, '2014-06-18 00:00:00', 'Este es mi ultimo comentario.', '2014-06-18 15:25:09', '2014-06-18 15:25:09', 19),
(76, -1, -1, 1, '2014-06-11 00:00:00', '', '2014-06-18 16:36:08', '2014-06-18 16:36:08', 19),
(77, -1, -1, 1, '2014-06-18 00:00:00', 'Nuevo Comentario', '2014-06-18 17:18:55', '2014-06-18 17:18:55', 33),
(78, -1, -1, 1, '2014-06-18 00:00:00', 'Excelente comentario', '2014-06-18 17:46:45', '2014-06-18 17:46:45', 33),
(79, -1, -1, 1, '2014-06-18 00:00:00', 'Más comentarios', '2014-06-18 17:46:57', '2014-06-18 17:46:57', 33),
(80, 0, 2, 1, '2014-06-18 00:00:00', NULL, '2014-06-18 17:47:12', '2014-06-18 17:47:12', 33),
(81, 2, 4, 1, '2014-06-18 00:00:00', NULL, '2014-06-18 17:47:27', '2014-06-18 17:47:27', 33),
(82, 2, 4, 1, '2014-06-19 00:00:00', NULL, '2014-06-19 23:47:05', '2014-06-19 23:47:05', 19),
(83, -1, 0, 1, '2014-06-20 00:00:00', NULL, '2014-06-20 00:03:50', '2014-06-20 00:03:50', 35),
(84, -1, 0, 4, '2014-06-19 00:00:00', NULL, '2014-06-20 06:25:53', '2014-06-20 06:25:53', 36),
(224, -1, 0, 1, '2014-07-24 00:00:00', NULL, '2014-07-24 20:57:14', '2014-07-24 20:57:14', 82),
(225, -1, 0, 1, '2014-08-15 00:00:00', NULL, '2014-07-25 19:13:13', '2014-07-25 19:13:13', 83),
(226, -1, 0, 1, '2014-07-17 00:00:00', NULL, '2014-07-28 19:52:35', '2014-07-28 19:52:35', 84),
(227, 0, 1, 1, '2014-07-28 00:00:00', NULL, '2014-07-28 19:54:04', '2014-07-28 19:54:04', 84),
(228, -1, -1, 1, '2014-07-28 00:00:00', 'Hoy le enseñe a Adal El sistema', '2014-07-28 19:54:32', '2014-07-28 19:54:32', 84),
(229, 1, 2, 1, '2014-07-31 00:00:00', NULL, '2014-07-28 19:55:15', '2014-07-28 19:55:15', 84);

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la Empresa',
  `nombre_empresa` varchar(45) DEFAULT NULL COMMENT 'Nombre de la Empresa',
  `fecha_creada` varchar(45) DEFAULT NULL COMMENT 'Fecha en que se dio de Alta la Empresa',
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oportunidads`
--

CREATE TABLE IF NOT EXISTS `oportunidads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `estado_actual` int(1) NOT NULL DEFAULT '0',
  `cantidad` decimal(10,2) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `empresa_id` int(11) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`usuario_id`,`empresa_id`),
  KEY `fk_oportunidades_usuarios_idx` (`usuario_id`),
  KEY `fk_oportunidades_empresas1_idx` (`empresa_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `oportunidads`
--

INSERT INTO `oportunidads` (`id`, `nombre`, `detalle`, `fecha_inicio`, `fecha_final`, `estado_actual`, `cantidad`, `usuario_id`, `empresa_id`, `visible`, `created_at`, `updated_at`) VALUES
(14, 'Comex', '', '2014-04-01 03:22:25', '2014-06-14 01:10:22', 4, '15000.00', 1, 1, 1, '2014-04-09 10:22:59', '2014-06-14 07:20:32'),
(15, 'True Ads', '', '2014-04-02 03:23:05', '2014-04-23 03:52:52', 4, '20000.00', 1, 1, 0, '2014-04-09 10:23:27', '2014-07-10 07:10:25'),
(16, 'Oracle 3', '', '2014-04-04 03:23:33', '2014-06-16 00:00:00', 4, '18000.00', 1, 1, 1, '2014-04-09 10:23:43', '2014-06-17 05:25:24'),
(17, 'Asociación Chrysler', 'Este es el detalle de la operación.', '2014-04-10 03:41:38', '2014-06-16 00:00:00', 4, '10000.00', 1, 1, 1, '2014-04-09 10:41:55', '2014-06-17 05:25:16'),
(18, 'AB2', '', '2014-04-15 03:44:28', '2014-06-12 23:32:46', 4, '14000.00', 1, 1, 1, '2014-04-09 10:44:46', '2014-06-14 06:24:57'),
(19, 'Colgate App', 'Glimpse', '2014-04-16 03:48:20', '2014-06-19 00:00:00', 4, '190000.00', 1, 1, 1, '2014-04-09 10:48:37', '2014-06-19 23:47:05'),
(20, 'LA1', '', '2014-04-17 03:48:45', NULL, 1, '0.00', 1, 1, 1, '2014-04-09 10:49:10', '2014-06-14 07:40:37'),
(21, 'Cliente Camiones', 'Buena Venta', '2014-04-18 03:49:15', '2014-06-12 05:12:58', 4, '23440.00', 1, 1, 1, '2014-04-09 10:49:27', '2014-06-12 12:14:05'),
(22, 'OB 1', 'Esta es una excelente oportunidad', '2014-04-08 03:50:24', NULL, 3, '1150.00', 1, 1, 1, '2014-04-09 10:50:37', '2014-06-17 05:27:15'),
(23, 'ME1', '', '2014-04-24 04:44:45', NULL, 1, '0.00', 1, 1, 1, '2014-04-09 11:45:27', '2014-06-17 05:24:48'),
(24, 'PP1', '', '2014-04-25 04:45:35', NULL, 1, '0.00', 1, 1, 1, '2014-04-09 11:45:45', '2014-06-17 05:24:40'),
(25, 'CC1', '', '2014-04-30 04:49:54', NULL, 1, '0.00', 1, 1, 1, '2014-04-09 11:50:04', '2014-06-17 05:24:57'),
(26, 'MO1', '', '2014-05-01 04:50:07', NULL, 1, '0.00', 1, 1, 1, '2014-04-09 11:50:20', '2014-06-17 05:25:04'),
(27, 'AA1', '', '2014-05-07 04:52:53', '2014-05-07 04:53:19', 4, '5000.00', 1, 1, 1, '2014-04-09 11:53:17', '2014-04-09 11:53:41'),
(28, 'Volvo Morelia', 'Vio mi perfil en Facebook y mande un mensaje', '2014-06-12 05:14:46', '2014-06-16 00:00:00', 4, '35000.00', 1, 1, 1, '2014-06-12 12:15:26', '2014-06-17 05:26:43'),
(29, 'New OP', 'Inicia en PC', '2014-06-16 00:00:00', NULL, 0, '0.00', 1, 1, 1, '2014-06-17 06:53:29', '2014-06-17 06:53:29'),
(30, 'Op3', 'Empieza en Paso 3', '2014-06-16 00:00:00', NULL, 0, '25000.00', 1, 1, 1, '2014-06-17 06:55:07', '2014-06-17 06:55:07'),
(31, 'Op09', '', '2014-06-16 00:00:00', NULL, 2, '30000.00', 1, 1, 1, '2014-06-17 06:57:47', '2014-06-17 06:58:16'),
(32, 'opp9', 'Inicia en Cierre', '2014-06-16 00:00:00', NULL, 4, '15000.00', 1, 1, 1, '2014-06-17 06:58:52', '2014-06-17 06:58:52'),
(33, 'Mi Nueva Oportunidad', 'Mi detalle', '2014-06-17 00:00:00', '2014-06-18 00:00:00', 4, '25000.00', 1, 1, 1, '2014-06-17 07:09:40', '2014-06-18 17:47:27'),
(34, 'Oportunidad 3', 'mi op 23', '2014-06-17 00:00:00', '2014-06-17 00:00:00', 4, '15000.00', 1, 1, 1, '2014-06-17 07:15:58', '2014-06-17 07:16:05'),
(35, 'Mi Oportunidad', 'Hola ', '2014-06-20 00:00:00', NULL, 0, '0.00', 1, 1, 1, '2014-06-20 00:03:50', '2014-06-20 00:03:50'),
(36, 'Mi Nueva Oportunidad', 'Esta es', '2014-06-19 00:00:00', NULL, 0, '25000.00', 4, 1, 1, '2014-06-20 06:25:53', '2014-06-20 06:25:53'),
(82, '', '', '2014-07-24 00:00:00', NULL, 0, '0.00', 1, 1, 1, '2014-07-24 20:57:14', '2014-07-24 20:58:05'),
(83, 'Prueba zaida', 'x o  y', '2014-08-15 00:00:00', NULL, 0, '500.00', 1, 1, 0, '2014-07-25 19:13:13', '2014-07-25 19:19:08'),
(84, 'Coca Cola', 'Estrategia de Redes Sociales', '2014-07-17 00:00:00', NULL, 2, '45000.00', 1, 1, 1, '2014-07-28 19:52:35', '2014-07-28 19:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `tipousuario`
--

CREATE TABLE IF NOT EXISTS `tipousuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipo`, `nombre`, `descripcion`, `nivel`) VALUES
(1, 'Admin', 'Todo Poderoso', '0'),
(2, 'base', 'Simple', '1');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apodo` varchar(20) NOT NULL,
  `tipo_cta` int(2) NOT NULL,
  `superior` int(2) DEFAULT NULL,
  `pwd_hash` varchar(255) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `username` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `apodo`, `tipo_cta`, `superior`, `pwd_hash`, `nombre`, `username`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, '', 0, NULL, '', 'Pedro Escudero', 'sonichaos', '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', 1, '2014-05-13 11:43:51', '2014-05-13 11:43:51'),
(2, '', 0, NULL, '', 'Juan Bosco', 'juan', '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', 0, '2014-05-13 11:43:52', '2014-05-13 11:43:52'),
(3, '', 0, NULL, '', 'Carlos Conde', 'carlos', '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', 1, '2014-05-13 11:43:51', '2014-05-13 11:43:51'),
(4, '', 0, NULL, '', 'Erik Nieto', 'erik', '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', 0, '2014-05-13 11:43:52', '2014-05-13 11:43:52'),
(5, '', 0, NULL, '', 'Carlos Conde', 'carlosc', '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', 1, '2014-07-12 17:39:57', '2014-05-13 11:43:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
