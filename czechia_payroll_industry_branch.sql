-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: engeto
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

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
-- Table structure for table `czechia_payroll_industry_branch`
--

DROP TABLE IF EXISTS `czechia_payroll_industry_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czechia_payroll_industry_branch` (
  `code` char(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci COMMENT='Industry branches in the Czech Republic.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czechia_payroll_industry_branch`
--

LOCK TABLES `czechia_payroll_industry_branch` WRITE;
/*!40000 ALTER TABLE `czechia_payroll_industry_branch` DISABLE KEYS */;
INSERT INTO `czechia_payroll_industry_branch` VALUES ('A','Zemědělství, lesnictví, rybářství'),('B','Těžba a dobývání'),('C','Zpracovatelský průmysl'),('D','Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu'),('E','Zásobování vodou; činnosti související s odpady a sanacemi'),('F','Stavebnictví'),('G','Velkoobchod a maloobchod; opravy a údržba motorových vozidel'),('H','Doprava a skladování'),('I','Ubytování, stravování a pohostinství'),('J','Informační a komunikační činnosti'),('K','Peněžnictví a pojišťovnictví'),('L','Činnosti v oblasti nemovitostí'),('M','Profesní, vědecké a technické činnosti'),('N','Administrativní a podpůrné činnosti'),('O','Veřejná správa a obrana; povinné sociální zabezpečení'),('P','Vzdělávání'),('Q','Zdravotní a sociální péče'),('R','Kulturní, zábavní a rekreační činnosti'),('S','Ostatní činnosti');
/*!40000 ALTER TABLE `czechia_payroll_industry_branch` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27  6:22:01
