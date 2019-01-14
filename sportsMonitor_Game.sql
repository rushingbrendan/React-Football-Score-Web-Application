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
-- Table structure for table `Game`
--

DROP TABLE IF EXISTS `Game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Game` (
  `PK_GameID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gameDate` date NOT NULL,
  PRIMARY KEY (`PK_GameID`)
) ENGINE=InnoDB AUTO_INCREMENT=1710 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Game`
--

LOCK TABLES `Game` WRITE;
/*!40000 ALTER TABLE `Game` DISABLE KEYS */;
INSERT INTO `Game` VALUES (1,'2011-08-11'),(2,'2011-08-11'),(3,'2011-08-11'),(4,'2011-08-11'),(5,'2011-08-11'),(6,'2011-08-12'),(7,'2011-08-12'),(8,'2011-08-12'),(9,'2011-08-12'),(10,'2011-08-12'),(11,'2011-08-13'),(12,'2011-08-13'),(13,'2011-08-13'),(14,'2011-08-13'),(15,'2011-08-13'),(16,'2011-08-15'),(17,'2011-08-18'),(18,'2011-08-18'),(19,'2011-08-19'),(20,'2011-08-19'),(21,'2011-08-19'),(22,'2011-08-19'),(23,'2011-08-19'),(24,'2011-08-19'),(25,'2011-08-20'),(26,'2011-08-20'),(27,'2011-08-20'),(28,'2011-08-20'),(29,'2011-08-20'),(30,'2011-08-21'),(31,'2011-08-21'),(32,'2011-08-22'),(33,'2011-08-25'),(34,'2011-08-25'),(35,'2011-08-25'),(36,'2011-08-26'),(37,'2011-08-26'),(38,'2011-08-27'),(39,'2011-08-27'),(40,'2011-08-27'),(41,'2011-08-27'),(42,'2011-08-27'),(43,'2011-08-27'),(44,'2011-08-27'),(45,'2011-08-27'),(46,'2011-08-27'),(47,'2011-08-28'),(48,'2011-08-29'),(49,'2011-09-01'),(50,'2011-09-01'),(51,'2011-09-01'),(52,'2011-09-01'),(53,'2011-09-01'),(54,'2011-09-01'),(55,'2011-09-01'),(56,'2011-09-01'),(57,'2011-09-01'),(58,'2011-09-01'),(59,'2011-09-01'),(60,'2011-09-01'),(61,'2011-09-01'),(62,'2011-09-01'),(63,'2011-09-01'),(64,'2011-09-02'),(65,'2011-09-08'),(66,'2011-09-11'),(67,'2011-09-11'),(68,'2011-09-11'),(69,'2011-09-11'),(70,'2011-09-11'),(71,'2011-09-11'),(72,'2011-09-11'),(73,'2011-09-11'),(74,'2011-09-11'),(75,'2011-09-11'),(76,'2011-09-11'),(77,'2011-09-11'),(78,'2011-09-11'),(79,'2011-09-12'),(80,'2011-09-12'),(81,'2011-09-18'),(82,'2011-09-18'),(83,'2011-09-18'),(84,'2011-09-18'),(85,'2011-09-18'),(86,'2011-09-18'),(87,'2011-09-18'),(88,'2011-09-18'),(89,'2011-09-18'),(90,'2011-09-18'),(91,'2011-09-18'),(92,'2011-09-18'),(93,'2011-09-18'),(94,'2011-09-18'),(95,'2011-09-18'),(96,'2011-09-19'),(97,'2011-09-25'),(98,'2011-09-25'),(99,'2011-09-25'),(100,'2011-09-25'),(101,'2011-09-25'),(102,'2011-09-25'),(103,'2011-09-25'),(104,'2011-09-25'),(105,'2011-09-25'),(106,'2011-09-25'),(107,'2011-09-25'),(108,'2011-09-25'),(109,'2011-09-25'),(110,'2011-09-25'),(111,'2011-09-25'),(112,'2011-09-26'),(113,'2011-09-02'),(114,'2011-09-02'),(115,'2011-09-02'),(116,'2011-09-02'),(117,'2011-09-02'),(118,'2011-09-02'),(119,'2011-09-02'),(120,'2011-09-02'),(121,'2011-09-02'),(122,'2011-09-02'),(123,'2011-09-02'),(124,'2011-09-02'),(125,'2011-09-02'),(126,'2011-09-02'),(127,'2011-09-02'),(128,'2011-09-03'),(129,'2011-10-09'),(130,'2011-10-09'),(131,'2011-10-09'),(132,'2011-10-09'),(133,'2011-10-09'),(134,'2011-10-09'),(135,'2011-10-09'),(136,'2011-10-09'),(137,'2011-10-09'),(138,'2011-10-09'),(139,'2011-10-09'),(140,'2011-10-09'),(141,'2011-10-10'),(142,'2011-10-16'),(143,'2011-10-16'),(144,'2011-10-16'),(145,'2011-10-16'),(146,'2011-10-16'),(147,'2011-10-16'),(148,'2011-10-16'),(149,'2011-10-16'),(150,'2011-10-16'),(151,'2011-10-16'),(152,'2011-10-16'),(153,'2011-10-16'),(154,'2011-10-17'),(155,'2011-10-23'),(156,'2011-10-23'),(157,'2011-10-23'),(158,'2011-10-23'),(159,'2011-10-23'),(160,'2011-10-23'),(161,'2011-10-23'),(162,'2011-10-23'),(163,'2011-10-23'),(164,'2011-10-23'),(165,'2011-10-23'),(166,'2011-10-23'),(167,'2011-10-24'),(168,'2011-10-30'),(169,'2011-10-30'),(170,'2011-10-30'),(171,'2011-10-30'),(172,'2011-10-30'),(173,'2011-10-30'),(174,'2011-10-30'),(175,'2011-10-30'),(176,'2011-10-30'),(177,'2011-10-30'),(178,'2011-10-30'),(179,'2011-10-30'),(180,'2011-10-31'),(181,'2011-11-06'),(182,'2011-11-06'),(183,'2011-11-06'),(184,'2011-11-06'),(185,'2011-11-06'),(186,'2011-11-06'),(187,'2011-11-06'),(188,'2011-11-06'),(189,'2011-11-06'),(190,'2011-11-06'),(191,'2011-11-06'),(192,'2011-11-06'),(193,'2011-11-06'),(194,'2011-11-07'),(195,'2011-11-10'),(196,'2011-11-13'),(197,'2011-11-13'),(198,'2011-11-13'),(199,'2011-11-13'),(200,'2011-11-13'),(201,'2011-11-13'),(202,'2011-11-13'),(203,'2011-11-13'),(204,'2011-11-13'),(205,'2011-11-13'),(206,'2011-11-13'),(207,'2011-11-13'),(208,'2011-11-13'),(209,'2011-11-13'),(210,'2011-11-14'),(211,'2011-11-17'),(212,'2011-11-20'),(213,'2011-11-20'),(214,'2011-11-20'),(215,'2011-11-20'),(216,'2011-11-20'),(217,'2011-11-20'),(218,'2011-11-20'),(219,'2011-11-20'),(220,'2011-11-20'),(221,'2011-11-20'),(222,'2011-11-20'),(223,'2011-11-20'),(224,'2011-11-21'),(225,'2011-11-24'),(226,'2011-11-24'),(227,'2011-11-24'),(228,'2011-11-27'),(229,'2011-11-27'),(230,'2011-11-27'),(231,'2011-11-27'),(232,'2011-11-27'),(233,'2011-11-27'),(234,'2011-11-27'),(235,'2011-11-27'),(236,'2011-11-27'),(237,'2011-11-27'),(238,'2011-11-27'),(239,'2011-11-27'),(240,'2011-11-28'),(241,'2011-12-01'),(242,'2011-12-04'),(243,'2011-12-04'),(244,'2011-12-04'),(245,'2011-12-04'),(246,'2011-12-04'),(247,'2011-12-04'),(248,'2011-12-04'),(249,'2011-12-04'),(250,'2011-12-04'),(251,'2011-12-04'),(252,'2011-12-04'),(253,'2011-12-04'),(254,'2011-12-04'),(255,'2011-12-04'),(256,'2011-12-05'),(257,'2011-12-08'),(258,'2011-12-11'),(259,'2011-12-11'),(260,'2011-12-11'),(261,'2011-12-11'),(262,'2011-12-11'),(263,'2011-12-11'),(264,'2011-12-11'),(265,'2011-12-11'),(266,'2011-12-11'),(267,'2011-12-11'),(268,'2011-12-11'),(269,'2011-12-11'),(270,'2011-12-11'),(271,'2011-12-11'),(272,'2011-12-12'),(273,'2011-12-15'),(274,'2011-12-17'),(275,'2011-12-18'),(276,'2011-12-18'),(277,'2011-12-18'),(278,'2011-12-18'),(279,'2011-12-18'),(280,'2011-12-18'),(281,'2011-12-18'),(282,'2011-12-18'),(283,'2011-12-18'),(284,'2011-12-18'),(285,'2011-12-18'),(286,'2011-12-18'),(287,'2011-12-18'),(288,'2011-12-19'),(289,'2011-12-22'),(290,'2011-12-24'),(291,'2011-12-24'),(292,'2011-12-24'),(293,'2011-12-24'),(294,'2011-12-24'),(295,'2011-12-24'),(296,'2011-12-24'),(297,'2011-12-24'),(298,'2011-12-24'),(299,'2011-12-24'),(300,'2011-12-24'),(301,'2011-12-24'),(302,'2011-12-24'),(303,'2011-12-25'),(304,'2011-12-26'),(305,'2011-12-01'),(306,'2011-12-01'),(307,'2011-12-01'),(308,'2011-12-01'),(309,'2011-12-01'),(310,'2011-12-01'),(311,'2011-12-01'),(312,'2011-12-01'),(313,'2011-12-01'),(314,'2011-12-01'),(315,'2011-12-01'),(316,'2011-12-01'),(317,'2011-12-01'),(318,'2011-12-01'),(319,'2011-12-01'),(320,'2011-12-01'),(321,'2012-01-07'),(322,'2012-01-07'),(323,'2012-01-08'),(324,'2012-01-08'),(325,'2012-01-14'),(326,'2012-01-14'),(327,'2012-01-15'),(328,'2012-01-15'),(329,'2012-01-22'),(330,'2012-01-22'),(331,'2012-01-29'),(332,'2012-02-05'),(333,'2012-02-05'),(334,'2012-08-09'),(335,'2012-08-09'),(336,'2012-08-09'),(337,'2012-08-09'),(338,'2012-08-09'),(339,'2012-08-09'),(340,'2012-08-10'),(341,'2012-08-10'),(342,'2012-08-10'),(343,'2012-08-10'),(344,'2012-08-10'),(345,'2012-08-10'),(346,'2012-08-11'),(347,'2012-08-11'),(348,'2012-08-12'),(349,'2012-08-13'),(350,'2012-08-16'),(351,'2012-08-16'),(352,'2012-08-17'),(353,'2012-08-17'),(354,'2012-08-17'),(355,'2012-08-17'),(356,'2012-08-17'),(357,'2012-08-17'),(358,'2012-08-18'),(359,'2012-08-18'),(360,'2012-08-18'),(361,'2012-08-18'),(362,'2012-08-18'),(363,'2012-08-18'),(364,'2012-08-19'),(365,'2012-08-20'),(366,'2012-08-23'),(367,'2012-08-23'),(368,'2012-08-23'),(369,'2012-08-24'),(370,'2012-08-24'),(371,'2012-08-24'),(372,'2012-08-24'),(373,'2012-08-24'),(374,'2012-08-24'),(375,'2012-08-25'),(376,'2012-08-25'),(377,'2012-08-25'),(378,'2012-08-25'),(379,'2012-08-25'),(380,'2012-08-26'),(381,'2012-08-26'),(382,'2012-08-29'),(383,'2012-08-29'),(384,'2012-08-29'),(385,'2012-08-30'),(386,'2012-08-30'),(387,'2012-08-30'),(388,'2012-08-30'),(389,'2012-08-30'),(390,'2012-08-30'),(391,'2012-08-30'),(392,'2012-08-30'),(393,'2012-08-30'),(394,'2012-08-30'),(395,'2012-08-30'),(396,'2012-08-30'),(397,'2012-08-30'),(398,'2012-09-05'),(399,'2012-09-09'),(400,'2012-09-09'),(401,'2012-09-09'),(402,'2012-09-09'),(403,'2012-09-09'),(404,'2012-09-09'),(405,'2012-09-09'),(406,'2012-09-09'),(407,'2012-09-09'),(408,'2012-09-09'),(409,'2012-09-09'),(410,'2012-09-09'),(411,'2012-09-09'),(412,'2012-09-10'),(413,'2012-09-10'),(414,'2012-09-13'),(415,'2012-09-16'),(416,'2012-09-16'),(417,'2012-09-16'),(418,'2012-09-16'),(419,'2012-09-16'),(420,'2012-09-16'),(421,'2012-09-16'),(422,'2012-09-16'),(423,'2012-09-16'),(424,'2012-09-16'),(425,'2012-09-16'),(426,'2012-09-16'),(427,'2012-09-16'),(428,'2012-09-16'),(429,'2012-09-17'),(430,'2012-09-20'),(431,'2012-09-23'),(432,'2012-09-23'),(433,'2012-09-23'),(434,'2012-09-23'),(435,'2012-09-23'),(436,'2012-09-23'),(437,'2012-09-23'),(438,'2012-09-23'),(439,'2012-09-23'),(440,'2012-09-23'),(441,'2012-09-23'),(442,'2012-09-23'),(443,'2012-09-23'),(444,'2012-09-23'),(445,'2012-09-24'),(446,'2012-09-27'),(447,'2012-09-30'),(448,'2012-09-30'),(449,'2012-09-30'),(450,'2012-09-30'),(451,'2012-09-30'),(452,'2012-09-30'),(453,'2012-09-30'),(454,'2012-09-30'),(455,'2012-09-30'),(456,'2012-09-30'),(457,'2012-09-30'),(458,'2012-09-30'),(459,'2012-09-30'),(460,'2012-09-01'),(461,'2012-10-04'),(462,'2012-10-07'),(463,'2012-10-07'),(464,'2012-10-07'),(465,'2012-10-07'),(466,'2012-10-07'),(467,'2012-10-07'),(468,'2012-10-07'),(469,'2012-10-07'),(470,'2012-10-07'),(471,'2012-10-07'),(472,'2012-10-07'),(473,'2012-10-07'),(474,'2012-10-08'),(475,'2012-10-11'),(476,'2012-10-14'),(477,'2012-10-14'),(478,'2012-10-14'),(479,'2012-10-14'),(480,'2012-10-14'),(481,'2012-10-14'),(482,'2012-10-14'),(483,'2012-10-14'),(484,'2012-10-14'),(485,'2012-10-14'),(486,'2012-10-14'),(487,'2012-10-14'),(488,'2012-10-15'),(489,'2012-10-18'),(490,'2012-10-21'),(491,'2012-10-21'),(492,'2012-10-21'),(493,'2012-10-21'),(494,'2012-10-21'),(495,'2012-10-21'),(496,'2012-10-21'),(497,'2012-10-21'),(498,'2012-10-21'),(499,'2012-10-21'),(500,'2012-10-21'),(501,'2012-10-22'),(502,'2012-10-25'),(503,'2012-10-28'),(504,'2012-10-28'),(505,'2012-10-28'),(506,'2012-10-28'),(507,'2012-10-28'),(508,'2012-10-28'),(509,'2012-10-28'),(510,'2012-10-28'),(511,'2012-10-28'),(512,'2012-10-28'),(513,'2012-10-28'),(514,'2012-10-28'),(515,'2012-10-29'),(516,'2012-11-01'),(517,'2012-11-04'),(518,'2012-11-04'),(519,'2012-11-04'),(520,'2012-11-04'),(521,'2012-11-04'),(522,'2012-11-04'),(523,'2012-11-04'),(524,'2012-11-04'),(525,'2012-11-04'),(526,'2012-11-04'),(527,'2012-11-04'),(528,'2012-11-04'),(529,'2012-11-05'),(530,'2012-11-08'),(531,'2012-11-11'),(532,'2012-11-11'),(533,'2012-11-11'),(534,'2012-11-11'),(535,'2012-11-11'),(536,'2012-11-11'),(537,'2012-11-11'),(538,'2012-11-11'),(539,'2012-11-11'),(540,'2012-11-11'),(541,'2012-11-11'),(542,'2012-11-11'),(543,'2012-11-12'),(544,'2012-11-15'),(545,'2012-11-18'),(546,'2012-11-18'),(547,'2012-11-18'),(548,'2012-11-18'),(549,'2012-11-18'),(550,'2012-11-18'),(551,'2012-11-18'),(552,'2012-11-18'),(553,'2012-11-18'),(554,'2012-11-18'),(555,'2012-11-18'),(556,'2012-11-18'),(557,'2012-11-19'),(558,'2012-11-22'),(559,'2012-11-22'),(560,'2012-11-22'),(561,'2012-11-25'),(562,'2012-11-25'),(563,'2012-11-25'),(564,'2012-11-25'),(565,'2012-11-25'),(566,'2012-11-25'),(567,'2012-11-25'),(568,'2012-11-25'),(569,'2012-11-25'),(570,'2012-11-25'),(571,'2012-11-25'),(572,'2012-11-25'),(573,'2012-11-26'),(574,'2012-11-29'),(575,'2012-11-02'),(576,'2012-11-02'),(577,'2012-11-02'),(578,'2012-11-02'),(579,'2012-11-02'),(580,'2012-11-02'),(581,'2012-11-02'),(582,'2012-11-02'),(583,'2012-11-02'),(584,'2012-11-02'),(585,'2012-11-02'),(586,'2012-11-02'),(587,'2012-11-02'),(588,'2012-11-02'),(589,'2012-11-03'),(590,'2012-12-06'),(591,'2012-12-09'),(592,'2012-12-09'),(593,'2012-12-09'),(594,'2012-12-09'),(595,'2012-12-09'),(596,'2012-12-09'),(597,'2012-12-09'),(598,'2012-12-09'),(599,'2012-12-09'),(600,'2012-12-09'),(601,'2012-12-09'),(602,'2012-12-09'),(603,'2012-12-09'),(604,'2012-12-09'),(605,'2012-12-10'),(606,'2012-12-13'),(607,'2012-12-16'),(608,'2012-12-16'),(609,'2012-12-16'),(610,'2012-12-16'),(611,'2012-12-16'),(612,'2012-12-16'),(613,'2012-12-16'),(614,'2012-12-16'),(615,'2012-12-16'),(616,'2012-12-16'),(617,'2012-12-16'),(618,'2012-12-16'),(619,'2012-12-16'),(620,'2012-12-16'),(621,'2012-12-17'),(622,'2012-12-22'),(623,'2012-12-23'),(624,'2012-12-23'),(625,'2012-12-23'),(626,'2012-12-23'),(627,'2012-12-23'),(628,'2012-12-23'),(629,'2012-12-23'),(630,'2012-12-23'),(631,'2012-12-23'),(632,'2012-12-23'),(633,'2012-12-23'),(634,'2012-12-23'),(635,'2012-12-23'),(636,'2012-12-23'),(637,'2012-12-23'),(638,'2012-12-30'),(639,'2012-12-30'),(640,'2012-12-30'),(641,'2012-12-30'),(642,'2012-12-30'),(643,'2012-12-30'),(644,'2012-12-30'),(645,'2012-12-30'),(646,'2012-12-30'),(647,'2012-12-30'),(648,'2012-12-30'),(649,'2012-12-30'),(650,'2012-12-30'),(651,'2012-12-30'),(652,'2012-12-30'),(653,'2012-12-30'),(654,'2013-01-05'),(655,'2013-01-05'),(656,'2013-01-06'),(657,'2013-01-06'),(658,'2013-01-12'),(659,'2013-01-12'),(660,'2013-01-13'),(661,'2013-01-13'),(662,'2013-01-20'),(663,'2013-01-20'),(664,'2013-01-27'),(665,'2013-01-03'),(666,'2013-02-04'),(667,'2013-08-08'),(668,'2013-08-08'),(669,'2013-08-08'),(670,'2013-08-08'),(671,'2013-08-08'),(672,'2013-08-08'),(673,'2013-08-09'),(674,'2013-08-09'),(675,'2013-08-09'),(676,'2013-08-09'),(677,'2013-08-09'),(678,'2013-08-09'),(679,'2013-08-09'),(680,'2013-08-09'),(681,'2013-08-10'),(682,'2013-08-11'),(683,'2013-08-15'),(684,'2013-08-15'),(685,'2013-08-15'),(686,'2013-08-15'),(687,'2013-08-16'),(688,'2013-08-16'),(689,'2013-08-16'),(690,'2013-08-16'),(691,'2013-08-17'),(692,'2013-08-17'),(693,'2013-08-17'),(694,'2013-08-17'),(695,'2013-08-17'),(696,'2013-08-17'),(697,'2013-08-18'),(698,'2013-08-19'),(699,'2013-08-22'),(700,'2013-08-22'),(701,'2013-08-23'),(702,'2013-08-23'),(703,'2013-08-24'),(704,'2013-08-24'),(705,'2013-08-24'),(706,'2013-08-24'),(707,'2013-08-24'),(708,'2013-08-24'),(709,'2013-08-24'),(710,'2013-08-24'),(711,'2013-08-24'),(712,'2013-08-24'),(713,'2013-08-25'),(714,'2013-08-25'),(715,'2013-08-29'),(716,'2013-08-29'),(717,'2013-08-29'),(718,'2013-08-29'),(719,'2013-08-29'),(720,'2013-08-29'),(721,'2013-08-29'),(722,'2013-08-29'),(723,'2013-08-29'),(724,'2013-08-29'),(725,'2013-08-29'),(726,'2013-08-29'),(727,'2013-08-29'),(728,'2013-08-29'),(729,'2013-08-29'),(730,'2013-08-29'),(731,'2013-09-05'),(732,'2013-09-08'),(733,'2013-09-08'),(734,'2013-09-08'),(735,'2013-09-08'),(736,'2013-09-08'),(737,'2013-09-08'),(738,'2013-09-08'),(739,'2013-09-08'),(740,'2013-09-08'),(741,'2013-09-08'),(742,'2013-09-08'),(743,'2013-09-08'),(744,'2013-09-08'),(745,'2013-09-09'),(746,'2013-09-09'),(747,'2013-09-12'),(748,'2013-09-15'),(749,'2013-09-15'),(750,'2013-09-15'),(751,'2013-09-15'),(752,'2013-09-15'),(753,'2013-09-15'),(754,'2013-09-15'),(755,'2013-09-15'),(756,'2013-09-15'),(757,'2013-09-15'),(758,'2013-09-15'),(759,'2013-09-15'),(760,'2013-09-15'),(761,'2013-09-15'),(762,'2013-09-16'),(763,'2013-09-19'),(764,'2013-09-22'),(765,'2013-09-22'),(766,'2013-09-22'),(767,'2013-09-22'),(768,'2013-09-22'),(769,'2013-09-22'),(770,'2013-09-22'),(771,'2013-09-22'),(772,'2013-09-22'),(773,'2013-09-22'),(774,'2013-09-22'),(775,'2013-09-22'),(776,'2013-09-22'),(777,'2013-09-22'),(778,'2013-09-23'),(779,'2013-09-26'),(780,'2013-09-29'),(781,'2013-09-29'),(782,'2013-09-29'),(783,'2013-09-29'),(784,'2013-09-29'),(785,'2013-09-29'),(786,'2013-09-29'),(787,'2013-09-29'),(788,'2013-09-29'),(789,'2013-09-29'),(790,'2013-09-29'),(791,'2013-09-29'),(792,'2013-09-29'),(793,'2013-09-30'),(794,'2013-10-03'),(795,'2013-10-06'),(796,'2013-10-06'),(797,'2013-10-06'),(798,'2013-10-06'),(799,'2013-10-06'),(800,'2013-10-06'),(801,'2013-10-06'),(802,'2013-10-06'),(803,'2013-10-06'),(804,'2013-10-06'),(805,'2013-10-06'),(806,'2013-10-06'),(807,'2013-10-07'),(808,'2013-10-10'),(809,'2013-10-13'),(810,'2013-10-13'),(811,'2013-10-13'),(812,'2013-10-13'),(813,'2013-10-13'),(814,'2013-10-13'),(815,'2013-10-13'),(816,'2013-10-13'),(817,'2013-10-13'),(818,'2013-10-13'),(819,'2013-10-13'),(820,'2013-10-13'),(821,'2013-10-13'),(822,'2013-10-14'),(823,'2013-10-17'),(824,'2013-10-20'),(825,'2013-10-20'),(826,'2013-10-20'),(827,'2013-10-20'),(828,'2013-10-20'),(829,'2013-10-20'),(830,'2013-10-20'),(831,'2013-10-20'),(832,'2013-10-20'),(833,'2013-10-20'),(834,'2013-10-20'),(835,'2013-10-20'),(836,'2013-10-20'),(837,'2013-10-21'),(838,'2013-10-24'),(839,'2013-10-27'),(840,'2013-10-27'),(841,'2013-10-27'),(842,'2013-10-27'),(843,'2013-10-27'),(844,'2013-10-27'),(845,'2013-10-27'),(846,'2013-10-27'),(847,'2013-10-27'),(848,'2013-10-27'),(849,'2013-10-27'),(850,'2013-10-28'),(851,'2013-10-31'),(852,'2013-10-03'),(853,'2013-10-03'),(854,'2013-10-03'),(855,'2013-10-03'),(856,'2013-10-03'),(857,'2013-10-03'),(858,'2013-10-03'),(859,'2013-10-03'),(860,'2013-10-03'),(861,'2013-10-03'),(862,'2013-10-03'),(863,'2013-10-04'),(864,'2013-11-07'),(865,'2013-11-10'),(866,'2013-11-10'),(867,'2013-11-10'),(868,'2013-11-10'),(869,'2013-11-10'),(870,'2013-11-10'),(871,'2013-11-10'),(872,'2013-11-10'),(873,'2013-11-10'),(874,'2013-11-10'),(875,'2013-11-10'),(876,'2013-11-10'),(877,'2013-11-11'),(878,'2013-11-14'),(879,'2013-11-17'),(880,'2013-11-17'),(881,'2013-11-17'),(882,'2013-11-17'),(883,'2013-11-17'),(884,'2013-11-17'),(885,'2013-11-17'),(886,'2013-11-17'),(887,'2013-11-17'),(888,'2013-11-17'),(889,'2013-11-17'),(890,'2013-11-17'),(891,'2013-11-17'),(892,'2013-11-18'),(893,'2013-11-21'),(894,'2013-11-24'),(895,'2013-11-24'),(896,'2013-11-24'),(897,'2013-11-24'),(898,'2013-11-24'),(899,'2013-11-24'),(900,'2013-11-24'),(901,'2013-11-24'),(902,'2013-11-24'),(903,'2013-11-24'),(904,'2013-11-24'),(905,'2013-11-24'),(906,'2013-11-25'),(907,'2013-11-28'),(908,'2013-11-28'),(909,'2013-11-28'),(910,'2013-11-01'),(911,'2013-11-01'),(912,'2013-11-01'),(913,'2013-11-01'),(914,'2013-11-01'),(915,'2013-11-01'),(916,'2013-11-01'),(917,'2013-11-01'),(918,'2013-11-01'),(919,'2013-11-01'),(920,'2013-11-01'),(921,'2013-11-01'),(922,'2013-11-02'),(923,'2013-12-05'),(924,'2013-12-08'),(925,'2013-12-08'),(926,'2013-12-08'),(927,'2013-12-08'),(928,'2013-12-08'),(929,'2013-12-08'),(930,'2013-12-08'),(931,'2013-12-08'),(932,'2013-12-08'),(933,'2013-12-08'),(934,'2013-12-08'),(935,'2013-12-08'),(936,'2013-12-08'),(937,'2013-12-08'),(938,'2013-12-09'),(939,'2013-12-12'),(940,'2013-12-15'),(941,'2013-12-15'),(942,'2013-12-15'),(943,'2013-12-15'),(944,'2013-12-15'),(945,'2013-12-15'),(946,'2013-12-15'),(947,'2013-12-15'),(948,'2013-12-15'),(949,'2013-12-15'),(950,'2013-12-15'),(951,'2013-12-15'),(952,'2013-12-15'),(953,'2013-12-15'),(954,'2013-12-16'),(955,'2013-12-22'),(956,'2013-12-22'),(957,'2013-12-22'),(958,'2013-12-22'),(959,'2013-12-22'),(960,'2013-12-22'),(961,'2013-12-22'),(962,'2013-12-22'),(963,'2013-12-22'),(964,'2013-12-22'),(965,'2013-12-22'),(966,'2013-12-22'),(967,'2013-12-22'),(968,'2013-12-22'),(969,'2013-12-22'),(970,'2013-12-23'),(971,'2013-12-29'),(972,'2013-12-29'),(973,'2013-12-29'),(974,'2013-12-29'),(975,'2013-12-29'),(976,'2013-12-29'),(977,'2013-12-29'),(978,'2013-12-29'),(979,'2013-12-29'),(980,'2013-12-29'),(981,'2013-12-29'),(982,'2013-12-29'),(983,'2013-12-29'),(984,'2013-12-29'),(985,'2013-12-29'),(986,'2013-12-29'),(987,'2014-01-04'),(988,'2014-01-04'),(989,'2014-01-05'),(990,'2014-01-05'),(991,'2014-01-11'),(992,'2014-01-11'),(993,'2014-01-12'),(994,'2014-01-12'),(995,'2014-01-19'),(996,'2014-01-19'),(997,'2014-01-02'),(998,'2014-02-03'),(999,'2014-08-07'),(1000,'2014-08-07'),(1001,'2014-08-07'),(1002,'2014-08-07'),(1003,'2014-08-07'),(1004,'2014-08-07'),(1005,'2014-08-08'),(1006,'2014-08-08'),(1007,'2014-08-08'),(1008,'2014-08-08'),(1009,'2014-08-08'),(1010,'2014-08-08'),(1011,'2014-08-09'),(1012,'2014-08-09'),(1013,'2014-08-09'),(1014,'2014-08-09'),(1015,'2014-08-14'),(1016,'2014-08-15'),(1017,'2014-08-15'),(1018,'2014-08-15'),(1019,'2014-08-15'),(1020,'2014-08-16'),(1021,'2014-08-16'),(1022,'2014-08-16'),(1023,'2014-08-16'),(1024,'2014-08-16'),(1025,'2014-08-16'),(1026,'2014-08-16'),(1027,'2014-08-16'),(1028,'2014-08-17'),(1029,'2014-08-17'),(1030,'2014-08-18'),(1031,'2014-08-21'),(1032,'2014-08-22'),(1033,'2014-08-22'),(1034,'2014-08-22'),(1035,'2014-08-22'),(1036,'2014-08-22'),(1037,'2014-08-23'),(1038,'2014-08-23'),(1039,'2014-08-23'),(1040,'2014-08-23'),(1041,'2014-08-23'),(1042,'2014-08-23'),(1043,'2014-08-23'),(1044,'2014-08-23'),(1045,'2014-08-24'),(1046,'2014-08-24'),(1047,'2014-08-28'),(1048,'2014-08-28'),(1049,'2014-08-28'),(1050,'2014-08-28'),(1051,'2014-08-28'),(1052,'2014-08-28'),(1053,'2014-08-28'),(1054,'2014-08-28'),(1055,'2014-08-28'),(1056,'2014-08-28'),(1057,'2014-08-28'),(1058,'2014-08-28'),(1059,'2014-08-28'),(1060,'2014-08-28'),(1061,'2014-08-28'),(1062,'2014-08-28'),(1063,'2014-09-04'),(1064,'2014-09-07'),(1065,'2014-09-07'),(1066,'2014-09-07'),(1067,'2014-09-07'),(1068,'2014-09-07'),(1069,'2014-09-07'),(1070,'2014-09-07'),(1071,'2014-09-07'),(1072,'2014-09-07'),(1073,'2014-09-07'),(1074,'2014-09-07'),(1075,'2014-09-07'),(1076,'2014-09-07'),(1077,'2014-09-08'),(1078,'2014-09-08'),(1079,'2014-09-11'),(1080,'2014-09-14'),(1081,'2014-09-14'),(1082,'2014-09-14'),(1083,'2014-09-14'),(1084,'2014-09-14'),(1085,'2014-09-14'),(1086,'2014-09-14'),(1087,'2014-09-14'),(1088,'2014-09-14'),(1089,'2014-09-14'),(1090,'2014-09-14'),(1091,'2014-09-14'),(1092,'2014-09-14'),(1093,'2014-09-14'),(1094,'2014-09-15'),(1095,'2014-09-18'),(1096,'2014-09-21'),(1097,'2014-09-21'),(1098,'2014-09-21'),(1099,'2014-09-21'),(1100,'2014-09-21'),(1101,'2014-09-21'),(1102,'2014-09-21'),(1103,'2014-09-21'),(1104,'2014-09-21'),(1105,'2014-09-21'),(1106,'2014-09-21'),(1107,'2014-09-21'),(1108,'2014-09-21'),(1109,'2014-09-21'),(1110,'2014-09-22'),(1111,'2014-09-25'),(1112,'2014-09-28'),(1113,'2014-09-28'),(1114,'2014-09-28'),(1115,'2014-09-28'),(1116,'2014-09-28'),(1117,'2014-09-28'),(1118,'2014-09-28'),(1119,'2014-09-28'),(1120,'2014-09-28'),(1121,'2014-09-28'),(1122,'2014-09-28'),(1123,'2014-09-29'),(1124,'2014-10-02'),(1125,'2014-10-05'),(1126,'2014-10-05'),(1127,'2014-10-05'),(1128,'2014-10-05'),(1129,'2014-10-05'),(1130,'2014-10-05'),(1131,'2014-10-05'),(1132,'2014-10-05'),(1133,'2014-10-05'),(1134,'2014-10-05'),(1135,'2014-10-05'),(1136,'2014-10-05'),(1137,'2014-10-05'),(1138,'2014-10-06'),(1139,'2014-10-09'),(1140,'2014-10-12'),(1141,'2014-10-12'),(1142,'2014-10-12'),(1143,'2014-10-12'),(1144,'2014-10-12'),(1145,'2014-10-12'),(1146,'2014-10-12'),(1147,'2014-10-12'),(1148,'2014-10-12'),(1149,'2014-10-12'),(1150,'2014-10-12'),(1151,'2014-10-12'),(1152,'2014-10-12'),(1153,'2014-10-13'),(1154,'2014-10-16'),(1155,'2014-10-19'),(1156,'2014-10-19'),(1157,'2014-10-19'),(1158,'2014-10-19'),(1159,'2014-10-19'),(1160,'2014-10-19'),(1161,'2014-10-19'),(1162,'2014-10-19'),(1163,'2014-10-19'),(1164,'2014-10-19'),(1165,'2014-10-19'),(1166,'2014-10-19'),(1167,'2014-10-19'),(1168,'2014-10-20'),(1169,'2014-10-23'),(1170,'2014-10-26'),(1171,'2014-10-26'),(1172,'2014-10-26'),(1173,'2014-10-26'),(1174,'2014-10-26'),(1175,'2014-10-26'),(1176,'2014-10-26'),(1177,'2014-10-26'),(1178,'2014-10-26'),(1179,'2014-10-26'),(1180,'2014-10-26'),(1181,'2014-10-26'),(1182,'2014-10-26'),(1183,'2014-10-27'),(1184,'2014-10-30'),(1185,'2014-10-02'),(1186,'2014-10-02'),(1187,'2014-10-02'),(1188,'2014-10-02'),(1189,'2014-10-02'),(1190,'2014-10-02'),(1191,'2014-10-02'),(1192,'2014-10-02'),(1193,'2014-10-02'),(1194,'2014-10-02'),(1195,'2014-10-02'),(1196,'2014-10-03'),(1197,'2014-11-06'),(1198,'2014-11-09'),(1199,'2014-11-09'),(1200,'2014-11-09'),(1201,'2014-11-09'),(1202,'2014-11-09'),(1203,'2014-11-09'),(1204,'2014-11-09'),(1205,'2014-11-09'),(1206,'2014-11-09'),(1207,'2014-11-09'),(1208,'2014-11-09'),(1209,'2014-11-10'),(1210,'2014-11-13'),(1211,'2014-11-16'),(1212,'2014-11-16'),(1213,'2014-11-16'),(1214,'2014-11-16'),(1215,'2014-11-16'),(1216,'2014-11-16'),(1217,'2014-11-16'),(1218,'2014-11-16'),(1219,'2014-11-16'),(1220,'2014-11-16'),(1221,'2014-11-16'),(1222,'2014-11-16'),(1223,'2014-11-17'),(1224,'2014-11-20'),(1225,'2014-11-23'),(1226,'2014-11-23'),(1227,'2014-11-23'),(1228,'2014-11-23'),(1229,'2014-11-23'),(1230,'2014-11-23'),(1231,'2014-11-23'),(1232,'2014-11-23'),(1233,'2014-11-23'),(1234,'2014-11-23'),(1235,'2014-11-23'),(1236,'2014-11-23'),(1237,'2014-11-24'),(1238,'2014-11-24'),(1239,'2014-11-27'),(1240,'2014-11-27'),(1241,'2014-11-27'),(1242,'2014-11-30'),(1243,'2014-11-30'),(1244,'2014-11-30'),(1245,'2014-11-30'),(1246,'2014-11-30'),(1247,'2014-11-30'),(1248,'2014-11-30'),(1249,'2014-11-30'),(1250,'2014-11-30'),(1251,'2014-11-30'),(1252,'2014-11-30'),(1253,'2014-11-30'),(1254,'2014-11-01'),(1255,'2014-12-04'),(1256,'2014-12-07'),(1257,'2014-12-07'),(1258,'2014-12-07'),(1259,'2014-12-07'),(1260,'2014-12-07'),(1261,'2014-12-07'),(1262,'2014-12-07'),(1263,'2014-12-07'),(1264,'2014-12-07'),(1265,'2014-12-07'),(1266,'2014-12-07'),(1267,'2014-12-07'),(1268,'2014-12-07'),(1269,'2014-12-07'),(1270,'2014-12-08'),(1271,'2014-12-11'),(1272,'2014-12-14'),(1273,'2014-12-14'),(1274,'2014-12-14'),(1275,'2014-12-14'),(1276,'2014-12-14'),(1277,'2014-12-14'),(1278,'2014-12-14'),(1279,'2014-12-14'),(1280,'2014-12-14'),(1281,'2014-12-14'),(1282,'2014-12-14'),(1283,'2014-12-14'),(1284,'2014-12-14'),(1285,'2014-12-14'),(1286,'2014-12-15'),(1287,'2014-12-18'),(1288,'2014-12-20'),(1289,'2014-12-20'),(1290,'2014-12-21'),(1291,'2014-12-21'),(1292,'2014-12-21'),(1293,'2014-12-21'),(1294,'2014-12-21'),(1295,'2014-12-21'),(1296,'2014-12-21'),(1297,'2014-12-21'),(1298,'2014-12-21'),(1299,'2014-12-21'),(1300,'2014-12-21'),(1301,'2014-12-21'),(1302,'2014-12-22'),(1303,'2014-12-28'),(1304,'2014-12-28'),(1305,'2014-12-28'),(1306,'2014-12-28'),(1307,'2014-12-28'),(1308,'2014-12-28'),(1309,'2014-12-28'),(1310,'2014-12-28'),(1311,'2014-12-28'),(1312,'2014-12-28'),(1313,'2014-12-28'),(1314,'2014-12-28'),(1315,'2014-12-28'),(1316,'2014-12-28'),(1317,'2014-12-28'),(1318,'2014-12-28'),(1319,'2015-01-03'),(1320,'2015-01-03'),(1321,'2015-01-04'),(1322,'2015-01-04'),(1323,'2015-01-10'),(1324,'2015-01-10'),(1325,'2015-01-11'),(1326,'2015-01-11'),(1327,'2015-01-18'),(1328,'2015-01-18'),(1329,'2015-01-01'),(1330,'2015-02-09'),(1331,'2015-08-13'),(1332,'2015-08-13'),(1333,'2015-08-13'),(1334,'2015-08-13'),(1335,'2015-08-13'),(1336,'2015-08-13'),(1337,'2015-08-14'),(1338,'2015-08-14'),(1339,'2015-08-14'),(1340,'2015-08-14'),(1341,'2015-08-14'),(1342,'2015-08-14'),(1343,'2015-08-15'),(1344,'2015-08-15'),(1345,'2015-08-15'),(1346,'2015-08-16'),(1347,'2015-08-20'),(1348,'2015-08-20'),(1349,'2015-08-21'),(1350,'2015-08-21'),(1351,'2015-08-22'),(1352,'2015-08-22'),(1353,'2015-08-22'),(1354,'2015-08-22'),(1355,'2015-08-22'),(1356,'2015-08-22'),(1357,'2015-08-22'),(1358,'2015-08-22'),(1359,'2015-08-23'),(1360,'2015-08-23'),(1361,'2015-08-23'),(1362,'2015-08-24'),(1363,'2015-08-28'),(1364,'2015-08-28'),(1365,'2015-08-28'),(1366,'2015-08-29'),(1367,'2015-08-29'),(1368,'2015-08-29'),(1369,'2015-08-29'),(1370,'2015-08-29'),(1371,'2015-08-29'),(1372,'2015-08-29'),(1373,'2015-08-29'),(1374,'2015-08-29'),(1375,'2015-08-29'),(1376,'2015-08-29'),(1377,'2015-08-30'),(1378,'2015-08-30'),(1379,'2015-09-03'),(1380,'2015-09-03'),(1381,'2015-09-03'),(1382,'2015-09-03'),(1383,'2015-09-03'),(1384,'2015-09-03'),(1385,'2015-09-03'),(1386,'2015-09-03'),(1387,'2015-09-03'),(1388,'2015-09-03'),(1389,'2015-09-03'),(1390,'2015-09-03'),(1391,'2015-09-03'),(1392,'2015-09-03'),(1393,'2015-09-03'),(1394,'2015-09-03'),(1395,'2015-09-10'),(1396,'2015-09-13'),(1397,'2015-09-13'),(1398,'2015-09-13'),(1399,'2015-09-13'),(1400,'2015-09-13'),(1401,'2015-09-13'),(1402,'2015-09-13'),(1403,'2015-09-13'),(1404,'2015-09-13'),(1405,'2015-09-13'),(1406,'2015-09-13'),(1407,'2015-09-13'),(1408,'2015-09-13'),(1409,'2015-09-14'),(1410,'2015-09-14'),(1411,'2015-09-17'),(1412,'2015-09-20'),(1413,'2015-09-20'),(1414,'2015-09-20'),(1415,'2015-09-20'),(1416,'2015-09-20'),(1417,'2015-09-20'),(1418,'2015-09-20'),(1419,'2015-09-20'),(1420,'2015-09-20'),(1421,'2015-09-20'),(1422,'2015-09-20'),(1423,'2015-09-20'),(1424,'2015-09-20'),(1425,'2015-09-20'),(1426,'2015-09-21'),(1427,'2015-09-24'),(1428,'2015-09-27'),(1429,'2015-09-27'),(1430,'2015-09-27'),(1431,'2015-09-27'),(1432,'2015-09-27'),(1433,'2015-09-27'),(1434,'2015-09-27'),(1435,'2015-09-27'),(1436,'2015-09-27'),(1437,'2015-09-27'),(1438,'2015-09-27'),(1439,'2015-09-27'),(1440,'2015-09-27'),(1441,'2015-09-27'),(1442,'2015-09-28'),(1443,'2015-10-01'),(1444,'2015-10-04'),(1445,'2015-10-04'),(1446,'2015-10-04'),(1447,'2015-10-04'),(1448,'2015-10-04'),(1449,'2015-10-04'),(1450,'2015-10-04'),(1451,'2015-10-04'),(1452,'2015-10-04'),(1453,'2015-10-04'),(1454,'2015-10-04'),(1455,'2015-10-04'),(1456,'2015-10-04'),(1457,'2015-10-05'),(1458,'2015-10-08'),(1459,'2015-10-11'),(1460,'2015-10-11'),(1461,'2015-10-11'),(1462,'2015-10-11'),(1463,'2015-10-11'),(1464,'2015-10-11'),(1465,'2015-10-11'),(1466,'2015-10-11'),(1467,'2015-10-11'),(1468,'2015-10-11'),(1469,'2015-10-11'),(1470,'2015-10-11'),(1471,'2015-10-12'),(1472,'2015-10-15'),(1473,'2015-10-18'),(1474,'2015-10-18'),(1475,'2015-10-18'),(1476,'2015-10-18'),(1477,'2015-10-18'),(1478,'2015-10-18'),(1479,'2015-10-18'),(1480,'2015-10-18'),(1481,'2015-10-18'),(1482,'2015-10-18'),(1483,'2015-10-18'),(1484,'2015-10-18'),(1485,'2015-10-19'),(1486,'2015-10-22'),(1487,'2015-10-25'),(1488,'2015-10-25'),(1489,'2015-10-25'),(1490,'2015-10-25'),(1491,'2015-10-25'),(1492,'2015-10-25'),(1493,'2015-10-25'),(1494,'2015-10-25'),(1495,'2015-10-25'),(1496,'2015-10-25'),(1497,'2015-10-25'),(1498,'2015-10-25'),(1499,'2015-10-26'),(1500,'2015-10-29'),(1501,'2015-10-01'),(1502,'2015-10-01'),(1503,'2015-10-01'),(1504,'2015-10-01'),(1505,'2015-10-01'),(1506,'2015-10-01'),(1507,'2015-10-01'),(1508,'2015-10-01'),(1509,'2015-10-01'),(1510,'2015-10-01'),(1511,'2015-10-01'),(1512,'2015-10-01'),(1513,'2015-10-02'),(1514,'2015-11-05'),(1515,'2015-11-08'),(1516,'2015-11-08'),(1517,'2015-11-08'),(1518,'2015-11-08'),(1519,'2015-11-08'),(1520,'2015-11-08'),(1521,'2015-11-08'),(1522,'2015-11-08'),(1523,'2015-11-08'),(1524,'2015-11-08'),(1525,'2015-11-08'),(1526,'2015-11-09'),(1527,'2015-11-12'),(1528,'2015-11-15'),(1529,'2015-11-15'),(1530,'2015-11-15'),(1531,'2015-11-15'),(1532,'2015-11-15'),(1533,'2015-11-15'),(1534,'2015-11-15'),(1535,'2015-11-15'),(1536,'2015-11-15'),(1537,'2015-11-15'),(1538,'2015-11-15'),(1539,'2015-11-15'),(1540,'2015-11-16'),(1541,'2015-11-19'),(1542,'2015-11-22'),(1543,'2015-11-22'),(1544,'2015-11-22'),(1545,'2015-11-22'),(1546,'2015-11-22'),(1547,'2015-11-22'),(1548,'2015-11-22'),(1549,'2015-11-22'),(1550,'2015-11-22'),(1551,'2015-11-22'),(1552,'2015-11-22'),(1553,'2015-11-22'),(1554,'2015-11-23'),(1555,'2015-11-26'),(1556,'2015-11-26'),(1557,'2015-11-26'),(1558,'2015-11-29'),(1559,'2015-11-29'),(1560,'2015-11-29'),(1561,'2015-11-29'),(1562,'2015-11-29'),(1563,'2015-11-29'),(1564,'2015-11-29'),(1565,'2015-11-29'),(1566,'2015-11-29'),(1567,'2015-11-29'),(1568,'2015-11-29'),(1569,'2015-11-29'),(1570,'2015-11-30'),(1571,'2015-12-03'),(1572,'2015-12-06'),(1573,'2015-12-06'),(1574,'2015-12-06'),(1575,'2015-12-06'),(1576,'2015-12-06'),(1577,'2015-12-06'),(1578,'2015-12-06'),(1579,'2015-12-06'),(1580,'2015-12-06'),(1581,'2015-12-06'),(1582,'2015-12-06'),(1583,'2015-12-06'),(1584,'2015-12-06'),(1585,'2015-12-06'),(1586,'2015-12-07'),(1587,'2015-12-10'),(1588,'2015-12-13'),(1589,'2015-12-13'),(1590,'2015-12-13'),(1591,'2015-12-13'),(1592,'2015-12-13'),(1593,'2015-12-13'),(1594,'2015-12-13'),(1595,'2015-12-13'),(1596,'2015-12-13'),(1597,'2015-12-13'),(1598,'2015-12-13'),(1599,'2015-12-13'),(1600,'2015-12-13'),(1601,'2015-12-13'),(1602,'2015-12-14'),(1603,'2015-12-17'),(1604,'2015-12-19'),(1605,'2015-12-20'),(1606,'2015-12-20'),(1607,'2015-12-20'),(1608,'2015-12-20'),(1609,'2015-12-20'),(1610,'2015-12-20'),(1611,'2015-12-20'),(1612,'2015-12-20'),(1613,'2015-12-20'),(1614,'2015-12-20'),(1615,'2015-12-20'),(1616,'2015-12-20'),(1617,'2015-12-20'),(1618,'2015-12-21'),(1619,'2015-12-24'),(1620,'2015-12-26'),(1621,'2015-12-27'),(1622,'2015-12-27'),(1623,'2015-12-27'),(1624,'2015-12-27'),(1625,'2015-12-27'),(1626,'2015-12-27'),(1627,'2015-12-27'),(1628,'2015-12-27'),(1629,'2015-12-27'),(1630,'2015-12-27'),(1631,'2015-12-27'),(1632,'2015-12-27'),(1633,'2015-12-27'),(1634,'2015-12-28'),(1635,'2015-12-03'),(1636,'2015-12-03'),(1637,'2015-12-03'),(1638,'2015-12-03'),(1639,'2015-12-03'),(1640,'2015-12-03'),(1641,'2015-12-03'),(1642,'2015-12-03'),(1643,'2015-12-03'),(1644,'2015-12-03'),(1645,'2015-12-03'),(1646,'2015-12-03'),(1647,'2015-12-03'),(1648,'2015-12-03'),(1649,'2015-12-03'),(1650,'2015-12-03'),(1651,'2016-01-09'),(1652,'2016-01-09'),(1653,'2016-01-10'),(1654,'2016-01-10'),(1655,'2016-01-16'),(1656,'2016-01-16'),(1657,'2016-01-17'),(1658,'2016-01-17'),(1659,'2016-01-24'),(1660,'2016-01-24'),(1661,'2016-02-07'),(1662,'2016-02-11'),(1663,'2016-02-11'),(1664,'2016-02-11'),(1665,'2016-02-11'),(1666,'2016-02-11'),(1667,'2016-02-11'),(1668,'2016-02-12'),(1669,'2016-02-12'),(1670,'2016-02-12'),(1671,'2016-02-12'),(1672,'2016-02-12'),(1673,'2016-02-13'),(1674,'2016-02-13'),(1675,'2016-02-13'),(1676,'2016-02-13'),(1677,'2016-02-14'),(1678,'2016-08-20'),(1679,'2016-08-18'),(1680,'2016-08-18'),(1681,'2016-08-18'),(1682,'2016-08-18'),(1683,'2016-08-18'),(1684,'2016-08-18'),(1685,'2016-08-19'),(1686,'2016-08-19'),(1687,'2016-08-19'),(1688,'2016-08-20'),(1689,'2016-08-20'),(1690,'2016-08-20'),(1691,'2016-08-20'),(1692,'2016-08-20'),(1693,'2016-08-20'),(1694,'2016-08-25'),(1695,'2016-08-25'),(1696,'2016-08-26'),(1697,'2016-08-26'),(1698,'2016-08-26'),(1699,'2016-08-26'),(1700,'2016-08-26'),(1701,'2016-08-27'),(1702,'2016-08-27'),(1703,'2016-08-27'),(1704,'2016-08-27'),(1705,'2016-08-27'),(1706,'2016-08-27'),(1707,'2016-08-28'),(1708,'2016-08-28'),(1709,'2016-08-28');
/*!40000 ALTER TABLE `Game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-14 17:16:28
