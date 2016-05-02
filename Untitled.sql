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
-- Table structure for table `Certificate`
--

DROP TABLE IF EXISTS `Certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Certificate` (
  `certificateID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `years` int(11) NOT NULL,
  PRIMARY KEY (`certificateID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certificate`
--

LOCK TABLES `Certificate` WRITE;
/*!40000 ALTER TABLE `Certificate` DISABLE KEYS */;
INSERT INTO `Certificate` VALUES (1,'Fire','Can help with fires',3),(2,'FireExpert','Can lead with fire emergencies',2),(3,'Car Crash','Can help with car crashes',4),(4,'Car Crash','Can help with car crashes',2),(5,'Fire','Can lead with fire emergencies',1),(6,'Fire Expert','Can lead with fire emergencies',5);
/*!40000 ALTER TABLE `Certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `employeeID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `radioNumber` varchar(6) NOT NULL,
  `stationNumber` varchar(6) NOT NULL,
  `active` varchar(10) NOT NULL,
  `address` varchar(140) DEFAULT NULL,
  `workPhone` int(11) NOT NULL,
  `mobilePhone` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `dob` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (7,'Chase','Campbell','34','234','0','Baxter St',32342342,452433,'email@email.com','Male',NULL,NULL),(15,'Aaron','Layman','22','09','0','null',5554444,4560032,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `Person_Certificate` VALUES (7,6,'2000-01-01');
/*!40000 ALTER TABLE `Person_Certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('thisisa@gmail.com','n4bQgYhMfWWaL+qgxVrQFaO/TxsrC4Is0V1sFbDwCgg=');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-01 21:25:18
