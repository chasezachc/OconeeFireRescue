CREATE DATABASE  IF NOT EXISTS `FRDB` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `FRDB`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: FRDB
-- ------------------------------------------------------
-- Server version	5.6.20

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
-- Table structure for table `Person_Certificate`
--

DROP TABLE IF EXISTS `Person_Certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person_Certificate` (
  `employeeID` int(11) NOT NULL,
  `certificateID` int(11) NOT NULL,
  `lastRenewed` varchar(10) NOT NULL,
  PRIMARY KEY (`employeeID`,`certificateID`),
  KEY `fk_Person_Certificate_Certificate1_idx` (`certificateID`),
  KEY `fk_Person_Certificate_Person_idx` (`employeeID`),
  CONSTRAINT `fk_Person_Certificate_Certificate1` FOREIGN KEY (`certificateID`) REFERENCES `Certificate` (`certificateID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Person_Certificate_Person` FOREIGN KEY (`employeeID`) REFERENCES `Person` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person_Certificate`
--

LOCK TABLES `Person_Certificate` WRITE;
/*!40000 ALTER TABLE `Person_Certificate` DISABLE KEYS */;
INSERT INTO `Person_Certificate` VALUES (7,2,'2000-01-01'),(7,3,'2000-01-01'),(7,6,'2000-01-01');
/*!40000 ALTER TABLE `Person_Certificate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-01 14:46:14
