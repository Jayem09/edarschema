-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: localhost    Database: edar
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL,
  `category_code` varchar(10) DEFAULT NULL,
  `category_name` varchar(50) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `UK_oglj99tro9covt7h4fli0k969` (`category_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'435','64we',_binary ''),(4,'00001','Toilet Bowl',_binary ''),(9,'0001','Toilet Bowl',_binary '\0'),(12,'0002','Bidet',_binary '\0'),(17,'0003','Basin',_binary '\0'),(18,'0004','Shower Head',_binary '\0'),(19,'0005','Shower  Body',_binary '\0'),(20,'0006','Bathtub',_binary '\0'),(27,'0007','Uniral',_binary '\0'),(28,'0008','Vanity Cabinet',_binary '\0'),(29,'0009','Wall Hangout',_binary '\0'),(48,'00010','Bath Accessories',_binary '\0'),(49,'00011','Floor Drain',_binary '\0'),(50,'00012','Hose',_binary '\0'),(51,'00013','Kitchen Fauset',_binary '\0'),(52,'00014','Door Lock',_binary '\0'),(53,'00015','Exhaust Fan',_binary '\0'),(54,'00016','Grab Bar',_binary '\0'),(55,'00017','PPR',_binary '\0'),(56,'00018','Lavatory Fauset',_binary '\0'),(57,'00019','Rain Shower',_binary '\0'),(58,'00020','Pull Out Basket',_binary '\0'),(59,'00021','Angle Valve',_binary '\0');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26 14:41:21
