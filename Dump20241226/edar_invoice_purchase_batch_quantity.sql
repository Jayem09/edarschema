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
-- Table structure for table `invoice_purchase_batch_quantity`
--

DROP TABLE IF EXISTS `invoice_purchase_batch_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_purchase_batch_quantity` (
  `invoice_item_id` bigint NOT NULL,
  `product_batch_id` bigint NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `quantity` double NOT NULL,
  PRIMARY KEY (`invoice_item_id`,`product_batch_id`),
  KEY `FK_purchase_batch_qty` (`product_batch_id`),
  CONSTRAINT `FK_invoice_purchase_qty` FOREIGN KEY (`invoice_item_id`) REFERENCES `invoice_item` (`invoice_item_id`),
  CONSTRAINT `FK_purchase_batch_qty` FOREIGN KEY (`product_batch_id`) REFERENCES `purchase_product_batch` (`product_batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_purchase_batch_quantity`
--

LOCK TABLES `invoice_purchase_batch_quantity` WRITE;
/*!40000 ALTER TABLE `invoice_purchase_batch_quantity` DISABLE KEYS */;
INSERT INTO `invoice_purchase_batch_quantity` VALUES (37,36,_binary '\0',3),(38,36,_binary '\0',1),(40,36,_binary '\0',1),(41,36,_binary '\0',2),(42,36,_binary '\0',2),(46,45,_binary '\0',2),(47,36,_binary '\0',11);
/*!40000 ALTER TABLE `invoice_purchase_batch_quantity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-26 14:41:22
