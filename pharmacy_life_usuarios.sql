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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `numero_telefono` varchar(20) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `id_rol` int DEFAULT NULL,
  `rfc` varchar(13) DEFAULT NULL,
  `cedula` varchar(20) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`),
  KEY `fk_usuarios_roles` (`id_rol`),
  CONSTRAINT `fk_usuarios_roles` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'José Manuel','Morales Guerrero','jmmg.190502@gmail.com','5512345678','password321',1,'MOGM020519U18',NULL,'MOGM020519HVZRRNA4'),(2,'Ana Laura','Torres Salinas','ana.torres@farmadelivery.com','5523456789','farma456',2,'TOSA870613J12',NULL,'TOSA870613MDFRLN09'),(3,'Carlos Eduardo','Reyes Márquez','carlos.reyes@medixmail.com','5534567890','medico123',3,'REMK850912R45','7896542','REMK850912HDFYRL07'),(4,'Lucía Fernanda','Gómez Ruiz','lucia.gomez@gmail.com','5545678901','cliente789',4,'GORL970311T90',NULL,'GORL970311MDFMXC03'),(5,'Erick Daniel','Mendoza Rojas','erick.mendoza@entregas.mx','5556789012','reparto321',5,'MERD920408Z33',NULL,'MERD920408HDFRRC04'),(6,'Isabel','Castañeda Vélez','isa.castaneda@auditores.com','5567890123','auditor456',6,'CAVI790722P56',NULL,'CAVI790722MDFLZS05'),(7,'Luis Alberto','Navarro Díaz','luis.navarro@salud.mx','5578901234','doc456',3,'NADL830514M91','6543219','NADL830514HDFZLS08'),(8,'María Elena','Pérez Robles','maria.perez@hotmail.com','5589012345','cliente456',4,'PERM950102Q24',NULL,'PERM950102MDFRRR01'),(9,'Jonathan Iván','Cruz Herrera','jonathan.cruz@farmadelivery.com','5590123456','farma123',2,'CRHJ880823L17',NULL,'CRHJ880823HDFBRR06'),(10,'Sofía Andrea','Ramírez Ortega','sofia.ramirez@entregas.mx','5511122233','entrega789',5,'RAOS930715F87',NULL,'RAOS930715MDFSRF09');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23  3:55:40
