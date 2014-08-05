/*
Navicat MySQL Data Transfer

Source Server         : remote_dev
Source Server Version : 50537
Source Host           : adpmx.com:3306
Source Database       : adpmxcom_sb

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2014-08-04 10:54:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activacions
-- ----------------------------
DROP TABLE IF EXISTS `activacions`;
CREATE TABLE `activacions` (
  `id` int(11) NOT NULL,
  `activ_hash` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of activacions
-- ----------------------------

-- ----------------------------
-- Table structure for cambios
-- ----------------------------
DROP TABLE IF EXISTS `cambios`;
CREATE TABLE `cambios` (
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cambios
-- ----------------------------
INSERT INTO `cambios` VALUES ('34', '0', '1', '1', '2014-04-08 03:25:07', null, '2014-04-09 03:25:26', '2014-04-09 03:25:26', '14');
INSERT INTO `cambios` VALUES ('35', '0', '1', '1', '2014-04-09 03:25:34', null, '2014-04-09 03:25:41', '2014-04-09 03:25:41', '15');
INSERT INTO `cambios` VALUES ('36', '0', '1', '1', '2014-04-09 03:44:49', null, '2014-04-09 03:44:51', '2014-04-09 03:44:51', '18');
INSERT INTO `cambios` VALUES ('37', '1', '2', '1', '2014-04-15 03:45:21', null, '2014-04-09 03:45:39', '2014-04-09 03:45:39', '15');
INSERT INTO `cambios` VALUES ('38', '0', '1', '1', '2014-04-09 03:46:37', null, '2014-04-09 03:46:39', '2014-04-09 03:46:39', '16');
INSERT INTO `cambios` VALUES ('39', '0', '1', '1', '2014-04-18 03:50:58', null, '2014-04-09 03:51:11', '2014-04-09 03:51:11', '22');
INSERT INTO `cambios` VALUES ('40', '2', '4', '1', '2014-04-24 03:52:52', null, '2014-04-09 03:53:29', '2014-04-09 03:53:29', '15');
INSERT INTO `cambios` VALUES ('41', '0', '1', '1', '2014-04-09 04:44:06', null, '2014-04-09 04:44:16', '2014-04-09 04:44:16', '17');
INSERT INTO `cambios` VALUES ('42', '0', '1', '1', '2014-04-09 04:44:32', null, '2014-04-09 04:44:34', '2014-04-09 04:44:34', '19');
INSERT INTO `cambios` VALUES ('43', '1', '2', '1', '2014-04-09 04:46:32', null, '2014-04-09 04:46:35', '2014-04-09 04:46:35', '14');
INSERT INTO `cambios` VALUES ('44', '2', '3', '1', '2014-04-09 04:48:02', null, '2014-04-09 04:48:06', '2014-04-09 04:48:06', '14');
INSERT INTO `cambios` VALUES ('45', '1', '2', '1', '2014-04-09 04:48:32', null, '2014-04-09 04:48:35', '2014-04-09 04:48:35', '17');
INSERT INTO `cambios` VALUES ('46', '0', '1', '1', '2014-04-09 04:49:13', null, '2014-04-09 04:49:15', '2014-04-09 04:49:15', '20');
INSERT INTO `cambios` VALUES ('47', '0', '1', '1', '2014-04-09 04:49:29', null, '2014-04-09 04:49:31', '2014-04-09 04:49:31', '21');
INSERT INTO `cambios` VALUES ('48', '0', '4', '1', '2014-05-07 04:53:19', null, '2014-04-09 04:53:41', '2014-04-09 04:53:41', '27');
INSERT INTO `cambios` VALUES ('49', '1', '1', '1', '2014-04-09 14:39:05', null, '2014-04-09 14:39:26', '2014-04-09 14:39:26', '20');
INSERT INTO `cambios` VALUES ('50', '0', '2', '1', '2014-06-12 05:12:23', null, '2014-06-12 05:12:30', '2014-06-12 05:12:30', '18');
INSERT INTO `cambios` VALUES ('51', '0', '4', '1', '2014-06-12 05:12:58', null, '2014-06-12 05:13:04', '2014-06-12 05:13:04', '21');
INSERT INTO `cambios` VALUES ('52', '1', '2', '1', '0000-00-00 00:00:00', null, '2014-06-13 21:24:19', '2014-06-13 21:24:19', '20');
INSERT INTO `cambios` VALUES ('53', '2', '4', '1', '0000-00-00 00:00:00', null, '2014-06-13 21:24:41', '2014-06-13 21:24:41', '18');
INSERT INTO `cambios` VALUES ('54', '2', '3', '1', '0000-00-00 00:00:00', null, '2014-06-13 23:14:15', '2014-06-13 23:14:15', '17');
INSERT INTO `cambios` VALUES ('55', '3', '4', '1', '0000-00-00 00:00:00', null, '2014-06-14 00:20:32', '2014-06-14 00:20:32', '14');
INSERT INTO `cambios` VALUES ('56', '2', '1', '1', '0000-00-00 00:00:00', null, '2014-06-14 00:40:37', '2014-06-14 00:40:37', '20');
INSERT INTO `cambios` VALUES ('57', '1', '2', '1', '0000-00-00 00:00:00', null, '2014-06-14 00:43:16', '2014-06-14 00:43:16', '16');
INSERT INTO `cambios` VALUES ('58', '2', '3', '1', '2014-06-14 00:00:00', null, '2014-06-14 01:15:15', '2014-06-14 01:15:15', '16');
INSERT INTO `cambios` VALUES ('59', '0', '1', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:24:32', '2014-06-16 22:24:32', '28');
INSERT INTO `cambios` VALUES ('60', '0', '1', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:24:40', '2014-06-16 22:24:40', '24');
INSERT INTO `cambios` VALUES ('61', '0', '1', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:24:48', '2014-06-16 22:24:48', '23');
INSERT INTO `cambios` VALUES ('62', '0', '1', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:24:57', '2014-06-16 22:24:57', '25');
INSERT INTO `cambios` VALUES ('63', '0', '1', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:25:04', '2014-06-16 22:25:04', '26');
INSERT INTO `cambios` VALUES ('64', '3', '4', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:25:16', '2014-06-16 22:25:16', '17');
INSERT INTO `cambios` VALUES ('65', '3', '4', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:25:24', '2014-06-16 22:25:24', '16');
INSERT INTO `cambios` VALUES ('66', '1', '4', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:26:43', '2014-06-16 22:26:43', '28');
INSERT INTO `cambios` VALUES ('67', '1', '2', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:26:56', '2014-06-16 22:26:56', '19');
INSERT INTO `cambios` VALUES ('68', '1', '3', '1', '2014-06-16 00:00:00', null, '2014-06-16 22:27:15', '2014-06-16 22:27:15', '22');
INSERT INTO `cambios` VALUES ('69', '-1', '3', '1', '2014-06-17 00:00:00', null, '2014-06-17 00:09:40', '2014-06-17 00:09:40', '33');
INSERT INTO `cambios` VALUES ('70', '3', '0', '1', '2014-06-17 00:00:00', null, '2014-06-17 00:09:48', '2014-06-17 00:09:48', '33');
INSERT INTO `cambios` VALUES ('71', '-1', '3', '1', '2014-06-17 00:00:00', null, '2014-06-17 00:15:58', '2014-06-17 00:15:58', '34');
INSERT INTO `cambios` VALUES ('72', '3', '4', '1', '2014-06-17 00:00:00', null, '2014-06-17 00:16:05', '2014-06-17 00:16:05', '34');
INSERT INTO `cambios` VALUES ('75', '-1', '-1', '1', '2014-06-18 00:00:00', 'Este es mi ultimo comentario.', '2014-06-18 08:25:09', '2014-06-18 08:25:09', '19');
INSERT INTO `cambios` VALUES ('76', '-1', '-1', '1', '2014-06-11 00:00:00', '', '2014-06-18 09:36:08', '2014-06-18 09:36:08', '19');
INSERT INTO `cambios` VALUES ('77', '-1', '-1', '1', '2014-06-18 00:00:00', 'Nuevo Comentario', '2014-06-18 10:18:55', '2014-06-18 10:18:55', '33');
INSERT INTO `cambios` VALUES ('78', '-1', '-1', '1', '2014-06-18 00:00:00', 'Excelente comentario', '2014-06-18 10:46:45', '2014-06-18 10:46:45', '33');
INSERT INTO `cambios` VALUES ('79', '-1', '-1', '1', '2014-06-18 00:00:00', 'Más comentarios', '2014-06-18 10:46:57', '2014-06-18 10:46:57', '33');
INSERT INTO `cambios` VALUES ('80', '0', '2', '1', '2014-06-18 00:00:00', null, '2014-06-18 10:47:12', '2014-06-18 10:47:12', '33');
INSERT INTO `cambios` VALUES ('81', '2', '4', '1', '2014-06-18 00:00:00', null, '2014-06-18 10:47:27', '2014-06-18 10:47:27', '33');
INSERT INTO `cambios` VALUES ('82', '2', '4', '1', '2014-06-19 00:00:00', null, '2014-06-19 16:47:05', '2014-06-19 16:47:05', '19');
INSERT INTO `cambios` VALUES ('83', '-1', '0', '1', '2014-06-20 00:00:00', null, '2014-06-19 17:03:50', '2014-06-19 17:03:50', '35');
INSERT INTO `cambios` VALUES ('84', '-1', '0', '4', '2014-06-19 00:00:00', null, '2014-06-19 23:25:53', '2014-06-19 23:25:53', '36');
INSERT INTO `cambios` VALUES ('224', '-1', '0', '1', '2014-07-24 00:00:00', null, '2014-07-24 13:57:14', '2014-07-24 13:57:14', '82');
INSERT INTO `cambios` VALUES ('225', '-1', '0', '1', '2014-08-15 00:00:00', null, '2014-07-25 12:13:13', '2014-07-25 12:13:13', '83');
INSERT INTO `cambios` VALUES ('226', '-1', '0', '1', '2014-07-17 00:00:00', null, '2014-07-28 12:52:35', '2014-07-28 12:52:35', '84');
INSERT INTO `cambios` VALUES ('227', '0', '1', '1', '2014-07-28 00:00:00', null, '2014-07-28 12:54:04', '2014-07-28 12:54:04', '84');
INSERT INTO `cambios` VALUES ('228', '-1', '-1', '1', '2014-07-28 00:00:00', 'Hoy le enseñe a Adal El sistema', '2014-07-28 12:54:32', '2014-07-28 12:54:32', '84');
INSERT INTO `cambios` VALUES ('229', '1', '2', '1', '2014-07-31 00:00:00', null, '2014-07-28 12:55:15', '2014-07-28 12:55:15', '84');

-- ----------------------------
-- Table structure for empresas
-- ----------------------------
DROP TABLE IF EXISTS `empresas`;
CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la Empresa',
  `nombre_com` varchar(50) DEFAULT NULL COMMENT 'Nombre de la Empresa',
  `razon_social` varchar(60) DEFAULT NULL,
  `usr_supremo` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of empresas
-- ----------------------------

-- ----------------------------
-- Table structure for oportunidads
-- ----------------------------
DROP TABLE IF EXISTS `oportunidads`;
CREATE TABLE `oportunidads` (
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of oportunidads
-- ----------------------------
INSERT INTO `oportunidads` VALUES ('14', 'Comex', '', '2014-04-01 03:22:25', '2014-06-14 01:10:22', '4', '15000.00', '1', '1', '1', '2014-04-09 03:22:59', '2014-06-14 00:20:32');
INSERT INTO `oportunidads` VALUES ('15', 'True Ads', '', '2014-04-02 03:23:05', '2014-04-23 03:52:52', '4', '20000.00', '1', '1', '0', '2014-04-09 03:23:27', '2014-07-10 00:10:25');
INSERT INTO `oportunidads` VALUES ('16', 'Oracle 3', '', '2014-04-04 03:23:33', '2014-06-16 00:00:00', '4', '18000.00', '1', '1', '1', '2014-04-09 03:23:43', '2014-06-16 22:25:24');
INSERT INTO `oportunidads` VALUES ('17', 'Asociación Chrysler', 'Este es el detalle de la operación.', '2014-04-10 03:41:38', '2014-06-16 00:00:00', '4', '10000.00', '1', '1', '1', '2014-04-09 03:41:55', '2014-06-16 22:25:16');
INSERT INTO `oportunidads` VALUES ('18', 'AB2', '', '2014-04-15 03:44:28', '2014-06-12 23:32:46', '4', '14000.00', '1', '1', '1', '2014-04-09 03:44:46', '2014-06-13 23:24:57');
INSERT INTO `oportunidads` VALUES ('19', 'Colgate App', 'Glimpse', '2014-04-16 03:48:20', '2014-06-19 00:00:00', '4', '190000.00', '1', '1', '1', '2014-04-09 03:48:37', '2014-06-19 16:47:05');
INSERT INTO `oportunidads` VALUES ('20', 'LA1', '', '2014-04-17 03:48:45', null, '1', '0.00', '1', '1', '1', '2014-04-09 03:49:10', '2014-06-14 00:40:37');
INSERT INTO `oportunidads` VALUES ('21', 'Cliente Camiones', 'Buena Venta', '2014-04-18 03:49:15', '2014-06-12 05:12:58', '4', '23440.00', '1', '1', '1', '2014-04-09 03:49:27', '2014-06-12 05:14:05');
INSERT INTO `oportunidads` VALUES ('22', 'OB 1', 'Esta es una excelente oportunidad', '2014-04-08 03:50:24', null, '3', '1150.00', '1', '1', '1', '2014-04-09 03:50:37', '2014-06-16 22:27:15');
INSERT INTO `oportunidads` VALUES ('23', 'ME1', '', '2014-04-24 04:44:45', null, '1', '0.00', '1', '1', '1', '2014-04-09 04:45:27', '2014-06-16 22:24:48');
INSERT INTO `oportunidads` VALUES ('24', 'PP1', '', '2014-04-25 04:45:35', null, '1', '0.00', '1', '1', '1', '2014-04-09 04:45:45', '2014-06-16 22:24:40');
INSERT INTO `oportunidads` VALUES ('25', 'CC1', '', '2014-04-30 04:49:54', null, '1', '0.00', '1', '1', '1', '2014-04-09 04:50:04', '2014-06-16 22:24:57');
INSERT INTO `oportunidads` VALUES ('26', 'MO1', '', '2014-05-01 04:50:07', null, '1', '0.00', '1', '1', '1', '2014-04-09 04:50:20', '2014-06-16 22:25:04');
INSERT INTO `oportunidads` VALUES ('27', 'AA1', '', '2014-05-07 04:52:53', '2014-05-07 04:53:19', '4', '5000.00', '1', '1', '1', '2014-04-09 04:53:17', '2014-04-09 04:53:41');
INSERT INTO `oportunidads` VALUES ('28', 'Volvo Morelia', 'Vio mi perfil en Facebook y mande un mensaje', '2014-06-12 05:14:46', '2014-06-16 00:00:00', '4', '35000.00', '1', '1', '1', '2014-06-12 05:15:26', '2014-06-16 22:26:43');
INSERT INTO `oportunidads` VALUES ('29', 'New OP', 'Inicia en PC', '2014-06-16 00:00:00', null, '0', '0.00', '1', '1', '1', '2014-06-16 23:53:29', '2014-06-16 23:53:29');
INSERT INTO `oportunidads` VALUES ('30', 'Op3', 'Empieza en Paso 3', '2014-06-16 00:00:00', null, '0', '25000.00', '1', '1', '1', '2014-06-16 23:55:07', '2014-06-16 23:55:07');
INSERT INTO `oportunidads` VALUES ('31', 'Op09', '', '2014-06-16 00:00:00', null, '2', '30000.00', '1', '1', '1', '2014-06-16 23:57:47', '2014-06-16 23:58:16');
INSERT INTO `oportunidads` VALUES ('32', 'opp9', 'Inicia en Cierre', '2014-06-16 00:00:00', null, '4', '15000.00', '1', '1', '1', '2014-06-16 23:58:52', '2014-06-16 23:58:52');
INSERT INTO `oportunidads` VALUES ('33', 'Mi Nueva Oportunidad', 'Mi detalle', '2014-06-17 00:00:00', '2014-06-18 00:00:00', '4', '25000.00', '1', '1', '1', '2014-06-17 00:09:40', '2014-06-18 10:47:27');
INSERT INTO `oportunidads` VALUES ('34', 'Oportunidad 3', 'mi op 23', '2014-06-17 00:00:00', '2014-06-17 00:00:00', '4', '15000.00', '1', '1', '1', '2014-06-17 00:15:58', '2014-06-17 00:16:05');
INSERT INTO `oportunidads` VALUES ('35', 'Mi Oportunidad', 'Hola ', '2014-06-20 00:00:00', null, '0', '0.00', '1', '1', '1', '2014-06-19 17:03:50', '2014-06-19 17:03:50');
INSERT INTO `oportunidads` VALUES ('36', 'Mi Nueva Oportunidad', 'Esta es', '2014-06-19 00:00:00', null, '0', '25000.00', '4', '1', '1', '2014-06-19 23:25:53', '2014-06-19 23:25:53');
INSERT INTO `oportunidads` VALUES ('82', '', '', '2014-07-24 00:00:00', null, '0', '0.00', '1', '1', '1', '2014-07-24 13:57:14', '2014-07-24 13:58:05');
INSERT INTO `oportunidads` VALUES ('83', 'Prueba zaida', 'x o  y', '2014-08-15 00:00:00', null, '0', '500.00', '1', '1', '0', '2014-07-25 12:13:13', '2014-07-25 12:19:08');
INSERT INTO `oportunidads` VALUES ('84', 'Coca Cola', 'Estrategia de Redes Sociales', '2014-07-17 00:00:00', null, '2', '45000.00', '1', '1', '1', '2014-07-28 12:52:35', '2014-07-28 12:55:15');

-- ----------------------------
-- Table structure for tipousuario
-- ----------------------------
DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE `tipousuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipousuario
-- ----------------------------
INSERT INTO `tipousuario` VALUES ('1', 'Admin', 'Todo Poderoso', '0');
INSERT INTO `tipousuario` VALUES ('2', 'base', 'Simple', '1');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `usr_superior` int(2) DEFAULT NULL,
  `cookie_token` varchar(255) DEFAULT NULL,
  `activo` binary(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('2', 'juan', 'Juan Bosco', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '0', null, null, null, '2014-05-13 04:43:52', '2014-05-13 04:43:52');
INSERT INTO `usuarios` VALUES ('3', 'carlos', 'Carlos Conde', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '1', null, null, null, '2014-05-13 04:43:51', '2014-05-13 04:43:51');
INSERT INTO `usuarios` VALUES ('4', 'erik', 'Erik Nieto', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '0', null, null, null, '2014-05-13 04:43:52', '2014-05-13 04:43:52');
INSERT INTO `usuarios` VALUES ('5', 'carlosc', 'Carlos Conde', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '1', null, null, null, '2014-07-12 10:39:57', '2014-05-13 04:43:53');
INSERT INTO `usuarios` VALUES ('1', 'sonichaos', 'Pedro Escudero', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '1', null, null, null, '2014-05-13 11:43:51', '2014-05-13 11:43:51');
INSERT INTO `usuarios` VALUES ('6', 'hunter2', 'develop', null, '$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy', '1', null, null, null, '2014-05-13 11:43:52', '2014-05-13 11:43:52');
