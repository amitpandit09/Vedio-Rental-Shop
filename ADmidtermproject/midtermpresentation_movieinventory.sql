-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: midtermpresentation
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movieinventory`
--

DROP TABLE IF EXISTS `movieinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieinventory` (
  `movie_id` varchar(5) NOT NULL,
  `movie_type` varchar(20) DEFAULT NULL,
  `movie_title` varchar(20) DEFAULT NULL,
  `movie_avl_copy` int(11) DEFAULT NULL,
  `movie_orderable` tinyint(1) DEFAULT NULL,
  `emp_id` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movie_type` (`movie_type`),
  KEY `emp_id` (`emp_id`),
  CONSTRAINT `movieinventory_ibfk_1` FOREIGN KEY (`movie_type`) REFERENCES `movietype` (`movie_type_id`) ON UPDATE CASCADE,
  CONSTRAINT `movieinventory_ibfk_2` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieinventory`
--

LOCK TABLES `movieinventory` WRITE;
/*!40000 ALTER TABLE `movieinventory` DISABLE KEYS */;
INSERT INTO `movieinventory` VALUES ('M0001','MT05','Tom and Jerry',2,1,'E0002'),('M0002','MT04','Western Movie',1,1,'E0001'),('M0003','MT03','Calssical Movie',3,0,'E0003'),('M0004','MT01','Charlie Chaplin',1,1,'E0002'),('M0005','MT06','Ugraam',1,1,'E0004'),('M0006','MT08','Sugar',2,0,'E0001'),('M0007','MT07','Naveen',2,1,'E0001'),('M0008','MT02','Newton',4,1,'E0004');
/*!40000 ALTER TABLE `movieinventory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-13 23:57:41
