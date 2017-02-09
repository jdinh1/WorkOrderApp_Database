-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 4350
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

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
-- Temporary table structure for view `cancelled_view`
--

DROP TABLE IF EXISTS `cancelled_view`;
/*!50001 DROP VIEW IF EXISTS `cancelled_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cancelled_view` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `complete_view`
--

DROP TABLE IF EXISTS `complete_view`;
/*!50001 DROP VIEW IF EXISTS `complete_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `complete_view` (
  `name` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `created_date` tinyint NOT NULL,
  `completed_date` tinyint NOT NULL,
  `workorder_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `problem_type_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `path` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `completed_view`
--

DROP TABLE IF EXISTS `completed_view`;
/*!50001 DROP VIEW IF EXISTS `completed_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `completed_view` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `created`
--

DROP TABLE IF EXISTS `created`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `created` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `work_order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `cancel_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `work_order_id` (`work_order_id`),
  CONSTRAINT `created_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `created_ibfk_2` FOREIGN KEY (`work_order_id`) REFERENCES `work_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `created`
--

LOCK TABLES `created` WRITE;
/*!40000 ALTER TABLE `created` DISABLE KEYS */;
INSERT INTO `created` VALUES (25,32,6,'2016-10-20 17:20:09',NULL),(26,33,7,'2016-10-21 07:22:25',NULL),(27,34,7,'2016-10-21 07:42:16',NULL),(28,35,6,'2016-10-21 07:53:14',NULL),(32,39,10,'2016-11-21 18:54:21',NULL),(33,40,10,'2016-11-21 19:28:10',NULL),(34,41,10,'2016-11-22 01:38:07',NULL),(35,42,10,'2016-11-22 01:39:08',NULL),(36,43,10,'2016-11-22 01:40:41',NULL),(37,44,6,'2016-11-30 21:17:24',NULL),(38,45,6,'2016-11-30 21:20:46',NULL),(39,46,6,'2016-12-01 01:48:09',NULL),(40,49,6,'2016-12-01 01:55:31',NULL),(41,52,6,'2016-12-01 02:12:51',NULL),(42,53,10,'2016-12-01 06:40:24',NULL),(43,54,10,'2016-12-01 07:13:10',NULL);
/*!40000 ALTER TABLE `created` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_type`
--

DROP TABLE IF EXISTS `emp_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_type` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `emp_type_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_emp`),
  UNIQUE KEY `emp_type_name` (`emp_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_type`
--

LOCK TABLES `emp_type` WRITE;
/*!40000 ALTER TABLE `emp_type` DISABLE KEYS */;
INSERT INTO `emp_type` VALUES (0,'No'),(1,'Yes');
/*!40000 ALTER TABLE `emp_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_name` varchar(255) NOT NULL,
  `room_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Pull Up Bar',3),(2,'Squat Station',3),(3,'Barbells',6),(4,'Bench Press',6),(5,'Incline Bench Press',6),(6,'Hammer Strength machine',6),(7,'Cables and Pulleys',11),(8,'Treadmill',3),(10,'Other',11),(11,'Railing',1),(12,'Track Floor',1),(13,'Pool Ladder',2),(14,'Lifeguard Tower',2),(15,'Pool Chair #1',2),(16,'Pool Chair #2',2),(17,'Tower Rack',4),(18,'Shower Door #1',4),(19,'Shower Door #2',4),(20,'Locker Bench #1',4),(21,'Locker Bench #2',4),(22,'Urinal #1',5),(23,'Urinal #2',5),(24,'Tower Dispenser',5),(25,'Sink #1',5),(26,'Sink #2',5),(27,'Treadmill #1',7),(28,'Treadmill #2',7),(29,'Treadmill #3',7),(30,'Elliptical Bike #1',8),(31,'Elliptical Bike #2',8),(32,'Elliptical Bike #3',8),(33,'Elliptical Bike #4',8),(34,'Room 1 Object A',9),(35,'Room 1 Object B',9),(36,'Room 2 Object A',10),(37,'Room 2 Object B',10);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `inprogress_view`
--

DROP TABLE IF EXISTS `inprogress_view`;
/*!50001 DROP VIEW IF EXISTS `inprogress_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `inprogress_view` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `pending_view`
--

DROP TABLE IF EXISTS `pending_view`;
/*!50001 DROP VIEW IF EXISTS `pending_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `pending_view` (
  `username` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL,
  `status_id` tinyint NOT NULL,
  `id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `priority`
--

DROP TABLE IF EXISTS `priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priority`
--

LOCK TABLES `priority` WRITE;
/*!40000 ALTER TABLE `priority` DISABLE KEYS */;
INSERT INTO `priority` VALUES (1,'Critical'),(2,'High'),(3,'Medium'),(4,'Low'),(5,'Recurring');
/*!40000 ALTER TABLE `priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem`
--

DROP TABLE IF EXISTS `problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_description` varchar(255) NOT NULL,
  `type_of_problem_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  `priority_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type_of_problem_id` (`type_of_problem_id`),
  KEY `room_id` (`room_id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `priority` (`priority_id`),
  CONSTRAINT `problem_ibfk_1` FOREIGN KEY (`type_of_problem_id`) REFERENCES `type_of_problem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `problem_ibfk_3` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `problem_ibfk_4` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `problem_ibfk_5` FOREIGN KEY (`priority_id`) REFERENCES `priority` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem`
--

LOCK TABLES `problem` WRITE;
/*!40000 ALTER TABLE `problem` DISABLE KEYS */;
INSERT INTO `problem` VALUES (40,'Broken wall mount. Crack in wall mounted structure near pool.',2,2,10,3),(42,'Pull up bar is worn may cause injury.',1,1,1,1),(43,'Light in entryway flickers.',1,11,10,3),(44,'Need to clean strange green squares off the mirror',1,4,1,1),(45,'Check pool water levels.',10,2,10,5),(46,'Oil treadmill gears.',6,7,8,5),(60,'Dirty floor\n',4,2,1,1),(61,'Hole in wall\n',1,9,33,2),(62,'Leak?',1,11,1,4),(63,'Dirty',5,1,11,4),(64,'Rusty',2,5,23,3),(65,'Broken handles.',7,8,32,2),(66,'Broken handles.',7,8,32,2),(67,'',1,7,28,1),(68,'Chair damaged.',1,11,10,1),(69,'Something\'s wrong with the locker bench.',2,4,20,2),(70,'',1,4,19,3),(71,'',1,10,36,3),(72,'',1,1,11,1),(73,'',1,1,11,1),(74,'',1,1,11,1),(75,'Testing',6,11,10,4),(76,'Test 2',1,9,34,1);
/*!40000 ALTER TABLE `problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problem_images`
--

DROP TABLE IF EXISTS `problem_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problem_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `wo_images_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`,`wo_images_id`),
  KEY `wo_images_id` (`wo_images_id`),
  CONSTRAINT `problem_images_ibfk_1` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `problem_images_ibfk_2` FOREIGN KEY (`wo_images_id`) REFERENCES `wo_images` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problem_images`
--

LOCK TABLES `problem_images` WRITE;
/*!40000 ALTER TABLE `problem_images` DISABLE KEYS */;
INSERT INTO `problem_images` VALUES (42,40,194),(43,42,195),(44,44,197),(45,44,198),(46,45,199),(47,45,200),(51,60,204),(52,61,205),(53,62,206),(54,63,207),(55,64,208),(56,65,209),(57,65,210),(58,67,213),(59,68,214),(60,69,215),(61,69,216),(62,70,217),(63,71,218),(64,72,219),(65,73,220),(66,74,221),(67,75,222),(68,76,223);
/*!40000 ALTER TABLE `problem_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,'Track Area',''),(2,'Pool Area',''),(3,'Gym',''),(4,'Locker Room',''),(5,'Bathroom',''),(6,'Weight Area',''),(7,'Treadmill Station',''),(8,'Bike Station',''),(9,'Room 1',''),(10,'Room 2',''),(11,'Common Area / Other','');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) NOT NULL,
  `other` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Pending',''),(2,'In Progress',''),(3,' Completed',''),(4,' Cancelled','');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(255) NOT NULL DEFAULT '',
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (1,'Send business plan to clients',1,1),(2,'Web-site copy revisions',0,2),(3,'Review client tracking',0,2),(4,'E-mail catchup',0,3),(5,'Complete worksheet',0,4),(6,'Prep sales presentation',0,5);
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_problem`
--

DROP TABLE IF EXISTS `type_of_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_problem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_problem`
--

LOCK TABLES `type_of_problem` WRITE;
/*!40000 ALTER TABLE `type_of_problem` DISABLE KEYS */;
INSERT INTO `type_of_problem` VALUES (1,'Minor wear and tear'),(2,'Broken'),(3,'Electrical Failure'),(4,'Unsafe to use'),(5,'Cleaning required'),(6,'Inspection require'),(7,'Missing parts'),(8,'Plumbing'),(9,'Cosmetic Damages'),(10,'Other');
/*!40000 ALTER TABLE `type_of_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_id` (`unique_id`),
  UNIQUE KEY `email` (`email`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `emp_type` (`id_emp`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'57de140c259128.26055604','Jonathan Dinh','jdinh','jdinh1@csub.edu','7b7b33VWmJOboxrPjyOMFpGywEhhYjI1NmJkOTZj','ab256bd96c','2016-09-18 06:11:56',NULL,0),(7,'57df1d2c6941d9.66939930','John Hargreaves','captnemo','jhargreaves@cs.csub.edu','e62XEGRELb4zAOEaekkADhqRh/42N2EwY2NmN2Mw','67a0ccf7c0','2016-09-19 01:03:08',NULL,1),(8,'57df49f0ab6170.81175150','Quy Nguyen','quypng','quypng@gmail.com','AW5HhRk6GXDXzIl1K0pBDRZCdgY5YjA1OTAzZjUw','9b05903f50','2016-09-19 04:14:08',NULL,1),(9,'57dff64abcdbe7.87273500','Kevin Jenkin','kjenkin','kjenkin3737@yahoo.com','6ZsW7e9uhOOKXWt0DjomIFyR1jA4OTVlZTRjZjkx','895ee4cf91','2016-09-19 16:29:30',NULL,1),(10,'581697a696d0c2.86942126','John Hargreaves','captjohn','john@chilembwe.com','hIW6Tf3/z6LsqQ1CtdpW7kctxTRkYzg0ZTQxZmQw','dc84e41fd0','2016-10-31 02:00:22',NULL,0),(11,'581a1964314971.90624993','Lance Thomas','lance','lancethomas27@gmail.com','tSzoBHYwNm04S7UNKLQ8tTqARypiNjMzYWViMjc0','b633aeb274','2016-11-02 17:50:44',NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_users_emp_type`
--

DROP TABLE IF EXISTS `view_users_emp_type`;
/*!50001 DROP VIEW IF EXISTS `view_users_emp_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_users_emp_type` (
  `name` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `employee_id` tinyint NOT NULL,
  `emp_type_name` tinyint NOT NULL,
  `id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `wo_images`
--

DROP TABLE IF EXISTS `wo_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wo_images` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `image_name` varchar(50) NOT NULL,
  `path` varchar(50) NOT NULL,
  `uploaded_at` datetime DEFAULT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`image_name`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wo_images`
--

LOCK TABLES `wo_images` WRITE;
/*!40000 ALTER TABLE `wo_images` DISABLE KEYS */;
INSERT INTO `wo_images` VALUES (194,'image_2016-10-20_08:17:16.jpg','../image_api/images/image_2016-10-20_08:17:16.jpg','2016-10-20 17:20:09','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( %!1!%)+...383-7(-.+\n\n\n\r\Z\Z--------------------------------------------777---7ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0A\0\0\0\0\0!1AQaq‘\"¡±ÁÑğ2á#BbñCRr‚’$34ƒ“²ÂÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0#\0\0\0\0\0\0\0\0!1AQ\"a2BÿÚ\0\0\0?\0;‚%\Z—[4ï(£7*m¢Š,°ÀÔ¸]^hp»ªäğnçÄuåïHéŒâÑtêaÀUv1Ö4étgbd[×ïD½Jä=MÖ¡d»M´$å\Z€yª×T$êš£Y[•ácN2.`j‰†”ƒ«jÇ½ÖR‹ZÌÙ-]Ña™An<ot7b˜oÓeNt‰ğMèJEÀ‰Ís|b°‰%üõ|Õæ?ˆÚ4ğÙr8ç¶æeråå*gnÚ+2¨Qf’±õ<‘°ğ:¨í:e¶›ÃŸÑ_aKZ X|U5\\‹“zÄê‘)>Í>+¢á‡1Ö:kCKì¨¨Zá;OnJ»ª9+vËFºO$sX4\\ªZuÈßè´÷—^e{•!ê˜©>&ğ/\ZŸ/è©\Zò6”Å<W’iGZ2ŞËÁ\\J#ŞbÅR6·Ueƒ¯˜AÙNJ¶Z.Æ°ø‰±PÄÔ#mP9ˆ#š#Å  ¥L.6\0Usôò[¦y]¶.ê±¤ŠªßDù,pî(§ãíÀaªb_|¢\ZÍ3=Öhõ×”|nƒÇUÄş9ßAÀ£3ãxSÅl›vyŞ/ñ7‰½åß´I³XÖÈ\'Ô•‹ªë˜Xº£ÛÅ=€¿5¶Òó-w İaª|WnÎÄ•¯T0XLï²–\Z­´‚/p‘ÄÓk)å)ñ´ôK,eÙlìk¹ÚB)Æû0¨éÕ:&„ ÏEm\"cF¹™FåVP¦âm#šcC%ÁAÉ]AöJ¥A;­1çïT‰®‰Nº¯Béwå	øH«%1G\rİéõBRI\r6ô!‹råëc©ºaÒ9®Ãˆ5§¢ñÊuK}™Ğ‘èa$ZÓNAs5¶Üs[¿’æ¿hQïÑà‰ÿ\0¬Î¶—l‹³á8\'U¦ÚÃ+€p‹ØèWŠĞWqÙnÚU£†§K»c²KA$ƒ”8À!+Æ,Ù+²Ó¶b¦	ˆ.sò‚tˆ’cĞy®mİ¯®ïãÁ­ú${wÅkâ2Õ¨Ü¬$Gå›ÌI™·¹sôëÙEQ¥)hëj±ûÃî\0•­Ú\ZÇûÇÿ\0¸®wö…]=!6w…âõ_‰K‹…@l]»AtÜòwÌd˜È»üe>ì––‡;4L¥³ê@ó^ÅHÀ¶¼ÔrJ‹cƒ}†-\rêz¢a,×”ÃH‰QoGB\0©ƒ)-yloò^eø…Û¼EQÃáßİŠa¹Ì\\òĞè’\0tŞTcNTŠJIFÏ[\rBÄ<\'r¼RŸnñ„Ô8´|nÖâ“^¥ÿ\0œ‚êÎYæO¤{•ì,x—£‹¢ì=fæ¦øL\\v Şz/\Zìokj7Æ¾³»·Ë_Äì’\rô2=ë´íOj¡€a±@ å`.ƒÎãì[¤ßhNâî‰©!WşğÀH8šßï¦<¿\"ÅÅ÷á¶·7½É3©Ö\'Øœ¿•™¦AF5aïJUªT«‘×|PñÅ¡„*`ºşò–¢è2oÑ>*‚³úôh®]†£\0iÊ&Âß}Uv{ÊŞ#à z¤m½I5q`æ~ôUuñ…Çä“un~«lpUŒRÙ	ÉËC×º3^I²S75!Pl±TQqA¡·İc±MÕ`ÄÛUR>ª-{:®†±[’W“qTV¨MÄgqI\"şkÑ±I*ºªhıEœyC86(éIŞe£âQ¿üî(jÀ<\\ß‘]‹k‘­Ó¸|H#b9$Y/Ããã~NİŸ® »(ù§S“”‘¡£eÕñjL-6Pfüˆ‚5T5¨ai¾][0¤ÄÈœª°“”låÍ	ñEŞ;‚¶¾´\\r‘”‡DÃ€åæ}U]Á3ø±òhS8®ÖĞi9ß{\rU}nÙU6e&·«‰>á	Éà«–?%µÀá·©Ußêhø5=O±!ù©¸øÔÈ…Ênc_ıî_òµ£å*ë²ÁÀÔ«Qï¨àÛfsâm)”&ûb<¸×Hê¸W¡‡áa:›’@Ø’IVÌ­!%JœûBÂ[#U³§ÓxD$*æ:tGeD(=EùH!y—âcqUq¯‡¢ê¬­•ŞÌK\\\Z\ZZA6ü³=W µÅYğú§C!5¸í¥%Lğú=…âfß³âúcÿ\0¤Ó¿\rø”K›I€\\—Uhé^Û¨ÆñÎ\r\rÔŸ»ø/?íWiMc”ÚCmŞy‘òóğxeœº%8FuSÔ¥%Îaƒ)$xÉÉ¾\Z÷¹Â›=§9Ğ4OSeÒà{3‰ÆºaÑÎ]­©ñÑXà¿\r2[`›H\'¨{¶Øªó²ncøxâÆ¹ØšyˆÃÅù;0•‹²Àµ´i¶“f\0dÇSºÄ\rÉœz‹ŠÀÒ æİ-	â±…Üê±Ír\nˆÍ:¼Ñ³5\n¬TGÃÕtÀºW#)n†ªáÁÓÑ!P«P˜Ê­ÓR„2;£O«eRTó çLQ¥¹ôUr¢q…„¤ÒD¨Ô˜Gï\0Ñ\'[>\njM•qIQ\nP@¼Hçä±ï+œÁâŸûMFpç\0dt*Å[!–NÑkÄ¸…*ZË!`¹¼O¨ãìû¦¾«8Ÿæ)ª”½ªr}³u+=÷$Ÿ*,§ÍH&¢k6ÊIº®©q‚ÃHDVÂÑ£²¶á,»Àİä½6Kz„ß9j	ĞÛÕmOÄÍ\Zg›ëD5Õ/\n­û°İÚ\\ßGáy^\n“=e+ŠbÁo¤÷Thp‘nfÜpAˆçè©ñU”Á\\ƒèâó<±ÑŸó¹$ô\nª$œ›èõ#Y‚ãÚüÒ¯ãô)‘û·æñQ¹ORcŞ¼Ëû#ïÍUŞ±ğA«Á^?;œ|I+4„JoÉÓñşÑ>³ï ü­Ÿe£œ¨ğ|V‹ÛVµFÕx‚f\r#Ğ§õJöo²ì©wh:.Údh[T²h¤pŞÛ\0?c‘¯pØe3\r¯xG¯Šgxö†´\0¼“Ìƒ óJğîÏSdîã˜±èº>à0 Æ‰?Õ©à~‰»\ròÊÄgı•ùâÏ556ø-‡IÂ=à)şI}DÖA}R—u~^©ÔD”Ë\n4K¯ V†‹*¼/´;Õj®$»ÁMÆMÓ)E+C8œvÍõú%ZfÂå@ÂnhMü­}ŞÍÑdkª?z\0ºªâ•ªÒ‘;{*×¢Uk¯’€lïä…›ª›\\©d¨ …Aá¦ âc‹d^A°=\"Şõ{œsTüw\0S‰ÍpgH<–ƒ|´&T¸;)±æ\\RE9ŒÔõºL®–yèÀ¦‹\ZI\0\\›\0.I;ê]™ü%{Ãjc*w`€{¦~{Şóf€Œİs†d\0’tRºÎ„sd9¤b‚\"…z®\'ƒá8Z•¨ÑcK[\0ê÷¼Ù ¼ËıÒª[À‹8oyRõª=µŞN¾Ô€“çÄ”Dí;èÁ•<3q<ÕJ	WR)„³TWÔo\'Ÿzm•¯¾wó5®ù`à¹2G§ƒxĞbÚ\r8ÙµŠo\r.1²Vé\rÅI‚Î4„†4B¾¯‚k¿”ôUÁeuÈ1öRÇ$dŠPÙcÀš9.¯RßÉPÑ^pÚÙ`óğFq¸‚\r©6Rdï¢]ÛÑM÷ºä:\Z$Æ–Ú%ik/İ–&¿Ğq<€»’†uë\r×a3dHAîù\"‰P.E1Z@œÃ£J¹m¶F-‘t»é™4É¸µ´6Çƒp¤*–§N Íşí‘è¤S§\\Ó\0;ªà\0İJU9GÑxËØÖ\"‰I=Äl÷ÚèNºtg±Jµ]² â¸w—5×0}Ë¥«\n\"Œ‹§ç[&ñ¹hæq$˜=Y1ˆuƒyH÷ 1äEˆ2<Bê<Ú§GaÙÚ¸~\Z\'Î÷DÑÃÌ\n@‹U¬…Çfë`MºNÂöÏŒâTÛR§îÜ]M­¡„§\\·%ycÜI$’I2I¹$êIİwÿ\0…Õ†§Œâ/¡LS`ÿ\0Şg(ô`ÿ\0R\"Iy;NÑÕşĞâtp\r½7ï«ò.Ù§È´Üw%Ñá¸Õ,sqT)‰ÆPíœ}«ÈÛšòßíW`°qwüo&«İüL IƒĞ¸—şcşÔş\n¶Øƒ´RûıÆ¡Né@áÂ¶ãRªàZCs1b&ĞUsŠb/L¥Ç7%VŸåšŸ)Ğ“ì:-¤ª÷>>E»=+…°CF§îU¶¹b6û•_ÃkÓ\0ßÛ;}ß‹-h÷.L’mñG¡†	.LgˆÊ&ntú¥MI‰Ôê©+ãó$şˆÔ^@×]Õ!‘™9H¿Ãrz•uG†ªaXaŸ¢ÎÃª:n\Zü¬kdÀ’LdÜ« G=W7‡®DtW”j,¹ò*v<ª#¢Ò}2V 1âıç$Ëkê—\r\rê¶®ÖE …ä©†z­StX-ç\rR¶\Z$@è.«6B}RåŒ¤uÙj®ÃŞf‹,.A{Ğ[š5`m!ŒÄ¢4Â\rÂÛŞ_ÁµÙ,ëô¶e!Qj\nv“$ÉGu’]ìh£_6Sqm•MEXöûo3}Ò‰üa»‡<§äº.Àq5Õ©Õ{)Ó8jÁ®vVÅG”ç?Å°½¡wÇùG—Rg$(<´»+²¶ÅĞ`§@»j82hağP{ºcöÜqÊzl7ÔS\rÍÀì¥Ù=Eô1G=*ô\\üCç8¥¤µ ’àƒ2|Õ?\níEJ8ŠÕÅWÔ2\\Æ5ã<ås*Ã2ÌhG³ÉnØı^_úØ·Õ¢Ö\n¬¤`½Á™ËYH41¤\0æ‰šè¸/fka^{Ê­gïÆ¹d‡<·4“l­ˆæl¹ú·hv3º i·İÀcòwF˜üâù‰¹ˆù pÓU¦ÓEàU¦ê‚¬<ºEAüAÀÌ‘c:¢€Ó=‚¼@©K2—;ó\0LrĞHU˜àÒùiEãQØ.Ñ¼´¾\Zìä8òĞØåQoic©ä€_¾Ôå1-}ÑÑÌcxgz=º™\03%®>æ‚¨±ôÃZ×ñ6cŞ]ãœÒ\"5\\GÀ÷oèt=\n–Hù-ñòSãì­{”ß]Äe.$½P‹!K)QÑè+F¥\Z™A„ZA2¢×	X+*OTÔ„&¨¾qLÚì»¥UXà±OEEMæ%3J²œ¡h¤g[:AVwX“£VD­.^,êä3c%Mì (Ğª$E2z®‡\"i}`ÏISVMÌ¦kaæâ\'â’s)âÑ9]aY›ËmÓÀì¨šã2FêÓ\rŠ±ö]·#ôI‘>Êã’èÌ^\ZA-×’«ªìBOˆÒıÇ“Ã6Lk±¼Tn—ª×9¡wªİèql=&ÌD\"— ĞéØÏx\nÂÙ	LÉ†‘ª(•Øê@<uÜ‘V\\DÉiêG¨UÏ§âyÙ×İ•¥²¶rDš™ ë \0ŠĞ°ÚpN-•¡²º&bA\0‚¼Ê•bÕkƒâÎhÕ5’q;·â&üV‡yK6íø*?UÑp¼{^2Î«4.Ó³“&ÉòLqL9¦òßßÉ+;.9*t{’”,Û„©5‘eI¯ôE34?E›/Ñ\'IÉÚ}<Ğ¶€ÒcmwTzn	*a7H-f¡öU Yb+IlcÍÙS)˜n 8ü’ ¡÷œ“¸ØªT\\~Ğ9-TpwCÍ)†¯6°Y_MóIÇe9èÙå\ZõK±ä\"T¨6NªÂãH†¼Ï#¸ñæ˜{	ğæ©ZeXà³40ß×D“‚[Cã›éì;ˆÓe_[»}.| ¾®ËFÆšLY­R.…¹ıèÓÜ§lH ´)JÊµ	04ZsáJˆ&NÉ²«ZB˜ÊpĞy©ª´â\'Ù?quXë•|.âp|¨ÔÈµªmjÛZ¦Nc\0[\0[“TÁP\na`¤åkÃqe¤]Sµ1AğQ@gcÄÏyHTİ¶>õ\\ñ}ÕÇ	ªÇ0ATîa.…©v_ãKşH÷›n¦×,u/ê£İ‘ªšhëâÆè»s¢v›áVæ>ˆÔª%ì4ZÓ4İ7…N×&iÕZŒ‹v¼,IgkHñ5³€­RM›Él\"1©ÄH‹TÛ¢‹]à€ê’²ØzúŠ2ƒ)ª,Ës®£§_t€¶1†§>CëÕ0ê‰jnDcI\"~*Oe–ˆÖ«ipcU\'ÚæeB˜æ¨[°´›7*n«hi{!A&Ÿ@¢t‰~bšcÀ6¶x(=Œ´-‰2Ó<•k«ôU4Õ±z8¾RÚa‚Úˆ[V9	,Z•°±‰)\0¤°	„ZnAM…¼\"¼8\"cÈkİmOÆÿ\0U[‚©+^&3¿˜ƒâÍ\\FÄêh\r7¡ò*a“­•cŒ#SÅºäãèôÔ½šcP±• ¡¶¸;y…9Ú„6»La®L0„€o+ôİTÈ›Ñ`¶––ÓØ5Ö²ßydÕj@KŠ$	A;\ZQ¦\nPî,škwû•6ãDT¨IFÍPÀ8ÄÚyíiù\"Šp\0>»¾I¶Ö›%\'²ÓïúıTœÛe#„©Òç§MÓ#T±÷ïR’Ïc$µ ñ×š­¨ÂÓ•…2¦úmp¸ıR£8Ù[MüôG¥R4BÄÑ-óĞóQbÉêÅM¦8\"´\ZvAÒJ@KT=Ù»HñpäãñWnÒ@Š“xî°}Ê¸Îo’¾¤‚C•¶®ƒˆ\"ÅX\nÀ\nÚ€*R‰™ ¦Â„¤\n\0 åušix~J‚‘W<<Ë\\9„AÖÄDÆê56Q®Ûøßê´ÛUÏTÎõ+Ağ¤ë²lXÊ&òÙJ«ôR—gLc­†ÄWµõĞ‚×~¢Uõ¤åû…ûªEh„ŞËFbmú-¤ƒº­-ÄÌ-)¢‡)´”;$¬SM4[o=‘ê%œÑ·¢¢vEª#/¡\Z©Ò~ÇmÕaq›¿@ç·[‰”‡Ù\r†ıT)bCähwÛÌ)–ÂV¨dì-7\"1#ˆÄh¼ÑpøzüPqfå±¢ú*ìNO‡4İz¢wä«ËÉ2|SAmÌE‘i»~J\rö­÷Íl˜·Í=äi°×’ªâ?óQğ(îKcL–“­ÿ\0DĞU\"y]Â•¶•VJ¹Äm@ V TĞÂX$–Ö¥l\"\0Ìr²áÕ.ªM`ßccûñù¨Ò#_Dl[dˆßú|ĞË,#ešggÇûD5ªZµR)†è‘Å:ñÉJ*ÙÓ\'H\'Â“µbLIĞl‚JÙ’¬s\rˆç=yõX–c]Èú,@m–Ú/m‘˜Ñ{-,\\Çg‚9Dh‘pöÖ,O$§ÑªÌ Cª=•‹~AQØñW4Ø Øh±b\\€ÆUe‘\ZÑÉmbcÄ´[Ãê„Z9,X²è=6Œ¦Û|Ğâë\"mÍ‚OÑ\"Ûü–,MÅÉÑ\0ÑÉi­¾åbÅcŒhä¶\Z9,X€	µ£’ÛZ9-¬DÌØhä·”rX±`kB5‰ÑbÄX¼Y¿{-1¢4ûºÅŠ9Nß‹ü°¢4û²¬{G/¹X±,;-hä´Z9‹…¥‹ÿÙ'),(195,'image_2016-10-20_22:19:40.jpg','../image_api/images/image_2016-10-20_22:19:40.jpg','2016-10-21 07:22:25','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	( \Z%!1!%)+...383,7(-.+\n\n\n\r-+------------------+--------------+----+--+777-7-+ÿÀ\0\0Â\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0E\0	\0\0\0\0!1Q\"Aaq‘±2Rs¡Á#$4Bbr²Ñt‚¢áñ3Sƒ’³ğcÂDÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0$\0\0\0\0\0\0\0\01!A\"2QaBÿÚ\0\0\0?\0¿¶Tùj÷˜×ùƒğA,¶?´\Z~|O-s¸\"²‹‚ÙÙXI\0oRâÒˆãÉÀ\\ö•\'Ê\ZÁÍßÅg±z’ò„˜`­‚æuÍÓ2©HZ iDn–M¦cÜªÒS—ºŞ=ˆæPx/$ç/\0¡Òy¬Aq½Ö÷oÑßãä°\'~‹§°ãĞG¦s-ÏŞÒ´Xe=%…¸‰{bm3Á,’ğîf€^ÛÖ—,Ì?zËuûHÁZc¥‚Ú†<\r×{3‚;ÁñAhé>Ê\rF\Z0‰²|¯åº¸g%œå×\\«#}foo\'æ)û:ï¥Aí™ù‚úÌŞÙÿ\0˜ ÆJ™±Ùvı?Å\'Á²²ÿ\0V¶O0Š+CD2|†”5*[\"(Ü«cVËM‡ˆx…²ÚãM´ôvxîK £zÆó{I>õF¢$N!ÍŠ´ìRˆòÔÄ³XÔ|Óİæ¶,Y|i¼×wy„ìD\\§\r\\”©’’¹î<ç8ö’Rü •bæ€¨M¡ò<¨TjiÀCf’å,˜ğC	HÛ“`5ÜšÖ’lÉèG°ì80]Ú»É\"V<¥C¨ir7¬ï*rÊiVÒ%¶Æxdt¯< é5í¼opù/6qÕNe1–igÁÀ¯UÚóa¦æä¾˜mäiñ^OO¼v­/¿“lWµ‹^\0è,ôJTÆ”lv³•!ÑUœ!M‹”èÌb<nm¡©›Û?óWf±º—Ï™æ#TÙLEÜÒ÷?1u¸’ICv˜}.o\'æ+‚vÊ£3ñ?àŠ”+eÑ™øŸğE•a¢]ˆ%HJ6\nnæ.Ş¶ûA>\'zµ°·à±ØSo4cŒ¬üÁnq¶]Œ<q8Gó%“\n6Í\ZÅ×à– pU]TáÀö…(¡¥Ej¦¹fq¸c‰â<ÂÕIˆÇöÚGXÕÚ)au;‹	»y»¤:X©†…ËJ¸cÏİSÁBùÉ[\Z/Ù¥Sı7ÆÁø‹¸|Pºí™JøòâÂÀ° €nºÛÚŒãub›{ú,8èhXİÍ§SïS™CìE:JÆ4Ôô¸ïşŠrSJm	±…4§Òƒ\rT\r>é^q,<â§zô‰G’Íàôn’qU#ØàÇr\'4—::ÃAÚ–CÄ†`“É8µ­å@Ğ4t“¸!•{‹nZ\\rß}¯¥×ºá²<8ÍQšXÙƒ fVfky ¼ñŞ¼ÚŸl ‰´ü•Yà™ò—¼ß•kƒÃZí:‡{BV¨dÛì»rÕB÷sZ&mÜw\rB‹i^U;šnÏ ñÅÄvªJ†r(˜ÇV:®ìeœûóAõE÷,åG¦ïÄ|Ğc#y²_VÑßbÈNËiL?¾¨T‹è”—gÉÅr /ìã/Sÿ\0Ø†«qˆš§<q8Oó…Ù6Ş¥YàÒ¶X¶Qõ×Ä$HÖÈùØ‰=P¨°I±¡Y¼HsOhóOY	;ĞR››üMóE³¢¼ÚÃeÊmR¬/ÖÇèßüoìßÒ¬İÓåªÍëÄ{I¼¥+/ûFƒHdàçFˆ\\{ÂİÙŠK£Bi\nB˜U„#pL*B˜R°¢4…8¤(ÁakPz¤ø­ÛÖ:³j‡6(Üâçin”¬x‘[?ğò±Î³œÇåy¾£¹xÑjô*M‰¯–İ•­$Œòp¸#³©f¤Â¡g§5È6°°ÜƒLè´xèÕ2_HëÒ‹CMlL±sŞÒI°¹µÊ£Œaî‚i!qÑ¼°‘¸‘Á+(ÆËi[øŸğEB²Ìµ+?üÂ.À:%-ŠBBŠBˆ(7±­ùòxDóã`µ»H-xÕÄ}÷Yg>SÂ;x•¤Ú‰uGÙª†ÿ\0÷¹NMXÉXri^ÃÍ=ÛÂFbÃí·½¿¢’©¨lÌ]@a6¾)=‚}S¡ğ(>ÑDĞ-«îĞ,N@{Úİ7µ’GRé\0.yx\Z4“{¥ŸÔäãúhôØ¹M~\r²T¶\\¼ƒÖ6ôÈnÜAš‘Ç¥…²´ëîWà*LNR	ëFáâ¼¶xoG‘”ÂœİÃ³ßÒšåbTFäÂS˜B¤N)¥pHŞ²¸¾+4Ş\'–Ø‡\0..5ŞµNYŒB²8+c–XDìmœèl,E‰±¶¶;º±‘f®º¢jÎ8™]sÊYÄm”C^5K‚TËbÈduäÛ9ÜÛ•°£ÆH†ZÈ\"‚Êƒ#\Zyåº‚#ktÌŞ¿%­ÛZésPZ?ÊKX\0—K9¶°éèJÿ\0GALd+\"”M$%¬‚ª8å%Âíqstµõô‡Š·__©öîø$Á±Iäª<Ò;=CüÒ8‡;0ÕÀOZíº?O©öÎø iögêÍüNó«­šú«?¼ÑVèF8„ĞR—$p(Õlc9²¶7ŞJ!´5,¦ê¬‹£ ^ê®Ç3æ^xÊƒª“i\"çRõÖ3â³e•MÆ®,=]Œ°ÃÚãovõ¯Ä\'wÚ\rêhø”nZp¨ÔR_u”^i1Ö8£YH^îuÜo½Ä•£‚ Ö€ôVp\'Š°V<Ó·FÜIY\Zä·H¢\\ØÂUøˆlE^„¯tğ(Ä`É,¬õepî&ãÍTpG¶Ê•oàö6NıZ|‚åe¢dD&#“JàŒL*BP	–Gj©œùãcÜû1£‰&ÃÍkÜ±ûl1‘¦ı|–†Â”8S¡§¨§œÃÚñä‘À¹™í£¼‹l2†.P>³•s\'c\Z!aË,FÆGµİÔw+[.àúZ¬Îfbİğ_!$l}$’Hv~©ÁÎä^Æ¼¸eÊd 6÷ãp¢õ²«aì:§å†)‰5Qr½àe`-Í£¦÷C¶äı>£Û;à­ĞìÌ°L]$´ÁQ]*œ\\AÚŞ©í£I¯¨·ùÎø\"¨Ôì×Õcş/4YˆnÎ²Ô±ÁŞh˜TB1RY*àn6IŸGo\\®w…‡Á?jG>“÷¶ù6ÌÇó!Îñ%3j#<¥ïmü¥dËó/âqPHz•—F»’YJ+wÕuUÊÍk®÷[p6ğU\\²ÍÜØÕE\r\\‘\"QÍle^§*€Ş­ÂWº\nŒ¯í>8‡Æ}ÎEcÜ¡íÜ©sz’1ı×±÷ç®\n±ĞdD&#”e0…*B€F•ÛQfÆëgî;»ü©Ë7¶,¼@ğxò(=‡`¸á™Õ.-d%Ğ\0ÖA>‹Hæjr“ÒVj·šbçK4/¶{¼ÙÙE›p46OÃiêwFÌÍ,Ì.ĞAŞ.zàÂ}wÚÚeh.=É({*Ò›9İ†êzú¼ÓÉ!ûO\'Ub¦±¶íi¿¬÷àÔWnJ,ãÓpSzxˆéûÕô7g¾«³ø¢(¡EºPSBTz^\0Ò\"Šİz­´€ò´w?ş±§ğ”Ke€#h÷7i\\9Z?ŞÇärÇ‘ûËÁ{Mìye\0á{§ª×ºÌ>*¤cló}x›¨Ü¦ğP¹b{=GeÉË£[Ùb§ˆ¦TtÑíãwÄ–ÎÆ©ùZiYëDáßm”µ×\0ñ\0û—±G¨·rò\Z˜r>Fz’½½Ù‰âàND.Q”÷(‰N\naN)¥†¸ªU®¶Sp,ö›–g_W¥\\*µ[¬\"Îi¸:; t®±µîÍ$=Ò\0ça0Ä8d¸ÛºÖR=/kïÜß× -ÚÜÂÇ‘5¹M$Í\0İ¦Ù!nîÛü¾(KaŠx€Ğèëqs–}ûÖŠ·Ñ6şVéşâ³Ï\Z¥c#Ó0ôX=ŸÅ_Tp?«CìÂºˆRFÛ8¸¢V°æŞXÇYù‚ŸßÜ<´L&JR¨Ìãê€Ó©DÂèŞ‹o~pŞJ\\!ı8ÇÍeâ¥&Ërj(Ó¿`9A¹µÀ½´ìU*± ÊÒ4uœAlœ¤r–à\\H#Quq”mdxß!whRÏÆŠànY’Â¤*7/4ôˆ×%H‰ÆÎf‹*Ê™WaÕzøŸƒÆš/ÄåæÛ[JÉ~ğd¾#)ü«Ña+ûC†ÒÃ\'¬ÇF{ZC‡ÅiÈ³(â£rs“\nqF®ri+ªµşımïV	Uë}~¸%ı°,­°Œ?3“ºi7[¸Ü4u,DU€ïÓ…õ=Ëm´\ZåÌZ93vÓˆbİ$ózÂÃº•® ğÔÛD\'°ÃBW¿MoüGÿ\0³òoGë\0\0ÛwPó%“zF9é˜?ÕáöMòWU<+ü½“<•«¢ÁÀ™zˆ¿>\0”<\"Û2ÛÔ³¨8û¿ª=*•·gmĞ\'¶×ê6Gé=:¼i­cšolæÀqpÓ¹eŒ½ÅdºgÚ×Ç˜€]ÀÜn±Üªâ’4ÈCmÍæ›qÂuQ‡1kAî#v¶ßîA°‰¢;Şç<ÿ\0‰YıR¤iô½È¶å”…Få„Ş2ë’]\"`VÆUyÛg{Ôü¢†£Šô±¾Ï\"k¢XJÏşĞa½;_êLÓÜîióG!r§µr”“7§’s‡kEÇ’Öˆ3Ìœ˜J@ë‹ñM%TJ8•ŠqrÅpF—(ç7uçrà1[\ZlÌÙ#±3:YmÔ=ÂÆ_^îÔf£iò_“3Ş@h­kc8ï°ÌıL?dñ*ŸFOÚÍ‹wëîI9\"‹IC\Z.ã¸^çôf)…É²È\0<ºÙ?f‡ÔGÊ½¯.nbZ\r›­ºw§ÕRÃSˆFÉ.èì¤‡e:Y-õcWtZÃÅ¢Ù3ÉY	Õ067Ùè·šÓ{è4	‰…$iFöI¿?~»Ş@@AZ-ÿ\0ç„`x»ú%z	¿Ö±Ç‰3R~ò#‘ˆØ†ã€r´Ÿ¼øÜ°­š‚§\0î6èd±»šH+T\\b¤óøšÏŸHÑé¶ÈJ‰ÊBTOYc.\\ˆ\rx$®•†ÊP—.‹Ğ‰å=arš`Hâñ\n³4*Ã\rÖÔÌÇ8e.g¨÷Fzˆ?Ù\"%´pdª™¼^?ˆˆ(c•@#Å”NN{”N(€kŠŠéÏ*2Wz–\rEMm1DÆ—08¸4f$‹›ı)õ¸älÑÏ\0ú İÇ¸*xÍOQo–|‘–\ZÍ	m´¹FÛC‡Q½ÑƒëHñsâ²ÿ\0Ç¾Ë<«Áæ[`Éêedğ1íÈÌ·\')77¸]CPù”òï+/hÅñH\'i>7§1Àà±µ4-:¸ß©V”U	m»)4Y­q¾IA]8±ƒ@÷(ÁDâU§Ø†ë!ü\ró+;$ko×ºëQ²P¹¬p\"Ä¼\\v9MSE›v8!XáùêOŞär½ÑÆ]y©}³¿!XÑ¥‡€YªIßˆù­r,íW¦ïÄ|Ö|úEı>Ù	Q<©¢qYÍc.•5*à¦·©Hœ¯N\"ÁµÏ>)Ñ9. İAîQÄV˜;De³\r·ğå¨cıx­ŞÃıVh•¶ı¢CóqIêÉ”§yÙaÊ²cŠ‰Å:G(	LœS	JJcŠ?lê9&RÀrd`kå;ÇS;ºPèé9w¸ï{Éq=åQ¦ƒ:t+Bi¬ÜÇAkİuØ\Z¢”mÈìí\0XÛMÁQœó”ğvï]‡ÃUZâÚ(cMU)Ëm¾ÄúG¨\\©*ißJğÉjiêE¹íc-ÖÖ¤©ä‹jĞğšN™^¨ùF»€^€aìéÙú”ì>’)\ZÌ×?h8‚:­Ğ®Œ:PnÙßoUÁ§à³Ï7…Ñxcò‰n€_É]¦Ø\' {MÜë›Zà[Å…ŠT²Ô?oÏRßüçiş™DãCq§V—ªsù™\nØd,õ`ç»ñh¸¤yñY³hÑéşEg(œJË1°jTÕË€zBç•bê7Gr½CÈE*±§fª«‹I±EF›h­‹TN{(í|Yé$âĞ$­ ¯6y^³UxŞÓö˜áâ’º3èÛPKmÙ¢²dÊ²¹F\n¶Ü=äë`®Ó`±\'¨.–X/!Xäü	MÈNàO`ºÖS`Ì\Zå¿n¨³hE´h@YIú…áÿ\0“òepŠeç6Ú“¯°Á0&Õ4EãiÕ èmÒïÓ¿‚©<ZHàPÜB«ä‘^Ó(!ÌÌ|F½(b“m³²G¤vØã-c¾KJCbnÉ qà-¸,‹úÔ|­îNó©LÌâíÊºt­$‘¤Øù*Y}ÛÛ¬·°Äõ‡ÙJ;µÒfçælyMÈ:“~…²†},w¬yñ¿‘|sÿ\0%ö¥lRa%YŒÙg/E†“Ø†âßâÓ{g~G\"PÄÇÏS{gÆäVÀÂou…ítq.¿R8Å\nÅc\ZÅG*ö•Ã/x8•“‰Q8¬¦ã³$M¿ı²ä@z0!veJsW¦y®‚Ö0µÇCkïF\\å–+”øè\r&	Ü{ÂóÜ~‘Ñ™^ĞEß`áÑ›û¯N’ ~ÈğTªh\ZàAh±­ğEæºèå\nòxÆ\\ø$´qcòI±ãªô\ZµÀ®›Ğ=«Ù¾Nîh¼gÅ‡ôAğeÔ¯ÈIˆêÿ\0EIÁMrˆ#\'k=*8€NqUé§\0ƒ¡Öêã\Z³²¤±\\weç»[Øğ×n±êè^ bâ¼ã¨å\'{Ü..[‘Û²\0ê=7WÁvO#Tfbv¨.bÃE÷iZ\'£’îln¸µÚç›öoÃéæµ¡nS¹­\0YjSWÇÉ\'V]ÁÅ<l\rï=A¤îø©\ZíMÅ®t’İ{]tÍZ&ŸeøŠ²\rºĞæÈGw’½—ºÁ“øl†NH°ÂPüTüõ7µwüe]Cq#óÔŞÑçù\nš†	PV¶ì=Zø)KÉ“¿Á#V‚;3åÊ7)jcÊâŞ@â±´zIÚ±«“n¹qÇ¢‡ö…éi*VÆ:W£Û<†\rRò|T·LyFdn©\\˜ä§*©ÃÁ\\b\nó]¨ÙîH’ã\'Cê©z›•\ZØÚZ@ ‹Ğšpaq´yVÏcN¥xŠSx‰æ»~Oè½š±¤\\‚°›K‰éaô]êõOgñ\nˆ#,/Šö×›ßÁVpS\\¢N.3ÒdªnÛ¸^×ï@¶	¥áÑDe¬5yé¿Fî•%\\ÂÀw»0°ãÇE==axÓO$ªN0èn<¤%%$p·#‡‰=e#¥ Ü\rO¥5Ñ(&Ó²Ôª‚Œ€=íU	\nl\Z~IÙ_è»£F+èE³7q^–9òV`œxºZã­62¯%3˜BŠh×N*J™Ñ—eæ½S¬˜}é?\"Z¬r»AM®}ª)¿Õ?È°¸8ºfÅ.JÃl]ŸûşŠKas»‚­%AvíA’²¶0Ñpá¿qBÉDê[Ì=ˆCœ³e‡ú6áûEÌ¹32åÇ¦fI™@½3È$\'‰H¿²i“‚qP¹É\\JÏJÂ„rÉ$\råV’ Úu¤\"R™ac÷k$Àğ£%!¥xa®7yÑä]˜tpÓ¨Ùqm÷¤|w¹…Sø0O\Z’2¸%ÿ\0‹{©œÖr?[¶grNÜ-öU¼:6å¦à‹ƒÆë+´t2ò¯3Üæw6C¹Ã£^)»7šg¥Ö=Íw«ÛÔ´e5h–9pé‡õ\'˜Àİâ£‚¤8}`¸,ÕE¬«,h®	\\97ïè\'¤!2;­Eb#B5º|Y8ËğLäƒ•Ô¶(y‹Š/K8š;ßQ¡jDV^†ÌZÏÊâÛP+Æ—:!#s\\X—U–Îqv6+É*®¼Jœâ™\\n‚P>¦k>*—r·.!÷Ë¦¶&ö£rÑìŞÒ™\\iêÉÔ3BÓ wXX¼:µğÈÃ¨=Îê?ªÖm]++iœ4C0Ô[WFxup=©%Š2‰E7iëfáïPnk¨0¼\\TÓñiZÛôñïS@íê1Æ¸µ\"mII\rä]Ár±™*òGì¿õËèÛ0èœÒ¹rb#œ¸.\\¸HU\n‡¹rä²\Z%2R5rä…OEË‘‚ñ¸\ZøÒıëËkZ5\\¹jôşHe4;Róq!®³oĞ8-eË”rü™HhsBIw%\\‘?‰¬–Ü×\r.^†‚2eùõåøÛ@{íşk‡¼®\\š@Æ	;–“a¡l’–¼fnBü¤›fy+—!\r=$b<V¦6¬!,³´“nÔ~œ¤\\–a‰=×.\\¦9ÿÙ'),(197,'image_2016-10-20_22:39:37.jpg','../image_api/images/image_2016-10-20_22:39:37.jpg','2016-10-21 07:42:16','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( %!1!%)+/.. 383-7(-.+\n\n\n\r\r--+-----+--+7--7/--+-+--+-++7+-8---+8--78/-+7-8++/+ÿÀ\0\0ö\0Í\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0A\0\0\0\0\0!1Q\"Aaq2‘¡±BRbr²Á#3‚’¢ÑáÂñğ4Sc“ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0!q1ÿÚ\0\0\0?\0¼QGèxÆ’Z§R‡9²·`ö–‡Ûs>Ò	\" \"\"(Jx»©°Ù\\ÇÈü±4ƒb3ÑË™r:o¡½Ï‘î}ÛÅöÓ[\\ë¦,TD@DDD@DDD@DDD@DDDA¡=â	d	Hi;E³-Õ%€ÖNúß¢VÆÂÖçl-ıã,Òc1?v;8iÊÉâj7=£3‹\'ÑÛ”\\æ/Êããk<ŠäqFYRÁw´Ïq‘—Êâ¾­÷lV³\'¬nÜw¸g\Z{dú%CÃİlĞÍ°•€ÛQÜöèõïRÅRR»®``}‰\"H$û2fŸ#r×GÁX|+\nºvÉk<v^ß²á£‡¾ë-»ˆ‚éËÏ55#NÀÊáâã•Ÿ\0ïz±ø7ê(¡Ö9›µÿ\0\n¢©wíyİíd†>ÏÌ¯f¶ÂÃ»D¢\"\" \"\"\" \"\"/	F¸pn9„¢\"\" .oT¾*IäŒ]íîo˜i]$!+ÑÍK¥yˆ·¬ko3us®Ùç|çÈ“ÍOêÖÎÈÆ‘Â3»¸g\"ÌmşèüÁG¸¯v4uÔl´l#¬»èäÒ4<ˆiî*O)NÚWV0¥Í28ß\\ÄêÃã˜ÚÜôVõ,uñÓV³^sx2BvğßÏÍeè³-­tMÖ)„¯ÔFû;â~!BøuDïx’w#¸lO‰ßş”ß¢,*Ò±Ûõp½çÁÓ¼Y¿ÒÏŠ´‹iqø»”sO}ZÃ—ññ!v?ÓN<øéísÉoµnË}¿óK*ÔèG\r.©’g}Fî~Ó¿ÕÕÖ¢½`†–‰™…¤—÷¯ğ¸ì·Ñ¶ø©R\" \"\"\" \"\"\" àqÆ\r-eÃ)æÄØ;)¾G°;*¿‚¸Âl:cIT×dk¬æŸj3Í¼Ûßew¨¯ğ\\X„y…™;Gb@9l×óoÊè$´µ,‘{×‚6!eT‡ñ-N9¦©c²ƒg0şxùéËusĞVÇ4m’71ÂàüĞ ØDDEâÎ-‚£=Ş÷mHÍn÷è\0ñòAÜ½¥®\0µÂÄAp|]_JÜ.gÓNÒü2ªöï1?{i®–ÜÜkeá•ñÔDÙc7c…Çqò#¸ø.Wğ¬8„Md…ÍsNf=»bÇBÑ1,qI)dG4m6¸İÀZÖóV÷G´-—>™¥vbFÖ\05 x\0>j®Å(EÎ§Ù²²G9Ö±Òí\0ÕÍÃtİU,LäÀµR<âl\\RRÉ9Ê4ÜM›és¯€*šà,ø•{¦šîëd\'ë8»0o©Ôø)Hø«ë*cÃ 7íä|Ç½Xœ;‚EGb l\\Fîu€.+*é¢\"\" \"\"\" \"\"\" \"\"÷p¤5ñYİ™ü9í<6ø*ÃÆª°z“í9Ií7ê¸_ÛŒóW‚âñO\rA]W(³…ò<{L<ÁåÌ ßÂñ(ª#l±89§Ş9‚;ŠÛT•3«ğIš2øÖ\0˜ßÈéì¹vjz^»m)ÏÍÎ¸È –ñ·GC…;‡aŸò&Šƒp‡IŠLúº·Ëùf#`Á£k-náJ¬JsSU˜Fãw9ÂÅÃ¹¬Á\\t”Ì‰c\Z\ZÖ‹\06‚*_M_QE#‹9ØOÂÜ®ßÊ€÷XÈ]U´Ïgö-™Ñ’/¨¸…ä9.}W\ZW¾aN\'=h’H‡VÈ²Lî°\rC15­¾Î$ßuF\Zö«ê/Î(½\\ìÏùnâÕ_G¥‘ûuq’<ÀÓâªŞ\"zÌÁ¥¹êò	ÌtÜ7ñyq´S^”jrĞ=òşm?T¨t?…g3VH.÷;(\'}®ï˜\nÏQŞ€2†?¼^ï{Í¾\0)Š\"\"\" \"\"\" \"\"\" \"\"\" ñÍX‹…¨Ü*\0ìÂïÏ([ˆ€¾&q\r$	™¶}¢\n?Ä¯3ªóN*@Ër\"mîğĞE³ZíÒÚx®%\r|Ö‰‹¤Æ^ûåhÉÔ€opò6îS‘éÛûfˆ,âĞy¾Úóİ|ô‹‚:ãÔ›·ªÕ›HöÜ4$e·‘*¢\'ÂüY-4¬ll®dfîœHAt„HâŞ¯mÀEtø—Œj+XÆÉ Dñ/îä#6[û)/ğ•%WZúˆ&L‘4›‚±×ŒøZ–*Èé¡cšÙb3æsšĞA¾İ±§‚*Çà,^9éZÖ‹>E#wùC´u†m7\nH¹¸$}\\Wµî\\ãw`\'¿@¢é(ˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ*—NJì=ÿ\0|t¬YúS©Ï,¡‘§Ñ¢çæ°ôäÛ\Z\'ò–ß•Ëã:œÕÍÿ\0ë…ïõuÀıˆ°:9†Ôyÿ\0ùçûÎŸ©=~<îèÇôç{‡öµOxb›ª¤…œ£oÉ@¸ób•r;ÊùX?äŠ´Q@DDD@DDD@DDD@DDD@DDDAYté0RÛ¤7XŠŠÖ»­Ä\'öâ€z8_ò•côJ$m%ömTrù‡Iÿ\0]ğL]uldëwÈ|šêUEË^ñ3Ïsc#ûl \rE™“L~¶QıEÏ?˜)\'HÕV;±-Ê<oİîºÕè²“«¢¿Ú‘Şæ€ÁùTTÁÉx‘ïAô‹àLİ³x_hˆ€ˆˆˆ€ˆˆ\"ı\"ÊFd;¶ä[™c›ú¨7D°f©i±ıÜDêï<ıË¿Ó,àR1œİP@2¼èšİ{ùdŒ+B£?KÕ¦Š>çÊ/äİş©C’†\0E‰`qówhüÔ3¥ºyå–±Å#Ú‰-ip‡ ×ÇÑY°äcX>«C}ÂÊ¨ˆ€ˆˆˆ€ˆˆMCcngüĞ,„¨¯Ö÷÷ìÁİâãåşz²X¿‘£täÑ¿›wQº¬]Äö‰$è\Z/ß°\0jO†¤­J²ë€sŞ@\0jâI°·‰:ğ·†øy”À½ÖtîÕÎ¹peÀ»\"Í°Ğ]ÂÅÄ\\Û`¨çáøEd„å…—\Zd\"úö[£tæïE¿[±W\'Åqëgş‹»uéu‚ŠOÅtÖmT1¶ç+gis q&Í :{BÚéu¥[ÒL2ä’¡§Ùx–»ğÛz]IäÉ+]Ú×1àµÍp¸p:àwBNif}ÎxËzÈKûY£¾¬u÷s—äBü\\yp/Û¹ãõb>9‹ëBñäZP¡˜.Fç®pÓ\Z39£˜¸|Wc÷¿/ ğæŸˆUÔ<eHwsÙø˜OåºéÒâôò{1ŞÂşíÕ/ûF# ‘—å˜_Ü¼2¨±ò ü“îŠ˜ÃqºˆˆÉ3Àû%ÅÍş—\\{•§ÃUï™’>Ùïm„‹Û¹EW]/Mšª;›\rÛ¥ ßšûÔ«£-H_öäqôîUÇblNB\rÄYÛêÎÉø«c‚EGs~zŸ‰ø*<Ä]];š×8ú‘o€+¾¢Ø}[ˆNòà`D	 EóZş$û”¡®cu¨ˆ€ˆˆˆ€ˆˆ8<IŠõe±ÏhùwSòPz¬T=Åäö@Óğ‹íç¿¨ZüY‹çšwƒ¦lò>\'ÕG…CœZÆûN-\rx¸61åœ±i¾¢ÎçU¼kw2?NÌ_Ãî¿í)QrÁILØcdMÙƒ]ıVK¬«(+Z¢[›{ÖIeÊ	ZQêƒjŞ¸üwJ]L\'`ıå3„£Å—´Íş‚O›BîD4_OhsKNÎ§È‹hf½œö øBäã#ê-%<‚7Ÿi‡x²|6+Ì\"kD¾G>1åÜÖü\0[â§ÅTq]Ñæ*í4îñ%«º2ÄÜu§§ûà{¬§gË	\Z—3ìŸRv*yCXÉ˜$a»OÃ˜>**gbĞkôpñ÷\'p÷Áwè¸—¤cY&3XŞEÎñ$ÕÕ¶´1ú®šgı˜Ş´ üåƒ=ÒK+İí>KŸ9%/wê§<Æ½]P‰à¹¯wRË\\‘»¯©°o§r€áB6õ†ŞÙ~»vyú•f`]!é­‰‘¶Î¶W8¸2¾àœ¬µˆæƒcc¦ò“a$²HNÂÎv`	õ:-ƒZøä6€½„›1a¸\'PÛ÷ò­ÁØPu4eÚ0İÙGßqw¦„*xc®V´\0\0Aoµ»Š†y8<|BÈş(x\0Ç+ƒâãu—Ä£äŠ6ïíå—%¯O†dÎ;0n|ù*ŒxÔSÓ‰¤„\037´yyè¥\\+²º••¸#‘ÇuÇÅø7é°äC¸sZËvm¶ú¿½wğ\":JvAò°nw$›’mÌ•ĞDD¥ùXçri>áu‘kâ÷R~~Rƒóæ%PH.Íó¿Ít¸,õ±_f»7ô±ïÜ¸•;7ÈşŠGÑ¿şïù_ù[şÑ‰r±¾%’ÃÅñS%Í»‚ËLÛ„÷-9EÎšñq‚éÇ&—µ‡wwı Êù-¢Ñ«©³\\|É`¯½q1êòØ%-Ô†:ÃÆÆÈ!¼1RÑeÚ‹ÈO‘{­ú)7íh»%±°\\Èí\\®í‡Å@°imOf÷ñY]UmÊTJk±²Íû9¬K‹‰¹¹$Î¼‚ëp2æUˆoØmİp\rˆätP(œ÷l,9èÑWº¶Fºïi¸Ó@}wT_55¥ïsZÑ¹q\0Rªş:ã¸%d´ñNÌ¥¥ êœGy¶ƒü(OcÓÔ›Ë#N–Ù¿Ò4QzÊRA&úw ÏôY:«ç[4v‘·.í2àeÚÂ1Iià|s˜C³¶Ú8¬‚ì·)\0ùx,Øe4tÑ­¡²:;¹ÇRçeï.Ğ÷Æ¦Y^×T5¤[FİÀön/ä³~,\\ÜÇQËƒšZæ1§%óñ|Ö\0aåªÇY‰OVû\r9{#ÇÇÌ¨×ğÈ†7M3œÈÜ²µå Ü·5<ÂğçNĞ@1Aıï ñT`Ãi9aŞ=§Ÿe¿íJ(([æãí8îyùšš±´5\0à² \"\"\" /—¶àbËé~uÅàêå|gvHæBGèïÕˆëbı²æ^ÆÚÆû\\÷\\å¯ÒÎaªëÀìN¿wXĞ èT*’³+Úæ›æy9®iôpEä\\µÜnV¬8‹e²7gŒŞ\\Ç¡¸ô^6¨\"º1X-|J¯#<ôÿ\0+RLFÃEÃÄjœ÷ Á‹cb6’¹Qãln7 ‹z&+D\\Ñ¦Ê+ˆÔ>šV–÷Gq±Mh(Æ5¯uˆÜ7S¿=–ëZÖìÑæu?£4ÇıRï0Vğ™·½Àµ¼yîª=t„;Î×X‰ÒıÙ¬AÓ¿Í±‹áÙ7ßUô*Ú\r~cp×8úeÿ\0HGöÙ¹s}yz…<,=×x\'@2÷vë%>ŠK¬T%ÒivìÛƒ{.ë8Õšh…´¶W1Ããt™p÷JàØÁq¾ši~ev›EI†³¯ªs_(Øe§çâ£ÓqÑUZ [|É˜‘ÛµÎ»ïğVàà*\'é£ë¤¶®yuµß+o`¢¨Üojg¨kÙfÆÛ9 <‹‚á°>ÊC…tÁW³âŠQææÛÉY}a7êK?­óºââ}\rÒ9§©–V;»1oËDßıgs²¹´€7b—$ó7@<»ÕƒÂHÚøL¹9\\ÛŞÚ\\ª#àzúW5§{ÃIñ‚æoc¦Ç˜*Ûè›šš™æf:G\Z} \0µÏĞNQgŒø›èah»Ÿr|\ZÛ\\ùÜü\n¦¨¸–¦¾­Ò¿––6:ñ27:ÖîØ“¹.½ïm—{¥œNõ3ëü8Ã‡fçâåPÒT¹¤jv°ÔŸAª£õ>Å,s\Zw¸\0Ù”‚m«²ŞâûÛUÒ§q·Yc÷oÍ~}Áøs–>º:YƒG1‘ÇÅu‹½ÁÆëéI[#m»ec‡Ì\'®n-†š²H±—4uš9¥Ì°6y¸óÆ5LømÚñnŞ~ë)}7\Z¯5Ü·B|Èİrê›@÷4ÄçÀòM’E½-ãÜ˜2p‡´Ç!³IÔ÷1ßhòk»ù{ÉLSê¡©‘®‡6V4´e-±¶¤ïp{Ö´Ø‡2X^áõã6w«IYè ª…¹343ìHÒc>9\\,=Pvéxµ’¶á€wjğù£±i.Æ6ëæKšÑãu§KMy¥‡>ù›-¢\'Á­·#UÜÂxrLN@\'•ºä‹^ñk‚N¾.¿¢V!Œ=Úgìı¬İ“øt×İnKF…Ó;±åwuš]î+ôFÁ”êÚföœ38ù’»±BÖ‹5¡£\0‚ÏØwGØ„¤Z˜F9ÈrüÔšƒ¢9ºê¦´r¤üM•¼ˆ ”=P3øòŸ¼í S\Z:ZlcZ,Zm\"Ó©Ãa“ø‘Fÿ\06ƒó[ˆƒ€Î¡6qNŞ±É76å`y.ğÔ@DDD@DD|c†(êœ<‘ÂÚ‘¸öpÙÃÍgÃğ*X¡§Š1¿b6·äE\nŠ8ä{\Zá÷€?5F±.Ã§¹}+?Y—aóì/è¢¸—C°˜*$gƒûcßº³Ñ‰tWˆÅsW(æÇ»ÜåÂª¤Äi-ÖÇ4@ì\\.ßa~—Q”ás°Ùr1Ïwd ¸€\\3ë ¥àÅ¤uó:àÊåv¸;ˆİm6º:C¿št?Ì\Z}oW‡5ÀR>ë]v0^™ò¶Hâ•ÖÔ¶\0ø•Qú!*PC\ZùEüíªÊ¢ˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆƒWö|9³uL¿<¡lµ l,ˆƒÔD@DDD@DDD@DDD@DDÿÙ'),(198,'image_2016-10-20_22:39:45.jpg','../image_api/images/image_2016-10-20_22:39:45.jpg','2016-10-21 07:42:16','ÿØÿà\0JFIF\0\0\0\0\0\0ÿÛ\0„\0	\Z( %!1!%)+/.. 383-7(-.+\n\n\n\r\r--+-----+--+7--7/--+-+--+-++7+-8---+8--78/-+7-8++/+ÿÀ\0\0ö\0Í\"\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0A\0\0\0\0\0!1Q\"Aaq2‘¡±BRbr²Á#3‚’¢ÑáÂñğ4Sc“ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿÄ\0\0\0\0\0\0\0\0\0\0\0\0!q1ÿÚ\0\0\0?\0¼QGèxÆ’Z§R‡9²·`ö–‡Ûs>Ò	\" \"\"(Jx»©°Ù\\ÇÈü±4ƒb3ÑË™r:o¡½Ï‘î}ÛÅöÓ[\\ë¦,TD@DDD@DDD@DDD@DDDA¡=â	d	Hi;E³-Õ%€ÖNúß¢VÆÂÖçl-ıã,Òc1?v;8iÊÉâj7=£3‹\'ÑÛ”\\æ/Êããk<ŠäqFYRÁw´Ïq‘—Êâ¾­÷lV³\'¬nÜw¸g\Z{dú%CÃİlĞÍ°•€ÛQÜöèõïRÅRR»®``}‰\"H$û2fŸ#r×GÁX|+\nºvÉk<v^ß²á£‡¾ë-»ˆ‚éËÏ55#NÀÊáâã•Ÿ\0ïz±ø7ê(¡Ö9›µÿ\0\n¢©wíyİíd†>ÏÌ¯f¶ÂÃ»D¢\"\" \"\"\" \"\"/	F¸pn9„¢\"\" .oT¾*IäŒ]íîo˜i]$!+ÑÍK¥yˆ·¬ko3us®Ùç|çÈ“ÍOêÖÎÈÆ‘Â3»¸g\"ÌmşèüÁG¸¯v4uÔl´l#¬»èäÒ4<ˆiî*O)NÚWV0¥Í28ß\\ÄêÃã˜ÚÜôVõ,uñÓV³^sx2BvğßÏÍeè³-­tMÖ)„¯ÔFû;â~!BøuDïx’w#¸lO‰ßş”ß¢,*Ò±Ûõp½çÁÓ¼Y¿ÒÏŠ´‹iqø»”sO}ZÃ—ññ!v?ÓN<øéísÉoµnË}¿óK*ÔèG\r.©’g}Fî~Ó¿ÕÕÖ¢½`†–‰™…¤—÷¯ğ¸ì·Ñ¶ø©R\" \"\"\" \"\"\" àqÆ\r-eÃ)æÄØ;)¾G°;*¿‚¸Âl:cIT×dk¬æŸj3Í¼Ûßew¨¯ğ\\X„y…™;Gb@9l×óoÊè$´µ,‘{×‚6!eT‡ñ-N9¦©c²ƒg0şxùéËusĞVÇ4m’71ÂàüĞ ØDDEâÎ-‚£=Ş÷mHÍn÷è\0ñòAÜ½¥®\0µÂÄAp|]_JÜ.gÓNÒü2ªöï1?{i®–ÜÜkeá•ñÔDÙc7c…Çqò#¸ø.Wğ¬8„Md…ÍsNf=»bÇBÑ1,qI)dG4m6¸İÀZÖóV÷G´-—>™¥vbFÖ\05 x\0>j®Å(EÎ§Ù²²G9Ö±Òí\0ÕÍÃtİU,LäÀµR<âl\\RRÉ9Ê4ÜM›és¯€*šà,ø•{¦šîëd\'ë8»0o©Ôø)Hø«ë*cÃ 7íä|Ç½Xœ;‚EGb l\\Fîu€.+*é¢\"\" \"\"\" \"\"\" \"\"÷p¤5ñYİ™ü9í<6ø*ÃÆª°z“í9Ií7ê¸_ÛŒóW‚âñO\rA]W(³…ò<{L<ÁåÌ ßÂñ(ª#l±89§Ş9‚;ŠÛT•3«ğIš2øÖ\0˜ßÈéì¹vjz^»m)ÏÍÎ¸È –ñ·GC…;‡aŸò&Šƒp‡IŠLúº·Ëùf#`Á£k-náJ¬JsSU˜Fãw9ÂÅÃ¹¬Á\\t”Ì‰c\Z\ZÖ‹\06‚*_M_QE#‹9ØOÂÜ®ßÊ€÷XÈ]U´Ïgö-™Ñ’/¨¸…ä9.}W\ZW¾aN\'=h’H‡VÈ²Lî°\rC15­¾Î$ßuF\Zö«ê/Î(½\\ìÏùnâÕ_G¥‘ûuq’<ÀÓâªŞ\"zÌÁ¥¹êò	ÌtÜ7ñyq´S^”jrĞ=òşm?T¨t?…g3VH.÷;(\'}®ï˜\nÏQŞ€2†?¼^ï{Í¾\0)Š\"\"\" \"\"\" \"\"\" \"\"\" ñÍX‹…¨Ü*\0ìÂïÏ([ˆ€¾&q\r$	™¶}¢\n?Ä¯3ªóN*@Ër\"mîğĞE³ZíÒÚx®%\r|Ö‰‹¤Æ^ûåhÉÔ€opò6îS‘éÛûfˆ,âĞy¾Úóİ|ô‹‚:ãÔ›·ªÕ›HöÜ4$e·‘*¢\'ÂüY-4¬ll®dfîœHAt„HâŞ¯mÀEtø—Œj+XÆÉ Dñ/îä#6[û)/ğ•%WZúˆ&L‘4›‚±×ŒøZ–*Èé¡cšÙb3æsšĞA¾İ±§‚*Çà,^9éZÖ‹>E#wùC´u†m7\nH¹¸$}\\Wµî\\ãw`\'¿@¢é(ˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆ*—NJì=ÿ\0|t¬YúS©Ï,¡‘§Ñ¢çæ°ôäÛ\Z\'ò–ß•Ëã:œÕÍÿ\0ë…ïõuÀıˆ°:9†Ôyÿ\0ùçûÎŸ©=~<îèÇôç{‡öµOxb›ª¤…œ£oÉ@¸ób•r;ÊùX?äŠ´Q@DDD@DDD@DDD@DDD@DDDAYté0RÛ¤7XŠŠÖ»­Ä\'öâ€z8_ò•côJ$m%ömTrù‡Iÿ\0]ğL]uldëwÈ|šêUEË^ñ3Ïsc#ûl \rE™“L~¶QıEÏ?˜)\'HÕV;±-Ê<oİîºÕè²“«¢¿Ú‘Şæ€ÁùTTÁÉx‘ïAô‹àLİ³x_hˆ€ˆˆˆ€ˆˆ\"ı\"ÊFd;¶ä[™c›ú¨7D°f©i±ıÜDêï<ıË¿Ó,àR1œİP@2¼èšİ{ùdŒ+B£?KÕ¦Š>çÊ/äİş©C’†\0E‰`qówhüÔ3¥ºyå–±Å#Ú‰-ip‡ ×ÇÑY°äcX>«C}ÂÊ¨ˆ€ˆˆˆ€ˆˆMCcngüĞ,„¨¯Ö÷÷ìÁİâãåşz²X¿‘£täÑ¿›wQº¬]Äö‰$è\Z/ß°\0jO†¤­J²ë€sŞ@\0jâI°·‰:ğ·†øy”À½ÖtîÕÎ¹peÀ»\"Í°Ğ]ÂÅÄ\\Û`¨çáøEd„å…—\Zd\"úö[£tæïE¿[±W\'Åqëgş‹»uéu‚ŠOÅtÖmT1¶ç+gis q&Í :{BÚéu¥[ÒL2ä’¡§Ùx–»ğÛz]IäÉ+]Ú×1àµÍp¸p:àwBNif}ÎxËzÈKûY£¾¬u÷s—äBü\\yp/Û¹ãõb>9‹ëBñäZP¡˜.Fç®pÓ\Z39£˜¸|Wc÷¿/ ğæŸˆUÔ<eHwsÙø˜OåºéÒâôò{1ŞÂşíÕ/ûF# ‘—å˜_Ü¼2¨±ò ü“îŠ˜ÃqºˆˆÉ3Àû%ÅÍş—\\{•§ÃUï™’>Ùïm„‹Û¹EW]/Mšª;›\rÛ¥ ßšûÔ«£-H_öäqôîUÇblNB\rÄYÛêÎÉø«c‚EGs~zŸ‰ø*<Ä]];š×8ú‘o€+¾¢Ø}[ˆNòà`D	 EóZş$û”¡®cu¨ˆ€ˆˆˆ€ˆˆ8<IŠõe±ÏhùwSòPz¬T=Åäö@Óğ‹íç¿¨ZüY‹çšwƒ¦lò>\'ÕG…CœZÆûN-\rx¸61åœ±i¾¢ÎçU¼kw2?NÌ_Ãî¿í)QrÁILØcdMÙƒ]ıVK¬«(+Z¢[›{ÖIeÊ	ZQêƒjŞ¸üwJ]L\'`ıå3„£Å—´Íş‚O›BîD4_OhsKNÎ§È‹hf½œö øBäã#ê-%<‚7Ÿi‡x²|6+Ì\"kD¾G>1åÜÖü\0[â§ÅTq]Ñæ*í4îñ%«º2ÄÜu§§ûà{¬§gË	\Z—3ìŸRv*yCXÉ˜$a»OÃ˜>**gbĞkôpñ÷\'p÷Áwè¸—¤cY&3XŞEÎñ$ÕÕ¶´1ú®šgı˜Ş´ üåƒ=ÒK+İí>KŸ9%/wê§<Æ½]P‰à¹¯wRË\\‘»¯©°o§r€áB6õ†ŞÙ~»vyú•f`]!é­‰‘¶Î¶W8¸2¾àœ¬µˆæƒcc¦ò“a$²HNÂÎv`	õ:-ƒZøä6€½„›1a¸\'PÛ÷ò­ÁØPu4eÚ0İÙGßqw¦„*xc®V´\0\0Aoµ»Š†y8<|BÈş(x\0Ç+ƒâãu—Ä£äŠ6ïíå—%¯O†dÎ;0n|ù*ŒxÔSÓ‰¤„\037´yyè¥\\+²º••¸#‘ÇuÇÅø7é°äC¸sZËvm¶ú¿½wğ\":JvAò°nw$›’mÌ•ĞDD¥ùXçri>áu‘kâ÷R~~Rƒóæ%PH.Íó¿Ít¸,õ±_f»7ô±ïÜ¸•;7ÈşŠGÑ¿şïù_ù[şÑ‰r±¾%’ÃÅñS%Í»‚ËLÛ„÷-9EÎšñq‚éÇ&—µ‡wwı Êù-¢Ñ«©³\\|É`¯½q1êòØ%-Ô†:ÃÆÆÈ!¼1RÑeÚ‹ÈO‘{­ú)7íh»%±°\\Èí\\®í‡Å@°imOf÷ñY]UmÊTJk±²Íû9¬K‹‰¹¹$Î¼‚ëp2æUˆoØmİp\rˆätP(œ÷l,9èÑWº¶Fºïi¸Ó@}wT_55¥ïsZÑ¹q\0Rªş:ã¸%d´ñNÌ¥¥ êœGy¶ƒü(OcÓÔ›Ë#N–Ù¿Ò4QzÊRA&úw ÏôY:«ç[4v‘·.í2àeÚÂ1Iià|s˜C³¶Ú8¬‚ì·)\0ùx,Øe4tÑ­¡²:;¹ÇRçeï.Ğ÷Æ¦Y^×T5¤[FİÀön/ä³~,\\ÜÇQËƒšZæ1§%óñ|Ö\0aåªÇY‰OVû\r9{#ÇÇÌ¨×ğÈ†7M3œÈÜ²µå Ü·5<ÂğçNĞ@1Aıï ñT`Ãi9aŞ=§Ÿe¿íJ(([æãí8îyùšš±´5\0à² \"\"\" /—¶àbËé~uÅàêå|gvHæBGèïÕˆëbı²æ^ÆÚÆû\\÷\\å¯ÒÎaªëÀìN¿wXĞ èT*’³+Úæ›æy9®iôpEä\\µÜnV¬8‹e²7gŒŞ\\Ç¡¸ô^6¨\"º1X-|J¯#<ôÿ\0+RLFÃEÃÄjœ÷ Á‹cb6’¹Qãln7 ‹z&+D\\Ñ¦Ê+ˆÔ>šV–÷Gq±Mh(Æ5¯uˆÜ7S¿=–ëZÖìÑæu?£4ÇıRï0Vğ™·½Àµ¼yîª=t„;Î×X‰ÒıÙ¬AÓ¿Í±‹áÙ7ßUô*Ú\r~cp×8úeÿ\0HGöÙ¹s}yz…<,=×x\'@2÷vë%>ŠK¬T%ÒivìÛƒ{.ë8Õšh…´¶W1Ããt™p÷JàØÁq¾ši~ev›EI†³¯ªs_(Øe§çâ£ÓqÑUZ [|É˜‘ÛµÎ»ïğVàà*\'é£ë¤¶®yuµß+o`¢¨Üojg¨kÙfÆÛ9 <‹‚á°>ÊC…tÁW³âŠQææÛÉY}a7êK?­óºââ}\rÒ9§©–V;»1oËDßıgs²¹´€7b—$ó7@<»ÕƒÂHÚøL¹9\\ÛŞÚ\\ª#àzúW5§{ÃIñ‚æoc¦Ç˜*Ûè›šš™æf:G\Z} \0µÏĞNQgŒø›èah»Ÿr|\ZÛ\\ùÜü\n¦¨¸–¦¾­Ò¿––6:ñ27:ÖîØ“¹.½ïm—{¥œNõ3ëü8Ã‡fçâåPÒT¹¤jv°ÔŸAª£õ>Å,s\Zw¸\0Ù”‚m«²ŞâûÛUÒ§q·Yc÷oÍ~}Áøs–>º:YƒG1‘ÇÅu‹½ÁÆëéI[#m»ec‡Ì\'®n-†š²H±—4uš9¥Ì°6y¸óÆ5LømÚñnŞ~ë)}7\Z¯5Ü·B|Èİrê›@÷4ÄçÀòM’E½-ãÜ˜2p‡´Ç!³IÔ÷1ßhòk»ù{ÉLSê¡©‘®‡6V4´e-±¶¤ïp{Ö´Ø‡2X^áõã6w«IYè ª…¹343ìHÒc>9\\,=Pvéxµ’¶á€wjğù£±i.Æ6ëæKšÑãu§KMy¥‡>ù›-¢\'Á­·#UÜÂxrLN@\'•ºä‹^ñk‚N¾.¿¢V!Œ=Úgìı¬İ“øt×İnKF…Ó;±åwuš]î+ôFÁ”êÚföœ38ù’»±BÖ‹5¡£\0‚ÏØwGØ„¤Z˜F9ÈrüÔšƒ¢9ºê¦´r¤üM•¼ˆ ”=P3øòŸ¼í S\Z:ZlcZ,Zm\"Ó©Ãa“ø‘Fÿ\06ƒó[ˆƒ€Î¡6qNŞ±É76å`y.ğÔ@DDD@DD|c†(êœ<‘ÂÚ‘¸öpÙÃÍgÃğ*X¡§Š1¿b6·äE\nŠ8ä{\Zá÷€?5F±.Ã§¹}+?Y—aóì/è¢¸—C°˜*$gƒûcßº³Ñ‰tWˆÅsW(æÇ»ÜåÂª¤Äi-ÖÇ4@ì\\.ßa~—Q”ás°Ùr1Ïwd ¸€\\3ë ¥àÅ¤uó:àÊåv¸;ˆİm6º:C¿št?Ì\Z}oW‡5ÀR>ë]v0^™ò¶Hâ•ÖÔ¶\0ø•Qú!*PC\ZùEüíªÊ¢ˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆ€ˆˆˆƒWö|9³uL¿<¡lµ l,ˆƒÔD@DDD@DDD@DDD@DDÿÙ'),(199,'image_2016-10-20_22:50:51.jpg','../image_api/images/image_2016-10-20_22:50:51.jpg','2016-10-21 07:53:14',''),(200,'image_2016-10-20_22:50:59.jpg','../image_api/images/image_2016-10-20_22:50:59.jpg','2016-10-21 07:53:14',''),(204,'image_2016-11-21_09:52:52.jpg','../image_api/images/image_2016-11-21_09:52:52.jpg','2016-11-21 18:54:21',''),(205,'image_2016-11-21_10:26:29.jpg','../image_api/images/image_2016-11-21_10:26:29.jpg','2016-11-21 19:28:10',''),(206,'image_2016-11-21_16:36:05.jpg','../image_api/images/image_2016-11-21_16:36:05.jpg','2016-11-22 01:38:07',''),(207,'image_2016-11-21_16:37:20.jpg','../image_api/images/image_2016-11-21_16:37:20.jpg','2016-11-22 01:39:08',''),(208,'image_2016-11-21_16:38:55.jpg','../image_api/images/image_2016-11-21_16:38:55.jpg','2016-11-22 01:40:41',''),(209,'image_2016-11-30_12:14:42.jpg','../image_api/images/image_2016-11-30_12:14:42.jpg','2016-11-30 21:17:24',''),(210,'image_2016-11-30_12:15:21.jpg','../image_api/images/image_2016-11-30_12:15:21.jpg','2016-11-30 21:17:24',''),(213,'image_2016-11-30_12:19:01.jpg','../image_api/images/image_2016-11-30_12:19:01.jpg','2016-11-30 21:20:46',''),(214,'image_2016-11-30_14:35:22.jpg','../image_api/images/image_2016-11-30_14:35:22.jpg','2016-12-01 01:48:09',''),(215,'image_2016-11-30_16:48:44.jpg','../image_api/images/image_2016-11-30_16:48:44.jpg','2016-12-01 01:51:00',''),(216,'image_2016-11-30_16:48:53.jpg','../image_api/images/image_2016-11-30_16:48:53.jpg','2016-12-01 01:51:00',''),(217,'image_2016-11-30_16:49:44.jpg','../image_api/images/image_2016-11-30_16:49:44.jpg','2016-12-01 01:52:11',''),(218,'image_2016-11-30_16:53:27.jpg','../image_api/images/image_2016-11-30_16:53:27.jpg','2016-12-01 01:55:31',''),(219,'image_2016-11-30_16:54:49.jpg','../image_api/images/image_2016-11-30_16:54:49.jpg','2016-12-01 02:11:41',''),(220,'image_2016-11-30_17:10:23.jpg','../image_api/images/image_2016-11-30_17:10:23.jpg','2016-12-01 02:12:02',''),(221,'image_2016-11-30_17:11:16.jpg','../image_api/images/image_2016-11-30_17:11:16.jpg','2016-12-01 02:12:51',''),(222,'image_2016-11-30_21:37:59.jpg','../image_api/images/image_2016-11-30_21:37:59.jpg','2016-12-01 06:40:24',''),(223,'image_2016-11-30_22:11:05.jpg','../image_api/images/image_2016-11-30_22:11:05.jpg','2016-12-01 07:13:10','');
/*!40000 ALTER TABLE `wo_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_order`
--

DROP TABLE IF EXISTS `work_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workorder_name` varchar(255) DEFAULT NULL,
  `created_date` date NOT NULL,
  `completed_date` date DEFAULT NULL,
  `problem_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `problem_id` (`problem_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `work_order_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`),
  CONSTRAINT `work_order_ibfk_3` FOREIGN KEY (`problem_id`) REFERENCES `problem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_order`
--

LOCK TABLES `work_order` WRITE;
/*!40000 ALTER TABLE `work_order` DISABLE KEYS */;
INSERT INTO `work_order` VALUES (32,NULL,'2016-10-20','2016-11-22',40,3),(33,NULL,'2016-10-21','2016-11-22',42,3),(34,NULL,'2016-10-21','2016-12-01',44,3),(35,NULL,'2016-10-21',NULL,45,4),(39,NULL,'2016-11-21','2016-12-01',60,3),(40,NULL,'2016-11-21','2016-11-22',61,3),(41,NULL,'2016-11-22',NULL,62,2),(42,NULL,'2016-11-22',NULL,63,1),(43,NULL,'2016-11-22',NULL,64,2),(44,NULL,'2016-11-30',NULL,65,2),(45,NULL,'2016-11-30',NULL,67,1),(46,NULL,'2016-12-01',NULL,68,1),(47,NULL,'2016-12-01',NULL,69,4),(48,NULL,'2016-12-01',NULL,70,1),(49,NULL,'2016-12-01',NULL,71,1),(50,NULL,'2016-12-01',NULL,72,1),(51,NULL,'2016-12-01',NULL,73,1),(52,NULL,'2016-12-01',NULL,74,1),(53,NULL,'2016-12-01',NULL,75,1),(54,NULL,'2016-12-01',NULL,76,3);
/*!40000 ALTER TABLE `work_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `workorder_view`
--

DROP TABLE IF EXISTS `workorder_view`;
/*!50001 DROP VIEW IF EXISTS `workorder_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `workorder_view` (
  `id` tinyint NOT NULL,
  `username` tinyint NOT NULL,
  `status_name` tinyint NOT NULL,
  `priority_name` tinyint NOT NULL,
  `room_name` tinyint NOT NULL,
  `equipment_name` tinyint NOT NULL,
  `problem_description` tinyint NOT NULL,
  `status_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database '4350'
--

--
-- Dumping routines for database '4350'
--

--
-- Final view structure for view `cancelled_view`
--

/*!50001 DROP TABLE IF EXISTS `cancelled_view`*/;
/*!50001 DROP VIEW IF EXISTS `cancelled_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cancelled_view` AS select `work_order`.`id` AS `id`,`users`.`username` AS `username`,`status`.`status_name` AS `status_name`,`priority`.`priority_name` AS `priority_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`problem`.`problem_description` AS `problem_description` from (((((((`problem` join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `work_order` on((`problem`.`id` = `work_order`.`problem_id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `created` on((`created`.`work_order_id` = `work_order`.`id`))) join `users` on((`created`.`user_id` = `users`.`id`))) where (`status`.`status_name` = 'Cancelled') order by `work_order`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `complete_view`
--

/*!50001 DROP TABLE IF EXISTS `complete_view`*/;
/*!50001 DROP VIEW IF EXISTS `complete_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `complete_view` AS select `users`.`name` AS `name`,`users`.`username` AS `username`,`work_order`.`created_date` AS `created_date`,`work_order`.`completed_date` AS `completed_date`,`work_order`.`workorder_name` AS `workorder_name`,`problem`.`problem_description` AS `problem_description`,`priority`.`priority_name` AS `priority_name`,`type_of_problem`.`problem_type_name` AS `problem_type_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`wo_images`.`path` AS `path`,`status`.`status_name` AS `status_name`,`work_order`.`id` AS `id` from ((((((((((`users` join `created` on((`users`.`id` = `created`.`user_id`))) join `work_order` on((`created`.`work_order_id` = `work_order`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `problem` on((`work_order`.`problem_id` = `problem`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `type_of_problem` on((`problem`.`type_of_problem_id` = `type_of_problem`.`id`))) join `problem_images` on((`problem`.`id` = `problem_images`.`problem_id`))) join `wo_images` on((`problem_images`.`wo_images_id` = `wo_images`.`id`))) order by `users`.`username` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `completed_view`
--

/*!50001 DROP TABLE IF EXISTS `completed_view`*/;
/*!50001 DROP VIEW IF EXISTS `completed_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `completed_view` AS select `work_order`.`id` AS `id`,`users`.`username` AS `username`,`status`.`status_name` AS `status_name`,`priority`.`priority_name` AS `priority_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`problem`.`problem_description` AS `problem_description` from (((((((`problem` join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `work_order` on((`problem`.`id` = `work_order`.`problem_id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `created` on((`created`.`work_order_id` = `work_order`.`id`))) join `users` on((`created`.`user_id` = `users`.`id`))) where (`status`.`status_name` = 'Completed') order by `work_order`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inprogress_view`
--

/*!50001 DROP TABLE IF EXISTS `inprogress_view`*/;
/*!50001 DROP VIEW IF EXISTS `inprogress_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `inprogress_view` AS select `work_order`.`id` AS `id`,`users`.`username` AS `username`,`status`.`status_name` AS `status_name`,`priority`.`priority_name` AS `priority_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`problem`.`problem_description` AS `problem_description` from (((((((`problem` join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `work_order` on((`problem`.`id` = `work_order`.`problem_id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `created` on((`created`.`work_order_id` = `work_order`.`id`))) join `users` on((`created`.`user_id` = `users`.`id`))) where (`status`.`status_name` = 'In Progress') order by `work_order`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pending_view`
--

/*!50001 DROP TABLE IF EXISTS `pending_view`*/;
/*!50001 DROP VIEW IF EXISTS `pending_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `pending_view` AS select `users`.`username` AS `username`,`status`.`status_name` AS `status_name`,`priority`.`priority_name` AS `priority_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`problem`.`problem_description` AS `problem_description`,`work_order`.`status_id` AS `status_id`,`work_order`.`id` AS `id` from (((((((`problem` join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `work_order` on((`problem`.`id` = `work_order`.`problem_id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `created` on((`created`.`work_order_id` = `work_order`.`id`))) join `users` on((`created`.`user_id` = `users`.`id`))) where (`status`.`status_name` = 'Pending') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_users_emp_type`
--

/*!50001 DROP TABLE IF EXISTS `view_users_emp_type`*/;
/*!50001 DROP VIEW IF EXISTS `view_users_emp_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `view_users_emp_type` AS select `users`.`name` AS `name`,`users`.`username` AS `username`,`users`.`email` AS `email`,`users`.`employee_id` AS `employee_id`,`emp_type`.`emp_type_name` AS `emp_type_name`,`users`.`id` AS `id` from (`emp_type` join `users` on((`emp_type`.`id_emp` = `users`.`employee_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `workorder_view`
--

/*!50001 DROP TABLE IF EXISTS `workorder_view`*/;
/*!50001 DROP VIEW IF EXISTS `workorder_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `workorder_view` AS select `work_order`.`id` AS `id`,`users`.`username` AS `username`,`status`.`status_name` AS `status_name`,`priority`.`priority_name` AS `priority_name`,`room`.`room_name` AS `room_name`,`equipment`.`equipment_name` AS `equipment_name`,`problem`.`problem_description` AS `problem_description`,`work_order`.`status_id` AS `status_id` from (((((((`problem` join `equipment` on((`problem`.`equipment_id` = `equipment`.`id`))) join `work_order` on((`problem`.`id` = `work_order`.`problem_id`))) join `priority` on((`problem`.`priority_id` = `priority`.`id`))) join `room` on((`problem`.`room_id` = `room`.`id`))) join `status` on((`status`.`id` = `work_order`.`status_id`))) join `created` on((`created`.`work_order_id` = `work_order`.`id`))) join `users` on((`created`.`user_id` = `users`.`id`))) */;
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

-- Dump completed on 2017-02-09  4:20:19
