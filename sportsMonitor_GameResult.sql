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
-- Table structure for table `GameResult`
--

DROP TABLE IF EXISTS `GameResult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GameResult` (
  `FK_GameResult_GameID` int(10) unsigned NOT NULL,
  `FK_GameResult_TeamID` smallint(6) DEFAULT NULL,
  KEY `FK_GameResult_GameID` (`FK_GameResult_GameID`),
  KEY `FK_GameResult_TeamID` (`FK_GameResult_TeamID`),
  CONSTRAINT `FK_GameResult_GameID` FOREIGN KEY (`FK_GameResult_GameID`) REFERENCES `Game` (`PK_GameID`) ON DELETE CASCADE,
  CONSTRAINT `FK_GameResult_TeamID` FOREIGN KEY (`FK_GameResult_TeamID`) REFERENCES `Team` (`PK_TeamID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GameResult`
--

LOCK TABLES `GameResult` WRITE;
/*!40000 ALTER TABLE `GameResult` DISABLE KEYS */;
INSERT INTO `GameResult` VALUES (1,7),(2,14),(3,12),(4,16),(5,32),(6,28),(7,13),(8,8),(9,15),(10,23),(11,5),(12,29),(13,10),(14,31),(15,30),(16,17),(17,7),(18,6),(19,13),(20,8),(21,22),(22,28),(23,9),(24,26),(25,27),(26,10),(27,17),(28,18),(29,20),(30,3),(31,11),(32,2),(33,4),(34,14),(35,22),(36,10),(37,26),(38,1),(39,6),(40,23),(41,17),(42,28),(43,31),(44,16),(45,18),(46,11),(47,15),(48,3),(49,28),(50,25),(51,13),(52,10),(53,22),(54,8),(55,14),(56,2),(57,26),(58,29),(59,20),(60,6),(61,31),(62,32),(63,27),(64,12),(65,26),(66,14),(67,28),(68,9),(69,1),(70,17),(71,22),(72,29),(73,4),(74,27),(75,13),(76,11),(77,32),(78,3),(79,7),(80,21),(81,23),(82,15),(83,26),(84,6),(85,13),(86,31),(87,1),(88,28),(89,3),(90,5),(91,16),(92,18),(93,17),(94,7),(95,24),(96,2),(97,28),(98,1),(99,31),(100,30),(101,15),(102,27),(103,2),(104,5),(105,11),(106,22),(107,21),(108,12),(109,23),(110,26),(111,6),(112,16),(113,28),(114,31),(115,4),(116,17),(117,13),(118,29),(119,15),(120,27),(121,19),(122,2),(123,24),(124,26),(125,7),(126,11),(127,22),(128,23),(129,6),(130,12),(131,4),(132,20),(133,21),(134,19),(135,15),(136,1),(137,27),(138,11),(139,7),(140,26),(141,28),(142,2),(143,4),(144,26),(145,24),(146,6),(147,27),(148,14),(149,21),(150,22),(151,23),(152,7),(153,29),(154,3),(155,3),(156,29),(157,5),(158,24),(159,18),(160,30),(161,17),(162,6),(163,19),(164,16),(165,26),(166,15),(167,9),(168,31),(169,22),(170,17),(171,10),(172,20),(173,2),(174,1),(175,28),(176,6),(177,4),(178,27),(179,14),(180,19),(181,16),(182,24),(183,3),(184,17),(185,27),(186,15),(187,8),(188,4),(189,18),(190,32),(191,2),(192,26),(193,22),(194,29),(195,21),(196,8),(197,9),(198,17),(199,15),(200,31),(201,16),(202,6),(203,18),(204,10),(205,32),(206,12),(207,29),(208,27),(209,7),(210,26),(211,18),(212,21),(213,16),(214,28),(215,8),(216,26),(217,22),(218,5),(219,27),(220,12),(221,24),(222,29),(223,14),(224,7),(225,26),(226,16),(227,22),(228,24),(229,30),(230,4),(231,17),(232,32),(233,3),(234,31),(235,21),(236,13),(237,7),(238,18),(239,6),(240,15),(241,12),(242,30),(243,19),(244,3),(245,8),(246,31),(247,7),(248,17),(249,6),(250,18),(251,22),(252,32),(253,27),(254,26),(255,15),(256,11),(257,6),(258,17),(259,15),(260,22),(261,9),(262,7),(263,24),(264,28),(265,14),(266,3),(267,18),(268,32),(269,11),(270,26),(271,2),(272,12),(273,24),(274,16),(275,30),(276,15),(277,8),(278,13),(279,25),(280,19),(281,12),(282,4),(283,28),(284,14),(285,7),(286,32),(287,11),(288,27),(289,25),(290,30),(291,1),(292,6),(293,4),(294,21),(295,31),(296,22),(297,20),(298,2),(299,7),(300,28),(301,14),(302,27),(303,26),(304,15),(305,7),(306,9),(307,26),(308,31),(309,29),(310,8),(311,14),(312,15),(313,27),(314,19),(315,32),(316,22),(317,11),(318,6),(319,24),(320,2),(321,17),(322,15),(323,2),(324,18),(325,27),(326,7),(327,22),(328,2),(329,7),(330,2),(331,34),(332,2),(333,15),(334,13),(335,7),(336,14),(337,22),(338,11),(339,18),(340,23),(341,4),(342,9),(343,5),(344,19),(345,27),(346,17),(347,12),(348,25),(349,16),(350,4),(351,5),(352,31),(353,20),(354,28),(355,9),(356,30),(357,32),(358,2),(359,10),(360,17),(361,29),(362,11),(363,12),(364,6),(365,14),(366,26),(367,22),(368,31),(369,14),(370,23),(371,24),(372,12),(373,11),(374,29),(375,13),(376,6),(377,21),(378,16),(379,15),(380,27),(381,30),(382,13),(383,2),(384,16),(385,9),(386,14),(387,10),(388,6),(389,26),(390,31),(391,17),(392,25),(393,28),(394,29),(395,27),(396,12),(397,18),(398,16),(399,20),(400,14),(401,17),(402,3),(403,29),(404,7),(405,24),(406,28),(407,13),(408,32),(409,27),(410,23),(411,18),(412,22),(413,11),(414,26),(415,32),(416,14),(417,8),(418,1),(419,4),(420,17),(421,30),(422,25),(423,2),(424,10),(425,12),(426,6),(427,11),(428,27),(429,24),(430,2),(431,20),(432,31),(433,1),(434,16),(435,4),(436,29),(437,3),(438,19),(439,9),(440,32),(441,24),(442,17),(443,21),(444,22),(445,12),(446,22),(447,17),(448,11),(449,7),(450,10),(451,27),(452,20),(453,24),(454,32),(455,4),(456,18),(457,13),(458,26),(459,14),(460,29),(461,10),(462,22),(463,2),(464,6),(465,8),(466,25),(467,24),(468,12),(469,29),(470,27),(471,20),(472,7),(473,15),(474,17),(475,31),(476,28),(477,3),(478,5),(479,8),(480,24),(481,22),(482,23),(483,12),(484,1),(485,13),(486,2),(487,26),(488,18),(489,27),(490,20),(491,17),(492,31),(493,26),(494,2),(495,16),(496,25),(497,15),(498,21),(499,7),(500,6),(501,29),(502,23),(503,7),(504,28),(505,24),(506,6),(507,29),(508,26),(509,5),(510,25),(511,8),(512,21),(513,2),(514,18),(515,27),(516,11),(517,25),(518,29),(519,18),(520,26),(521,22),(522,28),(523,17),(524,30),(525,23),(526,12),(527,6),(528,24),(529,15),(530,25),(531,15),(532,18),(533,20),(534,31),(535,23),(536,7),(537,22),(538,4),(539,12),(540,16),(541,NULL),(542,17),(543,6),(544,1),(545,13),(546,3),(547,17),(548,16),(549,23),(550,26),(551,4),(552,24),(553,15),(554,18),(555,7),(556,22),(557,27),(558,17),(559,13),(560,7),(561,8),(562,24),(563,18),(564,9),(565,25),(566,5),(567,4),(568,29),(569,22),(570,27),(571,10),(572,2),(573,30),(574,24),(575,10),(576,26),(577,17),(578,25),(579,7),(580,12),(581,3),(582,19),(583,1),(584,18),(585,5),(586,4),(587,6),(588,16),(589,13),(590,18),(591,10),(592,14),(593,25),(594,11),(595,20),(596,30),(597,13),(598,3),(599,16),(600,5),(601,27),(602,12),(603,2),(604,26),(605,7),(606,4),(607,18),(608,13),(609,17),(610,15),(611,26),(612,8),(613,20),(614,24),(615,32),(616,12),(617,30),(618,21),(619,16),(620,27),(621,31),(622,24),(623,4),(624,10),(625,30),(626,13),(627,26),(628,11),(629,8),(630,25),(631,15),(632,20),(633,7),(634,18),(635,29),(636,22),(637,12),(638,23),(639,29),(640,4),(641,1),(642,31),(643,6),(644,25),(645,2),(646,30),(647,18),(648,7),(649,11),(650,20),(651,12),(652,27),(653,13),(654,17),(655,26),(656,22),(657,12),(658,22),(659,27),(660,24),(661,7),(662,27),(663,22),(664,33),(665,22),(666,16),(667,22),(668,13),(669,4),(670,5),(671,18),(672,12),(673,7),(674,28),(675,8),(676,15),(677,17),(678,30),(679,32),(680,21),(681,2),(682,1),(683,5),(684,22),(685,14),(686,29),(687,1),(688,27),(689,15),(690,7),(691,32),(692,4),(693,3),(694,17),(695,26),(696,12),(697,25),(698,13),(699,28),(700,30),(701,12),(702,29),(703,13),(704,25),(705,3),(706,14),(707,19),(708,23),(709,31),(710,16),(711,18),(712,11),(713,15),(714,27),(715,4),(716,28),(717,3),(718,7),(719,8),(720,13),(721,9),(722,30),(723,19),(724,20),(725,10),(726,5),(727,17),(728,32),(729,12),(730,27),(731,18),(732,25),(733,19),(734,7),(735,12),(736,15),(737,29),(738,31),(739,3),(740,28),(741,8),(742,27),(743,10),(744,16),(745,14),(746,17),(747,7),(748,26),(749,19),(750,1),(751,17),(752,11),(753,22),(754,29),(755,8),(756,24),(757,15),(758,32),(759,18),(760,21),(761,12),(762,4),(763,19),(764,16),(765,15),(766,5),(767,22),(768,30),(769,28),(770,31),(771,7),(772,4),(773,8),(774,3),(775,25),(776,12),(777,29),(778,18),(779,27),(780,19),(781,25),(782,20),(783,28),(784,12),(785,5),(786,32),(787,1),(788,31),(789,13),(790,11),(791,18),(792,7),(793,15),(794,5),(795,4),(796,25),(797,26),(798,22),(799,19),(800,10),(801,15),(802,14),(803,32),(804,18),(805,27),(806,21),(807,3),(808,29),(809,14),(810,30),(811,6),(812,26),(813,4),(814,10),(815,28),(816,19),(817,12),(818,18),(819,7),(820,27),(821,16),(822,11),(823,12),(824,4),(825,30),(826,11),(827,1),(828,24),(829,13),(830,3),(831,16),(832,27),(833,26),(834,19),(835,6),(836,25),(837,2),(838,30),(839,19),(840,27),(841,2),(842,7),(843,15),(844,28),(845,4),(846,21),(847,18),(848,32),(849,26),(850,12),(851,8),(852,30),(853,31),(854,13),(855,19),(856,3),(857,16),(858,14),(859,12),(860,7),(861,5),(862,25),(863,29),(864,20),(865,10),(866,2),(867,28),(868,6),(869,12),(870,22),(871,9),(872,14),(873,30),(874,32),(875,18),(876,15),(877,23),(878,25),(879,6),(880,23),(881,32),(882,29),(883,1),(884,21),(885,14),(886,4),(887,8),(888,2),(889,15),(890,12),(891,18),(892,30),(893,15),(894,30),(895,9),(896,NULL),(897,6),(898,23),(899,10),(900,11),(901,22),(902,32),(903,31),(904,16),(905,7),(906,27),(907,28),(908,16),(909,22),(910,30),(911,20),(912,25),(913,7),(914,9),(915,14),(916,8),(917,24),(918,27),(919,4),(920,18),(921,2),(922,12),(923,9),(924,22),(925,19),(926,7),(927,8),(928,14),(929,23),(930,4),(931,26),(932,3),(933,18),(934,27),(935,32),(936,11),(937,15),(938,29),(939,11),(940,1),(941,29),(942,8),(943,12),(944,24),(945,25),(946,27),(947,20),(948,30),(949,19),(950,10),(951,32),(952,26),(953,6),(954,22),(955,31),(956,25),(957,10),(958,18),(959,16),(960,3),(961,30),(962,4),(963,1),(964,2),(965,32),(966,11),(967,7),(968,6),(969,14),(970,27),(971,20),(972,4),(973,3),(974,2),(975,30),(976,25),(977,6),(978,31),(979,27),(980,11),(981,7),(982,15),(983,26),(984,18),(985,12),(986,14),(987,25),(988,15),(989,11),(990,27),(991,12),(992,7),(993,27),(994,18),(995,18),(996,12),(997,12),(998,2),(999,3),(1000,13),(1001,22),(1002,19),(1003,18),(1004,11),(1005,24),(1006,1),(1007,9),(1008,20),(1009,15),(1010,29),(1011,28),(1012,2),(1013,31),(1014,32),(1015,29),(1016,7),(1017,15),(1018,12),(1019,21),(1020,26),(1021,22),(1022,3),(1023,2),(1024,8),(1025,6),(1026,17),(1027,20),(1028,18),(1029,30),(1030,13),(1031,14),(1032,7),(1033,28),(1034,2),(1035,26),(1036,12),(1037,23),(1038,31),(1039,8),(1040,22),(1041,10),(1042,15),(1043,20),(1044,17),(1045,27),(1046,4),(1047,24),(1048,8),(1049,28),(1050,4),(1051,14),(1052,26),(1053,13),(1054,30),(1055,2),(1056,5),(1057,18),(1058,27),(1059,20),(1060,22),(1061,11),(1062,21),(1063,12),(1064,8),(1065,4),(1066,3),(1067,17),(1068,31),(1069,1),(1070,14),(1071,6),(1072,24),(1073,20),(1074,27),(1075,30),(1076,18),(1077,28),(1078,32),(1079,22),(1080,7),(1081,4),(1082,32),(1083,16),(1084,13),(1085,5),(1086,30),(1087,1),(1088,10),(1089,11),(1090,26),(1091,17),(1092,18),(1093,29),(1094,14),(1095,24),(1096,28),(1097,4),(1098,11),(1099,25),(1100,22),(1101,7),(1102,14),(1103,16),(1104,2),(1105,15),(1106,32),(1107,19),(1108,12),(1109,6),(1110,29),(1111,2),(1112,8),(1113,28),(1114,25),(1115,17),(1116,23),(1117,26),(1118,22),(1119,11),(1120,20),(1121,27),(1122,16),(1123,19),(1124,26),(1125,25),(1126,5),(1127,16),(1128,1),(1129,6),(1130,15),(1131,30),(1132,2),(1133,14),(1134,18),(1135,11),(1136,27),(1137,7),(1138,12),(1139,25),(1140,5),(1141,28),(1142,26),(1143,7),(1144,18),(1145,22),(1146,NULL),(1147,31),(1148,11),(1149,29),(1150,32),(1151,16),(1152,14),(1153,27),(1154,7),(1155,26),(1156,9),(1157,13),(1158,10),(1159,22),(1160,25),(1161,28),(1162,1),(1163,8),(1164,19),(1165,32),(1166,16),(1167,18),(1168,6),(1169,18),(1170,28),(1171,8),(1172,17),(1173,20),(1174,1),(1175,7),(1176,12),(1177,19),(1178,4),(1179,32),(1180,5),(1181,6),(1182,15),(1183,13),(1184,15),(1185,14),(1186,20),(1187,4),(1188,8),(1189,5),(1190,32),(1191,19),(1192,10),(1193,12),(1194,7),(1195,6),(1196,25),(1197,5),(1198,27),(1199,16),(1200,22),(1201,3),(1202,24),(1203,19),(1204,28),(1205,18),(1206,32),(1207,12),(1208,26),(1209,14),(1210,8),(1211,23),(1212,19),(1213,24),(1214,4),(1215,10),(1216,17),(1217,27),(1218,29),(1219,11),(1220,26),(1221,32),(1222,7),(1223,6),(1224,21),(1225,25),(1226,5),(1227,7),(1228,14),(1229,29),(1230,26),(1231,4),(1232,11),(1233,12),(1234,27),(1235,18),(1236,16),(1237,1),(1238,22),(1239,28),(1240,14),(1241,12),(1242,4),(1243,9),(1244,17),(1245,11),(1246,10),(1247,25),(1248,20),(1249,1),(1250,15),(1251,24),(1252,26),(1253,18),(1254,8),(1255,16),(1256,30),(1257,17),(1258,2),(1259,25),(1260,6),(1261,28),(1262,10),(1263,22),(1264,20),(1265,18),(1266,32),(1267,21),(1268,12),(1269,7),(1270,26),(1271,32),(1272,19),(1273,2),(1274,6),(1275,30),(1276,1),(1277,4),(1278,22),(1279,25),(1280,7),(1281,18),(1282,3),(1283,12),(1284,28),(1285,16),(1286,15),(1287,9),(1288,13),(1289,11),(1290,26),(1291,7),(1292,24),(1293,28),(1294,17),(1295,6),(1296,30),(1297,8),(1298,2),(1299,21),(1300,16),(1301,12),(1302,4),(1303,19),(1304,1),(1305,25),(1306,20),(1307,3),(1308,17),(1309,22),(1310,15),(1311,14),(1312,16),(1313,30),(1314,26),(1315,18),(1316,12),(1317,27),(1318,6),(1319,30),(1320,22),(1321,25),(1322,16),(1323,7),(1324,12),(1325,26),(1326,25),(1327,12),(1328,7),(1329,7),(1330,20),(1331,28),(1332,26),(1333,22),(1334,29),(1335,13),(1336,11),(1337,30),(1338,24),(1339,9),(1340,4),(1341,18),(1342,21),(1343,17),(1344,20),(1345,19),(1346,14),(1347,13),(1348,1),(1349,3),(1350,19),(1351,14),(1352,30),(1353,2),(1354,7),(1355,29),(1356,20),(1357,18),(1358,11),(1359,6),(1360,31),(1361,27),(1362,23),(1363,7),(1364,28),(1365,19),(1366,1),(1367,8),(1368,3),(1369,5),(1370,20),(1371,13),(1372,4),(1373,25),(1374,12),(1375,14),(1376,18),(1377,17),(1378,32),(1379,23),(1380,4),(1381,24),(1382,26),(1383,3),(1384,2),(1385,9),(1386,30),(1387,28),(1388,19),(1389,29),(1390,16),(1391,31),(1392,32),(1393,27),(1394,12),(1395,7),(1396,26),(1397,10),(1398,30),(1399,19),(1400,3),(1401,1),(1402,8),(1403,11),(1404,32),(1405,4),(1406,18),(1407,31),(1408,16),(1409,24),(1410,27),(1411,18),(1412,13),(1413,32),(1414,20),(1415,5),(1416,4),(1417,23),(1418,7),(1419,24),(1420,30),(1421,6),(1422,9),(1423,21),(1424,16),(1425,26),(1426,3),(1427,2),(1428,7),(1429,30),(1430,21),(1431,14),(1432,25),(1433,6),(1434,17),(1435,20),(1436,24),(1437,4),(1438,32),(1439,1),(1440,12),(1441,18),(1442,26),(1443,22),(1444,3),(1445,29),(1446,30),(1447,4),(1448,25),(1449,24),(1450,13),(1451,2),(1452,11),(1453,18),(1454,26),(1455,10),(1456,15),(1457,12),(1458,25),(1459,29),(1460,4),(1461,26),(1462,24),(1463,23),(1464,5),(1465,14),(1466,1),(1467,32),(1468,18),(1469,7),(1470,2),(1471,6),(1472,15),(1473,4),(1474,18),(1475,6),(1476,28),(1477,3),(1478,20),(1479,17),(1480,8),(1481,30),(1482,27),(1483,26),(1484,7),(1485,14),(1486,12),(1487,9),(1488,19),(1489,13),(1490,24),(1491,10),(1492,8),(1493,15),(1494,20),(1495,7),(1496,21),(1497,2),(1498,30),(1499,32),(1500,7),(1501,19),(1502,17),(1503,22),(1504,23),(1505,4),(1506,32),(1507,10),(1508,20),(1509,15),(1510,21),(1511,12),(1512,18),(1513,30),(1514,4),(1515,1),(1516,31),(1517,30),(1518,20),(1519,6),(1520,7),(1521,3),(1522,27),(1523,2),(1524,25),(1525,14),(1526,29),(1527,1),(1528,29),(1529,23),(1530,30),(1531,9),(1532,6),(1533,13),(1534,28),(1535,8),(1536,20),(1537,19),(1538,7),(1539,32),(1540,17),(1541,9),(1542,25),(1543,23),(1544,18),(1545,22),(1546,17),(1547,28),(1548,30),(1549,16),(1550,19),(1551,12),(1552,26),(1553,32),(1554,7),(1555,28),(1556,30),(1557,29),(1558,11),(1559,19),(1560,4),(1561,25),(1562,21),(1563,17),(1564,20),(1565,13),(1566,3),(1567,32),(1568,12),(1569,18),(1570,22),(1571,26),(1572,12),(1573,23),(1574,4),(1575,32),(1576,8),(1577,3),(1578,31),(1579,1),(1580,27),(1581,19),(1582,18),(1583,30),(1584,14),(1585,6),(1586,16),(1587,32),(1588,15),(1589,5),(1590,10),(1591,3),(1592,19),(1593,14),(1594,9),(1595,6),(1596,12),(1597,30),(1598,13),(1599,21),(1600,26),(1601,7),(1602,2),(1603,10),(1604,3),(1605,30),(1606,19),(1607,17),(1608,20),(1609,7),(1610,13),(1611,24),(1612,26),(1613,12),(1614,11),(1615,4),(1616,6),(1617,32),(1618,28),(1619,21),(1620,13),(1621,1),(1622,24),(1623,25),(1624,22),(1625,29),(1626,19),(1627,17),(1628,28),(1629,3),(1630,15),(1631,32),(1632,10),(1633,20),(1634,18),(1635,28),(1636,25),(1637,6),(1638,8),(1639,4),(1640,1),(1641,13),(1642,17),(1643,15),(1644,14),(1645,19),(1646,12),(1647,27),(1648,30),(1649,18),(1650,20),(1651,19),(1652,6),(1653,12),(1654,26),(1655,7),(1656,32),(1657,30),(1658,18),(1659,18),(1660,30),(1661,18),(1662,14),(1663,24),(1664,22),(1665,3),(1666,7),(1667,18),(1668,28),(1669,8),(1670,20),(1671,26),(1672,21),(1673,12),(1674,25),(1675,31),(1676,10),(1677,17),(1678,22),(1679,14),(1680,4),(1681,7),(1682,24),(1683,26),(1684,20),(1685,13),(1686,16),(1687,11),(1688,30),(1689,1),(1690,23),(1691,17),(1692,27),(1693,10),(1694,8),(1695,12),(1696,7),(1697,13),(1698,6),(1699,23),(1700,26),(1701,19),(1702,14),(1703,22),(1704,2),(1705,31),(1706,18),(1707,20),(1708,17),(1709,9);
/*!40000 ALTER TABLE `GameResult` ENABLE KEYS */;
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
