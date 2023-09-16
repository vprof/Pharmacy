-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: zstore
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Current Database: `zstore`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `zstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `zstore`;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `branch_id` int NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `contract_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT '0',
  `firm_id` int DEFAULT '0',
  `createdon` date NOT NULL,
  `contract_number` varchar(64) NOT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `details` longtext NOT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `contracts_view`
--

DROP TABLE IF EXISTS `contracts_view`;
/*!50001 DROP VIEW IF EXISTS `contracts_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `contracts_view` AS SELECT 
 1 AS `contract_id`,
 1 AS `customer_id`,
 1 AS `firm_id`,
 1 AS `createdon`,
 1 AS `contract_number`,
 1 AS `disabled`,
 1 AS `details`,
 1 AS `customer_name`,
 1 AS `firm_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cust_acc_view`
--

DROP TABLE IF EXISTS `cust_acc_view`;
/*!50001 DROP VIEW IF EXISTS `cust_acc_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cust_acc_view` AS SELECT 
 1 AS `s_passive`,
 1 AS `s_active`,
 1 AS `b_passive`,
 1 AS `b_active`,
 1 AS `customer_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `custacc`
--

DROP TABLE IF EXISTS `custacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custacc` (
  `ca_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `document_id` int DEFAULT NULL,
  `optype` int NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`ca_id`),
  KEY `document_id` (`document_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custacc`
--

LOCK TABLES `custacc` WRITE;
/*!40000 ALTER TABLE `custacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `custacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custitems`
--

DROP TABLE IF EXISTS `custitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custitems` (
  `custitem_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `cust_code` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `updatedon` date NOT NULL,
  PRIMARY KEY (`custitem_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custitems`
--

LOCK TABLES `custitems` WRITE;
/*!40000 ALTER TABLE `custitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `custitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `custitems_view`
--

DROP TABLE IF EXISTS `custitems_view`;
/*!50001 DROP VIEW IF EXISTS `custitems_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `custitems_view` AS SELECT 
 1 AS `custitem_id`,
 1 AS `item_id`,
 1 AS `customer_id`,
 1 AS `quantity`,
 1 AS `price`,
 1 AS `updatedon`,
 1 AS `cust_code`,
 1 AS `comment`,
 1 AS `itemname`,
 1 AS `cat_id`,
 1 AS `item_code`,
 1 AS `detail`,
 1 AS `customer_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) DEFAULT NULL,
  `detail` mediumtext NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `status` smallint NOT NULL DEFAULT '0',
  `city` varchar(255) DEFAULT NULL,
  `leadstatus` varchar(255) DEFAULT NULL,
  `leadsource` varchar(255) DEFAULT NULL,
  `createdon` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `passw` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (37,'Фiз. особа','<detail><code></code><discount></discount><bonus></bonus><type>0</type><fromlead>0</fromlead><jurid></jurid><shopcust_id></shopcust_id><isholding>0</isholding><holding>0</holding><viber></viber><nosubs>1</nosubs><user_id>4</user_id><holding_name><![CDATA[]]></holding_name><address><![CDATA[]]></address><comment><![CDATA[Умовний контрагент (якщо треба когось зазначити)]]></comment></detail>','','',0,'',NULL,NULL,'2021-04-28',NULL,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customers_view`
--

DROP TABLE IF EXISTS `customers_view`;
/*!50001 DROP VIEW IF EXISTS `customers_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customers_view` AS SELECT 
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `detail`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `status`,
 1 AS `city`,
 1 AS `leadsource`,
 1 AS `leadstatus`,
 1 AS `country`,
 1 AS `passw`,
 1 AS `mcnt`,
 1 AS `fcnt`,
 1 AS `ecnt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `docstatelog`
--

DROP TABLE IF EXISTS `docstatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docstatelog` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `document_id` int NOT NULL,
  `docstate` smallint NOT NULL,
  `createdon` datetime NOT NULL,
  `hostname` varchar(64) NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `document_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3667 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docstatelog`
--

LOCK TABLES `docstatelog` WRITE;
/*!40000 ALTER TABLE `docstatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `docstatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `docstatelog_view`
--

DROP TABLE IF EXISTS `docstatelog_view`;
/*!50001 DROP VIEW IF EXISTS `docstatelog_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `docstatelog_view` AS SELECT 
 1 AS `log_id`,
 1 AS `user_id`,
 1 AS `document_id`,
 1 AS `docstate`,
 1 AS `createdon`,
 1 AS `hostname`,
 1 AS `username`,
 1 AS `document_number`,
 1 AS `meta_desc`,
 1 AS `meta_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `document_number` varchar(45) NOT NULL,
  `document_date` date NOT NULL,
  `user_id` int NOT NULL,
  `content` longtext,
  `amount` decimal(11,2) DEFAULT NULL,
  `meta_id` int NOT NULL,
  `state` tinyint NOT NULL,
  `notes` varchar(255) NOT NULL,
  `customer_id` int DEFAULT '0',
  `payamount` decimal(11,2) DEFAULT '0.00',
  `payed` decimal(11,2) DEFAULT '0.00',
  `branch_id` int DEFAULT '0',
  `parent_id` bigint DEFAULT '0',
  `firm_id` int DEFAULT NULL,
  `priority` smallint DEFAULT '100',
  `lastupdate` datetime DEFAULT NULL,
  PRIMARY KEY (`document_id`),
  UNIQUE KEY `unuqnumber` (`meta_id`,`document_number`,`branch_id`),
  KEY `document_date` (`document_date`),
  KEY `customer_id` (`customer_id`),
  KEY `user_id` (`user_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `documents_view`
--

DROP TABLE IF EXISTS `documents_view`;
/*!50001 DROP VIEW IF EXISTS `documents_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `documents_view` AS SELECT 
 1 AS `document_id`,
 1 AS `document_number`,
 1 AS `document_date`,
 1 AS `user_id`,
 1 AS `content`,
 1 AS `amount`,
 1 AS `meta_id`,
 1 AS `username`,
 1 AS `customer_id`,
 1 AS `customer_name`,
 1 AS `state`,
 1 AS `notes`,
 1 AS `payamount`,
 1 AS `payed`,
 1 AS `parent_id`,
 1 AS `branch_id`,
 1 AS `branch_name`,
 1 AS `firm_id`,
 1 AS `priority`,
 1 AS `firm_name`,
 1 AS `lastupdate`,
 1 AS `meta_name`,
 1 AS `meta_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `empacc`
--

DROP TABLE IF EXISTS `empacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empacc` (
  `ea_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `document_id` int DEFAULT NULL,
  `optype` int DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `createdon` date DEFAULT NULL,
  PRIMARY KEY (`ea_id`),
  KEY `emp_id` (`emp_id`),
  KEY `document_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empacc`
--

LOCK TABLES `empacc` WRITE;
/*!40000 ALTER TABLE `empacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `empacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `empacc_view`
--

DROP TABLE IF EXISTS `empacc_view`;
/*!50001 DROP VIEW IF EXISTS `empacc_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `empacc_view` AS SELECT 
 1 AS `ea_id`,
 1 AS `emp_id`,
 1 AS `document_id`,
 1 AS `optype`,
 1 AS `notes`,
 1 AS `amount`,
 1 AS `createdon`,
 1 AS `document_number`,
 1 AS `emp_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(64) DEFAULT NULL,
  `detail` mediumtext,
  `disabled` tinyint(1) DEFAULT '0',
  `emp_name` varchar(64) NOT NULL,
  `branch_id` int DEFAULT '0',
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrylist`
--

DROP TABLE IF EXISTS `entrylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrylist` (
  `entry_id` bigint NOT NULL AUTO_INCREMENT,
  `document_id` int NOT NULL,
  `quantity` decimal(11,3) DEFAULT '0.000',
  `stock_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `outprice` decimal(10,2) DEFAULT NULL,
  `tag` int DEFAULT '0',
  PRIMARY KEY (`entry_id`),
  KEY `document_id` (`document_id`),
  KEY `stock_id` (`stock_id`),
  CONSTRAINT `entrylist_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `documents` (`document_id`),
  CONSTRAINT `entrylist_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `store_stock` (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1472 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrylist`
--

LOCK TABLES `entrylist` WRITE;
/*!40000 ALTER TABLE `entrylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrylist` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `entrylist_after_ins_tr` AFTER INSERT ON `entrylist` FOR EACH ROW BEGIN







 IF new.stock_id >0 then



  update store_stock set qty=(select  coalesce(sum(quantity),0) from entrylist where stock_id=new.stock_id) where store_stock.stock_id = new.stock_id;

 END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = latin1 */ ;
