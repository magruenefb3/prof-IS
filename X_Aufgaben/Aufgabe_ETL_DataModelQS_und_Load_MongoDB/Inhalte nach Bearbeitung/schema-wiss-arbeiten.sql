-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: wissenschaftliche_arbeiten
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-31 17:11:26
