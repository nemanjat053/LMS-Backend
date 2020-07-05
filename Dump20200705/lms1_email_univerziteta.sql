-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lms1
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `email_univerziteta`
--

DROP TABLE IF EXISTS `email_univerziteta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `email_univerziteta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_id` bigint(20) DEFAULT NULL,
  `univerzitet_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd1bvkitubwc65em8docifa1es` (`email_id`),
  KEY `FKgeyt4dfexqwpfvosb5bkjqlf7` (`univerzitet_id`),
  CONSTRAINT `FKd1bvkitubwc65em8docifa1es` FOREIGN KEY (`email_id`) REFERENCES `email` (`id`),
  CONSTRAINT `FKgeyt4dfexqwpfvosb5bkjqlf7` FOREIGN KEY (`univerzitet_id`) REFERENCES `univerzitet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_univerziteta`
--

LOCK TABLES `email_univerziteta` WRITE;
/*!40000 ALTER TABLE `email_univerziteta` DISABLE KEYS */;
INSERT INTO `email_univerziteta` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `email_univerziteta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-05 23:21:36
