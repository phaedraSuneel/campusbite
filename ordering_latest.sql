-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ordering_development
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_subcategories`
--

LOCK TABLES `addon_subcategories` WRITE;
/*!40000 ALTER TABLE `addon_subcategories` DISABLE KEYS */;
INSERT INTO `addon_subcategories` VALUES (1,'Test',1,'2014-04-11 07:42:17','2014-04-11 07:42:17'),(2,'Test',1,'2014-04-11 07:42:17','2014-04-11 07:42:17'),(3,'Test',1,'2014-04-11 07:42:17','2014-04-11 07:42:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addons`
--

LOCK TABLES `addons` WRITE;
/*!40000 ALTER TABLE `addons` DISABLE KEYS */;
INSERT INTO `addons` VALUES (1,'Hello',5,6,39,'2014-04-11 07:42:17','2014-04-11 07:42:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (13,'On Campus','SCHOOL',NULL,2,8,1231,'Karachu','Sindh',54111,1,2147483647,'2014-03-29 22:44:20','2014-04-01 08:10:37'),(14,'Off Campus','Office',NULL,2,7,12321,'Lahore','Punjab',54000,1,NULL,'2014-03-29 22:49:19','2014-03-31 09:53:36'),(15,'On Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,7,12321,'','',NULL,8,2147483647,'2014-04-01 18:33:10','2014-04-01 18:33:10'),(16,'Off Campus','My Room',NULL,2,NULL,12321,'Lahore','Punjab',54000,8,2147483647,'2014-04-01 20:35:53','2014-04-01 20:35:53'),(17,'On Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,7,12321,'','',NULL,8,2147483647,'2014-04-01 20:51:31','2014-04-01 20:51:31'),(18,'Off Campus','CIIT Lahore Rawind Road Lahore Pakistan',NULL,2,NULL,12321,'','',NULL,8,2147483647,'2014-04-01 21:45:27','2014-04-01 21:45:27'),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL,'2014-04-03 07:57:29','2014-04-03 07:57:29'),(20,'On Campus','School Address',NULL,2,7,123,'','',NULL,14,2147483647,'2014-04-08 12:17:34','2014-04-08 12:17:34'),(21,'On Campus','School Address',NULL,2,8,123,'','',NULL,13,2147483647,'2014-04-09 07:12:08','2014-04-09 07:12:08'),(22,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:41:58','2014-04-18 06:41:58'),(23,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:54:17','2014-04-18 06:54:17'),(24,'On Campus','SCHOOL',NULL,2,9,1231,'','',NULL,5,2147483647,'2014-04-18 06:55:04','2014-04-18 06:55:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_infos`
--

LOCK TABLES `bank_infos` WRITE;
/*!40000 ALTER TABLE `bank_infos` DISABLE KEYS */;
INSERT INTO `bank_infos` VALUES (6,'Habib Bank','455F45','155','CSAD14',6,'2014-03-06 12:37:41','2014-03-06 12:37:41'),(7,'Habib Bank','455F45','155','CSAD14',7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(8,'Habib Bank','455F45','155','CSAD14',8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(10,'Habib Bank','455F45','155','CSAD14',10,'2014-03-11 07:08:25','2014-03-11 07:08:25'),(12,'Habib Bank','455F45','155','CSAD14',12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(14,'Allied Bank','123BCNB','155','CSAD14',14,'2014-04-08 11:10:02','2014-04-10 07:01:59'),(15,'','','','',15,'2014-04-10 14:18:27','2014-04-10 14:18:27'),(16,'','','','',16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(17,'','','','',17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(18,'','','','',18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
/*!40000 ALTER TABLE `bank_infos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (7,'test',NULL,2,'test','test',1312321,'2014-03-29 19:37:26','2014-03-29 19:37:26'),(8,'test1',NULL,2,'test1','test1',124544,'2014-03-29 19:47:20','2014-03-29 19:47:20'),(9,'Business',NULL,2,'Lahore','Punjab',54000,'2014-04-10 14:32:32','2014-04-10 14:32:32'),(10,'Computer Science',NULL,2,'USA','Francisco',54000,'2014-04-10 14:33:48','2014-04-10 14:33:48');
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (5,'2014-07-01 00:00:00',8,NULL,'gqswr2','424242',87369392,'Visa','2014-04-01 19:31:59','2014-04-01 19:31:59'),(6,'2014-10-01 00:00:00',8,NULL,'5y5h5g','555555',7,'MasterCard','2014-04-01 19:32:24','2014-04-01 19:32:24'),(7,'2014-08-01 00:00:00',8,NULL,'gr8yg2','601111',0,'Discover','2014-04-01 21:23:31','2014-04-01 21:23:31'),(8,'2014-08-01 00:00:00',8,NULL,'36598w','601111',0,'Discover','2014-04-01 21:24:35','2014-04-01 21:24:35'),(9,'2016-10-01 00:00:00',8,NULL,'h2nm8b','356600******0505',0,'JCB','2014-04-02 07:07:51','2014-04-02 07:07:51'),(14,'2014-12-01 00:00:00',14,NULL,'9bpps6','371449******8431',2,'American Express','2014-04-08 12:18:13','2014-04-08 12:18:13'),(15,'2014-11-01 00:00:00',1,NULL,'2xhkfg','356600******0505',0,'JCB','2014-04-09 06:42:36','2014-04-09 06:42:36'),(16,'2018-11-01 00:00:00',1,NULL,'kmstxr','371449******8431',2,'American Express','2014-04-09 06:46:41','2014-04-09 06:46:41'),(17,'2014-12-01 00:00:00',1,NULL,'96j5fg','601111******1117',0,'Discover','2014-04-09 06:58:07','2014-04-09 06:58:07'),(18,'2014-12-01 00:00:00',1,NULL,'fxky2m','601111******1117',0,'Discover','2014-04-09 06:59:59','2014-04-09 06:59:59'),(19,'2018-12-01 00:00:00',13,NULL,'dq2p9g','601111******1117',0,'Discover','2014-04-09 07:12:14','2014-04-09 07:12:14'),(20,'2014-06-01 00:00:00',14,NULL,'j8x8xr','424242******4242',87369392,'Visa','2014-04-09 11:39:24','2014-04-09 11:39:24'),(21,'2014-10-01 00:00:00',5,NULL,'drfhyb','601111******1117',0,'Discover','2014-04-18 06:20:38','2014-04-18 06:20:38');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_menu_items`
--

LOCK TABLES `cart_menu_items` WRITE;
/*!40000 ALTER TABLE `cart_menu_items` DISABLE KEYS */;
INSERT INTO `cart_menu_items` VALUES (157,121,67,3,'2014-04-09 06:39:40','2014-04-09 06:39:40',60,'',14),(158,121,67,4,'2014-04-09 06:39:46','2014-04-09 06:39:46',60,'',14),(160,123,66,3,'2014-04-09 10:06:03','2014-04-09 10:06:03',58,NULL,6),(161,124,65,9,'2014-04-14 15:16:32','2014-04-14 15:16:44',56,'',7),(163,126,66,3,'2014-04-18 06:17:52','2014-04-18 06:17:52',59,NULL,6),(178,140,67,1,'2014-04-21 06:22:04','2014-04-21 06:22:04',60,NULL,14),(181,143,66,2,'2014-04-30 12:38:38','2014-04-30 12:38:38',59,NULL,6),(182,144,65,3,'2014-05-05 05:42:16','2014-05-05 05:42:16',56,'',7),(183,123,69,3,'2014-05-05 10:18:47','2014-05-05 10:18:47',63,NULL,6);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (121,NULL,1,'2014-04-09 06:39:40','2014-04-09 06:40:18',14,'delivery'),(123,NULL,13,'2014-04-09 10:06:03','2014-04-09 10:06:03',6,'delivery'),(124,NULL,1,'2014-04-14 15:16:32','2014-04-14 15:16:32',7,'delivery'),(126,NULL,5,'2014-04-18 06:17:52','2014-04-18 06:17:52',6,'delivery'),(140,NULL,14,'2014-04-21 06:22:04','2014-04-21 06:22:04',14,'delivery'),(143,NULL,1,'2014-04-30 12:38:38','2014-04-30 12:38:38',6,'delivery'),(144,NULL,13,'2014-05-05 05:42:16','2014-05-05 05:42:16',7,'delivery');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_infos`
--

LOCK TABLES `contact_infos` WRITE;
/*!40000 ALTER TABLE `contact_infos` DISABLE KEYS */;
INSERT INTO `contact_infos` VALUES (6,'Foodhouse restaurant','+923353455244','http://www.royalfree.nhs.uk/','1722 Sacramento St. San Francisco, CA 94109','Francisco','USA',54000,'John Garbarg',NULL,'john@royalfree.com',6,'2014-03-06 12:37:41','2014-05-01 06:43:47','03-365x320.jpg','image/jpeg',35422),(7,'Come and Eat Food','923353455244','http://www.royalfree.nhs.uk/','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',7,'2014-03-06 12:51:17','2014-03-06 12:51:17','02-539x205.jpg','image/jpeg',26676),(8,'Latif Restaurant','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',8,'2014-03-06 14:49:21','2014-03-06 14:49:21',NULL,NULL,NULL),(10,'Karach Corner','923353455244','http://www.karachcorner.com','1722 Sacramento St. San Francisco, CA 94109','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',10,'2014-03-11 07:08:25','2014-03-11 07:08:25',NULL,NULL,NULL),(12,'Come and Eat Food','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',12,'2014-04-08 10:55:10','2014-04-08 10:55:10',NULL,NULL,NULL),(14,'Karach Corner  Restaurant','923353455244','http://www.karachcorner.com','CIIT Lahore Rawind Road Lahore Pakistan','','',54000,'Suneel Kumar',NULL,'sunny.ciitlahore@gmail.com',14,'2014-04-08 11:10:02','2014-04-14 09:18:41',NULL,NULL,NULL),(15,'Karach Corner','','','','','',NULL,'',NULL,'',15,'2014-04-10 14:18:27','2014-04-10 14:18:41',NULL,NULL,NULL),(16,'Lahore Caffee','03332512849','http://www.royalfree.nhs.uk/','CIIT Lahore Rawind Road Lahore Pakistan','Punjab','Lahore',54000,'John Garbarg',NULL,'sunny.ciitlahore@gmail.com',16,'2014-04-30 13:27:59','2014-04-30 14:08:16',NULL,NULL,NULL),(17,'testing','923353455244','http://www.karachcorner.com','testing','Punjab','Lahore',54000,'test',NULL,'sunny.ciitlahore@gmail.com',17,'2014-04-30 14:10:17','2014-04-30 14:10:17',NULL,NULL,NULL),(18,'test test test','','','','','',NULL,'',NULL,'',18,'2014-04-30 14:20:05','2014-04-30 14:20:05',NULL,NULL,NULL);
/*!40000 ALTER TABLE `contact_infos` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (1,6,'2014-03-06 12:37:41','2014-03-06 12:37:41'),(2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:26','2014-03-11 07:08:26'),(7,12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(10,15,'2014-04-10 14:18:27','2014-04-10 14:18:27'),(11,16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(12,17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(13,18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_infos`
--

LOCK TABLES `delivery_infos` WRITE;
/*!40000 ALTER TABLE `delivery_infos` DISABLE KEYS */;
INSERT INTO `delivery_infos` VALUES (6,1,0,15,200,6,'2014-03-06 12:37:41','2014-03-06 12:37:41'),(7,1,0,1,200,7,'2014-03-06 12:51:17','2014-03-11 14:03:08'),(8,1,12,15,200,8,'2014-03-06 14:49:21','2014-03-12 12:06:36'),(10,1,1,15,200,10,'2014-03-11 07:08:25','2014-03-12 11:40:56'),(12,1,20,0,200,12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(14,1,30,0,200,14,'2014-04-08 11:10:02','2014-04-18 07:58:13'),(15,1,NULL,NULL,NULL,15,'2014-04-10 14:18:27','2014-04-10 14:18:27'),(16,1,15,15,200,16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(17,1,NULL,NULL,NULL,17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(18,1,NULL,NULL,NULL,18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
/*!40000 ALTER TABLE `delivery_infos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,2,7,'2014-03-11 09:57:40','2014-03-11 09:57:40'),(2,1,6,'2014-03-30 11:45:50','2014-03-30 11:45:50'),(3,1,7,'2014-03-30 11:46:01','2014-03-30 11:46:01'),(4,1,10,'2014-03-30 11:59:31','2014-03-30 11:59:31'),(5,8,7,'2014-04-01 20:36:12','2014-04-01 20:36:12'),(7,13,7,'2014-04-09 07:08:56','2014-04-09 07:08:56'),(8,13,6,'2014-04-09 11:54:08','2014-04-09 11:54:08');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_categories`
--

LOCK TABLES `menu_categories` WRITE;
/*!40000 ALTER TABLE `menu_categories` DISABLE KEYS */;
INSERT INTO `menu_categories` VALUES (1,'Daily Special',2,'2014-03-03 11:26:09','2014-03-03 11:26:09','completed'),(2,'Luch Special',2,'2014-03-03 11:26:13','2014-03-03 11:26:13','completed'),(3,'Dinner Special',2,'2014-03-03 11:26:16','2014-03-03 11:26:16','completed'),(4,'Luch Special',3,'2014-03-03 13:54:34','2014-03-03 13:54:34','completed'),(5,'Dinner Special',3,'2014-03-03 13:54:38','2014-03-03 13:54:38','completed'),(6,'Dinner Special',3,'2014-03-03 13:54:42','2014-03-03 13:54:42','completed'),(7,'test',4,'2014-03-03 13:59:03','2014-03-03 13:59:03','completed'),(8,'lunch',4,'2014-03-03 14:09:32','2014-03-03 14:09:32','completed'),(9,'Daily Special',5,'2014-03-03 19:31:28','2014-03-03 19:31:28','completed'),(10,'Luch Special',5,'2014-03-03 19:31:34','2014-03-03 19:31:34','completed'),(11,'Dinner Special',5,'2014-03-03 19:31:38','2014-03-03 19:31:38','completed'),(12,'Daily Special',6,'2014-03-05 06:34:41','2014-03-05 06:34:41','completed'),(13,'Luch Special',6,'2014-03-05 06:34:44','2014-03-05 06:34:44','completed'),(14,'Dinner Special',6,'2014-03-05 06:34:49','2014-03-05 06:34:57','completed'),(15,'Daily Special',7,'2014-03-05 08:57:01','2014-03-05 08:57:01','completed'),(16,'Daily Special',8,'2014-03-05 11:11:52','2014-03-05 11:11:52','completed'),(17,'Luch Special',8,'2014-03-05 11:11:56','2014-03-05 11:11:56','completed'),(18,'Daily Special',11,'2014-03-06 05:54:37','2014-03-06 05:54:37','completed'),(19,'Luch Special',11,'2014-03-06 05:56:00','2014-03-06 05:56:00','completed'),(20,'Daily Special',10,'2014-03-06 11:15:33','2014-03-06 11:15:33','completed'),(21,'Dinner Special',10,'2014-03-06 11:15:40','2014-03-06 11:15:40','completed'),(22,'Daily Special',13,'2014-03-06 11:18:42','2014-03-06 11:18:42','completed'),(23,'lunch',13,'2014-03-06 11:19:21','2014-03-06 11:19:21','completed'),(24,'Luch Special',14,'2014-03-06 12:42:51','2014-03-06 12:42:51','completed'),(25,'Daily Special',14,'2014-03-06 12:42:55','2014-03-06 12:42:55','completed'),(26,'Dinner Special',14,'2014-03-06 12:42:59','2014-03-06 12:43:05','completed'),(27,'Daily Special',15,'2014-03-06 12:51:23','2014-03-06 12:51:23','completed'),(28,'Luch Special',15,'2014-03-06 12:51:28','2014-03-06 12:51:28','completed'),(29,'Dinner Special',15,'2014-03-06 12:51:33','2014-03-06 12:51:33','completed'),(30,'Daily Special',21,'2014-03-11 09:54:17','2014-03-11 09:54:17','completed'),(31,'Luch Special',21,'2014-03-11 09:54:22','2014-03-11 09:54:22','completed'),(32,'Daily Special',32,'2014-03-11 14:53:04','2014-03-11 14:53:04','completed'),(33,'Luch Special',33,'2014-03-12 06:47:26','2014-03-12 06:47:26','completed'),(34,'Dinner Special',33,'2014-03-12 06:47:31','2014-03-12 06:47:31','completed'),(35,'Lunch',38,'2014-03-27 05:49:11','2014-03-27 05:49:11','completed'),(36,'Luch Special',28,'2014-03-28 14:35:23','2014-03-28 14:35:23','completed'),(37,'Daily Special',39,'2014-03-28 14:36:52','2014-03-28 14:36:52','completed'),(38,'Daily Special',40,'2014-03-31 06:37:51','2014-03-31 06:37:51','completed'),(39,'Daily Special',18,'2014-03-31 12:49:08','2014-03-31 12:49:08','completed'),(40,'Lunch',44,'2014-04-08 11:46:30','2014-05-08 09:24:29','pending'),(41,'test',18,'2014-04-11 07:07:35','2014-04-11 07:07:35','completed'),(42,'test',18,'2014-04-11 07:08:50','2014-04-11 07:08:50','completed'),(43,'Dinner food',44,'2014-04-11 12:44:32','2014-04-15 05:54:17','completed'),(44,'Breake Fast 1',44,'2014-04-11 12:54:32','2014-04-14 11:13:50','completed');
/*!40000 ALTER TABLE `menu_categories` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_orders`
--

LOCK TABLES `menu_item_orders` WRITE;
/*!40000 ALTER TABLE `menu_item_orders` DISABLE KEYS */;
INSERT INTO `menu_item_orders` VALUES (1,18,1,'2014-03-05 12:24:27','2014-03-05 12:24:27',2,NULL,NULL,NULL),(2,18,2,'2014-03-11 09:56:51','2014-03-11 09:56:51',2,NULL,NULL,NULL),(3,18,2,'2014-03-11 09:56:51','2014-03-11 09:56:51',6,NULL,NULL,NULL),(4,58,3,'2014-03-12 05:54:18','2014-03-12 05:54:18',NULL,NULL,NULL,NULL),(5,54,4,'2014-03-12 06:49:46','2014-03-12 06:49:46',3,NULL,NULL,NULL),(6,59,5,'2014-03-27 05:46:41','2014-03-27 05:46:41',5,NULL,NULL,NULL),(7,59,5,'2014-03-27 05:46:41','2014-03-27 05:46:41',54,NULL,NULL,NULL),(8,62,6,'2014-03-27 05:50:28','2014-03-27 05:50:28',NULL,NULL,NULL,NULL),(9,62,7,'2014-03-27 05:52:51','2014-03-27 05:52:51',7,NULL,NULL,NULL),(10,60,8,'2014-03-27 05:54:27','2014-03-27 05:54:27',NULL,NULL,NULL,NULL),(11,60,9,'2014-03-27 06:23:28','2014-03-27 06:23:28',5,NULL,NULL,NULL),(12,60,14,'2014-03-27 07:39:37','2014-03-27 07:39:37',8,NULL,NULL,NULL),(13,61,15,'2014-03-27 07:41:53','2014-03-27 07:41:53',3,NULL,NULL,NULL),(14,60,16,'2014-03-27 07:44:59','2014-03-27 07:44:59',4,NULL,NULL,NULL),(15,60,17,'2014-03-27 07:46:16','2014-03-27 07:46:16',5,NULL,NULL,NULL),(16,60,20,'2014-03-27 07:58:50','2014-03-27 07:58:50',NULL,NULL,NULL,NULL),(17,62,20,'2014-03-27 07:58:51','2014-03-27 07:58:51',NULL,NULL,NULL,NULL),(18,60,21,'2014-03-27 08:10:17','2014-03-27 08:10:17',NULL,NULL,NULL,NULL),(19,61,22,'2014-03-27 08:14:32','2014-03-27 08:14:32',4,NULL,NULL,NULL),(20,60,23,'2014-03-27 08:15:34','2014-03-27 08:15:34',4,NULL,NULL,NULL),(21,60,24,'2014-03-27 08:16:37','2014-03-27 08:16:37',4,NULL,NULL,NULL),(22,60,25,'2014-03-27 08:19:47','2014-03-27 08:19:47',3,NULL,NULL,NULL),(23,60,26,'2014-03-27 08:20:35','2014-03-27 08:20:35',4,NULL,NULL,NULL),(24,61,27,'2014-03-27 08:30:59','2014-03-27 08:30:59',5,NULL,NULL,NULL),(25,61,28,'2014-03-27 10:20:47','2014-03-27 10:20:47',3,NULL,NULL,NULL),(26,60,28,'2014-03-27 10:20:47','2014-03-27 10:20:47',3,NULL,NULL,NULL),(27,60,30,'2014-03-27 10:24:50','2014-03-27 10:24:50',2,51,NULL,NULL),(28,60,31,'2014-03-27 10:37:23','2014-03-27 10:37:23',NULL,51,NULL,NULL),(29,60,32,'2014-03-27 11:04:55','2014-03-27 11:04:55',4,NULL,NULL,NULL),(30,60,33,'2014-03-27 11:05:25','2014-03-27 11:05:25',2,52,NULL,NULL),(31,60,35,'2014-03-27 11:22:33','2014-03-27 11:22:33',2,52,NULL,NULL),(32,60,36,'2014-03-27 11:23:58','2014-03-27 11:23:58',6,52,NULL,NULL),(33,60,37,'2014-03-27 11:26:03','2014-03-27 11:26:03',3,NULL,NULL,NULL),(34,60,38,'2014-03-27 11:26:34','2014-03-27 11:26:34',4,NULL,NULL,NULL),(35,60,39,'2014-03-27 11:27:59','2014-03-27 11:27:59',4,NULL,NULL,NULL),(36,60,40,'2014-03-27 11:29:00','2014-03-27 11:29:00',NULL,52,NULL,NULL),(37,60,41,'2014-03-27 11:44:15','2014-03-27 11:44:15',NULL,52,NULL,NULL),(38,60,42,'2014-03-28 10:02:44','2014-03-28 10:02:44',5,52,NULL,NULL),(39,60,43,'2014-03-28 10:22:42','2014-03-28 10:22:42',3,NULL,NULL,NULL),(40,61,43,'2014-03-28 10:22:42','2014-03-28 10:22:42',3,NULL,NULL,NULL),(41,60,43,'2014-03-28 10:22:42','2014-03-28 10:22:42',8,NULL,NULL,NULL),(42,60,43,'2014-03-28 10:22:42','2014-03-28 10:22:42',3,51,NULL,NULL),(43,60,44,'2014-03-28 10:30:27','2014-03-28 10:30:27',2,51,NULL,NULL),(44,61,44,'2014-03-28 10:30:27','2014-03-28 10:30:27',3,NULL,NULL,NULL),(45,60,44,'2014-03-28 10:30:27','2014-03-28 10:30:27',2,52,NULL,NULL),(46,60,45,'2014-03-28 14:39:11','2014-03-28 14:39:11',0,52,NULL,NULL),(47,60,45,'2014-03-28 14:39:11','2014-03-28 14:39:11',4,NULL,NULL,NULL),(48,64,45,'2014-03-28 14:39:11','2014-03-28 14:39:11',2,NULL,NULL,NULL),(49,60,46,'2014-03-29 09:40:23','2014-03-29 09:40:23',4,52,7,NULL),(50,60,47,'2014-03-29 09:42:23','2014-03-29 09:42:23',2,52,7,NULL),(51,60,48,'2014-03-29 09:50:50','2014-03-29 09:50:50',2,52,7,NULL),(52,65,49,'2014-03-31 06:49:37','2014-03-31 06:49:37',5,56,7,NULL),(53,65,50,'2014-03-31 07:28:52','2014-03-31 07:28:52',2,55,7,''),(54,65,50,'2014-03-31 07:28:52','2014-03-31 07:28:52',2,56,7,''),(55,65,50,'2014-03-31 07:28:52','2014-03-31 07:28:52',2,57,7,'At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.'),(56,65,51,'2014-03-31 07:43:57','2014-03-31 07:43:57',2,56,7,''),(57,65,51,'2014-03-31 07:43:57','2014-03-31 07:43:57',4,55,7,'More Topping and please send quick as soon as possible '),(58,65,52,'2014-03-31 10:27:40','2014-03-31 10:27:40',4,56,7,''),(59,65,53,'2014-03-31 10:29:12','2014-03-31 10:29:12',1,56,7,''),(60,65,54,'2014-03-31 12:32:51','2014-03-31 12:32:51',3,56,7,''),(61,66,55,'2014-03-31 12:57:19','2014-03-31 12:57:19',3,58,6,NULL),(62,66,56,'2014-03-31 17:58:09','2014-03-31 17:58:09',3,59,6,NULL),(63,66,57,'2014-03-31 18:03:29','2014-03-31 18:03:29',4,58,6,NULL),(64,66,58,'2014-03-31 18:05:12','2014-03-31 18:05:12',2,58,6,NULL),(65,66,59,'2014-03-31 19:11:02','2014-03-31 19:11:02',1,59,6,NULL),(66,65,60,'2014-04-01 06:02:55','2014-04-01 06:02:55',1,56,7,''),(67,65,61,'2014-04-01 06:03:47','2014-04-01 06:03:47',3,57,7,''),(68,65,62,'2014-04-01 10:49:25','2014-04-01 10:49:25',3,57,7,''),(69,65,63,'2014-04-01 20:10:19','2014-04-01 20:10:19',5,56,7,''),(70,65,64,'2014-04-01 20:34:24','2014-04-01 20:34:24',3,56,7,''),(71,65,64,'2014-04-01 20:34:24','2014-04-01 20:34:24',3,55,7,''),(72,65,65,'2014-04-01 20:45:11','2014-04-01 20:45:11',4,55,7,''),(73,65,66,'2014-04-01 20:51:35','2014-04-01 20:51:35',3,56,7,'make hot and tasty'),(74,65,67,'2014-04-01 21:24:36','2014-04-01 21:24:36',4,55,7,'asdsad adasdsad assa'),(75,65,68,'2014-04-01 21:45:30','2014-04-01 21:45:30',3,56,7,''),(76,65,69,'2014-04-02 07:57:36','2014-04-02 07:57:36',4,56,7,'ssdsadsa'),(77,65,69,'2014-04-02 07:57:36','2014-04-02 07:57:36',3,56,7,''),(78,65,70,'2014-04-02 13:41:19','2014-04-02 13:41:19',5,57,7,''),(79,65,71,'2014-04-02 13:46:20','2014-04-02 13:46:20',1,56,7,''),(80,65,72,'2014-04-02 13:55:41','2014-04-02 13:55:41',1,57,7,''),(81,65,74,'2014-04-02 14:35:16','2014-04-02 14:35:16',6,56,7,''),(82,65,75,'2014-04-03 06:39:55','2014-04-03 06:39:55',1,57,7,''),(83,65,76,'2014-04-03 08:12:49','2014-04-03 08:12:49',2,56,7,''),(84,66,77,'2014-04-03 12:33:49','2014-04-03 12:33:49',2,59,6,NULL),(85,66,78,'2014-04-04 05:50:00','2014-04-04 05:50:00',5,59,6,NULL),(86,66,79,'2014-04-04 05:55:38','2014-04-04 05:55:38',3,59,6,NULL),(87,66,80,'2014-04-04 07:11:05','2014-04-04 07:11:05',1,59,6,NULL),(88,64,81,'2014-04-04 07:17:45','2014-04-04 07:17:45',1,54,9,''),(89,64,82,'2014-04-04 07:21:39','2014-04-04 07:21:39',3,54,9,''),(90,66,83,'2014-04-04 07:22:05','2014-04-04 07:22:05',1,59,6,NULL),(91,66,83,'2014-04-04 07:22:05','2014-04-04 07:22:05',2,58,6,NULL),(92,66,84,'2014-04-04 08:26:14','2014-04-04 08:26:14',3,59,6,NULL),(93,66,84,'2014-04-04 08:26:14','2014-04-04 08:26:14',3,58,6,NULL),(94,64,85,'2014-04-04 08:26:26','2014-04-04 08:26:26',3,54,9,''),(95,65,86,'2014-04-04 10:13:42','2014-04-04 10:13:42',5,56,7,''),(96,65,87,'2014-04-04 10:19:10','2014-04-04 10:19:10',4,56,7,''),(97,66,88,'2014-04-04 10:24:15','2014-04-04 10:24:15',3,58,6,NULL),(98,65,89,'2014-04-04 11:05:45','2014-04-04 11:05:45',4,56,7,''),(99,65,90,'2014-04-07 07:27:49','2014-04-07 07:27:49',3,56,7,''),(100,65,91,'2014-04-07 07:36:08','2014-04-07 07:36:08',3,56,7,''),(101,65,92,'2014-04-07 07:54:56','2014-04-07 07:54:56',4,56,7,''),(102,65,93,'2014-04-07 07:58:45','2014-04-07 07:58:45',3,56,7,''),(103,65,94,'2014-04-07 08:07:50','2014-04-07 08:07:50',3,56,7,''),(104,65,95,'2014-04-07 08:09:09','2014-04-07 08:09:09',3,56,7,''),(105,65,96,'2014-04-08 09:19:28','2014-04-08 09:19:28',4,56,7,''),(106,66,97,'2014-04-08 10:02:27','2014-04-08 10:02:27',3,59,6,NULL),(107,66,97,'2014-04-08 10:02:28','2014-04-08 10:02:28',4,58,6,NULL),(108,65,98,'2014-04-08 10:04:59','2014-04-08 10:04:59',1,56,7,''),(109,67,99,'2014-04-08 12:00:32','2014-04-08 12:00:32',10,60,14,''),(110,68,101,'2014-04-08 12:13:55','2014-04-08 12:13:55',15,61,14,''),(111,67,102,'2014-04-08 12:18:13','2014-04-08 12:18:13',1,60,14,''),(112,67,103,'2014-04-08 12:50:29','2014-04-08 12:50:29',15,60,14,''),(113,67,104,'2014-04-08 13:07:42','2014-04-08 13:07:42',10,60,14,''),(114,68,104,'2014-04-08 13:07:42','2014-04-08 13:07:42',22,61,14,''),(115,65,105,'2014-04-08 14:37:18','2014-04-08 14:37:18',10,56,7,''),(116,65,106,'2014-04-09 06:28:05','2014-04-09 06:28:05',4,56,7,''),(117,64,108,'2014-04-09 07:20:46','2014-04-09 07:20:46',15,54,9,''),(118,68,109,'2014-04-09 11:40:20','2014-04-09 11:40:20',15,61,14,''),(119,67,110,'2014-04-18 06:57:00','2014-04-18 06:57:00',5,60,14,NULL),(120,67,111,'2014-04-18 06:58:22','2014-04-18 06:58:22',3,60,14,NULL),(121,66,112,'2014-04-18 07:02:49','2014-04-18 07:02:49',3,59,6,NULL),(122,67,119,'2014-04-18 07:19:05','2014-04-18 07:19:05',3,60,14,NULL),(123,66,120,'2014-04-18 07:21:14','2014-04-18 07:21:14',4,59,6,NULL),(124,67,122,'2014-04-18 08:26:11','2014-04-18 08:26:11',3,60,14,NULL),(125,70,123,'2014-04-18 08:29:37','2014-04-18 08:29:37',4,NULL,14,''),(126,72,124,'2014-04-18 08:38:33','2014-04-18 08:38:33',4,NULL,14,NULL),(127,67,125,'2014-04-18 10:06:07','2014-04-18 10:06:07',3,60,14,NULL),(128,70,126,'2014-04-18 10:08:32','2014-04-18 10:08:32',2,NULL,14,''),(129,70,127,'2014-04-18 10:09:07','2014-04-18 10:09:07',2,NULL,14,''),(130,70,128,'2014-04-18 10:10:18','2014-04-18 10:10:18',2,NULL,14,''),(131,70,129,'2014-04-18 10:11:50','2014-04-18 10:11:50',2,NULL,14,''),(132,70,130,'2014-04-18 10:13:48','2014-04-18 10:13:48',2,NULL,14,''),(133,70,131,'2014-04-18 10:14:25','2014-04-18 10:14:25',2,NULL,14,''),(134,70,132,'2014-04-18 10:15:15','2014-04-18 10:15:15',2,NULL,14,''),(135,70,133,'2014-04-18 10:18:32','2014-04-18 10:18:32',2,NULL,14,''),(136,70,134,'2014-04-18 10:20:22','2014-04-18 10:20:22',2,NULL,14,''),(137,70,135,'2014-04-18 10:21:39','2014-04-18 10:21:39',2,NULL,14,''),(138,70,136,'2014-04-18 10:26:08','2014-04-18 10:26:08',2,NULL,14,''),(139,66,137,'2014-04-18 11:03:04','2014-04-18 11:03:04',3,59,6,NULL),(140,69,138,'2014-04-18 11:07:45','2014-04-18 11:07:45',4,63,6,NULL),(141,67,139,'2014-04-18 11:08:44','2014-04-18 11:08:44',3,60,14,NULL),(142,67,140,'2014-04-18 11:33:43','2014-04-18 11:33:43',3,60,14,NULL),(143,67,141,'2014-04-21 06:06:54','2014-04-21 06:06:54',3,60,14,NULL),(144,67,141,'2014-04-21 06:06:54','2014-04-21 06:06:54',6,60,14,NULL),(145,66,142,'2014-04-30 07:10:41','2014-04-30 07:10:41',3,59,6,NULL),(146,66,142,'2014-04-30 07:10:41','2014-04-30 07:10:41',4,59,6,NULL),(147,66,143,'2014-04-30 07:19:16','2014-04-30 07:19:16',4,59,6,NULL),(148,66,143,'2014-04-30 07:19:16','2014-04-30 07:19:16',5,59,6,NULL),(149,66,144,'2014-04-30 07:27:06','2014-04-30 07:27:06',4,59,6,NULL),(150,66,145,'2014-04-30 07:28:24','2014-04-30 07:28:24',4,59,6,NULL),(151,66,146,'2014-04-30 07:49:54','2014-04-30 07:49:54',4,59,6,NULL),(152,66,147,'2014-04-30 07:52:20','2014-04-30 07:52:20',4,59,6,NULL),(153,66,148,'2014-04-30 07:56:52','2014-04-30 07:56:52',4,59,6,NULL),(154,66,149,'2014-04-30 07:58:33','2014-04-30 07:58:33',4,59,6,NULL),(155,66,150,'2014-04-30 08:01:30','2014-04-30 08:01:30',4,59,6,NULL),(156,66,151,'2014-04-30 09:07:37','2014-04-30 09:07:37',4,59,6,NULL),(157,66,152,'2014-04-30 09:19:51','2014-04-30 09:19:51',4,59,6,NULL),(158,66,153,'2014-04-30 11:27:07','2014-04-30 11:27:07',3,59,6,NULL),(159,66,154,'2014-04-30 11:34:21','2014-04-30 11:34:21',3,59,6,NULL),(160,66,155,'2014-04-30 12:29:02','2014-04-30 12:29:02',5,58,6,NULL),(161,66,156,'2014-04-30 12:33:53','2014-04-30 12:33:53',3,59,6,NULL),(162,66,157,'2014-04-30 12:35:04','2014-04-30 12:35:04',3,59,6,NULL),(163,66,158,'2014-05-01 06:47:59','2014-05-01 06:47:59',2,59,6,NULL),(164,66,159,'2014-05-01 06:50:18','2014-05-01 06:50:18',2,59,6,NULL),(165,66,160,'2014-05-01 06:53:33','2014-05-01 06:53:33',2,59,6,NULL),(166,66,161,'2014-05-01 06:55:02','2014-05-01 06:55:02',2,59,6,NULL),(167,66,162,'2014-05-01 06:56:09','2014-05-01 06:56:09',2,59,6,NULL),(168,66,163,'2014-05-01 06:59:33','2014-05-01 06:59:33',2,59,6,NULL),(169,66,164,'2014-05-01 07:03:52','2014-05-01 07:03:52',2,59,6,NULL),(170,66,165,'2014-05-01 07:04:26','2014-05-01 07:04:26',2,59,6,NULL),(171,66,166,'2014-05-01 07:08:16','2014-05-01 07:08:16',2,59,6,NULL),(172,66,167,'2014-05-01 07:11:19','2014-05-01 07:11:19',2,59,6,NULL),(173,65,168,'2014-05-05 05:44:51','2014-05-05 05:44:51',3,56,7,''),(174,65,169,'2014-05-05 06:31:09','2014-05-05 06:31:09',3,56,7,''),(175,65,170,'2014-05-05 06:32:18','2014-05-05 06:32:18',3,56,7,''),(176,66,171,'2014-05-05 10:19:01','2014-05-05 10:19:01',3,58,6,NULL),(177,69,171,'2014-05-05 10:19:02','2014-05-05 10:19:02',3,63,6,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item_properties`
--

LOCK TABLES `menu_item_properties` WRITE;
/*!40000 ALTER TABLE `menu_item_properties` DISABLE KEYS */;
INSERT INTO `menu_item_properties` VALUES (1,'large',150,5,'2014-03-03 13:02:15','2014-03-03 13:02:15'),(2,'large',150,6,'2014-03-03 13:02:24','2014-03-03 13:02:24'),(3,'large',150,7,'2014-03-03 13:02:25','2014-03-03 13:02:25'),(4,'large',150,8,'2014-03-03 13:02:26','2014-03-03 13:02:26'),(5,'large',150,9,'2014-03-03 13:03:22','2014-03-03 13:03:22'),(6,'small',200,10,'2014-03-03 13:19:17','2014-03-03 13:19:17'),(7,'x-small',150,10,'2014-03-03 13:19:17','2014-03-03 13:19:17'),(8,'large',300,10,'2014-03-03 13:19:17','2014-03-03 13:19:17'),(9,'x-large',500,10,'2014-03-03 13:19:17','2014-03-03 13:19:17'),(10,'small',200,11,'2014-03-03 13:55:43','2014-03-03 13:55:43'),(11,'x-small',150,11,'2014-03-03 13:55:43','2014-03-03 13:55:43'),(12,'large',300,11,'2014-03-03 13:55:43','2014-03-03 13:55:43'),(13,'test',122,12,'2014-03-03 13:59:39','2014-03-03 13:59:39'),(14,'test2',132,12,'2014-03-03 13:59:39','2014-03-03 13:59:39'),(15,'small',200,14,'2014-03-03 19:01:28','2014-03-03 19:01:28'),(16,'x-small',150,14,'2014-03-03 19:01:28','2014-03-03 19:01:28'),(17,'small',100,15,'2014-03-03 19:32:36','2014-03-03 19:32:36'),(18,'small',100,16,'2014-03-05 06:52:34','2014-03-05 06:52:34'),(19,'large',200,16,'2014-03-05 06:52:34','2014-03-05 06:52:34'),(21,'small',100,18,'2014-03-05 10:29:10','2014-03-05 10:29:10'),(22,'large',200,18,'2014-03-05 10:29:10','2014-03-05 10:29:10'),(23,'x-large',300,18,'2014-03-05 10:29:10','2014-03-05 10:29:10'),(24,'small',200,19,'2014-03-05 11:12:48','2014-03-05 11:12:48'),(25,'x-small',200,19,'2014-03-05 11:12:48','2014-03-05 11:12:48'),(26,'large',300,19,'2014-03-05 11:12:48','2014-03-05 11:12:48'),(27,'small',200,20,'2014-03-06 05:55:23','2014-03-06 05:55:23'),(28,'large',150,20,'2014-03-06 05:55:23','2014-03-06 05:55:23'),(29,'small',100,21,'2014-03-06 05:55:55','2014-03-06 05:55:55'),(30,'large',200,21,'2014-03-06 05:55:55','2014-03-06 05:55:55'),(31,'small',200,23,'2014-03-06 11:16:10','2014-03-06 11:16:10'),(32,'large',150,23,'2014-03-06 11:16:10','2014-03-06 11:16:10'),(33,'x-large',20,23,'2014-03-06 11:16:10','2014-03-06 11:16:10'),(34,'small',200,24,'2014-03-06 11:16:36','2014-03-06 11:16:36'),(35,'large',132,24,'2014-03-06 11:16:36','2014-03-06 11:16:36'),(36,'test',200,27,'2014-03-06 11:19:49','2014-03-06 11:19:49'),(37,'large',200,27,'2014-03-06 11:19:49','2014-03-06 11:19:49'),(38,'x-large',300,27,'2014-03-06 11:19:49','2014-03-06 11:19:49'),(39,'small',200,28,'2014-03-06 12:44:09','2014-03-06 12:44:09'),(40,'x-small',100,28,'2014-03-06 12:44:09','2014-03-06 12:44:09'),(41,'x-large',500,28,'2014-03-06 12:44:09','2014-03-06 12:44:09'),(42,'medium',250,28,'2014-03-06 12:44:09','2014-03-06 12:44:09'),(43,'large',350,28,'2014-03-06 12:44:09','2014-03-06 12:44:09'),(44,'small',200,39,'2014-03-06 12:52:21','2014-03-06 12:52:21'),(45,'large',400,39,'2014-03-06 12:52:21','2014-03-06 12:52:21'),(46,'x-large',600,39,'2014-03-06 12:52:21','2014-03-06 12:52:21'),(47,'x-small',100,39,'2014-03-06 12:52:21','2014-03-06 12:52:21'),(48,'small',200,54,'2014-03-11 09:54:53','2014-03-11 09:54:53'),(49,'small',200,58,'2014-03-11 14:53:24','2014-03-11 14:53:24'),(50,'small',200,59,'2014-03-12 06:47:52','2014-03-12 06:47:52'),(51,'small',200,60,'2014-03-27 10:17:45','2014-03-27 10:17:45'),(52,'large',150,60,'2014-03-27 10:17:45','2014-03-27 10:17:45'),(53,'small',10,63,'2014-03-28 14:35:58','2014-03-28 14:35:58'),(54,'small',10,64,'2014-03-28 14:37:10','2014-03-28 14:37:10'),(55,'small',20,65,'2014-03-31 06:38:37','2014-03-31 06:38:37'),(56,'large',30,65,'2014-03-31 06:38:37','2014-03-31 06:38:37'),(57,'x-large',50,65,'2014-03-31 06:38:37','2014-03-31 06:38:37'),(58,'small',10,66,'2014-03-31 12:49:42','2014-03-31 12:49:42'),(59,'large',15,66,'2014-03-31 12:49:42','2014-03-31 12:49:42'),(60,'small',200,67,'2014-04-08 11:53:40','2014-04-08 11:53:40'),(61,'small',10,68,'2014-04-08 11:54:14','2014-04-08 11:54:14'),(62,'small',200,69,'2014-04-11 07:13:24','2014-04-11 07:13:24'),(63,'large',150,69,'2014-04-11 07:13:24','2014-04-11 07:13:24');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Spicy Frend Fries',1,100,'Veal with tomatoes','2014-03-03 11:28:15','2014-03-03 11:28:15',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(2,'Pasta with Sauce',2,100,'Veal with tomatoes','2014-03-03 11:28:24','2014-03-03 11:28:24',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(3,'Pasta with Sauce',3,90,'Veal with tomatoes','2014-03-03 11:28:34','2014-03-03 11:28:34',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'completed'),(4,'Wildberry/ hurricone Smoothie',2,100,'Veal with tomatoes','2014-03-03 12:10:08','2014-03-03 12:14:47','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,0,0,0,'1920187_644699312275376_1137463388_n.jpg','image/jpeg',134899,NULL,'completed'),(5,'Pasta with Sauce',3,100,'','2014-03-03 13:02:15','2014-03-03 13:02:15','','other',1,0,0,0,NULL,NULL,NULL,NULL,'completed'),(6,'Pasta with Sauce',3,100,'Veal with tomatoes','2014-03-03 13:02:24','2014-03-03 13:02:24','','other',1,0,1,1,NULL,NULL,NULL,NULL,'completed'),(7,'Pasta with Sauce',3,100,'Veal with tomatoes','2014-03-03 13:02:25','2014-03-03 13:02:25','','other',1,0,1,1,NULL,NULL,NULL,NULL,'completed'),(8,'Pasta with Sauce',3,100,'Veal with tomatoes','2014-03-03 13:02:26','2014-03-03 13:02:26','','other',1,0,1,1,NULL,NULL,NULL,NULL,'completed'),(9,'Pasta with Sauce',3,100,'Veal with tomatoes','2014-03-03 13:03:22','2014-03-03 13:50:34','','other',0,0,0,0,'1920187_644699312275376_1137463388_n.jpg','image/jpeg',134899,NULL,'completed'),(10,'',1,NULL,'','2014-03-03 13:19:17','2014-03-03 13:19:17','','veg',0,0,0,0,NULL,NULL,NULL,NULL,'completed'),(11,'Pasta with Sauce',5,100,'Veal with tomatoes','2014-03-03 13:55:43','2014-03-03 13:55:43','test@domain.tld4.3.2014Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.','non-veg',1,1,1,1,'WWW.YIFY-TORRENTS.COM.jpg','image/jpeg',130677,NULL,'completed'),(12,'test',7,100,'Veal with tomatoes','2014-03-03 13:59:39','2014-03-03 13:59:39','test','other',0,0,0,1,NULL,NULL,NULL,NULL,'completed'),(13,'test',7,100,'Veal with tomatoes','2014-03-03 14:09:52','2014-03-03 14:09:52','','other',0,0,0,0,NULL,NULL,NULL,NULL,'completed'),(14,'',4,10,'Assorted pepper with tomatoes','2014-03-03 19:01:28','2014-03-03 19:01:28','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla st Lorem ipsum dolor sit amet. Ut wisi enim ad minim veniam, ','veg',1,1,1,1,'WWW.YIFY-TORRENTS.COM.jpg','image/jpeg',130677,1,'completed'),(15,'Pasta with Sauce',9,100,'Veal with tomatoes','2014-03-03 19:32:36','2014-03-03 19:32:36','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magnae duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit \r\n','non-veg',1,1,1,1,'1920187_644699312275376_1137463388_n.jpg','image/jpeg',134899,3,'completed'),(16,'Pasta with Sauce',13,100,'Assorted pepper with tomatoes','2014-03-05 06:52:34','2014-03-05 06:52:34','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. Sanctus sea sed takimata ut vero voluptu','non-veg',0,0,1,1,'1920187_644699312275376_1137463388_n.jpg','image/jpeg',134899,2,'completed'),(18,'Pasta with Sauce',15,100,'Veal with tomatoes','2014-03-05 10:29:10','2014-03-05 11:13:56','A check if two date or time ranges A and B overlap needs to cover a lot of cases: A partially ... The code below shows how to implement this in Ruby on Rails. You visited this page on 3/5/14.','non-veg',0,1,0,0,NULL,NULL,NULL,1,'completed'),(19,'Veal Cutlet Sandwich',16,100,'Veal with tomatoes','2014-03-05 11:12:48','2014-03-05 11:12:48','A check if two date or time ranges A and B overlap needs to cover a lot of cases: A partially ... The code below shows how to implement this in Ruby on Rails. You visited this page on 3/5/14.','non-veg',1,0,0,0,NULL,NULL,NULL,2,'completed'),(20,'Spicy Frend Fries',18,200,'Veal with tomatoes','2014-03-06 05:55:23','2014-03-06 05:55:23','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum.','non-veg',0,0,1,0,NULL,NULL,NULL,1,'completed'),(21,'Wildberry/ hurricone Smoothie',18,100,'Assorted pepper with tomatoes','2014-03-06 05:55:55','2014-03-06 05:55:55','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. At vero eos et accusam et justo duo dolores et ea rebum.','other',0,0,0,0,NULL,NULL,NULL,3,'completed'),(22,'Veal Cutlet Sandwich',19,15,'Assorted pepper with tomatoes','2014-03-06 05:56:39','2014-03-06 05:56:39','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.','other',0,0,0,0,NULL,NULL,NULL,2,'completed'),(23,'Pasta with Sauce',20,100,'Veal with tomatoes','2014-03-06 11:16:10','2014-03-06 11:16:10',' At vero eos et accusam et justo duo dolores et ea rebum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','non-veg',1,1,1,0,NULL,NULL,NULL,1,'completed'),(24,'Spicy Frend Fries',20,10,'French Fries Sipcy','2014-03-06 11:16:36','2014-03-06 11:16:36',' At vero eos et accusam et justo duo dolores et ea rebum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','non-veg',0,0,0,0,NULL,NULL,NULL,1,'completed'),(25,'Spicy Frend Fries',22,100,'','2014-03-06 11:18:57','2014-03-06 11:18:57',' At vero eos et accusam et justo duo dolores et ea rebum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','veg',0,0,0,0,NULL,NULL,NULL,2,'completed'),(26,'Pasta with Sauce',22,10,'Assorted pepper with tomatoes','2014-03-06 11:19:08','2014-03-06 11:19:08',' At vero eos et accusam et justo duo dolores et ea rebum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','veg',0,0,0,0,NULL,NULL,NULL,NULL,'completed'),(27,'Spicy Frend Fries',23,100,'Assorted pepper with tomatoes','2014-03-06 11:19:49','2014-03-06 11:19:49',' At vero eos et accusam et justo duo dolores et ea rebum. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','non-veg',0,1,0,0,NULL,NULL,NULL,2,'completed'),(28,'Pasta with Sauce',25,100,'Veal with tomatoes','2014-03-06 12:44:09','2014-03-06 12:44:09','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(29,'Pasta with Sauce',25,100,'Veal with tomatoes','2014-03-06 12:44:12','2014-03-06 12:44:12','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(30,'Pasta with Sauce',25,100,'Veal with tomatoes','2014-03-06 12:44:15','2014-03-06 12:44:15','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(31,'Pasta with Sauce',25,100,'Veal with tomatoes','2014-03-06 12:44:17','2014-03-06 12:44:17','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(32,'Pasta with Sauce',24,100,'Veal with tomatoes','2014-03-06 12:44:24','2014-03-06 12:44:24','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(33,'Pasta with Sauce',24,100,'Veal with tomatoes','2014-03-06 12:44:29','2014-03-06 12:44:29','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(34,'Pasta with Sauce',24,100,'Veal with tomatoes','2014-03-06 12:44:32','2014-03-06 12:44:32','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(35,'Pasta with Sauce',26,100,'Veal with tomatoes','2014-03-06 12:44:41','2014-03-06 12:44:41','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(36,'Pasta with Sauce',26,100,'Veal with tomatoes','2014-03-06 12:44:45','2014-03-06 12:44:45','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(37,'Pasta with Sauce',26,100,'Veal with tomatoes','2014-03-06 12:44:49','2014-03-06 12:44:49','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(38,'Pasta with Sauce',26,100,'Veal with tomatoes','2014-03-06 12:44:52','2014-03-06 12:44:52','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,1,1,'01-539x205.jpg','image/jpeg',32892,1,'completed'),(39,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:21','2014-03-06 12:52:21','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(40,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:25','2014-03-06 12:52:25','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(41,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:27','2014-03-06 12:52:27','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(42,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:29','2014-03-06 12:52:29','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(43,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:31','2014-03-06 12:52:31','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(44,'Wildberry/ hurricone Smoothie',27,100,'Assorted pepper with tomatoes','2014-03-06 12:52:34','2014-03-06 12:52:34','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(45,'Wildberry/ hurricone Smoothie',28,100,'Assorted pepper with tomatoes','2014-03-06 12:52:41','2014-03-06 12:52:41','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(46,'Wildberry/ hurricone Smoothie',28,100,'Assorted pepper with tomatoes','2014-03-06 12:52:45','2014-03-06 12:52:45','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(47,'Wildberry/ hurricone Smoothie',28,100,'Assorted pepper with tomatoes','2014-03-06 12:52:47','2014-03-06 12:52:47','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(48,'Wildberry/ hurricone Smoothie',28,100,'Assorted pepper with tomatoes','2014-03-06 12:52:49','2014-03-06 12:52:49','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(49,'Wildberry/ hurricone Smoothie',29,100,'Assorted pepper with tomatoes','2014-03-06 12:52:58','2014-03-06 12:52:58','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(50,'Wildberry/ hurricone Smoothie',29,100,'Assorted pepper with tomatoes','2014-03-06 12:53:00','2014-03-06 12:53:00','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(51,'Wildberry/ hurricone Smoothie',29,100,'Assorted pepper with tomatoes','2014-03-06 12:53:02','2014-03-06 12:53:02','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(52,'Wildberry/ hurricone Smoothie',29,100,'Assorted pepper with tomatoes','2014-03-06 12:53:05','2014-03-06 12:53:05','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(53,'Wildberry/ hurricone Smoothie',29,100,'Assorted pepper with tomatoes','2014-03-06 12:53:08','2014-03-06 12:53:08','Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','other',1,1,1,1,NULL,NULL,NULL,1,'completed'),(54,'Wildberry/ hurricone Smoothie',30,100,'Veal with tomatoes','2014-03-11 09:54:53','2014-03-11 09:54:53','@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}\r\n    	@query = @restaurants.facets.query','veg',1,0,1,1,'Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.16.08__2014.01.21_11.57.44_.jpg','image/jpeg',23148,1,'completed'),(55,'Wildberry/ hurricone Smoothie',30,100,'Veal with tomatoes','2014-03-11 09:54:56','2014-03-11 09:54:56','@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}\r\n    	@query = @restaurants.facets.query','veg',1,0,1,1,'Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.16.08__2014.01.21_11.57.44_.jpg','image/jpeg',23148,1,'completed'),(56,'Wildberry/ hurricone Smoothie',31,100,'Veal with tomatoes','2014-03-11 09:55:08','2014-03-11 09:55:08','@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}\r\n    	@query = @restaurants.facets.query','veg',1,0,1,1,'Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.16.08__2014.01.21_11.57.44_.jpg','image/jpeg',23148,1,'completed'),(57,'Wildberry/ hurricone Smoothie',31,100,'Veal with tomatoes','2014-03-11 09:55:10','2014-03-11 09:55:10','@restaurants = Restaurant.search params[:keyword], :with => {:restaurant_category_ids =>  [params[:category_id].to_i]}\r\n    	@query = @restaurants.facets.query','veg',1,0,1,1,'Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.16.08__2014.01.21_11.57.44_.jpg','image/jpeg',23148,1,'completed'),(58,'Pasta with Sauce',32,100,'','2014-03-11 14:53:24','2014-03-11 14:53:24','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. At vero eos et accusam et justo duo dolores et ea rebum.','veg',0,1,0,0,NULL,NULL,NULL,NULL,'completed'),(59,'Wildberry/ hurricone Smoothie',33,10,'Veal with tomatoes','2014-03-12 06:47:52','2014-03-12 06:47:52','','veg',1,1,1,1,NULL,NULL,NULL,1,'completed'),(60,'test',35,200,'test test tezst','2014-03-27 05:49:55','2014-03-27 10:17:45','no','non-veg',0,0,0,0,NULL,NULL,NULL,1,'completed'),(61,'test',35,200,'test test tezst','2014-03-27 05:49:58','2014-03-27 05:49:58','no','non-veg',0,1,0,0,NULL,NULL,NULL,1,'completed'),(62,'test',35,200,'test test tezst','2014-03-27 05:50:00','2014-03-27 05:50:00','no','non-veg',0,1,0,0,NULL,NULL,NULL,1,'completed'),(63,'Pasta with Sauce',36,100,'Veal with tomatoes','2014-03-28 14:35:58','2014-03-28 14:35:58','At vero eos et accusam et justo duo dolores et ea rebum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Sanctus sea sed takimata ut vero voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,0,0,NULL,NULL,NULL,1,'completed'),(64,'Pasta with Sauce',37,100,'Veal with tomatoes','2014-03-28 14:37:10','2014-03-28 14:37:10','At vero eos et accusam et justo duo dolores et ea rebum. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Sanctus sea sed takimata ut vero voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','veg',0,1,0,0,NULL,NULL,NULL,NULL,'completed'),(65,'Pasta with Sauce',38,100,'Veal with tomatoes','2014-03-31 06:38:37','2014-03-31 06:38:37','Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Stet clita kasd gubergren, no sea takimata sanctus est. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.','veg',0,1,1,1,'button1.png','image/png',19180,1,'completed'),(66,'Veal Cutlet Sandwich',39,90,'Veal with tomatoes','2014-03-31 12:49:41','2014-03-31 12:49:41','','non-veg',1,0,1,1,NULL,NULL,NULL,1,'completed'),(67,'Pasta with Sauce',40,100,'Veal with tomatoes','2014-04-08 11:53:40','2014-05-08 06:26:21','Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Stet clita kasd gubergren, no sea takimata sanctus est. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.','non-veg',1,1,1,1,NULL,NULL,NULL,1,'pending'),(68,'Pasta',40,100,'Assorted pepper with tomatoes','2014-04-08 11:54:14','2014-04-14 06:04:56','Sanctus sea sed takimata ut vero voluptua. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.','veg',0,0,0,0,'border-right.jpg','image/jpeg',434,1,'completed'),(69,'Pasta with Sauce 1',41,100,'Veal with tomatoes','2014-04-11 07:13:24','2014-04-11 07:15:52',' menu_item menu_item menu_item menu_item menu_item','non-veg',0,0,0,0,'back_enabled.png','image/png',1379,2,'completed'),(70,'Sandwitch',43,200,'test test tezst','2014-04-11 12:50:25','2014-05-08 06:28:23','Assorted pepper with tomatoes','veg',1,1,1,1,'lunch.png','image/png',20868,3,'pending'),(71,'Sandwitch',43,200,'test test tezst','2014-04-11 12:50:48','2014-04-14 06:06:27','Assorted pepper with tomatoes','veg',1,1,1,1,'lunch.png','image/png',20868,3,'completed'),(72,'Paratha',44,25,'test test tezst','2014-04-11 12:55:43','2014-04-14 10:41:07','Oily and test','veg',0,0,0,0,NULL,NULL,NULL,NULL,'completed');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (18,6,'2014-03-10 14:56:04','2014-03-10 14:56:04'),(35,10,'2014-03-12 11:40:56','2014-03-12 11:40:56'),(37,8,'2014-03-12 12:12:30','2014-03-12 12:12:30'),(40,7,'2014-03-31 06:37:11','2014-03-31 06:37:11'),(42,12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(44,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(45,15,'2014-04-10 14:18:27','2014-04-10 14:18:27'),(46,16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(47,17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(48,18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,6,'2014-03-06 12:37:41','2014-03-06 12:37:41'),(2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:26','2014-03-11 07:08:26'),(7,12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(10,15,'2014-04-10 14:18:28','2014-04-10 14:18:28'),(11,16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(12,17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(13,18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_infos`
--

LOCK TABLES `order_infos` WRITE;
/*!40000 ALTER TABLE `order_infos` DISABLE KEYS */;
INSERT INTO `order_infos` VALUES (6,'sunny.ciitlahore@gmail.com',2147483647,0,'sunny@gmail.com','',0,NULL,6,'2014-03-06 12:37:41','2014-04-30 07:41:00','1'),(7,'sunny.ciitlahore@gmail.com',1686321853,0,'sunny@gmail.com','password',0,NULL,7,'2014-03-06 12:51:17','2014-03-31 06:37:11',NULL),(8,'sunny.ciitlahore@gmail.com',1686321853,0,'sunny@gmail.com','password',0,NULL,8,'2014-03-06 14:49:21','2014-03-06 14:49:21',NULL),(10,'',NULL,0,'sunny@gmail.com','password',0,NULL,10,'2014-03-11 07:08:25','2014-03-12 10:14:13',NULL),(12,'sunny.ciitlahore@gmail.com',1686321853,1,'sunny@gmail.com','password',1,NULL,12,'2014-04-08 10:55:10','2014-04-08 10:55:10',NULL),(14,'sunny.ciitlahore@gmail.com',2147483647,0,'sunny@gmail.com','',0,NULL,14,'2014-04-08 11:10:02','2014-04-18 07:58:13','fax'),(15,'',NULL,0,'dawood@gmail.com','password',0,NULL,15,'2014-04-10 14:18:27','2014-04-10 14:18:27',NULL),(16,'sunny.ciitlahore@gmail.com',2147483647,0,'test@gmail.com','password',0,NULL,16,'2014-04-30 13:27:59','2014-04-30 14:08:16','fax'),(17,'',NULL,0,'test@gmail.com','password',0,NULL,17,'2014-04-30 14:10:17','2014-04-30 14:10:17','fax'),(18,'',NULL,0,'test@gmail.com','password',0,NULL,18,'2014-04-30 14:20:05','2014-04-30 14:20:05',NULL);
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
  `order_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (54,1,'2014-03-31 12:32:51','2014-03-31 12:32:51',NULL,'delivery','ASAP','pending',7,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(55,1,'2014-03-31 12:57:19','2014-03-31 12:57:19',NULL,NULL,'ASAP','pending',6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(56,1,'2014-03-31 17:58:09','2014-03-31 17:58:09',NULL,NULL,'ASAP','pending',6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(57,1,'2014-03-31 18:03:28','2014-03-31 18:03:28',NULL,NULL,'ASAP','pending',6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(58,1,'2014-03-31 18:05:12','2014-03-31 18:05:12',NULL,NULL,'ASAP','pending',6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(59,1,'2014-03-31 19:11:01','2014-03-31 19:11:01',NULL,NULL,'ASAP','pending',6,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(60,1,'2014-04-01 06:02:55','2014-04-01 06:02:55',NULL,NULL,'ASAP','pending',7,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(61,1,'2014-04-01 06:03:47','2014-04-01 06:03:47',NULL,'delivery','ASAP','pending',7,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(62,1,'2014-04-01 10:49:25','2014-04-01 10:49:25',NULL,NULL,NULL,'pending',7,NULL,'',NULL,NULL,NULL,NULL,0,NULL),(63,8,'2014-04-01 20:10:19','2014-04-01 20:10:19',NULL,'delivery','ASAP','pending',7,15,'',NULL,5,NULL,NULL,0,NULL),(64,8,'2014-04-01 20:34:24','2014-04-01 20:38:29',NULL,'delivery','ASAP','pending',7,15,'','credit_card',6,NULL,NULL,0,NULL),(65,8,'2014-04-01 20:45:11','2014-04-01 20:45:11',NULL,'delivery','ASAP','pending',7,15,'Please add more topping and  delivery asap ',NULL,5,NULL,NULL,0,NULL),(66,8,'2014-04-01 20:51:35','2014-04-01 20:51:35',NULL,'delivery','ASAP','pending',7,17,'Please ASAP',NULL,5,NULL,NULL,0,NULL),(67,8,'2014-04-01 21:24:36','2014-04-01 21:24:36',NULL,'delivery','ASAP','pending',7,15,'',NULL,8,NULL,NULL,0,NULL),(68,8,'2014-04-01 21:45:29','2014-04-01 21:45:29',NULL,'delivery','ASAP','pending',7,18,'ASAP',NULL,6,NULL,NULL,0,NULL),(69,1,'2014-04-02 07:57:36','2014-04-02 10:37:31',NULL,'delivery','ASAP','pending',7,13,'STET CLITA KASD GUBERGREN, NO SEA TAKIMATA SANCTUS EST. EXCEPTEUR SINT OBCAECAT CUPIDITAT NON PROIDENT, SUNT IN CULPA QUI OFFICIA DESERUNT MOLLIT ANIM ID EST LABORUM. STET CLITA KASD GUBERGREN, NO SEA TAKIMATA SANCTUS EST.. STET CLITA KASD GUBERGREN, NO SEA TAKIMATA SANCTUS EST LOREM IPSUM DOLOR SIT AMET.',NULL,10,NULL,NULL,0,NULL),(70,8,'2014-04-02 13:41:18','2014-04-02 13:41:18',NULL,'delivery','ASAP','pending',7,15,'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquid ex ea commodi consequat. At vero eos et accusam et justo duo dolores et ea rebum. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum.',NULL,NULL,NULL,NULL,0,NULL),(71,8,'2014-04-02 13:46:20','2014-04-02 13:46:20',NULL,'delivery','ASAP','pending',7,15,'',NULL,NULL,NULL,NULL,0,NULL),(72,8,'2014-04-02 13:55:41','2014-04-02 13:55:41',NULL,'delivery','ASAP','pending',7,15,'',NULL,NULL,'Paypal',NULL,0,NULL),(73,1,'2014-04-02 14:34:14','2014-04-02 14:34:14',NULL,'delivery','ASAP','pending',7,14,'',NULL,12,'Credit Card',NULL,0,NULL),(74,1,'2014-04-02 14:35:15','2014-04-02 14:35:15',NULL,'delivery','ASAP','pending',7,14,'',NULL,13,'Credit Card',NULL,0,NULL),(75,8,'2014-04-03 06:39:55','2014-04-03 06:39:55',NULL,'delivery','ASAP','pending',7,15,'',NULL,NULL,'Paypal',NULL,0,NULL),(76,8,'2014-04-03 08:12:49','2014-04-03 08:12:49',NULL,'pickup','ASAP','completed',7,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(77,8,'2014-04-03 12:33:49','2014-04-03 12:33:49',NULL,'pickup','ASAP','completed',6,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(78,8,'2014-04-04 05:50:00','2014-04-04 05:50:00',NULL,'pickup','ASAP','completed',6,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(79,8,'2014-04-04 05:55:38','2014-04-04 05:55:38',NULL,'delivery','ASAP','pending',6,16,'',NULL,9,'Credit Card',NULL,0,NULL),(80,1,'2014-04-04 07:11:05','2014-04-04 07:11:05',NULL,'pickup','ASAP','completed',6,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(83,9,'2014-04-04 07:22:05','2014-04-04 07:22:05',NULL,'pickup','ASAP','completed',6,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(84,8,'2014-04-04 08:26:14','2014-04-04 08:26:14',NULL,'pickup','ASAP','completed',6,NULL,NULL,NULL,NULL,'cash',NULL,0,NULL),(86,1,'2014-04-04 10:13:41','2014-04-04 10:13:41',NULL,'delivery','ASAP','pending',7,13,'',NULL,10,'Credit Card',NULL,0,NULL),(87,1,'2014-04-04 10:19:10','2014-04-04 10:19:10',NULL,'delivery','ASAP','pending',7,13,'',NULL,10,'Credit Card',NULL,20,NULL),(88,1,'2014-04-04 10:24:15','2014-04-04 10:24:15',NULL,'delivery','ASAP','pending',6,13,'',NULL,NULL,'Paypal',NULL,10,NULL),(89,1,'2014-04-04 11:05:45','2014-04-04 11:05:45',NULL,'delivery','ASAP','pending',7,13,'',NULL,10,'Credit Card',NULL,10,NULL),(90,1,'2014-04-07 07:27:49','2014-04-07 07:27:49',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,10,'Credit Card',NULL,20,NULL),(91,1,'2014-04-07 07:36:08','2014-04-07 07:36:08',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,NULL,'Paypal',NULL,10,NULL),(92,1,'2014-04-07 07:54:56','2014-04-07 07:54:56',NULL,'delivery','ASAP','pending',7,14,'',NULL,10,'Credit Card',NULL,0,NULL),(93,1,'2014-04-07 07:58:45','2014-04-07 07:58:45',NULL,'delivery','ASAP','pending',7,14,'',NULL,NULL,'Paypal',NULL,0,NULL),(94,1,'2014-04-07 08:07:50','2014-04-07 08:07:50',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,12,'Credit Card',NULL,20,NULL),(95,1,'2014-04-07 08:09:09','2014-04-07 08:09:09',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,12,'Credit Card',NULL,20,NULL),(96,1,'2014-04-08 09:19:27','2014-04-08 09:19:27',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,10,'Credit Card',NULL,20,NULL),(97,1,'2014-04-08 10:02:27','2014-04-08 10:02:27',NULL,'pickup','ASAP','pending',6,NULL,NULL,NULL,10,'Credit Card',NULL,0,NULL),(98,1,'2014-04-08 10:04:58','2014-04-08 10:04:58',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,10,'Credit Card',NULL,0,NULL),(99,8,'2014-04-08 12:00:31','2014-05-23 11:16:03',NULL,'pickup','ASAP','reject',14,NULL,NULL,NULL,9,'Credit Card',NULL,15,NULL),(101,8,'2014-04-08 12:13:54','2014-05-07 06:59:32',NULL,'delivery','ASAP','confirm',14,16,'',NULL,NULL,'Paypal',NULL,15,NULL),(102,14,'2014-04-08 12:18:13','2014-04-08 12:18:13',NULL,'delivery','ASAP','pending',14,20,'Stet clita kasd gubergren, no sea takimata sanctus est. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Duis autem vel eum iriure dolor in hendrerit in ',NULL,14,'Credit Card',NULL,15,NULL),(103,14,'2014-04-08 12:50:29','2014-04-08 12:50:29',NULL,'delivery','ASAP','pending',14,20,'',NULL,14,'Credit Card',NULL,15,NULL),(104,1,'2014-04-08 13:07:41','2014-04-08 13:07:41',NULL,'pickup','ASAP','pending',14,NULL,NULL,NULL,10,'Credit Card',NULL,0,NULL),(105,1,'2014-04-08 14:37:18','2014-04-08 14:37:18',NULL,'delivery','ASAP','pending',7,14,'',NULL,10,'Credit Card',NULL,15,NULL),(106,13,'2014-04-09 06:28:04','2014-04-09 06:28:04',NULL,'pickup','ASAP','pending',7,NULL,NULL,NULL,NULL,'Paypal',NULL,15,NULL),(107,1,'2014-04-09 06:58:07','2014-04-09 06:58:07',NULL,'delivery','ASAP','pending',14,14,'',NULL,17,'Credit Card',NULL,10,NULL),(109,14,'2014-04-09 11:40:19','2014-04-09 11:40:19',NULL,'delivery','ASAP','pending',14,20,'',NULL,20,'Credit Card',NULL,0,NULL),(110,14,'2014-04-18 06:57:00','2014-04-18 06:57:00',NULL,'delivery','ASAP','pending',14,20,'',NULL,14,'Credit Card',NULL,20,NULL),(111,14,'2014-04-18 06:58:21','2014-04-18 06:58:21',NULL,'delivery','ASAP','pending',14,20,'',NULL,NULL,'Paypal',NULL,20,NULL),(112,14,'2014-04-18 07:02:49','2014-04-18 07:02:49',NULL,'delivery','ASAP','pending',6,20,'',NULL,NULL,'Paypal',NULL,20,NULL),(119,14,'2014-04-18 07:19:04','2014-04-18 07:19:04',NULL,'pickup','ASAP','pending',14,NULL,NULL,NULL,NULL,'Paypal',NULL,20,NULL),(120,14,'2014-04-18 07:21:14','2014-04-18 07:21:14',NULL,'pickup','ASAP','pending',6,NULL,NULL,NULL,14,'Credit Card',NULL,20,'5205e3'),(122,14,'2014-04-18 08:26:04','2014-04-18 08:26:04',NULL,'delivery','ASAP','pending',14,20,'',NULL,14,'Credit Card',NULL,0,'783238'),(123,14,'2014-04-18 08:29:29','2014-04-18 08:29:29',NULL,'delivery','ASAP','pending',14,20,'',NULL,14,'Credit Card',NULL,0,'3d82cc'),(124,14,'2014-04-18 08:38:27','2014-05-07 07:00:15',NULL,'delivery','ASAP','confirm',14,20,'',NULL,NULL,'Paypal',NULL,20,'508b26'),(125,14,'2014-04-18 10:06:07','2014-04-18 10:06:07',NULL,'delivery','ASAP','pending',14,20,'',NULL,14,'Credit Card',NULL,0,'adae72'),(126,14,'2014-04-18 10:08:31','2014-05-07 12:16:54',NULL,'delivery','ASAP','confirm',14,20,'',NULL,14,'Credit Card',NULL,0,'66e373'),(127,14,'2014-04-18 10:09:07','2014-05-07 12:16:51',NULL,'delivery','ASAP','reject',14,20,'',NULL,14,'Credit Card',NULL,0,'f74203'),(128,14,'2014-04-18 10:10:17','2014-05-07 12:16:49',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'2b19e7'),(129,14,'2014-04-18 10:11:49','2014-05-07 12:16:45',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'b040fa'),(130,14,'2014-04-18 10:13:47','2014-05-07 12:16:43',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'cc679c'),(131,14,'2014-04-18 10:14:25','2014-05-07 12:16:40',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'84230c'),(132,14,'2014-04-18 10:15:15','2014-05-07 12:16:36',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'bd7005'),(133,14,'2014-04-18 10:18:31','2014-05-07 12:16:32',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'82b2ce'),(134,14,'2014-04-18 10:20:22','2014-05-07 12:16:29',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'839b78'),(135,14,'2014-04-18 10:21:39','2014-05-07 12:16:26',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'ee6f15'),(136,14,'2014-04-18 10:26:08','2014-05-07 12:16:23',NULL,'delivery','ASAP','reject',14,20,'',NULL,20,'Credit Card',NULL,0,'f9ff64'),(137,14,'2014-04-18 11:03:03','2014-04-18 11:03:03',NULL,'delivery','ASAP','pending',6,20,'',NULL,14,'Credit Card',NULL,0,'906eb6'),(138,14,'2014-04-18 11:07:45','2014-04-18 11:07:45',NULL,'delivery','ASAP','pending',6,20,'',NULL,14,'Credit Card',NULL,0,'2d792e'),(139,14,'2014-04-18 11:08:43','2014-05-07 07:00:46',NULL,'delivery','ASAP','reject',14,20,'',NULL,14,'Credit Card',NULL,0,'1207f6'),(140,14,'2014-04-18 11:33:43','2014-05-07 06:59:15',NULL,'delivery','ASAP','confirm',14,20,'',NULL,14,'Credit Card',NULL,0,'aad0bd'),(141,14,'2014-04-21 06:06:53','2014-04-21 06:06:58',NULL,'delivery','ASAP','confirm',14,20,'',NULL,14,'Credit Card',39,10,'309f86'),(142,1,'2014-04-30 07:10:40','2014-04-30 07:10:40',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'5d1997'),(143,1,'2014-04-30 07:19:16','2014-04-30 07:19:16',NULL,'delivery','ASAP','pending',6,14,'',NULL,NULL,'Paypal',NULL,0,'1e62a5'),(144,1,'2014-04-30 07:27:06','2014-04-30 07:27:06',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,20,'d32634'),(145,1,'2014-04-30 07:28:23','2014-04-30 07:28:23',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'053702'),(146,1,'2014-04-30 07:49:53','2014-04-30 07:49:53',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'135a9b'),(147,1,'2014-04-30 07:52:20','2014-04-30 07:52:20',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'f24c18'),(148,1,'2014-04-30 07:56:51','2014-04-30 07:56:51',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'061685'),(149,1,'2014-04-30 07:58:32','2014-04-30 07:58:32',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'e6734e'),(150,1,'2014-04-30 08:01:29','2014-04-30 08:01:29',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'1b638f'),(151,1,'2014-04-30 09:07:37','2014-04-30 09:07:37',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'22b506'),(152,1,'2014-04-30 09:19:50','2014-04-30 09:20:03',NULL,'delivery','ASAP','confirm',6,14,'',NULL,15,'Credit Card',49,0,'921a56'),(153,1,'2014-04-30 11:27:07','2014-04-30 11:27:07',NULL,'delivery','ASAP','pending',6,14,'',NULL,NULL,'Paypal',NULL,20,'fca941'),(154,1,'2014-04-30 11:34:21','2014-04-30 11:34:28',NULL,'delivery','ASAP','confirm',6,14,'',NULL,NULL,'Paypal',NULL,20,'7f7739'),(155,1,'2014-04-30 12:29:02','2014-04-30 12:29:02',NULL,'delivery','ASAP','pending',6,14,'',NULL,18,'Credit Card',NULL,0,'f2fda5'),(156,1,'2014-04-30 12:33:52','2014-04-30 12:33:52',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'383f4b'),(157,1,'2014-04-30 12:35:03','2014-04-30 12:35:13',NULL,'delivery','ASAP','confirm',6,14,'',NULL,16,'Credit Card',52,0,'13d0ba'),(158,1,'2014-05-01 06:47:58','2014-05-01 06:47:58',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'a25e7a'),(159,1,'2014-05-01 06:50:17','2014-05-01 06:50:17',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'e3de0d'),(160,1,'2014-05-01 06:53:33','2014-05-01 06:53:33',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'b92a7f'),(161,1,'2014-05-01 06:55:02','2014-05-01 06:55:02',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'df60cb'),(162,1,'2014-05-01 06:56:08','2014-05-01 06:56:08',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'4961d7'),(163,1,'2014-05-01 06:59:33','2014-05-01 06:59:33',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'b19e9b'),(164,1,'2014-05-01 07:03:51','2014-05-01 07:03:51',NULL,'delivery','ASAP','pending',6,14,'',NULL,16,'Credit Card',NULL,0,'1aac24'),(165,1,'2014-05-01 07:04:25','2014-05-01 07:04:25',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'cad302'),(166,1,'2014-05-01 07:08:16','2014-05-01 07:08:16',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'66be99'),(167,1,'2014-05-01 07:11:18','2014-05-01 07:11:18',NULL,'delivery','ASAP','pending',6,14,'',NULL,15,'Credit Card',NULL,0,'169dea'),(168,13,'2014-05-05 05:44:51','2014-05-05 05:44:51',NULL,'delivery','ASAP','pending',7,21,'',NULL,19,'Credit Card',NULL,0,'19a18f'),(169,13,'2014-05-05 06:31:09','2014-05-05 06:31:09',NULL,'delivery','ASAP','pending',7,21,'',NULL,19,'Credit Card',NULL,0,'56f05b'),(170,13,'2014-05-05 06:32:17','2014-05-05 06:32:17',NULL,'delivery','ASAP','pending',7,21,'',NULL,19,'Credit Card',NULL,0,'d9f690'),(171,13,'2014-05-05 10:19:01','2014-05-05 10:19:01',NULL,'delivery','ASAP','pending',6,21,'',NULL,19,'Credit Card',NULL,0,'915387');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,0,'2014-04-04 05:55:44','authorized',345.75,8,'2014-04-04 05:55:38','2014-04-04 05:55:38'),(2,3,'2014-04-04 10:13:48','authorized',683.5,1,'2014-04-04 10:13:42','2014-04-04 10:13:42'),(3,0,'2014-04-04 10:19:16','authorized',547,1,'2014-04-04 10:19:10','2014-04-04 10:19:10'),(4,0,'2014-04-04 11:05:51','authorized',547,1,'2014-04-04 11:05:45','2014-04-04 11:05:45'),(5,0,'2014-04-07 07:27:54','authorized',491.4,1,'2014-04-07 07:27:49','2014-04-07 07:27:49'),(6,8,'2014-04-07 07:55:01','authorized',547,1,'2014-04-07 07:54:56','2014-04-07 07:54:56'),(7,0,'2014-04-07 08:07:55','authorized',491.4,1,'2014-04-07 08:07:50','2014-04-07 08:07:50'),(8,0,'2014-04-07 08:09:14','authorized',491.4,1,'2014-04-07 08:09:09','2014-04-07 08:09:09'),(9,54,'2014-04-08 09:19:34','authorized',655.2,1,'2014-04-08 09:19:28','2014-04-08 09:19:28'),(10,0,'2014-04-08 10:02:33','authorized',750.75,1,'2014-04-08 10:02:27','2014-04-08 10:02:27'),(11,0,'2014-04-08 10:05:05','authorized',136.5,1,'2014-04-08 10:04:59','2014-04-08 10:04:59'),(12,0,'2014-04-08 12:00:38','authorized',3450,8,'2014-04-08 12:00:31','2014-04-08 12:00:31'),(13,668,'2014-04-08 12:18:18','authorized',345,14,'2014-04-08 12:18:13','2014-04-08 12:18:13'),(14,394,'2014-04-08 12:50:36','authorized',5175,14,'2014-04-08 12:50:29','2014-04-08 12:50:29'),(15,0,'2014-04-08 13:07:48','authorized',5420,1,'2014-04-08 13:07:42','2014-04-08 13:07:42'),(16,62,'2014-04-08 14:37:25','authorized',1570.9,1,'2014-04-08 14:37:18','2014-04-08 14:37:18'),(17,3,'2014-04-09 07:20:52','authorized',1905.75,13,'2014-04-09 07:20:46','2014-04-09 07:20:46'),(18,6,'2014-04-09 11:40:26','authorized',1732.5,14,'2014-04-09 11:40:19','2014-04-09 11:40:19'),(19,0,'2014-04-18 06:57:11','authorized',1890,14,'2014-04-18 06:57:00','2014-04-18 06:57:00'),(20,0,'2014-04-18 07:21:26','authorized',529.2,14,'2014-04-18 07:21:14','2014-04-18 07:21:14'),(21,89,'2014-04-18 08:26:15','authorized',945,14,'2014-04-18 08:26:11','2014-04-18 08:26:11'),(22,2,'2014-04-18 08:29:41','authorized',840,14,'2014-04-18 08:29:37','2014-04-18 08:29:37'),(23,79,'2014-04-18 10:06:19','authorized',945,14,'2014-04-18 10:06:07','2014-04-18 10:06:07'),(24,0,'2014-04-18 10:08:43','authorized',420,14,'2014-04-18 10:08:32','2014-04-18 10:08:32'),(25,0,'2014-04-18 10:09:18','authorized',420,14,'2014-04-18 10:09:07','2014-04-18 10:09:07'),(26,0,'2014-04-18 10:10:29','authorized',420,14,'2014-04-18 10:10:18','2014-04-18 10:10:18'),(27,0,'2014-04-18 10:12:01','authorized',420,14,'2014-04-18 10:11:50','2014-04-18 10:11:50'),(28,0,'2014-04-18 10:13:59','authorized',420,14,'2014-04-18 10:13:48','2014-04-18 10:13:48'),(29,98,'2014-04-18 10:14:36','authorized',420,14,'2014-04-18 10:14:25','2014-04-18 10:14:25'),(30,0,'2014-04-18 10:15:27','authorized',420,14,'2014-04-18 10:15:15','2014-04-18 10:15:15'),(31,4,'2014-04-18 10:18:43','authorized',420,14,'2014-04-18 10:18:32','2014-04-18 10:18:32'),(32,8,'2014-04-18 10:20:33','authorized',420,14,'2014-04-18 10:20:22','2014-04-18 10:20:22'),(33,0,'2014-04-18 10:21:50','authorized',420,14,'2014-04-18 10:21:39','2014-04-18 10:21:39'),(34,0,'2014-04-18 10:26:19','authorized',420,14,'2014-04-18 10:26:08','2014-04-18 10:26:08'),(35,7346,'2014-04-18 11:03:15','authorized',345.75,14,'2014-04-18 11:03:04','2014-04-18 11:03:04'),(36,0,'2014-04-18 11:07:56','authorized',1065,14,'2014-04-18 11:07:45','2014-04-18 11:07:45'),(37,0,'2014-04-18 11:08:55','authorized',945,14,'2014-04-18 11:08:44','2014-04-18 11:08:44'),(38,7,'2014-04-18 11:33:54','authorized',945,14,'2014-04-18 11:33:43','2014-04-18 11:33:43'),(39,28,'2014-04-21 06:07:04','authorized',3118.5,14,'2014-04-21 06:06:53','2014-04-21 06:06:53'),(40,0,'2014-04-30 07:10:56','authorized',786.75,1,'2014-04-30 07:10:41','2014-04-30 07:10:41'),(41,0,'2014-04-30 07:27:21','authorized',547.2,1,'2014-04-30 07:27:06','2014-04-30 07:27:06'),(42,0,'2014-04-30 07:28:39','authorized',456,1,'2014-04-30 07:28:24','2014-04-30 07:28:24'),(43,0,'2014-04-30 07:50:09','authorized',456,1,'2014-04-30 07:49:54','2014-04-30 07:49:54'),(44,0,'2014-04-30 07:52:36','authorized',456,1,'2014-04-30 07:52:20','2014-04-30 07:52:20'),(45,79,'2014-04-30 07:57:07','authorized',456,1,'2014-04-30 07:56:52','2014-04-30 07:56:52'),(46,2,'2014-04-30 07:58:48','authorized',456,1,'2014-04-30 07:58:33','2014-04-30 07:58:33'),(47,983,'2014-04-30 08:01:45','authorized',456,1,'2014-04-30 08:01:30','2014-04-30 08:01:30'),(48,7,'2014-04-30 09:07:53','authorized',456,1,'2014-04-30 09:07:37','2014-04-30 09:07:37'),(49,0,'2014-04-30 09:20:06','authorized',456,1,'2014-04-30 09:19:51','2014-04-30 09:19:51'),(50,8,'2014-04-30 12:29:17','authorized',540,1,'2014-04-30 12:29:02','2014-04-30 12:29:02'),(51,8,'2014-04-30 12:34:08','authorized',345.75,1,'2014-04-30 12:33:53','2014-04-30 12:33:53'),(52,8,'2014-04-30 12:35:19','authorized',345.75,1,'2014-04-30 12:35:04','2014-04-30 12:35:04'),(53,5,'2014-05-01 06:48:15','authorized',235.5,1,'2014-05-01 06:47:59','2014-05-01 06:47:59'),(54,7,'2014-05-01 06:50:34','authorized',235.5,1,'2014-05-01 06:50:18','2014-05-01 06:50:18'),(55,0,'2014-05-01 06:53:50','authorized',235.5,1,'2014-05-01 06:53:33','2014-05-01 06:53:33'),(56,5,'2014-05-01 06:55:19','authorized',235.5,1,'2014-05-01 06:55:02','2014-05-01 06:55:02'),(57,0,'2014-05-01 06:56:25','authorized',235.5,1,'2014-05-01 06:56:09','2014-05-01 06:56:09'),(58,43,'2014-05-01 06:59:50','authorized',235.5,1,'2014-05-01 06:59:33','2014-05-01 06:59:33'),(59,0,'2014-05-01 07:04:08','authorized',235.5,1,'2014-05-01 07:03:51','2014-05-01 07:03:51'),(60,0,'2014-05-01 07:04:42','authorized',235.5,1,'2014-05-01 07:04:25','2014-05-01 07:04:25'),(61,23,'2014-05-01 07:08:33','authorized',235.5,1,'2014-05-01 07:08:16','2014-05-01 07:08:16'),(62,539,'2014-05-01 07:11:35','authorized',235.5,1,'2014-05-01 07:11:19','2014-05-01 07:11:19'),(63,0,'2014-05-05 05:45:08','authorized',410.5,13,'2014-05-05 05:44:51','2014-05-05 05:44:51'),(64,96,'2014-05-05 06:31:26','authorized',410.5,13,'2014-05-05 06:31:09','2014-05-05 06:31:09'),(65,6,'2014-05-05 06:32:34','authorized',410.5,13,'2014-05-05 06:32:17','2014-05-05 06:32:17'),(66,0,'2014-05-05 10:19:18','authorized',1117.5,13,'2014-05-05 10:19:01','2014-05-05 10:19:01');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pick_ups`
--

LOCK TABLES `pick_ups` WRITE;
/*!40000 ALTER TABLE `pick_ups` DISABLE KEYS */;
INSERT INTO `pick_ups` VALUES (1,6,'2014-03-06 12:37:41','2014-03-06 12:37:41'),(2,7,'2014-03-06 12:51:17','2014-03-06 12:51:17'),(3,8,'2014-03-06 14:49:21','2014-03-06 14:49:21'),(5,10,'2014-03-11 07:08:25','2014-03-11 07:08:25'),(7,12,'2014-04-08 10:55:10','2014-04-08 10:55:10'),(9,14,'2014-04-08 11:10:02','2014-04-08 11:10:02'),(10,15,'2014-04-10 14:18:27','2014-04-10 14:18:27'),(11,16,'2014-04-30 13:27:59','2014-04-30 13:27:59'),(12,17,'2014-04-30 14:10:17','2014-04-30 14:10:17'),(13,18,'2014-04-30 14:20:05','2014-04-30 14:20:05');
/*!40000 ALTER TABLE `pick_ups` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_categories`
--

LOCK TABLES `restaurant_categories` WRITE;
/*!40000 ALTER TABLE `restaurant_categories` DISABLE KEYS */;
INSERT INTO `restaurant_categories` VALUES (1,'Healthy','2014-03-03 11:20:53','2014-04-30 13:27:59',16),(2,'Chiken','2014-03-03 11:21:00','2014-04-30 14:10:17',17),(3,'American','2014-03-03 11:21:07','2014-04-30 13:27:59',16),(4,'Indain','2014-03-03 11:21:17','2014-04-30 14:10:17',17),(5,'Italian','2014-03-03 11:21:22','2014-04-30 14:10:17',17),(6,'Desi Food','2014-03-03 11:21:31','2014-04-30 14:10:17',17),(7,'test','2014-03-10 14:55:33','2014-04-02 07:22:21',9),(8,'test 2','2014-04-11 09:26:25','2014-04-30 13:27:59',16);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_coupons`
--

LOCK TABLES `restaurant_coupons` WRITE;
/*!40000 ALTER TABLE `restaurant_coupons` DISABLE KEYS */;
INSERT INTO `restaurant_coupons` VALUES (1,14,'2014-04-06 00:00:00','2014-03-06 14:21:12','2014-05-08 05:28:59','campus-bite.png','image/png',30171,'pending'),(2,14,'2014-03-08 00:00:00','2014-03-06 14:21:41','2014-04-14 13:03:34','1956949_752926184752158_5515196612279201404_o.jpg','image/jpeg',103900,'completed'),(3,14,'2014-03-08 00:00:00','2014-03-06 14:25:19','2014-04-14 15:02:05','copoun.png','image/png',104854,'completed'),(4,15,'2014-04-11 00:00:00','2014-04-11 07:57:54','2014-04-11 07:57:54','copoun.png','image/png',104854,'completed'),(5,14,'2014-04-14 00:00:00','2014-04-14 13:19:37','2014-04-14 13:19:46','1956949_752926184752158_5515196612279201404_o.jpg','image/jpeg',103900,'completed');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_infos`
--

LOCK TABLES `restaurant_infos` WRITE;
/*!40000 ALTER TABLE `restaurant_infos` DISABLE KEYS */;
INSERT INTO `restaurant_infos` VALUES (6,'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',0,0,100,6,'2014-03-06 12:37:41','2014-03-10 14:56:04',NULL,NULL,NULL,5),(7,'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',0,0,100,7,'2014-03-06 12:51:17','2014-03-11 13:52:27','01-858x338.jpg','image/jpeg',66315,5),(8,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. At vero eos et accusam et justo duo dolores et ea rebum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.',0,0,10,8,'2014-03-06 14:49:21','2014-03-12 12:12:30','map.png','image/png',71855,5),(10,' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\' \'health\'',0,0,100,10,'2014-03-11 07:08:25','2014-03-12 10:14:13','Mere_Yaar_Kamine_2014__Punjabi_Movie__DVDscr_Rip__Taz_Toor_.mkv_snapshot_01.44.15__2014.01.21_11.58.13_.jpg','image/jpeg',29851,5),(12,'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. At vero eos et accusam et justo duo dolores et ea rebum.',1,1,100,12,'2014-04-08 10:55:10','2014-04-08 10:55:10','message.png','image/png',4510,15),(14,'Stet clita kasd gubergren Lorem ipsum dolor sit',0,0,100,14,'2014-04-08 11:10:02','2014-04-10 06:46:04','arrow2.png','image/png',4300,5),(15,'',0,0,NULL,15,'2014-04-10 14:18:27','2014-04-10 14:18:27',NULL,NULL,NULL,NULL),(16,'Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet',0,0,100,16,'2014-04-30 13:27:59','2014-04-30 14:08:16','page4.JPG','image/jpeg',919466,15),(17,'test',0,0,NULL,17,'2014-04-30 14:10:17','2014-04-30 14:10:17',NULL,NULL,NULL,NULL),(18,'',0,0,NULL,18,'2014-04-30 14:20:05','2014-04-30 14:20:05',NULL,NULL,NULL,NULL);
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
INSERT INTO `restaurant_offers` VALUES (3,7,'For Students',10,100,'2014-03-06 00:00:00','2014-03-14 00:00:00','2014-03-06 12:57:34','2014-03-06 12:57:34','completed'),(4,6,'For Students',10,50,'2014-04-11 00:00:00','2014-04-11 00:00:00','2014-04-11 08:03:42','2014-04-11 08:03:42','completed'),(5,14,'hello',10,50,'2014-04-14 00:00:00','2014-07-14 00:00:00','2014-04-14 11:24:06','2014-04-14 12:32:44','completed'),(6,14,'For Faculty',20,200,'2014-04-14 00:00:00','2014-06-14 00:00:00','2014-04-14 11:24:31','2014-05-08 05:28:36','pending');
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
  PRIMARY KEY (`id`),
  KEY `index_restaurants_on_delta` (`delta`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (6,'2014-03-06 12:37:41','2014-04-30 07:41:00',NULL,3,12,'completed',0),(7,'2014-03-06 12:51:17','2014-04-10 11:34:18',2,1,12,'completed',0),(8,'2014-03-06 14:49:21','2014-04-11 20:29:57',5,0,NULL,'completed',0),(10,'2014-03-11 07:08:25','2014-03-11 07:08:25',4,0,NULL,'completed',0),(12,'2014-04-08 10:55:10','2014-04-08 10:55:10',NULL,0,NULL,'completed',0),(14,'2014-04-08 11:10:02','2014-04-14 05:44:57',2,4,13,'completed',0),(15,'2014-04-10 14:18:27','2014-04-10 14:18:27',NULL,0,15,'completed',0),(16,'2014-04-30 13:27:59','2014-04-30 14:08:16',2,0,17,'completed',0),(17,'2014-04-30 14:10:17','2014-04-30 14:10:17',2,0,18,'completed',0),(18,'2014-04-30 14:20:05','2014-04-30 14:20:05',2,0,19,'completed',0);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (19,1,13,7,'I have good experience food is taste but delivery service not on time','2014-04-09 06:31:38','2014-04-09 06:31:38'),(21,4,14,6,'Nice restaurant. i will prefer this restaurant always :)','2014-04-18 07:33:59','2014-04-18 07:33:59'),(22,4,14,14,'Nice restaurant. i will prefer this restaurant always :)','2014-04-18 07:34:09','2014-04-18 07:34:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'user',NULL,NULL,'2014-03-03 11:12:25','2014-03-03 11:12:25'),(2,'admin',NULL,NULL,'2014-03-03 11:12:25','2014-03-03 11:12:25'),(4,'admin_restaurant',NULL,NULL,'2014-04-08 10:55:10','2014-04-08 10:55:10');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('20140213073751'),('20140213074416'),('20140218143444'),('20140219115227'),('20140221084240'),('20140221084605'),('20140221084724'),('20140221095938'),('20140221102157'),('20140221103135'),('20140221103648'),('20140221104416'),('20140225115308'),('20140225120348'),('20140225124250'),('20140226065328'),('20140226080132'),('20140226095005'),('20140226100200'),('20140226120001'),('20140226120120'),('20140226131709'),('20140227061242'),('20140303071014'),('20140303071622'),('20140303074719'),('20140303091650'),('20140303092929'),('20140303093214'),('20140303095504'),('20140303104206'),('20140303110307'),('20140303111002'),('20140303114207'),('20140303120240'),('20140303122306'),('20140303142408'),('20140303164512'),('20140303173512'),('20140303173751'),('20140303184122'),('20140303190602'),('20140305104311'),('20140305110332'),('20140305120613'),('20140306072839'),('20140306103649'),('20140306115817'),('20140306115831'),('20140306115846'),('20140306115857'),('20140306121313'),('20140306141337'),('20140306141444'),('20140310113516'),('20140310121125'),('20140312100637'),('20140327094102'),('20140327103145'),('20140329093035'),('20140329122317'),('20140329123815'),('20140331064510'),('20140331071426'),('20140331100937'),('20140401064656'),('20140401065916'),('20140401103133'),('20140401142626'),('20140401143322'),('20140401195511'),('20140401204138'),('20140402070518'),('20140402134738'),('20140402141845'),('20140402141949'),('20140403061550'),('20140403081910'),('20140403125901'),('20140404095416'),('20140404114452'),('20140408095615'),('20140408101511'),('20140410105033'),('20140410105654'),('20140411133410'),('20140411133525'),('20140414064548'),('20140414112608'),('20140414123909'),('20140418070546'),('20140418074905'),('20140430130556'),('20140523123425');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (2,'Comsats Lahore 1','Mollna Soukat Ali Road','Lahore Campus','2014-03-03 13:51:35','2014-04-10 13:34:58',1),(3,'Jame Hall','Mollna Soukat Ali Road','Lahore Campus','2014-03-05 13:36:17','2014-03-05 13:36:17',1),(4,'Jame Quick','Calfton Area Sarder','Biola University','2014-03-05 13:38:12','2014-03-05 13:38:12',1),(5,'Jame Road','Calfton Area Sarder','Islamabad','2014-03-05 13:38:22','2014-03-05 13:38:22',1),(6,'Test','Test Test','Test branch','2014-04-10 13:15:53','2014-04-10 13:15:53',1),(8,'Jame Hall','Rawind Road Lahore','Test branch','2014-04-10 13:35:08','2014-04-10 13:35:08',1),(9,'Test','Test Test','Test','2014-05-01 04:27:32','2014-05-01 04:27:32',1),(10,'Test','Test Test Test','Biola University','2014-05-01 04:31:20','2014-05-01 04:31:20',1),(11,'Test','Test Test Test','Biola University','2014-05-01 04:33:25','2014-05-01 04:33:25',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sechedules`
--

LOCK TABLES `sechedules` WRITE;
/*!40000 ALTER TABLE `sechedules` DISABLE KEYS */;
INSERT INTO `sechedules` VALUES (1,'Monday','08:35:00','20:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(2,'Tuesday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(3,'Wednesday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(4,'Thursday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(5,'Friday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(6,'Saturday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(7,'Sunday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'PickUp','completed'),(8,'Monday','08:35:00','20:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(9,'Tuesday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(10,'Wednesday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(11,'Thursday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(12,'Friday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(13,'Saturday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(14,'Sunday','12:35:00','12:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Delivery','completed'),(15,'Monday','08:35:00','20:35:00','2014-03-06 12:37:41','2014-03-06 12:37:41',1,'Operation','completed'),(16,'Tuesday','09:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(17,'Wednesday','05:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(18,'Thursday','01:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(19,'Friday','00:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(20,'Saturday','03:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(21,'Sunday','02:35:00','23:35:00','2014-03-06 12:37:41','2014-04-02 07:20:44',1,'Operation','completed'),(22,'Monday','08:00:00','20:00:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(23,'Tuesday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(24,'Wednesday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(25,'Thursday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(26,'Friday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(27,'Saturday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(28,'Sunday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'PickUp','completed'),(29,'Monday','08:00:00','20:00:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(30,'Tuesday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(31,'Wednesday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(32,'Thursday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(33,'Friday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(34,'Saturday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(35,'Sunday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Delivery','completed'),(36,'Monday','03:00:00','23:00:00','2014-03-06 12:51:17','2014-03-31 06:37:11',2,'Operation','completed'),(37,'Tuesday','04:46:00','23:46:00','2014-03-06 12:51:17','2014-03-31 06:42:44',2,'Operation','completed'),(38,'Wednesday','00:00:00','23:59:00','2014-03-06 12:51:17','2014-04-02 07:21:22',2,'Operation','completed'),(39,'Thursday','00:46:00','18:46:00','2014-03-06 12:51:17','2014-04-02 07:21:22',2,'Operation','completed'),(40,'Friday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Operation','completed'),(41,'Saturday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Operation','completed'),(42,'Sunday','08:46:00','20:46:00','2014-03-06 12:51:17','2014-03-06 12:51:17',2,'Operation','completed'),(43,'Monday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(44,'Tuesday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(45,'Wednesday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(46,'Thursday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(47,'Friday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(48,'Saturday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(49,'Sunday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'PickUp','completed'),(50,'Monday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(51,'Tuesday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(52,'Wednesday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(53,'Thursday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(54,'Friday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(55,'Saturday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(56,'Sunday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Delivery','completed'),(57,'Monday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Operation','completed'),(58,'Tuesday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Operation','completed'),(59,'Wednesday','00:48:00','23:48:00','2014-03-06 14:49:21','2014-04-02 07:21:52',3,'Operation','completed'),(60,'Thursday','02:48:00','23:48:00','2014-03-06 14:49:21','2014-04-02 07:21:52',3,'Operation','completed'),(61,'Friday','01:48:00','23:48:00','2014-03-06 14:49:21','2014-04-02 07:21:52',3,'Operation','completed'),(62,'Saturday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Operation','completed'),(63,'Sunday','14:48:00','14:48:00','2014-03-06 14:49:21','2014-03-06 14:49:21',3,'Operation','completed'),(85,'Monday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(86,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(87,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:25','2014-03-11 07:08:25',5,'PickUp','completed'),(88,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(89,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(90,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(91,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'PickUp','completed'),(92,'Monday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(93,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(94,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(95,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(96,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(97,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(98,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Delivery','completed'),(99,'Monday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(100,'Tuesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(101,'Wednesday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(102,'Thursday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(103,'Friday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(104,'Saturday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(105,'Sunday','00:00:00','00:00:00','2014-03-11 07:08:26','2014-03-11 07:08:26',5,'Operation','completed'),(127,'Monday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(128,'Tuesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(129,'Wednesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(130,'Thursday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(131,'Friday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(132,'Saturday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(133,'Sunday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'PickUp','completed'),(134,'Monday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(135,'Tuesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(136,'Wednesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(137,'Thursday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(138,'Friday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(139,'Saturday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(140,'Sunday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Delivery','completed'),(141,'Monday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(142,'Tuesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(143,'Wednesday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(144,'Thursday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(145,'Friday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(146,'Saturday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(147,'Sunday','00:00:00','00:00:00','2014-04-08 10:55:10','2014-04-08 10:55:10',7,'Operation','completed'),(169,'Monday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'PickUp','completed'),(170,'Tuesday','06:00:00','23:00:00','2014-04-08 11:10:02','2014-04-14 10:11:24',9,'PickUp','completed'),(171,'Wednesday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'PickUp','completed'),(172,'Thursday','00:00:00','17:00:00','2014-04-08 11:10:02','2014-04-14 10:11:16',9,'PickUp','completed'),(173,'Friday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'PickUp','completed'),(174,'Saturday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'PickUp','completed'),(175,'Sunday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'PickUp','completed'),(176,'Monday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-14 15:02:14',9,'Delivery','completed'),(177,'Tuesday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'Delivery','completed'),(178,'Wednesday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-14 10:11:42',9,'Delivery','completed'),(179,'Thursday','00:00:00','07:00:00','2014-04-08 11:10:02','2014-04-14 07:26:51',9,'Delivery','completed'),(180,'Friday','00:00:00','14:00:00','2014-04-08 11:10:02','2014-04-14 15:02:19',9,'Delivery','completed'),(181,'Saturday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'Delivery','completed'),(182,'Sunday','00:00:00','00:00:00','2014-04-08 11:10:02','2014-05-08 05:17:24',9,'Delivery','completed'),(183,'Monday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-14 10:11:32',9,'Operation','completed'),(184,'Tuesday','01:00:00','23:00:00','2014-04-08 11:10:02','2014-05-08 05:25:26',9,'Operation','pending'),(185,'Wednesday','00:00:00','10:00:00','2014-04-08 11:10:02','2014-05-08 05:17:21',9,'Operation','completed'),(186,'Thursday','00:00:00','20:00:00','2014-04-08 11:10:02','2014-04-14 07:26:31',9,'Operation','completed'),(187,'Friday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-14 10:11:37',9,'Operation','completed'),(188,'Saturday','00:00:00','23:00:00','2014-04-08 11:10:02','2014-04-09 06:39:19',9,'Operation','completed'),(189,'Sunday','23:00:00','03:00:00','2014-04-08 11:10:02','2014-05-08 05:31:27',9,'Operation','pending'),(190,'Monday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(191,'Tuesday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(192,'Wednesday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(193,'Thursday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(194,'Friday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(195,'Saturday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(196,'Sunday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'PickUp','completed'),(197,'Monday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'Delivery','completed'),(198,'Tuesday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'Delivery','completed'),(199,'Wednesday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'Delivery','completed'),(200,'Thursday','00:00:00','00:00:00','2014-04-10 14:18:27','2014-04-10 14:18:27',10,'Delivery','completed'),(201,'Friday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Delivery','completed'),(202,'Saturday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Delivery','completed'),(203,'Sunday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Delivery','completed'),(204,'Monday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(205,'Tuesday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(206,'Wednesday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(207,'Thursday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(208,'Friday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(209,'Saturday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(210,'Sunday','00:00:00','00:00:00','2014-04-10 14:18:28','2014-04-10 14:18:28',10,'Operation','completed'),(211,'Monday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(212,'Tuesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(213,'Wednesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(214,'Thursday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(215,'Friday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(216,'Saturday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(217,'Sunday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'PickUp','completed'),(218,'Monday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(219,'Tuesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(220,'Wednesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(221,'Thursday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(222,'Friday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(223,'Saturday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(224,'Sunday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Delivery','completed'),(225,'Monday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(226,'Tuesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(227,'Wednesday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(228,'Thursday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(229,'Friday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(230,'Saturday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(231,'Sunday','00:00:00','00:00:00','2014-04-30 13:27:59','2014-04-30 13:27:59',11,'Operation','completed'),(232,'Monday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(233,'Tuesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(234,'Wednesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(235,'Thursday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(236,'Friday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(237,'Saturday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(238,'Sunday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'PickUp','completed'),(239,'Monday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(240,'Tuesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(241,'Wednesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(242,'Thursday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(243,'Friday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(244,'Saturday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(245,'Sunday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Delivery','completed'),(246,'Monday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(247,'Tuesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(248,'Wednesday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(249,'Thursday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(250,'Friday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(251,'Saturday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(252,'Sunday','00:00:00','00:00:00','2014-04-30 14:10:17','2014-04-30 14:10:17',12,'Operation','completed'),(253,'Monday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(254,'Tuesday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(255,'Wednesday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(256,'Thursday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(257,'Friday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(258,'Saturday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(259,'Sunday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'PickUp','completed'),(260,'Monday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(261,'Tuesday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(262,'Wednesday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(263,'Thursday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(264,'Friday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(265,'Saturday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(266,'Sunday','00:00:00','00:00:00','2014-04-30 14:20:05','2014-04-30 14:20:05',13,'Delivery','completed'),(267,'Monday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(268,'Tuesday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(269,'Wednesday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(270,'Thursday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(271,'Friday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(272,'Saturday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed'),(273,'Sunday','00:00:00','00:00:00','2014-04-30 14:20:06','2014-04-30 14:20:06',13,'Operation','completed');
/*!40000 ALTER TABLE `sechedules` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','','admin@ordering.com','$2a$10$1xR75YnyVpkDh/OichWsmOo8Z54pT3VMdmiuCfxedRpaFDJ7mcZdm',NULL,NULL,NULL,125,'2014-05-08 05:17:17','2014-05-06 11:45:36','127.0.0.1','127.0.0.1','2014-03-03 11:12:25','2014-05-08 05:17:17','','customer_1',144710,0),(2,'Suneel','Kumar','sunny.ciitlahore@gmail.com','$2a$10$Zm1z2f1KIk81iEPXei6BhO2CrGeoBOGN3B7N61wUfk9I.dPDWH2VW','5a58aefb82e1920364ec6b501a76a70a083482280cb2d147e0e0adec9c7a0af1','2014-03-06 09:57:08',NULL,0,NULL,NULL,NULL,NULL,'2014-03-06 06:57:12','2014-03-06 09:57:08',NULL,NULL,0,0),(3,'Suneel','Kumar','sk@gmail.com','$2a$10$zJv8gMm4SLHY1KpIKDlE2.Dxo16ZVZd9oEvjvJoDt0h0u4su.um6K','b9e0599a2fe752ddc369ac21115a3c641d3ead32931016a66dbcc2c31d48c3ec','2014-03-06 08:12:30',NULL,1,'2014-03-06 07:36:34','2014-03-06 07:36:34','127.0.0.1','127.0.0.1','2014-03-06 07:36:34','2014-03-06 08:12:30','Comsats (Lahore Campus)',NULL,0,0),(4,'Suneel','Kumar','mujtaba@gmail.com','$2a$10$FGARh856xkhD8y7J0pZHaupA0lCol1XSLH4qhZPdxyTSjj3L2lxLa',NULL,NULL,NULL,1,'2014-03-27 08:30:58','2014-03-27 08:30:58','127.0.0.1','127.0.0.1','2014-03-27 08:30:58','2014-03-27 08:30:58','Comsats (Lahore Campus)',NULL,0,0),(5,'Suneel','Kumar..','vk@gmail.com','$2a$10$i7E.wHPRQ4FLAXrxC5uy2uhSun9F8585.pPht623z7.9Wgko/u732',NULL,NULL,NULL,3,'2014-04-18 06:17:41','2014-03-28 08:02:45','127.0.0.1','127.0.0.1','2014-03-28 06:40:54','2014-04-18 06:20:24','Jame Quick (Biola University)','customer_5',0,0),(8,'test','test','test@gmail.com','$2a$10$3/JzyKfAJPF2w4lkgm5qaOr0c34Av/cFNVx6RN9TTQVSbahhXo9sK',NULL,NULL,NULL,13,'2014-04-08 12:00:13','2014-04-04 08:28:37','127.0.0.1','127.0.0.1','2014-04-01 14:39:18','2014-05-07 06:59:33','Comsats (Lahore Campus)','customer_8',60985,0),(9,'test','test','test@mail.com','$2a$10$FcalExz/wGTbTu3DPnrB7u47ed1AFV64G5oe6Uwj0in8N/0Fwns8.',NULL,NULL,NULL,3,'2014-04-04 07:30:50','2014-04-04 07:28:16','127.0.0.1','127.0.0.1','2014-04-04 07:18:18','2014-04-04 07:30:50','Jame Quick (Biola University)','customer_9',0,0),(10,'Suneel','Kumar','admin@restaurant.com','$2a$10$Rap1Gf.cp3.kjsQ.zT3vC.KTgTgRDeRIVcEutcyN4aB/7OyQR9MWK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-08 10:34:46','2014-04-08 10:34:46',NULL,'customer_10',0,0),(11,'John','levaer','john@gmail.com','$2a$10$McsJEbXLJpltcTmsStzpCOGY56kLsR8cjLIp.E80ZHHtW.7n7pLxq',NULL,NULL,NULL,1,'2014-04-08 11:02:22','2014-04-08 11:02:22','127.0.0.1','127.0.0.1','2014-04-08 10:55:07','2014-04-08 11:02:22',NULL,'customer_11',0,0),(12,'test','admin','testadmin@gmail.com','$2a$10$atwxk38Ir7zkSWm9LGCeGuDYlCEmL2FD8a7bFBlMLudYEQPgtheqe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-08 11:09:03','2014-04-08 11:09:03',NULL,'customer_12',0,0),(13,'test','admin','testadmin1@gmail.com','$2a$10$bTfyqcHHRkDJBqbc3Va35eMG33nNepwZAAl4PurCFoShIlIaaFbra',NULL,NULL,NULL,29,'2014-05-27 07:25:53','2014-05-26 04:54:38','127.0.0.1','127.0.0.1','2014-04-08 11:10:00','2014-05-28 06:12:45',NULL,'customer_13',9370,1),(14,'Avinesh','Kumar','avinesh@hotmail.com','$2a$10$yn2Z3ZGN4jwBhq15YhBjyelR8SZyWA7gyC0JIU0wSc0HZXwtpgPp.',NULL,NULL,NULL,7,'2014-05-06 06:07:11','2014-05-06 06:06:19','127.0.0.1','127.0.0.1','2014-04-08 12:15:11','2014-05-07 06:59:16','Jame Quick (Biola University)','customer_14',132625,0),(15,'','','eamil@email.com','$2a$10$3zMQ1v.QEN8.VWkrnZrbp.t0euB.BkrVStbXr9v/9mBhUMOxvUHym',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-10 14:18:22','2014-04-10 14:18:22',NULL,'customer_15',0,0),(16,'','','email@email.com','$2a$10$d0a9LL3L.wiPFQ2dSpBHd.qb2ffm5mTR.vDHUQj.ACYWQWmfSfmxW',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-10 14:31:12','2014-04-10 14:31:12',NULL,'customer_16',0,0),(17,'Suneel','Kumar','suuny@gmail.com','$2a$10$xIypWpdE8.6n5KekcevXROC5/Ss4fG1.t5UZeSGXczSmxlRurnWVC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 13:27:56','2014-04-30 13:27:56',NULL,'customer_17',0,0),(18,'test','sunny','test_suny@gmail.com','$2a$10$7URL4IY3HQj0ORdw9OtUJe6R9P55jLJk9sUhypqY9RLS2awH/9zgC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 14:10:08','2014-04-30 14:10:08',NULL,'customer_18',0,0),(19,'John','levaer','kapil@gmail.com','$2a$10$VFGF.VPwxEjwM4FgMVS3Q.FGablWMXn.LQcPbhONNeQL6LKu8.gD6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2014-04-30 14:19:56','2014-04-30 14:19:56',NULL,'customer_19',0,0),(22,'test','User','test_user@gmail.com','$2a$10$mOMmvTTGNg33rLNqq0SEGOaoI0nv.Zgohz/5KBIl2ScW96wcime4G',NULL,NULL,NULL,1,'2014-05-09 07:59:26','2014-05-09 07:59:26','127.0.0.1','127.0.0.1','2014-05-09 07:59:23','2014-05-09 07:59:26','','26455566',0,0),(23,'Test','Test','test@test.com','$2a$10$6D1i6WiItXJ.SEWHyd68Q.4a4AkSNkMJ7lYn6RpMw/HGAqRk9xe9m',NULL,NULL,NULL,1,'2014-05-09 08:05:47','2014-05-09 08:05:47','127.0.0.1','127.0.0.1','2014-05-09 08:05:43','2014-05-09 08:05:47','','26455592',0,0);
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
INSERT INTO `users_roles` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(8,1),(9,1),(11,1),(11,4),(12,1),(12,4),(13,1),(13,4),(14,1),(15,1),(15,4),(16,1),(16,4),(17,1),(17,4),(18,1),(18,4),(19,1),(19,4),(22,1),(23,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (3,6,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',2,NULL,NULL,'2014-04-10 11:31:09','2014-04-10 11:31:09'),(4,6,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- \n- 2\n',3,NULL,NULL,'2014-04-10 11:31:56','2014-04-10 11:31:56'),(5,6,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- 2\n- \nuser_id:\n- 12\n- \n',4,1,NULL,'2014-04-10 11:32:34','2014-04-10 11:32:34'),(6,7,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',2,NULL,NULL,'2014-04-10 11:33:35','2014-04-10 11:33:35'),(7,7,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- 2\n- 5\n',3,NULL,NULL,'2014-04-10 11:34:08','2014-04-10 11:34:08'),(8,7,'Restaurant',NULL,NULL,NULL,'---\nschool_id:\n- 5\n- 2\n',4,2,NULL,'2014-04-10 11:34:18','2014-04-10 11:34:18'),(9,8,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',2,NULL,NULL,'2014-04-10 11:35:52','2014-04-10 11:35:52'),(10,8,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- 12\n- \nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-10 11:36:20','2014-04-10 11:36:20'),(11,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',2,2,NULL,'2014-04-11 13:18:28','2014-04-11 13:18:28'),(12,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:18:51','2014-04-11 13:18:51'),(13,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunch\n- Lunchs\n',2,NULL,NULL,'2014-04-11 13:33:11','2014-04-11 13:33:11'),(14,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunchs\n- Lunch\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:37:30','2014-04-11 13:37:30'),(15,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast\n- Breake Fast 1\n',2,NULL,NULL,'2014-04-11 13:42:12','2014-04-11 13:42:12'),(16,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast 1\n- Breake Fast\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:42:13','2014-04-11 13:42:13'),(17,71,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Sandwitch\n- Wildberry/ hurricone Smoothie\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\n',2,NULL,NULL,'2014-04-11 13:55:30','2014-04-11 13:55:30'),(18,71,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Wildberry/ hurricone Smoothie\n- Sandwitch\naddons:\n- false\n- true\ninstruction:\n- false\n- true\npopluar_dish:\n- false\n- true\nspicy_dish:\n- false\n- true\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 13:55:30','2014-04-11 13:55:30'),(19,68,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta with Sauce\n- Pasta\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\n',2,NULL,NULL,'2014-04-11 14:03:11','2014-04-11 14:03:11'),(20,68,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta\n- Pasta with Sauce\naddons:\n- false\n- true\ninstruction:\n- false\n- true\npopluar_dish:\n- false\n- true\nspicy_dish:\n- false\n- true\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-11 14:03:11','2014-04-11 14:03:11'),(21,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-11 20:27:33','2014-04-11 20:27:33'),(22,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',5,1,NULL,'2014-04-11 20:28:30','2014-04-11 20:28:30'),(23,8,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-11 20:29:57','2014-04-11 20:29:57'),(24,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',6,4,NULL,'2014-04-11 20:30:06','2014-04-11 20:30:06'),(25,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',7,1,NULL,'2014-04-11 20:32:21','2014-04-11 20:32:21'),(26,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',8,6,NULL,'2014-04-11 20:34:14','2014-04-11 20:34:14'),(27,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-11 20:34:35','2014-04-11 20:34:35'),(28,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunch\n- Lunchs\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 05:39:31','2014-04-14 05:39:31'),(29,14,'Restaurant',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-04-14 05:44:57','2014-04-14 05:44:57'),(30,68,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta with Sauce\n- Pasta\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 06:04:56','2014-04-14 06:04:56'),(31,72,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Parath\n- Paratha\n',2,NULL,NULL,'2014-04-14 06:05:29','2014-04-14 06:05:29'),(32,72,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Paratha\n- Parath\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 06:05:29','2014-04-14 06:05:29'),(33,72,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Parath\n- Paratha\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 06:05:37','2014-04-14 06:05:37'),(34,71,'MenuItem',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 06:06:27','2014-04-14 06:06:27'),(35,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:13:50','2014-04-14 07:13:50'),(36,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:13:51','2014-04-14 07:13:51'),(37,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 06:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:04','2014-04-14 07:16:04'),(38,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 06:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:04','2014-04-14 07:16:04'),(39,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:13','2014-04-14 07:16:13'),(40,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:13','2014-04-14 07:16:13'),(41,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:16:37','2014-04-14 07:16:37'),(42,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:16:37','2014-04-14 07:16:37'),(43,186,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:26:31','2014-04-14 07:26:31'),(44,179,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:26:51','2014-04-14 07:26:51'),(45,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 07:27:06','2014-04-14 07:27:06'),(46,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:27:06','2014-04-14 07:27:06'),(47,67,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta with Sauce\n- Pasta\ndescription:\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio\n  dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait\n  nulla facilisi. Duis autem vel eum iriure dolor in hendrerit in vulputate velit\n  esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum\n  dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore\n  et dolore magna aliqua. Stet clita kasd gubergren, no sea takimata sanctus est.\n  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis\n  nisl ut aliquip ex ea commodo consequat.\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisism veniam, quis nostrud exerci tation\n  ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\n',2,NULL,NULL,'2014-04-14 07:27:44','2014-04-14 07:27:44'),(48,67,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta\n- Pasta with Sauce\ndescription:\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisism veniam, quis nostrud exerci tation\n  ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio\n  dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait\n  nulla facilisi. Duis autem vel eum iriure dolor in hendrerit in vulputate velit\n  esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum\n  dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore\n  et dolore magna aliqua. Stet clita kasd gubergren, no sea takimata sanctus est.\n  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis\n  nisl ut aliquip ex ea commodo consequat.\naddons:\n- false\n- true\ninstruction:\n- false\n- true\npopluar_dish:\n- false\n- true\nspicy_dish:\n- false\n- true\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 07:27:44','2014-04-14 07:27:44'),(49,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 07:32:33','2014-04-14 07:32:33'),(50,187,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:33','2014-04-14 09:31:33'),(51,187,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 17:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:34','2014-04-14 09:31:34'),(52,183,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\n',5,NULL,NULL,'2014-04-14 09:31:42','2014-04-14 09:31:42'),(53,183,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nclosing_time:\n- 2000-01-01 10:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 09:31:42','2014-04-14 09:31:42'),(54,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:48','2014-04-14 09:31:48'),(55,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 10:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:48','2014-04-14 09:31:48'),(56,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 07:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:31:55','2014-04-14 09:31:55'),(57,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 07:00:00.000000000 Z\n- 2000-01-01 03:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:31:55','2014-04-14 09:31:55'),(58,178,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 02:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:02','2014-04-14 09:32:02'),(59,178,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 02:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:02','2014-04-14 09:32:02'),(60,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 14:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:09','2014-04-14 09:32:09'),(61,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 14:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:10','2014-04-14 09:32:10'),(62,176,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 20:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:19','2014-04-14 09:32:19'),(63,176,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 20:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:19','2014-04-14 09:32:19'),(64,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 09:32:26','2014-04-14 09:32:26'),(65,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 17:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 09:32:26','2014-04-14 09:32:26'),(66,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner\n- Dinner food\n',2,NULL,NULL,'2014-04-14 10:03:20','2014-04-14 10:03:20'),(67,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner food\n- Dinner\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 10:03:20','2014-04-14 10:03:20'),(68,40,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Lunchs\n- Lunch\n',5,NULL,NULL,'2014-04-14 10:03:32','2014-04-14 10:03:32'),(69,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 10:03:32','2014-04-14 10:03:32'),(70,172,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 17:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 10:11:16','2014-04-14 10:11:16'),(71,170,'Sechedule',NULL,NULL,NULL,'---\nopening_time:\n- 2000-01-01 00:00:00.000000000 Z\n- 2000-01-01 06:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 10:11:24','2014-04-14 10:11:24'),(72,183,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,1,NULL,'2014-04-14 10:11:32','2014-04-14 10:11:32'),(73,187,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 10:11:37','2014-04-14 10:11:37'),(74,178,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 10:11:42','2014-04-14 10:11:42'),(75,72,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Paratha\n- Parath\nstatus:\n- completed\n- pending\n',5,3,NULL,'2014-04-14 10:12:04','2014-04-14 10:12:04'),(76,72,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Parath\n- Paratha\nstatus:\n- pending\n- completed\n',6,4,NULL,'2014-04-14 10:41:07','2014-04-14 10:41:07'),(77,44,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Breake Fast\n- Breake Fast 1\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 11:13:50','2014-04-14 11:13:50'),(78,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 11:50:43','2014-04-14 11:50:43'),(79,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 12:09:56','2014-04-14 12:09:56'),(80,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 12:11:53','2014-04-14 12:11:53'),(81,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',4,1,NULL,'2014-04-14 12:12:49','2014-04-14 12:12:49'),(82,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',5,3,NULL,'2014-04-14 12:13:23','2014-04-14 12:13:23'),(83,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 12:13:31','2014-04-14 12:13:31'),(84,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 12:14:02','2014-04-14 12:14:02'),(85,5,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-14 12:18:14','2014-04-14 12:18:14'),(86,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',4,1,NULL,'2014-04-14 12:18:43','2014-04-14 12:18:43'),(87,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Students\n- hello\n',8,NULL,NULL,'2014-04-14 12:21:11','2014-04-14 12:21:11'),(88,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',5,3,NULL,'2014-04-14 12:26:33','2014-04-14 12:26:33'),(89,67,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta with Sauce\n- Pasta\ndescription:\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio\n  dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait\n  nulla facilisi. Duis autem vel eum iriure dolor in hendrerit in vulputate velit\n  esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum\n  dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore\n  et dolore magna aliqua. Stet clita kasd gubergren, no sea takimata sanctus est.\n  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis\n  nisl ut aliquip ex ea commodo consequat.\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisism veniam, quis nostrud exerci tation\n  ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 12:26:40','2014-04-14 12:26:40'),(90,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- hello\n- For Students\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-14 12:27:04','2014-04-14 12:27:04'),(91,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 12:31:11','2014-04-14 12:31:11'),(92,5,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Students\n- hello\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-04-14 12:32:44','2014-04-14 12:32:44'),(93,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-14 12:32:49','2014-04-14 12:32:49'),(94,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty\n- For Faculty 1\n',8,NULL,NULL,'2014-04-14 12:33:29','2014-04-14 12:33:29'),(95,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty 1\n- For Faculty\nstatus:\n- completed\n- pending\n',9,1,NULL,'2014-04-14 12:33:30','2014-04-14 12:33:30'),(96,2,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',2,1,NULL,'2014-04-14 12:54:01','2014-04-14 12:54:01'),(97,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nexpiration_date:\n- 2014-03-08 00:00:00.000000000 Z\n- 2014-03-15 00:00:00.000000000 Z\n',2,NULL,NULL,'2014-04-14 13:02:41','2014-04-14 13:02:41'),(98,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nexpiration_date:\n- 2014-03-15 00:00:00.000000000 Z\n- 2014-03-08 00:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 13:02:41','2014-04-14 13:02:41'),(99,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- 1920187_644699312275376_1137463388_n.jpg\ncoupon_image_content_type:\n- image/png\n- !binary |-\n  aW1hZ2UvanBlZw==\ncoupon_image_file_size:\n- 30171\n- 134899\n',2,NULL,NULL,'2014-04-14 13:03:19','2014-04-14 13:03:19'),(100,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- 1920187_644699312275376_1137463388_n.jpg\n- campus-bite.png\ncoupon_image_content_type:\n- !binary |-\n  aW1hZ2UvanBlZw==\n- image/png\ncoupon_image_file_size:\n- 134899\n- 30171\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-04-14 13:03:19','2014-04-14 13:03:19'),(101,2,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',3,1,NULL,'2014-04-14 13:03:34','2014-04-14 13:03:34'),(102,1,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 13:03:38','2014-04-14 13:03:38'),(103,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\n',5,NULL,NULL,'2014-04-14 13:04:16','2014-04-14 13:04:16'),(104,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- campus-bite.png\ncoupon_image_file_size:\n- 20868\n- 30171\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-04-14 13:04:16','2014-04-14 13:04:16'),(105,5,'RestaurantCoupon',NULL,NULL,NULL,'---\nrestaurant_id:\n- 6\n- 14\n',2,NULL,NULL,'2014-04-14 13:19:46','2014-04-14 13:19:46'),(106,3,'RestaurantCoupon',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 15:02:05','2014-04-14 15:02:05'),(107,176,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-14 15:02:14','2014-04-14 15:02:14'),(108,180,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 14:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-14 15:02:19','2014-04-14 15:02:19'),(109,189,'Sechedule',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',4,1,NULL,'2014-04-15 05:53:47','2014-04-15 05:53:47'),(110,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-04-15 05:53:57','2014-04-15 05:53:57'),(111,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- campus-bite.png\ncoupon_image_file_size:\n- 20868\n- 30171\nstatus:\n- completed\n- pending\n',8,6,NULL,'2014-04-15 05:53:57','2014-04-15 05:53:57'),(112,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- campus-bite.png\n- lunch.png\ncoupon_image_file_size:\n- 30171\n- 20868\nstatus:\n- pending\n- completed\n',9,7,NULL,'2014-04-15 05:54:07','2014-04-15 05:54:07'),(113,43,'MenuCategory',NULL,NULL,NULL,'---\ncategory_name:\n- Dinner\n- Dinner food\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-04-15 05:54:17','2014-04-15 05:54:17'),(114,6,'Restaurant',NULL,NULL,NULL,'---\navg_rating:\n- 2\n- 3\n',5,NULL,NULL,'2014-04-18 07:33:59','2014-04-18 07:33:59'),(115,6,'Restaurant',NULL,NULL,NULL,'---\nuser_id:\n- \n- 12\n',6,NULL,NULL,'2014-04-30 07:41:00','2014-04-30 07:41:00'),(116,16,'Restaurant',NULL,NULL,NULL,'---\ndelta:\n- false\n- true\n',2,NULL,NULL,'2014-04-30 14:08:16','2014-04-30 14:08:16'),(117,185,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 10:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-05-08 05:17:21','2014-05-08 05:17:21'),(118,182,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 00:00:00.000000000 Z\nstatus:\n- pending\n- completed\n',4,2,NULL,'2014-05-08 05:17:24','2014-05-08 05:17:24'),(119,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty\n- For Faculty 1\nstatus:\n- pending\n- completed\n',10,8,NULL,'2014-05-08 05:17:27','2014-05-08 05:17:27'),(120,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- pending\n- completed\n',7,5,NULL,'2014-05-08 05:17:30','2014-05-08 05:17:30'),(121,184,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 23:00:00.000000000 Z\n- 2000-01-01 05:00:00.000000000 Z\n',2,NULL,NULL,'2014-05-08 05:25:26','2014-05-08 05:25:26'),(122,184,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 05:00:00.000000000 Z\n- 2000-01-01 23:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-05-08 05:25:26','2014-05-08 05:25:26'),(123,6,'RestaurantOffer',NULL,NULL,NULL,'---\ndescription:\n- For Faculty 1\n- For Faculty\n',11,NULL,NULL,'2014-05-08 05:28:35','2014-05-08 05:28:35'),(124,6,'RestaurantOffer',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',12,1,NULL,'2014-05-08 05:28:36','2014-05-08 05:28:36'),(125,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- lunch.png\n- 1956949_752926184752158_5515196612279201404_o.jpg\ncoupon_image_content_type:\n- image/png\n- !binary |-\n  aW1hZ2UvanBlZw==\ncoupon_image_file_size:\n- 20868\n- 103900\n',10,NULL,NULL,'2014-05-08 05:28:59','2014-05-08 05:28:59'),(126,1,'RestaurantCoupon',NULL,NULL,NULL,'---\ncoupon_image_file_name:\n- 1956949_752926184752158_5515196612279201404_o.jpg\n- campus-bite.png\ncoupon_image_content_type:\n- !binary |-\n  aW1hZ2UvanBlZw==\n- image/png\ncoupon_image_file_size:\n- 103900\n- 30171\nstatus:\n- completed\n- pending\n',11,1,NULL,'2014-05-08 05:28:59','2014-05-08 05:28:59'),(127,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 03:00:00.000000000 Z\n- 2000-01-01 02:00:00.000000000 Z\n',5,NULL,NULL,'2014-05-08 05:31:27','2014-05-08 05:31:27'),(128,189,'Sechedule',NULL,NULL,NULL,'---\nclosing_time:\n- 2000-01-01 02:00:00.000000000 Z\n- 2000-01-01 03:00:00.000000000 Z\nstatus:\n- completed\n- pending\n',6,1,NULL,'2014-05-08 05:31:27','2014-05-08 05:31:27'),(129,67,'MenuItem',NULL,NULL,NULL,'---\nitem_name:\n- Pasta\n- Pasta with Sauce\ndescription:\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisism veniam, quis nostrud exerci tation\n  ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.\n- Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat,\n  vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio\n  dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait\n  nulla facilisi. Duis autem vel eum iriure dolor in hendrerit in vulputate velit\n  esse molestie consequat, vel illum dolore eu feugiat nulla facilisis. Lorem ipsum\n  dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore\n  et dolore magna aliqua. Stet clita kasd gubergren, no sea takimata sanctus est.\n  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis\n  nisl ut aliquip ex ea commodo consequat.\naddons:\n- false\n- true\ninstruction:\n- false\n- true\npopluar_dish:\n- false\n- true\nspicy_dish:\n- false\n- true\nstatus:\n- completed\n- pending\n',5,1,NULL,'2014-05-08 06:26:22','2014-05-08 06:26:22'),(130,70,'MenuItem',NULL,NULL,NULL,'---\naddons:\n- true\n- false\ninstruction:\n- true\n- false\npopluar_dish:\n- true\n- false\nspicy_dish:\n- true\n- false\n',2,NULL,NULL,'2014-05-08 06:28:23','2014-05-08 06:28:23'),(131,70,'MenuItem',NULL,NULL,NULL,'---\naddons:\n- false\n- true\ninstruction:\n- false\n- true\npopluar_dish:\n- false\n- true\nspicy_dish:\n- false\n- true\nstatus:\n- completed\n- pending\n',3,1,NULL,'2014-05-08 06:28:23','2014-05-08 06:28:23'),(132,40,'MenuCategory',NULL,NULL,NULL,'---\nstatus:\n- completed\n- pending\n',8,1,NULL,'2014-05-08 09:24:30','2014-05-08 09:24:30');
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

-- Dump completed on 2014-05-28 11:36:18
