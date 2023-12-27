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
-- Table structure for table `czechia_price_category`
--

DROP TABLE IF EXISTS `czechia_price_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czechia_price_category` (
  `code` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price_value` double NOT NULL,
  `price_unit` varchar(2) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_czech_ci COMMENT='Industry branches in the Czech Republic.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czechia_price_category`
--

LOCK TABLES `czechia_price_category` WRITE;
/*!40000 ALTER TABLE `czechia_price_category` DISABLE KEYS */;
INSERT INTO `czechia_price_category` VALUES (111101,'Rýže loupaná dlouhozrnná',1,'kg'),(111201,'Pšeničná mouka hladká',1,'kg'),(111301,'Chléb konzumní kmínový',1,'kg'),(111303,'Pečivo pšeničné bílé',1,'kg'),(111602,'Těstoviny vaječné',1,'kg'),(112101,'Hovězí maso zadní bez kosti',1,'kg'),(112201,'Vepřová pečeně s kostí',1,'kg'),(112401,'Kuřata kuchaná celá',1,'kg'),(112704,'Šunkový salám',1,'kg'),(114201,'Mléko polotučné pasterované',1,'l'),(114401,'Jogurt bílý netučný',150,'g'),(114501,'Eidamská cihla',1,'kg'),(114701,'Vejce slepičí čerstvá',10,'ks'),(115101,'Máslo',1,'kg'),(115201,'Rostlinný roztíratelný tuk',1,'kg'),(116101,'Pomeranče',1,'kg'),(116103,'Banány žluté',1,'kg'),(116104,'Jablka konzumní',1,'kg'),(117101,'Rajská jablka červená kulatá',1,'kg'),(117103,'Papriky',1,'kg'),(117106,'Mrkev',1,'kg'),(117401,'Konzumní brambory',1,'kg'),(118101,'Cukr krystalový',1,'kg'),(122102,'Přírodní minerální voda uhličitá',1,'l'),(212101,'Jakostní víno bílé',0.75,'l'),(213201,'Pivo výčepní, světlé, lahvové',0.5,'l'),(2000001,'Kapr živý',1,'kg');
/*!40000 ALTER TABLE `czechia_price_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-27  6:23:59
