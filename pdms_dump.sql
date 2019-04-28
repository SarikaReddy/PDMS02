-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: pdms
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (79),(79);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collect_status` char(1) NOT NULL,
  `pkg_collect_time` varchar(255) DEFAULT NULL,
  `pkg_entry_time` varchar(255) DEFAULT NULL,
  `pkg_id` varchar(255) DEFAULT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `reciever_name` varchar(255) DEFAULT NULL,
  `storeroom_status` char(1) NOT NULL,
  `stud_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_hb2h3wp6k8xs7dxaycyklyinv` (`pkg_id`),
  KEY `FKp4kjawb50vco1ocve5cigtdol` (`stud_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (28,'Y','Fri Apr 19 2019 13:23:59 GMT+0530 (India Standard Time)','Wed Apr 17 2019 00:29:01 GMT+0530 (India Standard Time)','1000','myntra','sarika(mt2019113)','N',1),(29,'Y','Fri Apr 19 2019 22:43:20 GMT+0530 (India Standard Time)','Fri Apr 19 2019 10:36:37 GMT+0530 (India Standard Time)','1001','Flipkart','divyanshi(mt2018034)','N',1),(31,'N',NULL,'Fri Apr 19 2019 10:40:46 GMT+0530 (India Standard Time)','1002','amazon',NULL,'N',1),(32,'N',NULL,'Fri Apr 19 2019 10:43:16 GMT+0530 (India Standard Time)','1003','nykaa',NULL,'N',1),(33,'N',NULL,'Fri Apr 19 2019 10:49:21 GMT+0530 (India Standard Time)','1004','snapdeal',NULL,'N',1),(34,'N',NULL,'Fri Apr 19 2019 10:50:15 GMT+0530 (India Standard Time)','1005','shein',NULL,'N',1),(35,'N',NULL,'Fri Apr 19 2019 10:52:13 GMT+0530 (India Standard Time)','1006','qwerty',NULL,'N',1),(36,'N',NULL,'Fri Apr 19 2019 10:53:39 GMT+0530 (India Standard Time)','1007','bewakoof.com',NULL,'N',1),(37,'N',NULL,'Fri Apr 19 2019 10:55:11 GMT+0530 (India Standard Time)','1008','dunzo',NULL,'N',1),(38,'N',NULL,'Fri Apr 19 2019 10:57:33 GMT+0530 (India Standard Time)','1009','amazon',NULL,'N',1),(39,'N',NULL,'Fri Apr 19 2019 11:01:28 GMT+0530 (India Standard Time)','1010','zomato',NULL,'N',1),(40,'N',NULL,'Fri Apr 19 2019 11:01:53 GMT+0530 (India Standard Time)','1011','swiggy',NULL,'N',1),(41,'N',NULL,'Sun Apr 21 2019 17:46:20 GMT+0530 (India Standard Time)','1012','Flipkart',NULL,'N',1),(42,'N',NULL,'Sun Apr 21 2019 17:53:09 GMT+0530 (India Standard Time)','1200','Nykaa',NULL,'N',2),(43,'N',NULL,'Sun Apr 21 2019 17:56:08 GMT+0530 (India Standard Time)','1201','Myntra',NULL,'N',2),(44,'N',NULL,'Sun Apr 21 2019 17:57:16 GMT+0530 (India Standard Time)','1203','Flipkart',NULL,'N',2),(45,'N',NULL,'Sun Apr 21 2019 18:00:23 GMT+0530 (India Standard Time)','1204','Amazon',NULL,'N',2),(46,'N',NULL,'Sun Apr 21 2019 18:03:41 GMT+0530 (India Standard Time)','1205','Nykaa',NULL,'N',2),(47,'N',NULL,'Sun Apr 21 2019 18:06:19 GMT+0530 (India Standard Time)','1013','nykaa',NULL,'N',1),(48,'N',NULL,'Sun Apr 21 2019 18:14:21 GMT+0530 (India Standard Time)','1206','Myntra',NULL,'N',2),(49,'N',NULL,'Sun Apr 21 2019 18:30:42 GMT+0530 (India Standard Time)','1014','Amazon',NULL,'N',1),(50,'N',NULL,'Sun Apr 21 2019 18:33:59 GMT+0530 (India Standard Time)','1015','nykaa',NULL,'N',1),(51,'N',NULL,'Sun Apr 21 2019 18:35:53 GMT+0530 (India Standard Time)','1207','amazon',NULL,'N',2),(52,'N',NULL,'Sun Apr 21 2019 18:39:21 GMT+0530 (India Standard Time)','1208','Amazon',NULL,'N',2),(53,'N',NULL,'Sun Apr 21 2019 18:58:28 GMT+0530 (India Standard Time)','1209','Flipkart',NULL,'N',2),(54,'N',NULL,'Sun Apr 21 2019 19:01:41 GMT+0530 (India Standard Time)','1016','Flipkart',NULL,'N',1),(55,'N',NULL,'Mon Apr 22 2019 00:47:14 GMT+0530 (India Standard Time)','1210','nykaa',NULL,'N',2),(56,'N',NULL,'Mon Apr 22 2019 00:50:47 GMT+0530 (India Standard Time)','1211','myntra',NULL,'N',2),(57,'N',NULL,'Mon Apr 22 2019 00:55:36 GMT+0530 (India Standard Time)','1300','myntra',NULL,'N',3),(58,'N',NULL,'Mon Apr 22 2019 00:59:31 GMT+0530 (India Standard Time)','1301','Flipkart',NULL,'N',3),(59,'N',NULL,'Mon Apr 22 2019 01:10:08 GMT+0530 (India Standard Time)','1302','amazon',NULL,'N',3),(60,'N',NULL,'Mon Apr 22 2019 01:13:14 GMT+0530 (India Standard Time)','1303','myntra',NULL,'N',3),(61,'N',NULL,'Mon Apr 22 2019 01:23:01 GMT+0530 (India Standard Time)','1304','amazon',NULL,'N',3),(62,'N',NULL,'Mon Apr 22 2019 01:25:09 GMT+0530 (India Standard Time)','1305','Flipkart',NULL,'N',3),(63,'N',NULL,'Mon Apr 22 2019 01:27:24 GMT+0530 (India Standard Time)','1306','amazon',NULL,'N',3),(64,'N',NULL,'Mon Apr 22 2019 09:58:00 GMT+0530 (India Standard Time)','1307','amazon',NULL,'N',3),(65,'N',NULL,'Mon Apr 22 2019 10:05:46 GMT+0530 (India Standard Time)','1308','myntra',NULL,'N',3),(66,'N',NULL,'Mon Apr 22 2019 10:14:22 GMT+0530 (India Standard Time)','1309','Flipkart',NULL,'N',3),(67,'N',NULL,'Mon Apr 22 2019 10:25:49 GMT+0530 (India Standard Time)','1310','amazon',NULL,'N',3),(68,'N',NULL,'Tue Apr 23 2019 10:15:17 GMT+0530 (India Standard Time)','1311','myntra',NULL,'N',3),(69,'N',NULL,'Tue Apr 23 2019 10:18:57 GMT+0530 (India Standard Time)','1312','Flipkart',NULL,'N',3),(70,'N',NULL,'Tue Apr 23 2019 10:25:13 GMT+0530 (India Standard Time)','1313','myntra',NULL,'N',3),(71,'N',NULL,'Tue Apr 23 2019 10:26:09 GMT+0530 (India Standard Time)','','',NULL,'N',3),(72,'N',NULL,'Tue Apr 23 2019 10:26:49 GMT+0530 (India Standard Time)','1212','Flipkart',NULL,'N',2),(73,'N',NULL,'Tue Apr 23 2019 10:41:01 GMT+0530 (India Standard Time)','1017','amazon',NULL,'N',1),(74,'N',NULL,'Tue Apr 23 2019 10:47:12 GMT+0530 (India Standard Time)','1018','nykaa',NULL,'N',1),(75,'N',NULL,'Tue Apr 23 2019 10:52:21 GMT+0530 (India Standard Time)','1019','snapdeal',NULL,'N',1),(76,'N',NULL,'Tue Apr 23 2019 10:53:41 GMT+0530 (India Standard Time)','1020','nykaa',NULL,'N',1),(77,'N',NULL,'Tue Apr 23 2019 10:55:00 GMT+0530 (India Standard Time)','1213','Nykaa',NULL,'N',2),(78,'N',NULL,'Tue Apr 23 2019 10:56:50 GMT+0530 (India Standard Time)','1021','amazon',NULL,'N',1);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rollno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'8840074454','Teegala.Sarika@iiitb.org','Teegala Sarika','MT2018124'),(2,'7583047072','Akruti.Chavre@iiitb.org','Akruti Chavre','MT2018005'),(3,'7017834153','Mudit.Mittal@iiitb.org','Mudit Mittal','MT2018065');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-24  0:43:15
