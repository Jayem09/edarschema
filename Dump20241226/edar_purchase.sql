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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `purchase_id` bigint NOT NULL,
  `batch_code` varchar(12) GENERATED ALWAYS AS (concat(_utf8mb4'GD20',lpad(`purchase_id`,8,_utf8mb4'0'))) STORED,
  `created_at` datetime NOT NULL,
  `purchase_date` date NOT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `supplier_invoice_no` varchar(15) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `trxn_status` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `supplier_supplier_id` bigint NOT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `FK_purchases_staff` (`user_id`),
  KEY `FK_purchase_supplier` (`supplier_supplier_id`),
  CONSTRAINT `FK_purchase_supplier` FOREIGN KEY (`supplier_supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `FK_purchases_staff` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` (`purchase_id`, `created_at`, `purchase_date`, `remarks`, `supplier_invoice_no`, `total_amount`, `trxn_status`, `user_id`, `supplier_supplier_id`) VALUES (1,'2024-11-30 05:01:09','2024-11-30','jhj','898989',291009810,'VOID',1,1),(2,'2024-12-24 10:49:28','2024-12-24','idk nro','94394832',59984001,'VOID',1,8),(3,'2024-12-24 11:17:07','2024-12-24','fd','00002',36000,'VOID',1,8),(4,'2024-12-26 02:20:12','2024-12-26','','00001',100,'VOID',1,8);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
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
