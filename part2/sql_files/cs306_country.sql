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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_name` varchar(30) DEFAULT NULL,
  `country_code` char(4) NOT NULL,
  PRIMARY KEY (`country_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('Aruba','ABW'),('Afghanistan','AFG'),('Angola','AGO'),('Albania','ALB'),('Andorra','AND'),('United Arab Emirates','ARE'),('Argentina','ARG'),('Armenia','ARM'),('American Samoa','ASM'),('Antigua and Barbuda','ATG'),('Australia','AUS'),('Austria','AUT'),('Azerbaijan','AZE'),('Burundi','BDI'),('Belgium','BEL'),('Benin','BEN'),('Burkina Faso','BFA'),('Bangladesh','BGD'),('Bulgaria','BGR'),('Bahrain','BHR'),('Bosnia and Herzegovina','BIH'),('Belarus','BLR'),('Belize','BLZ'),('Bermuda','BMU'),('Bolivia','BOL'),('Brazil','BRA'),('Barbados','BRB'),('Brunei Darussalam','BRN'),('Bhutan','BTN'),('Botswana','BWA'),('Central African Republic','CAF'),('Canada','CAN'),('Switzerland','CHE'),('Channel Islands','CHI'),('Chile','CHL'),('China','CHN'),('Cote d\'Ivoire','CIV'),('Cameroon','CMR'),('Colombia','COL'),('Comoros','COM'),('Cabo Verde','CPV'),('Costa Rica','CRI'),('Cuba','CUB'),('Curacao','CUW'),('Cayman Islands','CYM'),('Cyprus','CYP'),('Czech Republic','CZE'),('Germany','DEU'),('Djibouti','DJI'),('Dominica','DMA'),('Denmark','DNK'),('Dominican Republic','DOM'),('Algeria','DZA'),('Ecuador','ECU'),('Eritrea','ERI'),('Spain','ESP'),('Estonia','EST'),('Ethiopia','ETH'),('Finland','FIN'),('Fiji','FJI'),('France','FRA'),('Faroe Islands','FRO'),('Gabon','GAB'),('United Kingdom','GBR'),('Georgia','GEO'),('Ghana','GHA'),('Gibraltar','GIB'),('Guinea','GIN'),('Guinea-Bissau','GNB'),('Equatorial Guinea','GNQ'),('Greece','GRC'),('Grenada','GRD'),('Greenland','GRL'),('Guatemala','GTM'),('Guam','GUM'),('Guyana','GUY'),('Honduras','HND'),('Croatia','HRV'),('Haiti','HTI'),('Hungary','HUN'),('Indonesia','IDN'),('India','IND'),('Ireland','IRL'),('Iraq','IRQ'),('Iceland','ISL'),('Israel','ISR'),('Italy','ITA'),('Jamaica','JAM'),('Jordan','JOR'),('Japan','JPN'),('Kazakhstan','KAZ'),('Kenya','KEN'),('Kyrgyz Republic','KGZ'),('Cambodia','KHM'),('Kiribati','KIR'),('St. Kitts and Nevis','KNA'),('Kuwait','KWT'),('Lao PDR','LAO'),('Lebanon','LBN'),('Liberia','LBR'),('Libya','LBY'),('St. Lucia','LCA'),('Liechtenstein','LIE'),('Sri Lanka','LKA'),('Lesotho','LSO'),('Lithuania','LTU'),('Luxembourg','LUX'),('Latvia','LVA'),('St. Martin (French part)','MAF'),('Morocco','MAR'),('Monaco','MCO'),('Moldova','MDA'),('Madagascar','MDG'),('Maldives','MDV'),('Mexico','MEX'),('Marshall Islands','MHL'),('North Macedonia','MKD'),('Mali','MLI'),('Malta','MLT'),('Myanmar','MMR'),('Montenegro','MNE'),('Mongolia','MNG'),('Northern Mariana Islands','MNP'),('Mozambique','MOZ'),('Mauritania','MRT'),('Mauritius','MUS'),('Malawi','MWI'),('Malaysia','MYS'),('Namibia','NAM'),('New Caledonia','NCL'),('Niger','NER'),('Nigeria','NGA'),('Nicaragua','NIC'),('Netherlands','NLD'),('Norway','NOR'),('Nepal','NPL'),('Nauru','NRU'),('New Zealand','NZL'),('Oman','OMN'),('Pakistan','PAK'),('Panama','PAN'),('Peru','PER'),('Philippines','PHL'),('Palau','PLW'),('Papua New Guinea','PNG'),('Poland','POL'),('Puerto Rico','PRI'),('Portugal','PRT'),('Paraguay','PRY'),('French Polynesia','PYF'),('Qatar','QAT'),('Romania','ROU'),('Russian Federation','RUS'),('Rwanda','RWA'),('Saudi Arabia','SAU'),('Sudan','SDN'),('Senegal','SEN'),('Singapore','SGP'),('Solomon Islands','SLB'),('Sierra Leone','SLE'),('El Salvador','SLV'),('San Marino','SMR'),('Somalia','SOM'),('Serbia','SRB'),('South Sudan','SSD'),('Sao Tome and Principe','STP'),('Suriname','SUR'),('Slovak Republic','SVK'),('Slovenia','SVN'),('Sweden','SWE'),('Eswatini','SWZ'),('Sint Maarten (Dutch part)','SXM'),('Seychelles','SYC'),('Syrian Arab Republic','SYR'),('Turks and Caicos Islands','TCA'),('Chad','TCD'),('Togo','TGO'),('Thailand','THA'),('Tajikistan','TJK'),('Turkmenistan','TKM'),('Timor-Leste','TLS'),('Tonga','TON'),('Trinidad and Tobago','TTO'),('Tunisia','TUN'),('Turkey','TUR'),('Tuvalu','TUV'),('Tanzania','TZA'),('Uganda','UGA'),('Ukraine','UKR'),('Uruguay','URY'),('United States','USA'),('Uzbekistan','UZB'),('St. Vincent and the Grenadines','VCT'),('British Virgin Islands','VGB'),('Vietnam','VNM'),('Vanuatu','VUT'),('Samoa','WSM'),('Kosovo','XKX'),('South Africa','ZAF'),('Zambia','ZMB'),('Zimbabwe','ZWE');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28 18:05:24
