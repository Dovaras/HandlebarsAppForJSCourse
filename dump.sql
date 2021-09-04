CREATE DATABASE  IF NOT EXISTS `cekiai` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cekiai`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: cekiai
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `cekiai`
--

DROP TABLE IF EXISTS `cekiai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cekiai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pardavejai_id` int DEFAULT NULL,
  `apmokejimo_tipai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  CONSTRAINT `apmokejimo_tipai_id` FOREIGN KEY (`id`) REFERENCES `mokejimo_tipai` (`⁯id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `pardavejai_id` FOREIGN KEY (`id`) REFERENCES `pardavejai` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `islaidu_tipai`
--

DROP TABLE IF EXISTS `islaidu_tipai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `islaidu_tipai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pavadinimai` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mokejimo_tipai`
--

DROP TABLE IF EXISTS `mokejimo_tipai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mokejimo_tipai` (
  `⁯id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`⁯id`),
  UNIQUE KEY `⁯id_UNIQUE` (`⁯id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pardavejai`
--

DROP TABLE IF EXISTS `pardavejai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pardavejai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prekes`
--

DROP TABLE IF EXISTS `prekes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prekes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pavadinimas` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kaina` int DEFAULT NULL,
  `islaidu_tipai_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `cekiai_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cekiai_id` FOREIGN KEY (`id`) REFERENCES `cekiai` (`id`) ON DELETE CASCADE,
  CONSTRAINT `islaidu_tipai_id` FOREIGN KEY (`id`) REFERENCES `islaidu_tipai` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-04 12:41:53
