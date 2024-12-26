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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoice_id` bigint NOT NULL AUTO_INCREMENT,
  `contact_no` varchar(15) NOT NULL,
  `created_at` datetime NOT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_name` varchar(70) NOT NULL,
  `down_payment` double DEFAULT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `invoice_type` varchar(255) DEFAULT NULL,
  `payment_term` varchar(15) DEFAULT NULL,
  `payment_type` varchar(15) NOT NULL,
  `po_number` varchar(10) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `tin_number` varchar(15) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `trxn_status` varchar(255) DEFAULT NULL,
  `proforma_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`invoice_id`),
  UNIQUE KEY `UK_ece1srr6o3r3wc7i4yi5l6alf` (`invoice_no`),
  UNIQUE KEY `UK_f2gxjp4f6h9w1fbl9yrlw5oe1` (`po_number`),
  KEY `FK_invoice_delivery` (`proforma_id`),
  KEY `FK_invoice_salesperson` (`user_id`),
  CONSTRAINT `FK_invoice_delivery` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`proforma_id`),
  CONSTRAINT `FK_invoice_salesperson` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'030404943','2024-12-24 10:57:55','fffwgefgreg@gmail.com','kadz bayu',0,'E00000001','Normal','sds','Cash','PO00000001','2024-12-24','dffdfd','90922121',23996,'FINAL',NULL,1),(2,'09099w993','2024-12-24 11:04:51','lipa','jude',0,'E00000002','Proforma','','Cash','PO00000002','2024-12-24','','',14999,'PROFORMA',39,1),(3,'342443','2024-12-24 11:07:47','Test','erew',0,'E00000003','Normal','','Cash','PO00000003','2024-12-24','','',10000,'FINAL',NULL,1),(4,'ffd','2024-12-24 11:18:35','fdff','jude',0,'E00000004','Normal','','Cash','PO00000004','2024-12-24','','',76389,'FINAL',NULL,1);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
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
