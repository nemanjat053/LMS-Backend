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
-- Table structure for table `administrativno_osoblje`
--

DROP TABLE IF EXISTS `administrativno_osoblje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrativno_osoblje` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obrisan` bit(1) NOT NULL,
  `adresa_id` bigint(20) DEFAULT NULL,
  `licni_podaci_id` bigint(20) DEFAULT NULL,
  `registrovani_korisnik_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm03k7vcndt74a31d9ej5aqk5a` (`adresa_id`),
  KEY `FK9dex1546jb6g7kfj1chvwqhxw` (`licni_podaci_id`),
  KEY `FKnk0yi140y352347nsop5o840f` (`registrovani_korisnik_id`),
  CONSTRAINT `FK9dex1546jb6g7kfj1chvwqhxw` FOREIGN KEY (`licni_podaci_id`) REFERENCES `licni_podaci` (`id`),
  CONSTRAINT `FKm03k7vcndt74a31d9ej5aqk5a` FOREIGN KEY (`adresa_id`) REFERENCES `adresa` (`id`),
  CONSTRAINT `FKnk0yi140y352347nsop5o840f` FOREIGN KEY (`registrovani_korisnik_id`) REFERENCES `registrovani_korisnik` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativno_osoblje`
--

LOCK TABLES `administrativno_osoblje` WRITE;
/*!40000 ALTER TABLE `administrativno_osoblje` DISABLE KEYS */;
INSERT INTO `administrativno_osoblje` VALUES (1,_binary '\0',1,1,1),(2,_binary '\0',2,2,2),(3,_binary '\0',3,3,3);
/*!40000 ALTER TABLE `administrativno_osoblje` ENABLE KEYS */;
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
