-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: wissenschaftliche_arbeiten
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES latin1 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arbeiten`
--

DROP TABLE IF EXISTS `arbeiten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arbeiten` (
  `id_arbeit` int NOT NULL,
  `matrikelnummer` bigint NOT NULL,
  `id_studiengang` int NOT NULL,
  `titel` varchar(256) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `start_datum` date DEFAULT NULL,
  `abgabe_datum` date DEFAULT NULL,
  `ende_korrektur` date DEFAULT NULL,
  `kolloquium_datum` date DEFAULT NULL,
  `kolloquium_beginn_uhrzeit` time DEFAULT NULL,
  `kolloquium_ende_uhrzeit` time DEFAULT NULL,
  PRIMARY KEY (`id_arbeit`),
  KEY `fk_Arbeiten_Studierende_idx` (`matrikelnummer`),
  KEY `fk_Arbeiten_Studiengaenge1_idx` (`id_studiengang`),
  CONSTRAINT `fk_Arbeiten_Studiengaenge1` FOREIGN KEY (`id_studiengang`) REFERENCES `studiengaenge` (`id_studiengang`),
  CONSTRAINT `fk_Arbeiten_Studierende` FOREIGN KEY (`matrikelnummer`) REFERENCES `studierende` (`matr_nr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbeiten`
--

LOCK TABLES `arbeiten` WRITE;
/*!40000 ALTER TABLE `arbeiten` DISABLE KEYS */;
INSERT INTO `arbeiten` VALUES (1,1239874563,68,'Social Entrepreneurship in Indien','2023-08-20','2023-10-31',NULL,'2025-05-30',NULL,NULL),(2,9637418523,46,'Machine Learning in der Medizin','2024-09-11','2024-11-13',NULL,NULL,NULL,NULL),(3,1234567890,60,'Digitalisierung im Mittelstand','2020-10-18','2021-05-01',NULL,'2021-06-02','14:00:00','15:30:00'),(4,9876543210,40,'Entwicklung eines KI-Chatbots','2020-11-13','2021-04-13',NULL,'2021-04-29','10:00:00','11:30:00'),(5,4567891234,48,'Internationales Marketing','2021-01-16','2022-03-25',NULL,'2022-05-17','15:00:00','16:30:00'),(6,3216549870,47,'Simulation von Produktionsprozessen','2021-01-25','2021-06-18',NULL,'2021-07-06','09:00:00','10:30:00'),(7,6543217890,58,'Blockchain in der Logistik','2021-04-12','2021-06-07',NULL,'2021-06-29','13:00:00','14:30:00'),(8,7891234560,58,'Strategien f├╝r globale Expansion','2021-04-15','2022-06-03',NULL,'2022-06-24','11:00:00','12:30:00'),(9,1472583690,60,'Optimierung von Datenbanken','2021-04-15','2021-06-08',NULL,'2021-06-30','14:30:00','16:00:00'),(10,2583691470,55,'Modellierung von Verkehrsfl├╝ssen','2021-05-01','2021-07-29',NULL,'2021-08-30','09:30:00','11:00:00'),(11,3692581470,47,'Nachhaltigkeit in der Betriebswirtschaft','2021-05-25','2021-08-03',NULL,'2021-09-29','13:30:00','15:00:00'),(12,7418529630,40,'Einsatz von IoT in der Industrie','2021-05-31','2021-06-10',NULL,'2021-09-29','10:30:00','12:00:00'),(13,8529637410,47,'Kulturelle Einfl├╝sse auf Marketing','2021-06-01','2021-10-21',NULL,'2021-10-29','15:30:00','17:00:00'),(14,9637418520,46,'Sicherheit in Cloud-Systemen','2021-06-28','2021-08-23',NULL,'2021-09-09','14:00:00','15:30:00'),(15,1593574862,58,'Simulation von Lieferketten','2021-07-06','2021-10-27',NULL,'2021-11-24','09:00:00','10:30:00'),(16,3571594862,41,'Controlling in KMU','2021-07-26','2021-12-28',NULL,'2022-02-15','11:30:00','13:00:00'),(17,9517534862,58,'Automatisierung in der Logistik','2021-07-27','2021-10-04',NULL,'2021-10-29','13:00:00','14:30:00'),(18,4561237890,38,'Einsatz von KI in der Buchhaltung','2021-07-30','2021-10-11',NULL,'2021-10-29','14:00:00','15:30:00'),(19,7894561230,4,'Machine Learning f├╝r Bilderkennung','2021-07-30','2021-10-11',NULL,'2021-10-27','10:00:00','11:30:00'),(20,1237894560,53,'Markteintrittsstrategien in Asien','2021-09-27','2021-12-02',NULL,'2022-02-21','13:30:00','15:00:00'),(21,3219876540,48,'Optimierung von Produktionsabl├ñufen','2021-10-26','2022-01-03',NULL,'2023-02-14','09:30:00','11:00:00'),(22,6541239870,40,'Digital Twins in der Fertigung','2021-11-26','2022-05-16',NULL,'2022-09-07','15:00:00','16:30:00'),(23,9873216540,50,'Finanzierung von Start-ups','2021-12-01','2022-02-02',NULL,'2022-03-04','11:00:00','12:30:00'),(24,1479632580,40,'Entwicklung eines Web-Crawlers','2021-12-21','2022-03-11',NULL,'2022-05-29','14:30:00','16:00:00'),(25,2581479630,58,'Exportstrategien f├╝r KMU','2021-12-21','2022-02-22',NULL,'2022-03-31','10:30:00','12:00:00'),(26,3692587410,7,'Simulation von Klimamodellen','2022-01-31','2022-04-18',NULL,'2022-09-19','13:00:00','14:30:00'),(27,7419638520,58,'Autonome Systeme in der Logistik','2022-02-01','2022-05-03',NULL,'2022-06-02','09:00:00','10:30:00'),(28,1234567891,50,'E-Commerce in der Turkmenistani','2022-02-09','2022-07-18',NULL,'2022-09-28','14:00:00','15:30:00'),(29,9876543211,40,'KI-gest├╝tzte Bildverarbeitung','2022-02-15','2022-05-03',NULL,'2022-06-10','10:00:00','11:30:00'),(30,4567891231,48,'Global Branding Strategies','2022-04-14','2022-09-15',NULL,'2022-11-17','13:30:00','15:00:00'),(31,3216549871,58,'Simulation von Verkehrsnetzen','2022-06-15','2022-11-30',NULL,'2022-12-19','09:30:00','11:00:00'),(32,6543217891,58,'Blockchain in Supply Chains','2022-07-20','2023-01-02',NULL,'2023-01-25','15:00:00','16:30:00'),(33,7891234561,50,'Microfinance in Indien','2022-08-01','2022-11-06',NULL,'2022-12-19','11:00:00','12:30:00'),(34,1472583691,25,'Cybersecurity in IoT','2022-10-19','2023-01-02',NULL,'2023-01-25','14:30:00','16:00:00'),(35,2583691471,40,'Wirtschaftsinformatik interkontinental','2022-10-31','2023-01-04',NULL,'2023-02-01','10:30:00','12:00:00'),(36,3692581471,7,'Klimasimulationen mit R','2022-11-06','2023-01-04',NULL,'2023-02-27','13:00:00','14:30:00'),(37,7418529631,7,'Automatisierungstechnologien in der Landwirtschaft','2022-11-21','2023-01-23',NULL,'2023-02-27','09:00:00','10:30:00'),(38,8529637411,50,'Tanssilvanien als IT-Fachkr├ñfteressource','2022-11-28','2023-03-16',NULL,'2023-03-27','15:30:00','17:00:00'),(39,9637418521,40,'Entwicklung eines Chatbots','2022-12-20','2023-02-21',NULL,'2023-03-13','14:00:00','15:30:00'),(40,1593574863,40,'Digital Marketing Trends','2022-12-21','2023-02-22',NULL,'2023-03-13','09:00:00','10:30:00'),(41,3571594863,68,'Fallarbeit im Kinderschutz','2023-01-09',NULL,NULL,'2023-04-21','11:30:00','13:00:00'),(42,9517534863,79,'Ausbeutung und Eingliederung - Platform Work and Digital Colonialism','2023-01-16','2023-03-31',NULL,'2023-04-17','13:00:00','14:30:00'),(43,1239874563,55,'Social Entrepreneurship in Indien','2023-01-24','2023-03-31',NULL,'2023-04-21','10:00:00','11:30:00'),(44,7894561232,40,'Cloud Computing in Brasilien','2023-01-25','2023-05-18',NULL,'2023-06-02','14:30:00','16:00:00'),(45,4561237892,50,'Mikrokredite in Senegal','2023-02-03',NULL,NULL,'2023-06-01','09:30:00','11:00:00'),(46,3216549872,7,'Simulation von Wassermanagement','2023-02-07','2023-04-11',NULL,'2023-04-21','15:00:00','16:30:00'),(47,6543217892,40,'IoT in der Energieversorgung','2023-02-07','2023-04-11',NULL,'2023-04-21','11:00:00','12:30:00'),(48,7891234562,50,'Sustainable Business Models','2023-02-14','2023-04-18',NULL,'2023-06-28','13:30:00','15:00:00'),(49,1472583692,68,'Entwicklung eines Spiels','2023-03-01','2023-07-14',NULL,'2023-07-26','10:30:00','12:00:00'),(50,2583691472,40,'K-Pop und AI - datengetriebene Entwicklung von Pop-Musik','2023-03-18','2023-05-23',NULL,'2023-07-11','14:00:00','15:30:00'),(51,3692581472,7,'Simulation von Windenergie','2023-03-20','2023-08-22',NULL,'2023-09-05','09:00:00','10:30:00'),(52,7418529632,55,'Digitalisierung im Tourismus - der Hochsauerlandkreis','2023-03-27','2023-06-06',NULL,'2023-07-07','15:30:00','17:00:00'),(53,8529637412,50,'Agribusiness in Ghana','2023-04-11','2023-06-22',NULL,'2023-07-25','11:30:00','13:00:00'),(54,9637418522,40,'Sicherheit von Webanwendungen','2023-04-18','2023-07-11',NULL,'2023-07-26','13:00:00','14:30:00'),(55,1593574864,50,'Handelsbeziehungen Iran-Europa','2023-04-27','2023-07-12',NULL,'2023-07-26','10:00:00','11:30:00'),(56,3571594864,7,'Simulation von Hochwasserrisiken','2023-05-01','2023-07-18',NULL,'2023-08-24','14:30:00','16:00:00'),(57,9517534864,58,'Robotik in der Industrie','2023-05-09','2023-07-24',NULL,'2023-08-25','09:30:00','11:00:00'),(58,1234567891,50,'E-Commerce in der Walachei','2023-05-16','2023-10-30',NULL,'2023-11-27','15:00:00','16:30:00'),(59,9876543211,40,'KI-gest├╝tzte Fahrradwege','2023-05-17','2023-07-17',NULL,'2023-07-26','11:00:00','12:30:00'),(60,4567891231,58,'Global Branding Strategies','2023-05-22','2023-09-15',NULL,'2023-10-18','14:30:00','16:00:00'),(61,3216549871,58,'Simulation von Verkehrsnetzen','2023-06-15','2023-08-17',NULL,NULL,NULL,NULL),(62,6543217891,40,'Blockchain in Supply Chains','2023-06-16','2023-10-31',NULL,'2023-12-13','13:00:00','14:30:00'),(63,7891234561,50,'Microfinance in Indien','2023-06-16','2023-08-31',NULL,'2023-10-10','09:00:00','10:30:00'),(64,1472583691,40,'Cybersecurity in IoT','2023-06-22','2023-08-31',NULL,'2023-09-05','15:30:00','17:00:00'),(65,2583691471,40,'Trade Policies in Westafrika','2023-06-26','2023-10-25',NULL,'2023-12-13','14:00:00','15:30:00'),(66,3692581471,50,'Digitalisierung im Mittelstand','2023-06-27','2023-10-24',NULL,'2023-12-18','09:00:00','10:30:00'),(67,7418529631,7,'Automatisierung in der Landwirtschaft','2023-06-29','2023-09-21',NULL,'2023-10-26','11:30:00','13:00:00'),(68,8529637411,40,'Familienunternehmen in der Kurdistan','2023-07-11','2023-09-27',NULL,'2023-11-01','13:00:00','14:30:00'),(69,9637418521,58,'Entwicklung eines Chatbots','2023-07-11','2023-09-27',NULL,'2023-10-06','10:00:00','11:30:00'),(70,1593574863,50,'Digital Marketing Trends','2023-07-12','2023-11-01',NULL,NULL,NULL,NULL),(71,3571594863,68,'Simulation von Produktionslinien','2023-07-12','2023-09-14',NULL,'2023-10-12','09:30:00','11:00:00'),(72,9517534863,78,'Smart Contracts in der Logistik','2023-07-26','2023-09-27',NULL,'2023-10-13','15:00:00','16:30:00'),(73,7894561232,40,'Cloud Computing in Brasilien','2023-08-30','2023-12-21',NULL,'2024-02-20','13:30:00','15:00:00'),(74,4561237892,50,'Mikrokredite in Senegal','2023-10-04','2023-12-06',NULL,'2024-01-25','10:30:00','12:00:00'),(75,3216549872,7,'Nachhaltigkeit in der Betriebswirtschaft','2023-10-13','2023-12-15',NULL,'2024-02-07','14:00:00','15:30:00'),(76,6543217892,7,'IoT in der Energieversorgung','2023-10-27','2024-02-16',NULL,'2024-03-28','09:00:00','10:30:00'),(77,7891234562,60,'Sustainable Business Models','2023-10-27','2024-01-02',NULL,NULL,NULL,NULL),(78,1472583692,72,'Entwicklung eines Spiels','2023-11-08','2024-02-29',NULL,'2024-03-28','11:30:00','13:00:00'),(79,2583691472,60,'K-Pop und Globalisierung','2023-11-10','2024-01-12',NULL,'2024-02-16','13:00:00','14:30:00'),(80,3692581472,7,'Simulation von Windenergie','2023-11-14','2024-02-29',NULL,'2024-07-03','10:00:00','11:30:00'),(81,7418529632,55,'Digitalisierung im Tourismus','2023-12-07','2024-02-08',NULL,NULL,'14:30:00','16:00:00'),(82,8529637412,50,'Agribusiness in Ghana','2023-12-15','2024-02-02','2024-04-15','2024-02-27','09:30:00','11:00:00'),(83,9637418522,60,'Strategisches Controlling','2024-01-29','2024-04-02',NULL,'2024-04-30','15:00:00','16:30:00'),(84,1593574864,50,'Handelsbeziehungen Iran-Europa','2024-02-13','2024-04-22',NULL,'2024-06-04','11:00:00','12:30:00'),(85,3571594864,7,'Simulation von Hochwasserrisiken','2024-02-23','2024-05-10',NULL,'2024-07-04','14:30:00','16:00:00'),(86,9517534864,60,'Robotik in der Pflege','2024-03-28','2024-05-31',NULL,'2024-06-27','10:30:00','12:00:00'),(87,1234567893,77,'Digitalisierung im Gesundheitswesen','2024-04-09','2024-04-08','2024-06-30','2024-06-27','13:00:00','14:30:00'),(88,9876543212,60,'Einsatz von KI in der Bildung','2024-04-19','2024-04-18','2024-06-13','2024-06-12','09:00:00','10:30:00'),(89,4567891232,40,'Data Privacy in Social Media','2024-04-24','2024-06-25',NULL,'2024-08-27','15:30:00','17:00:00'),(90,3216549873,30,'Optimierung von Datenbanken','2024-05-02','2024-06-25',NULL,'2024-07-29','14:00:00','15:30:00'),(91,6543217893,60,'Entwicklung eines VR-Systems','2024-05-14','2024-07-16',NULL,'2024-09-06','09:00:00','10:30:00'),(92,7891234563,68,'Suchtpr├ñvention - die Welt der Vapes','2024-06-04','2024-10-09','2024-10-27','2024-11-22','11:30:00','13:00:00'),(93,1472583693,47,'Nachhaltigkeit in der Modeindustrie','2024-06-21','2024-12-02',NULL,'2025-01-15','13:00:00','14:30:00'),(94,2583691473,60,'Erneuerbare Energien in Nigeria','2024-07-09','2024-10-02','2024-10-27','2024-11-22','10:00:00','11:30:00'),(95,3692581473,7,'Simulation von Luftqualit├ñt in der Frankfurter Einflugschneise','2024-08-05','2024-10-07',NULL,'2024-11-21','14:30:00','16:00:00'),(96,7418529633,58,'Autonome Fahrzeuge','2024-08-05','2024-10-07',NULL,'2024-11-21','09:30:00','11:00:00'),(97,8529637413,60,'Einsatz von Drohnen in der Logistik','2024-08-20','2024-10-02',NULL,NULL,NULL,NULL),(98,1593574865,40,'Big Data in der Wirtschaft','2024-09-13','2024-10-25',NULL,'2024-10-22','13:30:00','15:00:00'),(99,3571594865,40,'Entwicklung eines Webshops','2024-09-30','2025-01-20','2025-03-04','2025-03-27','10:30:00','12:00:00'),(100,9517534865,58,'Blockchain f├╝r Wahlsysteme','2024-10-29','2025-02-18','2025-04-01','2025-02-27','14:00:00','15:30:00'),(101,1239874564,60,'Digital Payments in Indien','2024-11-12','2025-03-04','2025-04-15','2025-03-27','09:00:00','10:30:00'),(102,4561237893,7,'Wasserressourcenmanagement','2024-12-13','2025-02-24','2025-03-24','2025-03-27','11:30:00','13:00:00'),(103,3216549874,50,'KI in der Kundenbetreuung','2024-12-13','2025-02-14','2025-02-26','2025-02-27','13:00:00','14:30:00'),(104,6543217894,7,'Simulation von Erdbebenrisiken','2024-12-16','2025-02-17','2025-02-26',NULL,NULL,NULL),(105,7891234564,60,'Ethische Aspekte von KI','2024-12-18','2025-02-19','2025-02-26','2025-02-27','14:30:00','16:00:00'),(106,1472583694,40,'Entwicklung eines IoT-Ger├ñts','2024-12-18','2025-02-19','2025-03-30','2025-02-27','09:30:00','11:00:00'),(107,3692581474,7,'Roth Technologien in Pakistan','2025-01-09','2025-03-15','2025-03-26','2025-03-27','09:00:00','10:30:00'),(108,8529637414,7,'Solarenergie in Mali','2025-01-15','2025-03-19','2025-03-21','2025-03-27','11:30:00','13:00:00'),(109,1593574866,47,'Internationales Marketing','2025-01-22','2025-03-26','2025-03-27','2025-03-31','10:00:00','10:40:00'),(110,2583691474,69,'Augmented zur Darstellung h├ñuslicher Gewaltszenarien','2025-01-07','2025-04-25',NULL,NULL,NULL,NULL),(111,7418529634,7,'Automatisierung im Bergbau','2025-01-09','2025-05-23',NULL,'2025-07-15',NULL,NULL),(112,9637418524,58,'Digital Twins in der Fertigung','2025-01-22','2025-04-08',NULL,'2025-07-15',NULL,NULL),(113,3571594866,50,'Entwicklung eines KI-Chatbots','2025-01-28','2025-05-22',NULL,NULL,NULL,NULL),(114,9517534866,50,'Simulation von Lieferketten','2025-01-30','2025-04-03',NULL,'2025-07-15',NULL,NULL),(115,7894561234,47,'Controlling in KMU','2025-03-01','2025-05-15',NULL,'2025-07-01',NULL,NULL),(116,6543217895,47,'Kulturelle Einfl├╝sse auf Markenbildung','2025-03-27','2025-05-23',NULL,'2025-08-15',NULL,NULL),(117,1239874565,40,'Sicherheit in Cloud-Systemen','2025-05-15',NULL,NULL,NULL,NULL,NULL),(118,4561237894,58,'Automatisierung in der Logistik','2025-05-15',NULL,NULL,NULL,NULL,NULL),(119,3216549875,7,'Einsatz von IoT in der Industrie','2025-03-01',NULL,NULL,NULL,NULL,NULL),(120,7891234565,58,'Blockchain in der Logistik','2025-03-30',NULL,NULL,NULL,NULL,NULL),(121,1472583695,58,'Optimierung von Produktionsprozessen','2025-03-30',NULL,NULL,NULL,NULL,NULL),(122,7894561233,40,'Smart Cities in Lateinamerika','2024-11-19','2025-03-11','2025-04-22',NULL,NULL,NULL);
/*!40000 ALTER TABLE `arbeiten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fachbereiche`
--

DROP TABLE IF EXISTS `fachbereiche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fachbereiche` (
  `id_fachbereich` int NOT NULL,
  `name_fachbereich` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci NOT NULL,
  PRIMARY KEY (`id_fachbereich`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fachbereiche`
