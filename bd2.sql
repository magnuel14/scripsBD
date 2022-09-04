-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: CobrosBD
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Historial`
--

DROP TABLE IF EXISTS `Historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Historial` (
  `id_historial` int(11) NOT NULL AUTO_INCREMENT,
  `accion_realizada` varchar(250) DEFAULT NULL,
  `id_factura` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_historial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial`
--

LOCK TABLES `Historial` WRITE;
/*!40000 ALTER TABLE `Historial` DISABLE KEYS */;
INSERT INTO `Historial` VALUES (1,'Se ha realizado el siguiente movimiento:  Pago mesual de cien dolares con veinte centavos americanos',39,'2022-09-03 03:29:09');
/*!40000 ALTER TABLE `Historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `Cedula` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'1105219248','Manuel','Vicente','Moscu y Estonia','0993324055','manuelv@gmail.com','2022-08-31 21:27:00','2022-08-31 21:27:00'),(2,'1222364758','Steven','Cueva','Avenida 1, 2','0993324056','steven@gmail.com','2022-08-31 12:25:00','0022-08-31 12:25:00'),(3,'1305219248','Jack','Rojas','Avenida 3, 4','0993324057','jack@gmail.com','2022-08-31 13:27:00','2022-08-31 13:27:00'),(4,'1405219248','Cristiano','Ronaldo','Moscu y Boston','0993324058','bicho@gmail.com','2022-08-31 15:27:00','2022-08-31 15:27:00');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `convenio` (
  `id_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `provincia` varchar(50) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_servicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_convenio`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `convenio_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,'Loja',5000,'2021-02-24','2021-07-24',NULL,'2021-02-24 21:27:00','2021-02-24 21:27:00',1),(2,'Zamora Chimchipe',24.5,'2021-10-14','2021-12-14',NULL,'2021-10-14 21:27:00','2021-10-14 21:27:00',3),(3,'Zamora Chimchipe',35.6,'2021-09-06','2022-11-06',NULL,'2021-09-06 21:27:00','2021-09-06 21:27:00',3),(4,'El Oro',46.8,'2021-07-17','2021-09-17',NULL,'2021-09-17 21:27:00','2021-09-17 21:27:00',3),(5,'Loja',32.67,'2021-06-12','2021-08-12',NULL,'2021-06-12 21:27:00','2021-06-12 21:27:00',3),(6,'Guayas',87.4,'2022-01-06','2022-03-06',NULL,'2022-01-06 21:27:00','2022-01-06 21:27:00',4),(7,'Azuay',15.45,'2022-05-14','2023-07-14',NULL,'2022-05-14 21:27:00','2022-05-14 21:27:00',6),(8,'Loja',27.8,'2022-01-07','2022-03-07',NULL,'2022-01-07 21:27:00','2022-01-07 21:27:00',6),(9,'Cañar',100.25,'2022-09-08','2023-06-08',NULL,'2022-09-08 21:27:00','2022-09-01 21:27:00',8),(10,'Cañar',100.25,'2022-09-15','2023-06-15',NULL,'2022-09-15 21:27:00','2022-09-02 21:27:00',8);
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Daniel','Calle','dani001','12345','2022-08-31 07:30:00','2022-08-31 07:30:00'),(2,'David','Rios','davi002','6789','2022-08-31 08:30:00','2022-08-31 08:30:00');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_vencimiento` date DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `abono` double DEFAULT NULL,
  `recargo` double DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `n_recargos` int(11) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_convenio` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_convenio` (`id_convenio`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`id_convenio`) REFERENCES `convenio` (`id_convenio`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id_empleado`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2021-03-24','2021-03-05','Pago una cuota de mil dólares americanos',1000,0,'parcial',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',3,1,1),(2,'2021-04-24','2021-04-06','Pago una cuota de mil dólares americanos',1000,0,'parcial',0,'2022-04-06 23:11:00','2022-04-06 23:11:00',3,1,1),(3,'2021-05-24','2021-05-04','Pago una cuota de mil dólares americanos',1000,0,'parcial',0,'2022-05-04 23:11:00','2022-05-04 23:11:00',3,1,1),(4,'2021-06-24','2021-06-03','Pago una cuota de mil dólares americanos',1000,0,'parcial',0,'2022-06-03 23:11:00','2022-06-03 23:11:00',3,1,1),(5,'2021-07-24','2021-07-26','Pago una cuota de mil dólares americanos',1000,10,'parcial',1,'2022-07-26 23:11:00','2022-07-26 23:11:00',3,1,1),(6,'2021-11-14','2021-11-09','Pago mensual de veinticuatro dolares y cincuenta centavos americanos',24.5,0,'total',0,'2021-11-09 23:11:00','2021-11-09 23:11:00',1,2,1),(7,'2021-12-14','2021-12-06','Pago mensual de veinticuatro dolares y cincuenta centavos americanos',24.5,0,'total',0,'2021-12-06 23:11:00','2021-12-06 23:11:00',1,2,1),(8,'2021-10-06','2021-10-04','Pago mensual de treinta y cinco dolares con sesenta centavos centavos americanos',35.6,0,'total',0,'2021-10-04 23:11:00','2021-10-04 23:11:00',1,3,1),(9,'2021-11-06','2021-11-03','Pago mensual de treinta y cinco dolares con sesenta centavos centavos americanos',35.6,0,'total',0,'2021-10-03 23:11:00','2021-10-03 23:11:00',1,3,1),(10,'2021-08-17','2021-08-10','Pago mensual de cuarenta y seis dolares con ochenta centavos americanos',46.8,0,'total',0,'2021-08-10 23:11:00','2021-08-10 23:11:00',2,4,1),(11,'2021-09-17','2021-09-11','Pago mensual de cuarenta y seis dolares con ochenta centavos americanos',46.8,0,'total',0,'2021-09-11 23:11:00','2021-09-11 23:11:00',2,4,1),(12,'2021-07-12','2021-07-03','Pago mesual de treinta y dos dolares con sesenta y siente centavos americanos',32.67,0,'total',0,'2021-07-03 23:11:00','2021-07-03 23:11:00',4,5,2),(13,'2021-08-12','2021-08-07','Pago mesual de treinta y dos dolares con sesenta y siente centavos americanos',32.67,0,'total',0,'2021-08-07 23:11:00','2021-08-07 23:11:00',4,5,2),(14,'2022-02-06','2022-02-03','Pago mesual de ochenta y siente dolares con cuarenta centavos americanos',87.4,0,'total',0,'2022-02-03 23:11:00','2022-02-03 23:11:00',4,6,2),(15,'2022-03-06','2022-03-05','Pago mesual de ochenta y siente dolares con cuarenta centavos americanos',87.4,0,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',4,6,2),(16,'2022-06-14','2022-06-10','Pago mesual de quince dolares con cuarenta y cinco centavos americanos',15.45,0,'total',0,'2022-06-10 23:11:00','2022-06-10 23:11:00',3,7,1),(17,'2022-07-14','2022-07-10','Pago mesual de quince dolares con cuarenta y cinco centavos americanos',15.45,0,'total',0,'2022-07-10 23:11:00','2022-07-10 23:11:00',3,7,1),(18,'2022-02-07','2022-02-05','Pago mesual de veinte y siente dolares con cuarenta centavos americanos',27.4,0,'total',0,'2022-02-05 23:11:00','2022-02-05 23:11:00',1,8,1),(19,'2022-03-07','2022-03-05','Pago mesual de veinte y siente dolares con cuarenta centavos americanos',27.4,0,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',1,8,1),(20,'2022-10-08','2022-10-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-10-05 23:11:00','2022-10-05 23:11:00',2,9,1),(21,'2022-11-08','2022-11-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-11-05 23:11:00','2022-11-05 23:11:00',2,9,1),(22,'2022-12-08','2022-12-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-12-05 23:11:00','2022-12-05 23:11:00',2,9,1),(23,'2023-01-08','2022-01-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-01-05 23:11:00','2022-01-05 23:11:00',2,9,1),(24,'2023-02-08','2022-02-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-02-05 23:11:00','2022-02-05 23:11:00',2,9,1),(25,'2023-03-08','2022-03-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-03-05 23:11:00','2022-03-05 23:11:00',2,9,1),(26,'2023-04-08','2022-04-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-04-05 23:11:00','2022-04-05 23:11:00',2,9,1),(27,'2023-05-08','2022-05-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-05-05 23:11:00','2022-05-05 23:11:00',2,9,1),(28,'2023-06-08','2022-06-05','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-06-05 23:11:00','2022-06-05 23:11:00',2,9,1),(29,'2022-10-15','2022-10-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-10-11 23:11:00','2022-10-11 23:11:00',3,10,2),(30,'2022-11-15','2022-11-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-11-11 23:11:00','2022-11-11 23:11:00',3,10,2),(31,'2022-12-15','2022-12-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-12-11 23:11:00','2022-12-11 23:11:00',3,10,2),(32,'2022-01-15','2022-01-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-01-11 23:11:00','2022-01-11 23:11:00',3,10,2),(33,'2022-02-15','2022-02-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-02-11 23:11:00','2022-02-11 23:11:00',3,10,2),(34,'2022-03-15','2022-03-11','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',0,'2022-03-11 23:11:00','2022-03-11 23:11:00',3,10,2),(35,'2022-04-15','2022-04-17','Pago mesual de cien dolares con veinte centavos americanos',100.2,1,'total',1,'2022-04-11 23:11:00','2022-04-11 23:11:00',3,10,2),(36,'2022-05-15','2022-05-18','Pago mesual de cien dolares con veinte centavos americanos',100.2,5.01,'total',2,'2022-05-11 23:11:00','2022-05-11 23:11:00',3,10,2),(37,'2022-06-15','2022-06-19','Pago mesual de cien dolares con veinte centavos americanos',100.2,10.02,'total',3,'2022-06-11 23:11:00','2022-06-11 23:11:00',3,10,2),(38,'2022-08-15','2022-08-14','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',3,'2022-08-14 23:11:00','2022-08-14 23:11:00',3,10,2),(39,'2022-09-15','2022-09-14','Pago mesual de cien dolares con veinte centavos americanos',100.2,0,'total',3,'2022-09-14 23:11:00','2022-09-14 23:11:00',3,10,2);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER historial_movimiento 
AFTER INSERT ON factura 
FOR EACH ROW 
    insert into Historial 
    values(0, CONCAT('Se ha realizado el siguiente movimiento: ' , ' ' , NEW.detalle), NEW.id_factura, now()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `ser_recuperacion`
--

DROP TABLE IF EXISTS `ser_recuperacion`;
/*!50001 DROP VIEW IF EXISTS `ser_recuperacion`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ser_recuperacion` (
  `id_servicio` tinyint NOT NULL,
  `tipo_servicio` tinyint NOT NULL,
  `nombre_institucion` tinyint NOT NULL,
  `COUNT(*)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_servicio` varchar(255) DEFAULT NULL,
  `nombre_institucion` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,'Prestamo','Banco de Pichincha','2022-08-31 08:30:00','2022-08-31 08:30:00'),(2,'Prestamo','Banco de Loja','2022-08-31 10:35:00','2022-08-31 10:35:00'),(3,'Servicio de Agua potable','UMAPAL','2022-08-31 10:35:00','2022-08-31 10:35:00'),(4,'Servicio de Luz Electrica','ERSSA','2022-08-31 10:35:00','2022-08-31 10:35:00'),(5,'Servicio de TV Satelital','TVCable','2022-08-31 10:35:00','2022-08-31 10:35:00'),(6,'Servicio de Telefonia','CNT','2022-08-31 10:35:00','2022-08-31 10:35:00'),(7,'Colegiatura','San Gerardo','2022-08-31 10:35:00','2022-08-31 10:35:00'),(8,'Colegiatura','San Ignacio','2022-08-31 10:35:00','2022-08-31 10:35:00'),(9,'Colegiatura','San Jose','2022-08-31 10:35:00','2022-08-31 10:35:00');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ser_recuperacion`
--

/*!50001 DROP TABLE IF EXISTS `ser_recuperacion`*/;
/*!50001 DROP VIEW IF EXISTS `ser_recuperacion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`magnuel`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ser_recuperacion` AS select `convenio`.`id_servicio` AS `id_servicio`,`servicio`.`tipo_servicio` AS `tipo_servicio`,`servicio`.`nombre_institucion` AS `nombre_institucion`,count(0) AS `COUNT(*)` from (`convenio` join `servicio` on(`convenio`.`id_servicio` = `servicio`.`id_servicio`)) group by `convenio`.`id_servicio` having count(0) > 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-04 12:40:28
