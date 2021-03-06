-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: Supermarkt_Verwaltung_New
-- ------------------------------------------------------
-- Server version	5.5.57-0+deb8u1

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
-- Table structure for table `Kunde`
--

DROP TABLE IF EXISTS `Kunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kunde` (
  `K_ID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `UID` varchar(20) DEFAULT NULL,
  `M_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`K_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kunde`
--

LOCK TABLES `Kunde` WRITE;
/*!40000 ALTER TABLE `Kunde` DISABLE KEYS */;
INSERT INTO `Kunde` VALUES ('1','Neu','Neu1','AT00102385','AT01'),('2','HartbergerGmbH','Kaertnerstrasse','AT00187965','AT01'),('3','Kunz','Ossiacher Zeile','AT00107915','AT02'),('4','Mick GmbH','Reinfeldstrasse','AT82648208','AT03');
/*!40000 ALTER TABLE `Kunde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lagerentnahme`
--

DROP TABLE IF EXISTS `Lagerentnahme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lagerentnahme` (
  `I_ID` varchar(10) NOT NULL DEFAULT '',
  `S_ID` varchar(10) NOT NULL DEFAULT '',
  `ItemMenge` int(15) DEFAULT NULL,
  `AktuellerPreis` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`I_ID`,`S_ID`),
  KEY `S_ID` (`S_ID`),
  CONSTRAINT `Lagerentnahme_ibfk_1` FOREIGN KEY (`I_ID`) REFERENCES `Lageritem` (`I_ID`),
  CONSTRAINT `Lagerentnahme_ibfk_2` FOREIGN KEY (`S_ID`) REFERENCES `Verkauf` (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lagerentnahme`
--

LOCK TABLES `Lagerentnahme` WRITE;
/*!40000 ALTER TABLE `Lagerentnahme` DISABLE KEYS */;
INSERT INTO `Lagerentnahme` VALUES ('LI01','SA01',15,1.00),('LI02','SA02',5,6.00),('LI03','SA03',50,3.00),('LI04','SA03',3,3.63),('LI05','SA04',10,2.56),('LI06','SA04',3,6.50);
/*!40000 ALTER TABLE `Lagerentnahme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lageritem`
--

DROP TABLE IF EXISTS `Lageritem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lageritem` (
  `I_ID` varchar(10) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Preis` decimal(5,2) DEFAULT NULL,
  `Menge` int(15) DEFAULT NULL,
  `MandatarID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`I_ID`),
  KEY `Lageritem` (`MandatarID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lageritem`
--

LOCK TABLES `Lageritem` WRITE;
/*!40000 ALTER TABLE `Lageritem` DISABLE KEYS */;
INSERT INTO `Lageritem` VALUES ('LI01','Liter Milch',1.00,100,'AT01'),('LI02','Kilo Vollkornbrot',3.00,30,'AT01'),('LI03','500g Honig',5.50,60,'AT02'),('LI04','Tube Ketchup',3.20,50,'AT02'),('LI05','Komischer Karton',11.00,1,'AT03'),('LI06','TestItem',4.00,1,'AT03'),('LI07','Cooles Teil',4.30,5,'AT01'),('LI08','Neues Super Teil',4.30,5,'AT01');
/*!40000 ALTER TABLE `Lageritem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mandatar`
--

DROP TABLE IF EXISTS `Mandatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mandatar` (
  `M_ID` varchar(10) NOT NULL,
  `Firmenname` varchar(20) DEFAULT NULL,
  `Adresse` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Passwort` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mandatar`
--

LOCK TABLES `Mandatar` WRITE;
/*!40000 ALTER TABLE `Mandatar` DISABLE KEYS */;
INSERT INTO `Mandatar` VALUES ('AT01','Hofer GmbH','Kreuzweg 27','AT01','addb0f5e7826c857d7376d1bd9bc33c0c544790a2eac96144a8af22b1298c940'),('AT02','Lidl GmbH','Villacherstrasse 12','AT02','1bfdbcd27fcaef3d5ac75f5473f6d764d4cfe83160dc067a92a19d55747e88b9'),('AT03','GreiÃŸler SÃ¼d','Ossiacherzeile 3','AT03','cfdef42a4579a8e2e8fafa6ba9a8cf07afd6a1fa5a64f9c154b75ac92017acf3');
/*!40000 ALTER TABLE `Mandatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rechnung`
--

DROP TABLE IF EXISTS `Rechnung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rechnung` (
  `Rechnungsnummer` varchar(10) NOT NULL DEFAULT '',
  `schonbezahlt` tinyint(1) DEFAULT NULL,
  `S_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Rechnungsnummer`),
  KEY `S_ID` (`S_ID`),
  CONSTRAINT `Rechnung_ibfk_1` FOREIGN KEY (`S_ID`) REFERENCES `Verkauf` (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rechnung`
--

LOCK TABLES `Rechnung` WRITE;
/*!40000 ALTER TABLE `Rechnung` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rechnung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Verkauf`
--

DROP TABLE IF EXISTS `Verkauf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Verkauf` (
  `S_ID` varchar(10) NOT NULL,
  `Verkaufsdatum` date DEFAULT NULL,
  `KundenID` varchar(10) DEFAULT NULL,
  `MandatarID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`S_ID`),
  KEY `KundenID` (`KundenID`),
  KEY `MandatarID` (`MandatarID`),
  CONSTRAINT `Verkauf_ibfk_1` FOREIGN KEY (`KundenID`) REFERENCES `Kunde` (`K_ID`),
  CONSTRAINT `Verkauf_ibfk_2` FOREIGN KEY (`MandatarID`) REFERENCES `Mandatar` (`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Verkauf`
--

LOCK TABLES `Verkauf` WRITE;
/*!40000 ALTER TABLE `Verkauf` DISABLE KEYS */;
INSERT INTO `Verkauf` VALUES ('SA01','2000-03-11','1','AT01'),('SA02','2018-12-01','2','AT01'),('SA03','1999-05-05','3','AT02'),('SA04','1989-12-12','4','AT03');
/*!40000 ALTER TABLE `Verkauf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `is_kunde`
--

DROP TABLE IF EXISTS `is_kunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `is_kunde` (
  `K_ID` varchar(10) NOT NULL,
  `M_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`K_ID`,`M_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `is_kunde`
--

LOCK TABLES `is_kunde` WRITE;
/*!40000 ALTER TABLE `is_kunde` DISABLE KEYS */;
INSERT INTO `is_kunde` VALUES ('1','AT01'),('2','AT01'),('3','AT02'),('4','AT03');
/*!40000 ALTER TABLE `is_kunde` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'Supermarkt_Verwaltung_New'
--

--
-- Dumping routines for database 'Supermarkt_Verwaltung_New'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25 22:02:32