/*!50003 SET character_set_results = latin1 */ ;
/*!50003 SET collation_connection  = latin1_swedish_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `entrylist_after_del_tr` AFTER DELETE ON `entrylist` FOR EACH ROW BEGIN





 IF old.stock_id >0 then



  update store_stock set qty=(select  coalesce(sum(quantity),0) from entrylist where stock_id=old.stock_id) where store_stock.stock_id = old.stock_id;

 END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `entrylist_view`
--

DROP TABLE IF EXISTS `entrylist_view`;
/*!50001 DROP VIEW IF EXISTS `entrylist_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `entrylist_view` AS SELECT 
 1 AS `entry_id`,
 1 AS `document_id`,
 1 AS `quantity`,
 1 AS `customer_id`,
 1 AS `stock_id`,
 1 AS `service_id`,
 1 AS `tag`,
 1 AS `item_id`,
 1 AS `partion`,
 1 AS `document_date`,
 1 AS `outprice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipments` (
  `eq_id` int NOT NULL AUTO_INCREMENT,
  `eq_name` varchar(255) DEFAULT NULL,
  `detail` mediumtext,
  `disabled` tinyint(1) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`eq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventlist`
--

DROP TABLE IF EXISTS `eventlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventlist` (
  `user_id` int NOT NULL,
  `eventdate` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `event_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `isdone` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`),
  KEY `user_id` (`user_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventlist`
--

LOCK TABLES `eventlist` WRITE;
/*!40000 ALTER TABLE `eventlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `eventlist_view`
--

DROP TABLE IF EXISTS `eventlist_view`;
/*!50001 DROP VIEW IF EXISTS `eventlist_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `eventlist_view` AS SELECT 
 1 AS `user_id`,
 1 AS `eventdate`,
 1 AS `title`,
 1 AS `description`,
 1 AS `event_id`,
 1 AS `customer_id`,
 1 AS `isdone`,
 1 AS `customer_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `file_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `item_type` int NOT NULL,
  `mime` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filesdata`
--

DROP TABLE IF EXISTS `filesdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filesdata` (
  `file_id` int DEFAULT NULL,
  `filedata` longblob,
  UNIQUE KEY `file_id` (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filesdata`
--

LOCK TABLES `filesdata` WRITE;
/*!40000 ALTER TABLE `filesdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `filesdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firms`
--

DROP TABLE IF EXISTS `firms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firms` (
  `firm_id` int NOT NULL AUTO_INCREMENT,
  `firm_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`firm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firms`
--

LOCK TABLES `firms` WRITE;
/*!40000 ALTER TABLE `firms` DISABLE KEYS */;
INSERT INTO `firms` VALUES (7,'Наша фiрма','',0);
/*!40000 ALTER TABLE `firms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `content` longblob NOT NULL,
  `mime` varchar(16) DEFAULT NULL,
  `thumb` longblob,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iostate`
--

DROP TABLE IF EXISTS `iostate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iostate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `document_id` int NOT NULL,
  `iotype` smallint NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iostate`
--

LOCK TABLES `iostate` WRITE;
/*!40000 ALTER TABLE `iostate` DISABLE KEYS */;
/*!40000 ALTER TABLE `iostate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `iostate_view`
--

DROP TABLE IF EXISTS `iostate_view`;
/*!50001 DROP VIEW IF EXISTS `iostate_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `iostate_view` AS SELECT 
 1 AS `id`,
 1 AS `document_id`,
 1 AS `iotype`,
 1 AS `amount`,
 1 AS `document_date`,
 1 AS `branch_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `issue_history`
--

DROP TABLE IF EXISTS `issue_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_history` (
  `hist_id` bigint NOT NULL AUTO_INCREMENT,
  `issue_id` int NOT NULL,
  `createdon` date NOT NULL,
  `user_id` int NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`hist_id`),
  KEY `issue_id` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_history`
--

LOCK TABLES `issue_history` WRITE;
/*!40000 ALTER TABLE `issue_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_issuelist`
--

DROP TABLE IF EXISTS `issue_issuelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_issuelist` (
  `issue_id` int NOT NULL AUTO_INCREMENT,
  `issue_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `status` smallint NOT NULL,
  `priority` tinyint NOT NULL,
  `user_id` int NOT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `project_id` int NOT NULL,
  PRIMARY KEY (`issue_id`),
  KEY `project_id` (`project_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_issuelist`
--

LOCK TABLES `issue_issuelist` WRITE;
/*!40000 ALTER TABLE `issue_issuelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_issuelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `issue_issuelist_view`
--

DROP TABLE IF EXISTS `issue_issuelist_view`;
/*!50001 DROP VIEW IF EXISTS `issue_issuelist_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issue_issuelist_view` AS SELECT 
 1 AS `issue_id`,
 1 AS `issue_name`,
 1 AS `details`,
 1 AS `status`,
 1 AS `priority`,
 1 AS `user_id`,
 1 AS `lastupdate`,
 1 AS `project_id`,
 1 AS `username`,
 1 AS `project_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `issue_projectacc`
--

DROP TABLE IF EXISTS `issue_projectacc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_projectacc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_projectacc`
--

LOCK TABLES `issue_projectacc` WRITE;
/*!40000 ALTER TABLE `issue_projectacc` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_projectacc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue_projectlist`
--

DROP TABLE IF EXISTS `issue_projectlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_projectlist` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `customer_id` int DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_projectlist`
--

LOCK TABLES `issue_projectlist` WRITE;
/*!40000 ALTER TABLE `issue_projectlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_projectlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `issue_projectlist_view`
--

DROP TABLE IF EXISTS `issue_projectlist_view`;
/*!50001 DROP VIEW IF EXISTS `issue_projectlist_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issue_projectlist_view` AS SELECT 
 1 AS `project_id`,
 1 AS `project_name`,
 1 AS `details`,
 1 AS `customer_id`,
 1 AS `status`,
 1 AS `customer_name`,
 1 AS `inew`,
 1 AS `iproc`,
 1 AS `iclose`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `issue_time`
--

DROP TABLE IF EXISTS `issue_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue_time` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_id` int NOT NULL,
  `createdon` datetime NOT NULL,
  `user_id` int NOT NULL,
  `duration` decimal(10,2) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_id` (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue_time`
--

LOCK TABLES `issue_time` WRITE;
/*!40000 ALTER TABLE `issue_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `issue_time_view`
--

DROP TABLE IF EXISTS `issue_time_view`;
/*!50001 DROP VIEW IF EXISTS `issue_time_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `issue_time_view` AS SELECT 
 1 AS `id`,
 1 AS `issue_id`,
 1 AS `createdon`,
 1 AS `user_id`,
 1 AS `duration`,
 1 AS `notes`,
 1 AS `username`,
 1 AS `issue_name`,
 1 AS `project_id`,
 1 AS `project_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item_cat`
--

DROP TABLE IF EXISTS `item_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_cat` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL,
  `detail` longtext,
  `parent_id` int DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_cat`
--

LOCK TABLES `item_cat` WRITE;
/*!40000 ALTER TABLE `item_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_set`
--

DROP TABLE IF EXISTS `item_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_set` (
  `set_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT '0',
  `pitem_id` int NOT NULL DEFAULT '0',
  `qty` decimal(11,3) DEFAULT '0.000',
  `service_id` int DEFAULT '0',
  `cost` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_set`
--

LOCK TABLES `item_set` WRITE;
/*!40000 ALTER TABLE `item_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `item_set_view`
--

DROP TABLE IF EXISTS `item_set_view`;
/*!50001 DROP VIEW IF EXISTS `item_set_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `item_set_view` AS SELECT 
 1 AS `set_id`,
 1 AS `item_id`,
 1 AS `pitem_id`,
 1 AS `qty`,
 1 AS `service_id`,
 1 AS `cost`,
 1 AS `itemname`,
 1 AS `item_code`,
 1 AS `service_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) DEFAULT NULL,
  `description` longtext,
  `detail` longtext NOT NULL,
  `item_code` varchar(64) DEFAULT NULL,
  `bar_code` varchar(64) DEFAULT NULL,
  `cat_id` int NOT NULL,
  `msr` varchar(64) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `minqty` decimal(11,3) DEFAULT '0.000',
  `manufacturer` varchar(355) DEFAULT NULL,
  `item_type` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_code` (`item_code`),
  KEY `itemname` (`itemname`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=963 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `items_view`
--

DROP TABLE IF EXISTS `items_view`;
/*!50001 DROP VIEW IF EXISTS `items_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `items_view` AS SELECT 
 1 AS `item_id`,
 1 AS `itemname`,
 1 AS `description`,
 1 AS `detail`,
 1 AS `item_code`,
 1 AS `bar_code`,
 1 AS `cat_id`,
 1 AS `msr`,
 1 AS `disabled`,
 1 AS `minqty`,
 1 AS `item_type`,
 1 AS `manufacturer`,
 1 AS `cat_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `keyval`
--

DROP TABLE IF EXISTS `keyval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `keyval` (
  `keyd` varchar(255) NOT NULL,
  `vald` text NOT NULL,
  PRIMARY KEY (`keyd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyval`
--

LOCK TABLES `keyval` WRITE;
/*!40000 ALTER TABLE `keyval` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `message` text,
  `item_id` int NOT NULL,
  `item_type` int DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `messages_view`
--

DROP TABLE IF EXISTS `messages_view`;
/*!50001 DROP VIEW IF EXISTS `messages_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `messages_view` AS SELECT 
 1 AS `message_id`,
 1 AS `user_id`,
 1 AS `created`,
 1 AS `message`,
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metadata` (
  `meta_id` int NOT NULL AUTO_INCREMENT,
  `meta_type` tinyint NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `meta_name` varchar(255) NOT NULL,
  `menugroup` varchar(255) DEFAULT NULL,
  `disabled` tinyint NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (118,4,'Склади','StoreList','Товари',0),(119,4,'Номенклатура','ItemList','Товари',0),(120,4,'Співробітники','EmployeeList','',0),(121,4,'Категорії товарів','CategoryList','Товари',0),(122,4,'Контрагенти','CustomerList','',0),(123,1,'Прибуткова накладна','GoodsReceipt','Закупівлі',0),(124,1,'Видаткова накладна','GoodsIssue','Продажі',0),(125,3,'Журнал документiв','DocList','',0),(126,1,'Гарантійний талон','Warranty','Продажі',0),(127,2,'Рух по складу','ItemActivity','Склад',0),(128,2,'ABC аналіз','ABC','Аналітика',0),(129,4,'Послуги, роботи','ServiceList','',0),(130,1,'Акт виконаних робіт','ServiceAct','Послуги',0),(131,1,'Повернення від покупця','ReturnIssue','Продажі',0),(132,3,'Наряди','TaskList','Виробництво',0),(133,1,'Наряд','Task','Виробництво',0),(134,2,'Оплата по виробництву','EmpTask','Виробництво',0),(135,2,'Закупівлі','Income','Закупівлі',0),(136,2,'Продажі','Outcome','Продажі',0),(137,3,'Замовлення клієнтів','OrderList','Продажі',0),(138,1,'Замовлення','Order','Продажі',0),(139,1,'Оприбуткування з виробництва','ProdReceipt','Виробництво',0),(140,1,'Списання на виробництво','ProdIssue','Виробництво',0),(141,2,'Звіт по виробництву','Prod','Виробництво',0),(142,4,'Виробничі дільниці','ProdAreaList','',0),(143,3,'Продажі','GIList','Продажі',0),(144,4,'Обладнання та ОЗ','EqList','',0),(145,3,'Закупівлі','GRList','Закупівлі',0),(146,1,'Заявка постачальнику','OrderCust','Закупівлі',0),(147,3,'Заявки постачальникам','OrderCustList','Закупівлі',0),(148,2,'Прайс','Price','Склад',0),(149,1,'Повернення постачальнику','RetCustIssue','Закупівлі',0),(150,1,'Перекомплектація (расфасовка)','TransItem','Склад',0),(151,4,'Каси, рахунки','MFList','',0),(152,3,'Журнал платежів','PayList','Каса та платежі',0),(153,2,'Рух по грошовим рахункам','PayActivity','Каса та платежі',0),(154,1,'Прибутковий ордер','IncomeMoney','Каса та платежі',0),(155,1,'Видатковий ордер','OutcomeMoney','Каса та платежі',0),(156,2,'Фінансові результати','PayBalance','',0),(157,1,'Інвентаризація','Inventory','Склад',0),(158,1,'Рахунок, вхідний','InvoiceCust','Закупівлі',0),(159,1,'Рахунок-фактура','Invoice','Продажі',0),(160,5,'Імпорт','Import','',0),(161,3,'Рух ТМЦ','StockList','Склад',0),(162,1,'Касовий чек','POSCheck','Продажі',1),(163,2,'Товари в дорозі','CustOrder','Закупівлі',0),(164,1,'Списання ТМЦ','OutcomeItem','Склад',0),(165,1,'Оприбуткування ТМЦ','IncomeItem','Склад',0),(166,5,'АРМ касира','ARMPos','',0),(167,3,'Роботи, послуги','SerList','',0),(168,3,'Товари на складі','ItemList','Склад',0),(169,5,'Експорт','Export','',0),(170,1,'Виплата зарплати','OutSalary','Зарплата',0),(171,2,'Звіт по зарплаті','SalaryRep','Каса та платежі',0),(172,4,'Договори','ContractList','',0),(173,1,'Перемiщення ТМЦ','MoveItem','Склад',0),(174,2,'Робочий час','Timestat','',0),(175,1,'Товарно-транспортна накладна','TTN','Продажі',0),(176,2,'Нелiквiднi товари','NoLiq','Склад',0),(177,3,'Розрахунки з постачальниками','PaySelList','Каса та платежі',0),(178,3,'Розрахунки з покупцями','PayBayList','Каса та платежі',0),(179,1,'Перемiщення грошей','MoveMoney','Каса та платежі',0),(180,1,'Замовленя кафе','OrderFood','Кафе',0),(181,5,'АРМ касира (кафе)','ARMFood','Кафе',0),(182,3,'Журнал доставок','DeliveryList','Кафе',0),(183,5,'АРМ кухнi (бару)','ArmProdFood','Кафе',0),(184,3,'Прибутки та видатки','IOState','',0),(185,2,'Замовленi товари','ItemOrder','Продажі',0),(186,5,'Знижки та акції','Discounts','',0),(187,1,'Нарахування зарплати','CalcSalary','Каса та платежі',0),(188,4,'Нарахування та утримання','SalaryTypeList','',0),(189,3,'Вир. процеси','ProdProcList','Виробництво',0),(190,3,'Вир. етапи','ProdStageList','Виробництво',0),(191,1,'Перемiщення партiй ТМЦ','MovePart','Склад',0),(192,2,'Повернення покупцiв','Returnselled','Продажі',0),(193,2,'Повернення постачальникам','Returnbayed','Закупівлі',0),(194,1,'Надані послуги','IncomeService','Послуги',0),(195,2,'Стан складiв','StoreItems','Склад',0),(196,3,'Товари у постачальників','CustItems','',0),(197,2,'Акт звірки','CompareAct','Контрагенти',0),(198,2,'Зарезервовані товари','Reserved','Склад',0),(199,2,'OLAP аналіз','OLAP','Аналітика',0);
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfund`
--

DROP TABLE IF EXISTS `mfund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mfund` (
  `mf_id` int NOT NULL AUTO_INCREMENT,
  `mf_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `branch_id` int DEFAULT '0',
  `detail` longtext,
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`mf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfund`
--

LOCK TABLES `mfund` WRITE;
/*!40000 ALTER TABLE `mfund` DISABLE KEYS */;
INSERT INTO `mfund` VALUES (2,'Каса','',NULL,'<detail><beznal>0</beznal><btran></btran><bank><![CDATA[]]></bank><bankacc><![CDATA[]]></bankacc></detail>',0);
/*!40000 ALTER TABLE `mfund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_fav`
--

DROP TABLE IF EXISTS `note_fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_fav` (
  `fav_id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`fav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_fav`
--

LOCK TABLES `note_fav` WRITE;
/*!40000 ALTER TABLE `note_fav` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_fav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_nodes`
--

DROP TABLE IF EXISTS `note_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_nodes` (
  `node_id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `title` varchar(50) NOT NULL,
  `mpath` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `ispublic` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`node_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_nodes`
--

LOCK TABLES `note_nodes` WRITE;
/*!40000 ALTER TABLE `note_nodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `note_nodesview`
--

DROP TABLE IF EXISTS `note_nodesview`;
/*!50001 DROP VIEW IF EXISTS `note_nodesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `note_nodesview` AS SELECT 
 1 AS `node_id`,
 1 AS `pid`,
 1 AS `title`,
 1 AS `mpath`,
 1 AS `user_id`,
 1 AS `ispublic`,
 1 AS `tcnt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `note_tags`
--

DROP TABLE IF EXISTS `note_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_tags` (
  `tag_id` int NOT NULL AUTO_INCREMENT,
  `topic_id` int NOT NULL,
  `tagvalue` varchar(255) NOT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_tags`
--

LOCK TABLES `note_tags` WRITE;
/*!40000 ALTER TABLE `note_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note_topicnode`
--

DROP TABLE IF EXISTS `note_topicnode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_topicnode` (
  `topic_id` int NOT NULL,
  `node_id` int NOT NULL,
  `tn_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tn_id`),
  KEY `topic_id` (`topic_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_topicnode`
--

LOCK TABLES `note_topicnode` WRITE;
/*!40000 ALTER TABLE `note_topicnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_topicnode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `note_topicnodeview`
--

DROP TABLE IF EXISTS `note_topicnodeview`;
/*!50001 DROP VIEW IF EXISTS `note_topicnodeview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `note_topicnodeview` AS SELECT 
 1 AS `topic_id`,
 1 AS `node_id`,
 1 AS `tn_id`,
 1 AS `title`,
 1 AS `user_id`,
 1 AS `content`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `note_topics`
--

DROP TABLE IF EXISTS `note_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_topics` (
  `topic_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `acctype` smallint DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_topics`
--

LOCK TABLES `note_topics` WRITE;
/*!40000 ALTER TABLE `note_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `note_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `note_topicsview`
--

DROP TABLE IF EXISTS `note_topicsview`;
/*!50001 DROP VIEW IF EXISTS `note_topicsview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `note_topicsview` AS SELECT 
 1 AS `topic_id`,
 1 AS `title`,
 1 AS `content`,
 1 AS `acctype`,
 1 AS `user_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `notifies`
--

DROP TABLE IF EXISTS `notifies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifies` (
  `notify_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `dateshow` datetime NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message` text,
  `sender_id` int DEFAULT NULL,
  PRIMARY KEY (`notify_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifies`
--

LOCK TABLES `notifies` WRITE;
/*!40000 ALTER TABLE `notifies` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `optname` varchar(64) NOT NULL,
  `optvalue` longtext NOT NULL,
  UNIQUE KEY `optname` (`optname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES ('api','a:3:{s:3:\"exp\";s:0:\"\";s:3:\"key\";s:4:\"test\";s:5:\"atype\";s:1:\"1\";}'),('common','YTozMjp7czo5OiJxdHlkaWdpdHMiO3M6MToiMCI7czo4OiJhbWRpZ2l0cyI7czoxOiIwIjtzOjEwOiJkYXRlZm9ybWF0IjtzOjU6ImQubS5ZIjtzOjExOiJwYXJ0aW9udHlwZSI7czoxOiIxIjtzOjY6InBob25lbCI7czoyOiIxMCI7czo2OiJwcmljZTEiO3M6MTg6ItCg0L7Qt9C00YDRltCx0L3QsCI7czo2OiJwcmljZTIiO3M6MTI6ItCe0L/RgtC+0LLQsCI7czo2OiJwcmljZTMiO3M6MDoiIjtzOjY6InByaWNlNCI7czowOiIiO3M6NjoicHJpY2U1IjtzOjA6IiI7czo4OiJkZWZwcmljZSI7czowOiIiO3M6ODoic2hvcG5hbWUiO3M6MDoiIjtzOjg6InRzX2JyZWFrIjtzOjI6IjYwIjtzOjg6InRzX3N0YXJ0IjtzOjU6IjA5OjAwIjtzOjY6InRzX2VuZCI7czo1OiIxODowMCI7czoxMToiY2hlY2tzbG9nYW4iO3M6MDoiIjtzOjExOiJhdXRvYXJ0aWNsZSI7aToxO3M6MTA6InVzZXNudW1iZXIiO2k6MDtzOjEwOiJ1c2VzY2FubmVyIjtpOjA7czoxNjoidXNlbW9iaWxlc2Nhbm5lciI7aTowO3M6OToidXNlaW1hZ2VzIjtpOjA7czoxNDoicHJpbnRvdXRxcmNvZGUiO2k6MDtzOjE0OiJub2NoZWNrYXJ0aWNsZSI7aTowO3M6MTU6InNob3dhY3RpdmV1c2VycyI7aTowO3M6ODoic2hvd2NoYXQiO2k6MDtzOjEwOiJ1c2VjYXR0cmVlIjtpOjA7czo5OiJ1c2VicmFuY2giO2k6MDtzOjEwOiJub2FsbG93Zml6IjtpOjA7czoxMDoiYWxsb3dtaW51cyI7aTowO3M6NjoidXNldmFsIjtpOjA7czo2OiJjYXBjaGEiO2k6MDtzOjk6Im51bWJlcnR0biI7aTowO30='),('disc','a:4:{s:8:\"firstbay\";s:2:\"11\";s:6:\"bonus1\";s:0:\"\";s:6:\"level2\";s:0:\"\";s:6:\"bonus2\";s:0:\"\";}'),('discount','a:6:{s:8:\"firstbay\";s:2:\"11\";s:6:\"bonus1\";s:3:\"1.1\";s:6:\"level2\";s:0:\"\";s:6:\"bonus2\";s:0:\"\";s:6:\"summa1\";s:3:\"100\";s:6:\"summa2\";s:0:\"\";}'),('food','a:5:{s:8:\"worktype\";s:1:\"2\";s:9:\"pricetype\";s:6:\"price1\";s:8:\"delivery\";i:1;s:6:\"tables\";i:1;s:4:\"pack\";i:1;}'),('printer','a:15:{s:7:\"pheight\";s:0:\"\";s:8:\"pa4width\";s:0:\"\";s:6:\"pwidth\";s:4:\"100%\";s:9:\"pdocwidth\";s:4:\"70mm\";s:8:\"pmaxname\";s:1:\"7\";s:9:\"pricetype\";s:6:\"price1\";s:11:\"barcodetype\";s:4:\"C128\";s:9:\"pfontsize\";s:2:\"28\";s:12:\"pdocfontsize\";s:2:\"16\";s:5:\"pname\";i:1;s:5:\"pcode\";i:1;s:8:\"pbarcode\";i:1;s:7:\"pqrcode\";i:1;s:6:\"pprice\";i:1;s:6:\"pcolor\";i:0;}'),('salary','YTo1OntzOjEzOiJjb2RlYmFzZWluY29tIjtzOjM6IjEwNSI7czoxMDoiY29kZXJlc3VsdCI7czozOiI5MDAiO3M6NDoiY2FsYyI7czoyMTk6InYyMDAgPSB2MTA1DQovL9C'),('shop','YToyMDp7czo3OiJkZWZjdXN0IjtzOjE6IjEiO3M6MTE6ImRlZmN1c3RuYW1lIjtzOjI5OiLQm9C10L7QvdC40LQg0JzQsNGA0YLRi9C90Y7QuiI7czo5OiJkZWZicmFuY2giO047czo5OiJvcmRlcnR5cGUiO3M6MToiMCI7czoxMjoiZGVmcHJpY2V0eXBlIjtzOjY6InByaWNlMSI7czo1OiJlbWFpbCI7czowOiIiO3M6ODoic2hvcG5hbWUiO3M6MTc6ItCd0LDRiCDQvNCw0LPQsNC3IjtzOjEyOiJjdXJyZW5jeW5hbWUiO3M6Njoi0YDRg9CxIjtzOjg6InVzZWxvZ2luIjtpOjA7czo5OiJ1c2VmaWx0ZXIiO2k6MDtzOjEzOiJjcmVhdGVuZXdjdXN0IjtpOjA7czoxMToidXNlZmVlZGJhY2siO2k6MDtzOjExOiJ1c2VtYWlucGFnZSI7aTowO3M6NzoiYWJvdXR1cyI7czoxNjoiUEhBK1BHSnlQand2Y0Q0PSI7czo3OiJjb250YWN0IjtzOjA6IiI7czo4OiJkZWxpdmVyeSI7czowOiIiO3M6NDoibmV3cyI7czowOiIiO3M6NToicGFnZXMiO2E6Mjp7czo0OiJuZXdzIjtPOjEyOiJBcHBcRGF0YUl0ZW0iOjI6e3M6MjoiaWQiO047czo5OiIAKgBmaWVsZHMiO2E6NDp7czo0OiJsaW5rIjtzOjQ6Im5ld3MiO3M6NToidGl0bGUiO3M6MTE6Imtra3JycnJycnJyIjtzOjU6Im9yZGVyIjtzOjE6IjIiO3M6NDoidGV4dCI7czoyNDoiUEhBK1pXVmxaV1ZsWldWbFBDOXdQZz09Ijt9fXM6ODoiYWJvdXRfdXMiO086MTI6IkFwcFxEYXRhSXRlbSI6Mjp7czoyOiJpZCI7TjtzOjk6IgAqAGZpZWxkcyI7YTo0OntzOjQ6ImxpbmsiO3M6ODoiYWJvdXRfdXMiO3M6NToidGl0bGUiO3M6OToi0J4g0L3QsNGBIjtzOjU6Im9yZGVyIjtzOjE6IjMiO3M6NDoidGV4dCI7czozMjoiUEhBK1BHSSswSjRnMEwzUXNOR0JQQzlpUGp3dmNEND0iO319fXM6NToicGhvbmUiO3M6MDoiIjtzOjEwOiJzYWxlc291cmNlIjtzOjE6IjAiO30='),('val','a:2:{s:7:\"vallist\";a:2:{i:1642675955;O:12:\"App\\DataItem\":2:{s:2:\"id\";i:1642675955;s:9:\"\0*\0fields\";a:3:{s:4:\"code\";s:3:\"USD\";s:4:\"name\";s:10:\"Долар\";s:4:\"rate\";s:2:\"28\";}}i:1642676126;O:12:\"App\\DataItem\":2:{s:2:\"id\";i:1642676126;s:9:\"\0*\0fields\";a:3:{s:4:\"code\";s:4:\"EURO\";s:4:\"name\";s:8:\"Євро\";s:4:\"rate\";s:2:\"33\";}}}s:8:\"valprice\";i:0;}'),('version','6.5.0');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parealist`
--

DROP TABLE IF EXISTS `parealist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parealist` (
  `pa_id` int NOT NULL AUTO_INCREMENT,
  `pa_name` varchar(255) NOT NULL,
  PRIMARY KEY (`pa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parealist`
--

LOCK TABLES `parealist` WRITE;
/*!40000 ALTER TABLE `parealist` DISABLE KEYS */;
/*!40000 ALTER TABLE `parealist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paylist`
--

DROP TABLE IF EXISTS `paylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paylist` (
  `pl_id` bigint NOT NULL AUTO_INCREMENT,
  `document_id` int NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `mf_id` int DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `paydate` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `paytype` smallint NOT NULL,
  `detail` longtext,
  `bonus` int DEFAULT NULL,
  PRIMARY KEY (`pl_id`),
  KEY `document_id` (`document_id`),
  CONSTRAINT `paylist_ibfk_1` FOREIGN KEY (`document_id`) REFERENCES `documents` (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=861 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paylist`
--

LOCK TABLES `paylist` WRITE;
/*!40000 ALTER TABLE `paylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `paylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `paylist_view`
--

DROP TABLE IF EXISTS `paylist_view`;
/*!50001 DROP VIEW IF EXISTS `paylist_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paylist_view` AS SELECT 
 1 AS `pl_id`,
 1 AS `document_id`,
 1 AS `amount`,
 1 AS `mf_id`,
 1 AS `notes`,
 1 AS `user_id`,
 1 AS `paydate`,
 1 AS `paytype`,
 1 AS `bonus`,
 1 AS `document_number`,
 1 AS `username`,
 1 AS `mf_name`,
 1 AS `customer_id`,
 1 AS `customer_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `poslist`
--

DROP TABLE IF EXISTS `poslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poslist` (
  `pos_id` int NOT NULL AUTO_INCREMENT,
  `pos_name` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `branch_id` int DEFAULT '0',
  PRIMARY KEY (`pos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poslist`
--

LOCK TABLES `poslist` WRITE;
/*!40000 ALTER TABLE `poslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `poslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ppo_zformrep`
--

DROP TABLE IF EXISTS `ppo_zformrep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ppo_zformrep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createdon` date NOT NULL,
  `fnpos` varchar(255) NOT NULL,
  `fndoc` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `cnt` smallint NOT NULL,
  `ramount` decimal(10,2) NOT NULL,
  `rcnt` smallint NOT NULL,
  `sentxml` longtext NOT NULL,
  `taxanswer` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppo_zformrep`
--

LOCK TABLES `ppo_zformrep` WRITE;
/*!40000 ALTER TABLE `ppo_zformrep` DISABLE KEYS */;
/*!40000 ALTER TABLE `ppo_zformrep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ppo_zformstat`
--

DROP TABLE IF EXISTS `ppo_zformstat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ppo_zformstat` (
  `zf_id` int NOT NULL AUTO_INCREMENT,
  `pos_id` int NOT NULL,
  `checktype` int NOT NULL,
  `createdon` datetime NOT NULL,
  `amount0` decimal(10,2) NOT NULL,
  `amount1` decimal(10,2) NOT NULL,
  `amount2` decimal(10,2) NOT NULL,
  `amount3` decimal(10,2) NOT NULL,
  `document_number` varchar(255) DEFAULT NULL,
  `fiscnumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`zf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ppo_zformstat`
--

LOCK TABLES `ppo_zformstat` WRITE;
/*!40000 ALTER TABLE `ppo_zformstat` DISABLE KEYS */;
/*!40000 ALTER TABLE `ppo_zformstat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodproc`
--

DROP TABLE IF EXISTS `prodproc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodproc` (
  `pp_id` int NOT NULL AUTO_INCREMENT,
  `procname` varchar(255) NOT NULL,
  `basedoc` varchar(255) DEFAULT NULL,
  `snumber` varchar(255) DEFAULT NULL,
  `state` smallint DEFAULT '0',
  `detail` longtext,
  PRIMARY KEY (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodproc`
--

LOCK TABLES `prodproc` WRITE;
/*!40000 ALTER TABLE `prodproc` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodproc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prodproc_view`
--

DROP TABLE IF EXISTS `prodproc_view`;
/*!50001 DROP VIEW IF EXISTS `prodproc_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodproc_view` AS SELECT 
 1 AS `pp_id`,
 1 AS `procname`,
 1 AS `basedoc`,
 1 AS `snumber`,
 1 AS `state`,
 1 AS `startdate`,
 1 AS `enddate`,
 1 AS `stagecnt`,
 1 AS `detail`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prodstage`
--

DROP TABLE IF EXISTS `prodstage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodstage` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `pp_id` int NOT NULL,
  `pa_id` int NOT NULL,
  `state` smallint NOT NULL,
  `stagename` varchar(255) NOT NULL,
  `detail` longtext,
  PRIMARY KEY (`st_id`),
  KEY `pp_id` (`pp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodstage`
--

LOCK TABLES `prodstage` WRITE;
/*!40000 ALTER TABLE `prodstage` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodstage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prodstage_view`
--

DROP TABLE IF EXISTS `prodstage_view`;
/*!50001 DROP VIEW IF EXISTS `prodstage_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodstage_view` AS SELECT 
 1 AS `st_id`,
 1 AS `pp_id`,
 1 AS `pa_id`,
 1 AS `state`,
 1 AS `stagename`,
 1 AS `startdate`,
 1 AS `enddate`,
 1 AS `hours`,
 1 AS `detail`,
 1 AS `procname`,
 1 AS `snumber`,
 1 AS `procstate`,
 1 AS `pa_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `prodstageagenda`
--

DROP TABLE IF EXISTS `prodstageagenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodstageagenda` (
  `sta_id` int NOT NULL AUTO_INCREMENT,
  `st_id` int NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  PRIMARY KEY (`sta_id`),
  KEY `st_id` (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodstageagenda`
--

LOCK TABLES `prodstageagenda` WRITE;
/*!40000 ALTER TABLE `prodstageagenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodstageagenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prodstageagenda_view`
--

DROP TABLE IF EXISTS `prodstageagenda_view`;
/*!50001 DROP VIEW IF EXISTS `prodstageagenda_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prodstageagenda_view` AS SELECT 
 1 AS `sta_id`,
 1 AS `st_id`,
 1 AS `startdate`,
 1 AS `enddate`,
 1 AS `stagename`,
 1 AS `state`,
 1 AS `hours`,
 1 AS `pa_id`,
 1 AS `pp_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `acl` mediumtext,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admins','a:9:{s:7:\"aclview\";N;s:7:\"acledit\";N;s:6:\"aclexe\";N;s:9:\"aclcancel\";N;s:8:\"aclstate\";N;s:9:\"acldelete\";N;s:7:\"widgets\";N;s:7:\"modules\";N;s:9:\"smartmenu\";s:1:\"8\";}');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `roles_view`
--

DROP TABLE IF EXISTS `roles_view`;
/*!50001 DROP VIEW IF EXISTS `roles_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `roles_view` AS SELECT 
 1 AS `role_id`,
 1 AS `rolename`,
 1 AS `acl`,
 1 AS `cnt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `saltypes`
--

DROP TABLE IF EXISTS `saltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saltypes` (
  `st_id` int NOT NULL AUTO_INCREMENT,
  `salcode` int NOT NULL,
  `salname` varchar(255) NOT NULL,
  `salshortname` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saltypes`
--

LOCK TABLES `saltypes` WRITE;
/*!40000 ALTER TABLE `saltypes` DISABLE KEYS */;
INSERT INTO `saltypes` VALUES (2,105,'Основна зарплата','осн',0),(3,200,'Всього нараховано','вс. нар',0),(4,600,'Всього утримано','вс. утр',0),(5,900,'До видачi','До видачi',0),(6,850,'Аванс','Аванс',0),(7,220,'НДФО','НДФО',0),(8,300,'ЕСВ','ЕСВ',0);
/*!40000 ALTER TABLE `saltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `detail` text,
  `disabled` tinyint(1) DEFAULT '0',
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attributes`
--

DROP TABLE IF EXISTS `shop_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_attributes` (
  `attribute_id` int NOT NULL AUTO_INCREMENT,
  `attributename` varchar(64) NOT NULL,
  `cat_id` int NOT NULL,
  `attributetype` tinyint NOT NULL,
  `valueslist` text,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attributes`
--

LOCK TABLES `shop_attributes` WRITE;
/*!40000 ALTER TABLE `shop_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_attributes_order`
--

DROP TABLE IF EXISTS `shop_attributes_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_attributes_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `attr_id` int NOT NULL,
  `pg_id` int NOT NULL,
  `ordern` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attributes_order`
--

LOCK TABLES `shop_attributes_order` WRITE;
/*!40000 ALTER TABLE `shop_attributes_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_attributes_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shop_attributes_view`
--

DROP TABLE IF EXISTS `shop_attributes_view`;
/*!50001 DROP VIEW IF EXISTS `shop_attributes_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shop_attributes_view` AS SELECT 
 1 AS `attribute_id`,
 1 AS `attributename`,
 1 AS `cat_id`,
 1 AS `attributetype`,
 1 AS `valueslist`,
 1 AS `ordern`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shop_attributevalues`
--

DROP TABLE IF EXISTS `shop_attributevalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_attributevalues` (
  `attributevalue_id` int NOT NULL AUTO_INCREMENT,
  `attribute_id` int NOT NULL,
  `item_id` int NOT NULL,
  `attributevalue` varchar(255) NOT NULL,
  PRIMARY KEY (`attributevalue_id`),
  KEY `attribute_id` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_attributevalues`
--

LOCK TABLES `shop_attributevalues` WRITE;
/*!40000 ALTER TABLE `shop_attributevalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_attributevalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_prod_comments`
--

DROP TABLE IF EXISTS `shop_prod_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_prod_comments` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` tinyint NOT NULL DEFAULT '0',
  `moderated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `product_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_prod_comments`
--

LOCK TABLES `shop_prod_comments` WRITE;
/*!40000 ALTER TABLE `shop_prod_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_prod_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shop_products_view`
--

DROP TABLE IF EXISTS `shop_products_view`;
/*!50001 DROP VIEW IF EXISTS `shop_products_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shop_products_view` AS SELECT 
 1 AS `item_id`,
 1 AS `itemname`,
 1 AS `description`,
 1 AS `detail`,
 1 AS `item_code`,
 1 AS `bar_code`,
 1 AS `cat_id`,
 1 AS `msr`,
 1 AS `disabled`,
 1 AS `minqty`,
 1 AS `item_type`,
 1 AS `manufacturer`,
 1 AS `cat_name`,
 1 AS `qty`,
 1 AS `comments`,
 1 AS `ratings`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shop_varitems`
--

DROP TABLE IF EXISTS `shop_varitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_varitems` (
  `varitem_id` int NOT NULL AUTO_INCREMENT,
  `var_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`varitem_id`),
  KEY `item_id` (`item_id`),
  KEY `var_id` (`var_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_varitems`
--

LOCK TABLES `shop_varitems` WRITE;
/*!40000 ALTER TABLE `shop_varitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_varitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shop_varitems_view`
--

DROP TABLE IF EXISTS `shop_varitems_view`;
/*!50001 DROP VIEW IF EXISTS `shop_varitems_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shop_varitems_view` AS SELECT 
 1 AS `varitem_id`,
 1 AS `var_id`,
 1 AS `item_id`,
 1 AS `attr_id`,
 1 AS `attributevalue`,
 1 AS `itemname`,
 1 AS `item_code`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shop_vars`
--

DROP TABLE IF EXISTS `shop_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_vars` (
  `var_id` int NOT NULL AUTO_INCREMENT,
  `attr_id` int NOT NULL,
  `varname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`var_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_vars`
--

LOCK TABLES `shop_vars` WRITE;
/*!40000 ALTER TABLE `shop_vars` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `shop_vars_view`
--

DROP TABLE IF EXISTS `shop_vars_view`;
/*!50001 DROP VIEW IF EXISTS `shop_vars_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `shop_vars_view` AS SELECT 
 1 AS `var_id`,
 1 AS `attr_id`,
 1 AS `varname`,
 1 AS `attributename`,
 1 AS `cat_id`,
 1 AS `cnt`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` smallint NOT NULL,
  `keyd` int NOT NULL,
  `vald` int NOT NULL,
  `dt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `dt` (`dt`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_stock`
--

DROP TABLE IF EXISTS `store_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_stock` (
  `stock_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `partion` decimal(11,2) DEFAULT NULL,
  `store_id` int NOT NULL,
  `qty` decimal(11,3) DEFAULT '0.000',
  `snumber` varchar(64) DEFAULT NULL,
  `sdate` date DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `item_id` (`item_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `store_stock_fk` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`),
  CONSTRAINT `store_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_stock`
--

LOCK TABLES `store_stock` WRITE;
/*!40000 ALTER TABLE `store_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `store_stock_view`
--

DROP TABLE IF EXISTS `store_stock_view`;
/*!50001 DROP VIEW IF EXISTS `store_stock_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `store_stock_view` AS SELECT 
 1 AS `stock_id`,
 1 AS `item_id`,
 1 AS `partion`,
 1 AS `store_id`,
 1 AS `itemname`,
 1 AS `item_code`,
 1 AS `cat_id`,
 1 AS `msr`,
 1 AS `item_type`,
 1 AS `bar_code`,
 1 AS `cat_name`,
 1 AS `itemdisabled`,
 1 AS `storename`,
 1 AS `qty`,
 1 AS `snumber`,
 1 AS `sdate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `storename` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `branch_id` int DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (30,'Основний склад','',0,0);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribes` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_type` int DEFAULT NULL,
  `reciever_type` int DEFAULT NULL,
  `msg_type` int DEFAULT NULL,
  `msgtext` text,
  `detail` longtext,
  `disabled` int DEFAULT '0',
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supitems`
--

DROP TABLE IF EXISTS `supitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supitems` (
  `supitem_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `sup_id` int NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sup_code` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supitem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supitems`
--

LOCK TABLES `supitems` WRITE;
/*!40000 ALTER TABLE `supitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `supitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `time_id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `t_start` datetime DEFAULT NULL,
  `t_end` datetime DEFAULT NULL,
  `t_type` int DEFAULT '0',
  `t_break` smallint DEFAULT '0',
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`time_id`),
  KEY `emp_id` (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `timesheet_view`
--

DROP TABLE IF EXISTS `timesheet_view`;
/*!50001 DROP VIEW IF EXISTS `timesheet_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `timesheet_view` AS SELECT 
 1 AS `time_id`,
 1 AS `emp_id`,
 1 AS `description`,
 1 AS `t_start`,
 1 AS `t_end`,
 1 AS `t_type`,
 1 AS `t_break`,
 1 AS `emp_name`,
 1 AS `branch_name`,
 1 AS `disabled`,
 1 AS `branch_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `userlogin` varchar(32) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `createdon` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `acl` mediumtext NOT NULL,
  `disabled` int NOT NULL DEFAULT '0',
  `options` longtext,
  `role_id` int DEFAULT NULL,
  `lastactive` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `userlogin` (`userlogin`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin','$2y$10$GsjC.thVpQAPMQMO6b4Ma.olbIFr2KMGFz12l5/wnmxI1PEqRDQf.','2017-01-01','admin@admin.admin','a:2:{s:9:\"aclbranch\";N;s:6:\"onlymy\";N;}',0,'a:6:{s:8:\"defstore\";s:2:\"19\";s:7:\"deffirm\";i:0;s:5:\"defmf\";s:1:\"2\";s:8:\"pagesize\";s:2:\"15\";s:11:\"hidesidebar\";i:0;s:8:\"mainpage\";s:15:\"\\App\\Pages\\Main\";}',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users_view`
--

DROP TABLE IF EXISTS `users_view`;
/*!50001 DROP VIEW IF EXISTS `users_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_view` AS SELECT 
 1 AS `user_id`,
 1 AS `userlogin`,
 1 AS `userpass`,
 1 AS `createdon`,
 1 AS `email`,
 1 AS `acl`,
 1 AS `options`,
 1 AS `disabled`,
 1 AS `lastactive`,
 1 AS `rolename`,
 1 AS `role_id`,
 1 AS `roleacl`,
 1 AS `employee_id`,
 1 AS `username`*/;
