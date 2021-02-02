-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accruals`
--

DROP TABLE IF EXISTS `accruals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accruals` (
  `user_id` bigint unsigned NOT NULL COMMENT 'ссылка на клиента',
  `date_period` date NOT NULL COMMENT 'расчетный период',
  `accruals_amount` int NOT NULL COMMENT 'размер начисления',
  `accruals_name` varchar(100) NOT NULL COMMENT 'название начисления',
  KEY `accruals_users_id_fk` (`user_id`),
  CONSTRAINT `accruals_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accruals`
--

LOCK TABLES `accruals` WRITE;
/*!40000 ALTER TABLE `accruals` DISABLE KEYS */;
INSERT INTO `accruals` VALUES (1,'2020-01-01',500,'inter_01 internet xPON'),(2,'2020-01-01',500,'inter_02 internet FTTx'),(3,'2020-01-01',500,'inter_03 internet xDSL'),(4,'2020-01-01',500,'inter_04 internet xPON'),(5,'2020-01-01',500,'inter_05 internet xPON'),(6,'2020-01-01',500,'inter_06 internet xPON'),(7,'2020-01-01',1000,'inter_07 big_internet xPON'),(8,'2020-01-01',500,'inter_08 internet xPON'),(9,'2020-01-01',500,'inter_09 internet xPON'),(10,'2020-01-01',500,'inter_10 internet xPON'),(11,'2020-01-01',500,'inter_11 internet xPON'),(12,'2020-01-01',1000,'inter_12 big_internet xPON'),(13,'2020-01-01',500,'inter_13 internet xPON'),(14,'2020-01-01',500,'inter_14 internet xPON'),(15,'2020-01-01',100,'inter_15 unic_internet xPON'),(16,'2020-01-01',500,'inter_16 internet xPON'),(17,'2020-01-01',100,'inter_17 unic_internet xPON'),(18,'2020-01-01',500,'inter_18 internet xPON'),(19,'2020-01-01',500,'inter_19 internet xPON'),(1,'2020-01-01',500,'iptv_01 TV xPON'),(20,'2020-01-01',500,'iptv_02 TV xPON'),(21,'2020-01-01',500,'iptv_03 TV xPON'),(22,'2020-01-01',500,'iptv_04 TV xPON'),(23,'2020-01-01',500,'iptv_05 TV xPON'),(24,'2020-01-01',500,'iptv_06 TV xPON'),(25,'2020-01-01',500,'iptv_07 TV xPON'),(2,'2020-01-01',500,'iptv_08 TV FTTx'),(3,'2020-01-01',500,'iptv_09 TV xDSL'),(25,'2020-01-01',500,'iptv_10 TV xPON'),(25,'2020-01-01',500,'iptv_11 TV xPON'),(2,'2020-02-01',500,'inter_02 internet FTTx'),(3,'2020-02-01',500,'inter_03 internet xDSL'),(7,'2020-02-01',1000,'inter_07 big_internet xPON'),(12,'2020-02-01',1000,'inter_12 big_internet xPON'),(1,'2020-02-01',500,'inter_01 internet xPON'),(4,'2020-02-01',500,'inter_04 internet xPON'),(5,'2020-02-01',500,'inter_05 internet xPON'),(6,'2020-02-01',500,'inter_06 internet xPON'),(8,'2020-02-01',500,'inter_08 internet xPON'),(9,'2020-02-01',500,'inter_09 internet xPON'),(10,'2020-02-01',500,'inter_10 internet xPON'),(11,'2020-02-01',500,'inter_11 internet xPON'),(13,'2020-02-01',500,'inter_13 internet xPON'),(14,'2020-02-01',500,'inter_14 internet xPON'),(16,'2020-02-01',500,'inter_16 internet xPON'),(18,'2020-02-01',500,'inter_18 internet xPON'),(19,'2020-02-01',500,'inter_19 internet xPON'),(15,'2020-02-01',100,'inter_15 unic_internet xPON'),(17,'2020-02-01',100,'inter_17 unic_internet xPON'),(2,'2020-02-01',500,'iptv_08 TV FTTx'),(3,'2020-02-01',500,'iptv_09 TV xDSL'),(1,'2020-02-01',500,'iptv_01 TV xPON'),(20,'2020-02-01',500,'iptv_02 TV xPON'),(21,'2020-02-01',500,'iptv_03 TV xPON'),(22,'2020-02-01',500,'iptv_04 TV xPON'),(23,'2020-02-01',500,'iptv_05 TV xPON'),(24,'2020-02-01',500,'iptv_06 TV xPON'),(25,'2020-02-01',500,'iptv_07 TV xPON'),(25,'2020-02-01',500,'iptv_10 TV xPON'),(25,'2020-02-01',500,'iptv_11 TV xPON'),(2,'2020-03-01',500,'inter_02 internet FTTx'),(3,'2020-03-01',500,'inter_03 internet xDSL'),(7,'2020-03-01',1000,'inter_07 big_internet xPON'),(12,'2020-03-01',1000,'inter_12 big_internet xPON'),(1,'2020-03-01',500,'inter_01 internet xPON'),(4,'2020-03-01',500,'inter_04 internet xPON'),(5,'2020-03-01',500,'inter_05 internet xPON'),(6,'2020-03-01',500,'inter_06 internet xPON'),(8,'2020-03-01',500,'inter_08 internet xPON'),(9,'2020-03-01',500,'inter_09 internet xPON'),(10,'2020-03-01',500,'inter_10 internet xPON'),(11,'2020-03-01',500,'inter_11 internet xPON'),(13,'2020-03-01',500,'inter_13 internet xPON'),(14,'2020-03-01',500,'inter_14 internet xPON'),(16,'2020-03-01',500,'inter_16 internet xPON'),(18,'2020-03-01',500,'inter_18 internet xPON'),(19,'2020-03-01',500,'inter_19 internet xPON'),(15,'2020-03-01',100,'inter_15 unic_internet xPON'),(17,'2020-03-01',100,'inter_17 unic_internet xPON'),(2,'2020-03-01',500,'iptv_08 TV FTTx'),(3,'2020-03-01',500,'iptv_09 TV xDSL'),(1,'2020-03-01',500,'iptv_01 TV xPON'),(20,'2020-03-01',500,'iptv_02 TV xPON'),(21,'2020-03-01',500,'iptv_03 TV xPON'),(22,'2020-03-01',500,'iptv_04 TV xPON'),(23,'2020-03-01',500,'iptv_05 TV xPON'),(24,'2020-03-01',500,'iptv_06 TV xPON'),(25,'2020-03-01',500,'iptv_07 TV xPON'),(25,'2020-03-01',500,'iptv_10 TV xPON'),(25,'2020-03-01',500,'iptv_11 TV xPON'),(2,'2020-04-01',500,'inter_02 internet FTTx'),(3,'2020-04-01',500,'inter_03 internet xDSL'),(7,'2020-04-01',1000,'inter_07 big_internet xPON'),(12,'2020-04-01',1000,'inter_12 big_internet xPON'),(1,'2020-04-01',500,'inter_01 internet xPON'),(4,'2020-04-01',500,'inter_04 internet xPON'),(5,'2020-04-01',500,'inter_05 internet xPON'),(6,'2020-04-01',500,'inter_06 internet xPON'),(8,'2020-04-01',500,'inter_08 internet xPON'),(9,'2020-04-01',500,'inter_09 internet xPON'),(10,'2020-04-01',500,'inter_10 internet xPON'),(11,'2020-04-01',500,'inter_11 internet xPON'),(13,'2020-04-01',500,'inter_13 internet xPON'),(14,'2020-04-01',500,'inter_14 internet xPON'),(16,'2020-04-01',500,'inter_16 internet xPON'),(18,'2020-04-01',500,'inter_18 internet xPON'),(19,'2020-04-01',500,'inter_19 internet xPON'),(15,'2020-04-01',100,'inter_15 unic_internet xPON'),(17,'2020-04-01',100,'inter_17 unic_internet xPON'),(2,'2020-04-01',500,'iptv_08 TV FTTx'),(3,'2020-04-01',500,'iptv_09 TV xDSL'),(1,'2020-04-01',500,'iptv_01 TV xPON'),(20,'2020-04-01',500,'iptv_02 TV xPON'),(21,'2020-04-01',500,'iptv_03 TV xPON'),(22,'2020-04-01',500,'iptv_04 TV xPON'),(23,'2020-04-01',500,'iptv_05 TV xPON'),(24,'2020-04-01',500,'iptv_06 TV xPON'),(25,'2020-04-01',500,'iptv_07 TV xPON'),(25,'2020-04-01',500,'iptv_10 TV xPON'),(25,'2020-04-01',500,'iptv_11 TV xPON'),(2,'2020-05-01',500,'inter_02 internet FTTx'),(3,'2020-05-01',500,'inter_03 internet xDSL'),(7,'2020-05-01',1000,'inter_07 big_internet xPON'),(12,'2020-05-01',1000,'inter_12 big_internet xPON'),(1,'2020-05-01',500,'inter_01 internet xPON'),(4,'2020-05-01',500,'inter_04 internet xPON'),(5,'2020-05-01',500,'inter_05 internet xPON'),(6,'2020-05-01',500,'inter_06 internet xPON'),(8,'2020-05-01',500,'inter_08 internet xPON'),(9,'2020-05-01',500,'inter_09 internet xPON'),(10,'2020-05-01',500,'inter_10 internet xPON'),(11,'2020-05-01',500,'inter_11 internet xPON'),(13,'2020-05-01',500,'inter_13 internet xPON'),(14,'2020-05-01',500,'inter_14 internet xPON'),(16,'2020-05-01',500,'inter_16 internet xPON'),(18,'2020-05-01',500,'inter_18 internet xPON'),(19,'2020-05-01',500,'inter_19 internet xPON'),(15,'2020-05-01',100,'inter_15 unic_internet xPON'),(17,'2020-05-01',100,'inter_17 unic_internet xPON'),(2,'2020-05-01',500,'iptv_08 TV FTTx'),(3,'2020-05-01',500,'iptv_09 TV xDSL'),(1,'2020-05-01',500,'iptv_01 TV xPON'),(20,'2020-05-01',500,'iptv_02 TV xPON'),(21,'2020-05-01',500,'iptv_03 TV xPON'),(22,'2020-05-01',500,'iptv_04 TV xPON'),(23,'2020-05-01',500,'iptv_05 TV xPON'),(24,'2020-05-01',500,'iptv_06 TV xPON'),(25,'2020-05-01',500,'iptv_07 TV xPON'),(25,'2020-05-01',500,'iptv_10 TV xPON'),(25,'2020-05-01',500,'iptv_11 TV xPON'),(2,'2020-06-01',500,'inter_02 internet FTTx'),(3,'2020-06-01',500,'inter_03 internet xDSL'),(7,'2020-06-01',1000,'inter_07 big_internet xPON'),(12,'2020-06-01',1000,'inter_12 big_internet xPON'),(1,'2020-06-01',500,'inter_01 internet xPON'),(4,'2020-06-01',500,'inter_04 internet xPON'),(5,'2020-06-01',500,'inter_05 internet xPON'),(6,'2020-06-01',500,'inter_06 internet xPON'),(8,'2020-06-01',500,'inter_08 internet xPON'),(9,'2020-06-01',500,'inter_09 internet xPON'),(10,'2020-06-01',500,'inter_10 internet xPON'),(11,'2020-06-01',500,'inter_11 internet xPON'),(13,'2020-06-01',500,'inter_13 internet xPON'),(14,'2020-06-01',500,'inter_14 internet xPON'),(16,'2020-06-01',500,'inter_16 internet xPON'),(18,'2020-06-01',500,'inter_18 internet xPON'),(19,'2020-06-01',500,'inter_19 internet xPON'),(15,'2020-06-01',100,'inter_15 unic_internet xPON'),(17,'2020-06-01',100,'inter_17 unic_internet xPON'),(2,'2020-06-01',500,'iptv_08 TV FTTx'),(3,'2020-06-01',500,'iptv_09 TV xDSL'),(1,'2020-06-01',500,'iptv_01 TV xPON'),(20,'2020-06-01',500,'iptv_02 TV xPON'),(21,'2020-06-01',500,'iptv_03 TV xPON'),(22,'2020-06-01',500,'iptv_04 TV xPON'),(23,'2020-06-01',500,'iptv_05 TV xPON'),(24,'2020-06-01',500,'iptv_06 TV xPON'),(25,'2020-06-01',500,'iptv_07 TV xPON'),(25,'2020-06-01',500,'iptv_10 TV xPON'),(25,'2020-06-01',500,'iptv_11 TV xPON');
/*!40000 ALTER TABLE `accruals` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `accruals_to_balance` AFTER INSERT ON `accruals` FOR EACH ROW BEGIN
    UPDATE users SET balance = users.balance - NEW.accruals_amount WHERE users.id = NEW.user_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'уникальный идентификатор адреса',
  `city` varchar(100) NOT NULL COMMENT 'Город',
  `street` varchar(100) NOT NULL COMMENT 'улица',
  `building` varchar(100) NOT NULL COMMENT 'дом',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`city`,`street`,`building`) COMMENT 'составной ключ адреса',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Moscow','Lenina','1','2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'Moscow','Lenina','2','2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,'Moscow','Lenina','3','2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,'Moscow','Lenina','4','2021-02-02 13:38:31','2021-02-02 13:38:31'),(5,'Moscow','Mira','1','2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,'Moscow','Mira','2','2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,'Moscow','Mira','3','2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,'Moscow','Sadovaya','1','2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,'Moscow','Sadovaya','2','2021-02-02 13:38:31','2021-02-02 13:38:31'),(10,'Rostow','Drujbi','1','2021-02-02 13:38:31','2021-02-02 13:38:31'),(11,'Rostow','Drujbi','2','2021-02-02 13:38:31','2021-02-02 13:38:31'),(12,'Rostow','Drujbi','3','2021-02-02 13:38:31','2021-02-02 13:38:31'),(13,'Rostow','Roz','1','2021-02-02 13:38:31','2021-02-02 13:38:31'),(14,'Rostow','Roz','1/2','2021-02-02 13:38:31','2021-02-02 13:38:31'),(15,'Rostow','Roz','1/3','2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `client`
--

DROP TABLE IF EXISTS `client`;
/*!50001 DROP VIEW IF EXISTS `client`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `client` AS SELECT 
 1 AS `account`,
 1 AS `balance`,
 1 AS `full_name`,
 1 AS `passport`,
 1 AS `e-mail`,
 1 AS `phone`,
 1 AS `client_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `client_connections`
