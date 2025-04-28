CREATE DATABASE  IF NOT EXISTS `senai` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `senai`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: senai
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fk_id_sala` int NOT NULL,
  `fk_id_usuario` int NOT NULL,
  `data` date NOT NULL,
  `horarioInicio` time NOT NULL,
  `horarioFim` time NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_id_sala` (`fk_id_sala`),
  KEY `fk_id_usuario` (`fk_id_usuario`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`fk_id_sala`) REFERENCES `sala` (`id_sala`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,1,'2025-04-29','10:00:00','11:00:00'),(2,1,1,'2025-04-28','14:00:00','15:00:00'),(3,10,1,'2025-04-28','14:00:00','15:00:00'),(4,2,1,'2025-04-29','09:00:00','10:00:00'),(5,3,1,'2025-04-29','16:00:00','17:00:00');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sala` (
  `id_sala` int NOT NULL AUTO_INCREMENT,
  `numero` char(5) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `capacidade` int NOT NULL,
  PRIMARY KEY (`id_sala`),
  UNIQUE KEY `numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
INSERT INTO `sala` VALUES (1,'A1','CONVERSORES',16),(2,'A2','ELETRÔNICA',16),(3,'A3','CLP',16),(4,'A4','AUTOMAÇÃO',20),(5,'A5','METROLOGIA',16),(6,'A6','PNEUMÁTICA/HIDRÁULICA',20),(7,'COEL','OFICINA DE COMANDOS ELÉTRICOS',16),(8,'ITEL1','OFICINA DE INSTALAÇÕES ELÉTRICAS - G1',16),(9,'ITEL2','OFICINA DE INSTALAÇÕES ELÉTRICAS - G2',16),(10,'TOR','OFICINA DE TORNEARIA',20),(11,'AJFR','OFICINA DE AJUSTAGEM/FRESAGEM',16),(12,'CNC','OFICINA DE CNC',16),(13,'MMC','OFICINA DE MANUTENÇÃO MECÂNICA',16),(14,'SOLD','OFICINA DE SOLDAGEM',16),(15,'B2','SALA DE AULA',32),(16,'B3','SALA DE AULA',32),(17,'B5','SALA DE AULA',40),(18,'B6','SALA DE AULA',32),(19,'B7','SALA DE AULA',32),(20,'B8','LAB. INFORMÁTICA',20),(21,'B9','LAB. INFORMÁTICA',16),(22,'B10','LAB. INFORMÁTICA',16),(23,'B11','LAB. INFORMÁTICA',40),(24,'B12','LAB. INFORMÁTICA',40),(25,'ALI','LAB. ALIMENTOS',16),(26,'C1','SALA DE AULA',24),(27,'C2','LAB. DE INFORMÁTICA',32),(28,'C3','SALA DE MODELAGEM VESTUÁRIO',20),(29,'C4','SALA DE MODELAGEM VESTUÁRIO',20),(30,'C5','SALA DE AULA',16),(31,'VEST','OFICINA DE VESTUÁRIO',20),(32,'MPESP','OFICINA DE MANUTENÇÃO PESPONTO',16),(33,'AUTO','OFICINA DE MANUTENÇÃO AUTOMOTIVA',20),(34,'D1','SALA MODELAGEM',16),(35,'D2','SALA DE MODELAGEM',20),(36,'D3','SALA DE AULA',16),(37,'D4','SALA DE CRIAÇÃO',18),(38,'CORT1','OFICINA DE CORTE - G1',16),(39,'CORT2','OFICINA DE CORTE - G2',16),(40,'PRE','OFICINA DE PREPARAÇÃO',16),(41,'PESP1','OFICINA DE PESPONTO - G1',16),(42,'PESP2','OFICINA DE PESPONTO - G2',16),(43,'PESP3','OFICINA DE PESPONTO - G3',16),(44,'MONT1','OFICINA DE MONTAGEM - G1',16),(45,'MONT2','OFICINA DE MONTAGEM - G2',16);
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'jao','@','11111111111','123'),(3,'gaby','@2','11111111112','123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'senai'
--

--
-- Dumping routines for database 'senai'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_sala_reservada` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alunods`@`%` PROCEDURE `sp_get_sala_reservada`(
  IN p_id_sala INT,
  IN p_data DATE
)
BEGIN
  -- Declare variables for business hours (can be adjusted as needed)
  DECLARE v_start_time TIME DEFAULT '08:00:00';
  DECLARE v_end_time TIME DEFAULT '18:00:00';
  DECLARE v_sala_duration INT DEFAULT 30; -- Duration in minutes
  
  -- Temporary table to store all possible time salas
  DROP TEMPORARY TABLE IF EXISTS temp_all_salas;
  CREATE TEMPORARY TABLE temp_all_salas (
    sala_start TIME,
    sala_end TIME
  );
  
  -- Populate temporary table with all possible time salas
  SET @current_time = v_start_time;
  
  WHILE @current_time < v_end_time DO
    INSERT INTO temp_all_salas (sala_start, sala_end)
    VALUES (
      @current_time,
      ADDTIME(@current_time, SEC_TO_TIME(v_sala_duration * 60))
    );
    
    SET @current_time = ADDTIME(@current_time, SEC_TO_TIME(v_sala_duration * 60));
  END WHILE;
  
  -- First result set: Reserved time salas for the room
  SELECT
    r.id_reserva,
    u.nome AS nomeUsuario,
    r.horarioInicio,
    r.horarioFim
  FROM
    reserva r
    INNER JOIN usuario u ON r.fk_id_usuario = u.id_usuario
  WHERE
    r.fk_id_sala = p_id_sala AND
    r.data = p_data
  ORDER BY
    r.horarioInicio;
  
  -- Second result set: Available time salas
  SELECT
    t.sala_start AS horarioInicio,
    t.sala_end AS horarioFim
  FROM
    temp_all_salas t
  WHERE
    NOT EXISTS (
      SELECT 1
      FROM reserva r
      WHERE
        r.fk_id_sala = p_id_sala AND
        r.data = p_data AND (
          (r.horarioInicio < t.sala_end AND r.horarioFim > t.sala_start) OR
          (r.horarioInicio = t.sala_start) OR
          (r.horarioFim = t.sala_end)
        )
    )
  ORDER BY
    t.sala_start;
  
  -- Clean up
  DROP TEMPORARY TABLE IF EXISTS temp_all_salas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 14:23:57
