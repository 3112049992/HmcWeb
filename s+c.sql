-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: studentsdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `Sno` char(4) NOT NULL,
  `Sname` char(8) NOT NULL,
  `Ssex` char(2) DEFAULT NULL,
  `Sbirthday` date DEFAULT NULL,
  `Saddress` varchar(50) DEFAULT NULL,
  `Note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('0001','张青平','男','2002-10-01','jiangxisheng',NULL),('0002','刘东阳','男','2001-12-09','东阳市八一北路33号',NULL),('0003','马晓夏','女','2002-05-12','宁波市五一路763号',NULL),('0004','钱忠理','男','2003-09-23','滨海市洞庭大道279号',NULL),('0005','孙海洋','男','2001-04-03','南京市解放路27号',NULL),('0006','郭小斌','男','2002-11-10','广州市红旗路113号',NULL),('0007','肖月玲','女','2001-12-07','东方市南京路11号',NULL),('0008','张玲珑','女','2002-12-24','滨江市新建路97号',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum` (
  `Cno` char(4) NOT NULL,
  `Cname` varchar(50) DEFAULT NULL,
  `Credit` int DEFAULT '2',
  UNIQUE KEY `Cno` (`Cno`),
  UNIQUE KEY `Cno_2` (`Cno`),
  UNIQUE KEY `Cno_3` (`Cno`),
  UNIQUE KEY `cno_idx` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
INSERT INTO `curriculum` VALUES ('0001','计算机基础应用',2),('0002','C语言程序设计',2),('0003','数据库原理及应用',2),('0004','大学英语',4),('0005','高等数学',4),('0006','Python',3);
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `Sno` char(4) NOT NULL,
  `Cno` char(4) NOT NULL,
  `Grade` decimal(5,2) DEFAULT NULL,
  UNIQUE KEY `grade_sid_cid_idx` (`Sno`,`Cno`),
  KEY `Cno` (`Cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('0001','0001',80.00),('0001','0002',91.00),('0001','0003',90.00),('0001','0004',85.00),('0001','0005',87.00),('0002','0001',73.00),('0002','0002',68.00),('0002','0003',80.00),('0002','0004',79.00),('0002','0005',73.00),('0003','0001',84.00),('0003','0002',92.00),('0003','0003',81.00),('0003','0004',82.00),('0003','0005',75.00),('0004','0006',76.00);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05  8:59:06