--

DROP TABLE IF EXISTS `client_connections`;
/*!50001 DROP VIEW IF EXISTS `client_connections`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `client_connections` AS SELECT 
 1 AS `account`,
 1 AS `access_card`,
 1 AS `service`,
 1 AS `tariff`,
 1 AS `cost`,
 1 AS `speed`,
 1 AS `technology`,
 1 AS `service_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'уникальный идентификатор подключения',
  `name` varchar(25) NOT NULL COMMENT 'уникальное имя подключения',
  `user_id` bigint unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `service_type_id` tinyint unsigned NOT NULL COMMENT 'ссылка на тип услуги',
  `tariff_plan_id` int unsigned NOT NULL COMMENT 'ссылка на тарифный план',
  `user_login` varchar(25) NOT NULL COMMENT 'логин',
  `user_password` varchar(25) NOT NULL COMMENT 'пароль',
  `commentary` varchar(255) DEFAULT NULL COMMENT 'комментарий',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `user_login` (`user_login`),
  KEY `connections_users_id_fk` (`user_id`),
  KEY `connections_service_type_id_fk` (`service_type_id`),
  KEY `connections_tariff_plan_id_fk` (`tariff_plan_id`),
  KEY `connections_user_login_user_password_idx` (`user_login`,`user_password`),
  CONSTRAINT `connections_service_type_id_fk` FOREIGN KEY (`service_type_id`) REFERENCES `service_type` (`id`),
  CONSTRAINT `connections_tariff_plan_id_fk` FOREIGN KEY (`tariff_plan_id`) REFERENCES `tariff_plan` (`id`),
  CONSTRAINT `connections_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (1,'inter_01',1,1,1,'u_login1','aa921bd6aed1fd63b07910fb6',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'inter_02',2,1,2,'u_login2','a9f129fc3554ed8c40b692f0e',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,'inter_03',3,1,3,'u_login3','f8dbfd959564dbc9369876e38',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,'inter_04',4,1,1,'u_login4','f0fc00d1661f2c7605cf6335d',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(5,'inter_05',5,1,1,'u_login5','0ff753a5e12350778b9682853',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,'inter_06',6,1,1,'u_login6','e4bb63262c28c50580e826c83',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,'inter_07',7,1,4,'u_login7','7a246427816e6fa1cca98e162',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,'inter_08',8,1,1,'u_login8','144e0440a1d5197c29691d92a',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,'inter_09',9,1,1,'u_login9','4d5ea26aa8631858650699c05',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(10,'inter_10',10,1,1,'u_login10','7e4faed0d889e69e8897dd9a7',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(11,'inter_11',11,1,1,'u_login11','f9bd1584d3fabdc64b9204da0',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(12,'inter_12',12,1,4,'u_login12','fe0d7de0c662374b8b68ba3d7',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(13,'inter_13',13,1,1,'u_login13','a72ab72cbd27e0ecc2a8e2ed3',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(14,'inter_14',14,1,1,'u_login14','72b399b31f2a2c1e966d81894',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(15,'inter_15',15,1,6,'u_login15','7689f484ac997c9c6d423a197',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(16,'inter_16',16,1,1,'u_login16','43f0b1e28e8c51dea1f5c3627',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(17,'inter_17',17,1,6,'u_login17','6ef16df8c895fbc98ad65214e',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(18,'inter_18',18,1,1,'u_login18','a74d191fc6c08a55926af5dcf',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(19,'inter_19',19,1,1,'u_login19','d6873bf5d87f926b99c1de340',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(20,'iptv_01',1,2,7,'tv_login1','de119ea57e2feb22c173a1d23',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(21,'iptv_02',20,2,7,'tv_login2','b1b01c74b2b67d56a025c553b',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(22,'iptv_03',21,2,7,'tv_login3','5ce982436c39edb5ef07acfd4',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(23,'iptv_04',22,2,7,'tv_login4','0971efeaec57bd51961dafa66',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(24,'iptv_05',23,2,7,'tv_login5','383bd60ff7a1442e461dfedda',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(25,'iptv_06',24,2,7,'tv_login6','5c7f661c8f8d9b92f8652369c',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(26,'iptv_07',25,2,7,'tv_login7','8f276d8d952194864ee01c8a5',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(27,'iptv_08',2,2,8,'tv_login8','ce318e7dea60a2c35d7c7f565',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(28,'iptv_09',3,2,9,'tv_login9','c545df79f402b6088951be8eb',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(29,'iptv_10',25,2,7,'tv_login10','57ad52e19ede7c6d0effbf075',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(30,'iptv_11',25,2,7,'tv_login11','3a05ddf567e67a9c66a36d7f9',NULL,'2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections_tech`
--

DROP TABLE IF EXISTS `connections_tech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connections_tech` (
  `connections_id` bigint unsigned NOT NULL COMMENT 'ссылка на подключение',
  `technology_type` enum('FTTx','xDSL','xPON') NOT NULL COMMENT 'тип технологии',
  `address_id` int unsigned NOT NULL COMMENT 'ссылка на адрес установки',
  `address_ap` int unsigned NOT NULL DEFAULT '0' COMMENT 'Номер квартир установки',
  `techbase_id` bigint unsigned NOT NULL COMMENT 'ссылка на техданные',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`connections_id`),
  KEY `connections_tech_address_id_fk` (`address_id`),
  KEY `connections_tech_techbase_id_fk` (`techbase_id`),
  CONSTRAINT `connections_tech_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `connections_tech_connections_id_fk` FOREIGN KEY (`connections_id`) REFERENCES `connections` (`id`),
  CONSTRAINT `connections_tech_techbase_id_fk` FOREIGN KEY (`techbase_id`) REFERENCES `techbase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections_tech`
--

LOCK TABLES `connections_tech` WRITE;
/*!40000 ALTER TABLE `connections_tech` DISABLE KEYS */;
INSERT INTO `connections_tech` VALUES (1,'xPON',1,1,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'FTTx',1,2,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,'xDSL',2,1,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,'xPON',2,2,4,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(5,'xPON',2,5,5,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,'xPON',3,1,6,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,'xPON',3,1,7,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,'xPON',4,1,8,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,'xPON',1,11,9,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(10,'xPON',3,12,10,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(11,'xPON',9,1,11,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(12,'xPON',3,11,12,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(13,'xPON',2,15,13,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(14,'xPON',12,1,14,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(15,'xPON',9,1,15,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(16,'xPON',2,5,16,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(17,'xPON',8,1,17,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(18,'xPON',7,3,18,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(19,'xPON',13,1,19,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(20,'xPON',1,1,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(21,'xPON',5,9,20,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(22,'xPON',7,1,22,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(23,'xPON',1,7,23,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(24,'xPON',5,1,24,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(25,'xPON',14,0,24,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(26,'xPON',15,0,25,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(27,'FTTx',1,2,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(28,'xDSL',2,2,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(29,'xPON',15,0,25,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(30,'xPON',15,0,25,'2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `connections_tech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_history`
--

DROP TABLE IF EXISTS `payment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор оплаты',
  `user_id` bigint unsigned NOT NULL COMMENT 'ссылка на пользователя',
  `payment` int NOT NULL COMMENT 'размер платежа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата оплаты',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `payment_history_users_id_fk` (`user_id`),
  CONSTRAINT `payment_history_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_history`
--

LOCK TABLES `payment_history` WRITE;
/*!40000 ALTER TABLE `payment_history` DISABLE KEYS */;
INSERT INTO `payment_history` VALUES (1,4,210,'2020-09-26 13:01:35'),(2,15,94,'2020-07-25 11:09:02'),(3,24,667,'2020-03-26 06:44:34'),(4,25,198,'2020-12-13 16:57:04'),(5,23,435,'2020-11-10 04:47:07'),(6,11,26,'2021-01-18 20:26:01'),(7,18,122,'2020-06-10 11:51:59'),(8,16,395,'2020-12-28 10:55:44'),(9,19,484,'2020-02-25 04:21:59'),(10,8,168,'2020-11-15 17:31:17'),(11,11,451,'2020-03-07 14:29:38'),(12,25,281,'2020-08-14 06:40:33'),(13,7,118,'2020-05-10 10:26:40'),(14,23,605,'2020-12-07 09:17:26'),(15,25,362,'2021-01-14 11:19:40'),(16,23,608,'2020-07-05 19:19:20'),(17,8,53,'2020-02-10 08:23:57'),(18,14,690,'2020-09-30 01:08:28'),(19,7,630,'2020-04-22 20:16:02'),(20,6,238,'2020-04-15 02:46:39'),(21,4,38,'2020-06-01 06:57:21'),(22,22,410,'2020-09-06 13:43:58'),(23,11,735,'2020-10-18 02:53:08'),(24,8,724,'2020-10-31 13:59:45'),(25,5,964,'2021-01-11 18:38:07'),(26,24,913,'2020-09-28 13:08:32'),(27,10,49,'2020-05-03 07:09:19'),(28,7,686,'2020-05-25 06:53:33'),(29,21,738,'2020-07-31 14:44:41'),(30,20,3,'2020-06-04 04:06:16'),(31,2,632,'2020-06-23 06:19:56'),(32,24,495,'2020-05-23 03:34:46'),(33,4,667,'2020-11-14 07:46:02'),(34,17,845,'2020-05-14 04:25:57'),(35,1,236,'2020-02-11 23:43:39'),(36,19,752,'2020-06-07 21:07:19'),(37,6,93,'2020-12-30 06:40:40'),(38,13,842,'2020-10-08 22:38:11'),(39,23,570,'2020-07-01 18:16:45'),(40,17,538,'2020-11-24 19:13:39'),(41,3,289,'2020-02-07 11:03:46'),(42,6,215,'2020-12-13 10:16:37'),(43,10,829,'2020-07-23 02:01:56'),(44,10,454,'2020-06-27 10:53:21'),(45,11,893,'2020-10-14 22:08:27'),(46,8,594,'2020-04-12 15:22:00'),(47,20,864,'2020-12-06 01:18:14'),(48,22,99,'2020-03-18 09:40:53'),(49,19,822,'2020-05-05 22:52:15'),(50,19,736,'2020-03-23 16:29:51'),(51,14,499,'2020-12-23 17:14:48'),(52,1,693,'2020-11-17 23:29:57'),(53,24,226,'2020-09-29 12:32:21'),(54,13,352,'2020-09-11 21:46:03'),(55,16,299,'2020-02-25 02:09:59'),(56,12,13,'2020-08-11 01:14:14'),(57,2,856,'2020-12-26 10:48:14'),(58,25,942,'2020-07-23 16:33:33'),(59,8,228,'2020-12-11 00:15:30'),(60,17,927,'2020-06-17 01:59:05'),(61,25,418,'2020-07-28 20:03:55'),(62,19,839,'2020-04-06 09:22:57'),(63,21,639,'2020-11-24 17:13:57'),(64,17,310,'2020-02-11 03:28:04'),(65,3,980,'2020-11-28 03:03:30'),(66,19,388,'2020-06-21 09:29:03'),(67,25,972,'2020-06-23 12:01:09'),(68,2,868,'2020-03-25 15:49:07'),(69,2,539,'2020-08-03 18:59:20'),(70,20,635,'2020-09-13 00:36:34'),(71,9,885,'2020-03-29 12:14:50'),(72,13,557,'2020-06-18 16:02:34'),(73,24,868,'2020-02-06 16:57:51'),(74,18,749,'2020-05-25 22:13:31'),(75,1,337,'2020-11-13 00:47:02'),(76,7,629,'2020-08-31 00:12:38'),(77,9,872,'2020-11-26 10:09:35'),(78,7,609,'2020-05-21 23:00:28'),(79,23,904,'2020-08-08 17:08:38'),(80,22,102,'2020-03-16 07:19:05'),(81,2,102,'2020-06-25 07:34:55'),(82,17,402,'2020-07-05 02:38:41'),(83,6,788,'2020-06-07 23:11:49'),(84,23,489,'2020-12-18 05:03:21'),(85,17,500,'2020-07-15 06:10:06'),(86,1,388,'2020-07-31 01:49:48'),(87,13,557,'2020-12-22 06:59:11'),(88,9,10,'2020-05-14 12:49:15'),(89,7,48,'2020-11-14 13:06:39'),(90,9,814,'2020-09-23 03:21:34'),(91,8,323,'2020-09-26 11:30:51'),(92,13,389,'2020-05-06 19:57:46'),(93,25,930,'2020-09-07 09:16:47'),(94,12,494,'2020-07-14 20:46:25'),(95,19,792,'2020-09-19 06:12:41'),(96,21,191,'2020-07-11 16:06:27'),(97,7,567,'2021-01-22 00:02:24'),(98,25,114,'2020-04-15 20:15:07'),(99,18,225,'2020-11-08 23:56:01'),(100,22,568,'2020-10-08 14:44:09'),(101,8,140,'2020-04-03 01:47:34'),(102,1,835,'2020-07-18 07:04:12'),(103,20,456,'2020-03-15 19:09:56'),(104,2,761,'2020-05-11 05:38:40'),(105,24,433,'2020-12-03 18:52:35'),(106,16,619,'2020-11-11 10:24:39'),(107,20,500,'2020-06-24 08:55:36'),(108,10,923,'2020-10-10 13:58:38'),(109,3,595,'2020-09-13 02:28:29'),(110,1,394,'2020-07-02 19:32:05'),(111,21,232,'2020-11-10 21:31:24'),(112,5,532,'2020-04-18 22:50:43'),(113,19,765,'2020-03-23 01:04:41'),(114,1,635,'2020-09-24 11:33:00'),(115,2,387,'2020-12-18 19:42:23'),(116,19,444,'2020-03-29 02:15:47'),(117,14,289,'2020-04-23 11:40:22'),(118,3,985,'2020-11-28 00:32:10'),(119,10,338,'2020-08-10 18:58:33'),(120,14,780,'2021-01-09 12:47:52'),(121,7,209,'2020-12-03 08:14:55'),(122,11,813,'2020-03-01 15:02:54'),(123,21,489,'2020-04-20 17:03:31'),(124,15,136,'2020-11-29 13:35:54'),(125,12,454,'2020-03-21 16:51:20'),(126,14,765,'2020-10-10 01:11:50'),(127,20,419,'2020-02-20 01:12:51'),(128,9,338,'2020-08-13 08:02:10'),(129,21,256,'2020-11-07 13:01:35'),(130,25,773,'2020-07-24 07:08:53'),(131,23,782,'2020-11-23 01:09:06'),(132,24,913,'2020-06-09 21:02:46'),(133,15,774,'2021-01-19 03:09:36'),(134,1,862,'2020-07-05 20:12:19'),(135,17,826,'2020-09-30 03:42:10'),(136,8,137,'2020-02-20 07:57:51'),(137,25,157,'2020-09-14 20:32:23'),(138,16,330,'2020-04-21 11:49:39'),(139,21,836,'2020-05-27 05:43:58'),(140,14,276,'2020-11-18 01:17:10'),(141,25,316,'2020-04-08 13:26:38'),(142,25,445,'2020-06-01 16:34:18'),(143,9,127,'2020-05-18 02:58:24'),(144,13,957,'2020-03-01 13:06:20'),(145,5,390,'2020-11-04 01:30:44'),(146,9,846,'2020-09-13 08:02:55'),(147,4,721,'2020-10-04 18:15:45'),(148,19,676,'2020-09-11 14:19:42'),(149,9,886,'2020-09-23 12:47:32'),(150,5,680,'2020-10-01 11:52:22'),(151,20,544,'2021-01-08 03:12:22'),(152,15,576,'2020-07-23 09:52:09'),(153,25,733,'2020-05-15 16:57:46'),(154,16,831,'2020-05-12 19:42:35'),(155,12,714,'2020-12-29 04:53:20'),(156,7,446,'2020-10-23 18:23:40'),(157,3,696,'2020-02-16 15:45:10'),(158,16,613,'2020-06-30 18:28:27'),(159,3,86,'2020-12-31 19:48:59'),(160,13,527,'2020-04-11 06:23:57'),(161,6,947,'2020-07-10 11:42:24'),(162,8,108,'2020-08-29 16:42:05'),(163,3,194,'2020-03-20 16:41:26'),(164,23,780,'2020-09-14 23:02:48'),(165,1,209,'2020-07-03 21:15:03'),(166,13,920,'2020-06-01 00:39:46'),(167,8,566,'2020-12-10 12:47:13'),(168,22,256,'2020-12-29 13:38:19'),(169,14,347,'2020-03-10 15:59:35'),(170,22,580,'2020-05-13 20:44:07'),(171,10,448,'2020-11-22 08:53:53'),(172,10,564,'2021-01-22 10:43:41'),(173,2,653,'2020-04-17 20:55:44'),(174,24,881,'2020-08-30 22:28:43'),(175,9,713,'2020-09-30 21:35:42'),(176,9,756,'2021-01-13 00:28:35'),(177,17,128,'2020-04-19 15:01:55'),(178,12,716,'2020-05-23 11:15:09'),(179,6,778,'2020-04-03 09:07:40'),(180,8,267,'2020-02-10 08:53:12'),(181,6,195,'2020-11-07 19:26:17'),(182,3,715,'2020-10-03 04:12:56'),(183,19,22,'2020-06-18 22:03:29'),(184,1,780,'2021-01-08 03:47:03'),(185,6,348,'2020-03-05 16:34:27'),(186,11,475,'2020-05-16 15:09:50'),(187,17,367,'2020-11-04 08:49:49'),(188,22,272,'2020-08-03 11:40:08'),(189,14,860,'2020-05-13 17:01:49'),(190,1,950,'2020-11-22 06:05:12'),(191,24,119,'2021-01-07 16:04:55'),(192,15,898,'2020-06-09 13:45:21'),(193,12,754,'2021-01-29 18:23:29'),(194,24,808,'2020-05-13 04:56:24'),(195,9,118,'2020-08-08 02:19:24'),(196,10,124,'2020-03-09 02:41:53'),(197,2,181,'2020-10-26 15:44:13'),(198,24,102,'2020-12-25 08:30:25'),(199,4,167,'2020-03-13 17:24:52'),(200,14,977,'2020-03-24 23:29:51'),(201,18,616,'2020-03-13 22:25:56'),(202,4,645,'2020-12-03 22:28:11'),(203,7,521,'2020-03-11 00:41:05'),(204,20,858,'2020-08-28 13:05:58'),(205,6,610,'2020-12-28 19:08:37'),(206,10,277,'2021-01-28 23:09:57'),(207,3,327,'2020-05-14 16:25:17'),(208,25,444,'2020-04-16 15:02:45'),(209,16,986,'2020-11-24 07:09:51'),(210,13,783,'2020-03-01 03:56:04'),(211,5,460,'2020-06-15 22:13:18'),(212,10,203,'2020-03-18 15:56:45'),(213,16,773,'2020-04-25 10:29:19'),(214,8,8,'2020-03-15 00:16:58'),(215,4,327,'2020-07-23 04:35:23'),(216,6,595,'2020-08-18 07:56:28'),(217,9,288,'2020-03-15 00:17:30'),(218,7,505,'2020-04-11 09:52:26'),(219,8,415,'2021-01-07 07:23:03'),(220,18,741,'2020-06-15 21:17:44'),(221,18,557,'2020-04-22 19:54:12'),(222,13,840,'2020-06-15 19:02:31'),(223,13,726,'2020-09-07 10:01:06'),(224,9,918,'2020-03-02 10:07:31'),(225,21,234,'2020-08-27 11:09:07'),(226,7,690,'2020-08-16 00:02:09'),(227,23,962,'2020-12-17 17:24:59'),(228,6,206,'2020-09-20 15:03:35'),(229,25,928,'2020-10-05 12:56:27'),(230,11,494,'2020-09-18 07:07:55'),(231,23,285,'2020-03-25 06:32:41'),(232,23,175,'2020-07-05 02:06:05'),(233,14,890,'2020-07-10 09:07:51'),(234,24,694,'2020-08-17 19:07:15'),(235,12,819,'2020-02-24 15:02:17'),(236,7,345,'2020-11-11 15:57:42'),(237,10,39,'2020-12-07 00:11:14'),(238,13,208,'2020-08-30 17:52:31'),(239,12,843,'2020-06-01 13:43:54'),(240,25,464,'2020-05-09 19:05:13'),(241,11,576,'2020-07-01 23:26:16'),(242,24,493,'2020-06-27 17:11:11'),(243,2,532,'2021-01-07 07:38:14'),(244,13,542,'2020-10-26 11:03:51'),(245,25,621,'2020-10-31 18:23:22'),(246,22,588,'2020-09-02 09:30:10'),(247,16,291,'2020-04-02 15:17:43'),(248,23,110,'2020-05-29 18:42:00'),(249,14,909,'2020-07-29 23:53:58'),(250,16,516,'2020-08-04 01:40:52'),(251,6,294,'2020-04-02 22:52:05'),(252,1,330,'2020-03-29 08:13:24'),(253,17,870,'2020-10-16 23:24:28'),(254,24,677,'2020-08-16 02:40:38'),(255,10,774,'2020-11-19 06:20:42'),(256,22,571,'2020-08-07 18:01:07'),(257,18,789,'2020-12-20 09:13:31'),(258,14,918,'2020-02-17 04:45:16'),(259,8,653,'2020-05-30 09:48:57'),(260,19,607,'2020-04-21 06:33:28'),(261,2,123,'2020-05-01 10:25:14'),(262,3,2,'2020-06-22 14:28:51'),(263,11,964,'2020-09-12 09:55:13'),(264,16,979,'2020-02-02 00:54:29'),(265,15,983,'2020-05-25 08:04:42'),(266,1,568,'2020-12-01 21:00:12'),(267,12,449,'2020-12-05 23:04:32'),(268,21,234,'2020-12-19 07:51:31'),(269,7,571,'2020-08-08 04:18:22'),(270,17,238,'2020-05-03 18:24:52'),(271,5,363,'2020-11-20 16:29:04'),(272,21,407,'2020-08-19 19:27:54'),(273,16,534,'2020-11-07 06:36:55'),(274,7,213,'2021-01-06 22:19:46'),(275,15,681,'2020-09-23 21:43:47'),(276,9,885,'2020-03-05 14:06:37'),(277,8,895,'2020-12-19 22:55:31'),(278,16,757,'2020-09-13 15:55:50'),(279,17,652,'2020-12-05 05:25:23'),(280,10,787,'2020-03-12 12:51:22'),(281,15,762,'2020-09-17 04:05:10'),(282,3,834,'2020-04-03 12:13:07'),(283,22,483,'2020-09-11 01:12:37'),(284,3,740,'2021-01-26 17:55:22'),(285,6,125,'2020-03-13 19:58:02'),(286,15,135,'2020-04-08 12:06:32'),(287,24,942,'2020-04-21 18:43:10'),(288,19,255,'2020-11-22 18:21:56'),(289,2,837,'2020-11-29 20:20:41'),(290,7,903,'2020-05-09 04:37:04'),(291,6,64,'2020-05-18 18:33:37'),(292,12,860,'2020-11-25 04:13:37'),(293,3,118,'2020-04-17 06:18:44'),(294,14,627,'2020-08-26 12:41:36'),(295,3,576,'2020-11-05 14:57:10'),(296,5,619,'2020-10-18 09:29:45'),(297,25,658,'2020-08-31 22:13:00'),(298,2,728,'2020-03-23 22:45:32'),(299,19,630,'2020-09-30 13:52:01'),(300,10,315,'2020-10-13 19:01:43');
/*!40000 ALTER TABLE `payment_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_to_balance` AFTER INSERT ON `payment_history` FOR EACH ROW BEGIN
    UPDATE users SET balance = users.balance + NEW.payment WHERE users.id = NEW.user_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Ссылка на пользователя',
  `address_id` int unsigned NOT NULL DEFAULT '1' COMMENT 'Ссылка на адрес прописки',
  `address_ap` int unsigned NOT NULL DEFAULT '0' COMMENT 'Номер квартиры прописки',
  `email` varchar(100) DEFAULT NULL COMMENT 'почта клиента',
  `phone` varchar(10) NOT NULL COMMENT 'Телефон клиента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `profiles_address_id_fk` (`address_id`),
  CONSTRAINT `profiles_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `profiles_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,1,'vmurphy@example.net','5469778423','2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,1,2,'elijah89@example.net','9741221155','2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,2,1,'rprohaska@example.com','2459675310','2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,2,2,'mills.casimir@example.net','1235472210','2021-02-02 13:38:31','2021-02-02 13:38:31'),(5,2,5,'johanna.kirlin@example.net','9058457820','2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,3,1,'akuhic@example.org','8752312480','2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,3,10,'selina.walter@example.net','1845221120','2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,4,1,'qthiel@example.com','7213232320','2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,1,11,'abigale.balistreri@example.org','8789432232','2021-02-02 13:38:31','2021-02-02 13:38:31'),(10,3,12,'carroll.narciso@example.net','8788322121','2021-02-02 13:38:31','2021-02-02 13:38:31'),(11,9,1,'fritsch.geo@example.org','4212312212','2021-02-02 13:38:31','2021-02-02 13:38:31'),(12,3,11,'dhilpert@example.net','2121875890','2021-02-02 13:38:31','2021-02-02 13:38:31'),(13,2,15,'emilia.rath@example.com','4124546560','2021-02-02 13:38:31','2021-02-02 13:38:31'),(14,12,1,'cecile33@example.org','2144632332','2021-02-02 13:38:31','2021-02-02 13:38:31'),(15,9,1,'abbott.asia@example.com','9021721126','2021-02-02 13:38:31','2021-02-02 13:38:31'),(16,2,5,'swift.ardella@example.net','9211002214','2021-02-02 13:38:31','2021-02-02 13:38:31'),(17,8,1,'parker.dulce@example.com','3165894778','2021-02-02 13:38:31','2021-02-02 13:38:31'),(18,7,3,'myron.weimann@example.org','3145415660','2021-02-02 13:38:31','2021-02-02 13:38:31'),(19,13,1,'marlene69@example.org','6845621223','2021-02-02 13:38:31','2021-02-02 13:38:31'),(20,5,9,'tgreenfelder@example.net','9805174220','2021-02-02 13:38:31','2021-02-02 13:38:31'),(21,7,1,'leonard71@example.org','2889963112','2021-02-02 13:38:31','2021-02-02 13:38:31'),(22,1,7,'mark43@example.org','6847423123','2021-02-02 13:38:31','2021-02-02 13:38:31'),(23,5,1,'ikoss@example.net','7811231236','2021-02-02 13:38:31','2021-02-02 13:38:31'),(24,14,0,'vrice@example.org','3548747890','2021-02-02 13:38:31','2021-02-02 13:38:31'),(25,15,0,'stone.hettinger@example.com','1478478780','2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_type` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор тип услуги',
  `name` varchar(25) NOT NULL COMMENT 'Название типа услуги',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
INSERT INTO `service_type` VALUES (1,'Internet','2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'IP-TV','2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariff_plan`
--

DROP TABLE IF EXISTS `tariff_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariff_plan` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'идентификатор тарифного плана',
  `name` varchar(255) NOT NULL COMMENT 'название тарифного плана',
  `technology_type` enum('FTTx','xDSL','xPON') NOT NULL COMMENT 'тип технологии',
  `service_type_id` tinyint unsigned NOT NULL COMMENT 'ссылка на тип услуги',
  `speed` int unsigned NOT NULL COMMENT 'скорость по тарифу',
  `cost` int unsigned NOT NULL COMMENT 'стоимость тарифа',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`service_type_id`,`technology_type`,`name`) COMMENT 'составной ключ тарифного плана',
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `tariff_plan_service_type_id_fk` FOREIGN KEY (`service_type_id`) REFERENCES `service_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariff_plan`
--

LOCK TABLES `tariff_plan` WRITE;
/*!40000 ALTER TABLE `tariff_plan` DISABLE KEYS */;
INSERT INTO `tariff_plan` VALUES (5,'big_internet','FTTx',1,1000,1000,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'internet','FTTx',1,100,500,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,'internet','xDSL',1,10,500,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,'big_internet','xPON',1,1000,1000,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(1,'internet','xPON',1,100,500,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,'unic_internet','xPON',1,1000,100,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,'TV','FTTx',2,0,500,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,'TV','xDSL',2,0,500,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,'TV','xPON',2,0,500,'2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `tariff_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techbase`
--

DROP TABLE IF EXISTS `techbase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `techbase` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'уникальный идентификатор тех данных',
  `tech` varchar(100) NOT NULL COMMENT 'наименование тех данных',
  `tech_port` int unsigned NOT NULL COMMENT 'номер порта',
  `address_id` int unsigned NOT NULL COMMENT 'ссылка на адрес',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`address_id`,`tech`,`tech_port`) COMMENT 'составной ключ тех данных',
  UNIQUE KEY `id` (`id`),
  CONSTRAINT `techbase_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techbase`
--

LOCK TABLES `techbase` WRITE;
/*!40000 ALTER TABLE `techbase` DISABLE KEYS */;
INSERT INTO `techbase` VALUES (1,'commutator_1',1,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(2,'commutator_1',2,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(9,'commutator_1',4,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(22,'commutator_1',5,1,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(3,'commutator_2',1,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(4,'commutator_2',2,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(5,'commutator_2',3,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(13,'commutator_2',4,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(16,'commutator_2',5,2,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(6,'commutator_3',1,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(7,'commutator_3',2,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(10,'commutator_3',3,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(12,'commutator_3',4,3,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(8,'commutator_4',1,4,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(20,'commutator_5',1,5,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(23,'commutator_5',2,5,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(18,'commutator_7',1,7,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(21,'commutator_7',2,7,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(17,'commutator_8',1,8,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(11,'commutator_9',1,9,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(15,'commutator_9',2,9,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(14,'commutator_12',1,12,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(19,'commutator_13',1,13,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(24,'commutator_14',1,14,'2021-02-02 13:38:31','2021-02-02 13:38:31'),(25,'commutator_15',1,15,'2021-02-02 13:38:31','2021-02-02 13:38:31');
/*!40000 ALTER TABLE `techbase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_connection_info`
--

DROP TABLE IF EXISTS `total_connection_info`;
/*!50001 DROP VIEW IF EXISTS `total_connection_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_connection_info` AS SELECT 
 1 AS `access_card`,
 1 AS `technology`,
 1 AS `service`,
 1 AS `tariff`,
 1 AS `service_address`,
 1 AS `technical_data`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'уникальный идентификатор, лицевой счет',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия',
  `patronymic` varchar(100) DEFAULT NULL COMMENT 'Отчество',
  `passport_series` int unsigned NOT NULL COMMENT 'серия паспорта',
  `passport_number` int unsigned NOT NULL COMMENT 'номер паспорта',
  `balance` int NOT NULL DEFAULT '0' COMMENT 'текущий баланс клиента',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'дата создания',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'дата изменения',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Вася','Иванов','Иванович',1111,111111,1217,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(2,'Иван','Петров',NULL,1112,111111,1199,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(3,'Роман','Гаврилов','Отчевич',1113,111111,1137,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(4,'Катерина','Кривоногова','Романовна',1114,111111,-225,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(5,'Лиль','Фамилиевна',NULL,1115,111111,1008,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(6,'Махмед','Тестов',NULL,1116,111111,2496,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(7,'Кирилл','Сило',NULL,1117,111111,1690,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(8,'Владимир','Пырный',NULL,1118,111111,2279,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(9,'Джон','Русский',NULL,1119,111111,5456,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(10,'Артур','Мартур',NULL,1110,111111,3124,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(11,'Лис','Честный',NULL,111,111111,2427,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(12,'Тетерев','Шашлычный',NULL,1121,111111,116,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(13,'Бонифатий','В','Пальто',1131,111111,5200,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(14,'Вениамин','Мый',NULL,1141,111111,5827,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(15,'Гавриил','Рандом',NULL,1151,111111,4439,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(16,'Игорь','Ив',NULL,1161,111111,4923,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(17,'Нина','Ольт','Филтра',1171,111111,6003,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(18,'Виктория','Сливна',NULL,1181,111111,799,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(19,'Кливленд','Крейсер',NULL,1191,111111,5212,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(20,'Бисмарк','Линкор',NULL,1101,111111,1279,'2021-02-02 13:38:31','2021-02-02 13:38:35'),(21,'Кага','Авианосец',NULL,1211,111111,1256,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(22,'Интерпрайс','Имба',NULL,1311,111111,929,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(23,'Лири','Брунестуд',NULL,1411,111111,3705,'2021-02-02 13:38:31','2021-02-02 13:38:36'),(24,'Ольга','Вещая',NULL,1511,111111,6231,'2021-02-02 13:38:31','2021-02-02 13:38:37'),(25,'Миражен','Видная',NULL,1611,111111,756,'2021-02-02 13:38:31','2021-02-02 13:38:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `passport_validation` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
  IF (EXISTS (SELECT passport_series, passport_number FROM users 
    WHERE passport_series = NEW.passport_series AND passport_number = NEW.passport_number)) THEN
        SIGNAL SQLSTATE "45000"
        SET MESSAGE_TEXT = "Error adding passport! Passport number exists!";
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'project'
--
/*!50003 DROP FUNCTION IF EXISTS `date_my` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `date_my`(new_date date) RETURNS varchar(50) CHARSET utf8mb4
    NO SQL
BEGIN
    DECLARE res VARCHAR(50);
    SET res = concat(MONTHNAME(new_date), ' ', YEAR(new_date));
    RETURN res;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `accruals_generator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `accruals_generator`(IN new_date date)
BEGIN
    INSERT INTO accruals (user_id, date_period, accruals_amount, accruals_name)  
    SELECT connections.user_id, new_date, tariff_plan.cost, concat_ws(' ', connections.name, tariff_plan.name, tariff_plan.technology_type)
    FROM connections
    JOIN tariff_plan
        ON connections.tariff_plan_id = tariff_plan.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fin_info` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fin_info`(IN target_user BIGINT)
BEGIN
    
    CALL temp_table_my_generator();

    SELECT DISTINCT users.id AS account,
        target_date_table.new_date AS period,
        SUM(payment_history.payment) OVER def AS payment,
        SUM(accruals.accruals_amount) OVER def AS accruals
    FROM users
    LEFT JOIN target_date_table
     ON users.id = target_date_table.user_id
    LEFT JOIN payment_history
     ON users.id = payment_history.user_id AND target_date_table.new_date = date_my(payment_history.created_at)
    LEFT JOIN accruals
     ON users.id = accruals.user_id AND target_date_table.new_date = date_my(accruals.date_period)
    WHERE users.id = target_user
    WINDOW def AS (PARTITION BY users.id, target_date_table.new_date)
    ORDER BY account;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `temp_table_my_generator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `temp_table_my_generator`()
BEGIN
    DROP TEMPORARY TABLE IF EXISTS temp_date_table;
    CREATE TEMPORARY TABLE temp_date_table (
        user_id BIGINT,
        new_date varchar(50)
    );
    INSERT INTO temp_date_table (user_id, new_date) SELECT user_id, date_my(created_at) FROM payment_history;
    INSERT INTO temp_date_table (user_id, new_date) SELECT user_id, date_my(date_period) FROM accruals;
    
    DROP TEMPORARY TABLE IF EXISTS target_date_table;
    CREATE TEMPORARY TABLE target_date_table (
        user_id BIGINT,
        new_date varchar(50)
    );
    INSERT INTO target_date_table (user_id, new_date) SELECT DISTINCT user_id, new_date FROM temp_date_table;
    DROP TABLE temp_date_table;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `client`
--

/*!50001 DROP VIEW IF EXISTS `client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `client` AS select `users`.`id` AS `account`,`users`.`balance` AS `balance`,concat_ws(' ',`users`.`first_name`,`users`.`last_name`,`users`.`patronymic`) AS `full_name`,concat(`users`.`passport_series`,`users`.`passport_number`) AS `passport`,`profiles`.`email` AS `e-mail`,`profiles`.`phone` AS `phone`,concat(`address`.`city`,' st. ',`address`.`street`,' buld. ',`address`.`building`,' apartment ',`profiles`.`address_ap`) AS `client_address` from ((`users` join `profiles` on((`users`.`id` = `profiles`.`user_id`))) join `address` on((`profiles`.`address_id` = `address`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `client_connections`
--

/*!50001 DROP VIEW IF EXISTS `client_connections`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `client_connections` AS select `connections`.`user_id` AS `account`,`connections`.`name` AS `access_card`,`service_type`.`name` AS `service`,`tariff_plan`.`name` AS `tariff`,`tariff_plan`.`cost` AS `cost`,`tariff_plan`.`speed` AS `speed`,`connections_tech`.`technology_type` AS `technology`,concat(`address`.`city`,' st. ',`address`.`street`,' buld. ',`address`.`building`,' apartment ',`connections_tech`.`address_ap`) AS `service_address` from ((((`connections` join `service_type` on((`connections`.`service_type_id` = `service_type`.`id`))) join `tariff_plan` on((`connections`.`tariff_plan_id` = `tariff_plan`.`id`))) join `connections_tech` on((`connections`.`id` = `connections_tech`.`connections_id`))) join `address` on((`connections_tech`.`address_id` = `address`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_connection_info`
--

/*!50001 DROP VIEW IF EXISTS `total_connection_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_connection_info` AS select `connections`.`name` AS `access_card`,`connections_tech`.`technology_type` AS `technology`,`service_type`.`name` AS `service`,`tariff_plan`.`name` AS `tariff`,concat(`address`.`city`,' st. ',`address`.`street`,' buld. ',`address`.`building`,' apartment ',`connections_tech`.`address_ap`) AS `service_address`,concat(`techbase`.`tech`,' port - ',`techbase`.`tech_port`) AS `technical_data` from (((((`connections` join `connections_tech` on((`connections`.`id` = `connections_tech`.`connections_id`))) join `service_type` on((`connections`.`service_type_id` = `service_type`.`id`))) join `tariff_plan` on((`connections`.`tariff_plan_id` = `tariff_plan`.`id`))) join `address` on((`connections_tech`.`address_id` = `address`.`id`))) join `techbase` on((`connections_tech`.`techbase_id` = `techbase`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-02 13:42:29
