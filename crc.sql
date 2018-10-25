DROP  DATABASE `crc`;

CREATE DATABASE `crc` /*!40100 DEFAULT CHARACTER SET utf8 */;

use `crc`;


-- MySQL dump 10.13  Distrib 5.7.18, for osx10.11 (x86_64)
--
-- Host: localhost    Database: crc
-- ------------------------------------------------------
-- Server version	5.5.51

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'mhq','123'),(2,'mmm','456'),(3,'china','123456789');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `car_makename` varchar(50) NOT NULL,
  `car_model` varchar(50) NOT NULL,
  `car_series` varchar(50) NOT NULL,
  `car_series_year` varchar(50) NOT NULL,
  `car_price_new` varchar(50) NOT NULL,
  `car_engine_size` varchar(50) NOT NULL,
  `car_fuel_system` varchar(50) NOT NULL,
  `car_tank_capacity` varchar(50) NOT NULL,
  `car_power` varchar(50) NOT NULL,
  `car_seating_capacity` varchar(50) NOT NULL,
  `car_standard_transmission` varchar(50) NOT NULL,
  `car_body_type` varchar(50) NOT NULL,
  `car_drive` varchar(50) NOT NULL,
  `car_wheelbase` varchar(50) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (14842,'BMW','3','E90 20i EXECUTIVE','2005','57200','2.0L','MULTI POINT F/INJ','65L','110Kw','5','6AS','4D SEDAN','RWD','2760mm',1),(14921,'VOLKSWAGEN','GOLF','1K 2.0 FSI COMFORTLINE','2005','32290','2.0L','ELECTRONIC F/INJ','55L','110Kw','5','6ATip','5D HATCHBACK','FWD','2595mm',1);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carbarn`
--

DROP TABLE IF EXISTS `carbarn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carbarn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `total_num` int(11) DEFAULT NULL,
  `loan_num` int(11) DEFAULT NULL,
  `desc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carbarn`
--

LOCK TABLES `carbarn` WRITE;
/*!40000 ALTER TABLE `carbarn` DISABLE KEYS */;
INSERT INTO `carbarn` VALUES (1,'BMW','BMW320','bmw.jpeg',10,1,'The sporty-elegant exterior is harmoniously coordinated, conveying aesthetics and dynamics as soon as you set eyes on it. With their horizontal slats, the intricately designed air inlets in the front apron combine with the front lights to emphasise the wide stance on the road. As an option, the double round headlights with integrated corona rings are available in LED technology. But it’s not just the front that’s an eye-catcher. The strikingly shaped rear bumper has two horizontal lines and the rear lights with LED technology are set wide apart, ensuring that the BMW 3 Series Touring retains its unmistakable appearance at night as well. The version with Luxury Line in Platinum Silver metallic and with 18” light alloy wheels is just one of many possibilities to add a personal touch to the BMW 3 Series Touring – each of which underscores the unique sporty character of the vehicle.\n'),(2,'BMW','BMW320i','bmw.jpeg',20,5,'The sporty-elegant exterior is harmoniously coordinated, conveying aesthetics and dynamics as soon as you set eyes on it. With their horizontal slats, the intricately designed air inlets in the front apron combine with the front lights to emphasise the wide stance on the road. As an option, the double round headlights with integrated corona rings are available in LED technology. But it’s not just the front that’s an eye-catcher. The strikingly shaped rear bumper has two horizontal lines and the rear lights with LED technology are set wide apart, ensuring that the BMW 3 Series Touring retains its unmistakable appearance at night as well. The version with Luxury Line in Platinum Silver metallic and with 18” light alloy wheels is just one of many possibilities to add a personal touch to the BMW 3 Series Touring – each of which underscores the unique sporty character of the vehicle. '),(3,'BMW','BMWX4','bmw.jpeg',8,0,'The sporty-elegant exterior is harmoniously coordinated, conveying aesthetics and dynamics as soon as you set eyes on it. With their horizontal slats, the intricately designed air inlets in the front apron combine with the front lights to emphasise the wide stance on the road. As an option, the double round headlights with integrated corona rings are available in LED technology. But it’s not just the front that’s an eye-catcher. The strikingly shaped rear bumper has two horizontal lines and the rear lights with LED technology are set wide apart, ensuring that the BMW 3 Series Touring retains its unmistakable appearance at night as well. The version with Luxury Line in Platinum Silver metallic and with 18” light alloy wheels is just one of many possibilities to add a personal touch to the BMW 3 Series Touring – each of which underscores the unique sporty character of the vehicle. ');
/*!40000 ALTER TABLE `carbarn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_birthday` varchar(50) NOT NULL,
  `customer_occupation` varchar(50) NOT NULL,
  `customer_gender` varchar(50) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (11016,'Wyatt H','135-535-017*','9666 Northridge Ct.','4/18/1983','Labour','M'),(11053,'Ana P','859-535-011*','1660 Stonyhill Circle','8/10/1984','Labour','M');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `store_address` varchar(50) NOT NULL,
  `store_phone` varchar(50) NOT NULL,
  `store_city` varchar(50) NOT NULL,
  `store_state` varchar(50) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Alexandria_stroe','3761 N. 14th St','1 (11) 543 535-0162','Alexandria','New South Wales'),(2,'Coffs Harbour_store','2243 W St.','1 (11) 543 535-0110','Coffs Harbour','New South Wales');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-18  0:21:06