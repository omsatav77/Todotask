-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: todotrial
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration` (
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `email1` varchar(45) NOT NULL,
  `gendar` varchar(15) DEFAULT NULL,
  `pass` varchar(15) NOT NULL,
  `DateOfBirth` varchar(15) DEFAULT NULL,
  `Admin` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'activated',
  `curdate` date DEFAULT NULL,
  PRIMARY KEY (`email1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('123','13','1@gmail.com','Male','11','2020-09-17',NULL,'deactivated',NULL),('12211','12','111111','FeMale','','2020-09-02','admin','activated',NULL),('123','123','123@gmail.com','Male','123','2020-09-24',NULL,'activated',NULL),('123','123','12345@gmail.com','FeMale','123q','2020-08-30',NULL,'activated','2020-09-29'),('abc','abc','abc','abc','abc',NULL,NULL,'activated',NULL),('abccc','acaa','abcc@gmail.com','Male','123','2020-08-31',NULL,'activated','2020-09-29'),('askjcb','zxkjb','abcde@gmail.com','FeMale','abcde','2020-09-02',NULL,'activated','2020-09-29'),('asp','asp','asp@gmail.com','Male','asp','',NULL,'activated',NULL),('bbb','bbb','bb@b.com','FeMale','bb','2020-08-30',NULL,'activated','2020-09-29'),('sddssd','hgj','gjj','FeMale','12345','2020-09-24',NULL,'deactivated',NULL),('ll','ll','ll@gmail.com','Male','ll','2020-09-12',NULL,'activated','2020-09-29'),('faisal','md','md@gmail.com','Male','123','2020-09-09',NULL,'activated',NULL),('asd','dwd','okl','okl','okl',NULL,NULL,'deactivated',NULL),('omk','okm','omk','Male','omk','',NULL,'activated',NULL),('omkar','satav','omsatav77@gmail.com','12','omkar','2020-12-12',NULL,'activated',NULL),('qaqa','qaqa','qaqa','Male','123131','2020-09-07',NULL,'activated',NULL),('qq','qq','qqq','qq','qqq','2020-12-12','admin','activated',NULL),('qq','qq','qqq@gm.com','FeMale','qqq','2020-08-30',NULL,'activated','2020-09-29'),('sameer','sam','sam@gmail.com','Male','123','2020-09-03',NULL,'activated',NULL),('asa','zv ','sc@gmail.com','Male','123','2020-09-03',NULL,'activated',NULL),('subrat','jena','sdgfgdh','male','jdhffy',NULL,NULL,'activated',NULL),('subu','subu','subu','subu','susbu',NULL,NULL,'deactivated',NULL),('wwwww','www','www@gmail.com','Male','www','2020-09-08',NULL,'activated','2020-09-23'),('xyz','xyz','xyz@gmail.com','Male','12345','2020-09-08',NULL,'activated',NULL);
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todoadd`
--

DROP TABLE IF EXISTS `todoadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todoadd` (
  `email` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `desc1` varchar(45) DEFAULT NULL,
  `status1` varchar(45) DEFAULT 'start',
  `id` int NOT NULL AUTO_INCREMENT,
  `curdate1` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todoadd`
--

LOCK TABLES `todoadd` WRITE;
/*!40000 ALTER TABLE `todoadd` DISABLE KEYS */;
INSERT INTO `todoadd` VALUES ('okl','1232qwz','132aaa','Start',25,NULL),('qqq','ttt33','desc33','completed',31,NULL),('xyz@gmail.com','asd','asd','start',32,NULL),('','qwas','wqas','start',34,NULL),('','123','123','start',35,NULL),('','1456','1458','start',36,NULL),('1@gmail.com','aws','aws','start',37,NULL),('1@gmail.com','qaws','aqsqw','completed',38,NULL),('1@gmail.com','qqq','qqq','start',39,NULL),('qqq','task22','desc22','start',43,NULL),('',NULL,NULL,'start',48,NULL),('abc','add12','task121234','completed',49,'2020-09-29'),('abc','asd','add','start',50,'2020-09-29');
/*!40000 ALTER TABLE `todoadd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-29 16:08:17
