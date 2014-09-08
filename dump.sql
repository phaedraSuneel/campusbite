-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ordering_development
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

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
-- Table structure for table `addon_subcategories`
--

DROP TABLE IF EXISTS `addon_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addon_subcategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addon_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_subcategories`
--

LOCK TABLES `addon_subcategories` WRITE;
/*!40000 ALTER TABLE `addon_subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addons`
--

DROP TABLE IF EXISTS `addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` float DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `menu_category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons`
--

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (13,'On Campus','SCHOOL',NULL,2,8,1231,'Karachu','Sindh',54111,1,2147483647,'2014-03-29 22:44:20','2014-04-01 08:10:37'),(14,'Off Campus','Office',NULL,2,7,12321,'Lahore','Punjab',54000,1,NULL,'2014-03-29 22:49:19','2014-03-31 09:53:36'),(15,'On Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,7,12321,'','',NULL,8,2147483647,'2014-04-01 18:33:10','2014-04-01 18:33:10'),(16,'Off Campus','My Room',NULL,2,NULL,12321,'Lahore','Punjab',54000,8,2147483647,'2014-04-01 20:35:53','2014-04-01 20:35:53'),(17,'On Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,7,12321,'','',NULL,8,2147483647,'2014-04-01 20:51:31','2014-04-01 20:51:31'),(18,'Off Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,NULL,12321,'','',NULL,8,2147483647,'2014-04-01 21:45:27','2014-04-01 21:45:27'),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL,'2014-04-03 07:57:29','2014-04-03 07:57:29'),(20,'On Campus','School Address',NULL,2,7,123,'','',NULL,14,2147483647,'2014-04-08 12:17:34','2014-04-08 12:17:34'),(21,'On Campus','School Address',NULL,2,8,123,'','',NULL,13,2147483647,'2014-04-09 07:12:08','2014-04-09 07:12:08'),(22,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:41:58','2014-04-18 06:41:58'),(23,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:54:17','2014-04-18 06:54:17'),(24,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:55:04','2014-04-18 06:55:04'),(25,'On Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,10,123,'','',NULL,28,2147483647,'2014-07-04 08:53:57','2014-07-04 08:53:57'),(27,'Off Campus','College Address',NULL,2,NULL,123,'Lahore','Punjab',54000,14,2147483647,'2014-07-08 07:22:42','2014-07-08 07:22:42'),(29,'Off Campus','School Address',NULL,2,NULL,123,'','',NULL,14,2147483647,'2014-07-08 10:14:12','2014-07-08 10:14:12'),(30,'On Campus','School Address','',2,9,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 07:06:38','2014-07-09 07:06:38'),(31,'On Campus','School Address','',2,9,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 07:08:53','2014-07-09 07:08:53'),(32,'On Campus','School Address','',2,9,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 07:10:20','2014-07-09 07:10:20'),(33,'On Campus','School Address','',2,9,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 07:10:34','2014-07-09 07:10:34'),(34,'On Campus','','',2,9,NULL,'','AL',NULL,NULL,23123,'2014-07-09 07:11:33','2014-07-09 07:11:33'),(35,'On Campus','','',2,9,NULL,'','AL',NULL,NULL,23123,'2014-07-09 07:13:11','2014-07-09 07:13:11'),(36,'On Campus','','',2,9,NULL,'','AL',NULL,NULL,23123,'2014-07-09 07:14:40','2014-07-09 07:14:40'),(37,'On Campus','','',2,9,NULL,'','AL',NULL,NULL,23123,'2014-07-09 07:15:10','2014-07-09 07:15:10'),(38,'On Campus','','',2,9,NULL,'','AL',NULL,NULL,23123,'2014-07-09 07:15:37','2014-07-09 07:15:37'),(39,'On Campus','','',NULL,NULL,NULL,'','AL',NULL,NULL,NULL,'2014-07-09 09:09:34','2014-07-09 09:09:34'),(40,'On Campus','','',NULL,NULL,NULL,'','AL',NULL,NULL,NULL,'2014-07-09 09:11:10','2014-07-09 09:11:10'),(41,'On Campus','','',NULL,NULL,NULL,'','AL',NULL,NULL,NULL,'2014-07-09 09:12:32','2014-07-09 09:12:32'),(42,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:36:01','2014-07-09 09:36:01'),(43,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:37:03','2014-07-09 09:37:03'),(44,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:39:54','2014-07-09 09:39:54'),(45,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:41:33','2014-07-09 09:41:33'),(46,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:42:00','2014-07-09 09:42:00'),(47,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:43:28','2014-07-09 09:43:28'),(48,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:43:48','2014-07-09 09:43:48'),(49,'On Campus','School Address','',2,10,NULL,'','AL',NULL,NULL,2147483647,'2014-07-09 09:45:01','2014-07-09 09:45:01');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentications`
--

DROP TABLE IF EXISTS `authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expiration_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentications`
--

LOCK TABLES `authentications` WRITE;
/*!40000 ALTER TABLE `authentications` DISABLE KEYS */;
INSERT INTO `authentications` VALUES (1,'facebook','100000495823602',2,'CAADtCfyK6ZBgBANrBYdciFcxzV5lPs1FKPaX07uhpcWQHNBOHQh3bjRpR4ZACspHxCBO2r2taBgEd0Y95ZAsZCPPBTe73C9JLda0TmiIGMC41KsLguCXZAK9IIHJciF1ZAYptZC6ZAIznOf1GWZB6eUPAarCj7HmQ4s6mkgmgxzFYmkxq5BhcQEUu',NULL,'2014-03-06 06:57:12','2014-03-06 06:57:12');
/*!40000 ALTER TABLE `authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_infos`
--

DROP TABLE IF EXISTS `bank_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `routine_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swift_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_infos`
--

LOCK TABLES `bank_infos` WRITE;
/*!40000 ALTER TABLE `bank_infos` DISABLE KEYS */;
INSERT INTO `bank_infos` VALUES (7,'Habib Bank','455F45','155','CSAD14',7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(8,'Habib Bank','455F45','155','CSAD14',8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(10,'Habib Bank','455F45','155','CSAD14',10,'2014-03-11 07:08:25','2014-03-11 07:08:25'),(14,'Allied Bank','123BCNB','155','CSAD14',14,'2014-04-08 11:10:02','2014-04-10 07:01:59'),(21,'Habib Bank','455F45','155','CSAD14',21,'2014-06-18 10:17:26','2014-06-18 10:17:26');
/*!40000 ALTER TABLE `bank_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (3,'2014-06-05 12:16:47','2014-06-05 12:16:47','Main Image'),(4,'2014-06-05 12:31:59','2014-07-04 10:39:16','Slider Image'),(5,'2014-06-05 12:42:49','2014-06-05 12:42:49','Slider Image'),(6,'2014-06-05 12:43:11','2014-07-04 09:22:15','Slider Image'),(7,'2014-07-04 09:22:26','2014-07-04 09:22:26','Slider Image');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `break_schedules`
--

DROP TABLE IF EXISTS `break_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `break_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `sechedule_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `break_schedules`
--

LOCK TABLES `break_schedules` WRITE;
/*!40000 ALTER TABLE `break_schedules` DISABLE KEYS */;
INSERT INTO `break_schedules` VALUES (43,'00:00:00','00:00:00',316,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(44,'00:00:00','00:00:00',317,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(45,'00:00:00','00:00:00',318,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(46,'00:00:00','00:00:00',319,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(47,'00:00:00','00:00:00',320,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(48,'00:00:00','00:00:00',321,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(49,'00:00:00','00:00:00',322,'2014-06-18 10:17:26','2014-06-19 05:47:16'),(50,'00:00:00','00:00:00',323,'2014-06-18 10:17:26','2014-06-19 05:47:17'),(51,'00:00:00','00:00:00',324,'2014-06-18 10:17:26','2014-06-19 05:47:17'),(52,'00:00:00','00:00:00',325,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(53,'00:00:00','00:00:00',326,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(54,'00:00:00','00:00:00',327,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(55,'00:00:00','00:00:00',328,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(56,'00:00:00','00:00:00',329,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(57,'08:00:00','23:00:00',330,'2014-06-18 10:17:27','2014-07-08 06:13:20'),(58,'00:00:00','00:00:00',331,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(59,'00:00:00','00:00:00',332,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(60,'00:00:00','00:00:00',333,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(61,'00:00:00','00:00:00',334,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(62,'00:00:00','00:00:00',335,'2014-06-18 10:17:27','2014-06-19 05:47:17'),(63,'00:00:00','00:00:00',336,'2014-06-18 10:17:27','2014-06-19 05:47:17');
/*!40000 ALTER TABLE `break_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_adress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (7,'test','1722 Sacramento St. San Francisco, CA 94109',2,'test','test',1312321,'2014-03-29 19:37:26','2014-07-23 18:19:00'),(9,'Business','1722 Sacramento St. San Francisco, CA 94109',2,'Lahore','Punjab',54000,'2014-04-10 14:32:32','2014-07-23 18:18:33'),(10,'Computer Science','1722 Sacramento St. San Francisco, CA 94109',2,'USA','Francisco',54000,'2014-04-10 14:33:48','2014-07-23 18:18:42'),(11,'Qalma Chowk','CIIT Lahore Rawind Road Lahore Pakistan',2,'Lahore','Punjab',54000,'2014-06-10 07:01:42','2014-07-23 18:19:07'),(12,'Qalma Chowk','CIIT Lahore Rawind Road Lahore Pakistan',2,'Lahore','Punjab',54000,'2014-06-10 07:09:58','2014-06-10 07:09:58');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus_suggestions`
--

DROP TABLE IF EXISTS `campus_suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campus_suggestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus_suggestions`
--

LOCK TABLES `campus_suggestions` WRITE;
/*!40000 ALTER TABLE `campus_suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `campus_suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expiration_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cardholder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `masked_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_number_identifier` int(11) DEFAULT NULL,
  `card_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (5,'2014-07-01 00:00:00',8,NULL,'gqswr2','424242',87369392,'Visa','2014-04-01 19:31:59','2014-04-01 19:31:59'),(6,'2014-10-01 00:00:00',8,NULL,'5y5h5g','555555',7,'MasterCard','2014-04-01 19:32:24','2014-04-01 19:32:24'),(7,'2014-08-01 00:00:00',8,NULL,'gr8yg2','601111',0,'Discover','2014-04-01 21:23:31','2014-04-01 21:23:31'),(8,'2014-08-01 00:00:00',8,NULL,'36598w','601111',0,'Discover','2014-04-01 21:24:35','2014-04-01 21:24:35'),(9,'2016-10-01 00:00:00',8,NULL,'h2nm8b','356600******0505',0,'JCB','2014-04-02 07:07:51','2014-04-02 07:07:51'),(14,'2014-12-01 00:00:00',14,NULL,'9bpps6','371449******8431',2,'American Express','2014-04-08 12:18:13','2014-04-08 12:18:13'),(15,'2014-11-01 00:00:00',1,NULL,'2xhkfg','356600******0505',0,'JCB','2014-04-09 06:42:36','2014-04-09 06:42:36'),(16,'2018-11-01 00:00:00',1,NULL,'kmstxr','371449******8431',2,'American Express','2014-04-09 06:46:41','2014-04-09 06:46:41'),(17,'2014-12-01 00:00:00',1,NULL,'96j5fg','601111******1117',0,'Discover','2014-04-09 06:58:07','2014-04-09 06:58:07'),(18,'2014-12-01 00:00:00',1,NULL,'fxky2m','601111******1117',0,'Discover','2014-04-09 06:59:59','2014-04-09 06:59:59'),(19,'2018-12-01 00:00:00',13,NULL,'dq2p9g','601111******1117',0,'Discover','2014-04-09 07:12:14','2014-04-09 07:12:14'),(20,'2014-06-01 00:00:00',14,NULL,'j8x8xr','424242******4242',87369392,'Visa','2014-04-09 11:39:24','2014-04-09 11:39:24'),(21,'2014-10-01 00:00:00',5,NULL,'drfhyb','601111******1117',0,'Discover','2014-04-18 06:20:38','2014-04-18 06:20:38'),(22,'2015-12-01 00:00:00',14,NULL,'4zx8t2','353011******0000',1,'JCB','2014-06-20 08:33:50','2014-06-20 08:33:50');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsibilities` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'BRAND AMBASSADOR','TEXAS','-Use our key business goals, market strategies and consumer insights to create innovative plans that drive measurable results.\r\n-Develop marketing programs to drive brand awareness, in-network word of mouth and new customer growth both on a local and national scale.\r\n-Understand our key markets and the cultural drivers/differences in each and leverage that knowledge to build targeted local marketing plans.\r\n-Serve as the project manager in the execution and resource management for key marketing initiatives, ensuring they are executed on time and under budget.\r\n-Use your creative skills to develop stand-alone tactics as well as collaborate on integrated marketing initiatives in a way that brings our brands to life.','2014-07-02 06:23:05','2014-07-02 06:23:05'),(2,'SALES PERSON','CALIFORNIA','-Use our key business goals, market strategies and consumer insights to create innovative plans that drive measurable results.\r\n-Develop marketing programs to drive brand awareness, in-network word of mouth and new customer growth both on a local and national scale.\r\n-Understand our key markets and the cultural drivers/differences in each and leverage that knowledge to build targeted local marketing plans.\r\n-Serve as the project manager in the execution and resource management for key marketing initiatives, ensuring they are executed on time and under budget.\r\n-Use your creative skills to develop stand-alone tactics as well as collaborate on integrated marketing initiatives in a way that brings our brands to life.','2014-07-02 06:24:07','2014-07-02 06:24:07'),(3,'CUSTOMER SERVICE','TEXAS','-Use our key business goals, market strategies and consumer insights to create innovative plans that drive measurable results.\r\n-Develop marketing programs to drive brand awareness, in-network word of mouth and new customer growth both on a local and national scale.\r\n-Understand our key markets and the cultural drivers/differences in each and leverage that knowledge to build targeted local marketing plans.\r\n-Serve as the project manager in the execution and resource management for key marketing initiatives, ensuring they are executed on time and under budget.\r\n-Use your creative skills to develop stand-alone tactics as well as collaborate on integrated marketing initiatives in a way that brings our brands to life.','2014-07-02 06:24:50','2014-07-02 06:24:50'),(4,'test','test','test','2014-07-02 06:31:41','2014-07-02 06:31:41');
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_menu_item_group_items`
--

DROP TABLE IF EXISTS `cart_menu_item_group_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_menu_item_group_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_menu_item_id` int(11) DEFAULT NULL,
  `group_item_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_menu_item_group_items`
--

LOCK TABLES `cart_menu_item_group_items` WRITE;
/*!40000 ALTER TABLE `cart_menu_item_group_items` DISABLE KEYS */;
INSERT INTO `cart_menu_item_group_items` VALUES (24,195,12,'2014-06-19 06:39:18','2014-06-19 06:39:18'),(25,195,14,'2014-06-19 06:39:18','2014-06-19 06:39:18'),(26,196,11,'2014-06-19 06:44:55','2014-06-19 06:44:55'),(27,196,14,'2014-06-19 06:44:55','2014-06-19 06:44:55'),(28,197,12,'2014-06-19 07:28:31','2014-06-19 07:28:31'),(29,197,14,'2014-06-19 07:28:31','2014-06-19 07:28:31'),(30,198,15,'2014-06-19 07:28:36','2014-06-19 07:28:36'),(31,198,16,'2014-06-19 07:28:36','2014-06-19 07:28:36'),(32,198,17,'2014-06-19 07:28:36','2014-06-19 07:28:36'),(33,198,18,'2014-06-19 07:28:36','2014-06-19 07:28:36'),(34,198,19,'2014-06-19 07:28:36','2014-06-19 07:28:36'),(35,199,15,'2014-06-19 10:52:03','2014-06-19 10:52:03'),(36,199,16,'2014-06-19 10:52:03','2014-06-19 10:52:03'),(37,199,17,'2014-06-19 10:52:03','2014-06-19 10:52:03'),(38,199,18,'2014-06-19 10:52:03','2014-06-19 10:52:03'),(39,199,19,'2014-06-19 10:52:03','2014-06-19 10:52:03'),(40,200,13,'2014-06-19 11:12:57','2014-06-19 11:12:57'),(41,200,14,'2014-06-19 11:12:57','2014-06-19 11:12:57'),(42,201,15,'2014-06-20 06:30:52','2014-06-20 06:30:52'),(43,201,16,'2014-06-20 06:30:52','2014-06-20 06:30:52'),(44,201,17,'2014-06-20 06:30:52','2014-06-20 06:30:52'),(45,201,18,'2014-06-20 06:30:52','2014-06-20 06:30:52'),(46,201,19,'2014-06-20 06:30:52','2014-06-20 06:30:52'),(47,202,12,'2014-06-20 08:07:43','2014-06-20 08:07:43'),(48,202,14,'2014-06-20 08:07:43','2014-06-20 08:07:43'),(49,203,12,'2014-06-20 08:19:32','2014-06-20 08:19:32'),(50,203,14,'2014-06-20 08:19:32','2014-06-20 08:19:32'),(51,204,12,'2014-06-20 08:23:43','2014-06-20 08:23:43'),(52,204,14,'2014-06-20 08:23:43','2014-06-20 08:23:43'),(53,205,27,'2014-06-20 08:37:10','2014-06-20 08:37:10'),(54,206,13,'2014-06-20 08:55:18','2014-06-20 08:55:18'),(55,206,14,'2014-06-20 08:55:18','2014-06-20 08:55:18'),(56,207,28,'2014-06-25 18:58:20','2014-06-25 18:58:20'),(57,207,29,'2014-06-25 18:58:20','2014-06-25 18:58:20'),(58,207,30,'2014-06-25 18:58:20','2014-06-25 18:58:20'),(59,NULL,28,'2014-07-04 11:06:50','2014-07-04 11:06:50'),(60,NULL,29,'2014-07-04 11:06:50','2014-07-04 11:06:50'),(61,NULL,30,'2014-07-04 11:06:50','2014-07-04 11:06:50'),(62,208,12,'2014-07-07 08:30:05','2014-07-07 08:30:05'),(63,208,14,'2014-07-07 08:30:05','2014-07-07 08:30:05'),(64,NULL,12,'2014-07-07 11:14:35','2014-07-07 11:14:35'),(65,NULL,14,'2014-07-07 11:14:35','2014-07-07 11:14:35'),(66,NULL,13,'2014-07-08 06:38:58','2014-07-08 06:38:58'),(67,NULL,14,'2014-07-08 06:38:58','2014-07-08 06:38:58'),(68,NULL,12,'2014-07-08 06:54:35','2014-07-08 06:54:35'),(69,NULL,14,'2014-07-08 06:54:35','2014-07-08 06:54:35'),(70,NULL,12,'2014-07-08 06:55:42','2014-07-08 06:55:42'),(71,NULL,14,'2014-07-08 06:55:42','2014-07-08 06:55:42'),(72,NULL,12,'2014-07-08 07:00:39','2014-07-08 07:00:39'),(73,NULL,14,'2014-07-08 07:00:39','2014-07-08 07:00:39'),(74,214,13,'2014-07-08 07:10:46','2014-07-08 07:10:46'),(75,214,14,'2014-07-08 07:10:46','2014-07-08 07:10:46'),(76,215,13,'2014-07-08 07:18:45','2014-07-08 07:18:45'),(77,215,14,'2014-07-08 07:18:45','2014-07-08 07:18:45'),(78,NULL,11,'2014-07-08 10:05:37','2014-07-08 10:05:37'),(79,NULL,14,'2014-07-08 10:05:37','2014-07-08 10:05:37'),(80,217,12,'2014-07-08 10:06:30','2014-07-08 10:06:30'),(81,217,14,'2014-07-08 10:06:30','2014-07-08 10:06:30'),(82,218,12,'2014-07-08 10:15:19','2014-07-08 10:15:19'),(83,218,14,'2014-07-08 10:15:19','2014-07-08 10:15:19'),(84,219,13,'2014-07-08 11:01:23','2014-07-08 11:01:23'),(85,219,14,'2014-07-08 11:01:23','2014-07-08 11:01:23'),(86,220,13,'2014-07-08 11:16:46','2014-07-08 11:16:46'),(87,220,14,'2014-07-08 11:16:46','2014-07-08 11:16:46'),(88,221,12,'2014-07-08 11:24:00','2014-07-08 11:24:00'),(89,221,14,'2014-07-08 11:24:00','2014-07-08 11:24:00'),(90,222,13,'2014-07-08 11:26:14','2014-07-08 11:26:14'),(91,222,14,'2014-07-08 11:26:14','2014-07-08 11:26:14'),(92,223,15,'2014-07-08 11:27:19','2014-07-08 11:27:19'),(93,223,16,'2014-07-08 11:27:19','2014-07-08 11:27:19'),(94,223,17,'2014-07-08 11:27:19','2014-07-08 11:27:19'),(95,223,18,'2014-07-08 11:27:19','2014-07-08 11:27:19'),(96,223,19,'2014-07-08 11:27:19','2014-07-08 11:27:19'),(97,224,15,'2014-07-08 11:28:01','2014-07-08 11:28:01'),(98,224,16,'2014-07-08 11:28:01','2014-07-08 11:28:01'),(99,224,17,'2014-07-08 11:28:01','2014-07-08 11:28:01'),(100,224,18,'2014-07-08 11:28:01','2014-07-08 11:28:01'),(101,224,19,'2014-07-08 11:28:01','2014-07-08 11:28:01'),(102,225,15,'2014-07-08 11:31:22','2014-07-08 11:31:22'),(103,225,16,'2014-07-08 11:31:22','2014-07-08 11:31:22'),(104,225,17,'2014-07-08 11:31:22','2014-07-08 11:31:22'),(105,225,18,'2014-07-08 11:31:22','2014-07-08 11:31:22'),(106,225,19,'2014-07-08 11:31:22','2014-07-08 11:31:22'),(107,226,13,'2014-07-08 11:58:39','2014-07-08 11:58:39'),(108,226,14,'2014-07-08 11:58:39','2014-07-08 11:58:39'),(109,227,25,'2014-07-08 12:05:16','2014-07-08 12:05:16'),(110,227,26,'2014-07-08 12:05:16','2014-07-08 12:05:16'),(111,227,27,'2014-07-08 12:05:16','2014-07-08 12:05:16'),(112,228,13,'2014-07-08 12:05:35','2014-07-08 12:05:35'),(113,228,14,'2014-07-08 12:05:35','2014-07-08 12:05:35'),(114,229,25,'2014-07-09 01:14:04','2014-07-09 01:14:04'),(115,229,26,'2014-07-09 01:14:04','2014-07-09 01:14:04'),(116,229,27,'2014-07-09 01:14:04','2014-07-09 01:14:04'),(117,230,12,'2014-07-09 01:14:19','2014-07-09 01:14:19'),(118,230,14,'2014-07-09 01:14:19','2014-07-09 01:14:19'),(119,231,13,'2014-07-09 05:38:07','2014-07-09 05:38:07'),(120,231,14,'2014-07-09 05:38:07','2014-07-09 05:38:07'),(121,232,25,'2014-07-09 06:11:14','2014-07-09 06:11:14'),(122,232,26,'2014-07-09 06:11:14','2014-07-09 06:11:14'),(123,232,27,'2014-07-09 06:11:14','2014-07-09 06:11:14'),(124,233,12,'2014-07-09 06:47:47','2014-07-09 06:47:47'),(125,233,14,'2014-07-09 06:47:47','2014-07-09 06:47:47'),(126,234,12,'2014-07-09 06:49:40','2014-07-09 06:49:40'),(127,234,14,'2014-07-09 06:49:40','2014-07-09 06:49:40'),(128,235,13,'2014-07-09 08:01:25','2014-07-09 08:01:25'),(129,235,14,'2014-07-09 08:01:25','2014-07-09 08:01:25'),(130,236,13,'2014-07-09 09:22:43','2014-07-09 09:22:43'),(131,236,14,'2014-07-09 09:22:43','2014-07-09 09:22:43'),(132,237,13,'2014-07-09 09:52:25','2014-07-09 09:52:25'),(133,237,14,'2014-07-09 09:52:25','2014-07-09 09:52:25'),(134,238,12,'2014-07-23 05:33:00','2014-07-23 05:33:00'),(135,238,14,'2014-07-23 05:33:00','2014-07-23 05:33:00'),(136,239,25,'2014-07-23 05:57:30','2014-07-23 05:57:30'),(137,239,26,'2014-07-23 05:57:30','2014-07-23 05:57:30'),(138,239,27,'2014-07-23 05:57:30','2014-07-23 05:57:30'),(139,240,12,'2014-07-23 06:51:43','2014-07-23 06:51:43'),(140,240,14,'2014-07-23 06:51:43','2014-07-23 06:51:43'),(141,241,25,'2014-07-23 07:18:45','2014-07-23 07:18:45'),(142,241,26,'2014-07-23 07:18:45','2014-07-23 07:18:45'),(143,241,27,'2014-07-23 07:18:45','2014-07-23 07:18:45'),(144,242,13,'2014-07-23 10:32:53','2014-07-23 10:32:53'),(145,242,14,'2014-07-23 10:32:53','2014-07-23 10:32:53'),(146,243,13,'2014-07-24 08:05:36','2014-07-24 08:05:36'),(147,243,14,'2014-07-24 08:05:36','2014-07-24 08:05:36'),(148,244,13,'2014-07-24 08:13:17','2014-07-24 08:13:17'),(149,244,14,'2014-07-24 08:13:17','2014-07-24 08:13:17'),(150,245,13,'2014-07-24 08:23:47','2014-07-24 08:23:47'),(151,245,14,'2014-07-24 08:23:47','2014-07-24 08:23:47');
/*!40000 ALTER TABLE `cart_menu_item_group_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_menu_items`
--

DROP TABLE IF EXISTS `cart_menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_id` int(11) DEFAULT NULL,
  `menu_item_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `menu_item_property_id` int(11) DEFAULT NULL,
  `instruction` text COLLATE utf8_unicode_ci,
  `restaurant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_menu_items`
--

LOCK TABLES `cart_menu_items` WRITE;
/*!40000 ALTER TABLE `cart_menu_items` DISABLE KEYS */;
INSERT INTO `cart_menu_items` VALUES (195,NULL,87,1,'2014-06-19 06:39:18','2014-06-19 06:39:18',NULL,'',21),(196,NULL,87,1,'2014-06-19 06:44:55','2014-06-19 06:44:55',NULL,'',21),(197,NULL,87,1,'2014-06-19 07:28:31','2014-06-19 07:28:31',NULL,'',21),(198,NULL,88,1,'2014-06-19 07:28:36','2014-06-19 07:28:36',NULL,'',21),(199,NULL,88,1,'2014-06-19 10:52:03','2014-06-19 10:52:03',NULL,'',21),(200,NULL,87,1,'2014-06-19 11:12:57','2014-06-19 11:12:57',NULL,'',21),(201,NULL,88,1,'2014-06-20 06:30:52','2014-06-20 06:30:52',NULL,'',21),(202,NULL,87,1,'2014-06-20 08:07:43','2014-06-20 08:07:43',NULL,'',21),(203,NULL,87,1,'2014-06-20 08:19:32','2014-06-20 08:19:32',NULL,'',21),(204,NULL,87,1,'2014-06-20 08:23:43','2014-06-20 08:23:43',NULL,'',21),(205,NULL,91,1,'2014-06-20 08:37:10','2014-06-20 08:37:10',NULL,'',21),(206,NULL,87,1,'2014-06-20 08:55:18','2014-06-20 08:55:18',NULL,'',21),(207,NULL,92,1,'2014-06-25 18:58:20','2014-06-25 18:58:20',NULL,'',8),(208,NULL,87,1,'2014-07-07 08:30:05','2014-07-07 08:30:05',NULL,'',21),(214,NULL,87,1,'2014-07-08 07:10:46','2014-07-08 07:10:46',NULL,'',21),(215,NULL,87,1,'2014-07-08 07:18:45','2014-07-08 07:18:45',NULL,'',21),(217,NULL,87,1,'2014-07-08 10:06:30','2014-07-08 10:06:30',NULL,'',21),(218,NULL,87,1,'2014-07-08 10:15:19','2014-07-08 10:15:19',NULL,'',21),(219,NULL,87,1,'2014-07-08 11:01:23','2014-07-08 11:01:23',NULL,'',21),(220,NULL,87,1,'2014-07-08 11:16:46','2014-07-08 11:16:46',NULL,'',21),(221,NULL,87,1,'2014-07-08 11:24:00','2014-07-08 11:24:00',NULL,'',21),(222,NULL,87,1,'2014-07-08 11:26:14','2014-07-08 11:26:14',NULL,'',21),(223,NULL,88,1,'2014-07-08 11:27:19','2014-07-08 11:27:19',NULL,'',21),(224,NULL,88,1,'2014-07-08 11:28:01','2014-07-08 11:28:01',NULL,'',21),(225,NULL,88,1,'2014-07-08 11:31:22','2014-07-08 11:31:22',NULL,'',21),(226,NULL,87,1,'2014-07-08 11:58:39','2014-07-08 11:58:39',NULL,'',21),(227,NULL,91,1,'2014-07-08 12:05:16','2014-07-08 12:05:30',NULL,'',21),(228,NULL,87,1,'2014-07-08 12:05:35','2014-07-08 12:05:35',NULL,'',21),(229,NULL,91,1,'2014-07-09 01:14:04','2014-07-09 01:14:04',NULL,'',21),(230,NULL,87,1,'2014-07-09 01:14:19','2014-07-09 01:14:19',NULL,'',21),(231,NULL,87,1,'2014-07-09 05:38:07','2014-07-09 05:38:07',NULL,'',21),(232,NULL,91,4,'2014-07-09 06:11:14','2014-07-09 06:11:34',NULL,'',21),(233,NULL,87,1,'2014-07-09 06:47:47','2014-07-09 06:47:47',NULL,'',21),(234,NULL,87,1,'2014-07-09 06:49:40','2014-07-09 06:49:40',NULL,'',21),(235,NULL,87,1,'2014-07-09 08:01:25','2014-07-09 08:01:25',NULL,'',21),(236,NULL,87,1,'2014-07-09 09:22:43','2014-07-09 09:22:43',NULL,'',21),(237,NULL,87,1,'2014-07-09 09:52:25','2014-07-09 09:52:25',NULL,'',21),(238,NULL,87,1,'2014-07-23 05:33:00','2014-07-23 05:33:00',NULL,'',21),(239,NULL,91,7,'2014-07-23 05:57:30','2014-07-23 07:17:18',NULL,'',21),(240,3,87,10,'2014-07-23 06:51:43','2014-07-23 06:54:37',NULL,'',21),(241,NULL,91,2,'2014-07-23 07:18:45','2014-07-23 07:19:51',NULL,'',21),(242,4,87,1,'2014-07-23 10:32:53','2014-07-23 10:33:03',NULL,'',21),(243,NULL,87,1,'2014-07-24 08:05:36','2014-07-24 08:05:36',NULL,'',21),(244,NULL,87,1,'2014-07-24 08:13:17','2014-07-24 08:13:17',NULL,'',21),(245,NULL,87,2,'2014-07-24 08:23:47','2014-07-24 08:23:47',NULL,'',21);
/*!40000 ALTER TABLE `cart_menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'delivery',
  `guest_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,'aMEk0jc-RRB9E5OsD_cn_Q',NULL,'2014-07-23 06:51:43','2014-07-23 07:27:19',21,'pickup',NULL),(4,NULL,NULL,'2014-07-23 10:32:53','2014-07-23 11:01:41',21,'delivery',NULL);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,15,'Nam pretium turpis et arcu. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis.','2014-07-23 18:24:38','2014-07-23 18:24:38');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_infos`
--

DROP TABLE IF EXISTS `contact_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_street_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` int(11) DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `map_photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_photo_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_infos`
--

LOCK TABLES `contact_infos` WRITE;
/*!40000 ALTER TABLE `contact_infos` DISABLE KEYS */;
INSERT INTO `contact_infos` VALUES (7,'Come and Eat Food','923353455244','http://www.royalfree.nhs.uk/','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',7,'2014-03-06 12:51:17','2014-03-06 12:51:17','02-539x205.jpg','image/jpeg',26676),(8,'Latif Restaurant','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',8,'2014-03-06 14:49:21','2014-03-06 14:49:21',NULL,NULL,NULL),(10,'Karach Corner','923353455244','http://www.karachcorner.com','1722 Sacramento St. San Francisco, CA 94109','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',10,'2014-03-11 07:08:25','2014-03-11 07:08:25',NULL,NULL,NULL),(14,'Karach Corner  Restaurant','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'Suneel Kumar',NULL,'sunny.ciitlahore@gmail.com',14,'2014-04-08 11:10:02','2014-07-24 06:37:40',NULL,NULL,NULL),(21,'Optp Restort','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'Suneel Kumar',NULL,'sunny.ciitlahore@gmail.com',21,'2014-06-18 10:17:26','2014-06-18 10:17:26','map.png','image/png',71855);
/*!40000 ALTER TABLE `contact_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_us`
--

LOCK TABLES `contact_us` WRITE;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_amount` float DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `max_user` int(11) DEFAULT NULL,
  `max_use` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES (2,'CD3442F',500,'$ off',15,'2014-06-17 05:05:00','2014-10-17 05:05:00',50,5,'2014-06-17 05:05:44','2014-06-17 05:05:44'),(3,'CD3442F',100,'$ off',15,'2014-06-17 05:48:00','2014-06-17 05:48:00',5,10,'2014-06-17 05:48:26','2014-06-17 05:48:26'),(4,'123',5,'% off',1500,'2014-04-20 07:53:00','2014-08-20 07:53:00',3,3,'2014-06-20 07:54:36','2014-06-20 09:05:32');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons_schools`
--

DROP TABLE IF EXISTS `coupons_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupons_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons_schools`
--

LOCK TABLES `coupons_schools` WRITE;
/*!40000 ALTER TABLE `coupons_schools` DISABLE KEYS */;
INSERT INTO `coupons_schools` VALUES (5,2,2),(6,2,5),(7,2,8),(8,2,12),(9,3,2),(10,3,3),(11,3,4),(12,3,5),(13,3,6),(14,3,8),(15,3,9),(16,3,10),(17,3,12),(18,4,2);
/*!40000 ALTER TABLE `coupons_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuisines`
--

DROP TABLE IF EXISTS `cuisines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuisines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuisines`
--

LOCK TABLES `cuisines` WRITE;
/*!40000 ALTER TABLE `cuisines` DISABLE KEYS */;
INSERT INTO `cuisines` VALUES (1,'Pizza','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet. At vero eos et accusam et justo duo dolores et ea rebum.','2014-03-03 17:42:26','2014-03-03 17:42:26','WWW.YIFY-TORRENTS.COM.jpg','image/jpeg',130677),(2,'Burgers','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. Sanctus sea sed takimata ut vero voluptua. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.','2014-03-03 18:52:54','2014-03-03 18:52:54','WWW.YIFY-TORRENTS.COM.jpg','image/jpeg',130677),(3,'Cucina Italiana','Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.','2014-03-03 18:53:52','2014-03-03 18:53:52','WWW.YIFY-TORRENTS.COM.jpg','image/jpeg',130677),(4,'Burgers','Ut enim ad minim','2014-04-11 09:16:57','2014-04-11 09:16:57','add.png','image/png',282200);
/*!40000 ALTER TABLE `cuisines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `handler` text COLLATE utf8_unicode_ci NOT NULL,
  `last_error` text COLLATE utf8_unicode_ci,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (6,0,0,'--- !ruby/object:ThinkingSphinx::Deltas::DelayedDelta::DeltaJob\nindex: restaurant_delta\n',NULL,'2014-07-24 10:57:34',NULL,NULL,NULL,NULL,'2014-07-24 10:57:34','2014-07-24 10:57:34'),(7,0,0,'--- !ruby/object:ThinkingSphinx::Deltas::DelayedDelta::FlagAsDeletedJob\nindex: restaurant_core\ndocument_id: 84\n',NULL,'2014-07-24 10:57:34',NULL,NULL,NULL,NULL,'2014-07-24 10:57:34','2014-07-24 10:57:34'),(8,0,0,'--- !ruby/object:ThinkingSphinx::Deltas::DelayedDelta::FlagAsDeletedJob\nindex: restaurant_core\ndocument_id: 42\n',NULL,'2014-07-24 11:18:05',NULL,NULL,NULL,NULL,'2014-07-24 11:18:05','2014-07-24 11:18:05'),(9,0,0,'--- !ruby/object:ThinkingSphinx::Deltas::DelayedDelta::FlagAsDeletedJob\nindex: restaurant_core\ndocument_id: 126\n',NULL,'2014-07-24 11:24:59',NULL,NULL,NULL,NULL,'2014-07-24 11:24:59','2014-07-24 11:24:59');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:26','2014-03-11 07:08:26'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(16,21,'2014-06-18 10:17:26','2014-06-18 10:17:26');
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_infos`
--

DROP TABLE IF EXISTS `delivery_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delivery_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delivery` tinyint(1) DEFAULT NULL,
  `delivery_estimated_time` int(11) DEFAULT NULL,
  `delivery_charges` float DEFAULT NULL,
  `delivery_distance` float DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_infos`
--

LOCK TABLES `delivery_infos` WRITE;
/*!40000 ALTER TABLE `delivery_infos` DISABLE KEYS */;
INSERT INTO `delivery_infos` VALUES (7,1,0,1,200,7,'2014-03-06 12:51:17','2014-03-11 14:03:08'),(8,1,12,15,200,8,'2014-03-06 14:49:21','2014-03-12 12:06:36'),(10,1,1,15,200,10,'2014-03-11 07:08:25','2014-03-12 11:40:56'),(14,1,30,0,200,14,'2014-04-08 11:10:02','2014-07-24 10:57:34'),(21,1,30,150,10000,21,'2014-06-18 10:17:26','2014-06-18 10:17:26');
/*!40000 ALTER TABLE `delivery_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'How much does it cost to use CampusBite.com?','Our service is completely FREE of charge for any registered user. You simply login, create your order and pay the restaurant\'s usual takeout or delivery prices. MyPizza.com does not charge any additional fees.','2014-07-09 11:50:48','2014-07-09 11:50:48'),(2,'How much does it cost to use CampusBite.com?','Our service is completely FREE of charge for any registered user. You simply login, create your order and pay the restaurant\'s usual takeout or delivery prices. MyPizza.com does not charge any additional fees.\r\n\r\nHow much does it cost to use CampusBite.com?','2014-07-09 11:51:28','2014-07-09 11:51:36');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,2,7,'2014-03-11 09:57:40','2014-03-11 09:57:40'),(3,1,7,'2014-03-30 11:46:01','2014-03-30 11:46:01'),(4,1,10,'2014-03-30 11:59:31','2014-03-30 11:59:31'),(5,8,7,'2014-04-01 20:36:12','2014-04-01 20:36:12'),(7,13,7,'2014-04-09 07:08:56','2014-04-09 07:08:56'),(9,14,14,'2014-07-03 05:31:36','2014-07-03 05:31:36');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_item_menu_item_orders`
--

DROP TABLE IF EXISTS `group_item_menu_item_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_item_menu_item_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_item_order_id` int(11) DEFAULT NULL,
  `group_item_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_item_menu_item_orders`
--

LOCK TABLES `group_item_menu_item_orders` WRITE;
/*!40000 ALTER TABLE `group_item_menu_item_orders` DISABLE KEYS */;
INSERT INTO `group_item_menu_item_orders` VALUES (19,227,12,'2014-06-19 06:39:35','2014-06-19 06:39:35'),(20,227,14,'2014-06-19 06:39:35','2014-06-19 06:39:35'),(21,228,11,'2014-06-19 06:45:36','2014-06-19 06:45:36'),(22,228,14,'2014-06-19 06:45:36','2014-06-19 06:45:36'),(23,229,12,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(24,229,14,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(25,230,15,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(26,230,16,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(27,230,17,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(28,230,18,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(29,230,19,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(30,231,15,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(31,231,16,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(32,231,17,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(33,231,18,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(34,231,19,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(35,232,15,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(36,232,16,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(37,232,17,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(38,232,18,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(39,232,19,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(40,233,13,'2014-06-19 12:14:26','2014-06-19 12:14:26'),(41,233,14,'2014-06-19 12:14:26','2014-06-19 12:14:26'),(42,234,15,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(43,234,16,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(44,234,17,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(45,234,18,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(46,234,19,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(47,235,15,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(48,235,16,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(49,235,17,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(50,235,18,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(51,235,19,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(52,236,15,'2014-06-20 07:58:40','2014-06-20 07:58:40'),(53,236,16,'2014-06-20 07:58:40','2014-06-20 07:58:40'),(54,236,17,'2014-06-20 07:58:40','2014-06-20 07:58:40'),(55,236,18,'2014-06-20 07:58:40','2014-06-20 07:58:40'),(56,236,19,'2014-06-20 07:58:40','2014-06-20 07:58:40'),(57,237,12,'2014-06-20 08:07:55','2014-06-20 08:07:55'),(58,237,14,'2014-06-20 08:07:55','2014-06-20 08:07:55'),(59,238,12,'2014-06-20 08:09:11','2014-06-20 08:09:11'),(60,238,14,'2014-06-20 08:09:11','2014-06-20 08:09:11'),(61,239,27,'2014-06-20 08:37:30','2014-06-20 08:37:30'),(62,240,13,'2014-06-20 09:05:32','2014-06-20 09:05:33'),(63,240,14,'2014-06-20 09:05:32','2014-06-20 09:05:33'),(64,241,12,'2014-07-08 10:14:16','2014-07-08 10:14:16'),(65,241,14,'2014-07-08 10:14:16','2014-07-08 10:14:16'),(66,242,13,'2014-07-09 09:11:15','2014-07-09 09:11:15'),(67,242,14,'2014-07-09 09:11:15','2014-07-09 09:11:15'),(68,243,13,'2014-07-09 09:12:37','2014-07-09 09:12:37'),(69,243,14,'2014-07-09 09:12:37','2014-07-09 09:12:37'),(70,244,13,'2014-07-09 09:46:15','2014-07-09 09:46:15'),(71,244,14,'2014-07-09 09:46:15','2014-07-09 09:46:15'),(72,245,13,'2014-07-09 09:46:39','2014-07-09 09:46:39'),(73,245,14,'2014-07-09 09:46:39','2014-07-09 09:46:39'),(74,246,13,'2014-07-24 08:07:58','2014-07-24 08:07:58'),(75,246,14,'2014-07-24 08:07:58','2014-07-24 08:07:58'),(76,247,13,'2014-07-24 08:17:05','2014-07-24 08:17:05'),(77,247,14,'2014-07-24 08:17:05','2014-07-24 08:17:05'),(78,248,13,'2014-07-24 11:36:35','2014-07-24 11:36:35'),(79,248,14,'2014-07-24 11:36:35','2014-07-24 11:36:35');
/*!40000 ALTER TABLE `group_item_menu_item_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_items`
--

DROP TABLE IF EXISTS `group_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `is_pizza` tinyint(1) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_items`
--

LOCK TABLES `group_items` WRITE;
/*!40000 ALTER TABLE `group_items` DISABLE KEYS */;
INSERT INTO `group_items` VALUES (8,'Sub',12,0,29,'2014-06-16 12:36:55','2014-06-16 12:36:55'),(9,'Test',563,1,29,'2014-06-16 12:36:55','2014-06-16 12:36:55'),(10,'Red Chilies',200,1,33,'2014-06-16 13:20:22','2014-06-16 13:20:22'),(11,'Cold Drink',150,1,34,'2014-06-18 10:24:02','2014-06-18 10:24:02'),(12,'Salad',200,1,34,'2014-06-18 10:24:02','2014-06-18 10:24:02'),(13,'Naan',20,1,34,'2014-06-18 10:24:02','2014-06-18 10:24:02'),(14,'Red Chilies',200,1,35,'2014-06-18 10:25:36','2014-06-18 10:25:36'),(15,'Small',250,1,36,'2014-06-18 10:31:40','2014-06-18 10:32:33'),(16,'Meduim',500,1,36,'2014-06-18 10:31:40','2014-06-18 10:31:40'),(17,'Large',1000,1,36,'2014-06-18 10:31:40','2014-06-18 10:31:40'),(18,'Red Chilies',200,1,37,'2014-06-18 10:32:33','2014-06-18 10:32:33'),(19,'Vegi Lover',500,1,37,'2014-06-18 10:32:33','2014-06-18 10:32:33'),(25,'Small',12,1,43,'2014-06-18 11:32:18','2014-06-18 11:32:18'),(26,'Meduim',50,0,43,'2014-06-18 11:32:18','2014-06-18 11:32:18'),(27,'Large',100,0,43,'2014-06-18 11:32:18','2014-06-18 11:32:18'),(28,'Small',12,1,44,'2014-06-25 18:58:08','2014-06-25 18:58:08'),(29,'Meduim',50,1,44,'2014-06-25 18:58:08','2014-06-25 18:58:08'),(30,'Large',100,1,44,'2014-06-25 18:58:08','2014-06-25 18:58:08');
/*!40000 ALTER TABLE `group_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_limit` int(11) DEFAULT NULL,
  `max_limit` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `menu_item_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (29,'Extra',5,10,'Must choose','Red',1,85,'2014-06-16 12:36:55','2014-06-16 13:18:02'),(30,'',NULL,NULL,'','Red',1,86,'2014-06-16 13:17:07','2014-06-16 13:17:07'),(31,'Test',NULL,NULL,'','Red',1,86,'2014-06-16 13:17:07','2014-06-16 13:17:07'),(32,'Test2',NULL,NULL,'','Red',1,86,'2014-06-16 13:17:07','2014-06-16 13:17:07'),(33,'Test',NULL,NULL,'','Red',1,85,'2014-06-16 13:18:02','2014-06-16 13:18:02'),(34,'Size',1,1,'must one Choose','Red',1,87,'2014-06-18 10:24:02','2014-06-18 13:16:00'),(35,'Extra',0,3,'On your choice','Red',1,87,'2014-06-18 10:24:02','2014-06-18 10:24:02'),(36,'Size',1,3,'Must  Choose btw 1 - 3','Red',1,88,'2014-06-18 10:31:40','2014-06-18 10:31:40'),(37,'Extra',2,3,'at least select two','Red',1,88,'2014-06-18 10:31:40','2014-06-18 10:31:40'),(43,'Size',1,3,'Must  Choose btw 1 - 3','Red',1,91,'2014-06-18 11:32:18','2014-06-20 11:07:46'),(44,'Size',1,3,'Select text','Red',1,92,'2014-06-25 18:58:08','2014-06-25 18:58:08');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` VALUES (1,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 01:38:29','2014-07-09 01:38:29'),(2,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 06:12:00','2014-07-09 06:12:00'),(3,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 06:12:28','2014-07-09 06:12:28'),(4,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 06:13:24','2014-07-09 06:13:24'),(5,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 06:18:58','2014-07-09 06:18:58'),(6,'Suneel','Kumar','sunny.ciitlahore@gmail.com','2014-07-09 06:19:15','2014-07-09 06:19:15'),(9,'Ali','Ahmad','Ahmad@gmail.com','2014-07-09 08:05:28','2014-07-09 08:05:28'),(10,'Dawood','Hussain','Dawood@gmail.com','2014-07-09 09:33:21','2014-07-09 09:33:21'),(11,'','','','2014-07-23 10:43:13','2014-07-23 10:43:13'),(12,'','','','2014-07-23 10:51:06','2014-07-23 10:51:06'),(13,'','','','2014-07-23 10:52:22','2014-07-23 10:52:22');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `join_us`
--

DROP TABLE IF EXISTS `join_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `join_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `join_us`
--

LOCK TABLES `join_us` WRITE;
/*!40000 ALTER TABLE `join_us` DISABLE KEYS */;
/*!40000 ALTER TABLE `join_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_categories`
--

DROP TABLE IF EXISTS `menu_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories`
--

LOCK TABLES `menu_categories` WRITE;
/*!40000 ALTER TABLE `menu_categories` DISABLE KEYS */;
INSERT INTO `menu_categories` VALUES (1,'Daily Special',2,'2014-03-03 11:26:09','2014-03-03 11:26:09','completed',NULL,NULL),(2,'Luch Special',2,'2014-03-03 11:26:13','2014-03-03 11:26:13','completed',NULL,NULL),(3,'Dinner Special',2,'2014-03-03 11:26:16','2014-03-03 11:26:16','completed',NULL,NULL),(4,'Luch Special',3,'2014-03-03 13:54:34','2014-03-03 13:54:34','completed',NULL,NULL),(5,'Dinner Special',3,'2014-03-03 13:54:38','2014-03-03 13:54:38','completed',NULL,NULL),(6,'Dinner Special',3,'2014-03-03 13:54:42','2014-03-03 13:54:42','completed',NULL,NULL),(7,'test',4,'2014-03-03 13:59:03','2014-03-03 13:59:03','completed',NULL,NULL),(8,'lunch',4,'2014-03-03 14:09:32','2014-03-03 14:09:32','completed',NULL,NULL),(9,'Daily Special',5,'2014-03-03 19:31:28','2014-03-03 19:31:28','completed',NULL,NULL),(10,'Luch Special',5,'2014-03-03 19:31:34','2014-03-03 19:31:34','completed',NULL,NULL),(11,'Dinner Special',5,'2014-03-03 19:31:38','2014-03-03 19:31:38','completed',NULL,NULL),(12,'Daily Special',6,'2014-03-05 06:34:41','2014-03-05 06:34:41','completed',NULL,NULL),(13,'Luch Special',6,'2014-03-05 06:34:44','2014-03-05 06:34:44','completed',NULL,NULL),(14,'Dinner Special',6,'2014-03-05 06:34:49','2014-03-05 06:34:57','completed',NULL,NULL),(15,'Daily Special',7,'2014-03-05 08:57:01','2014-03-05 08:57:01','completed',NULL,NULL),(16,'Daily Special',8,'2014-03-05 11:11:52','2014-03-05 11:11:52','completed',NULL,NULL),(17,'Luch Special',8,'2014-03-05 11:11:56','2014-03-05 11:11:56','completed',NULL,NULL),(18,'Daily Special',11,'2014-03-06 05:54:37','2014-03-06 05:54:37','completed',NULL,NULL),(19,'Luch Special',11,'2014-03-06 05:56:00','2014-03-06 05:56:00','completed',NULL,NULL),(20,'Daily Special',10,'2014-03-06 11:15:33','2014-03-06 11:15:33','completed',NULL,NULL),(21,'Dinner Special',10,'2014-03-06 11:15:40','2014-03-06 11:15:40','completed',NULL,NULL),(22,'Daily Special',13,'2014-03-06 11:18:42','2014-03-06 11:18:42','completed',NULL,NULL),(23,'lunch',13,'2014-03-06 11:19:21','2014-03-06 11:19:21','completed',NULL,NULL),(24,'Luch Special',14,'2014-03-06 12:42:51','2014-03-06 12:42:51','completed',NULL,NULL),(25,'Daily Special',14,'2014-03-06 12:42:55','2014-03-06 12:42:55','completed',NULL,NULL),(26,'Dinner Special',14,'2014-03-06 12:42:59','2014-03-06 12:43:05','completed',NULL,NULL),(27,'Daily Special',15,'2014-03-06 12:51:23','2014-03-06 12:51:23','completed',NULL,NULL),(28,'Luch Special',15,'2014-03-06 12:51:28','2014-03-06 12:51:28','completed',NULL,NULL),(29,'Dinner Special',15,'2014-03-06 12:51:33','2014-03-06 12:51:33','completed',NULL,NULL),(30,'Daily Special',21,'2014-03-11 09:54:17','2014-03-11 09:54:17','completed',NULL,NULL),(31,'Luch Special',21,'2014-03-11 09:54:22','2014-03-11 09:54:22','completed',NULL,NULL),(32,'Daily Special',32,'2014-03-11 14:53:04','2014-03-11 14:53:04','completed',NULL,NULL),(33,'Luch Special',33,'2014-03-12 06:47:26','2014-03-12 06:47:26','completed',NULL,NULL),(34,'Dinner Special',33,'2014-03-12 06:47:31','2014-03-12 06:47:31','completed',NULL,NULL),(35,'Lunch',38,'2014-03-27 05:49:11','2014-03-27 05:49:11','completed',NULL,NULL),(36,'Luch Special',28,'2014-03-28 14:35:23','2014-03-28 14:35:23','completed',NULL,NULL),(37,'Daily Special',39,'2014-03-28 14:36:52','2014-03-28 14:36:52','completed',NULL,NULL),(38,'Daily Special',40,'2014-03-31 06:37:51','2014-03-31 06:37:51','completed',NULL,NULL),(39,'Daily Special',18,'2014-03-31 12:49:08','2014-03-31 12:49:08','completed',NULL,NULL),(40,'Lunch',44,'2014-04-08 11:46:30','2014-05-08 09:24:29','pending',NULL,NULL),(41,'test',18,'2014-04-11 07:07:35','2014-04-11 07:07:35','completed',NULL,NULL),(42,'test',18,'2014-04-11 07:08:50','2014-04-11 07:08:50','completed',NULL,NULL),(43,'Dinner food',44,'2014-04-11 12:44:32','2014-04-15 05:54:17','completed',NULL,NULL),(44,'Breake Fast 1',44,'2014-04-11 12:54:32','2014-04-14 11:13:50','completed',NULL,NULL),(45,' Special',40,'2014-06-13 12:26:10','2014-06-13 12:26:10','completed',NULL,NULL),(47,'Lunch',40,'2014-06-13 12:26:22','2014-06-13 12:26:22','completed',NULL,NULL),(48,' Special',49,'2014-06-16 06:49:06','2014-06-16 06:49:06','completed','11:50:00','11:50:00'),(49,'Lunch',49,'2014-06-16 10:16:18','2014-06-16 10:16:18','completed','15:20:00','15:20:00'),(50,'Lunch',51,'2014-06-18 10:18:37','2014-06-18 10:18:37','completed','12:30:00','16:20:00'),(51,' Special',51,'2014-06-18 10:41:46','2014-06-18 10:41:46','completed','08:00:00','23:50:00'),(52,'Lunch',37,'2014-06-25 18:57:04','2014-06-25 18:57:04','completed','12:00:00','12:00:00');
/*!40000 ALTER TABLE `menu_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_errors`
--

DROP TABLE IF EXISTS `menu_errors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_errors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_errors`
--

LOCK TABLES `menu_errors` WRITE;
/*!40000 ALTER TABLE `menu_errors` DISABLE KEYS */;
INSERT INTO `menu_errors` VALUES (1,'sunny.ciiitlahore@gmail.com','Ali Ahmad','Comsats Lahore','expense menu ',1,'2014-07-07 07:18:08','2014-07-07 07:31:08'),(5,'Rana@dawood.com','Ali Ahmad','Lahore College','No any. Just for testing purpose i wanna to send this message',1,'2014-07-07 07:39:03','2014-07-07 07:39:15');
/*!40000 ALTER TABLE `menu_errors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_orders`
--

DROP TABLE IF EXISTS `menu_item_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_item_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `menu_item_property_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `instruction` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_orders`
--

LOCK TABLES `menu_item_orders` WRITE;
/*!40000 ALTER TABLE `menu_item_orders` DISABLE KEYS */;
INSERT INTO `menu_item_orders` VALUES (227,87,NULL,'2014-06-19 06:39:35','2014-06-19 06:39:35',1,NULL,21,''),(228,87,11,'2014-06-19 06:45:36','2014-06-19 06:45:36',1,NULL,21,''),(229,87,12,'2014-06-19 07:28:49','2014-06-19 07:28:49',1,NULL,21,''),(230,88,12,'2014-06-19 07:28:49','2014-06-19 07:28:49',1,NULL,21,''),(231,88,13,'2014-06-19 11:09:18','2014-06-19 11:09:18',1,NULL,21,''),(232,88,14,'2014-06-19 11:12:01','2014-06-19 11:12:01',1,NULL,21,''),(233,87,15,'2014-06-19 12:14:26','2014-06-19 12:14:26',1,NULL,21,''),(234,88,16,'2014-06-20 07:03:06','2014-06-20 07:03:06',1,NULL,21,''),(235,88,17,'2014-06-20 07:57:57','2014-06-20 07:57:57',1,NULL,21,''),(236,88,18,'2014-06-20 07:58:40','2014-06-20 07:58:40',1,NULL,21,''),(237,87,19,'2014-06-20 08:07:55','2014-06-20 08:07:55',1,NULL,21,''),(238,87,20,'2014-06-20 08:09:11','2014-06-20 08:09:11',1,NULL,21,''),(239,91,22,'2014-06-20 08:37:30','2014-06-20 08:37:30',1,NULL,21,''),(240,87,23,'2014-06-20 09:05:32','2014-06-20 09:05:32',1,NULL,21,''),(241,87,24,'2014-07-08 10:14:16','2014-07-08 10:14:16',1,NULL,21,''),(242,87,25,'2014-07-09 09:11:15','2014-07-09 09:11:15',1,NULL,21,''),(243,87,26,'2014-07-09 09:12:37','2014-07-09 09:12:37',1,NULL,21,''),(244,87,27,'2014-07-09 09:46:15','2014-07-09 09:46:15',1,NULL,21,''),(245,87,28,'2014-07-09 09:46:39','2014-07-09 09:46:39',1,NULL,21,''),(246,87,NULL,'2014-07-24 08:07:58','2014-07-24 08:07:58',1,NULL,21,''),(247,87,NULL,'2014-07-24 08:17:05','2014-07-24 08:17:05',1,NULL,21,''),(248,87,31,'2014-07-24 11:36:35','2014-07-24 11:36:35',2,NULL,21,'');
/*!40000 ALTER TABLE `menu_item_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item_properties`
--

DROP TABLE IF EXISTS `menu_item_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_item_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `menu_item_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_properties`
--

LOCK TABLES `menu_item_properties` WRITE;
/*!40000 ALTER TABLE `menu_item_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_item_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_category_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `menu_item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addons` tinyint(1) DEFAULT NULL,
  `instruction` tinyint(1) DEFAULT NULL,
  `popluar_dish` tinyint(1) DEFAULT NULL,
  `spicy_dish` tinyint(1) DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `cuisine_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (85,'Sandwitch',49,200,'Veal with tomatoes','2014-06-16 12:26:09','2014-06-16 12:26:09','p params[:index] p params[:index] p params[:index] p params[:index]',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(86,'',48,NULL,'','2014-06-16 13:17:07','2014-06-16 13:17:07','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(87,'Boiled Rice',50,500,'Boiled Rice with Egg and mix vegitables','2014-06-18 10:24:02','2014-06-18 10:24:02','Praesent nec nisl a purus blandit viverra. Phasellus gravida semper nisi. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Vestibulum fringilla pede sit amet augue.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(88,'Pizza',50,750,'Veg, Chiken','2014-06-18 10:31:40','2014-06-18 10:31:40','Nam eget dui. Aenean vulputate eleifend tellus. Donec orci lectus, aliquam ut, faucibus non, euismod id, nulla. Phasellus nec sem in justo pellentesque facilisis.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(91,'Sandwitch',51,100,'Veal with tomatoes','2014-06-18 11:32:18','2014-06-18 11:32:18','Pellentesque posuere. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(92,'Sandwitch',52,100,'Veal with tomatoes','2014-06-25 18:58:08','2014-06-25 18:58:08','Suite 20, 196 Rose Street,  Edinburgh EH2 4AT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (35,10,'2014-03-12 11:40:56','2014-03-12 11:40:56'),(37,8,'2014-03-12 12:12:30','2014-03-12 12:12:30'),(40,7,'2014-03-31 06:37:11','2014-03-31 06:37:11'),(44,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(51,21,'2014-06-18 10:17:26','2014-06-18 10:17:26');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (1,14,'This first for valueable customer','2014-06-09 11:24:01','2014-06-09 11:24:01'),(2,14,'I am going to increase the reward point of this customer','2014-06-09 11:24:34','2014-06-09 11:24:34'),(5,14,'Checking tests','2014-06-09 13:08:49','2014-06-09 13:16:45'),(6,1,'This first for valueable customers','2014-06-09 13:20:25','2014-06-10 17:47:51'),(7,1,'Checking testss','2014-06-09 13:20:35','2014-06-10 17:47:44'),(8,14,'This first for valueable customer','2014-06-10 04:57:57','2014-06-10 04:57:57'),(9,14,'This first for valueable customer1','2014-06-10 04:58:03','2014-06-10 04:58:03'),(10,14,'Checking tests','2014-06-10 04:58:08','2014-06-10 04:58:08'),(11,14,'This first for valueable customer1','2014-06-10 04:58:13','2014-06-10 04:58:13'),(12,14,'test last','2014-06-10 04:59:36','2014-06-10 04:59:36'),(13,1,'Checking tests','2014-06-10 17:47:57','2014-06-10 17:47:57'),(14,27,'This first for valueable customer','2014-07-03 04:38:26','2014-07-03 04:38:26'),(15,27,'AdminNote: Test','2014-07-03 04:38:33','2014-07-03 04:38:33'),(16,27,'AdminNote: Test','2014-07-03 04:38:39','2014-07-03 04:38:39'),(17,15,'This first for valueable customer','2014-07-23 17:52:44','2014-07-23 17:52:44');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:26','2014-03-11 07:08:26'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(16,21,'2014-06-18 10:17:27','2014-06-18 10:17:27');
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_infos`
--

DROP TABLE IF EXISTS `order_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_order` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax_number` int(11) DEFAULT NULL,
  `gprs` tinyint(1) DEFAULT NULL,
  `cloud_printer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cloud_printer_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sms_option` tinyint(1) DEFAULT NULL,
  `order_pending_alert_ring_tone` tinyint(1) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `info_way` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_infos`
--

LOCK TABLES `order_infos` WRITE;
/*!40000 ALTER TABLE `order_infos` DISABLE KEYS */;
INSERT INTO `order_infos` VALUES (7,'sunny.ciitlahore@gmail.com',1686321853,0,'sunny@gmail.com','',0,NULL,7,'2014-03-06 12:51:17','2014-06-13 09:25:45','fax'),(8,'sunny.ciitlahore@gmail.com',1686321853,0,'sunny@gmail.com','',0,NULL,8,'2014-03-06 14:49:21','2014-07-24 06:37:07','fax'),(10,'',NULL,0,'sunny@gmail.com','password',0,NULL,10,'2014-03-11 07:08:25','2014-03-12 10:14:13',NULL),(14,'sunny.ciitlahore@gmail.com',2147483647,0,'sunny@gmail.com','',0,NULL,14,'2014-04-08 11:10:02','2014-04-18 07:58:13','fax'),(21,'sunny.ciitlahore@gmail.com',2147483647,0,'test@gmail.com','',0,NULL,21,'2014-06-18 10:17:26','2014-06-19 05:47:16','fax');
/*!40000 ALTER TABLE `order_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `delievery_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `delivery_instruction` text COLLATE utf8_unicode_ci,
  `paymemt_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `method_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `tip` float DEFAULT '0',
  `secure_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` tinyint(1) DEFAULT '0',
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_off` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `order_date_time` datetime DEFAULT NULL,
  `order_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (11,14,'2014-06-19 06:45:36','2014-06-19 06:45:36',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'5415',0,NULL,NULL,NULL,NULL,NULL),(12,14,'2014-06-19 07:28:48','2014-06-19 07:29:46',NULL,'confirm',21,20,'',NULL,14,'Credit Card',NULL,0,'7544',0,NULL,NULL,NULL,NULL,NULL),(13,14,'2014-06-19 11:09:18','2014-07-24 08:54:05',NULL,'reject',21,20,'',NULL,14,'Credit Card',NULL,0,'6861',0,NULL,NULL,NULL,NULL,NULL),(14,14,'2014-06-19 11:12:01','2014-06-19 11:12:01',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'6554',0,NULL,NULL,NULL,NULL,NULL),(15,14,'2014-06-19 12:14:25','2014-07-23 18:24:24',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,20,'9567',1,NULL,NULL,NULL,NULL,NULL),(16,14,'2014-06-20 07:03:06','2014-06-20 07:03:06',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'2692',0,7,'',NULL,NULL,NULL),(17,14,'2014-06-20 07:57:56','2014-06-20 07:57:56',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'7067',0,4,'Coupon',NULL,NULL,NULL),(18,14,'2014-06-20 07:58:39','2014-06-20 07:58:39',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'7959',0,4,'Coupon',NULL,NULL,NULL),(19,14,'2014-06-20 08:07:55','2014-06-20 08:07:55',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'4909',0,NULL,'',NULL,NULL,NULL),(20,14,'2014-06-20 08:09:11','2014-07-24 08:53:50',NULL,'confirm',21,20,'',NULL,14,'Credit Card',NULL,0,'1621',0,NULL,'',NULL,NULL,NULL),(22,14,'2014-06-20 08:37:30','2014-06-20 08:37:30',NULL,'pending',21,20,'',NULL,14,'Credit Card',NULL,0,'1941',0,4,'Coupon',NULL,NULL,NULL),(23,14,'2014-06-20 09:05:32','2014-06-20 09:05:32',NULL,'pending',21,20,'',NULL,NULL,'Paypal',NULL,20,'6028',0,4,'Coupon',NULL,NULL,NULL),(24,14,'2014-07-08 10:14:15','2014-07-08 10:14:15',NULL,'pending',21,29,'No any',NULL,14,'Credit Card',NULL,0,'6945',0,NULL,'',NULL,NULL,NULL),(25,NULL,'2014-07-09 09:11:15','2014-07-09 09:11:15',NULL,'pending',21,40,'',NULL,NULL,'Credit Card',NULL,20,'9943',0,NULL,NULL,9,NULL,NULL),(26,NULL,'2014-07-09 09:12:37','2014-07-09 09:12:37',NULL,'pending',21,41,'',NULL,NULL,'Credit Card',NULL,20,'370',0,NULL,NULL,9,NULL,NULL),(27,NULL,'2014-07-09 09:46:15','2014-07-09 09:46:15',NULL,'pending',21,49,'Please send order asap',NULL,NULL,'Paypal',NULL,15,'2863',0,0,'',10,NULL,NULL),(28,NULL,'2014-07-09 09:46:38','2014-07-09 09:46:38',NULL,'pending',21,49,'Please send order asap',NULL,NULL,'Paypal',NULL,15,'1785',0,0,'',10,NULL,NULL),(31,14,'2014-07-24 11:36:35','2014-07-24 11:36:35',NULL,'pending',21,20,'',NULL,NULL,'Paypal',NULL,15,'5686',0,0,'',NULL,NULL,'delivery');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `transaction_at` datetime DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,0,'2014-04-04 05:55:44','authorized',345.75,8,'2014-04-04 05:55:38','2014-04-04 05:55:38'),(2,3,'2014-04-04 10:13:48','authorized',683.5,1,'2014-04-04 10:13:42','2014-04-04 10:13:42'),(3,0,'2014-04-04 10:19:16','authorized',547,1,'2014-04-04 10:19:10','2014-04-04 10:19:10'),(4,0,'2014-04-04 11:05:51','authorized',547,1,'2014-04-04 11:05:45','2014-04-04 11:05:45'),(5,0,'2014-04-07 07:27:54','authorized',491.4,1,'2014-04-07 07:27:49','2014-04-07 07:27:49'),(6,8,'2014-04-07 07:55:01','authorized',547,1,'2014-04-07 07:54:56','2014-04-07 07:54:56'),(7,0,'2014-04-07 08:07:55','authorized',491.4,1,'2014-04-07 08:07:50','2014-04-07 08:07:50'),(8,0,'2014-04-07 08:09:14','authorized',491.4,1,'2014-04-07 08:09:09','2014-04-07 08:09:09'),(9,54,'2014-04-08 09:19:34','authorized',655.2,1,'2014-04-08 09:19:28','2014-04-08 09:19:28'),(10,0,'2014-04-08 10:02:33','authorized',750.75,1,'2014-04-08 10:02:27','2014-04-08 10:02:27'),(11,0,'2014-04-08 10:05:05','authorized',136.5,1,'2014-04-08 10:04:59','2014-04-08 10:04:59'),(12,0,'2014-04-08 12:00:38','authorized',3450,8,'2014-04-08 12:00:31','2014-04-08 12:00:31'),(13,668,'2014-04-08 12:18:18','authorized',345,14,'2014-04-08 12:18:13','2014-04-08 12:18:13'),(14,394,'2014-04-08 12:50:36','authorized',5175,14,'2014-04-08 12:50:29','2014-04-08 12:50:29'),(15,0,'2014-04-08 13:07:48','authorized',5420,1,'2014-04-08 13:07:42','2014-04-08 13:07:42'),(16,62,'2014-04-08 14:37:25','authorized',1570.9,1,'2014-04-08 14:37:18','2014-04-08 14:37:18'),(17,3,'2014-04-09 07:20:52','authorized',1905.75,13,'2014-04-09 07:20:46','2014-04-09 07:20:46'),(18,6,'2014-04-09 11:40:26','authorized',1732.5,14,'2014-04-09 11:40:19','2014-04-09 11:40:19'),(19,0,'2014-04-18 06:57:11','authorized',1890,14,'2014-04-18 06:57:00','2014-04-18 06:57:00'),(20,0,'2014-04-18 07:21:26','authorized',529.2,14,'2014-04-18 07:21:14','2014-04-18 07:21:14'),(21,89,'2014-04-18 08:26:15','authorized',945,14,'2014-04-18 08:26:11','2014-04-18 08:26:11'),(22,2,'2014-04-18 08:29:41','authorized',840,14,'2014-04-18 08:29:37','2014-04-18 08:29:37'),(23,79,'2014-04-18 10:06:19','authorized',945,14,'2014-04-18 10:06:07','2014-04-18 10:06:07'),(24,0,'2014-04-18 10:08:43','authorized',420,14,'2014-04-18 10:08:32','2014-04-18 10:08:32'),(25,0,'2014-04-18 10:09:18','authorized',420,14,'2014-04-18 10:09:07','2014-04-18 10:09:07'),(26,0,'2014-04-18 10:10:29','authorized',420,14,'2014-04-18 10:10:18','2014-04-18 10:10:18'),(27,0,'2014-04-18 10:12:01','authorized',420,14,'2014-04-18 10:11:50','2014-04-18 10:11:50'),(28,0,'2014-04-18 10:13:59','authorized',420,14,'2014-04-18 10:13:48','2014-04-18 10:13:48'),(29,98,'2014-04-18 10:14:36','authorized',420,14,'2014-04-18 10:14:25','2014-04-18 10:14:25'),(30,0,'2014-04-18 10:15:27','authorized',420,14,'2014-04-18 10:15:15','2014-04-18 10:15:15'),(31,4,'2014-04-18 10:18:43','authorized',420,14,'2014-04-18 10:18:32','2014-04-18 10:18:32'),(32,8,'2014-04-18 10:20:33','authorized',420,14,'2014-04-18 10:20:22','2014-04-18 10:20:22'),(33,0,'2014-04-18 10:21:50','authorized',420,14,'2014-04-18 10:21:39','2014-04-18 10:21:39'),(34,0,'2014-04-18 10:26:19','authorized',420,14,'2014-04-18 10:26:08','2014-04-18 10:26:08'),(35,7346,'2014-04-18 11:03:15','authorized',345.75,14,'2014-04-18 11:03:04','2014-04-18 11:03:04'),(36,0,'2014-04-18 11:07:56','authorized',1065,14,'2014-04-18 11:07:45','2014-04-18 11:07:45'),(37,0,'2014-04-18 11:08:55','authorized',945,14,'2014-04-18 11:08:44','2014-04-18 11:08:44'),(38,7,'2014-04-18 11:33:54','authorized',945,14,'2014-04-18 11:33:43','2014-04-18 11:33:43'),(39,28,'2014-04-21 06:07:04','authorized',3118.5,14,'2014-04-21 06:06:53','2014-04-21 06:06:53'),(40,0,'2014-04-30 07:10:56','authorized',786.75,1,'2014-04-30 07:10:41','2014-04-30 07:10:41'),(41,0,'2014-04-30 07:27:21','authorized',547.2,1,'2014-04-30 07:27:06','2014-04-30 07:27:06'),(42,0,'2014-04-30 07:28:39','authorized',456,1,'2014-04-30 07:28:24','2014-04-30 07:28:24'),(43,0,'2014-04-30 07:50:09','authorized',456,1,'2014-04-30 07:49:54','2014-04-30 07:49:54'),(44,0,'2014-04-30 07:52:36','authorized',456,1,'2014-04-30 07:52:20','2014-04-30 07:52:20'),(45,79,'2014-04-30 07:57:07','authorized',456,1,'2014-04-30 07:56:52','2014-04-30 07:56:52'),(46,2,'2014-04-30 07:58:48','authorized',456,1,'2014-04-30 07:58:33','2014-04-30 07:58:33'),(47,983,'2014-04-30 08:01:45','authorized',456,1,'2014-04-30 08:01:30','2014-04-30 08:01:30'),(48,7,'2014-04-30 09:07:53','authorized',456,1,'2014-04-30 09:07:37','2014-04-30 09:07:37'),(49,0,'2014-04-30 09:20:06','authorized',456,1,'2014-04-30 09:19:51','2014-04-30 09:19:51'),(50,8,'2014-04-30 12:29:17','authorized',540,1,'2014-04-30 12:29:02','2014-04-30 12:29:02'),(51,8,'2014-04-30 12:34:08','authorized',345.75,1,'2014-04-30 12:33:53','2014-04-30 12:33:53'),(52,8,'2014-04-30 12:35:19','authorized',345.75,1,'2014-04-30 12:35:04','2014-04-30 12:35:04'),(53,5,'2014-05-01 06:48:15','authorized',235.5,1,'2014-05-01 06:47:59','2014-05-01 06:47:59'),(54,7,'2014-05-01 06:50:34','authorized',235.5,1,'2014-05-01 06:50:18','2014-05-01 06:50:18'),(55,0,'2014-05-01 06:53:50','authorized',235.5,1,'2014-05-01 06:53:33','2014-05-01 06:53:33'),(56,5,'2014-05-01 06:55:19','authorized',235.5,1,'2014-05-01 06:55:02','2014-05-01 06:55:02'),(57,0,'2014-05-01 06:56:25','authorized',235.5,1,'2014-05-01 06:56:09','2014-05-01 06:56:09'),(58,43,'2014-05-01 06:59:50','authorized',235.5,1,'2014-05-01 06:59:33','2014-05-01 06:59:33'),(59,0,'2014-05-01 07:04:08','authorized',235.5,1,'2014-05-01 07:03:51','2014-05-01 07:03:51'),(60,0,'2014-05-01 07:04:42','authorized',235.5,1,'2014-05-01 07:04:25','2014-05-01 07:04:25'),(61,23,'2014-05-01 07:08:33','authorized',235.5,1,'2014-05-01 07:08:16','2014-05-01 07:08:16'),(62,539,'2014-05-01 07:11:35','authorized',235.5,1,'2014-05-01 07:11:19','2014-05-01 07:11:19'),(63,0,'2014-05-05 05:45:08','authorized',410.5,13,'2014-05-05 05:44:51','2014-05-05 05:44:51'),(64,96,'2014-05-05 06:31:26','authorized',410.5,13,'2014-05-05 06:31:09','2014-05-05 06:31:09'),(65,6,'2014-05-05 06:32:34','authorized',410.5,13,'2014-05-05 06:32:17','2014-05-05 06:32:17'),(66,0,'2014-05-05 10:19:18','authorized',1117.5,13,'2014-05-05 10:19:01','2014-05-05 10:19:01'),(67,0,'2014-05-28 06:49:09','authorized',362.25,14,'2014-05-28 06:48:43','2014-05-28 06:48:43'),(68,0,'2014-05-28 06:50:33','authorized',362.25,14,'2014-05-28 06:50:06','2014-05-28 06:50:06'),(69,93,'2014-05-28 07:05:44','authorized',504,14,'2014-05-28 07:05:18','2014-05-28 07:05:18'),(70,4,'2014-05-28 07:50:45','authorized',630,14,'2014-05-28 07:50:19','2014-05-28 07:50:19'),(71,8,'2014-05-28 07:53:59','authorized',630,14,'2014-05-28 07:53:32','2014-05-28 07:53:32'),(72,0,'2014-05-28 11:13:11','authorized',724.5,14,'2014-05-28 11:12:45','2014-05-28 11:12:45'),(73,0,'2014-05-28 11:16:13','authorized',1260,14,'2014-05-28 11:15:46','2014-05-28 11:15:46'),(74,5,'2014-05-28 11:22:01','authorized',26.25,14,'2014-05-28 11:21:34','2014-05-28 11:21:34'),(75,2,'2014-05-28 11:38:52','authorized',724.5,14,'2014-05-28 11:38:25','2014-05-28 11:38:25'),(76,468,'2014-05-28 11:39:33','authorized',945,14,'2014-05-28 11:39:06','2014-05-28 11:39:06'),(77,4,'2014-05-28 11:40:46','authorized',1134,14,'2014-05-28 11:40:19','2014-05-28 11:40:19'),(78,6,'2014-05-28 11:41:32','authorized',945,14,'2014-05-28 11:41:05','2014-05-28 11:41:05'),(79,67,'2014-05-28 11:42:18','authorized',26.25,14,'2014-05-28 11:41:51','2014-05-28 11:41:51'),(80,7,'2014-05-28 11:44:00','authorized',26.25,14,'2014-05-28 11:43:33','2014-05-28 11:43:33'),(81,8,'2014-05-28 12:20:57','authorized',945,14,'2014-05-28 12:20:31','2014-05-28 12:20:31'),(82,4,'2014-05-28 12:21:27','authorized',52.5,14,'2014-05-28 12:21:01','2014-05-28 12:21:01'),(83,0,'2014-05-28 12:24:34','authorized',472.5,14,'2014-05-28 12:24:08','2014-05-28 12:24:08'),(84,3,'2014-05-28 12:26:05','authorized',78.75,14,'2014-05-28 12:25:38','2014-05-28 12:25:38'),(85,0,'2014-05-28 12:27:00','authorized',78.75,14,'2014-05-28 12:26:33','2014-05-28 12:26:33'),(86,8,'2014-05-28 12:34:03','authorized',78.75,14,'2014-05-28 12:33:37','2014-05-28 12:33:37'),(87,9,'2014-05-28 12:34:36','authorized',78.75,14,'2014-05-28 12:34:10','2014-05-28 12:34:10'),(88,0,'2014-05-28 12:35:21','authorized',26.25,14,'2014-05-28 12:34:54','2014-05-28 12:34:54'),(89,2,'2014-05-28 12:35:53','authorized',78.75,14,'2014-05-28 12:35:27','2014-05-28 12:35:27'),(90,9,'2014-05-28 12:36:54','authorized',78.75,14,'2014-05-28 12:36:27','2014-05-28 12:36:27'),(91,0,'2014-05-28 12:37:47','authorized',78.75,14,'2014-05-28 12:37:21','2014-05-28 12:37:21'),(92,6,'2014-05-28 12:38:28','authorized',78.75,14,'2014-05-28 12:38:02','2014-05-28 12:38:02'),(93,0,'2014-05-28 12:40:54','authorized',78.75,14,'2014-05-28 12:40:28','2014-05-28 12:40:28'),(94,9,'2014-05-28 12:41:26','authorized',78.75,14,'2014-05-28 12:41:00','2014-05-28 12:41:00'),(95,0,'2014-05-28 12:43:47','authorized',78.75,14,'2014-05-28 12:43:20','2014-05-28 12:43:20'),(96,0,'2014-05-28 12:45:40','authorized',126,14,'2014-05-28 12:45:14','2014-05-28 12:45:14'),(97,0,'2014-05-28 12:46:25','authorized',183.75,14,'2014-05-28 12:45:59','2014-05-28 12:45:59'),(98,6,'2014-05-28 12:58:16','authorized',183.75,14,'2014-05-28 12:57:49','2014-05-28 12:57:49'),(99,0,'2014-05-28 13:00:02','authorized',78.75,14,'2014-05-28 12:59:36','2014-05-28 12:59:36'),(100,6,'2014-05-28 13:00:33','authorized',78.75,14,'2014-05-28 13:00:06','2014-05-28 13:00:06'),(101,0,'2014-05-28 13:00:58','authorized',945,14,'2014-05-28 13:00:32','2014-05-28 13:00:32'),(102,8,'2014-06-19 05:30:21','authorized',1140,14,'2014-06-19 05:29:39','2014-06-19 05:29:39'),(103,0,'2014-06-19 05:34:59','authorized',1368,14,'2014-06-19 05:34:16','2014-06-19 05:34:16'),(104,0,'2014-06-19 05:42:39','authorized',1368,14,'2014-06-19 05:41:56','2014-06-19 05:41:56'),(105,32,'2014-06-19 06:09:28','authorized',1368,14,'2014-06-19 06:08:46','2014-06-19 06:08:46'),(106,0,'2014-06-19 06:16:46','authorized',1140,14,'2014-06-19 06:16:04','2014-06-19 06:16:04'),(107,0,'2014-06-19 06:24:22','authorized',1140,14,'2014-06-19 06:23:40','2014-06-19 06:23:40'),(108,0,'2014-06-19 06:40:17','authorized',1368,14,'2014-06-19 06:39:34','2014-06-19 06:39:34'),(109,9,'2014-06-19 06:46:19','authorized',1085,14,'2014-06-19 06:45:36','2014-06-19 06:45:36'),(110,5,'2014-06-19 07:29:31','authorized',4660,14,'2014-06-19 07:28:49','2014-06-19 07:28:49'),(111,0,'2014-06-19 11:10:02','authorized',3670,14,'2014-06-19 11:09:18','2014-06-19 11:09:18'),(112,828,'2014-06-19 11:12:44','authorized',3670,14,'2014-06-19 11:12:01','2014-06-19 11:12:01'),(113,0,'2014-06-19 12:15:09','authorized',1130.4,14,'2014-06-19 12:14:26','2014-06-19 12:14:26'),(114,5,'2014-06-20 07:03:49','authorized',3670,14,'2014-06-20 07:03:06','2014-06-20 07:03:06'),(115,0,'2014-06-20 07:58:40','authorized',3670,14,'2014-06-20 07:57:57','2014-06-20 07:57:57'),(116,3,'2014-06-20 07:59:22','authorized',3670,14,'2014-06-20 07:58:39','2014-06-20 07:58:39'),(117,0,'2014-06-20 08:08:39','authorized',1140,14,'2014-06-20 08:07:55','2014-06-20 08:07:55'),(118,6,'2014-06-20 08:09:55','authorized',1140,14,'2014-06-20 08:09:11','2014-06-20 08:09:11'),(119,0,'2014-06-20 08:38:14','authorized',370,14,'2014-06-20 08:37:30','2014-06-20 08:37:30'),(120,0,'2014-07-08 10:15:05','authorized',1140,14,'2014-07-08 10:14:15','2014-07-08 10:14:15'),(121,0,'2014-07-09 09:12:03','authorized',1130.4,NULL,'2014-07-09 09:11:15','2014-07-09 09:11:15'),(122,7,'2014-07-09 09:13:25','authorized',1130.4,NULL,'2014-07-09 09:12:37','2014-07-09 09:12:37'),(123,0,'2014-07-24 08:08:55','authorized',1130.4,NULL,'2014-07-24 08:07:57','2014-07-24 08:07:57'),(124,67,'2014-07-24 08:18:03','authorized',1130.4,NULL,'2014-07-24 08:17:04','2014-07-24 08:17:04');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pick_ups`
--

DROP TABLE IF EXISTS `pick_ups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pick_ups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pick_ups`
--

LOCK TABLES `pick_ups` WRITE;
/*!40000 ALTER TABLE `pick_ups` DISABLE KEYS */;
INSERT INTO `pick_ups` VALUES (2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:25','2014-03-11 07:08:25'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(16,21,'2014-06-18 10:17:26','2014-06-18 10:17:26');
/*!40000 ALTER TABLE `pick_ups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciept_pages`
--

DROP TABLE IF EXISTS `reciept_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reciept_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciept_pages`
--

LOCK TABLES `reciept_pages` WRITE;
/*!40000 ALTER TABLE `reciept_pages` DISABLE KEYS */;
INSERT INTO `reciept_pages` VALUES (1,'Lots of restaurant choices, super-fast, easy ordering and safe payment?','2014-07-09 15:16:03','2014-07-09 15:27:34');
/*!40000 ALTER TABLE `reciept_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redeam_requests`
--

DROP TABLE IF EXISTS `redeam_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redeam_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redeam_requests`
--

LOCK TABLES `redeam_requests` WRITE;
/*!40000 ALTER TABLE `redeam_requests` DISABLE KEYS */;
INSERT INTO `redeam_requests` VALUES (1,'Suneel','Kumar','avinesh@hotmail.com','ipadtouch','2014-07-02 11:34:22','2014-07-02 20:37:49',1),(2,'Suneel','Kumar','avinesh@hotmail.com','ipadtouch','2014-07-02 11:35:25','2014-07-02 20:37:49',1),(4,'AV','ASNMDNSA','avinesh@hotmail.com','ipad16gb','2014-07-02 11:39:14','2014-07-02 20:37:49',1),(5,'AV','ASNMDNSA','avinesh@hotmail.com','ipad16gb','2014-07-02 11:40:30','2014-07-02 20:37:49',1),(6,'AV','ASNMDNSA','avinesh@hotmail.com','ipad16gb','2014-07-02 11:41:50','2014-07-02 20:37:49',1),(7,'sdasd','fafas','avinesh@hotmail.com','ipad16gb','2014-07-02 11:43:13','2014-07-02 20:37:49',1),(9,'sdasd','fafas','avinesh@hotmail.com','ipad16gb','2014-07-02 11:43:33','2014-07-02 20:37:50',1),(10,'sdasd','fafas','avinesh@hotmail.com','ipad16gb','2014-07-02 11:43:48','2014-07-02 20:37:50',1),(11,'Suneel','Kumar','avinesh@hotmail.com','ipad16gb','2014-07-02 11:53:05','2014-07-02 20:37:50',1),(12,'Avinesh','Kumar','avinesh@hotmail.com','ipad16gb','2014-07-03 04:49:29','2014-07-03 05:40:41',1),(13,'Avinesh','Kumar','avinesh@hotmail.com','ipad16gb','2014-07-03 04:50:46','2014-07-03 05:40:42',1),(14,'Avinesh','Kumar','avinesh@hotmail.com','ipad16gb','2014-07-03 04:52:31','2014-07-03 05:40:42',1),(15,'Suneel','Kumar','avinesh@hotmail.com','ipadtouch','2014-07-03 05:22:40','2014-07-03 05:40:42',1),(16,'Avinesh','Kumar','avinesh@hotmail.com','ipad16gb','2014-07-04 08:02:43','2014-07-07 07:38:03',1);
/*!40000 ALTER TABLE `redeam_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redeams`
--

DROP TABLE IF EXISTS `redeams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redeams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redeams`
--

LOCK TABLES `redeams` WRITE;
/*!40000 ALTER TABLE `redeams` DISABLE KEYS */;
INSERT INTO `redeams` VALUES (1,'ipad16gb','IPad 16GB',5000,'2014-07-02 09:31:33','2014-07-02 09:31:33'),(2,'ipadtouch','IPad Touch',108000,'2014-07-02 09:34:59','2014-07-02 09:34:59');
/*!40000 ALTER TABLE `redeams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_categories`
--

DROP TABLE IF EXISTS `restaurant_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_categories`
--

LOCK TABLES `restaurant_categories` WRITE;
/*!40000 ALTER TABLE `restaurant_categories` DISABLE KEYS */;
INSERT INTO `restaurant_categories` VALUES (1,'Healthy','2014-03-03 11:20:53','2014-06-18 10:17:26',21),(2,'Chiken','2014-03-03 11:21:00','2014-06-18 10:17:26',21),(3,'American','2014-03-03 11:21:07','2014-06-18 10:17:26',21),(4,'Indain','2014-03-03 11:21:17','2014-06-18 10:17:26',21),(5,'Italian','2014-03-03 11:21:22','2014-06-18 10:17:26',21),(6,'Desi Food','2014-03-03 11:21:31','2014-06-18 10:17:26',21),(7,'test','2014-03-10 14:55:33','2014-06-17 06:10:42',20),(8,'test 2','2014-04-11 09:26:25','2014-06-17 06:10:42',20),(9,'Indian Amchori Food','2014-06-10 10:09:02','2014-06-17 06:10:42',20),(10,'Indian Amchori Food','2014-06-10 10:09:15','2014-06-17 06:10:42',20),(11,'Indian Amchori Food','2014-06-10 10:09:20','2014-06-17 06:10:42',20);
/*!40000 ALTER TABLE `restaurant_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_coupons`
--

DROP TABLE IF EXISTS `restaurant_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `coupon_image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_image_file_size` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `charges` float DEFAULT NULL,
  `max_use` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_coupons`
--

LOCK TABLES `restaurant_coupons` WRITE;
/*!40000 ALTER TABLE `restaurant_coupons` DISABLE KEYS */;
INSERT INTO `restaurant_coupons` VALUES (1,14,'2014-04-06 00:00:00','2014-03-06 14:21:12','2014-07-24 06:37:39','campus-bite.png','image/png',30171,'pending','',NULL,NULL),(2,14,'2014-03-08 00:00:00','2014-03-06 14:21:41','2014-07-24 06:37:40','1956949_752926184752158_5515196612279201404_o.jpg','image/jpeg',103900,'completed','',NULL,NULL),(3,14,'2014-03-08 00:00:00','2014-03-06 14:25:19','2014-07-24 06:37:40','copoun.png','image/png',104854,'completed','',NULL,NULL),(5,14,'2014-04-14 00:00:00','2014-04-14 13:19:37','2014-07-24 06:37:40','1956949_752926184752158_5515196612279201404_o.jpg','image/jpeg',103900,'completed','',NULL,NULL),(7,21,'2014-06-20 00:00:00','2014-06-18 10:17:26','2014-06-19 10:51:36','copoun.png','image/png',104854,'completed','1two3',10,10);
/*!40000 ALTER TABLE `restaurant_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_infos`
--

DROP TABLE IF EXISTS `restaurant_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_restaurant` text COLLATE utf8_unicode_ci,
  `is_pick_up` tinyint(1) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT NULL,
  `min_order` float DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `logo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `sale_tax` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_infos`
--

LOCK TABLES `restaurant_infos` WRITE;
/*!40000 ALTER TABLE `restaurant_infos` DISABLE KEYS */;
INSERT INTO `restaurant_infos` VALUES (7,'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor ',0,0,100,7,'2014-03-06 12:51:17','2014-06-13 09:25:45','01-858x338.jpg','image/jpeg',66315,5),(8,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.',0,0,10,8,'2014-03-06 14:49:21','2014-03-12 12:12:30','map.png','image/png',71855,5),(10,' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\'',0,0,100,10,'2014-03-11 07:08:25','2014-03-12 10:14:13','Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.44.15__2014.01.21_11.58.13_.jpg','image/jpeg',29851,5),(14,'Stet clita kasd gubergren Lorem ipsum dolor sit',0,0,100,14,'2014-04-08 11:10:02','2014-04-10 06:46:04','arrow2.png','image/png',4300,5),(21,'Cras dapibus. Aenean vulputate eleifend tellus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Nam adipiscing.',1,1,500,21,'2014-06-18 10:17:26','2014-06-18 10:17:26','LastPage_22.png','image/png',5401,10);
/*!40000 ALTER TABLE `restaurant_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_offers`
--

DROP TABLE IF EXISTS `restaurant_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_percentage` float DEFAULT NULL,
  `offer_price` float DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_offers`
--

LOCK TABLES `restaurant_offers` WRITE;
/*!40000 ALTER TABLE `restaurant_offers` DISABLE KEYS */;
INSERT INTO `restaurant_offers` VALUES (3,7,'For Students',10,100,'2014-03-06 00:00:00','2014-03-14 00:00:00','2014-03-06 12:57:34','2014-03-06 12:57:34','completed'),(5,14,'hello',10,50,'2014-04-14 00:00:00','2014-07-14 00:00:00','2014-04-14 11:24:06','2014-04-14 12:32:44','completed'),(6,14,'For Faculty',20,200,'2014-04-14 00:00:00','2014-06-14 00:00:00','2014-04-14 11:24:31','2014-05-08 05:28:36','pending');
/*!40000 ALTER TABLE `restaurant_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_opening_closing_times`
--

DROP TABLE IF EXISTS `restaurant_opening_closing_times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_opening_closing_times` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_info_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_opening_closing_times`
--

LOCK TABLES `restaurant_opening_closing_times` WRITE;
/*!40000 ALTER TABLE `restaurant_opening_closing_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_opening_closing_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_schools`
--

DROP TABLE IF EXISTS `restaurant_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_schools`
--

LOCK TABLES `restaurant_schools` WRITE;
/*!40000 ALTER TABLE `restaurant_schools` DISABLE KEYS */;
INSERT INTO `restaurant_schools` VALUES (1,14,2,'2014-07-24 10:57:33','2014-07-24 10:57:33'),(2,14,4,'2014-07-24 10:57:33','2014-07-24 10:57:33'),(3,14,8,'2014-07-24 10:57:33','2014-07-24 10:57:33'),(4,7,2,'2014-07-24 11:18:05','2014-07-24 11:18:05'),(5,7,3,'2014-07-24 11:18:05','2014-07-24 11:18:05'),(6,7,4,'2014-07-24 11:18:05','2014-07-24 11:18:05'),(7,7,8,'2014-07-24 11:18:05','2014-07-24 11:18:05');
/*!40000 ALTER TABLE `restaurant_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_suggestions`
--

DROP TABLE IF EXISTS `restaurant_suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant_suggestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campus_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_name_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_1` int(11) DEFAULT NULL,
  `restaurant_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_2` int(11) DEFAULT NULL,
  `restaurant_name_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number_3` int(11) DEFAULT NULL,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_suggestions`
--

LOCK TABLES `restaurant_suggestions` WRITE;
/*!40000 ALTER TABLE `restaurant_suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant_suggestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `avg_rating` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `ranking` int(11) DEFAULT '0',
  `online_discount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_restaurants_on_delta` (`delta`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (7,'2014-03-06 12:51:17','2014-07-24 11:18:05',2,1,12,'completed',1,15,5),(8,'2014-03-06 14:49:21','2014-07-24 06:37:07',5,0,26,'completed',0,3,NULL),(10,'2014-03-11 07:08:25','2014-03-11 07:08:25',4,0,NULL,'completed',0,0,NULL),(14,'2014-04-08 11:10:02','2014-07-24 10:57:34',2,2,13,'completed',1,1,NULL),(21,'2014-06-18 10:17:26','2014-07-24 11:24:59',2,5,27,'completed',1,0,10);
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rating` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'reject',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (19,1,13,7,'I have good experience food is taste but delivery service not on time','2014-04-09 06:31:38','2014-04-09 06:31:38','reject'),(32,5,14,21,'','2014-07-07 11:21:11','2014-07-07 11:21:11','reject');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_roles_on_name` (`name`),
  KEY `index_roles_on_name_and_resource_type_and_resource_id` (`name`,`resource_type`,`resource_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (5,'admin',NULL,NULL,'2014-06-17 13:03:02','2014-06-17 13:03:02'),(6,'admin_restaurant',NULL,NULL,'2014-06-17 13:10:53','2014-06-17 13:10:53'),(7,'user',NULL,NULL,'2014-06-18 10:17:23','2014-06-18 10:17:23');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_user_roles`
--

DROP TABLE IF EXISTS `roles_user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_user_roles`
--

LOCK TABLES `roles_user_roles` WRITE;
/*!40000 ALTER TABLE `roles_user_roles` DISABLE KEYS */;
INSERT INTO `roles_user_roles` VALUES (15,9,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,10,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,11,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,14,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,19,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,24,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,25,6,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,26,6,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `roles_user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140213073751'),('20140213074416'),('20140218143444'),('20140219115227'),('20140221084240'),('20140221084605'),('20140221084724'),('20140221095938'),('20140221102157'),('20140221103135'),('20140221103648'),('20140221104416'),('20140225115308'),('20140225120348'),('20140225124250'),('20140226065328'),('20140226080132'),('20140226095005'),('20140226100200'),('20140226120001'),('20140226120120'),('20140226131709'),('20140227061242'),('20140303071014'),('20140303071622'),('20140303074719'),('20140303091650'),('20140303092929'),('20140303093214'),('20140303095504'),('20140303104206'),('20140303110307'),('20140303111002'),('20140303114207'),('20140303120240'),('20140303122306'),('20140303142408'),('20140303164512'),('20140303173512'),('20140303173751'),('20140303184122'),('20140303190602'),('20140305104311'),('20140305110332'),('20140305120613'),('20140306072839'),('20140306103649'),('20140306115817'),('20140306115831'),('20140306115846'),('20140306115857'),('20140306121313'),('20140306141337'),('20140306141444'),('20140310113516'),('20140310121125'),('20140312100637'),('20140327094102'),('20140327103145'),('20140329093035'),('20140329122317'),('20140329123815'),('20140331064510'),('20140331071426'),('20140331100937'),('20140401064656'),('20140401065916'),('20140401103133'),('20140401142626'),('20140401143322'),('20140401195511'),('20140401204138'),('20140402070518'),('20140402134738'),('20140402141845'),('20140402141949'),('20140403061550'),('20140403081910'),('20140403125901'),('20140404095416'),('20140404114452'),('20140408095615'),('20140408101511'),('20140410105033'),('20140410105654'),('20140411133410'),('20140411133525'),('20140414064548'),('20140414112608'),('20140414123909'),('20140418070546'),('20140418074905'),('20140430130556'),('20140523123425'),('20140605110059'),('20140605111130'),('20140605111221'),('20140605111601'),('20140605121121'),('20140606044919'),('20140606052106'),('20140606054324'),('20140606060237'),('20140606061555'),('20140606061912'),('20140609112129'),('20140610101917'),('20140611083011'),('20140611083651'),('20140616060428'),('20140616063526'),('20140616071150'),('20140616071239'),('20140616133715'),('20140616134040'),('20140617065256'),('20140617065712'),('20140618071615'),('20140618074127'),('20140618120945'),('20140618135209'),('20140619104518'),('20140619120957'),('20140702055645'),('20140702081200'),('20140702084812'),('20140702110001'),('20140702200320'),('20140707070928'),('20140709012634'),('20140709074450'),('20140709074508'),('20140709113800'),('20140709143729'),('20140709154304'),('20140709160028'),('20140724061436'),('20140724073049'),('20140724073809'),('20140724101321'),('20140724111519');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_schools_on_delta` (`delta`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (2,'Comsats Lahore 1','Mollna Soukat Ali Road','Lahore Campus','2014-03-03 13:51:35','2014-04-10 13:34:58',0),(3,'Jame Hall','Mollna Soukat Ali Road','Lahore Campus','2014-03-05 13:36:17','2014-03-05 13:36:17',0),(4,'Jame Quick','Calfton Area Sarder','Biola University','2014-03-05 13:38:12','2014-03-05 13:38:12',0),(5,'Jame Road','Calfton Area Sarder','Islamabad','2014-03-05 13:38:22','2014-03-05 13:38:22',0),(6,'Test','Test Test','Test branch','2014-04-10 13:15:53','2014-04-10 13:15:53',0),(8,'Jame Hall','Rawind Road Lahore','Test branch','2014-04-10 13:35:08','2014-04-10 13:35:08',0),(9,'Test','Test Test','Test','2014-05-01 04:27:32','2014-05-01 04:27:32',0),(10,'Test','Test Test Test','Biola University','2014-05-01 04:31:20','2014-05-01 04:31:20',0),(12,'Hamdard College of Science and Technology ','n/A','Karachi','2014-06-10 06:45:14','2014-06-10 06:45:14',0);
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sechedules`
--

DROP TABLE IF EXISTS `sechedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sechedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sechedulable_id` int(11) DEFAULT NULL,
  `sechedulable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'completed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sechedules`
--

LOCK TABLES `sechedules` WRITE;
/*!40000 ALTER TABLE `sechedules` DISABLE KEYS */;
INSERT INTO `sechedules` VALUES (22,'Monday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(23,'Tuesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(24,'Wednesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(25,'Thursday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(26,'Friday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(27,'Saturday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(28,'Sunday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'PickUp','completed'),(29,'Monday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(30,'Tuesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(31,'Wednesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(32,'Thursday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(33,'Friday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(34,'Saturday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(35,'Sunday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Delivery','completed'),(36,'Monday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(37,'Tuesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(38,'Wednesday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(39,'Thursday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(40,'Friday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(41,'Saturday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(42,'Sunday','00:00:00','00:00:00','2014-03-06 12:51:17','2014-06-13 09:25:45',2,'Operation','completed'),(43,'Monday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(44,'Tuesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(45,'Wednesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(46,'Thursday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(47,'Friday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(48,'Saturday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(49,'Sunday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'PickUp','completed'),(50,'Monday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(51,'Tuesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(52,'Wednesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(53,'Thursday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(54,'Friday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(55,'Saturday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(56,'Sunday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Delivery','completed'),(57,'Monday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(58,'Tuesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(59,'Wednesday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(60,'Thursday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(61,'Friday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(62,'Saturday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(63,'Sunday','00:00:00','00:00:00','2014-03-06 14:49:21','2014-07-24 06:37:07',3,'Operation','completed'),(85,'Monday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(86,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(87,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(88,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(89,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(90,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(91,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(92,'Monday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(93,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(94,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(95,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(96,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(97,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(98,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(99,'Monday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(100,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(101,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(102,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(103,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(104,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(105,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(169,'Monday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(170,'Tuesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(171,'Wednesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(172,'Thursday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(173,'Friday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(174,'Saturday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(175,'Sunday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'PickUp','completed'),(176,'Monday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(177,'Tuesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(178,'Wednesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(179,'Thursday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(180,'Friday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(181,'Saturday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Delivery','completed'),(182,'Sunday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-05-08 05:17:24',9,'Delivery','completed'),(183,'Monday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','completed'),(184,'Tuesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','pending'),(185,'Wednesday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','completed'),(186,'Thursday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','completed'),(187,'Friday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','completed'),(188,'Saturday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','completed'),(189,'Sunday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-07-24 06:37:40',9,'Operation','pending'),(316,'Monday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(317,'Tuesday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(318,'Wednesday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(319,'Thursday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(320,'Friday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(321,'Saturday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(322,'Sunday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'PickUp','completed'),(323,'Monday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:16',16,'Delivery','completed'),(324,'Tuesday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:17',16,'Delivery','completed'),(325,'Wednesday','00:00:00','00:00:00','2014-06-18 10:17:26','2014-06-19 05:47:17',16,'Delivery','completed'),(326,'Thursday','00:00:00','00:00:00','2014-06-18 10:17:27','2014-06-19 05:47:17',16,'Delivery','completed'),(327,'Friday','00:00:00','00:00:00','2014-06-18 10:17:27','2014-06-19 05:47:17',16,'Delivery','completed'),(328,'Saturday','00:00:00','00:00:00','2014-06-18 10:17:27','2014-06-19 05:47:17',16,'Delivery','completed'),(329,'Sunday','00:00:00','00:00:00','2014-06-18 10:17:27','2014-06-19 05:47:17',16,'Delivery','completed'),(330,'Monday','02:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(331,'Tuesday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(332,'Wednesday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(333,'Thursday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(334,'Friday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(335,'Saturday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed'),(336,'Sunday','01:00:00','23:00:00','2014-06-18 10:17:27','2014-07-08 06:13:20',16,'Operation','completed');
/*!40000 ALTER TABLE `sechedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribes`
--

DROP TABLE IF EXISTS `subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_subscribes_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribes`
--

LOCK TABLES `subscribes` WRITE;
/*!40000 ALTER TABLE `subscribes` DISABLE KEYS */;
INSERT INTO `subscribes` VALUES (5,'test','test@gmail.com','test','2014-06-06 07:08:07','2014-06-18 07:25:43',1),(6,'hello','hello@gmail.com','test test','2014-06-06 07:08:20','2014-06-18 07:25:43',1),(7,'Suneel','s@gmail.com','test','2014-06-06 07:08:31','2014-06-18 07:25:43',1),(8,'Suneel','sky@gmail.com','test','2014-06-06 07:08:40','2014-06-18 07:25:43',1),(10,'Suneel','k@gmail.com','dlkasd','2014-06-06 10:55:55','2014-06-18 07:25:43',1),(11,'Suneel','v@gma.com','sldsa','2014-06-06 10:56:06','2014-06-18 07:25:43',1),(12,'Suneel','dasdsa@al.com','sadsa','2014-06-06 10:56:15','2014-06-18 07:25:44',1),(13,'Suneel','sy@gma1il.com','adssad','2014-06-06 10:56:23','2014-06-18 07:25:44',1),(14,'Suneel','dasdsa@kgmail.com','asdas','2014-06-06 10:56:32','2014-06-18 07:25:44',1),(15,'hello ','sdasdas@daksd.com','aslkdsak\'dsa','2014-06-06 12:30:48','2014-06-18 07:25:44',1),(16,'asdsadsa','asdsad@gmail.com','aslkdsakldla','2014-06-06 12:30:59','2014-06-18 07:25:44',1),(17,'Test','xyz@gmail.com','Test','2014-06-06 12:47:35','2014-06-18 07:25:44',1),(18,'Test','xyz1@gmail.com','Test','2014-06-06 12:47:38','2014-06-18 07:25:44',1),(19,'Test','xyz3@gmail.com','Test','2014-06-06 12:47:42','2014-06-18 07:25:44',1),(20,'Test','xyz4@gmail.com','Test','2014-06-06 12:47:52','2014-06-18 07:25:44',1),(21,'Test','xyz6@gmail.com','Test','2014-06-06 12:47:56','2014-06-18 07:25:44',1),(22,'Test','xyz23@gmail.com','Test','2014-06-06 12:48:00','2014-06-18 07:25:44',1),(24,'Suneel','sk@gmail.com','sadsad','2014-07-02 08:39:42','2014-07-02 08:50:07',1);
/*!40000 ALTER TABLE `subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supports`
--

DROP TABLE IF EXISTS `supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restaurant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `is_viewed` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supports`
--

LOCK TABLES `supports` WRITE;
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
INSERT INTO `supports` VALUES (1,'suneel','Ali Restaurant',2147483647,'Test Test Test',1,'2014-06-18 09:48:16','2014-06-18 09:48:21');
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_of_service_pages`
--

DROP TABLE IF EXISTS `term_of_service_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_of_service_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_of_service_pages`
--

LOCK TABLES `term_of_service_pages` WRITE;
/*!40000 ALTER TABLE `term_of_service_pages` DISABLE KEYS */;
INSERT INTO `term_of_service_pages` VALUES (1,'Campus Bite LLC and its affiliates provide their services to you subject to the following notices, terms, and conditions. In addition, when you use any service of Campus Bite or its Internet Web site(s), you will be subject to the rules, guidelines, policies, terms, and conditions applicable to that service and you will be subject to all governing state and federal laws, including applicable patent, copyright, trademark and other intellectual property laws.\r\nCopyright\r\n\r\nThis Web site, in its entirety, is the sole property of Campus Bite or its content suppliers and protected by U.S. and international copyright laws. The compilation (meaning the collection, arrangement, and assembly) of all content on this site is the exclusive property of Campus Bite and is protected by U.S. and international copyright laws. All software used on this site is the property of Campus Bite or its affiliates and is protected by U.S. and international copyright laws. The content and software on this Web site may be used as a personal shopping, and e-commerce resource. Any other use, including the reproduction, modification, distribution, transmission, republication, display, or performance of the content on this Web site is strictly prohibited. The application of this Web site, into any other Web site, is strictly prohibited unless pre-approved by Campus Bite.\r\nTrademarks\r\n\r\nCampus Bite and the Campus Bite Logo are registered trademarks of Campus Bite, in the United States and other countries. Campus Bite\'s trademarks may not be used in connection with any product or service that is not Campus Bite\'s, in any manner that is likely to cause confusion among customers or in any manner that disparages or discredits Campus Bite.\r\nModification of the Site or Terms of Service\r\n\r\nWe reserve the sole right to either modify or discontinue the Site, including any of the Site\'s features, at any time with or without notice to you. We expressly reserve the right to change these Terms of Service from time to time without notice to you. You acknowledge and agree that it is your responsibility to review this site and these Terms of Service from time to time and to familiarize yourself with any modifications. Your continued use of this site after such modifications will constitute acknowledgement of the modified Terms of Service and agreement to abide and be bound by the modified Terms of Service.\r\nUse Of Site\r\n\r\nBy accessing this Web site you are agreeing to all of the terms, conditions, and statements included in this legal statement. The entirety of this site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, or otherwise exploited for any commercial purpose that is not expressly permitted by Campus Bite. The Campus Bite site may not be linked to any other site without prior consent of Campus Bite. Campus Bite and its affiliates reserve the right to refuse service, terminate accounts, and/or cancel orders at its discretion, including, without limitation, if Campus Bite believes that customer conduct violates applicable law, disrupts our normal business activities or is harmful to the interests of Campus Bite and its affiliates.\r\nTerms of Purchase\r\n\r\nYou agree to pay all fees and charges incurred in connection with your purchases (including any applicable taxes) at the rates in effect when the charges were incurred. We may require additional verification or information before accepting any order.\r\nMethods Of Payment:\r\n\r\nCredit Card\r\n\r\nBy selecting credit card as a method of payment, you agree that you must be authorized to use the credit card present as a method of payment. Prior to the purchase of any goods or services on our Website, you must provide us with a valid credit card number and associated payment information including all of the following: (i) your name as it appears on the card, (ii) your credit card number, (iii) the credit card type, (iv) the date of expiration, and (v) any activation numbers or codes needed to charge your card. If Restaurant does not receive payment from your credit card issuer or its agent, you agree to pay all amounts due upon demand by Campus Bite or its agents.\r\nLimitation of Liability\r\n\r\nYou agree to indemnify and hold Campus Bite, its subsidiaries, affiliates, officers, agents, and other partners and employees harmless from any loss, liability, damage, claim, or demand (direct, indirect, incidental, consequential, exemplary, or special), including reasonable attorneys\' fees, made by any third party due to or arising out of your use of this Web site, including your use of this Web site to provide a link to another Web site or to upload content or other information to the Web site.\r\nChildren\r\n\r\nYou may not use the Campus Bite Website if you are under (13) years of age. By using this Website, you agree that you are at least (13) years of age or older.\r\nReturn Policy\r\n\r\nIf any food or delivery issues arise after you submit your order, please contact the Restaurant directly for the fastest service. All purchases are final unless an issue arises which is confirmed with an Campus Bite Restaurant, or otherwise determined by Campus Bite, at its sole discretion. If you require further assistance please contact us within 24 hours of the order date. No cash refunds will be issued by Campus Bite.\r\nCorporate\r\n\r\nFor questions or comments regarding our policies, please contact us\r\nEmail\r\n\r\nBy registering or placing an order with us, you are consenting to receive e-mails from us regarding your registration or your order. Additionally, by registering or placing an order with us, you are consenting to receive commercial e-mail from us. If you do not wish to receive commercial email from us, you may remove your name from the e-mail list and edit your personal information from the Campus Bite computer system by updating your account information.\r\nDisclaimer\r\n\r\nTHIS WEB SITE IS PROVIDED BY CAMPUS BITE AS \"AS IS\" BASIS. CAMPUS BITE MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THE SITE, OR THE INFORMATION, CONTENT, MATERIALS, OR PRODUCTS INCLUDED IN THIS SITE. TO THE FULL EXTENT PERMISSABLE BY APPLICABLE LAW, CAMPUS BITE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. CAMPUS BITE WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM THE USE OF THIS SITE, OR PRODUCTS ACQUIRED THROUGH THIS SITE, INCLUDING BUT NOT LIMITED TO, DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES. CAMPUS BITE RESERVES THE RIGHT TO LIMIT PURCHASE AND PURCHASE QUANTITY. IN THE EVENT OF ANY SITE ERROR, CUSTOMERS WILL BE LIMITED TO A SINGLE UNIT PURCHASE. PRICING ON THIS SITE MAY BE SUBJECT TO CHANGE WITHOUT EXPRESS WRITTEN NOTICE.\r\nCampus Bite disclaims any and all liability for the acts, omissions, conduct of any third-party users, Campus Bite users, advertisers, and/or sponsors on the Web site, in connection with the Web site, or otherwise related to your use of the Web site. Campus Bite is not responsible for the products, services, actions, or failure to act of any third party in the connection with the Web site. Without limiting the foregoing, you may contact us regarding the misconduct of users and/or third-party advertisers, service, and/or product providers referenced on, or included in the Web site, to Campus Bite. Campus Bite may investigate the claim and take appropriate action, at its sole discretion.Food Allergies\r\nIt is your responsibility to note any specific food allergies when you place your order. Please instruct the Restaurant of food allergy concerns in the special instruction boxes or in the final special instructions box before sending your order. Although this information is transmitted to the Restaurant exactly as it appears on the Website, Campus Bite CANNOT GAURANTEE THAT YOUR ORDER WILL BE PREPARED AS REQUESTED. If you have food-related allergies and you are concerned about the preparation of the order, we suggest you contact the Restaurant directly after submitting your order.\r\nCoupon\r\n\r\nFrom time to time Campus Bite may offer promotions and special offers identified by a Coupon Code. Each Coupon Code will have different requirements and rewards. Typically, you will receive a Coupon or an email that contains the Coupon Code. If you receive a Coupon or email that contains a Coupon Code, please read it carefully all requirements stated in the Coupon or email must be met in order to receive or take advantage of the promotion or special offer. Unless otherwise stated all Coupon Codes are limited to one-time use.\r\nTo take advantage of a promotion or special offer, enter the Coupon Code in the applicable field when placing an order. Not all products are eligible for promotions and special offers. If a Coupon Code does not function when entered, it means the product at issue does not qualify for the promotion or special offer; this determination is final.\r\nCoupon Codes only apply to products ordered through Campus Bite website; they may not be used in conjunction with the purchase of products sold by or under the brands of third parties (including, Campus Bite affiliates and/or websites linked to any existing Campus Bite website).\r\nCoupon Codes cannot be used to pay for taxes, delivery or other charges. If the promotion or special offer has a minimum purchase requirement, taxes, delivery and other charges do not apply towards the minimum purchase amount.\r\nPromotions and special offers are only valid for a limited time. They will expire on the date or within the timeframe specified in the offer. If no date or timeframe is specified, a promotion or special offer is valid until the end of the month is which the Coupon Code is first eligible for use.\r\nCoupon Codes (and the Coupons or emails that contain them) are not for resale, have no independent cash value, are not redeemable for cash, and will not be replaced if lost, stolen or deleted.\r\nCoupon Codes will not be retroactively applied against orders already placed with Campus Bite.\r\nIf a Coupon Code is used and the entire order is cancelled or rejected, or if you return all items in the order then, subject to the terms of our Return Policy, you will be refunded only the actual amount paid. The coupon code will no longer be valid.\r\nIf only part of your order is cancelled or rejected, or if you return only some of the items in your order, then subject to the terms of our Return Policy, the relevant discount or promotion will be applied to the item(s) that are kept. The foregoing notwithstanding, under no circumstances will a promotion or special offer of any kind be applied to create a credit balance. If the balance of a partially canceled, rejected or returned order is less than the value of the promotion or special offer, the promotion or special offer will be applied to the outstanding balance (not including delivery, taxes and other charges). The balance of the promotion or special offer is void, and the Coupon Code will no longer be valid.\r\nCampus Bite reserves the right to discontinue a promotion or special offer or coupon at any time and with immediate effect.\r\nApplicable Law\r\n\r\nCampus Bite is incorporated in the State of New Jersey, USA. As such, the laws of the State of New Jersey will govern these disclaimers, terms, and conditions, without giving effect to any principles of conflicts of laws. We reserve the right to make changes to our site and these disclaimers, terms, and conditions at any time.','2014-07-09 17:05:45','2014-07-09 17:05:45'),(2,'<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Campus Bite LLC and its affiliates provide their services to you subject to the following notices, terms, and conditions. In addition, when you use any service of Campus Bite or its Internet Web site(s), you will be subject to the rules, guidelines, policies, terms, and conditions applicable to that service and you will be subject to all governing state and federal laws, including applicable patent, copyright, trademark and other intellectual property laws.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Copyright</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">This Web site, in its entirety, is the sole property of Campus Bite or its content suppliers and protected by U.S. and international copyright laws. The compilation (meaning the collection, arrangement, and assembly) of all content on this site is the exclusive property of Campus Bite and is protected by U.S. and international copyright laws. All software used on this site is the property of Campus Bite or its affiliates and is protected by U.S. and international copyright laws. The content and software on this Web site may be used as a personal shopping, and e-commerce resource. Any other use, including the reproduction, modification, distribution, transmission, republication, display, or performance of the content on this Web site is strictly prohibited. The application of this Web site, into any other Web site, is strictly prohibited unless pre-approved by Campus Bite.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Trademarks</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Campus Bite and the Campus Bite Logo are registered trademarks of Campus Bite, in the United States and other countries. Campus Bite\'s trademarks may not be used in connection with any product or service that is not Campus Bite\'s, in any manner that is likely to cause confusion among customers or in any manner that disparages or discredits Campus Bite.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Modification of the Site or Terms of Service</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">We reserve the sole right to either modify or discontinue the Site, including any of the Site\'s features, at any time with or without notice to you. We expressly reserve the right to change these Terms of Service from time to time without notice to you. You acknowledge and agree that it is your responsibility to review this site and these Terms of Service from time to time and to familiarize yourself with any modifications. Your continued use of this site after such modifications will constitute acknowledgement of the modified Terms of Service and agreement to abide and be bound by the modified Terms of Service.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Use Of Site</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">By accessing this Web site you are agreeing to all of the terms, conditions, and statements included in this legal statement. The entirety of this site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, or otherwise exploited for any commercial purpose that is not expressly permitted by Campus Bite. The Campus Bite site may not be linked to any other site without prior consent of Campus Bite. Campus Bite and its affiliates reserve the right to refuse service, terminate accounts, and/or cancel orders at its discretion, including, without limitation, if Campus Bite believes that customer conduct violates applicable law, disrupts our normal business activities or is harmful to the interests of Campus Bite and its affiliates.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Terms of Purchase</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">You agree to pay all fees and charges incurred in connection with your purchases (including any applicable taxes) at the rates in effect when the charges were incurred. We may require additional verification or information before accepting any order.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Methods Of Payment:</h5>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Credit Card</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">By selecting credit card as a method of payment, you agree that you must be authorized to use the credit card present as a method of payment. Prior to the purchase of any goods or services on our Website, you must provide us with a valid credit card number and associated payment information including all of the following: (i) your name as it appears on the card, (ii) your credit card number, (iii) the credit card type, (iv) the date of expiration, and (v) any activation numbers or codes needed to charge your card. If Restaurant does not receive payment from your credit card issuer or its agent, you agree to pay all amounts due upon demand by Campus Bite or its agents.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Limitation of Liability</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">You agree to indemnify and hold Campus Bite, its subsidiaries, affiliates, officers, agents, and other partners and employees harmless from any loss, liability, damage, claim, or demand (direct, indirect, incidental, consequential, exemplary, or special), including reasonable attorneys\' fees, made by any third party due to or arising out of your use of this Web site, including your use of this Web site to provide a link to another Web site or to upload content or other information to the Web site.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Children</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">You may not use the Campus Bite Website if you are under (13) years of age. By using this Website, you agree that you are at least (13) years of age or older.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Return Policy</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">If any food or delivery issues arise after you submit your order, please contact the Restaurant directly for the fastest service. All purchases are final unless an issue arises which is confirmed with an Campus Bite Restaurant, or otherwise determined by Campus Bite, at its sole discretion. If you require further assistance please contact us within 24 hours of the order date. No cash refunds will be issued by Campus Bite.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Corporate</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">For questions or comments regarding our policies, please contact us</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Email</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">By registering or placing an order with us, you are consenting to receive e-mails from us regarding your registration or your order. Additionally, by registering or placing an order with us, you are consenting to receive commercial e-mail from us. If you do not wish to receive commercial email from us, you may remove your name from the e-mail list and edit your personal information from the Campus Bite computer system by updating your account information.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Disclaimer</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">THIS WEB SITE IS PROVIDED BY CAMPUS BITE AS \"AS IS\" BASIS. CAMPUS BITE MAKES NO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE OPERATION OF THE SITE, OR THE INFORMATION, CONTENT, MATERIALS, OR PRODUCTS INCLUDED IN THIS SITE. TO THE FULL EXTENT PERMISSABLE BY APPLICABLE LAW, CAMPUS BITE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. CAMPUS BITE WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND ARISING FROM THE USE OF THIS SITE, OR PRODUCTS ACQUIRED THROUGH THIS SITE, INCLUDING BUT NOT LIMITED TO, DIRECT, INDIRECT, INCIDENTAL, PUNITIVE, AND CONSEQUENTIAL DAMAGES. CAMPUS BITE RESERVES THE RIGHT TO LIMIT PURCHASE AND PURCHASE QUANTITY. IN THE EVENT OF ANY SITE ERROR, CUSTOMERS WILL BE LIMITED TO A SINGLE UNIT PURCHASE. PRICING ON THIS SITE MAY BE SUBJECT TO CHANGE WITHOUT EXPRESS WRITTEN NOTICE.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Campus Bite disclaims any and all liability for the acts, omissions, conduct of any third-party users, Campus Bite users, advertisers, and/or sponsors on the Web site, in connection with the Web site, or otherwise related to your use of the Web site. Campus Bite is not responsible for the products, services, actions, or failure to act of any third party in the connection with the Web site. Without limiting the foregoing, you may contact us regarding the misconduct of users and/or third-party advertisers, service, and/or product providers referenced on, or included in the Web site, to Campus Bite. Campus Bite may investigate the claim and take appropriate action, at its sole discretion.Food Allergies</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">It is your responsibility to note any specific food allergies when you place your order. Please instruct the Restaurant of food allergy concerns in the special instruction boxes or in the final special instructions box before sending your order. Although this information is transmitted to the Restaurant exactly as it appears on the Website, Campus Bite CANNOT GAURANTEE THAT YOUR ORDER WILL BE PREPARED AS REQUESTED. If you have food-related allergies and you are concerned about the preparation of the order, we suggest you contact the Restaurant directly after submitting your order.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Coupon</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">From time to time Campus Bite may offer promotions and special offers identified by a Coupon Code. Each Coupon Code will have different requirements and rewards. Typically, you will receive a Coupon or an email that contains the Coupon Code. If you receive a Coupon or email that contains a Coupon Code, please read it carefully all requirements stated in the Coupon or email must be met in order to receive or take advantage of the promotion or special offer. Unless otherwise stated all Coupon Codes are limited to one-time use.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">To take advantage of a promotion or special offer, enter the Coupon Code in the applicable field when placing an order. Not all products are eligible for promotions and special offers. If a Coupon Code does not function when entered, it means the product at issue does not qualify for the promotion or special offer; this determination is final.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Coupon Codes only apply to products ordered through Campus Bite website; they may not be used in conjunction with the purchase of products sold by or under the brands of third parties (including, Campus Bite affiliates and/or websites linked to any existing Campus Bite website).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Coupon Codes cannot be used to pay for taxes, delivery or other charges. If the promotion or special offer has a minimum purchase requirement, taxes, delivery and other charges do not apply towards the minimum purchase amount.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Promotions and special offers are only valid for a limited time. They will expire on the date or within the timeframe specified in the offer. If no date or timeframe is specified, a promotion or special offer is valid until the end of the month is which the Coupon Code is first eligible for use.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Coupon Codes (and the Coupons or emails that contain them) are not for resale, have no independent cash value, are not redeemable for cash, and will not be replaced if lost, stolen or deleted.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Coupon Codes will not be retroactively applied against orders already placed with Campus Bite.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">If a Coupon Code is used and the entire order is cancelled or rejected, or if you return all items in the order then, subject to the terms of our Return Policy, you will be refunded only the actual amount paid. The coupon code will no longer be valid.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">If only part of your order is cancelled or rejected, or if you return only some of the items in your order, then subject to the terms of our Return Policy, the relevant discount or promotion will be applied to the item(s) that are kept. The foregoing notwithstanding, under no circumstances will a promotion or special offer of any kind be applied to create a credit balance. If the balance of a partially canceled, rejected or returned order is less than the value of the promotion or special offer, the promotion or special offer will be applied to the outstanding balance (not including delivery, taxes and other charges). The balance of the promotion or special offer is void, and the Coupon Code will no longer be valid.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Campus Bite reserves the right to discontinue a promotion or special offer or coupon at any time and with immediate effect.</p>\r\n<h5 style=\"box-sizing: border-box; font-family: arial; line-height: 1.1; color: #333333; margin-top: 10px; margin-bottom: 10px; font-size: 15px;\">Applicable Law</h5>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 3px; font-size: 15px; font-family: arial; color: #333333;\">Campus Bite is incorporated in the State of New Jersey, USA. As such, the laws of the State of New Jersey will govern these disclaimers, terms, and conditions, without giving effect to any principles of conflicts of laws. We reserve the right to make changes to our site and these disclaimers, terms, and conditions at any time.</p>\r\n<p>&nbsp;</p>','2014-07-09 17:53:19','2014-07-09 17:53:19');
/*!40000 ALTER TABLE `term_of_service_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uploads`
--

DROP TABLE IF EXISTS `uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `redeam_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uploads`
--

LOCK TABLES `uploads` WRITE;
/*!40000 ALTER TABLE `uploads` DISABLE KEYS */;
INSERT INTO `uploads` VALUES (1,'2014-06-05 12:16:47','2014-07-04 10:21:09','add.png','image/png',282200,'2014-07-04 10:21:08',3,NULL),(2,'2014-06-05 12:31:59','2014-07-04 10:39:06','slide-1.jpg','image/jpeg',164470,'2014-07-04 10:39:05',4,NULL),(3,'2014-06-05 12:42:49','2014-07-04 09:21:58','slider-2.jpg','image/jpeg',224056,'2014-07-04 09:21:57',5,NULL),(4,'2014-06-05 12:43:11','2014-07-04 09:22:15','slider-3.jpg','image/jpeg',390974,'2014-07-04 09:22:14',6,NULL),(5,'2014-07-02 09:31:33','2014-07-02 09:31:33','ipad.png','image/png',23701,'2014-07-02 09:31:32',NULL,1),(6,'2014-07-02 09:34:59','2014-07-02 09:34:59','touch.png','image/png',21661,'2014-07-02 09:34:59',NULL,2),(7,'2014-07-04 09:22:26','2014-07-04 09:22:26','slider-4.jpg','image/jpeg',326708,'2014-07-04 09:22:25',7,NULL);
/*!40000 ALTER TABLE `uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_pages`
--

DROP TABLE IF EXISTS `user_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_pages`
--

LOCK TABLES `user_pages` WRITE;
/*!40000 ALTER TABLE `user_pages` DISABLE KEYS */;
INSERT INTO `user_pages` VALUES (1,'Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Nullam quis ante. Vestibulum eu odio.','2014-07-09 15:54:12','2014-07-09 15:54:12');
/*!40000 ALTER TABLE `user_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (9,'Read Order','read_order',NULL,'read','Order','2014-06-17 13:03:02','2014-06-17 13:03:02'),(10,'Create Order','create_order',NULL,'create','Order','2014-06-17 13:03:03','2014-06-17 13:03:03'),(11,'Update Order','update_order',NULL,'update','Order','2014-06-17 13:03:03','2014-06-17 13:03:03'),(12,'Manage (all) Order','manage_all_order',NULL,'manage','Order','2014-06-17 13:03:03','2014-06-17 13:03:03'),(13,'Delete Order','delete_order',NULL,'destroy','Order','2014-06-17 13:03:03','2014-06-17 13:03:03'),(14,'Read Restaurant','read_restaurant',NULL,'read','Restaurant','2014-06-17 13:03:03','2014-06-17 13:03:03'),(15,'Create Restaurant','create_restaurant',NULL,'create','Restaurant','2014-06-17 13:03:03','2014-06-17 13:03:03'),(16,'Update Restaurant','update_restaurant',NULL,'update','Restaurant','2014-06-17 13:03:03','2014-06-17 13:03:03'),(17,'Manage (all) Restaurant','manage_all_restaurant',NULL,'manage','Restaurant','2014-06-17 13:03:03','2014-06-17 13:03:03'),(18,'Delete Restaurant','delete_restaurant',NULL,'destroy','Restaurant','2014-06-17 13:03:03','2014-06-17 13:03:03'),(19,'Read School','read_school',NULL,'read','School','2014-06-17 13:03:03','2014-06-17 13:03:03'),(20,'Create School','create_school',NULL,'create','School','2014-06-17 13:03:03','2014-06-17 13:03:03'),(21,'Update School','update_school',NULL,'update','School','2014-06-17 13:03:03','2014-06-17 13:03:03'),(22,'Manage (all) School','manage_all_school',NULL,'manage','School','2014-06-17 13:03:03','2014-06-17 13:03:03'),(23,'Delete School','delete_school',NULL,'destroy','School','2014-06-17 13:03:03','2014-06-17 13:03:03'),(24,'Read Review','read_review',NULL,'read','Review','2014-06-17 13:03:03','2014-06-17 13:03:03'),(25,'Create Review','create_review',NULL,'create','Review','2014-06-17 13:03:03','2014-06-17 13:03:03'),(26,'Update Review','update_review',NULL,'update','Review','2014-06-17 13:03:03','2014-06-17 13:03:03'),(27,'Manage (all) Review','manage_all_review',NULL,'manage','Review','2014-06-17 13:03:04','2014-06-17 13:03:04'),(28,'Delete Review','delete_review',NULL,'destroy','Review','2014-06-17 13:03:04','2014-06-17 13:03:04');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `school_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `mute` tinyint(1) DEFAULT '0',
  `is_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','','admin@ordering.com','$2a$10$1xR75YnyVpkDh/OichWsmOo8Z54pT3VMdmiuCfxedRpaFDJ7mcZdm',NULL,NULL,NULL,167,'2014-07-24 08:08:40','2014-07-24 06:36:43','127.0.0.1','127.0.0.1','2014-03-03 11:12:25','2014-07-24 08:08:40','','customer_1',14471,0,1),(2,'Suneel','Kumar','sunny.ciitlahore@gmail.com','$2a$10$Zm1z2f1KIk81iEPXei6BhO2CrGeoBOGN3B7N61wUfk9I.dPDWH2VW','5a58aefb82e1920364ec6b501a76a70a083482280cb2d147e0e0adec9c7a0af1','2014-03-06 09:57:08',NULL,0,NULL,NULL,NULL,NULL,'2014-03-06 06:57:12','2014-07-03 04:37:16',NULL,NULL,500,0,1),(3,'Suneel','Kumar','sk@gmail.com','$2a$10$zJv8gMm4SLHY1KpIKDlE2.Dxo16ZVZd9oEvjvJoDt0h0u4su.um6K','b9e0599a2fe752ddc369ac21115a3c641d3ead32931016a66dbcc2c31d48c3ec','2014-03-06 08:12:30',NULL,2,'2014-07-02 08:05:12','2014-03-06 07:36:34','127.0.0.1','127.0.0.1','2014-03-06 07:36:34','2014-07-02 08:05:12','Comsats (Lahore Campus)',NULL,0,0,1),(4,'Suneel','Kumar','mujtaba@gmail.com','$2a$10$FGARh856xkhD8y7J0pZHaupA0lCol1XSLH4qhZPdxyTSjj3L2lxLa',NULL,NULL,NULL,1,'2014-03-27 08:30:58','2014-03-27 08:30:58','127.0.0.1','127.0.0.1','2014-03-27 08:30:58','2014-06-18 07:28:58','Comsats (Lahore Campus)',NULL,0,0,1),(5,'Suneel','Kumar..','vk@gmail.com','$2a$10$i7E.wHPRQ4FLAXrxC5uy2uhSun9F8585.pPht623z7.9Wgko/u732',NULL,NULL,NULL,3,'2014-04-18 06:17:41','2014-03-28 08:02:45','127.0.0.1','127.0.0.1','2014-03-28 06:40:54','2014-06-18 07:28:58','Jame Quick (Biola University)','customer_5',0,0,1),(8,'test','test','test@gmail.com','$2a$10$3/JzyKfAJPF2w4lkgm5qaOr0c34Av/cFNVx6RN9TTQVSbahhXo9sK',NULL,NULL,NULL,13,'2014-04-08 12:00:13','2014-04-04 08:28:37','127.0.0.1','127.0.0.1','2014-04-01 14:39:18','2014-06-18 07:28:58','Comsats (Lahore Campus)','customer_8',60985,0,1),(9,'test','test','test@mail.com','$2a$10$FcalExz/wGTbTu3DPnrB7u47ed1AFV64G5oe6Uwj0in8N/0Fwns8.',NULL,NULL,NULL,3,'2014-04-04 07:30:50','2014-04-04 07:28:16','127.0.0.1','127.0.0.1','2014-04-04 07:18:18','2014-06-18 07:28:58','Jame Quick (Biola University)','customer_9',0,0,1),(10,'Suneel','Kumar','admin@restaurant.com','$2a$10$Rap1Gf.cp3.kjsQ.zT3vC.KTgTgRDeRIVcEutcyN4aB/7OyQR9MWK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-08 10:34:46','2014-06-18 07:28:59',NULL,'customer_10',0,0,1),(11,'John','levaer','john@gmail.com','$2a$10$McsJEbXLJpltcTmsStzpCOGY56kLsR8cjLIp.E80ZHHtW.7n7pLxq',NULL,NULL,NULL,1,'2014-04-08 11:02:22','2014-04-08 11:02:22','127.0.0.1','127.0.0.1','2014-04-08 10:55:07','2014-06-18 07:28:59',NULL,'customer_11',0,0,1),(12,'test','admin','testadmin@gmail.com','$2a$10$5Uv2btsoMhYjyyVaqcvwveYzV0qrR7rpVtMaMBUmUi0d4GVbYUAl.',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-08 11:09:03','2014-06-18 07:28:59',NULL,'customer_12',0,0,1),(13,'test','admin','testadmin1@gmail.com','$2a$10$bTfyqcHHRkDJBqbc3Va35eMG33nNepwZAAl4PurCFoShIlIaaFbra',NULL,NULL,NULL,42,'2014-06-18 07:32:03','2014-06-17 13:11:00','127.0.0.1','127.0.0.1','2014-04-08 11:10:00','2014-06-18 07:32:03',NULL,'customer_13',9370,1,1),(14,'Avinesh','Kumar','avinesh@hotmail.com','$2a$10$yn2Z3ZGN4jwBhq15YhBjyelR8SZyWA7gyC0JIU0wSc0HZXwtpgPp.',NULL,NULL,NULL,49,'2014-07-24 08:05:27','2014-07-23 09:17:39','127.0.0.1','127.0.0.1','2014-04-08 12:15:11','2014-07-24 11:36:35','Jame Quick (Biola University)','customer_14',255906,0,1),(15,'','','eamil@email.com','$2a$10$3zMQ1v.QEN8.VWkrnZrbp.t0euB.BkrVStbXr9v/9mBhUMOxvUHym',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-10 14:18:22','2014-06-18 07:28:59',NULL,'customer_15',0,0,1),(16,'','','email@email.com','$2a$10$d0a9LL3L.wiPFQ2dSpBHd.qb2ffm5mTR.vDHUQj.ACYWQWmfSfmxW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-10 14:31:12','2014-06-18 07:28:59',NULL,'customer_16',0,0,1),(17,'Suneel','Kumar','suuny@gmail.com','$2a$10$xIypWpdE8.6n5KekcevXROC5/Ss4fG1.t5UZeSGXczSmxlRurnWVC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 13:27:56','2014-06-18 07:28:59',NULL,'customer_17',0,0,1),(18,'test','sunny','test_suny@gmail.com','$2a$10$7URL4IY3HQj0ORdw9OtUJe6R9P55jLJk9sUhypqY9RLS2awH/9zgC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 14:10:08','2014-06-18 07:28:59',NULL,'customer_18',0,0,1),(19,'John','levaer','kapil@gmail.com','$2a$10$VFGF.VPwxEjwM4FgMVS3Q.FGablWMXn.LQcPbhONNeQL6LKu8.gD6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 14:19:56','2014-06-18 07:28:59',NULL,'customer_19',0,0,1),(22,'test','User','test_user@gmail.com','$2a$10$mOMmvTTGNg33rLNqq0SEGOaoI0nv.Zgohz/5KBIl2ScW96wcime4G',NULL,NULL,NULL,1,'2014-05-09 07:59:26','2014-05-09 07:59:26','127.0.0.1','127.0.0.1','2014-05-09 07:59:23','2014-06-18 07:28:59','','26455566',0,0,1),(23,'Test','Test','test@test.com','$2a$10$6D1i6WiItXJ.SEWHyd68Q.4a4AkSNkMJ7lYn6RpMw/HGAqRk9xe9m',NULL,NULL,NULL,2,'2014-05-29 10:33:20','2014-05-09 08:05:47','127.0.0.1','127.0.0.1','2014-05-09 08:05:43','2014-06-18 07:28:59','','26455592',0,0,1),(24,'Suneel','Kumar','sunny.ciitlahore@email.com','$2a$10$O43VEWxn9G/Zd1m0OhnfZuzvYnLoNH4v4b1wVqiw/BoWHyqeuK4Ym',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-13 06:38:17','2014-06-18 07:28:59',NULL,'customer_24',0,0,1),(25,'Suneel','admin','sunny.ciitlhr@gmail.com','$2a$10$XBXiDeMgxFKFRBdxQ4YU2upuCxXw4aj4lYzOJchvBqYgtRPb6pHpG',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-16 06:21:19','2014-06-18 07:28:59',NULL,'customer_25',0,0,1),(26,'Suneel','Kumar','lahore@gmail.com','$2a$10$vAWZBAUieu2F/xYAh85aY.PlvmVdDcKzc4Y2YdHczEOM9DNdA0OeS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-06-17 06:10:38','2014-06-18 07:28:59',NULL,'customer_26',0,0,1),(27,'Suneel','Kumar','suneel@gmail.com','$2a$10$yukUqD7702fuNf3NpT1F1.L.YtFiW3KHa1I41y.DWMt8m.wZ1zmW6',NULL,NULL,NULL,5,'2014-07-07 09:45:45','2014-06-20 11:50:30','127.0.0.1','127.0.0.1','2014-06-18 10:17:23','2014-07-07 10:02:52',NULL,'customer_27',0,1,1),(28,'Adil','Shahbaz','adil@gmail.com','$2a$10$iuXjwtXgNMA7EsxtbhuMLOt1wvjKMSGiFJcFlUl7CnDQ.tSs6oCr.',NULL,NULL,NULL,1,'2014-07-04 08:14:42','2014-07-04 08:14:42','127.0.0.1','127.0.0.1','2014-07-04 08:14:37','2014-07-09 15:18:40','comsats Lahore','customer_28',0,0,1),(29,'Suneel','Kumar','gmail.com@gmail.com','$2a$10$XcABWTlQAyVRXsLmzx5NkuHo6nA6pdr7meh3Zbqr1cr7A/F/00ViC',NULL,NULL,NULL,1,'2014-07-08 12:07:18','2014-07-08 12:07:18','127.0.0.1','127.0.0.1','2014-07-08 12:07:15','2014-07-09 15:18:40','Comsats Lahore 1Qalma Chowk','customer_29',0,0,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_users_roles_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (1,1),(1,2),(1,5),(2,1),(3,1),(4,1),(5,1),(8,1),(9,1),(11,1),(11,4),(12,1),(12,4),(13,1),(13,4),(13,6),(14,1),(15,1),(15,4),(16,1),(16,4),(17,1),(17,4),(18,1),(18,4),(19,1),(19,4),(22,1),(23,1),(24,1),(24,4),(25,1),(25,4),(26,1),(26,4),(27,6),(27,7),(29,7);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `versioned_id` int(11) DEFAULT NULL,
  `versioned_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifications` text COLLATE utf8_unicode_ci,
  `number` int(11) DEFAULT NULL,
  `reverted_from` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_versioned_id_and_versioned_type` (`versioned_id`,`versioned_type`),
  KEY `index_versions_on_user_id_and_user_type` (`user_id`,`user_type`),
  KEY `index_versions_on_user_name` (`user_name`),
  KEY `index_versions_on_number` (`number`),
  KEY `index_versions_on_tag` (`tag`),
  KEY `index_versions_on_created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (6,7,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',2,NULL,NULL,'2014-04-10 11:33:35','2014-04-10 11:33:35'),(7,7,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- 2\n- 5\n',3,NULL,NULL,'2014-04-10 11:34:08','2014-04-10 11:34:08'),(8,7,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- 5\n- 2\n',4,2,NULL,'2014-04-10 11:34:18','2014-04-10 11:34:18'),(9,8,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',2,NULL,NULL,'2014-04-10 11:35:52','2014-04-10 11:35:52'),(10,8,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- 12\n- \nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-10 11:36:20','2014-04-10 11:36:20'),(11,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',2,2,NULL,'2014-04-11 13:18:28','2014-04-11 13:18:28'),(12,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:18:51','2014-04-11 13:18:51'),(13,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunch\n- Lunchs\n',2,NULL,NULL,'2014-04-11 13:33:11','2014-04-11 13:33:11'),(14,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunchs\n- Lunch\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:37:30','2014-04-11 13:37:30'),(15,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast\n- Breake Fast 1\n',2,NULL,NULL,'2014-04-11 13:42:12','2014-04-11 13:42:12'),(16,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast 1\n- Breake Fast\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:42:13','2014-04-11 13:42:13'),(21,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-11 20:27:33','2014-04-11 20:27:33'),(22,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',5,1,NULL,'2014-04-11 20:28:30','2014-04-11 20:28:30'),(23,8,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-11 20:29:57','2014-04-11 20:29:57'),(24,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',6,4,NULL,'2014-04-11 20:30:06','2014-04-11 20:30:06'),(25,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',7,1,NULL,'2014-04-11 20:32:21','2014-04-11 20:32:21'),(26,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',8,6,NULL,'2014-04-11 20:34:14','2014-04-11 20:34:14'),(27,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-11 20:34:35','2014-04-11 20:34:35'),(28,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunch\n- Lunchs\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 05:39:31','2014-04-14 05:39:31'),(29,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-04-14 05:44:57','2014-04-14 05:44:57'),(35,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:13:50','2014-04-14 07:13:50'),(36,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:13:51','2014-04-14 07:13:51'),(37,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 06:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:04','2014-04-14 07:16:04'),(38,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 06:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:04','2014-04-14 07:16:04'),(39,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:13','2014-04-14 07:16:13'),(40,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:13','2014-04-14 07:16:13'),(41,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:37','2014-04-14 07:16:37'),(42,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:37','2014-04-14 07:16:37'),(43,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:26:31','2014-04-14 07:26:31'),(44,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:26:51','2014-04-14 07:26:51'),(45,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:27:06','2014-04-14 07:27:06'),(46,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:27:06','2014-04-14 07:27:06'),(49,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:32:33','2014-04-14 07:32:33'),(50,187,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:33','2014-04-14 09:31:33'),(51,187,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 17:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:34','2014-04-14 09:31:34'),(52,183,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\n',5,NULL,NULL,'2014-04-14 09:31:42','2014-04-14 09:31:42'),(53,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 10:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 09:31:42','2014-04-14 09:31:42'),(54,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:48','2014-04-14 09:31:48'),(55,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 10:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:48','2014-04-14 09:31:48'),(56,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:55','2014-04-14 09:31:55'),(57,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 03:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:55','2014-04-14 09:31:55'),(58,178,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 02:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:02','2014-04-14 09:32:02'),(59,178,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 02:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:02','2014-04-14 09:32:02'),(60,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 14:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:09','2014-04-14 09:32:09'),(61,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 14:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:10','2014-04-14 09:32:10'),(62,176,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:19','2014-04-14 09:32:19'),(63,176,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:19','2014-04-14 09:32:19'),(64,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:26','2014-04-14 09:32:26'),(65,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 17:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:26','2014-04-14 09:32:26'),(66,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner\n- Dinner food\n',2,NULL,NULL,'2014-04-14 10:03:20','2014-04-14 10:03:20'),(67,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner food\n- Dinner\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 10:03:20','2014-04-14 10:03:20'),(68,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunchs\n- Lunch\n',5,NULL,NULL,'2014-04-14 10:03:32','2014-04-14 10:03:32'),(69,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 10:03:32','2014-04-14 10:03:32'),(70,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 10:11:16','2014-04-14 10:11:16'),(71,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 06:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 10:11:24','2014-04-14 10:11:24'),(72,183,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,1,NULL,'2014-04-14 10:11:32','2014-04-14 10:11:32'),(73,187,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 10:11:37','2014-04-14 10:11:37'),(74,178,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 10:11:42','2014-04-14 10:11:42'),(77,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast\n- Breake Fast 1\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 11:13:50','2014-04-14 11:13:50'),(78,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 11:50:43','2014-04-14 11:50:43'),(79,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 12:09:56','2014-04-14 12:09:56'),(80,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 12:11:53','2014-04-14 12:11:53'),(81,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',4,1,NULL,'2014-04-14 12:12:49','2014-04-14 12:12:49'),(82,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',5,3,NULL,'2014-04-14 12:13:23','2014-04-14 12:13:23'),(83,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 12:13:31','2014-04-14 12:13:31'),(84,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 12:14:02','2014-04-14 12:14:02'),(85,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-14 12:18:14','2014-04-14 12:18:14'),(86,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',4,1,NULL,'2014-04-14 12:18:43','2014-04-14 12:18:43'),(87,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Students\n- hello\n',8,NULL,NULL,'2014-04-14 12:21:11','2014-04-14 12:21:11'),(88,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',5,3,NULL,'2014-04-14 12:26:33','2014-04-14 12:26:33'),(90,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- hello\n- For Students\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-14 12:27:04','2014-04-14 12:27:04'),(91,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 12:31:11','2014-04-14 12:31:11'),(92,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Students\n- hello\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-04-14 12:32:44','2014-04-14 12:32:44'),(93,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-14 12:32:49','2014-04-14 12:32:49'),(94,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty\n- For Faculty 1\n',8,NULL,NULL,'2014-04-14 12:33:29','2014-04-14 12:33:29'),(95,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty 1\n- For Faculty\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-14 12:33:30','2014-04-14 12:33:30'),(96,2,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 12:54:01','2014-04-14 12:54:01'),(97,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nexpiration_date:\n- 2014-03-08 00:00:00.000000000 Z\n- 2014-03-15 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 13:02:41','2014-04-14 13:02:41'),(98,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nexpiration_date:\n- 2014-03-15 00:00:00.000000000 Z\n- 2014-03-08 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 13:02:41','2014-04-14 13:02:41'),(99,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- 1920187_644699312275376_1137463388_n.jpg\ncoupon_image_content_type:\n- image/png\n- !binary |-\n  aW1hZ2UvanBlZw==\ncoupon_image_file_size:\n- 30171\n- 134899\n',2,NULL,NULL,'2014-04-14 13:03:19','2014-04-14 13:03:19'),(100,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- 1920187_644699312275376_1137463388_n.jpg\n- campus-bite.png\ncoupon_image_content_type:\n- !binary |-\n  aW1hZ2UvanBlZw==\n- image/png\ncoupon_image_file_size:\n- 134899\n- 30171\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 13:03:19','2014-04-14 13:03:19'),(101,2,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 13:03:34','2014-04-14 13:03:34'),(102,1,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 13:03:38','2014-04-14 13:03:38'),(103,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\n',5,NULL,NULL,'2014-04-14 13:04:16','2014-04-14 13:04:16'),(104,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- campus-bite.png\ncoupon_image_file_size:\n- 20868\n- 30171\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 13:04:16','2014-04-14 13:04:16'),(105,5,'RestaurantCoupon',NULL,NULL,NULL,'---\nrestaurant_id:\n- 6\n- 14\n',2,NULL,NULL,'2014-04-14 13:19:46','2014-04-14 13:19:46'),(106,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 15:02:05','2014-04-14 15:02:05'),(107,176,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 15:02:14','2014-04-14 15:02:14'),(108,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 14:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 15:02:19','2014-04-14 15:02:19'),(109,189,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-15 05:53:47','2014-04-15 05:53:47'),(110,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-15 05:53:57','2014-04-15 05:53:57'),(111,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- campus-bite.png\ncoupon_image_file_size:\n- 20868\n- 30171\nstatus:\n- completed\n- pending\n',8,6,NULL,'2014-04-15 05:53:57','2014-04-15 05:53:57'),(112,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\nstatus:\n- pending\n- completed\n',9,7,NULL,'2014-04-15 05:54:07','2014-04-15 05:54:07'),(113,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner\n- Dinner food\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-15 05:54:17','2014-04-15 05:54:17'),(117,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-05-08 05:17:21','2014-05-08 05:17:21'),(118,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-05-08 05:17:24','2014-05-08 05:17:24'),(119,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty\n- For Faculty 1\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-05-08 05:17:27','2014-05-08 05:17:27'),(120,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-05-08 05:17:30','2014-05-08 05:17:30'),(121,184,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\n',2,NULL,NULL,'2014-05-08 05:25:26','2014-05-08 05:25:26'),(122,184,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-05-08 05:25:26','2014-05-08 05:25:26'),(123,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty 1\n- For Faculty\n',11,NULL,NULL,'2014-05-08 05:28:35','2014-05-08 05:28:35'),(124,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',12,1,NULL,'2014-05-08 05:28:36','2014-05-08 05:28:36'),(125,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- 1956949_752926184752158_5515196612279201404_o.jpg\ncoupon_image_content_type:\n- image/png\n- !binary |-\n  aW1hZ2UvanBlZw==\ncoupon_image_file_size:\n- 20868\n- 103900\n',10,NULL,NULL,'2014-05-08 05:28:59','2014-05-08 05:28:59'),(126,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- 1956949_752926184752158_5515196612279201404_o.jpg\n- campus-bite.png\ncoupon_image_content_type:\n- !binary |-\n  aW1hZ2UvanBlZw==\n- image/png\ncoupon_image_file_size:\n- 103900\n- 30171\nstatus:\n- completed\n- pending\n',11,1,NULL,'2014-05-08 05:28:59','2014-05-08 05:28:59'),(127,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 02:00:00.000000000 Z\n',5,NULL,NULL,'2014-05-08 05:31:27','2014-05-08 05:31:27'),(128,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 02:00:00.000000000 Z\n- 2000-01-01 03:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-05-08 05:31:27','2014-05-08 05:31:27'),(132,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',8,1,NULL,'2014-05-08 09:24:30','2014-05-08 09:24:30'),(133,14,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',11,NULL,NULL,'2014-05-28 11:11:49','2014-05-28 11:11:49'),(134,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 10:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',5,NULL,NULL,'2014-05-28 11:11:49','2014-05-28 11:11:49'),(136,7,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',5,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(137,22,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(138,23,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(139,24,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(140,25,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(141,26,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(142,27,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(143,28,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(144,29,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(145,30,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(146,31,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(147,32,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(148,33,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(149,34,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(150,35,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(151,36,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(152,37,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 04:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(153,38,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:59:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(154,39,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 18:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(155,40,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(156,41,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(157,42,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 20:46:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-13 09:25:45','2014-06-13 09:25:45'),(158,21,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(159,316,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(160,317,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(161,318,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(162,319,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(163,320,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(164,321,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(165,322,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(166,323,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:16','2014-06-19 05:47:16'),(167,324,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(168,325,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(169,326,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(170,327,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(171,328,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(172,329,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 15:10:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(173,330,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(174,331,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(175,332,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(176,333,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 07:55:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(177,334,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(178,335,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(179,336,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 08:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-06-19 05:47:17','2014-06-19 05:47:17'),(180,333,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 07:55:00.000000000 Z\n- 2000-01-01 14:00:00.000000000 Z\n',3,NULL,NULL,'2014-06-19 10:16:26','2014-06-19 10:16:26'),(181,7,'RestaurantCoupon',NULL,NULL,NULL,'---\nexpiration_date:\n- 2014-11-18 10:08:00.000000000 Z\n- 2014-06-20 00:00:00.000000000 Z\ncode:\n- \n- 1two3\ncharges:\n- \n- 10.0\nmax_use:\n- \n- 10\n',2,NULL,NULL,'2014-06-19 10:51:36','2014-06-19 10:51:36'),(182,333,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',4,NULL,NULL,'2014-06-19 10:51:36','2014-06-19 10:51:36'),(183,8,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 26\ndelta:\n- false\n- true\n',5,NULL,NULL,'2014-06-25 18:56:05','2014-06-25 18:56:05'),(184,21,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',3,NULL,NULL,'2014-07-07 08:29:54','2014-07-07 08:29:54'),(185,330,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:55:00.000000000 Z\n',3,NULL,NULL,'2014-07-07 08:29:54','2014-07-07 08:29:54'),(186,14,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 4\n- 2\ndelta:\n- false\n- true\n',12,NULL,NULL,'2014-07-07 10:49:49','2014-07-07 10:49:49'),(187,21,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 0\n- 2\ndelta:\n- false\n- true\n',4,NULL,NULL,'2014-07-07 10:52:14','2014-07-07 10:52:14'),(188,21,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 2\n- 5\n',5,NULL,NULL,'2014-07-07 11:14:44','2014-07-07 11:14:44'),(189,21,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 5\n- 3\n',6,NULL,NULL,'2014-07-07 11:19:13','2014-07-07 11:19:13'),(190,21,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 3\n- 5\n',7,NULL,NULL,'2014-07-07 11:21:11','2014-07-07 11:21:11'),(191,21,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',8,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(192,330,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 02:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:55:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',4,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(193,331,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',3,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(194,332,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',3,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(195,333,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(196,334,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',3,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(197,335,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',3,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(198,336,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 01:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\n',3,NULL,NULL,'2014-07-08 06:13:20','2014-07-08 06:13:20'),(199,21,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',9,NULL,NULL,'2014-07-23 09:18:30','2014-07-23 09:18:30'),(200,8,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\nranking:\n- 0\n- 3\n',6,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(201,43,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(202,44,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(203,45,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(204,46,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(205,47,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(206,48,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(207,49,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(208,50,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(209,51,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(210,52,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(211,53,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(212,54,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(213,55,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(214,56,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(215,57,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(216,58,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(217,59,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(218,60,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 02:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(219,61,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 01:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(220,62,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(221,63,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 14:48:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:07','2014-07-24 06:37:07'),(222,14,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\nranking:\n- 0\n- 1\n',13,NULL,NULL,'2014-07-24 06:37:39','2014-07-24 06:37:39'),(223,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncode:\n- \n- \'\'\n',12,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(224,2,'RestaurantCoupon',NULL,NULL,NULL,'---\ncode:\n- \n- \'\'\n',4,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(225,3,'RestaurantCoupon',NULL,NULL,NULL,'---\ncode:\n- \n- \'\'\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(226,5,'RestaurantCoupon',NULL,NULL,NULL,'---\ncode:\n- \n- \'\'\n',3,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(227,169,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(228,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 06:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(229,171,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(230,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 17:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(231,173,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(232,174,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(233,175,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(234,176,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(235,177,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(236,178,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(237,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(238,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 14:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(239,181,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(240,183,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',8,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(241,184,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 01:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',4,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(242,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',6,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(243,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(244,187,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',5,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(245,188,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(246,189,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',7,NULL,NULL,'2014-07-24 06:37:40','2014-07-24 06:37:40'),(247,14,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',14,NULL,NULL,'2014-07-24 10:57:34','2014-07-24 10:57:34'),(248,7,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\nranking:\n- 0\n- 15\nonline_discount:\n- \n- 5\n',6,NULL,NULL,'2014-07-24 11:18:05','2014-07-24 11:18:05'),(249,21,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\nonline_discount:\n- \n- 10\n',10,NULL,NULL,'2014-07-24 11:24:59','2014-07-24 11:24:59');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-20 22:43:38