SET character_set_client = @saved_cs_client;

--
-- Current Database: `zstore`
--

USE `zstore`;

--
-- Final view structure for view `contracts_view`
--

/*!50001 DROP VIEW IF EXISTS `contracts_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `contracts_view` AS select `co`.`contract_id` AS `contract_id`,`co`.`customer_id` AS `customer_id`,`co`.`firm_id` AS `firm_id`,`co`.`createdon` AS `createdon`,`co`.`contract_number` AS `contract_number`,`co`.`disabled` AS `disabled`,`co`.`details` AS `details`,`cu`.`customer_name` AS `customer_name`,`f`.`firm_name` AS `firm_name` from ((`contracts` `co` join `customers` `cu` on((`co`.`customer_id` = `cu`.`customer_id`))) left join `firms` `f` on((`co`.`firm_id` = `f`.`firm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cust_acc_view`
--

/*!50001 DROP VIEW IF EXISTS `cust_acc_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cust_acc_view` AS select coalesce(sum((case when (`d`.`meta_name` in ('InvoiceCust','GoodsReceipt','IncomeService','OutcomeMoney')) then `d`.`payed` when ((`d`.`meta_name` = 'OutcomeMoney') and (`d`.`content` like '%<detail>2</detail>%')) then `d`.`payed` when (`d`.`meta_name` = 'RetCustIssue') then `d`.`payamount` else 0 end)),0) AS `s_passive`,coalesce(sum((case when (`d`.`meta_name` in ('IncomeService','GoodsReceipt')) then `d`.`payamount` when ((`d`.`meta_name` = 'IncomeMoney') and (`d`.`content` like '%<detail>2</detail>%')) then `d`.`payed` when (`d`.`meta_name` = 'RetCustIssue') then `d`.`payed` else 0 end)),0) AS `s_active`,coalesce(sum((case when (`d`.`meta_name` in ('GoodsIssue','TTN','PosCheck','OrderFood','ServiceAct')) then `d`.`payamount` when ((`d`.`meta_name` = 'OutcomeMoney') and (`d`.`content` like '%<detail>1</detail>%')) then `d`.`payed` when (`d`.`meta_name` = 'ReturnIssue') then `d`.`payed` else 0 end)),0) AS `b_passive`,coalesce(sum((case when (`d`.`meta_name` in ('GoodsIssue','Order','PosCheck','OrderFood','Invoice','ServiceAct')) then `d`.`payed` when ((`d`.`meta_name` = 'IncomeMoney') and (`d`.`content` like '%<detail>1</detail>%')) then `d`.`payed` when (`d`.`meta_name` = 'ReturnIssue') then `d`.`payamount` else 0 end)),0) AS `b_active`,`d`.`customer_id` AS `customer_id` from `documents_view` `d` where ((`d`.`state` not in (0,1,2,3,15,8,17)) and (`d`.`customer_id` > 0)) group by `d`.`customer_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `custitems_view`
--

/*!50001 DROP VIEW IF EXISTS `custitems_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `custitems_view` AS select `s`.`custitem_id` AS `custitem_id`,`s`.`item_id` AS `item_id`,`s`.`customer_id` AS `customer_id`,`s`.`quantity` AS `quantity`,`s`.`price` AS `price`,`s`.`updatedon` AS `updatedon`,`s`.`cust_code` AS `cust_code`,`s`.`comment` AS `comment`,`i`.`itemname` AS `itemname`,`i`.`cat_id` AS `cat_id`,`i`.`item_code` AS `item_code`,`i`.`detail` AS `detail`,`c`.`customer_name` AS `customer_name` from ((`custitems` `s` join `items` `i` on((`s`.`item_id` = `i`.`item_id`))) join `customers` `c` on((`s`.`customer_id` = `c`.`customer_id`))) where ((`i`.`disabled` <> 1) and (`c`.`status` <> 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customers_view`
--

/*!50001 DROP VIEW IF EXISTS `customers_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customers_view` AS select `customers`.`customer_id` AS `customer_id`,`customers`.`customer_name` AS `customer_name`,`customers`.`detail` AS `detail`,`customers`.`email` AS `email`,`customers`.`phone` AS `phone`,`customers`.`status` AS `status`,`customers`.`city` AS `city`,`customers`.`leadsource` AS `leadsource`,`customers`.`leadstatus` AS `leadstatus`,`customers`.`country` AS `country`,`customers`.`passw` AS `passw`,(select count(0) from `messages` `m` where ((`m`.`item_id` = `customers`.`customer_id`) and (`m`.`item_type` = 2))) AS `mcnt`,(select count(0) from `files` `f` where ((`f`.`item_id` = `customers`.`customer_id`) and (`f`.`item_type` = 2))) AS `fcnt`,(select count(0) from `eventlist` `e` where ((`e`.`customer_id` = `customers`.`customer_id`) and (`e`.`eventdate` >= now()))) AS `ecnt` from `customers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `docstatelog_view`
--

/*!50001 DROP VIEW IF EXISTS `docstatelog_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `docstatelog_view` AS select `dl`.`log_id` AS `log_id`,`dl`.`user_id` AS `user_id`,`dl`.`document_id` AS `document_id`,`dl`.`docstate` AS `docstate`,`dl`.`createdon` AS `createdon`,`dl`.`hostname` AS `hostname`,`u`.`username` AS `username`,`d`.`document_number` AS `document_number`,`d`.`meta_desc` AS `meta_desc`,`d`.`meta_name` AS `meta_name` from ((`docstatelog` `dl` join `users_view` `u` on((`dl`.`user_id` = `u`.`user_id`))) join `documents_view` `d` on((`d`.`document_id` = `dl`.`document_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `documents_view`
--

/*!50001 DROP VIEW IF EXISTS `documents_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `documents_view` AS select `d`.`document_id` AS `document_id`,`d`.`document_number` AS `document_number`,`d`.`document_date` AS `document_date`,`d`.`user_id` AS `user_id`,`d`.`content` AS `content`,`d`.`amount` AS `amount`,`d`.`meta_id` AS `meta_id`,`u`.`username` AS `username`,`c`.`customer_id` AS `customer_id`,`c`.`customer_name` AS `customer_name`,`d`.`state` AS `state`,`d`.`notes` AS `notes`,`d`.`payamount` AS `payamount`,`d`.`payed` AS `payed`,`d`.`parent_id` AS `parent_id`,`d`.`branch_id` AS `branch_id`,`b`.`branch_name` AS `branch_name`,`d`.`firm_id` AS `firm_id`,`d`.`priority` AS `priority`,`f`.`firm_name` AS `firm_name`,`d`.`lastupdate` AS `lastupdate`,`metadata`.`meta_name` AS `meta_name`,`metadata`.`description` AS `meta_desc` from (((((`documents` `d` left join `users_view` `u` on((`d`.`user_id` = `u`.`user_id`))) left join `customers` `c` on((`d`.`customer_id` = `c`.`customer_id`))) join `metadata` on((`metadata`.`meta_id` = `d`.`meta_id`))) left join `branches` `b` on((`d`.`branch_id` = `b`.`branch_id`))) left join `firms` `f` on((`d`.`firm_id` = `f`.`firm_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `empacc_view`
--

/*!50001 DROP VIEW IF EXISTS `empacc_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `empacc_view` AS select `e`.`ea_id` AS `ea_id`,`e`.`emp_id` AS `emp_id`,`e`.`document_id` AS `document_id`,`e`.`optype` AS `optype`,`d`.`notes` AS `notes`,`e`.`amount` AS `amount`,coalesce(`e`.`createdon`,`d`.`document_date`) AS `createdon`,`d`.`document_number` AS `document_number`,`em`.`emp_name` AS `emp_name` from ((`empacc` `e` left join `documents` `d` on((`d`.`document_id` = `e`.`document_id`))) join `employees` `em` on((`em`.`employee_id` = `e`.`emp_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `entrylist_view`
--

/*!50001 DROP VIEW IF EXISTS `entrylist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `entrylist_view` AS select `entrylist`.`entry_id` AS `entry_id`,`entrylist`.`document_id` AS `document_id`,`entrylist`.`quantity` AS `quantity`,`documents`.`customer_id` AS `customer_id`,`entrylist`.`stock_id` AS `stock_id`,`entrylist`.`service_id` AS `service_id`,`entrylist`.`tag` AS `tag`,`store_stock`.`item_id` AS `item_id`,`store_stock`.`partion` AS `partion`,`documents`.`document_date` AS `document_date`,`entrylist`.`outprice` AS `outprice` from ((`entrylist` left join `store_stock` on((`entrylist`.`stock_id` = `store_stock`.`stock_id`))) join `documents` on((`entrylist`.`document_id` = `documents`.`document_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `eventlist_view`
--

/*!50001 DROP VIEW IF EXISTS `eventlist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `eventlist_view` AS select `e`.`user_id` AS `user_id`,`e`.`eventdate` AS `eventdate`,`e`.`title` AS `title`,`e`.`description` AS `description`,`e`.`event_id` AS `event_id`,`e`.`customer_id` AS `customer_id`,`e`.`isdone` AS `isdone`,`c`.`customer_name` AS `customer_name` from (`eventlist` `e` left join `customers` `c` on((`e`.`customer_id` = `c`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `iostate_view`
--

/*!50001 DROP VIEW IF EXISTS `iostate_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `iostate_view` AS select `s`.`id` AS `id`,`s`.`document_id` AS `document_id`,`s`.`iotype` AS `iotype`,`s`.`amount` AS `amount`,`d`.`document_date` AS `document_date`,`d`.`branch_id` AS `branch_id` from (`iostate` `s` join `documents` `d` on((`s`.`document_id` = `d`.`document_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issue_issuelist_view`
--

/*!50001 DROP VIEW IF EXISTS `issue_issuelist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `issue_issuelist_view` AS select `i`.`issue_id` AS `issue_id`,`i`.`issue_name` AS `issue_name`,`i`.`details` AS `details`,`i`.`status` AS `status`,`i`.`priority` AS `priority`,`i`.`user_id` AS `user_id`,`i`.`lastupdate` AS `lastupdate`,`i`.`project_id` AS `project_id`,`u`.`username` AS `username`,`p`.`project_name` AS `project_name` from ((`issue_issuelist` `i` left join `users_view` `u` on((`i`.`user_id` = `u`.`user_id`))) join `issue_projectlist` `p` on((`i`.`project_id` = `p`.`project_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issue_projectlist_view`
--

/*!50001 DROP VIEW IF EXISTS `issue_projectlist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `issue_projectlist_view` AS select `p`.`project_id` AS `project_id`,`p`.`project_name` AS `project_name`,`p`.`details` AS `details`,`p`.`customer_id` AS `customer_id`,`p`.`status` AS `status`,`c`.`customer_name` AS `customer_name`,(select coalesce(sum((case when (`i`.`status` = 0) then 1 else 0 end)),0) from `issue_issuelist` `i` where (`i`.`project_id` = `p`.`project_id`)) AS `inew`,(select coalesce(sum((case when (`i`.`status` > 1) then 1 else 0 end)),0) from `issue_issuelist` `i` where (`i`.`project_id` = `p`.`project_id`)) AS `iproc`,(select coalesce(sum((case when (`i`.`status` = 1) then 1 else 0 end)),0) from `issue_issuelist` `i` where (`i`.`project_id` = `p`.`project_id`)) AS `iclose` from (`issue_projectlist` `p` left join `customers` `c` on((`p`.`customer_id` = `c`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `issue_time_view`
--

/*!50001 DROP VIEW IF EXISTS `issue_time_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `issue_time_view` AS select `t`.`id` AS `id`,`t`.`issue_id` AS `issue_id`,`t`.`createdon` AS `createdon`,`t`.`user_id` AS `user_id`,`t`.`duration` AS `duration`,`t`.`notes` AS `notes`,`u`.`username` AS `username`,`i`.`issue_name` AS `issue_name`,`i`.`project_id` AS `project_id`,`i`.`project_name` AS `project_name` from ((`issue_time` `t` join `users_view` `u` on((`t`.`user_id` = `u`.`user_id`))) join `issue_issuelist_view` `i` on((`t`.`issue_id` = `i`.`issue_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `item_set_view`
--

/*!50001 DROP VIEW IF EXISTS `item_set_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `item_set_view` AS select `item_set`.`set_id` AS `set_id`,`item_set`.`item_id` AS `item_id`,`item_set`.`pitem_id` AS `pitem_id`,`item_set`.`qty` AS `qty`,`item_set`.`service_id` AS `service_id`,`item_set`.`cost` AS `cost`,`items`.`itemname` AS `itemname`,`items`.`item_code` AS `item_code`,`services`.`service_name` AS `service_name` from ((`item_set` left join `items` on((`item_set`.`item_id` = `items`.`item_id`))) left join `services` on((`item_set`.`service_id` = `services`.`service_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `items_view`
--

/*!50001 DROP VIEW IF EXISTS `items_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `items_view` AS select `items`.`item_id` AS `item_id`,`items`.`itemname` AS `itemname`,`items`.`description` AS `description`,`items`.`detail` AS `detail`,`items`.`item_code` AS `item_code`,`items`.`bar_code` AS `bar_code`,`items`.`cat_id` AS `cat_id`,`items`.`msr` AS `msr`,`items`.`disabled` AS `disabled`,`items`.`minqty` AS `minqty`,`items`.`item_type` AS `item_type`,`items`.`manufacturer` AS `manufacturer`,`item_cat`.`cat_name` AS `cat_name` from (`items` left join `item_cat` on((`items`.`cat_id` = `item_cat`.`cat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `messages_view`
--

/*!50001 DROP VIEW IF EXISTS `messages_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `messages_view` AS select `messages`.`message_id` AS `message_id`,`messages`.`user_id` AS `user_id`,`messages`.`created` AS `created`,`messages`.`message` AS `message`,`messages`.`item_id` AS `item_id`,`messages`.`item_type` AS `item_type`,`users_view`.`username` AS `username` from (`messages` join `users_view` on((`messages`.`user_id` = `users_view`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `note_nodesview`
--

/*!50001 DROP VIEW IF EXISTS `note_nodesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `note_nodesview` AS select `note_nodes`.`node_id` AS `node_id`,`note_nodes`.`pid` AS `pid`,`note_nodes`.`title` AS `title`,`note_nodes`.`mpath` AS `mpath`,`note_nodes`.`user_id` AS `user_id`,`note_nodes`.`ispublic` AS `ispublic`,(select count(`note_topicnode`.`topic_id`) AS `Count(topic_id)` from `note_topicnode` where (`note_topicnode`.`node_id` = `note_nodes`.`node_id`)) AS `tcnt` from `note_nodes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `note_topicnodeview`
--

/*!50001 DROP VIEW IF EXISTS `note_topicnodeview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `note_topicnodeview` AS select `note_topicnode`.`topic_id` AS `topic_id`,`note_topicnode`.`node_id` AS `node_id`,`note_topicnode`.`tn_id` AS `tn_id`,`note_topics`.`title` AS `title`,`note_nodes`.`user_id` AS `user_id`,`note_topics`.`content` AS `content` from ((`note_topics` join `note_topicnode` on((`note_topics`.`topic_id` = `note_topicnode`.`topic_id`))) join `note_nodes` on((`note_nodes`.`node_id` = `note_topicnode`.`node_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `note_topicsview`
--

/*!50001 DROP VIEW IF EXISTS `note_topicsview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `note_topicsview` AS select `t`.`topic_id` AS `topic_id`,`t`.`title` AS `title`,`t`.`content` AS `content`,`t`.`acctype` AS `acctype`,`t`.`user_id` AS `user_id` from `note_topics` `t` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paylist_view`
--

/*!50001 DROP VIEW IF EXISTS `paylist_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paylist_view` AS select `pl`.`pl_id` AS `pl_id`,`pl`.`document_id` AS `document_id`,`pl`.`amount` AS `amount`,`pl`.`mf_id` AS `mf_id`,`pl`.`notes` AS `notes`,`pl`.`user_id` AS `user_id`,`pl`.`paydate` AS `paydate`,`pl`.`paytype` AS `paytype`,`pl`.`bonus` AS `bonus`,`d`.`document_number` AS `document_number`,`u`.`username` AS `username`,`m`.`mf_name` AS `mf_name`,`d`.`customer_id` AS `customer_id`,`d`.`customer_name` AS `customer_name` from (((`paylist` `pl` join `documents_view` `d` on((`pl`.`document_id` = `d`.`document_id`))) left join `users_view` `u` on((`pl`.`user_id` = `u`.`user_id`))) left join `mfund` `m` on((`pl`.`mf_id` = `m`.`mf_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodproc_view`
--

/*!50001 DROP VIEW IF EXISTS `prodproc_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodproc_view` AS select `p`.`pp_id` AS `pp_id`,`p`.`procname` AS `procname`,`p`.`basedoc` AS `basedoc`,`p`.`snumber` AS `snumber`,`p`.`state` AS `state`,coalesce((select min(`ps`.`startdate`) from `prodstage_view` `ps` where (`ps`.`pp_id` = `p`.`pp_id`)),NULL) AS `startdate`,coalesce((select max(`ps`.`enddate`) from `prodstage_view` `ps` where (`ps`.`pp_id` = `p`.`pp_id`)),NULL) AS `enddate`,coalesce((select count(0) from `prodstage` `ps` where (`ps`.`pp_id` = `p`.`pp_id`)),NULL) AS `stagecnt`,`p`.`detail` AS `detail` from `prodproc` `p` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodstage_view`
--

/*!50001 DROP VIEW IF EXISTS `prodstage_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodstage_view` AS select `ps`.`st_id` AS `st_id`,`ps`.`pp_id` AS `pp_id`,`ps`.`pa_id` AS `pa_id`,`ps`.`state` AS `state`,`ps`.`stagename` AS `stagename`,coalesce((select min(`pag`.`startdate`) from `prodstageagenda` `pag` where (`pag`.`st_id` = `ps`.`st_id`)),NULL) AS `startdate`,coalesce((select max(`pag`.`enddate`) from `prodstageagenda` `pag` where (`pag`.`st_id` = `ps`.`st_id`)),NULL) AS `enddate`,coalesce((select max(`pag`.`hours`) from `prodstageagenda_view` `pag` where (`pag`.`st_id` = `ps`.`st_id`)),NULL) AS `hours`,`ps`.`detail` AS `detail`,`pr`.`procname` AS `procname`,`pr`.`snumber` AS `snumber`,`pr`.`state` AS `procstate`,`pa`.`pa_name` AS `pa_name` from ((`prodstage` `ps` join `prodproc` `pr` on((`pr`.`pp_id` = `ps`.`pp_id`))) join `parealist` `pa` on((`pa`.`pa_id` = `ps`.`pa_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prodstageagenda_view`
--

/*!50001 DROP VIEW IF EXISTS `prodstageagenda_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prodstageagenda_view` AS select `a`.`sta_id` AS `sta_id`,`a`.`st_id` AS `st_id`,`a`.`startdate` AS `startdate`,`a`.`enddate` AS `enddate`,`pv`.`stagename` AS `stagename`,`pv`.`state` AS `state`,(timestampdiff(MINUTE,`a`.`startdate`,`a`.`enddate`) / 60) AS `hours`,`pv`.`pa_id` AS `pa_id`,`pv`.`pp_id` AS `pp_id` from (`prodstageagenda` `a` join `prodstage` `pv` on((`a`.`st_id` = `pv`.`st_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `roles_view`
--

/*!50001 DROP VIEW IF EXISTS `roles_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `roles_view` AS select `roles`.`role_id` AS `role_id`,`roles`.`rolename` AS `rolename`,`roles`.`acl` AS `acl`,(select coalesce(count(0),0) from `users` where (`users`.`role_id` = `roles`.`role_id`)) AS `cnt` from `roles` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shop_attributes_view`
--

/*!50001 DROP VIEW IF EXISTS `shop_attributes_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shop_attributes_view` AS select `shop_attributes`.`attribute_id` AS `attribute_id`,`shop_attributes`.`attributename` AS `attributename`,`shop_attributes`.`cat_id` AS `cat_id`,`shop_attributes`.`attributetype` AS `attributetype`,`shop_attributes`.`valueslist` AS `valueslist`,`shop_attributes_order`.`ordern` AS `ordern` from (`shop_attributes` join `shop_attributes_order` on(((`shop_attributes`.`attribute_id` = `shop_attributes_order`.`attr_id`) and (`shop_attributes`.`cat_id` = `shop_attributes_order`.`pg_id`)))) order by `shop_attributes_order`.`ordern` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shop_products_view`
--

/*!50001 DROP VIEW IF EXISTS `shop_products_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shop_products_view` AS select `i`.`item_id` AS `item_id`,`i`.`itemname` AS `itemname`,`i`.`description` AS `description`,`i`.`detail` AS `detail`,`i`.`item_code` AS `item_code`,`i`.`bar_code` AS `bar_code`,`i`.`cat_id` AS `cat_id`,`i`.`msr` AS `msr`,`i`.`disabled` AS `disabled`,`i`.`minqty` AS `minqty`,`i`.`item_type` AS `item_type`,`i`.`manufacturer` AS `manufacturer`,`i`.`cat_name` AS `cat_name`,coalesce((select sum(`store_stock`.`qty`) from `store_stock` where (`store_stock`.`item_id` = `i`.`item_id`)),0) AS `qty`,coalesce((select count(0) from `shop_prod_comments` `c` where (`c`.`item_id` = `i`.`item_id`)),0) AS `comments`,coalesce((select sum(`c`.`rating`) from `shop_prod_comments` `c` where (`c`.`item_id` = `i`.`item_id`)),0) AS `ratings` from `items_view` `i` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shop_varitems_view`
--

/*!50001 DROP VIEW IF EXISTS `shop_varitems_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shop_varitems_view` AS select `shop_varitems`.`varitem_id` AS `varitem_id`,`shop_varitems`.`var_id` AS `var_id`,`shop_varitems`.`item_id` AS `item_id`,`sv`.`attr_id` AS `attr_id`,`sa`.`attributevalue` AS `attributevalue`,`it`.`itemname` AS `itemname`,`it`.`item_code` AS `item_code` from (((`shop_varitems` join `shop_vars` `sv` on((`shop_varitems`.`var_id` = `sv`.`var_id`))) join `shop_attributevalues` `sa` on(((`sa`.`item_id` = `shop_varitems`.`item_id`) and (`sv`.`attr_id` = `sa`.`attribute_id`)))) join `items` `it` on((`shop_varitems`.`item_id` = `it`.`item_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `shop_vars_view`
--

/*!50001 DROP VIEW IF EXISTS `shop_vars_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `shop_vars_view` AS select `shop_vars`.`var_id` AS `var_id`,`shop_vars`.`attr_id` AS `attr_id`,`shop_vars`.`varname` AS `varname`,`shop_attributes`.`attributename` AS `attributename`,`shop_attributes`.`cat_id` AS `cat_id`,(select count(0) from `shop_varitems` where (`shop_varitems`.`var_id` = `shop_vars`.`var_id`)) AS `cnt` from ((`shop_vars` join `shop_attributes` on((`shop_vars`.`attr_id` = `shop_attributes`.`attribute_id`))) join `item_cat` on((`shop_attributes`.`cat_id` = `item_cat`.`cat_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `store_stock_view`
--

/*!50001 DROP VIEW IF EXISTS `store_stock_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `store_stock_view` AS select `st`.`stock_id` AS `stock_id`,`st`.`item_id` AS `item_id`,`st`.`partion` AS `partion`,`st`.`store_id` AS `store_id`,`i`.`itemname` AS `itemname`,`i`.`item_code` AS `item_code`,`i`.`cat_id` AS `cat_id`,`i`.`msr` AS `msr`,`i`.`item_type` AS `item_type`,`i`.`bar_code` AS `bar_code`,`i`.`cat_name` AS `cat_name`,`i`.`disabled` AS `itemdisabled`,`stores`.`storename` AS `storename`,`st`.`qty` AS `qty`,`st`.`snumber` AS `snumber`,`st`.`sdate` AS `sdate` from ((`store_stock` `st` join `items_view` `i` on(((`i`.`item_id` = `st`.`item_id`) and (`i`.`disabled` <> 1)))) join `stores` on((`stores`.`store_id` = `st`.`store_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `timesheet_view`
--

/*!50001 DROP VIEW IF EXISTS `timesheet_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `timesheet_view` AS select `t`.`time_id` AS `time_id`,`t`.`emp_id` AS `emp_id`,`t`.`description` AS `description`,`t`.`t_start` AS `t_start`,`t`.`t_end` AS `t_end`,`t`.`t_type` AS `t_type`,`t`.`t_break` AS `t_break`,`e`.`emp_name` AS `emp_name`,`b`.`branch_name` AS `branch_name`,`e`.`disabled` AS `disabled`,`t`.`branch_id` AS `branch_id` from ((`timesheet` `t` join `employees` `e` on((`t`.`emp_id` = `e`.`employee_id`))) left join `branches` `b` on((`t`.`branch_id` = `b`.`branch_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_view`
--

/*!50001 DROP VIEW IF EXISTS `users_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_view` AS select `users`.`user_id` AS `user_id`,`users`.`userlogin` AS `userlogin`,`users`.`userpass` AS `userpass`,`users`.`createdon` AS `createdon`,`users`.`email` AS `email`,`users`.`acl` AS `acl`,`users`.`options` AS `options`,`users`.`disabled` AS `disabled`,`users`.`lastactive` AS `lastactive`,`roles`.`rolename` AS `rolename`,`users`.`role_id` AS `role_id`,`roles`.`acl` AS `roleacl`,coalesce(`employees`.`employee_id`,0) AS `employee_id`,(case when (`employees`.`emp_name` is null) then `users`.`userlogin` else `employees`.`emp_name` end) AS `username` from ((`users` left join `employees` on(((`users`.`userlogin` = `employees`.`login`) and (`employees`.`disabled` <> 1)))) left join `roles` on((`users`.`role_id` = `roles`.`role_id`))) */;
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

-- Dump completed on 2023-05-15  8:55:27
