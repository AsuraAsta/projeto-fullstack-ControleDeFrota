CREATE DATABASE  IF NOT EXISTS `db_controledefrota` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_controledefrota`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_controledefrota
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `registro_uso`
--

DROP TABLE IF EXISTS `registro_uso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_uso` (
  `id_uso` int(11) NOT NULL AUTO_INCREMENT,
  `condutor` varchar(100) NOT NULL,
  `data_uso` date NOT NULL,
  `veiculo_usado` varchar(30) NOT NULL,
  `motivo_uso` text NOT NULL,
  PRIMARY KEY (`id_uso`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_uso`
--

LOCK TABLES `registro_uso` WRITE;
/*!40000 ALTER TABLE `registro_uso` DISABLE KEYS */;
INSERT INTO `registro_uso` VALUES (1,'joao','2026-02-15','Nissan','Ir a ouro preto'),(2,'Joao Pedro','2026-02-14','Mobi','Ir em cachoeira'),(3,'Joao Pedro','2026-02-14','Mobi','Ir em cachoeira'),(4,'Joao Pedro','2026-02-14','Mobi','Ir em cachoeira'),(5,'Teste','2026-02-14','Nissan','Ir em cachoeira'),(6,'Teste','2026-02-14','Nissan','Ir em cachoeira'),(7,'Teste','2026-02-14','Nissan','Ir em cachoeira'),(8,'joao','2026-02-14','Nissan','Ir em cachoeira'),(9,'joao','2026-02-14','Nissan','Ir em cachoeira'),(10,'','0000-00-00','',''),(11,'joao','2026-02-15','Nissan','Ir a ouro preto'),(12,'joao','2026-02-15','Nissan','Ir a ouro preto'),(13,'Joao Palheiros','2026-02-15','Nissan','Ir a ouro preto'),(14,'Joao Pedro','2026-02-15','Nissan','FDSFDFDAFDAFDAFDAFADFADFAD'),(15,'joao','2026-02-15','Mobi','FDFSDFSDFSDFSDFSduyHAFHAKJH'),(16,'Teste','2026-02-15','Nissan','Ir a ouro preto');
/*!40000 ALTER TABLE `registro_uso` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-15 21:16:28
