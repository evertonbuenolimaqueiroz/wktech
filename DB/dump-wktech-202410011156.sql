-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: wktech
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `codigo` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `uf` varchar(2) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `clientes_nome_IDX` (`nome`,`uf`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (8,'Ana','ES'),(18,'Beatriz','MG'),(12,'Camila','MG'),(13,'Diego','MG'),(15,'Felipe','MG'),(6,'Gabriela','ES'),(19,'Gustavo','MG'),(14,'Isabela','MG'),(3,'Joao','ES'),(1,'Jose','MG'),(20,'Julia','MG'),(10,'Laura','ES'),(4,'Lucas','ES'),(2,'Maria','MG'),(5,'Mariana','ES'),(17,'Matheus','MG'),(7,'Pedro','ES'),(9,'Rafael','ES'),(16,'Sofia','MG'),(11,'Thiago','MG');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidocab`
--

DROP TABLE IF EXISTS `pedidocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidocab` (
  `pedido` bigint NOT NULL AUTO_INCREMENT,
  `dataemissao` datetime NOT NULL,
  `cliente` bigint DEFAULT NULL,
  `total` decimal(18,3) NOT NULL,
  PRIMARY KEY (`pedido`),
  KEY `pedidocab_clientes_FK` (`cliente`),
  KEY `pedidocab_numero_IDX` (`pedido`,`cliente`) USING BTREE,
  CONSTRAINT `pedidocab_clientes_FK` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`codigo`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidocab`
--

LOCK TABLES `pedidocab` WRITE;
/*!40000 ALTER TABLE `pedidocab` DISABLE KEYS */;
INSERT INTO `pedidocab` VALUES (16,'2024-10-01 11:52:46',10,24.000),(17,'2024-10-01 11:53:44',19,25.333);
/*!40000 ALTER TABLE `pedidocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidoitens`
--

DROP TABLE IF EXISTS `pedidoitens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidoitens` (
  `codigo` bigint NOT NULL AUTO_INCREMENT,
  `pedido` bigint NOT NULL,
  `produto` bigint NOT NULL,
  `quantidade` decimal(18,3) NOT NULL,
  `vlrunitario` decimal(18,3) NOT NULL,
  `vlrtotal` decimal(18,3) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `pedidoprodutos_produtos_FK` (`produto`),
  KEY `pedidoprodutos_pedidocab_FK` (`pedido`),
  CONSTRAINT `pedidoprodutos_pedidocab_FK` FOREIGN KEY (`pedido`) REFERENCES `pedidocab` (`pedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pedidoprodutos_produtos_FK` FOREIGN KEY (`produto`) REFERENCES `produtos` (`codigo`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidoitens`
--

LOCK TABLES `pedidoitens` WRITE;
/*!40000 ALTER TABLE `pedidoitens` DISABLE KEYS */;
INSERT INTO `pedidoitens` VALUES (16,16,20,3.330,8.000,26.640),(17,17,20,2.000,8.333,16.666);
/*!40000 ALTER TABLE `pedidoitens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `codigo` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(150) NOT NULL,
  `precovenda` decimal(18,3) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `produtos_descricao_IDX` (`descricao`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'EcoSmart',10.000),(2,'PowerMax',20.000),(3,'Freshbreeze',30.000),(4,'SmartBlend',40.000),(5,'Zengarden',11.000),(6,'FlexiGrip',50.000),(7,'PureWave',100.000),(8,'BrightGlow',2.000),(9,'SpeedBosst',3.000),(10,'BrioFresh',50.000),(11,'Prod01',10.000),(12,'Prod02',501.000),(13,'Prod03',1.000),(14,'Prod04',2.000),(15,'Prod05',3.000),(16,'Prod06',4.000),(17,'Prod07',5.000),(18,'Prod08',6.000),(19,'Prod09',7.000),(20,'Prod10',8.333);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'wktech'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-01 11:56:54
