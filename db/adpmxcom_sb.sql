-- MySQL dump 10.13  Distrib 5.5.37, for Linux (i686)
--
-- Host: localhost    Database: adpmxcom_sb_dev
-- ------------------------------------------------------
-- Server version	5.5.37-cll

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cambios`
--

DROP TABLE IF EXISTS `cambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cambios`
--

LOCK TABLES `cambios` WRITE;
/*!40000 ALTER TABLE `cambios` DISABLE KEYS */;
INSERT INTO `cambios` (`id`, `estado_antes`, `estado_actual`, `usuario_id`, `fecha_cambio`, `comentario`, `created_at`, `updated_at`, `oportunidad_id`) VALUES (34,0,1,1,'2014-04-08 03:25:07',NULL,'2014-04-09 10:25:26','2014-04-09 10:25:26',14),(35,0,1,1,'2014-04-09 03:25:34',NULL,'2014-04-09 10:25:41','2014-04-09 10:25:41',15),(36,0,1,1,'2014-04-09 03:44:49',NULL,'2014-04-09 10:44:51','2014-04-09 10:44:51',18),(37,1,2,1,'2014-04-15 03:45:21',NULL,'2014-04-09 10:45:39','2014-04-09 10:45:39',15),(38,0,1,1,'2014-04-09 03:46:37',NULL,'2014-04-09 10:46:39','2014-04-09 10:46:39',16),(39,0,1,1,'2014-04-18 03:50:58',NULL,'2014-04-09 10:51:11','2014-04-09 10:51:11',22),(40,2,4,1,'2014-04-24 03:52:52',NULL,'2014-04-09 10:53:29','2014-04-09 10:53:29',15),(41,0,1,1,'2014-04-09 04:44:06',NULL,'2014-04-09 11:44:16','2014-04-09 11:44:16',17),(42,0,1,1,'2014-04-09 04:44:32',NULL,'2014-04-09 11:44:34','2014-04-09 11:44:34',19),(43,1,2,1,'2014-04-09 04:46:32',NULL,'2014-04-09 11:46:35','2014-04-09 11:46:35',14),(44,2,3,1,'2014-04-09 04:48:02',NULL,'2014-04-09 11:48:06','2014-04-09 11:48:06',14),(45,1,2,1,'2014-04-09 04:48:32',NULL,'2014-04-09 11:48:35','2014-04-09 11:48:35',17),(46,0,1,1,'2014-04-09 04:49:13',NULL,'2014-04-09 11:49:15','2014-04-09 11:49:15',20),(47,0,1,1,'2014-04-09 04:49:29',NULL,'2014-04-09 11:49:31','2014-04-09 11:49:31',21),(48,0,4,1,'2014-05-07 04:53:19',NULL,'2014-04-09 11:53:41','2014-04-09 11:53:41',27),(49,1,1,1,'2014-04-09 14:39:05',NULL,'2014-04-09 21:39:26','2014-04-09 21:39:26',20),(50,0,2,1,'2014-06-12 05:12:23',NULL,'2014-06-12 12:12:30','2014-06-12 12:12:30',18),(51,0,4,1,'2014-06-12 05:12:58',NULL,'2014-06-12 12:13:04','2014-06-12 12:13:04',21),(52,1,2,1,'0000-00-00 00:00:00',NULL,'2014-06-14 04:24:19','2014-06-14 04:24:19',20),(53,2,4,1,'0000-00-00 00:00:00',NULL,'2014-06-14 04:24:41','2014-06-14 04:24:41',18),(54,2,3,1,'0000-00-00 00:00:00',NULL,'2014-06-14 06:14:15','2014-06-14 06:14:15',17),(55,3,4,1,'0000-00-00 00:00:00',NULL,'2014-06-14 07:20:32','2014-06-14 07:20:32',14),(56,2,1,1,'0000-00-00 00:00:00',NULL,'2014-06-14 07:40:37','2014-06-14 07:40:37',20),(57,1,2,1,'0000-00-00 00:00:00',NULL,'2014-06-14 07:43:16','2014-06-14 07:43:16',16),(58,2,3,1,'2014-06-14 00:00:00',NULL,'2014-06-14 08:15:15','2014-06-14 08:15:15',16),(59,0,1,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:24:32','2014-06-17 05:24:32',28),(60,0,1,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:24:40','2014-06-17 05:24:40',24),(61,0,1,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:24:48','2014-06-17 05:24:48',23),(62,0,1,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:24:57','2014-06-17 05:24:57',25),(63,0,1,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:25:04','2014-06-17 05:25:04',26),(64,3,4,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:25:16','2014-06-17 05:25:16',17),(65,3,4,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:25:24','2014-06-17 05:25:24',16),(66,1,4,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:26:43','2014-06-17 05:26:43',28),(67,1,2,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:26:56','2014-06-17 05:26:56',19),(68,1,3,1,'2014-06-16 00:00:00',NULL,'2014-06-17 05:27:15','2014-06-17 05:27:15',22),(69,-1,3,1,'2014-06-17 00:00:00',NULL,'2014-06-17 07:09:40','2014-06-17 07:09:40',33),(70,3,0,1,'2014-06-17 00:00:00',NULL,'2014-06-17 07:09:48','2014-06-17 07:09:48',33),(71,-1,3,1,'2014-06-17 00:00:00',NULL,'2014-06-17 07:15:58','2014-06-17 07:15:58',34),(72,3,4,1,'2014-06-17 00:00:00',NULL,'2014-06-17 07:16:05','2014-06-17 07:16:05',34),(75,-1,-1,1,'2014-06-18 00:00:00','Este es mi ultimo comentario.','2014-06-18 15:25:09','2014-06-18 15:25:09',19),(76,-1,-1,1,'2014-06-11 00:00:00','','2014-06-18 16:36:08','2014-06-18 16:36:08',19),(77,-1,-1,1,'2014-06-18 00:00:00','Nuevo Comentario','2014-06-18 17:18:55','2014-06-18 17:18:55',33),(78,-1,-1,1,'2014-06-18 00:00:00','Excelente comentario','2014-06-18 17:46:45','2014-06-18 17:46:45',33),(79,-1,-1,1,'2014-06-18 00:00:00','Más comentarios','2014-06-18 17:46:57','2014-06-18 17:46:57',33),(80,0,2,1,'2014-06-18 00:00:00',NULL,'2014-06-18 17:47:12','2014-06-18 17:47:12',33),(81,2,4,1,'2014-06-18 00:00:00',NULL,'2014-06-18 17:47:27','2014-06-18 17:47:27',33),(82,2,4,1,'2014-06-19 00:00:00',NULL,'2014-06-19 23:47:05','2014-06-19 23:47:05',19),(83,-1,0,1,'2014-06-20 00:00:00',NULL,'2014-06-20 00:03:50','2014-06-20 00:03:50',35),(84,-1,0,4,'2014-06-19 00:00:00',NULL,'2014-06-20 06:25:53','2014-06-20 06:25:53',36),(126,-1,0,3,'2014-05-23 00:00:00',NULL,'2014-06-30 18:29:55','2014-06-30 18:29:55',51),(127,-1,0,3,'2014-05-24 00:00:00',NULL,'2014-06-30 18:31:46','2014-06-30 18:31:46',52),(128,-1,0,3,'2014-05-25 00:00:00',NULL,'2014-06-30 18:33:36','2014-06-30 18:33:36',53),(129,-1,0,3,'2014-05-26 00:00:00',NULL,'2014-06-30 18:35:37','2014-06-30 18:35:37',54),(132,-1,0,3,'2014-05-29 00:00:00',NULL,'2014-06-30 18:43:01','2014-06-30 18:43:01',57),(134,-1,2,3,'2014-05-27 00:00:00',NULL,'2014-06-30 18:55:23','2014-06-30 18:55:23',59),(135,-1,3,3,'2014-05-28 00:00:00',NULL,'2014-06-30 18:56:26','2014-06-30 18:56:26',60),(136,-1,1,3,'2014-05-30 00:00:00',NULL,'2014-06-30 18:57:21','2014-06-30 18:57:21',61),(137,-1,0,3,'2014-06-30 00:00:00',NULL,'2014-06-30 18:58:38','2014-06-30 18:58:38',62),(138,-1,2,3,'2014-06-01 00:00:00',NULL,'2014-06-30 18:59:36','2014-06-30 18:59:36',63),(139,-1,1,3,'2014-06-02 00:00:00',NULL,'2014-06-30 19:00:58','2014-06-30 19:00:58',64),(140,-1,0,3,'2014-06-03 00:00:00',NULL,'2014-06-30 19:01:55','2014-06-30 19:01:55',65),(141,-1,0,3,'2014-06-04 00:00:00',NULL,'2014-06-30 19:05:21','2014-06-30 19:05:21',66),(142,0,1,3,'2014-06-25 00:00:00',NULL,'2014-06-30 19:21:46','2014-06-30 19:21:46',52),(143,0,1,3,'2014-06-26 00:00:00',NULL,'2014-06-30 19:28:43','2014-06-30 19:28:43',53),(144,0,1,3,'2014-06-27 00:00:00',NULL,'2014-06-30 19:29:32','2014-06-30 19:29:32',54),(145,3,4,3,'2014-06-30 00:00:00',NULL,'2014-06-30 19:35:02','2014-06-30 19:35:02',60),(146,2,3,3,'2014-06-02 00:00:00',NULL,'2014-06-30 19:42:14','2014-06-30 19:42:14',63),(147,0,1,3,'2014-06-04 00:00:00',NULL,'2014-06-30 19:43:42','2014-06-30 19:43:42',65),(148,0,1,3,'2014-06-05 00:00:00',NULL,'2014-06-30 19:44:42','2014-06-30 19:44:42',66),(149,1,2,3,'2014-06-06 00:00:00',NULL,'2014-06-30 19:55:33','2014-06-30 19:55:33',66),(150,3,4,3,'2014-07-10 00:00:00',NULL,'2014-07-10 08:41:53','2014-07-10 08:41:53',63),(151,0,2,3,'2014-07-10 00:00:00',NULL,'2014-07-10 08:42:19','2014-07-10 08:42:19',51),(152,2,4,3,'2014-07-10 00:00:00',NULL,'2014-07-10 08:44:42','2014-07-10 08:44:42',51),(153,1,3,3,'2014-07-10 00:00:00',NULL,'2014-07-10 08:45:20','2014-07-10 08:45:20',52),(154,1,4,3,'2014-07-10 00:00:00',NULL,'2014-07-10 08:45:50','2014-07-10 08:45:50',53),(155,-1,-1,3,'2014-07-10 00:00:00','Mi comemtadsdadsdsd','2014-07-10 08:52:35','2014-07-10 08:52:35',66),(156,-1,0,5,'2014-06-09 00:00:00',NULL,'2014-07-13 14:45:10','2014-07-13 14:45:10',67),(157,-1,-1,5,'2014-06-09 00:00:00','Cita con Arturo','2014-07-13 14:46:08','2014-07-13 14:46:08',67),(158,-1,0,5,'2014-06-10 00:00:00',NULL,'2014-07-13 14:47:45','2014-07-13 14:47:45',68),(159,-1,-1,5,'2014-06-10 00:00:00','Cita con Martha','2014-07-13 14:49:34','2014-07-13 14:49:34',68),(160,-1,0,5,'2014-06-11 00:00:00',NULL,'2014-07-13 14:52:38','2014-07-13 14:52:38',69),(161,-1,-1,5,'2014-06-11 00:00:00','cita con pepe','2014-07-13 14:53:21','2014-07-13 14:53:21',69),(162,-1,0,5,'2014-06-12 00:00:00',NULL,'2014-07-13 14:56:36','2014-07-13 14:56:36',70),(163,-1,-1,5,'2014-06-12 00:00:00','cita con Mario','2014-07-13 14:57:22','2014-07-13 14:57:22',70),(164,-1,2,5,'2014-06-13 00:00:00',NULL,'2014-07-13 14:58:55','2014-07-13 14:58:55',71),(165,-1,-1,5,'2014-06-13 00:00:00','Llamó Cynthia y me pidió una propuesta','2014-07-13 14:59:46','2014-07-13 14:59:46',71),(166,-1,3,5,'2014-06-14 00:00:00',NULL,'2014-07-13 15:01:54','2014-07-13 15:01:54',72),(167,-1,-1,5,'2014-06-14 00:00:00','Llamo Estela quería poner una orden','2014-07-13 15:02:37','2014-07-13 15:02:37',72),(168,-1,0,5,'2014-06-15 00:00:00',NULL,'2014-07-13 15:23:03','2014-07-13 15:23:03',73),(169,-1,1,5,'2014-06-16 00:00:00',NULL,'2014-07-13 15:25:57','2014-07-13 15:25:57',74),(170,-1,0,5,'2014-06-17 00:00:00',NULL,'2014-07-13 15:29:40','2014-07-13 15:29:40',75),(171,-1,2,5,'2014-06-18 00:00:00',NULL,'2014-07-13 15:30:42','2014-07-13 15:30:42',76),(172,-1,1,5,'2014-06-19 00:00:00',NULL,'2014-07-13 15:34:42','2014-07-13 15:34:42',77),(173,-1,0,5,'2014-06-20 00:00:00',NULL,'2014-07-13 15:35:39','2014-07-13 15:35:39',78),(174,-1,0,5,'2014-06-21 00:00:00',NULL,'2014-07-13 15:37:29','2014-07-13 15:37:29',79),(175,0,1,5,'2014-06-10 00:00:00',NULL,'2014-07-13 15:57:38','2014-07-13 15:57:38',67),(176,0,1,5,'2014-06-11 00:00:00',NULL,'2014-07-13 15:59:18','2014-07-13 15:59:18',68),(177,0,1,5,'2014-06-12 00:00:00',NULL,'2014-07-13 16:03:05','2014-07-13 16:03:05',69),(178,0,1,5,'2014-06-13 00:00:00',NULL,'2014-07-13 16:05:51','2014-07-13 16:05:51',70),(179,3,4,5,'2014-06-15 00:00:00',NULL,'2014-07-13 16:12:54','2014-07-13 16:12:54',72),(180,4,0,5,'2014-06-15 00:00:00',NULL,'2014-07-13 16:14:28','2014-07-13 16:14:28',72),(181,0,4,5,'2014-07-13 00:00:00',NULL,'2014-07-13 16:17:49','2014-07-13 16:17:49',72),(182,0,1,5,'2014-06-16 00:00:00',NULL,'2014-07-13 16:23:31','2014-07-13 16:23:31',73),(183,1,3,5,'2014-06-17 00:00:00',NULL,'2014-07-13 16:29:01','2014-07-13 16:29:01',74),(184,2,3,5,'2014-06-19 00:00:00',NULL,'2014-07-13 16:32:35','2014-07-13 16:32:35',76),(185,0,1,5,'2014-06-21 00:00:00',NULL,'2014-07-13 16:34:51','2014-07-13 16:34:51',78),(186,0,1,5,'2014-06-22 00:00:00',NULL,'2014-07-13 16:39:08','2014-07-13 16:39:08',79),(187,-1,0,5,'2014-07-13 00:00:00',NULL,'2014-07-13 16:52:25','2014-07-13 16:52:25',80),(188,1,2,5,'2014-06-17 00:00:00',NULL,'2014-07-13 17:03:44','2014-07-13 17:03:44',73),(189,3,4,5,'2014-07-13 00:00:00',NULL,'2014-07-13 17:06:22','2014-07-13 17:06:22',74),(190,3,4,5,'2014-07-13 00:00:00',NULL,'2014-07-13 17:18:22','2014-07-13 17:18:22',76),(191,1,2,5,'2014-06-22 00:00:00',NULL,'2014-07-13 17:51:04','2014-07-13 17:51:04',78),(192,1,2,5,'2014-06-23 00:00:00',NULL,'2014-07-13 17:52:25','2014-07-13 17:52:25',79),(193,1,2,5,'2014-06-12 00:00:00',NULL,'2014-07-13 17:55:30','2014-07-13 17:55:30',68),(194,1,2,5,'2014-06-13 00:00:00',NULL,'2014-07-13 17:56:13','2014-07-13 17:56:13',69),(195,1,2,5,'2014-06-14 00:00:00',NULL,'2014-07-13 17:56:56','2014-07-13 17:56:56',70),(196,-1,0,5,'2014-07-14 00:00:00',NULL,'2014-07-14 23:38:35','2014-07-14 23:38:35',81),(197,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 04:52:32','2014-07-15 04:52:32',68),(198,3,4,5,'2014-07-14 00:00:00',NULL,'2014-07-15 04:52:40','2014-07-15 04:52:40',68),(199,0,1,5,'2014-07-14 00:00:00',NULL,'2014-07-15 04:53:01','2014-07-15 04:53:01',81),(200,1,4,5,'2014-07-14 00:00:00',NULL,'2014-07-15 04:53:22','2014-07-15 04:53:22',81),(201,2,0,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:00:08','2014-07-15 05:00:08',69),(202,0,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:13:33','2014-07-15 05:13:33',69),(203,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:44:58','2014-07-15 05:44:58',70),(204,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:45:17','2014-07-15 05:45:17',73),(205,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:45:25','2014-07-15 05:45:25',78),(206,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:45:34','2014-07-15 05:45:34',79),(207,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:50:16','2014-07-15 05:50:16',69),(208,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:50:26','2014-07-15 05:50:26',70),(209,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:50:42','2014-07-15 05:50:42',73),(210,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:50:52','2014-07-15 05:50:52',78),(211,3,0,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:51:05','2014-07-15 05:51:05',79),(212,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:53:14','2014-07-15 05:53:14',70),(213,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:53:26','2014-07-15 05:53:26',70),(214,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:55:46','2014-07-15 05:55:46',69),(215,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:55:50','2014-07-15 05:55:50',69),(216,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:14','2014-07-15 05:58:14',69),(217,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:16','2014-07-15 05:58:16',69),(218,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:28','2014-07-15 05:58:28',69),(219,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:31','2014-07-15 05:58:31',69),(220,2,3,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:47','2014-07-15 05:58:47',69),(221,3,2,5,'2014-07-14 00:00:00',NULL,'2014-07-15 05:58:50','2014-07-15 05:58:50',69),(222,2,3,5,'2014-07-15 00:00:00',NULL,'2014-07-15 07:31:29','2014-07-15 07:31:29',70),(223,2,3,5,'2014-07-15 00:00:00',NULL,'2014-07-15 07:31:29','2014-07-15 07:31:29',70),(224,-1,0,1,'2014-07-24 00:00:00',NULL,'2014-07-24 20:57:14','2014-07-24 20:57:14',82),(225,-1,0,1,'2014-08-15 00:00:00',NULL,'2014-07-25 19:13:13','2014-07-25 19:13:13',83),(226,-1,0,1,'2014-07-17 00:00:00',NULL,'2014-07-28 19:52:35','2014-07-28 19:52:35',84),(227,0,1,1,'2014-07-28 00:00:00',NULL,'2014-07-28 19:54:04','2014-07-28 19:54:04',84),(228,-1,-1,1,'2014-07-28 00:00:00','Hoy le enseñe a Adal El sistema','2014-07-28 19:54:32','2014-07-28 19:54:32',84),(229,1,2,1,'2014-07-31 00:00:00',NULL,'2014-07-28 19:55:15','2014-07-28 19:55:15',84);
/*!40000 ALTER TABLE `cambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id_empresa` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador de la Empresa',
  `nombre_empresa` varchar(45) DEFAULT NULL COMMENT 'Nombre de la Empresa',
  `fecha_creada` varchar(45) DEFAULT NULL COMMENT 'Fecha en que se dio de Alta la Empresa',
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `id_userdata` varchar(45) DEFAULT NULL,
  `concepto` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `impuesto` varchar(45) DEFAULT NULL,
  `fecha_factura` varchar(45) DEFAULT NULL,
  `total` varchar(45) DEFAULT NULL,
  `userdata_id_userdata` int(11) NOT NULL,
  PRIMARY KEY (`id_factura`,`userdata_id_userdata`),
  KEY `fk_facturas_userdata1_idx` (`userdata_id_userdata`),
  CONSTRAINT `fk_facturas_userdata1` FOREIGN KEY (`userdata_id_userdata`) REFERENCES `userdata` (`id_userdata`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_oportunidad` int(11) DEFAULT NULL,
  `texto_nota` text,
  `fecha_nota` timestamp NULL DEFAULT NULL,
  `oportunidades_id_oportunidad` int(11) NOT NULL,
  `oportunidades_fecha_inicio` datetime NOT NULL,
  `oportunidades_usuarios_id_usuario` int(11) NOT NULL,
  `oportunidades_empresas_id_empresa` int(11) NOT NULL,
  `oportunidades_cambios_id_cambio` int(11) NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `fk_notas_oportunidades1_idx` (`oportunidades_id_oportunidad`,`oportunidades_fecha_inicio`,`oportunidades_usuarios_id_usuario`,`oportunidades_empresas_id_empresa`,`oportunidades_cambios_id_cambio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oportunidads`
--

DROP TABLE IF EXISTS `oportunidads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oportunidads`
--

LOCK TABLES `oportunidads` WRITE;
/*!40000 ALTER TABLE `oportunidads` DISABLE KEYS */;
INSERT INTO `oportunidads` (`id`, `nombre`, `detalle`, `fecha_inicio`, `fecha_final`, `estado_actual`, `cantidad`, `usuario_id`, `empresa_id`, `visible`, `created_at`, `updated_at`) VALUES (14,'Comex','','2014-04-01 03:22:25','2014-06-14 01:10:22',4,15000.00,1,1,1,'2014-04-09 10:22:59','2014-06-14 07:20:32'),(15,'True Ads','','2014-04-02 03:23:05','2014-04-23 03:52:52',4,20000.00,1,1,0,'2014-04-09 10:23:27','2014-07-10 07:10:25'),(16,'Oracle 3','','2014-04-04 03:23:33','2014-06-16 00:00:00',4,18000.00,1,1,1,'2014-04-09 10:23:43','2014-06-17 05:25:24'),(17,'Asociación Chrysler','Este es el detalle de la operación.','2014-04-10 03:41:38','2014-06-16 00:00:00',4,10000.00,1,1,1,'2014-04-09 10:41:55','2014-06-17 05:25:16'),(18,'AB2','','2014-04-15 03:44:28','2014-06-12 23:32:46',4,14000.00,1,1,1,'2014-04-09 10:44:46','2014-06-14 06:24:57'),(19,'Colgate App','Glimpse','2014-04-16 03:48:20','2014-06-19 00:00:00',4,190000.00,1,1,1,'2014-04-09 10:48:37','2014-06-19 23:47:05'),(20,'LA1','','2014-04-17 03:48:45',NULL,1,0.00,1,1,1,'2014-04-09 10:49:10','2014-06-14 07:40:37'),(21,'Cliente Camiones','Buena Venta','2014-04-18 03:49:15','2014-06-12 05:12:58',4,23440.00,1,1,1,'2014-04-09 10:49:27','2014-06-12 12:14:05'),(22,'OB 1','Esta es una excelente oportunidad','2014-04-08 03:50:24',NULL,3,1150.00,1,1,1,'2014-04-09 10:50:37','2014-06-17 05:27:15'),(23,'ME1','','2014-04-24 04:44:45',NULL,1,0.00,1,1,1,'2014-04-09 11:45:27','2014-06-17 05:24:48'),(24,'PP1','','2014-04-25 04:45:35',NULL,1,0.00,1,1,1,'2014-04-09 11:45:45','2014-06-17 05:24:40'),(25,'CC1','','2014-04-30 04:49:54',NULL,1,0.00,1,1,1,'2014-04-09 11:50:04','2014-06-17 05:24:57'),(26,'MO1','','2014-05-01 04:50:07',NULL,1,0.00,1,1,1,'2014-04-09 11:50:20','2014-06-17 05:25:04'),(27,'AA1','','2014-05-07 04:52:53','2014-05-07 04:53:19',4,5000.00,1,1,1,'2014-04-09 11:53:17','2014-04-09 11:53:41'),(28,'Volvo Morelia','Vio mi perfil en Facebook y mande un mensaje','2014-06-12 05:14:46','2014-06-16 00:00:00',4,35000.00,1,1,1,'2014-06-12 12:15:26','2014-06-17 05:26:43'),(29,'New OP','Inicia en PC','2014-06-16 00:00:00',NULL,0,0.00,1,1,1,'2014-06-17 06:53:29','2014-06-17 06:53:29'),(30,'Op3','Empieza en Paso 3','2014-06-16 00:00:00',NULL,0,25000.00,1,1,1,'2014-06-17 06:55:07','2014-06-17 06:55:07'),(31,'Op09','','2014-06-16 00:00:00',NULL,2,30000.00,1,1,1,'2014-06-17 06:57:47','2014-06-17 06:58:16'),(32,'opp9','Inicia en Cierre','2014-06-16 00:00:00',NULL,4,15000.00,1,1,1,'2014-06-17 06:58:52','2014-06-17 06:58:52'),(33,'Mi Nueva Oportunidad','Mi detalle','2014-06-17 00:00:00','2014-06-18 00:00:00',4,25000.00,1,1,1,'2014-06-17 07:09:40','2014-06-18 17:47:27'),(34,'Oportunidad 3','mi op 23','2014-06-17 00:00:00','2014-06-17 00:00:00',4,15000.00,1,1,1,'2014-06-17 07:15:58','2014-06-17 07:16:05'),(35,'Mi Oportunidad','Hola ','2014-06-20 00:00:00',NULL,0,0.00,1,1,1,'2014-06-20 00:03:50','2014-06-20 00:03:50'),(36,'Mi Nueva Oportunidad','Esta es','2014-06-19 00:00:00',NULL,0,25000.00,4,1,1,'2014-06-20 06:25:53','2014-06-20 06:25:53'),(51,'A1','prueba 1','2014-05-23 00:00:00','2014-07-10 00:00:00',4,1000.00,3,1,1,'2014-06-30 18:29:55','2014-07-10 08:44:42'),(52,'A2','','2014-05-24 00:00:00',NULL,3,2000.00,3,1,1,'2014-06-30 18:31:46','2014-07-10 08:45:20'),(53,'A3','','2014-05-25 00:00:00','2014-07-10 00:00:00',4,3000.00,3,1,1,'2014-06-30 18:33:36','2014-07-10 08:45:50'),(54,'A4','','2014-05-26 00:00:00',NULL,1,4000.00,3,1,1,'2014-06-30 18:35:37','2014-06-30 19:29:32'),(57,'A7','','2014-05-29 00:00:00',NULL,0,7000.00,3,1,1,'2014-06-30 18:43:01','2014-06-30 18:43:01'),(59,'A5','','2014-05-27 00:00:00',NULL,2,5000.00,3,1,0,'2014-06-30 18:55:23','2014-06-30 19:33:13'),(60,'A6','','2014-05-28 00:00:00','2014-06-30 00:00:00',4,6000.00,3,1,1,'2014-06-30 18:56:26','2014-06-30 19:35:02'),(61,'A8','','2014-05-30 00:00:00',NULL,1,8000.00,3,1,1,'2014-06-30 18:57:21','2014-06-30 18:57:21'),(62,'A9','','2014-06-30 00:00:00',NULL,0,0.00,3,1,0,'2014-06-30 18:58:38','2014-06-30 19:38:56'),(63,'A10','','2014-06-01 00:00:00','2014-07-10 00:00:00',4,10000.00,3,1,1,'2014-06-30 18:59:36','2014-07-10 08:41:53'),(64,'A11','','2014-06-02 00:00:00',NULL,1,11000.00,3,1,0,'2014-06-30 19:00:58','2014-06-30 19:42:44'),(65,'A12','','2014-06-03 00:00:00',NULL,1,12000.00,3,1,1,'2014-06-30 19:01:55','2014-06-30 19:43:42'),(66,'A13','','2014-06-04 00:00:00',NULL,2,13000.00,3,1,1,'2014-06-30 19:05:21','2014-06-30 19:55:33'),(67,'A1','','2014-06-09 00:00:00',NULL,1,1000.00,5,1,0,'2014-07-13 14:45:10','2014-07-13 17:54:01'),(68,'A2','','2014-06-10 00:00:00','2014-07-14 00:00:00',4,2000.00,5,1,0,'2014-07-13 14:47:45','2014-07-15 06:11:57'),(69,'A3','Este es el detalle de esta Oportunidad en Particular.','2014-06-11 00:00:00',NULL,2,3000.00,5,1,1,'2014-07-13 14:52:38','2014-07-15 06:57:29'),(70,'A4','','2014-06-12 00:00:00',NULL,3,4000.00,5,1,1,'2014-07-13 14:56:36','2014-07-15 07:31:29'),(71,'A5','','2014-06-13 00:00:00',NULL,2,5000.00,5,1,0,'2014-07-13 14:58:55','2014-07-13 16:06:34'),(72,'A6','','2014-06-14 00:00:00','2014-07-13 00:00:00',4,6000.00,5,1,1,'2014-07-13 15:01:54','2014-07-13 16:17:49'),(73,'A7','','2014-06-15 00:00:00',NULL,2,7000.00,5,1,1,'2014-07-13 15:23:03','2014-07-15 05:50:42'),(74,'A8','','2014-06-16 00:00:00','2014-07-13 00:00:00',4,8000.00,5,1,1,'2014-07-13 15:25:57','2014-07-13 17:06:22'),(75,'A9','','2014-06-17 00:00:00',NULL,0,9000.00,5,1,0,'2014-07-13 15:29:40','2014-07-13 16:30:16'),(76,'A10','','2014-06-18 00:00:00','2014-07-13 00:00:00',4,10000.00,5,1,1,'2014-07-13 15:30:42','2014-07-13 17:18:22'),(77,'A11','','2014-06-19 00:00:00',NULL,1,11000.00,5,1,0,'2014-07-13 15:34:42','2014-07-13 16:34:17'),(78,'A12','','2014-06-20 00:00:00',NULL,2,12000.00,5,1,1,'2014-07-13 15:35:39','2014-07-15 05:50:52'),(79,'A13','','2014-06-21 00:00:00',NULL,0,13000.00,5,1,1,'2014-07-13 15:37:29','2014-07-15 05:51:05'),(80,'A14','','2014-07-13 00:00:00',NULL,0,0.00,5,1,0,'2014-07-13 16:52:25','2014-07-13 16:52:50'),(81,'ABC','cursos','2014-07-14 00:00:00','2014-07-14 00:00:00',4,25000.00,5,1,1,'2014-07-14 23:38:35','2014-07-15 04:53:22'),(82,'','','2014-07-24 00:00:00',NULL,0,0.00,1,1,1,'2014-07-24 20:57:14','2014-07-24 20:58:05'),(83,'Prueba zaida','x o  y','2014-08-15 00:00:00',NULL,0,500.00,1,1,0,'2014-07-25 19:13:13','2014-07-25 19:19:08'),(84,'Coca Cola','Estrategia de Redes Sociales','2014-07-17 00:00:00',NULL,2,45000.00,1,1,1,'2014-07-28 19:52:35','2014-07-28 19:55:15');
/*!40000 ALTER TABLE `oportunidads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_metodo` int(11) DEFAULT NULL,
  `id_paypal` int(11) DEFAULT NULL,
  `fecha_pago` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `vigencia_pago` datetime DEFAULT NULL,
  `facturas_id_factura` int(11) NOT NULL,
  PRIMARY KEY (`id_pago`,`facturas_id_factura`),
  KEY `fk_pagos_facturas1_idx` (`facturas_id_factura`),
  CONSTRAINT `fk_pagos_facturas1` FOREIGN KEY (`facturas_id_factura`) REFERENCES `facturas` (`id_factura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` (`id_tipo`, `nombre`, `descripcion`, `nivel`) VALUES (1,'Admin','Todo Poderoso','0'),(2,'base','Simple','1');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdata` (
  `id_userdata` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `apellido_usuario` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `apellido2_usuario` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `telefono1` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `id_direccion` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `paypal_user` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `RFC` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `id_direccion_facturacion` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `id_razon_facturacion` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`id_userdata`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdata`
--

LOCK TABLES `userdata` WRITE;
/*!40000 ALTER TABLE `userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `username`, `password`, `is_admin`, `created_at`, `updated_at`) VALUES (1,'Pedro Escudero','sonichaos','$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy',1,'2014-05-13 11:43:51','2014-05-13 11:43:51'),(2,'Juan Bosco','juan','$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy',0,'2014-05-13 11:43:52','2014-05-13 11:43:52'),(3,'Carlos Conde','carlos','$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy',1,'2014-05-13 11:43:51','2014-05-13 11:43:51'),(4,'Erik Nieto','erik','$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy',0,'2014-05-13 11:43:52','2014-05-13 11:43:52'),(5,'Carlos Conde','carlosc','$2y$10$.ltp16FPgdiKtE0V4X1VPOlRHxSDAlVFdB3iCpnkKsXUx7GWTNffy',1,'2014-07-12 17:39:57',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariosold`
--

DROP TABLE IF EXISTS `usuariosold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariosold` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT '\nIdentificador de Usuario\n',
  `email` varchar(45) DEFAULT NULL COMMENT '\nEmail del Usuario',
  `pass` varchar(45) DEFAULT NULL COMMENT '\n\nPasswords del Usuario',
  `username` varchar(100) DEFAULT NULL COMMENT '\n\nNombre del Usuario',
  `tipousuario_id_tipo` int(11) NOT NULL COMMENT '\nTipo de Usuario',
  `userdata_id_userdata` int(11) NOT NULL COMMENT '\n\nIndice relación entre el usuario y la tabla\nde más detalles del usuario.',
  `empresas_id_empresa` int(11) NOT NULL COMMENT '\nIndice de relación entre la \nEmpresa y el Usuario.',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariosold`
--

LOCK TABLES `usuariosold` WRITE;
/*!40000 ALTER TABLE `usuariosold` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariosold` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-28 12:55:31