--

LOCK TABLES `fachbereiche` WRITE;
/*!40000 ALTER TABLE `fachbereiche` DISABLE KEYS */;
INSERT INTO `fachbereiche` VALUES (1,'Architektur - Bauingenieurwesen - Geomatik'),(2,'Informatik und Ingenieurwissenschaften'),(3,'Wirtschaft und Recht'),(4,'Soziale Arbeit und Gesundheit');
/*!40000 ALTER TABLE `fachbereiche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noten`
--

DROP TABLE IF EXISTS `noten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noten` (
  `id_arbeit` int NOT NULL,
  `note_arbeit_referent` decimal(2,1) DEFAULT NULL,
  `note_arbeit_korreferent` decimal(2,1) DEFAULT NULL,
  `note_kolloquium_referent` decimal(2,1) DEFAULT NULL,
  `note_kolloquium_korreferent` decimal(2,1) DEFAULT NULL,
  `id_referent` int NOT NULL,
  `id_korreferent` int NOT NULL,
  PRIMARY KEY (`id_arbeit`),
  KEY `fk_Noten_Arbeiten1_idx` (`id_arbeit`),
  KEY `fk_Noten_Referenten1_idx` (`id_referent`),
  KEY `fk_Noten_Referenten2_idx` (`id_korreferent`),
  CONSTRAINT `fk_Noten_Arbeiten1` FOREIGN KEY (`id_arbeit`) REFERENCES `arbeiten` (`id_arbeit`),
  CONSTRAINT `fk_Noten_Referenten1` FOREIGN KEY (`id_referent`) REFERENCES `referenten` (`id_referent`),
  CONSTRAINT `fk_Noten_Referenten2` FOREIGN KEY (`id_korreferent`) REFERENCES `referenten` (`id_referent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noten`
--

LOCK TABLES `noten` WRITE;
/*!40000 ALTER TABLE `noten` DISABLE KEYS */;
INSERT INTO `noten` VALUES (1,2.0,2.0,NULL,NULL,7,1),(2,NULL,NULL,NULL,NULL,2,7),(3,2.0,2.0,2.0,2.0,7,2),(4,2.0,2.0,3.0,3.0,7,4),(5,1.0,1.0,2.0,2.0,7,1),(6,3.0,3.0,2.0,2.0,14,7),(7,2.0,2.0,1.0,1.0,14,7),(8,1.0,1.0,1.0,1.0,7,5),(9,3.0,3.0,3.0,3.0,7,1),(10,2.0,2.0,2.0,2.0,14,7),(11,2.0,2.0,3.0,3.0,7,6),(12,1.0,1.0,1.0,1.0,7,8),(13,2.0,2.0,2.0,2.0,7,9),(14,3.0,3.0,3.0,3.0,7,1),(15,2.0,2.0,1.0,1.0,7,10),(16,4.0,4.0,4.0,4.0,17,7),(17,1.0,1.0,2.0,2.0,3,7),(18,2.0,2.0,2.0,2.0,14,7),(19,1.0,1.0,2.0,2.0,7,1),(20,3.0,3.0,3.0,3.0,7,11),(21,4.0,4.0,4.0,4.0,7,12),(22,2.0,2.0,3.0,3.0,7,13),(23,1.0,1.0,2.0,2.0,17,7),(24,2.0,2.0,2.0,2.0,14,7),(25,3.0,3.0,3.0,3.0,7,1),(26,1.0,1.0,1.0,1.0,17,7),(27,3.0,3.0,2.0,2.0,7,14),(28,2.0,2.0,2.0,2.0,7,15),(29,2.0,2.0,3.0,3.0,7,16),(30,1.0,1.0,2.0,2.0,7,1),(31,2.0,2.0,2.0,2.0,14,7),(32,1.0,1.0,1.0,1.0,7,18),(33,4.0,4.0,3.0,3.0,7,19),(34,2.0,2.0,2.0,2.0,7,20),(35,2.0,2.0,3.0,3.0,7,1),(36,1.0,1.0,1.0,1.0,3,7),(37,2.0,2.0,2.0,2.0,14,7),(38,2.0,2.0,2.0,2.0,7,21),(39,3.0,3.0,3.0,3.0,7,22),(40,1.0,1.0,1.0,1.0,14,7),(41,2.0,2.0,2.0,2.0,17,7),(42,2.0,2.0,2.0,2.0,7,23),(43,2.0,2.0,3.0,3.0,7,24),(44,1.0,1.0,1.0,1.0,7,25),(45,3.0,3.0,2.0,2.0,7,26),(46,2.0,2.0,2.0,2.0,7,1),(47,2.0,2.0,2.0,2.0,14,7),(48,1.0,1.0,1.0,1.0,7,27),(49,2.0,2.0,3.0,3.0,2,7),(50,2.0,2.0,2.0,2.0,7,28),(51,3.0,3.0,2.0,2.0,7,12),(52,1.0,1.0,2.0,2.0,7,21),(53,3.0,3.0,2.0,2.0,7,22),(54,1.0,1.0,1.0,1.0,14,7),(55,2.0,2.0,2.0,2.0,14,7),(56,2.0,2.0,1.0,1.0,7,1),(57,2.0,2.0,3.0,3.0,7,2),(58,1.0,1.0,1.0,1.0,7,2),(59,2.0,2.0,2.0,2.0,14,7),(60,4.0,4.0,2.0,2.0,17,7),(61,5.0,5.0,NULL,NULL,7,3),(62,2.0,2.0,2.0,2.0,7,4),(63,2.0,2.0,1.0,1.0,7,5),(64,3.0,3.0,2.0,2.0,17,7),(65,2.0,2.0,3.0,3.0,7,1),(66,2.0,2.0,1.0,1.0,7,6),(67,3.0,3.0,2.0,2.0,7,8),(68,4.0,4.0,4.0,4.0,7,9),(69,2.0,2.0,2.0,2.0,14,7),(70,5.0,5.0,NULL,NULL,7,10),(71,1.0,1.0,2.0,2.0,7,11),(72,2.0,2.0,2.0,2.0,7,12),(73,3.0,3.0,2.0,2.0,14,7),(74,4.0,4.0,3.0,3.0,7,1),(75,3.0,3.0,3.0,3.0,3,7),(76,4.0,4.0,2.0,2.0,7,13),(77,5.0,5.0,NULL,NULL,7,14),(78,2.0,2.0,2.0,2.0,14,7),(79,2.0,2.0,3.0,3.0,19,7),(80,1.0,1.0,1.0,1.0,7,15),(81,3.0,3.0,2.0,2.0,7,16),(82,2.0,2.0,2.0,2.0,7,17),(83,2.0,2.0,2.0,2.0,7,18),(84,1.0,1.0,1.0,1.0,2,7),(85,2.0,2.0,3.0,3.0,14,7),(86,2.0,2.0,2.0,2.0,7,19),(87,3.0,3.0,2.0,2.0,14,7),(88,1.0,1.0,2.0,2.0,7,28),(89,3.0,3.0,2.0,2.0,17,7),(90,1.0,1.0,1.0,1.0,7,1),(91,2.0,2.0,2.0,2.0,14,7),(92,2.0,2.0,1.0,1.0,7,21),(93,2.0,2.0,3.0,3.0,7,22),(94,1.0,1.0,1.0,1.0,14,7),(95,2.0,2.0,2.0,2.0,7,23),(96,4.0,4.0,2.0,2.0,7,24),(97,5.0,5.0,NULL,NULL,7,25),(98,2.0,2.0,2.0,2.0,17,7),(99,1.0,1.0,1.0,1.0,14,7),(100,4.0,4.0,3.0,3.0,17,7),(101,2.0,2.0,2.0,2.0,2,7),(102,1.0,1.0,1.0,1.0,7,26),(103,2.0,2.0,2.0,2.0,7,27),(104,5.0,5.0,NULL,NULL,7,28),(105,4.0,4.0,4.0,4.0,17,7),(106,4.0,4.0,4.0,4.0,7,1),(107,2.0,2.0,2.0,2.0,14,7),(108,3.0,3.0,4.0,4.0,7,2),(109,1.0,1.0,2.0,2.0,7,3),(110,NULL,NULL,NULL,NULL,14,7),(111,NULL,NULL,NULL,NULL,14,7),(112,NULL,NULL,NULL,NULL,7,4),(113,NULL,NULL,NULL,NULL,7,5),(114,NULL,NULL,NULL,NULL,17,7),(115,NULL,NULL,NULL,NULL,7,6),(116,NULL,NULL,NULL,NULL,7,8),(117,NULL,NULL,NULL,NULL,14,7),(118,NULL,NULL,NULL,NULL,7,9),(119,NULL,NULL,NULL,NULL,7,10),(120,NULL,NULL,NULL,NULL,7,11),(121,NULL,NULL,NULL,NULL,7,1),(122,NULL,NULL,NULL,NULL,7,12);
/*!40000 ALTER TABLE `noten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referenten`
--

DROP TABLE IF EXISTS `referenten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referenten` (
  `id_referent` int NOT NULL,
  `anrede` varchar(16) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `titel` varchar(45) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `vorname` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci NOT NULL,
  `nachname` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci NOT NULL,
  `ist_extern` tinyint NOT NULL,
  `telefon` varchar(32) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `email` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `adresse` varchar(256) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `adr_hinweis` varchar(256) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `strasse` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `haus_nr` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `plz` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `ort` varchar(64) COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id_referent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referenten`
--

LOCK TABLES `referenten` WRITE;
/*!40000 ALTER TABLE `referenten` DISABLE KEYS */;
INSERT INTO `referenten` VALUES (1,'Herr','B.Sc.','Emre','Turan',1,'+49 69 12345678','emre.turan@extern.de','Goethestr. 17, 60313 Frankfurt am Main','',NULL,NULL,NULL,NULL),(2,'Herr','Prof. Dr.','Daniel','Forster',0,'+49 6131 98765432','daniel.forster@uni-mainz.de','Universit├ñtsplatz 1, 55131 Mainz','',NULL,NULL,NULL,NULL),(3,'Frau','Prof. Dr.','Eilzaveta','Gardenia',0,'+49 30 11223344','eilzaveta.gardenia@fu-berlin.de','Kaiserswerther Str. 16-18, 14195 Berlin','',NULL,NULL,NULL,NULL),(4,'Frau','Prof. Dr.','Leila','Hoffmann',0,'+49 221 55667788','leila.hoffmann@uni-koeln.de','Albertus-Magnus-Platz 1, 50923 K├Âln','',NULL,NULL,NULL,NULL),(5,'Frau','Prof. Dr. ing. Dr. hc.','Anne','McMillen',1,'+44 20 98765432','anne.mcmillen@external-research.uk','Universit├ñtsplatz 1, 55131 Mainz','',NULL,NULL,NULL,NULL),(6,'Frau','Prof. Dr.','Katja','Myura',0,'+49 89 22334455','katja.myura@tum.de','Arcisstr. 21, 80333 M├╝nchen','',NULL,NULL,NULL,NULL),(7,'Herr','Prof. Dr.','Markus','Roth',0,'+49 7071 60000','markus.roth@uni-tuebingen.de','Geschwister-Scholl-Platz, 72074 T├╝bingen','',NULL,NULL,NULL,NULL),(8,'Herr','Prof. Dr.','Bedrich','Meier',0,'+49 9131 8522222','bedrich.meier@fau.de','Schlossplatz 4, 91054 Erlangen','',NULL,NULL,NULL,NULL),(9,'Herr','Prof. Dr.','Reginald','Becker',1,'+49 351 79654321','reginald.becker@extern-dresden.de','Am Technologiezentrum 10, 01109 Dresden','',NULL,NULL,NULL,NULL),(10,'Frau','Prof. Dr.','D├Ârthe','Richter',0,'+49 40 428380','doerthe.richter@uni-hamburg.de','Edmund-Siemers-Allee 1, 20146 Hamburg','',NULL,NULL,NULL,NULL),(11,'Frau','Prof. Dr.','Sandra','Weber',0,'+49 511 7620','sandra.weber@uni-hannover.de','Welfengarten 1, 30167 Hannover','',NULL,NULL,NULL,NULL),(12,'Herr','Prof. Dr.','Xaver','Schmidt',1,'+41 44 1234567','xaver.schmidt@external-swiss.ch','Technoparkstr. 1, 8005 Z├╝rich, Schweiz','',NULL,NULL,NULL,NULL),(13,'Herr','Prof. Dr.','Samson','Schuster',0,'+49 6421 2825000','samson.schuster@uni-marburg.de','Biegenstr. 10, 35037 Marburg','',NULL,NULL,NULL,NULL),(14,'Herr','Prof. Dr.','Severin','Schnider',0,'+49 761 2030','severin.schnider@uni-freiburg.de','Bertoldstr. 17, 79098 Freiburg im Breisgau','',NULL,NULL,NULL,NULL),(15,'Frau','Prof. Dr.','Ursula Beate','Wagner',0,'+49 821 5980','ursula.wagner@uni-augsburg.de','Universit├ñtsstr. 2, 86159 Augsburg','',NULL,NULL,NULL,NULL),(16,'Herr','','Thomas','Hieb',1,'+49 711 6850','thomas.hieb@extern-stuttgart.de','Forschungszentrum 7, 70569 Stuttgart','',NULL,NULL,NULL,NULL),(17,'Herr','Prof. Dr.','Ralf','Bornemann',1,'+49 234 3210','ralf.bornemann@external-bochum.de','Innovationsring 1, 44801 Bochum','',NULL,NULL,NULL,NULL),(18,'Herr','Dr.','Arun','Jaganeth',1,'+49 941 9430','arun.jaganeth@external-regensburg.de','TechCampus 1, 93053 Regensburg','',NULL,NULL,NULL,NULL),(19,'Herr','M.Sc.','Henrik','Maske',1,'+49 5251 600','henrik.maske@extern-paderborn.de','Knowledge Park 9, 33100 Paderborn','boxt gerne',NULL,NULL,NULL,NULL),(20,'Frau','Prof. Dr.','Samia','Maisch',1,'+49 631 2050','samia.maisch@extern-kl.de','Science Garden 5, 67663 Kaiserslautern','',NULL,NULL,NULL,NULL),(21,'Herr','Prof. Dr.','Tino','Scholz',0,'+49 3641 931000','tino.scholz@uni-jena.de','Carl-Zeiss-Platz 1, 07743 Jena','',NULL,NULL,NULL,NULL),(22,'Frau','Prof. Dr.','Anneliese','Rattke',0,'+49 341 9730000','anneliese.rattke@uni-leipzig.de','Augustusplatz 10, 04109 Leipzig','',NULL,NULL,NULL,NULL),(23,'Herr','B.Sc.','Sam','SsangYong',0,'+49 89 2890','sam.ssangyong@lmu.de','Geschwister-Scholl-Platz 1, 80539 M├╝nchen','',NULL,NULL,NULL,NULL),(24,'Frau','','Beate','Richter-Lengsfeld',1,'+49 721 6080','beate.richter-lengsfeld@extern-karlsruhe.de','Karlsruher Institut f├╝r Technologie, 76131 Karlsruhe','',NULL,NULL,NULL,NULL),(25,'Herr','Dr. med.vet.','Tom','Schuster',1,'+49 641 990','tom.schuster@extern-giessen.de','Veterin├ñrstr. 13, 35392 Giessen','',NULL,NULL,NULL,NULL),(26,'Herr','Prof. Dr.','Waldemar','Knigg',1,'+49 201 1830','waldemar.koenig@extern-essen.de','Gendarmenmarkt 2, 45141 Essen','',NULL,NULL,NULL,NULL),(27,'Frau','Dr.','Katherina','Zeta',1,'+49 271 7400','katherina.zeta@extern-siegen.de','Emmy-Noether-Campus, 57076 Siegen','hat in mehreren Filmen mitgespielt',NULL,NULL,NULL,NULL),(28,'Herr','Dr.','Fritz','Fischer',1,'+49 951 8630','fritz.fischer@extern-bamberg.de','Kapuzinerstr. 16, 96047 Bamberg','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `referenten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studiengaenge`
--

DROP TABLE IF EXISTS `studiengaenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studiengaenge` (
  `id_studiengang` int NOT NULL,
  `id_fachbereich` int NOT NULL,
  `titel_nach_abschluss` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `art_abschluss` varchar(36) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  PRIMARY KEY (`id_studiengang`),
  KEY `fk_Studiengaenge_Fachbereiche1_idx` (`id_fachbereich`),
  CONSTRAINT `fk_Studiengaenge_Fachbereiche1` FOREIGN KEY (`id_fachbereich`) REFERENCES `fachbereiche` (`id_fachbereich`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studiengaenge`
--

LOCK TABLES `studiengaenge` WRITE;
/*!40000 ALTER TABLE `studiengaenge` DISABLE KEYS */;
INSERT INTO `studiengaenge` VALUES (1,1,'B.A. in Architektur','B.A.'),(2,1,'B.Eng. in Bauingenieurwesen','B.Eng.'),(3,1,'B.Eng. in Bauingenieurwesen dual','B.Eng.'),(4,1,'B.Eng. in Geodatenmanagement','B.Eng.'),(5,1,'B.Eng. in Geodatenmanagement dual - ausbildungsintegrierte Studienvariante','B.Eng.'),(6,1,'B.Eng. in Geodatenmanagement dual - praxisintegrierte Studienvariante','B.Eng.'),(7,1,'B.Eng. in Infrastruktur und Umwelt','B.Eng.'),(8,1,'B.Eng. in Infrastruktur und Umwelt dual - praxisintegrierte Studiengangsvariante','B.Eng.'),(9,1,'B.Sc. in Real Estate und Facility Management','B.Sc.'),(10,1,'B.Eng. in Real Estate und Integrale Geb├ñudetechnik','B.Eng.'),(11,1,'B.Eng. in Stadtplanung','B.Eng.'),(12,1,'M.Sc. in Advanced Architecture','M.Sc.'),(13,1,'M.Sc. in Facility und Real Estate Management','M.Sc.'),(14,1,'M.Eng. in Geodatenmanagement','M.Eng.'),(15,1,'M.Eng. in Infrastruktur f├╝r Wasser und Verkehr','M.Eng.'),(16,1,'M.Eng. in Umweltmanagement und Stadtplanung in Ballungsr├ñumen','M.Eng.'),(17,1,'M.Sc. in Urban Agglomerations','M.Sc.'),(18,1,'M.Eng. in Zukunftssicher Bauen','M.Eng.'),(19,2,'B.Sc. in Angewandte Biowissenschaften dual','B.Sc.'),(20,2,'B.Eng. in Bioverfahrenstechnik','B.Eng.'),(21,2,'B.Eng. in Bioverfahrenstechnik - duales Studium','B.Eng.'),(22,2,'B.Eng. in Elektro- und Informationstechnik','B.Eng.'),(23,2,'B.Eng. in Elektro- und Informationstechnik - duales Studium','B.Eng.'),(24,2,'B.Sc. in Eng. Business Information Systems (Wirtschaftsinformatik)','B.Sc.'),(25,2,'B.Sc. in Informatik','B.Sc.'),(26,2,'B.Sc. in Informatik dual','B.Sc.'),(27,2,'B.Sc. in Informatik - mobile Anwendungen','B.Sc.'),(28,2,'B.Sc. in Int. Business Information Systems','B.Sc.'),(29,2,'B.Eng. in Maschinenbau','B.Eng.'),(30,2,'B.Eng. in Maschinenbau dt. -span. Doppelabschluss','B.Eng.'),(31,2,'B.Eng. in Maschinenbau - duales Studium','B.Eng.'),(32,2,'B.Eng. in Maschinenbau - focusing','B.Eng.'),(33,2,'B.Eng. in Maschinenbau Online','B.Eng.'),(34,2,'B.Eng. in Mechatronik','B.Eng.'),(35,2,'B.Eng. in Produktentwicklung und Technisches Design','B.Eng.'),(36,2,'B.Eng. in Produktentwicklung und Technisches Design - duales Studium','B.Eng.'),(37,2,'B.Eng. in Produktentwicklung und Technisches Design - focus!ng','B.Eng.'),(38,2,'B.Eng. in Service Eng. (Wirtschaftsingenieurwesen Service)','B.Eng.'),(39,2,'B.Eng. in Service Eng. - duales Studium','B.Eng.'),(40,2,'B.Sc. in Wirtschaftsinformatik','B.Sc.'),(41,2,'B.Eng. in Wirtschaftsingenieurwesen Online','B.Eng.'),(42,2,'M.Sc. in Allgemeine Informatik','M.Sc.'),(43,2,'M.Eng. in Allgemeiner Maschinenbau','M.Eng.'),(44,2,'M.Eng. in Bio- und Umwelttechnik','M.Eng.'),(45,2,'M.Sc. in High Integrity Systems','M.Sc.'),(46,2,'M.Sc. in Wirtschaftsinformatik','M.Sc.'),(47,3,'B.A. in Betriebswirtschaftslehre','B.A.'),(48,3,'B.A. in Betriebswirtschaft mit Doppelabschluss','B.A.'),(49,3,'B.A. in Int. Business Administration','B.A.'),(50,3,'B.Sc. in Int. Finance','B.Sc.'),(51,3,'B.A. in Luftverkehrsmanagement dual','B.A.'),(52,3,'B.A. in Public Administration dual','B.A.'),(53,3,'B.A. in Public und Non-Profit Management','B.A.'),(54,3,'B.A. in Steuerlehre dual','B.A.'),(55,3,'B.A. in Tourismusmanagement - Tourism Management dual','B.A.'),(56,3,'B.  Laws in Wirtschaftsrecht (Business Law)','B.  Laws'),(57,3,'M.Sc. in Accounting and Finance','M.Sc.'),(58,3,'M.Sc. in Global Logistics','M.Sc.'),(59,3,'M.A. in Leadership','M.A.'),(60,3,'M.Sc. in Strategisches Informationsmanagement','M.Sc.'),(61,3,'M.B.A. in Sustainable Business Development','MBA'),(62,3,'M.  Laws in Verhandeln und Gestalten von Vertr├ñgen','LL.M.'),(63,3,'M.B.A. in Aviation and Tourism Management','MBA'),(64,4,'B.Sc. in Angewandte Pflegewissenschaft dual','B.Sc.'),(65,4,'B.A. in Berufsp├ñdagogik f├╝r Pflege- und Gesundheitsberufe','B.A.'),(66,4,'B.Sc. in Hebammenwissenschaft','B.Sc.'),(67,4,'B.A. in Management Pflege und Gesundheit','B.A.'),(68,4,'B.A. in Soziale Arbeit','B.A.'),(69,4,'B.A. in Soziale Arbeit - transnational','B.A.'),(70,4,'M.A. in Beratung in der Arbeitswelt','M.A.'),(71,4,'M.A. in Berufsp├ñdagogik f├╝r Pflege','M.A.'),(72,4,'M.A. in Diversit├ñt und Inklusion','M.A.'),(73,4,'M.A. in Forschung in der Sozialen Arbeit','M.A.'),(74,4,'M.Sc. in Inclusive Design','M.Sc.'),(75,4,'M.A. in Performative K├╝nste in sozialen Feldern','M.A.'),(76,4,'M.Sc. in Pflege - Advanced Practice Nursing','M.Sc.'),(77,4,'M.A. in Pflege- und Gesundheitsmanagement','M.A.'),(78,4,'M.A. in Psychosoziale Beratung und Recht','M.A.'),(79,4,'M.A. in Suchttherapie und Sozialmanagement in der Suchthilfe','M.A.');
/*!40000 ALTER TABLE `studiengaenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studierende`
--

DROP TABLE IF EXISTS `studierende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studierende` (
  `matr_nr` bigint NOT NULL,
  `anrede` varchar(16) COLLATE latin1_german2_ci DEFAULT NULL,
  `vorname` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `nachname` varchar(128) CHARACTER SET latin1 COLLATE latin1_german2_ci DEFAULT NULL,
  `email` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `strasse` varchar(128) COLLATE latin1_german2_ci DEFAULT NULL,
  `haus_nr` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `adr_hinweis` varchar(256) COLLATE latin1_german2_ci DEFAULT NULL,
  `plz` varchar(45) COLLATE latin1_german2_ci DEFAULT NULL,
  `ort` varchar(64) COLLATE latin1_german2_ci DEFAULT NULL,
  `telefon` varchar(32) COLLATE latin1_german2_ci DEFAULT NULL,
  `scheinfrei_ja_nein` tinyint DEFAULT NULL,
  `id_studiengang` int DEFAULT NULL,
  PRIMARY KEY (`matr_nr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studierende`
--

LOCK TABLES `studierende` WRITE;
/*!40000 ALTER TABLE `studierende` DISABLE KEYS */;
INSERT INTO `studierende` VALUES (1234567890,NULL,'Lisa','Meyer','lisa.meyer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(1234567891,NULL,'Ayse','Yilmaz','ayse.yilmaz@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(1234567893,NULL,'Mehmet','Aydin','mehmet.aydin@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,77),(1237894560,NULL,'Mia','Lange','mia.lange@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,53),(1239874563,NULL,'Priya','Sharma','priya.sharma@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,68),(1239874564,NULL,'Vikram','Mehta','vikram.mehta@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(1239874565,NULL,'Markus','Wolf','markus.wolf@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1472583690,NULL,'Tobias','Schneider','tobias.schneider@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(1472583691,NULL,'Sofia','Rodriguez','sofia.rodriguez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,25),(1472583692,NULL,'Thanh','Pham','thanh.pham@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,68),(1472583693,NULL,'Lucia','Fernandez','lucia.fernandez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(1472583694,NULL,'Bao','Truong','bao.truong@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1472583695,NULL,'Jan','Kohl','jan.kohl@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,58),(1479632580,NULL,'Nina','Graf','nina.graf@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1593574862,NULL,'Paul','Schulz','paul.schulz@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(1593574863,NULL,'Olivia','Smith','olivia.smith@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1593574864,NULL,'Parsa','Nowak','parsa.nowak@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(1593574865,NULL,'Harry','Jones','harry.jones@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(1593574866,NULL,'Lena','Bauer','lena.bauer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(2581479630,NULL,'Tim','Reuter','tim.reuter@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(2583691470,NULL,'Lena','Hoffmann','lena.hoffmann@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,55),(2583691471,NULL,'Adebayo','Olu','adebayo.olu@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(2583691472,NULL,'Soo-yeon','Lee','sooyeon.lee@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(2583691473,NULL,'Chinedu','Obi','chinedu.obi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(2583691474,NULL,'Seo-jin','Han','seojin.han@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,69),(3216549870,NULL,'Jan','Kohl','jan.kohl@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(3216549871,NULL,'Nguyen','Tran','nguyen.tran@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(3216549872,NULL,'Selin','Kaya','selin.kaya@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(3216549873,NULL,'Lan','Vu','lan.vu@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,30),(3216549874,NULL,'Emre','Celik','emre.celik@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(3216549875,NULL,'Nina','Graf','nina.graf@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,7),(3219876540,NULL,'Elias','Huber','elias.huber@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,48),(3571594862,NULL,'Sara','Koch','sara.koch@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,41),(3571594863,NULL,'Hoang','Le','hoang.le@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,68),(3571594864,NULL,'Hanh','Ngo','hanh.ngo@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(3571594865,NULL,'Thi','Nguyen','thi.nguyen@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(3571594866,NULL,'Tobias','Klein','tobias.klein@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(3692581470,NULL,'Markus','Wolf','markus.wolf@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(3692581471,NULL,'Fatima','Ahmed','fatima.ahmed@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,7),(3692581472,NULL,'Rahul','Verma','rahul.verma@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(3692581473,NULL,'Yasmin','Ali','yasmin.ali@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(3692581474,NULL,'Ananya','Das','ananya.das@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(3692587410,NULL,'Sophia','Lindner','sophia.lindner@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,7),(4561237890,NULL,'Hannah','Berg','hannah.berg@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,38),(4561237892,NULL,'Amina','Diop','amina.diop@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(4561237893,NULL,'Zainab','Ibrahim','zainab.ibrahim@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(4561237894,NULL,'Simon','Neumann','simon.neumann@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(4567891231,NULL,'Emma','Watson','emma.watson@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,48),(4567891232,NULL,'Jame','Brown','1mes.brown@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(4567891234,NULL,'Sophie','Bauer','sophie.bauer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,48),(6541239870,NULL,'Lara','Sommer','lara.sommer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(6543217890,NULL,'Anna','Schwarz','anna.schwarz@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(6543217891,NULL,'Ji-woo','Kim','jiwoo.kim@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(6543217892,NULL,'Darius','Rahimi','darius.rahimi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(6543217893,NULL,'Tae-hyung','Kim','taehyung.kim@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(6543217894,NULL,'Farhad','Azizi','farhad.azizi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(6543217895,NULL,'Paul','Schulz','paul.schulz@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(7418529630,NULL,'Klara','Fischer','klara.fischer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(7418529631,NULL,'Mateo','Gomez','mateo.gomez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(7418529632,NULL,'Isabella','Lopez','isabella.lopez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,55),(7418529633,NULL,'Diego','Perez','diego.perez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(7418529634,NULL,'Pedro','Alvarez','pedro.alvarez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(7419638520,NULL,'Jonas','Neumann','jonas.neumann@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(7891234560,NULL,'Julia','Kramer','julia.kramer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(7891234561,NULL,'Arjun','Singh','arjun.singh@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(7891234562,NULL,'Lily','Evans','lily.evans@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(7891234563,NULL,'Neha','Patel','neha.patel@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,68),(7891234564,NULL,'Grace','Miller','grace.miller@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(7891234565,NULL,'Anna','Weiss','anna.weiss@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,58),(7894561230,NULL,'Leo','Kaiser','leo.kaiser@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,4),(7894561232,NULL,'Carlos','Silva','carlos.silva@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(7894561233,NULL,'Camila','Ortiz','camila.ortiz@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,0,40),(7894561234,NULL,'Klara','Fischer','klara.fischer@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(8529637410,NULL,'Simon','Baumann','simon.baumann@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,47),(8529637411,NULL,'Zeynep','Ozturk','zeynep.ozturk@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(8529637412,NULL,'Kofi','Asante','kofi.asante@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(8529637413,NULL,'Burak','Sahin','burak.sahin@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60),(8529637414,NULL,'Amina','Sow','amina.sow@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,7),(9517534862,NULL,'Niklas','Peters','niklas.peters@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(9517534863,NULL,'Min-seo','Park','minseo.park@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,79),(9517534864,NULL,'Juan','Marinez','juan.martinez@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(9517534865,NULL,'Eun-ji','Choi','eunji.choi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(9517534866,NULL,'Sophie','Hoffmann','sophie.hoffmann@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(9637418520,NULL,'Emma','Wagner','emma.wagner@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,46),(9637418521,NULL,'Amir','Hosseini','amir.hosseini@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(9637418522,NULL,'Elif','Demir','elif.demir@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(9637418523,NULL,'Leila','Mohammadi','leila.mohammadi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,46),(9637418524,NULL,'Deniz','Koc','deniz.koc@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,58),(9873216540,NULL,'Finn','Otto','finn.otto@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,50),(9876543210,NULL,'Max','Myura','max.mueller@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(9876543211,NULL,'Reza','Karimi','reza.karimi@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,40),(9876543212,NULL,'Sara','Khan','sara.khan@stud.uni.de',NULL,NULL,NULL,NULL,NULL,NULL,1,60);
/*!40000 ALTER TABLE `studierende` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-30 20:46:17
