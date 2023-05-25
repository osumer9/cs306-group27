-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: cs306
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `proclaims`
--

DROP TABLE IF EXISTS `proclaims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proclaims` (
  `country_code` char(4) DEFAULT NULL,
  `enr_id` int DEFAULT NULL,
  `quality_id` int DEFAULT NULL,
  `report_id` int DEFAULT NULL,
  `exp_id` int DEFAULT NULL,
  KEY `country_code_idx` (`country_code`),
  KEY `enr_id_idx` (`enr_id`),
  KEY `quality_id_idx` (`quality_id`),
  KEY `report_id_idx` (`report_id`),
  KEY `exp_id_idx` (`exp_id`),
  CONSTRAINT `country_code` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`),
  CONSTRAINT `enr_id` FOREIGN KEY (`enr_id`) REFERENCES `enrollment_report` (`enr_id`),
  CONSTRAINT `exp_id` FOREIGN KEY (`exp_id`) REFERENCES `expenditure_report` (`exp_id`),
  CONSTRAINT `quality_id` FOREIGN KEY (`quality_id`) REFERENCES `teacher_quality_report` (`quality_id`),
  CONSTRAINT `report_id` FOREIGN KEY (`report_id`) REFERENCES `literacy_reports` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proclaims`
--

LOCK TABLES `proclaims` WRITE;
/*!40000 ALTER TABLE `proclaims` DISABLE KEYS */;
/*!40000 ALTER TABLE `proclaims` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28 18:05:21
