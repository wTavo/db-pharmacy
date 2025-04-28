-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: pharmacy_life
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `domicilio_usuarios`
--

DROP TABLE IF EXISTS `domicilio_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domicilio_usuarios` (
  `id_domicilio` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `calle` varchar(150) DEFAULT NULL,
  `numero_ext` varchar(20) DEFAULT NULL,
  `numero_int` varchar(20) DEFAULT NULL,
  `referencias` text,
  `id_cp` int DEFAULT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `domicilio_usuario_ibfk_1_idx` (`id_usuario`),
  KEY `domicilio_usuario_ibfk_2_idx` (`id_cp`),
  CONSTRAINT `domicilio_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  CONSTRAINT `domicilio_usuario_ibfk_2` FOREIGN KEY (`id_cp`) REFERENCES `codigos_postales` (`id_cp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domicilio_usuarios`
--

LOCK TABLES `domicilio_usuarios` WRITE;
/*!40000 ALTER TABLE `domicilio_usuarios` DISABLE KEYS */;
INSERT INTO `domicilio_usuarios` VALUES (1,1,'Ignacio Comonfort','06',NULL,'Pasando la Avenida Lázaro Cárdenas',134459),(2,2,'Pedro Sánchez Magallanes','12B',NULL,'Frente a la escuela primaria',134338),(3,3,'Cuauhtemoczín','S/N',NULL,NULL,134339),(4,4,'El Barí 1ra. Sección','45','2','Junto a la tienda',134340),(5,5,'El Barí 2da. Sección','100',NULL,'A un lado de la capilla',134341);
/*!40000 ALTER TABLE `domicilio_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23  3:55:39
