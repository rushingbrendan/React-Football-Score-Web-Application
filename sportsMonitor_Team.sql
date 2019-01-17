-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: sportsMonitor
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `PK_TeamID` smallint(6) NOT NULL AUTO_INCREMENT,
  `cityName` mediumtext NOT NULL,
  `cityAbbreviation` varchar(3) NOT NULL,
  PRIMARY KEY (`PK_TeamID`),
  UNIQUE KEY `PK_TeamID` (`PK_TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
INSERT INTO `Team` VALUES (1,'Buffalo','BUF'),(2,'New York (G)','NYG'),(3,'New York (J)','NYJ'),(4,'Cincinnati','CIN'),(5,'Cleveland','CLE'),(6,'Pittsburgh','PIT'),(7,'New England','NE'),(8,'Miami','MIA'),(9,'Jacksonville','JAC'),(10,'Los Angeles (R)','LAR'),(11,'Los Angeles (C)','LAC'),(12,'Seattle','SEA'),(13,'Washington','WAS'),(14,'Philadelphia','PHI'),(15,'New Orleans','NO'),(16,'Dallas','DAL'),(17,'Houston','HOU'),(18,'Denver','DEN'),(19,'Kansas City','KC'),(20,'Minnesota','MIN'),(21,'Oakland','OAK'),(22,'Baltimore','BAL'),(23,'Tampa Bay','TB'),(24,'Atlanta','ATL'),(25,'Indiannaoplis','IND'),(26,'Green Bay','GB'),(27,'San Francisco','SF'),(28,'Detroit','DET'),(29,'Chicago','CHI'),(30,'Carolina','CAR'),(31,'Tennessee','TEN'),(32,'Arizona','ARI'),(33,'National Football Conference','NFC'),(34,'American Football Conference','AFC');
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-17 12:25:49
