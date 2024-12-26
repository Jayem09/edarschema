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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` bigint NOT NULL,
  `current_stock` double NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` double NOT NULL,
  `unit` varchar(10) NOT NULL,
  `category_id` bigint NOT NULL,
  `supplier_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE KEY `UK_hcpr86kgtroqvxu1mxoyx4ahm` (`product_code`),
  KEY `FK_category` (`category_id`),
  KEY `FK_supplier` (`supplier_id`),
  CONSTRAINT `FK_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  CONSTRAINT `FK_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,0,_binary '','324','sfsdf','sdfs',1200,'ml',2,1),(5,0,_binary '','8001','fefewfeqfeqf','Toilet Bowl',5999,'pc',4,1),(10,0,_binary '','6701','fjef','Toilet Bowl',5880,'pc',9,8),(32,0,_binary '','80013','dfesf','Toilet Bowl',1200,'pc',29,8),(34,-20,_binary '','80011','idk bro','Toilet Bowl',5999,'pcs',9,8),(43,-2,_binary '','3636','One peace Water closet 3636, 58x41x62 ','Toilet Bowl',5200,'pcs',9,8),(60,0,_binary '\0','6808','One Way Angle Valve','SUS304 - Angle Valve',200,'pc',59,8),(61,0,_binary '\0','6808B','Black Matte One Way Angle Valve','SUS304 - Angle Valve',252,'pc',59,8),(62,0,_binary '\0','6809B','Black Matte Two Way Angle Valve','SUS304 - Angle Valve',306,'pc',59,8),(63,0,_binary '\0','6809','Two Way Angle Valve','SUS304 - Angle Valve',220,'pc',59,8),(64,0,_binary '\0','6808P','One Way P - Angle Valve - GV','SUS304 - Angle Valve',130,'pc',59,8),(67,0,_binary '\0','6810P','Three Way Angle Valve ','SUS304 - Angle Valve',374,'pc',59,8),(69,0,_binary '\0','YC101','YC101- One Way Angle Valve','SUS304 - Angle Valve',140,'pcs',59,68),(70,0,_binary '\0','8155CPS1','Bathroom Organizer (Single Towel Bar 3609) ','Bathroom Organizer',600,'pcs',48,8),(71,0,_binary '\0','9915A','Alluminum Soap Holder','Soap Holder',100,'pcs',48,8),(72,0,_binary '\0','HX925','Bathroom GV 5 Hooks','Bathroom Hooks',730,'pcs',48,8),(73,0,_binary '\0','8150B','Bathroom Organizer (Single Towel Black)','Bathroom Organizer',1040,'pcs',48,8),(74,0,_binary '\0','8155B','Bathroom Organizer (Towel Bar Org Black)','Bathroom Organizer',2400,'pcs',48,8),(75,0,_binary '\0','N101S','Bathroom Organizer Bar with Hook Silver','Bathroom Organizer',600,'pcs',48,8),(76,0,_binary '\0','8150S','Bathroom Organizer Single Towel ','Bathroom Organizer ',752,'pcs',48,8),(77,0,_binary '\0','BO101','Bathroom Organizer With Hook - Silver GV','Bathroom Organizer',1235,'pcs',48,8),(78,0,_binary '\0','3100B','Bathroom Organizer with Hook TW3 Fold Black ','Bathroom Organizer',1210,'pcs',48,8),(79,0,_binary '\0','3100S','Bathroom Organizer With Hook TW3 Fold Silver','Bathroom Organizer',1100,'pcs',48,8),(80,0,_binary '\0','SD001','Liquid Dishwashing Despenser ','Bathroom Organizer',540,'pcs',48,8),(81,0,_binary '\0','6330S','Towel Bar 40cm, Tower Ring & Towel Hook','SUS304 - Towel Bar',1200,'pcs',48,8),(82,0,_binary '\0','YC661','Bathroom Organizer','Shampoo Holder Double',648,'pcs',48,68),(83,0,_binary '\0','8160S','Bathroom Organizer, Soap Holder','Soap Holder',854,'pcs',48,8),(84,0,_binary '\0','3622','Bathroom Organizer','Corner Shower Basket Double Shelves ',1200,'pcs',48,8),(85,0,_binary '\0','B014','Bathroom Organizer','Shower Wire Basket 1 Layer - Corner Type',1214,'pcs',48,8),(86,0,_binary '\0','SD003','Bathroom Organizer','Soap Despenser Online - Chrome',200,'pcs',48,8),(87,0,_binary '\0','Flat1B','Bathroom Organizer','Soap Holder Black - GV',350,'pcs',48,8),(88,0,_binary '\0','Flat1Q','Bathroom Organizer','Soap Holder Flat1 Q - Gun Metal',400,'pcs',48,8),(89,0,_binary '\0','Flat1G','Bathroom Organizer','Soap Holder Gold - GV',400,'pcs',48,8),(90,0,_binary '\0','Flat1S','Bathroom Organizer','Soap Holder Silver - GV',300,'pcs',48,8),(91,0,_binary '\0','7200THB','Bathroom Organizer','Tissue Holder 7200B Black flip type',600,'pcs',48,8),(92,0,_binary '\0','7200THG','Bathroom Organizer','Tissue Holder 7200G Gold flip type',700,'pcs',48,8),(93,0,_binary '\0','7200THS','Bathroom Organizer','Tissue Holder 7200S Silver flip type',550,'pcs',48,8),(94,0,_binary '\0','TWL1B','Bathroom Organizer','SUS304 Bathroom Towel Bar - 7200B-Single Bar Black',660,'pcs',48,8),(95,0,_binary '\0','TWL1G','Bathroom Organizer','SUS304 Bathroom Towel Bar - 7200G-Single Bar Gold',770,'pcs',48,8),(96,0,_binary '\0','TWL1S','Bathroom Organizer','SUS304 Bathroom Towel Bar - 7200S-Single Bar Silve',550,'pcs',48,8),(97,0,_binary '\0','TWL3B','Bathroom Organizer','SUS304 Bathroom Towel Organizer Black - 7200B-TWL3',1540,'pcs',48,8),(98,0,_binary '\0','TWL2B','Bathroom Organizer','SUS304 Bathroom Towel Organizer Black - 7200G-TWL2',770,'pcs',48,8),(99,0,_binary '\0','TWL3G','Bathroom Organizer','SUS304 Bathroom Towel Organizer Goid - 7200B-TWL3 ',1760,'pcs',48,8),(100,0,_binary '\0','TWL2G','Bathroom Organizer','SUS304 Bathroom Towel Organizer Gold - 7200G-TWL2 ',880,'pcs',48,8),(101,0,_binary '\0','TWL2S','Bathroom Organizer','SUS304 Bathroom Towel Organizer Silver - 7200G-TWL',660,'pcs',48,8),(102,0,_binary '\0','TWL3S','Bathroom Organizer','SUS304 Bathroom Towel Organizer Silver - 7200S-TWL',1430,'pcs',48,8),(103,0,_binary '\0','FlatB','Bathroom Organizer','SUS304 Corner Basket, Shampoo Organizer Black',700,'pcs',48,8),(104,0,_binary '\0','FlatS','Bathroom Organizer','SUS304 Corner Basket, Shampoo Organizer Silver',600,'pcs',48,8),(105,0,_binary '\0','14SW1','Bathroom Organizer','SUS304 Shampoo Organizer Wire1 14S',665,'pcs',48,8),(106,0,_binary '\0','15SW1','Bathroom Organizer','SUS304 Shampoo Organizer Wire1 15S',665,'pcs',48,8),(107,0,_binary '\0','14SW2','Bathroom Organizer','SUS304 Shampoo Organizer Wire2 14S',1425,'pcs',48,8),(108,0,_binary '\0','15SW2','Bathroom Organizer','SUS304 Shampoo Organizer Wire2 14S',1425,'pcs',48,8),(109,0,_binary '\0','8159C','Bathroom Organizer','SUS304 Tissue Holder Phone Holder - CPS',512,'pcs',48,8),(110,0,_binary '\0','TW8591B','Bathroom Organizer','Tissue Holder Phone Holder Black - GV',660,'pcs',48,8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
