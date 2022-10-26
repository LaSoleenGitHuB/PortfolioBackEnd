-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: portfolio
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
-- Table structure for table `experiencia_laboral`
--

DROP TABLE IF EXISTS `experiencia_laboral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiencia_laboral` (
  `id` int NOT NULL,
  `nombreEmpresa` varchar(45) DEFAULT NULL,
  `esTrabajoActual` tinyint(1) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `persona_id` int NOT NULL,
  `tipo_de_empleo_id` int NOT NULL,
  PRIMARY KEY (`id`,`tipo_de_empleo_id`),
  KEY `fk_experiencia_laboral_persona_idx` (`persona_id`),
  KEY `fk_experiencia_laboral_tipo_de_empleo1_idx` (`tipo_de_empleo_id`),
  CONSTRAINT `fk_experiencia_laboral_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `fk_experiencia_laboral_tipo_de_empleo1` FOREIGN KEY (`tipo_de_empleo_id`) REFERENCES `tipo_de_empleo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia_laboral`
--

LOCK TABLES `experiencia_laboral` WRITE;
/*!40000 ALTER TABLE `experiencia_laboral` DISABLE KEYS */;
INSERT INTO `experiencia_laboral` VALUES (1,'Barcelona FC',0,'2004-06-08','2021-08-09','Principal delantero y goleador del club',6,9),(2,'Prosegur',0,'2011-05-09','2020-05-09','Recontadora de dinero y manejo de BPS',7,9),(3,'Juncadella  SA',1,'2015-05-09','2022-10-20','Auxiliar Contable',4,9),(4,'La Franca',1,'2001-05-09','2022-10-20','Auxiliar Contable',3,7),(8,'Procrapra',0,'2009-10-15','2010-11-15','Cajera y Atención al cliente',7,8),(9,'Disco',0,'2006-12-15','2008-02-01','Cajera y Atención al cliente',7,8);
/*!40000 ALTER TABLE `experiencia_laboral` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 23:00:46
