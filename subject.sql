-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: subject
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `cpp`
--

DROP TABLE IF EXISTS `cpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpp` (
  `Q` varchar(30) NOT NULL,
  `QUES` varchar(400) DEFAULT NULL,
  `OP1` varchar(150) DEFAULT NULL,
  `OP2` varchar(150) DEFAULT NULL,
  `OP3` varchar(150) DEFAULT NULL,
  `OP4` varchar(150) DEFAULT NULL,
  `CORRECT` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Q`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpp`
--

LOCK TABLES `cpp` WRITE;
/*!40000 ALTER TABLE `cpp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `java`
--

DROP TABLE IF EXISTS `java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `java` (
  `Q` varchar(10) NOT NULL,
  `QUES` varchar(400) DEFAULT NULL,
  `OP1` varchar(150) DEFAULT NULL,
  `OP2` varchar(150) DEFAULT NULL,
  `OP3` varchar(150) DEFAULT NULL,
  `OP4` varchar(150) DEFAULT NULL,
  `CORRECT` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Q`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `java`
--

LOCK TABLES `java` WRITE;
/*!40000 ALTER TABLE `java` DISABLE KEYS */;
INSERT INTO `java` VALUES ('1','which is not OOP language?','C++','JAVA','PYTHON','C ','C'),('10','Lambda Expression introduced in which version of Java?','java 1.5','java 1.9','java 1.7','java 1.8','java 1.8'),('2','Which of the following is the Marker interface.','Runnable interface','Remote interface','Readable interface','Result interface','Runnable interface'),('3','what is old name of java?','java','Coffee','Oak','Cup','Oak'),('4','what is static ?','keyword','literal','variable','instance','keyword'),('5','Which package contains Random class','java.util','java.lang','java.io','java.awt','java.util'),('6','Which of the following is the reserved keyword in java','object','strictfp','main','system','strictfp'),('7','which is not a program control statement','if','if else ladder','switch case','for','for'),('8','when java 8 is released?','21 January 1992','18 March 2014','14 march 2014','8 march 2008','18 March 2014'),('9','what is Integer','data type','class','variable','function','class');
/*!40000 ALTER TABLE `java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `math`
--

DROP TABLE IF EXISTS `math`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `math` (
  `Q` varchar(30) NOT NULL,
  `QUES` varchar(400) DEFAULT NULL,
  `OP1` varchar(150) DEFAULT NULL,
  `OP2` varchar(150) DEFAULT NULL,
  `OP3` varchar(150) DEFAULT NULL,
  `OP4` varchar(150) DEFAULT NULL,
  `CORRECT` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`Q`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `math`
--

LOCK TABLES `math` WRITE;
/*!40000 ALTER TABLE `math` DISABLE KEYS */;
/*!40000 ALTER TABLE `math` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `python`
--

DROP TABLE IF EXISTS `python`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `python` (
  `Q` varchar(30) DEFAULT NULL,
  `QUES` varchar(400) DEFAULT NULL,
  `OP1` varchar(150) DEFAULT NULL,
  `OP2` varchar(150) DEFAULT NULL,
  `OP3` varchar(150) DEFAULT NULL,
  `OP4` varchar(150) DEFAULT NULL,
  `CORRECT` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `python`
--

LOCK TABLES `python` WRITE;
/*!40000 ALTER TABLE `python` DISABLE KEYS */;
INSERT INTO `python` VALUES ('1','python is famous in which version ','version 3311','version 22','version 11','none of these','version 3311');
/*!40000 ALTER TABLE `python` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-06 14:26:21
