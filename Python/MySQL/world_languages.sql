-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: world
-- ------------------------------------------------------
-- Server version	5.5.49-log

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
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` char(3) NOT NULL DEFAULT '',
  `language` char(30) NOT NULL DEFAULT '',
  `is_official` enum('T','F') NOT NULL DEFAULT 'F',
  `percentage` float(4,1) NOT NULL DEFAULT '0.0',
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_languages_countries_idx` (`country_id`),
  CONSTRAINT `fk_languages_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=985 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'ABW','Dutch','T',5.3,1),(2,'ABW','English','F',9.5,1),(3,'ABW','Papiamento','F',76.7,1),(4,'ABW','Spanish','F',7.4,1),(5,'AFG','Balochi','F',0.9,2),(6,'AFG','Dari','T',32.1,2),(7,'AFG','Pashto','T',52.4,2),(8,'AFG','Turkmenian','F',1.9,2),(9,'AFG','Uzbek','F',8.8,2),(10,'AGO','Ambo','F',2.4,3),(11,'AGO','Chokwe','F',4.2,3),(12,'AGO','Kongo','F',13.2,3),(13,'AGO','Luchazi','F',2.4,3),(14,'AGO','Luimbe-nganguela','F',5.4,3),(15,'AGO','Luvale','F',3.6,3),(16,'AGO','Mbundu','F',21.6,3),(17,'AGO','Nyaneka-nkhumbi','F',5.4,3),(18,'AGO','Ovimbundu','F',37.2,3),(19,'AIA','English','T',0.0,4),(20,'ALB','Albaniana','T',97.9,5),(21,'ALB','Greek','F',1.8,5),(22,'ALB','Macedonian','F',0.1,5),(23,'AND','Catalan','T',32.3,6),(24,'AND','French','F',6.2,6),(25,'AND','Portuguese','F',10.8,6),(26,'AND','Spanish','F',44.6,6),(27,'ANT','Dutch','T',0.0,7),(28,'ANT','English','F',7.8,7),(29,'ANT','Papiamento','T',86.2,7),(30,'ARE','Arabic','T',42.0,8),(31,'ARE','Hindi','F',0.0,8),(32,'ARG','Indian Languages','F',0.3,9),(33,'ARG','Italian','F',1.7,9),(34,'ARG','Spanish','T',96.8,9),(35,'ARM','Armenian','T',93.4,10),(36,'ARM','Azerbaijani','F',2.6,10),(37,'ASM','English','T',3.1,11),(38,'ASM','Samoan','T',90.6,11),(39,'ASM','Tongan','F',3.1,11),(40,'ATG','Creole English','F',95.7,14),(41,'ATG','English','T',0.0,14),(42,'AUS','Arabic','F',1.0,15),(43,'AUS','Canton Chinese','F',1.1,15),(44,'AUS','English','T',81.2,15),(45,'AUS','German','F',0.6,15),(46,'AUS','Greek','F',1.6,15),(47,'AUS','Italian','F',2.2,15),(48,'AUS','Serbo-Croatian','F',0.6,15),(49,'AUS','Vietnamese','F',0.8,15),(50,'AUT','Czech','F',0.2,16),(51,'AUT','German','T',92.0,16),(52,'AUT','Hungarian','F',0.4,16),(53,'AUT','Polish','F',0.2,16),(54,'AUT','Romanian','F',0.2,16),(55,'AUT','Serbo-Croatian','F',2.2,16),(56,'AUT','Slovene','F',0.4,16),(57,'AUT','Turkish','F',1.5,16),(58,'AZE','Armenian','F',2.0,17),(59,'AZE','Azerbaijani','T',89.0,17),(60,'AZE','Lezgian','F',2.3,17),(61,'AZE','Russian','F',3.0,17),(62,'BDI','French','T',0.0,18),(63,'BDI','Kirundi','T',98.1,18),(64,'BDI','Swahili','F',0.0,18),(65,'BEL','Arabic','F',1.6,19),(66,'BEL','Dutch','T',59.2,19),(67,'BEL','French','T',32.6,19),(68,'BEL','German','T',1.0,19),(69,'BEL','Italian','F',2.4,19),(70,'BEL','Turkish','F',0.9,19),(71,'BEN','Adja','F',11.1,20),(72,'BEN','Aizo','F',8.7,20),(73,'BEN','Bariba','F',8.7,20),(74,'BEN','Fon','F',39.8,20),(75,'BEN','Ful','F',5.6,20),(76,'BEN','Joruba','F',12.2,20),(77,'BEN','Somba','F',6.7,20),(78,'BFA','Busansi','F',3.5,21),(79,'BFA','Dagara','F',3.1,21),(80,'BFA','Dyula','F',2.6,21),(81,'BFA','Ful','F',9.7,21),(82,'BFA','Gurma','F',5.7,21),(83,'BFA','Mossi','F',50.2,21),(84,'BGD','Bengali','T',97.7,22),(85,'BGD','Chakma','F',0.4,22),(86,'BGD','Garo','F',0.1,22),(87,'BGD','Khasi','F',0.1,22),(88,'BGD','Marma','F',0.2,22),(89,'BGD','Santhali','F',0.1,22),(90,'BGD','Tripuri','F',0.1,22),(91,'BGR','Bulgariana','T',83.2,23),(92,'BGR','Macedonian','F',2.6,23),(93,'BGR','Romani','F',3.7,23),(94,'BGR','Turkish','F',9.4,23),(95,'BHR','Arabic','T',67.7,24),(96,'BHR','English','F',0.0,24),(97,'BHS','Creole English','F',89.7,25),(98,'BHS','Creole French','F',10.3,25),(99,'BIH','Serbo-Croatian','T',99.2,26),(100,'BLR','Belorussian','T',65.6,27),(101,'BLR','Polish','F',0.6,27),(102,'BLR','Russian','T',32.0,27),(103,'BLR','Ukrainian','F',1.3,27),(104,'BLZ','English','T',50.8,28),(105,'BLZ','Garifuna','F',6.8,28),(106,'BLZ','Maya Languages','F',9.6,28),(107,'BLZ','Spanish','F',31.6,28),(108,'BMU','English','T',100.0,29),(109,'BOL','AimarÃ¡','T',3.2,30),(110,'BOL','GuaranÃ­','F',0.1,30),(111,'BOL','KetÂšua','T',8.1,30),(112,'BOL','Spanish','T',87.7,30),(113,'BRA','German','F',0.5,31),(114,'BRA','Indian Languages','F',0.2,31),(115,'BRA','Italian','F',0.4,31),(116,'BRA','Japanese','F',0.4,31),(117,'BRA','Portuguese','T',97.5,31),(118,'BRB','Bajan','F',95.1,32),(119,'BRB','English','T',0.0,32),(120,'BRN','Chinese','F',9.3,33),(121,'BRN','English','F',3.1,33),(122,'BRN','Malay','T',45.5,33),(123,'BRN','Malay-English','F',28.8,33),(124,'BTN','Asami','F',15.2,34),(125,'BTN','Dzongkha','T',50.0,34),(126,'BTN','Nepali','F',34.8,34),(127,'BWA','Khoekhoe','F',2.5,36),(128,'BWA','Ndebele','F',1.3,36),(129,'BWA','San','F',3.5,36),(130,'BWA','Shona','F',12.3,36),(131,'BWA','Tswana','F',75.5,36),(132,'CAF','Banda','F',23.5,37),(133,'CAF','Gbaya','F',23.8,37),(134,'CAF','Mandjia','F',14.8,37),(135,'CAF','Mbum','F',6.4,37),(136,'CAF','Ngbaka','F',7.5,37),(137,'CAF','Sara','F',6.4,37),(138,'CAN','Chinese','F',2.5,38),(139,'CAN','Dutch','F',0.5,38),(140,'CAN','English','T',60.4,38),(141,'CAN','Eskimo Languages','F',0.1,38),(142,'CAN','French','T',23.4,38),(143,'CAN','German','F',1.6,38),(144,'CAN','Italian','F',1.7,38),(145,'CAN','Polish','F',0.7,38),(146,'CAN','Portuguese','F',0.7,38),(147,'CAN','Punjabi','F',0.7,38),(148,'CAN','Spanish','F',0.7,38),(149,'CAN','Ukrainian','F',0.6,38),(150,'CCK','English','T',0.0,39),(151,'CCK','Malay','F',0.0,39),(152,'CHE','French','T',19.2,40),(153,'CHE','German','T',63.6,40),(154,'CHE','Italian','T',7.7,40),(155,'CHE','Romansh','T',0.6,40),(156,'CHL','AimarÃ¡','F',0.5,41),(157,'CHL','Araucan','F',9.6,41),(158,'CHL','Rapa nui','F',0.2,41),(159,'CHL','Spanish','T',89.7,41),(160,'CHN','Chinese','T',92.0,42),(161,'CHN','Dong','F',0.2,42),(162,'CHN','Hui','F',0.8,42),(163,'CHN','MantÂšu','F',0.9,42),(164,'CHN','Miao','F',0.7,42),(165,'CHN','Mongolian','F',0.4,42),(166,'CHN','Puyi','F',0.2,42),(167,'CHN','Tibetan','F',0.4,42),(168,'CHN','Tujia','F',0.5,42),(169,'CHN','Uighur','F',0.6,42),(170,'CHN','Yi','F',0.6,42),(171,'CHN','Zhuang','F',1.4,42),(172,'CIV','Akan','F',30.0,43),(173,'CIV','Gur','F',11.7,43),(174,'CIV','Kru','F',10.5,43),(175,'CIV','Malinke','F',11.4,43),(176,'CIV','[South]Mande','F',7.7,43),(177,'CMR','Bamileke-bamum','F',18.6,44),(178,'CMR','Duala','F',10.9,44),(179,'CMR','Fang','F',19.7,44),(180,'CMR','Ful','F',9.6,44),(181,'CMR','Maka','F',4.9,44),(182,'CMR','Mandara','F',5.7,44),(183,'CMR','Masana','F',3.9,44),(184,'CMR','Tikar','F',7.4,44),(185,'COD','Boa','F',2.3,45),(186,'COD','Chokwe','F',1.8,45),(187,'COD','Kongo','F',16.0,45),(188,'COD','Luba','F',18.0,45),(189,'COD','Mongo','F',13.5,45),(190,'COD','Ngala and Bangi','F',5.8,45),(191,'COD','Rundi','F',3.8,45),(192,'COD','Rwanda','F',10.3,45),(193,'COD','Teke','F',2.7,45),(194,'COD','Zande','F',6.1,45),(195,'COG','Kongo','F',51.5,46),(196,'COG','Mbete','F',4.8,46),(197,'COG','Mboshi','F',11.4,46),(198,'COG','Punu','F',2.9,46),(199,'COG','Sango','F',2.6,46),(200,'COG','Teke','F',17.3,46),(201,'COK','English','F',0.0,47),(202,'COK','Maori','T',0.0,47),(203,'COL','Arawakan','F',0.1,48),(204,'COL','Caribbean','F',0.1,48),(205,'COL','Chibcha','F',0.4,48),(206,'COL','Creole English','F',0.1,48),(207,'COL','Spanish','T',99.0,48),(208,'COM','Comorian','T',75.0,49),(209,'COM','Comorian-Arabic','F',1.6,49),(210,'COM','Comorian-French','F',12.9,49),(211,'COM','Comorian-madagassi','F',5.5,49),(212,'COM','Comorian-Swahili','F',0.5,49),(213,'CPV','Crioulo','F',100.0,50),(214,'CPV','Portuguese','T',0.0,50),(215,'CRI','Chibcha','F',0.3,51),(216,'CRI','Chinese','F',0.2,51),(217,'CRI','Creole English','F',2.0,51),(218,'CRI','Spanish','T',97.5,51),(219,'CUB','Spanish','T',100.0,52),(220,'CXR','Chinese','F',0.0,53),(221,'CXR','English','T',0.0,53),(222,'CYM','English','T',0.0,54),(223,'CYP','Greek','T',74.1,55),(224,'CYP','Turkish','T',22.4,55),(225,'CZE','Czech','T',81.2,56),(226,'CZE','German','F',0.5,56),(227,'CZE','Hungarian','F',0.2,56),(228,'CZE','Moravian','F',12.9,56),(229,'CZE','Polish','F',0.6,56),(230,'CZE','Romani','F',0.3,56),(231,'CZE','Silesiana','F',0.4,56),(232,'CZE','Slovak','F',3.1,56),(233,'DEU','German','T',91.3,57),(234,'DEU','Greek','F',0.4,57),(235,'DEU','Italian','F',0.7,57),(236,'DEU','Polish','F',0.3,57),(237,'DEU','Southern Slavic Languages','F',1.4,57),(238,'DEU','Turkish','F',2.6,57),(239,'DJI','Afar','F',34.8,58),(240,'DJI','Arabic','T',10.6,58),(241,'DJI','Somali','F',43.9,58),(242,'DMA','Creole English','F',100.0,59),(243,'DMA','Creole French','F',0.0,59),(244,'DNK','Arabic','F',0.7,60),(245,'DNK','Danish','T',93.5,60),(246,'DNK','English','F',0.3,60),(247,'DNK','German','F',0.5,60),(248,'DNK','Norwegian','F',0.3,60),(249,'DNK','Swedish','F',0.3,60),(250,'DNK','Turkish','F',0.8,60),(251,'DOM','Creole French','F',2.0,61),(252,'DOM','Spanish','T',98.0,61),(253,'DZA','Arabic','T',86.0,62),(254,'DZA','Berberi','F',14.0,62),(255,'ECU','KetÂšua','F',7.0,63),(256,'ECU','Spanish','T',93.0,63),(257,'EGY','Arabic','T',98.8,64),(258,'EGY','Sinaberberi','F',0.0,64),(259,'ERI','Afar','F',4.3,65),(260,'ERI','Bilin','F',3.0,65),(261,'ERI','Hadareb','F',3.8,65),(262,'ERI','Saho','F',3.0,65),(263,'ERI','Tigre','F',31.7,65),(264,'ERI','Tigrinja','T',49.1,65),(265,'ESH','Arabic','T',100.0,66),(266,'ESP','Basque','F',1.6,67),(267,'ESP','Catalan','F',16.9,67),(268,'ESP','Galecian','F',6.4,67),(269,'ESP','Spanish','T',74.4,67),(270,'EST','Belorussian','F',1.4,68),(271,'EST','Estonian','T',65.3,68),(272,'EST','Finnish','F',0.7,68),(273,'EST','Russian','F',27.8,68),(274,'EST','Ukrainian','F',2.8,68),(275,'ETH','Amhara','F',30.0,69),(276,'ETH','Gurage','F',4.7,69),(277,'ETH','Oromo','F',31.0,69),(278,'ETH','Sidamo','F',3.2,69),(279,'ETH','Somali','F',4.1,69),(280,'ETH','Tigrinja','F',7.2,69),(281,'ETH','Walaita','F',2.8,69),(282,'FIN','Estonian','F',0.2,70),(283,'FIN','Finnish','T',92.7,70),(284,'FIN','Russian','F',0.4,70),(285,'FIN','Saame','F',0.0,70),(286,'FIN','Swedish','T',5.7,70),(287,'FJI','Fijian','T',50.8,71),(288,'FJI','Hindi','F',43.7,71),(289,'FLK','English','T',0.0,72),(290,'FRA','Arabic','F',2.5,73),(291,'FRA','French','T',93.6,73),(292,'FRA','Italian','F',0.4,73),(293,'FRA','Portuguese','F',1.2,73),(294,'FRA','Spanish','F',0.4,73),(295,'FRA','Turkish','F',0.4,73),(296,'FRO','Danish','T',0.0,74),(297,'FRO','Faroese','T',100.0,74),(298,'FSM','Kosrean','F',7.3,75),(299,'FSM','Mortlock','F',7.6,75),(300,'FSM','Pohnpei','F',23.8,75),(301,'FSM','Trukese','F',41.6,75),(302,'FSM','Wolea','F',3.7,75),(303,'FSM','Yap','F',5.8,75),(304,'GAB','Fang','F',35.8,76),(305,'GAB','Mbete','F',13.8,76),(306,'GAB','Mpongwe','F',14.6,76),(307,'GAB','Punu-sira-nzebi','F',17.1,76),(308,'GBR','English','T',97.3,77),(309,'GBR','Gaeli','F',0.1,77),(310,'GBR','Kymri','F',0.9,77),(311,'GEO','Abhyasi','F',1.7,78),(312,'GEO','Armenian','F',6.8,78),(313,'GEO','Azerbaijani','F',5.5,78),(314,'GEO','Georgiana','T',71.7,78),(315,'GEO','Osseetti','F',2.4,78),(316,'GEO','Russian','F',8.8,78),(317,'GHA','Akan','F',52.4,79),(318,'GHA','Ewe','F',11.9,79),(319,'GHA','Ga-adangme','F',7.8,79),(320,'GHA','Gurma','F',3.3,79),(321,'GHA','Joruba','F',1.3,79),(322,'GHA','Mossi','F',15.8,79),(323,'GIB','Arabic','F',7.4,80),(324,'GIB','English','T',88.9,80),(325,'GIN','Ful','F',38.6,81),(326,'GIN','Kissi','F',6.0,81),(327,'GIN','Kpelle','F',4.6,81),(328,'GIN','Loma','F',2.3,81),(329,'GIN','Malinke','F',23.2,81),(330,'GIN','Susu','F',11.0,81),(331,'GIN','Yalunka','F',2.9,81),(332,'GLP','Creole French','F',95.0,82),(333,'GLP','French','T',0.0,82),(334,'GMB','Diola','F',9.2,83),(335,'GMB','Ful','F',16.2,83),(336,'GMB','Malinke','F',34.1,83),(337,'GMB','Soninke','F',7.6,83),(338,'GMB','Wolof','F',12.6,83),(339,'GNB','Balante','F',14.6,84),(340,'GNB','Crioulo','F',36.4,84),(341,'GNB','Ful','F',16.6,84),(342,'GNB','Malinke','F',6.9,84),(343,'GNB','Mandyako','F',4.9,84),(344,'GNB','Portuguese','T',8.1,84),(345,'GNQ','Bubi','F',8.7,85),(346,'GNQ','Fang','F',84.8,85),(347,'GRC','Greek','T',98.5,86),(348,'GRC','Turkish','F',0.9,86),(349,'GRD','Creole English','F',100.0,87),(350,'GRL','Danish','T',12.5,88),(351,'GRL','Greenlandic','T',87.5,88),(352,'GTM','Cakchiquel','F',8.9,89),(353,'GTM','KekchÃ­','F',4.9,89),(354,'GTM','Mam','F',2.7,89),(355,'GTM','QuichÃ©','F',10.1,89),(356,'GTM','Spanish','T',64.7,89),(357,'GUF','Creole French','F',94.3,90),(358,'GUF','Indian Languages','F',1.9,90),(359,'GUM','Chamorro','T',29.6,91),(360,'GUM','English','T',37.5,91),(361,'GUM','Japanese','F',2.0,91),(362,'GUM','Korean','F',3.3,91),(363,'GUM','Philippene Languages','F',19.7,91),(364,'GUY','Arawakan','F',1.4,92),(365,'GUY','Caribbean','F',2.2,92),(366,'GUY','Creole English','F',96.4,92),(367,'HKG','Canton Chinese','F',88.7,93),(368,'HKG','Chiu chau','F',1.4,93),(369,'HKG','English','T',2.2,93),(370,'HKG','Fukien','F',1.9,93),(371,'HKG','Hakka','F',1.6,93),(372,'HND','Creole English','F',0.2,95),(373,'HND','Garifuna','F',1.3,95),(374,'HND','Miskito','F',0.2,95),(375,'HND','Spanish','T',97.2,95),(376,'HRV','Serbo-Croatian','T',95.9,96),(377,'HRV','Slovene','F',0.0,96),(378,'HTI','French','T',0.0,97),(379,'HTI','Haiti Creole','F',100.0,97),(380,'HUN','German','F',0.4,98),(381,'HUN','Hungarian','T',98.5,98),(382,'HUN','Romani','F',0.5,98),(383,'HUN','Romanian','F',0.1,98),(384,'HUN','Serbo-Croatian','F',0.2,98),(385,'HUN','Slovak','F',0.1,98),(386,'IDN','Bali','F',1.7,99),(387,'IDN','Banja','F',1.8,99),(388,'IDN','Batakki','F',2.2,99),(389,'IDN','Bugi','F',2.2,99),(390,'IDN','Javanese','F',39.4,99),(391,'IDN','Madura','F',4.3,99),(392,'IDN','Malay','T',12.1,99),(393,'IDN','Minangkabau','F',2.4,99),(394,'IDN','Sunda','F',15.8,99),(395,'IND','Asami','F',1.5,100),(396,'IND','Bengali','F',8.2,100),(397,'IND','Gujarati','F',4.8,100),(398,'IND','Hindi','T',39.9,100),(399,'IND','Kannada','F',3.9,100),(400,'IND','Malajalam','F',3.6,100),(401,'IND','Marathi','F',7.4,100),(402,'IND','Orija','F',3.3,100),(403,'IND','Punjabi','F',2.8,100),(404,'IND','Tamil','F',6.3,100),(405,'IND','Telugu','F',7.8,100),(406,'IND','Urdu','F',5.1,100),(407,'IRL','English','T',98.4,102),(408,'IRL','Irish','T',1.6,102),(409,'IRN','Arabic','F',2.2,103),(410,'IRN','Azerbaijani','F',16.8,103),(411,'IRN','Bakhtyari','F',1.7,103),(412,'IRN','Balochi','F',2.3,103),(413,'IRN','Gilaki','F',5.3,103),(414,'IRN','Kurdish','F',9.1,103),(415,'IRN','Luri','F',4.3,103),(416,'IRN','Mazandarani','F',3.6,103),(417,'IRN','Persian','T',45.7,103),(418,'IRN','Turkmenian','F',1.6,103),(419,'IRQ','Arabic','T',77.2,104),(420,'IRQ','Assyrian','F',0.8,104),(421,'IRQ','Azerbaijani','F',1.7,104),(422,'IRQ','Kurdish','F',19.0,104),(423,'IRQ','Persian','F',0.8,104),(424,'ISL','English','F',0.0,105),(425,'ISL','Icelandic','T',95.7,105),(426,'ISR','Arabic','T',18.0,106),(427,'ISR','Hebrew','T',63.1,106),(428,'ISR','Russian','F',8.9,106),(429,'ITA','Albaniana','F',0.2,107),(430,'ITA','French','F',0.5,107),(431,'ITA','Friuli','F',1.2,107),(432,'ITA','German','F',0.5,107),(433,'ITA','Italian','T',94.1,107),(434,'ITA','Romani','F',0.2,107),(435,'ITA','Sardinian','F',2.7,107),(436,'ITA','Slovene','F',0.2,107),(437,'JAM','Creole English','F',94.2,108),(438,'JAM','Hindi','F',1.9,108),(439,'JOR','Arabic','T',97.9,109),(440,'JOR','Armenian','F',1.0,109),(441,'JOR','Circassian','F',1.0,109),(442,'JPN','Ainu','F',0.0,110),(443,'JPN','Chinese','F',0.2,110),(444,'JPN','English','F',0.1,110),(445,'JPN','Japanese','T',99.1,110),(446,'JPN','Korean','F',0.5,110),(447,'JPN','Philippene Languages','F',0.1,110),(448,'KAZ','German','F',3.1,111),(449,'KAZ','Kazakh','T',46.0,111),(450,'KAZ','Russian','F',34.7,111),(451,'KAZ','Tatar','F',2.0,111),(452,'KAZ','Ukrainian','F',5.0,111),(453,'KAZ','Uzbek','F',2.3,111),(454,'KEN','Gusii','F',6.1,112),(455,'KEN','Kalenjin','F',10.8,112),(456,'KEN','Kamba','F',11.2,112),(457,'KEN','Kikuyu','F',20.9,112),(458,'KEN','Luhya','F',13.8,112),(459,'KEN','Luo','F',12.8,112),(460,'KEN','Masai','F',1.6,112),(461,'KEN','Meru','F',5.5,112),(462,'KEN','Nyika','F',4.8,112),(463,'KEN','Turkana','F',1.4,112),(464,'KGZ','Kazakh','F',0.8,113),(465,'KGZ','Kirgiz','T',59.7,113),(466,'KGZ','Russian','T',16.2,113),(467,'KGZ','Tadzhik','F',0.8,113),(468,'KGZ','Tatar','F',1.3,113),(469,'KGZ','Ukrainian','F',1.7,113),(470,'KGZ','Uzbek','F',14.1,113),(471,'KHM','Chinese','F',3.1,114),(472,'KHM','Khmer','T',88.6,114),(473,'KHM','TÂšam','F',2.4,114),(474,'KHM','Vietnamese','F',5.5,114),(475,'KIR','Kiribati','T',98.9,115),(476,'KIR','Tuvalu','F',0.5,115),(477,'KNA','Creole English','F',100.0,116),(478,'KNA','English','T',0.0,116),(479,'KOR','Chinese','F',0.1,117),(480,'KOR','Korean','T',99.9,117),(481,'KWT','Arabic','T',78.1,118),(482,'KWT','English','F',0.0,118),(483,'LAO','Lao','T',67.2,119),(484,'LAO','Lao-Soung','F',5.2,119),(485,'LAO','Mon-khmer','F',16.5,119),(486,'LAO','Thai','F',7.8,119),(487,'LBN','Arabic','T',93.0,120),(488,'LBN','Armenian','F',5.9,120),(489,'LBN','French','F',0.0,120),(490,'LBR','Bassa','F',13.7,121),(491,'LBR','Gio','F',7.9,121),(492,'LBR','Grebo','F',8.9,121),(493,'LBR','Kpelle','F',19.5,121),(494,'LBR','Kru','F',7.2,121),(495,'LBR','Loma','F',5.8,121),(496,'LBR','Malinke','F',5.1,121),(497,'LBR','Mano','F',7.2,121),(498,'LBY','Arabic','T',96.0,122),(499,'LBY','Berberi','F',1.0,122),(500,'LCA','Creole French','F',80.0,123),(501,'LCA','English','T',20.0,123),(502,'LIE','German','T',89.0,124),(503,'LIE','Italian','F',2.5,124),(504,'LIE','Turkish','F',2.5,124),(505,'LKA','Mixed Languages','F',19.6,125),(506,'LKA','Singali','T',60.3,125),(507,'LKA','Tamil','T',19.6,125),(508,'LSO','English','T',0.0,126),(509,'LSO','Sotho','T',85.0,126),(510,'LSO','Zulu','F',15.0,126),(511,'LTU','Belorussian','F',1.4,127),(512,'LTU','Lithuanian','T',81.6,127),(513,'LTU','Polish','F',7.0,127),(514,'LTU','Russian','F',8.1,127),(515,'LTU','Ukrainian','F',1.1,127),(516,'LUX','French','T',4.2,128),(517,'LUX','German','T',2.3,128),(518,'LUX','Italian','F',4.6,128),(519,'LUX','Luxembourgish','T',64.4,128),(520,'LUX','Portuguese','F',13.0,128),(521,'LVA','Belorussian','F',4.1,129),(522,'LVA','Latvian','T',55.1,129),(523,'LVA','Lithuanian','F',1.2,129),(524,'LVA','Polish','F',2.1,129),(525,'LVA','Russian','F',32.5,129),(526,'LVA','Ukrainian','F',2.9,129),(527,'MAC','Canton Chinese','F',85.6,130),(528,'MAC','English','F',0.5,130),(529,'MAC','Mandarin Chinese','F',1.2,130),(530,'MAC','Portuguese','T',2.3,130),(531,'MAR','Arabic','T',65.0,131),(532,'MAR','Berberi','F',33.0,131),(533,'MCO','English','F',6.5,132),(534,'MCO','French','T',41.9,132),(535,'MCO','Italian','F',16.1,132),(536,'MCO','Monegasque','F',16.1,132),(537,'MDA','Bulgariana','F',1.6,133),(538,'MDA','Gagauzi','F',3.2,133),(539,'MDA','Romanian','T',61.9,133),(540,'MDA','Russian','F',23.2,133),(541,'MDA','Ukrainian','F',8.6,133),(542,'MDG','French','T',0.0,134),(543,'MDG','Malagasy','T',98.9,134),(544,'MDV','Dhivehi','T',100.0,135),(545,'MDV','English','F',0.0,135),(546,'MEX','Mixtec','F',0.6,136),(547,'MEX','NÃ¡huatl','F',1.8,136),(548,'MEX','OtomÃ­','F',0.4,136),(549,'MEX','Spanish','T',92.1,136),(550,'MEX','Yucatec','F',1.1,136),(551,'MEX','Zapotec','F',0.6,136),(552,'MHL','English','T',0.0,137),(553,'MHL','Marshallese','T',96.8,137),(554,'MKD','Albaniana','F',22.9,138),(555,'MKD','Macedonian','T',66.5,138),(556,'MKD','Romani','F',2.3,138),(557,'MKD','Serbo-Croatian','F',2.0,138),(558,'MKD','Turkish','F',4.0,138),(559,'MLI','Bambara','F',31.8,139),(560,'MLI','Ful','F',13.9,139),(561,'MLI','Senufo and Minianka','F',12.0,139),(562,'MLI','Songhai','F',6.9,139),(563,'MLI','Soninke','F',8.7,139),(564,'MLI','Tamashek','F',7.3,139),(565,'MLT','English','T',2.1,140),(566,'MLT','Maltese','T',95.8,140),(567,'MMR','Burmese','T',69.0,141),(568,'MMR','Chin','F',2.2,141),(569,'MMR','Kachin','F',1.4,141),(570,'MMR','Karen','F',6.2,141),(571,'MMR','Kayah','F',0.4,141),(572,'MMR','Mon','F',2.4,141),(573,'MMR','Rakhine','F',4.5,141),(574,'MMR','Shan','F',8.5,141),(575,'MNG','Bajad','F',1.9,142),(576,'MNG','Buryat','F',1.7,142),(577,'MNG','Dariganga','F',1.4,142),(578,'MNG','Dorbet','F',2.7,142),(579,'MNG','Kazakh','F',5.9,142),(580,'MNG','Mongolian','T',78.8,142),(581,'MNP','Carolinian','F',4.8,143),(582,'MNP','Chamorro','F',30.0,143),(583,'MNP','Chinese','F',7.1,143),(584,'MNP','English','T',4.8,143),(585,'MNP','Korean','F',6.5,143),(586,'MNP','Philippene Languages','F',34.1,143),(587,'MOZ','Chuabo','F',5.7,144),(588,'MOZ','Lomwe','F',7.8,144),(589,'MOZ','Makua','F',27.8,144),(590,'MOZ','Marendje','F',3.5,144),(591,'MOZ','Nyanja','F',3.3,144),(592,'MOZ','Ronga','F',3.7,144),(593,'MOZ','Sena','F',9.4,144),(594,'MOZ','Shona','F',6.5,144),(595,'MOZ','Tsonga','F',12.4,144),(596,'MOZ','Tswa','F',6.0,144),(597,'MRT','Ful','F',1.2,145),(598,'MRT','Hassaniya','F',81.7,145),(599,'MRT','Soninke','F',2.7,145),(600,'MRT','Tukulor','F',5.4,145),(601,'MRT','Wolof','F',6.6,145),(602,'MRT','Zenaga','F',1.2,145),(603,'MSR','English','T',0.0,146),(604,'MTQ','Creole French','F',96.6,147),(605,'MTQ','French','T',0.0,147),(606,'MUS','Bhojpuri','F',21.1,148),(607,'MUS','Creole French','F',70.6,148),(608,'MUS','French','F',3.4,148),(609,'MUS','Hindi','F',1.2,148),(610,'MUS','Marathi','F',0.7,148),(611,'MUS','Tamil','F',0.8,148),(612,'MWI','Chichewa','T',58.3,149),(613,'MWI','Lomwe','F',18.4,149),(614,'MWI','Ngoni','F',6.7,149),(615,'MWI','Yao','F',13.2,149),(616,'MYS','Chinese','F',9.0,150),(617,'MYS','Dusun','F',1.1,150),(618,'MYS','English','F',1.6,150),(619,'MYS','Iban','F',2.8,150),(620,'MYS','Malay','T',58.4,150),(621,'MYS','Tamil','F',3.9,150),(622,'MYT','French','T',20.3,151),(623,'MYT','MahorÃ©','F',41.9,151),(624,'MYT','Malagasy','F',16.1,151),(625,'NAM','Afrikaans','F',9.5,152),(626,'NAM','Caprivi','F',4.7,152),(627,'NAM','German','F',0.9,152),(628,'NAM','Herero','F',8.0,152),(629,'NAM','Kavango','F',9.7,152),(630,'NAM','Nama','F',12.4,152),(631,'NAM','Ovambo','F',50.7,152),(632,'NAM','San','F',1.9,152),(633,'NCL','French','T',34.3,153),(634,'NCL','Malenasian Languages','F',45.4,153),(635,'NCL','Polynesian Languages','F',11.6,153),(636,'NER','Ful','F',9.7,154),(637,'NER','Hausa','F',53.1,154),(638,'NER','Kanuri','F',4.4,154),(639,'NER','Songhai-zerma','F',21.2,154),(640,'NER','Tamashek','F',10.4,154),(641,'NFK','English','T',0.0,155),(642,'NGA','Bura','F',1.6,156),(643,'NGA','Edo','F',3.3,156),(644,'NGA','Ful','F',11.3,156),(645,'NGA','Hausa','F',21.1,156),(646,'NGA','Ibibio','F',5.6,156),(647,'NGA','Ibo','F',18.1,156),(648,'NGA','Ijo','F',1.8,156),(649,'NGA','Joruba','F',21.4,156),(650,'NGA','Kanuri','F',4.1,156),(651,'NGA','Tiv','F',2.3,156),(652,'NIC','Creole English','F',0.5,157),(653,'NIC','Miskito','F',1.6,157),(654,'NIC','Spanish','T',97.6,157),(655,'NIC','Sumo','F',0.2,157),(656,'NIU','English','T',0.0,158),(657,'NIU','Niue','F',0.0,158),(658,'NLD','Arabic','F',0.9,159),(659,'NLD','Dutch','T',95.6,159),(660,'NLD','Fries','F',3.7,159),(661,'NLD','Turkish','F',0.8,159),(662,'NOR','Danish','F',0.4,160),(663,'NOR','English','F',0.5,160),(664,'NOR','Norwegian','T',96.6,160),(665,'NOR','Saame','F',0.0,160),(666,'NOR','Swedish','F',0.3,160),(667,'NPL','Bhojpuri','F',7.5,161),(668,'NPL','Hindi','F',3.0,161),(669,'NPL','Maithili','F',11.9,161),(670,'NPL','Nepali','T',50.4,161),(671,'NPL','Newari','F',3.7,161),(672,'NPL','Tamang','F',4.9,161),(673,'NPL','Tharu','F',5.4,161),(674,'NRU','Chinese','F',8.5,162),(675,'NRU','English','T',7.5,162),(676,'NRU','Kiribati','F',17.9,162),(677,'NRU','Nauru','T',57.5,162),(678,'NRU','Tuvalu','F',8.5,162),(679,'NZL','English','T',87.0,163),(680,'NZL','Maori','F',4.3,163),(681,'OMN','Arabic','T',76.7,164),(682,'OMN','Balochi','F',0.0,164),(683,'PAK','Balochi','F',3.0,165),(684,'PAK','Brahui','F',1.2,165),(685,'PAK','Hindko','F',2.4,165),(686,'PAK','Pashto','F',13.1,165),(687,'PAK','Punjabi','F',48.2,165),(688,'PAK','Saraiki','F',9.8,165),(689,'PAK','Sindhi','F',11.8,165),(690,'PAK','Urdu','T',7.6,165),(691,'PAN','Arabic','F',0.6,166),(692,'PAN','Creole English','F',14.0,166),(693,'PAN','Cuna','F',2.0,166),(694,'PAN','Embera','F',0.6,166),(695,'PAN','GuaymÃ­','F',5.3,166),(696,'PAN','Spanish','T',76.8,166),(697,'PCN','Pitcairnese','F',0.0,167),(698,'PER','AimarÃ¡','T',2.3,168),(699,'PER','KetÂšua','T',16.4,168),(700,'PER','Spanish','T',79.8,168),(701,'PHL','Bicol','F',5.7,169),(702,'PHL','Cebuano','F',23.3,169),(703,'PHL','Hiligaynon','F',9.1,169),(704,'PHL','Ilocano','F',9.3,169),(705,'PHL','Maguindanao','F',1.4,169),(706,'PHL','Maranao','F',1.3,169),(707,'PHL','Pampango','F',3.0,169),(708,'PHL','Pangasinan','F',1.8,169),(709,'PHL','Pilipino','T',29.3,169),(710,'PHL','Waray-waray','F',3.8,169),(711,'PLW','Chinese','F',1.6,170),(712,'PLW','English','T',3.2,170),(713,'PLW','Palau','T',82.2,170),(714,'PLW','Philippene Languages','F',9.2,170),(715,'PNG','Malenasian Languages','F',20.0,171),(716,'PNG','Papuan Languages','F',78.1,171),(717,'POL','Belorussian','F',0.5,172),(718,'POL','German','F',1.3,172),(719,'POL','Polish','T',97.6,172),(720,'POL','Ukrainian','F',0.6,172),(721,'PRI','English','F',47.4,173),(722,'PRI','Spanish','T',51.3,173),(723,'PRK','Chinese','F',0.1,174),(724,'PRK','Korean','T',99.9,174),(725,'PRT','Portuguese','T',99.0,175),(726,'PRY','German','F',0.9,176),(727,'PRY','GuaranÃ­','T',40.1,176),(728,'PRY','Portuguese','F',3.2,176),(729,'PRY','Spanish','T',55.1,176),(730,'PSE','Arabic','F',95.9,177),(731,'PSE','Hebrew','F',4.1,177),(732,'PYF','Chinese','F',2.9,178),(733,'PYF','French','T',40.8,178),(734,'PYF','Tahitian','F',46.4,178),(735,'QAT','Arabic','T',40.7,179),(736,'QAT','Urdu','F',0.0,179),(737,'REU','Chinese','F',2.8,180),(738,'REU','Comorian','F',2.8,180),(739,'REU','Creole French','F',91.5,180),(740,'REU','Malagasy','F',1.4,180),(741,'REU','Tamil','F',0.0,180),(742,'ROM','German','F',0.4,181),(743,'ROM','Hungarian','F',7.2,181),(744,'ROM','Romani','T',0.7,181),(745,'ROM','Romanian','T',90.7,181),(746,'ROM','Serbo-Croatian','F',0.1,181),(747,'ROM','Ukrainian','F',0.3,181),(748,'RUS','Avarian','F',0.4,182),(749,'RUS','Bashkir','F',0.7,182),(750,'RUS','Belorussian','F',0.3,182),(751,'RUS','Chechen','F',0.6,182),(752,'RUS','Chuvash','F',0.9,182),(753,'RUS','Kazakh','F',0.4,182),(754,'RUS','Mari','F',0.4,182),(755,'RUS','Mordva','F',0.5,182),(756,'RUS','Russian','T',86.6,182),(757,'RUS','Tatar','F',3.2,182),(758,'RUS','Udmur','F',0.3,182),(759,'RUS','Ukrainian','F',1.3,182),(760,'RWA','French','T',0.0,183),(761,'RWA','Rwanda','T',100.0,183),(762,'SAU','Arabic','T',95.0,184),(763,'SDN','Arabic','T',49.4,185),(764,'SDN','Bari','F',2.5,185),(765,'SDN','Beja','F',6.4,185),(766,'SDN','Chilluk','F',1.7,185),(767,'SDN','Dinka','F',11.5,185),(768,'SDN','Fur','F',2.1,185),(769,'SDN','Lotuko','F',1.5,185),(770,'SDN','Nubian Languages','F',8.1,185),(771,'SDN','Nuer','F',4.9,185),(772,'SDN','Zande','F',2.7,185),(773,'SEN','Diola','F',5.0,186),(774,'SEN','Ful','F',21.7,186),(775,'SEN','Malinke','F',3.8,186),(776,'SEN','Serer','F',12.5,186),(777,'SEN','Soninke','F',1.3,186),(778,'SEN','Wolof','T',48.1,186),(779,'SGP','Chinese','T',77.1,187),(780,'SGP','Malay','T',14.1,187),(781,'SGP','Tamil','T',7.4,187),(782,'SHN','English','T',0.0,189),(783,'SJM','Norwegian','T',0.0,190),(784,'SJM','Russian','F',0.0,190),(785,'SLB','Malenasian Languages','F',85.6,191),(786,'SLB','Papuan Languages','F',8.6,191),(787,'SLB','Polynesian Languages','F',3.8,191),(788,'SLE','Bullom-sherbro','F',3.8,192),(789,'SLE','Ful','F',3.8,192),(790,'SLE','Kono-vai','F',5.1,192),(791,'SLE','Kuranko','F',3.4,192),(792,'SLE','Limba','F',8.3,192),(793,'SLE','Mende','F',34.8,192),(794,'SLE','Temne','F',31.8,192),(795,'SLE','Yalunka','F',3.4,192),(796,'SLV','Nahua','F',0.0,193),(797,'SLV','Spanish','T',100.0,193),(798,'SMR','Italian','T',100.0,194),(799,'SOM','Arabic','T',0.0,195),(800,'SOM','Somali','T',98.3,195),(801,'SPM','French','T',0.0,196),(802,'STP','Crioulo','F',86.3,197),(803,'STP','French','F',0.7,197),(804,'SUR','Hindi','F',0.0,198),(805,'SUR','Sranantonga','F',81.0,198),(806,'SVK','Czech and Moravian','F',1.1,199),(807,'SVK','Hungarian','F',10.5,199),(808,'SVK','Romani','F',1.7,199),(809,'SVK','Slovak','T',85.6,199),(810,'SVK','Ukrainian and Russian','F',0.6,199),(811,'SVN','Hungarian','F',0.5,200),(812,'SVN','Serbo-Croatian','F',7.9,200),(813,'SVN','Slovene','T',87.9,200),(814,'SWE','Arabic','F',0.8,201),(815,'SWE','Finnish','F',2.4,201),(816,'SWE','Norwegian','F',0.5,201),(817,'SWE','Southern Slavic Languages','F',1.3,201),(818,'SWE','Spanish','F',0.6,201),(819,'SWE','Swedish','T',89.5,201),(820,'SWZ','Swazi','T',89.9,202),(821,'SWZ','Zulu','F',2.0,202),(822,'SYC','English','T',3.8,203),(823,'SYC','French','T',1.3,203),(824,'SYC','Seselwa','F',91.3,203),(825,'SYR','Arabic','T',90.0,204),(826,'SYR','Kurdish','F',9.0,204),(827,'TCA','English','T',0.0,205),(828,'TCD','Arabic','T',12.3,206),(829,'TCD','Gorane','F',6.2,206),(830,'TCD','Hadjarai','F',6.7,206),(831,'TCD','Kanem-bornu','F',9.0,206),(832,'TCD','Mayo-kebbi','F',11.5,206),(833,'TCD','Ouaddai','F',8.7,206),(834,'TCD','Sara','F',27.7,206),(835,'TCD','Tandjile','F',6.5,206),(836,'TGO','Ane','F',5.7,207),(837,'TGO','Ewe','T',23.2,207),(838,'TGO','Gurma','F',3.4,207),(839,'TGO','KabyÃ©','T',13.8,207),(840,'TGO','Kotokoli','F',5.7,207),(841,'TGO','Moba','F',5.4,207),(842,'TGO','Naudemba','F',4.1,207),(843,'TGO','Watyi','F',10.3,207),(844,'THA','Chinese','F',12.1,208),(845,'THA','Khmer','F',1.3,208),(846,'THA','Kuy','F',1.1,208),(847,'THA','Lao','F',26.9,208),(848,'THA','Malay','F',3.6,208),(849,'THA','Thai','T',52.6,208),(850,'TJK','Russian','F',9.7,209),(851,'TJK','Tadzhik','T',62.2,209),(852,'TJK','Uzbek','F',23.2,209),(853,'TKL','English','T',0.0,210),(854,'TKL','Tokelau','F',0.0,210),(855,'TKM','Kazakh','F',2.0,211),(856,'TKM','Russian','F',6.7,211),(857,'TKM','Turkmenian','T',76.7,211),(858,'TKM','Uzbek','F',9.2,211),(859,'TMP','Portuguese','T',0.0,212),(860,'TMP','Sunda','F',0.0,212),(861,'TON','English','T',0.0,213),(862,'TON','Tongan','T',98.3,213),(863,'TTO','Creole English','F',2.9,214),(864,'TTO','English','F',93.5,214),(865,'TTO','Hindi','F',3.4,214),(866,'TUN','Arabic','T',69.9,215),(867,'TUN','Arabic-French','F',26.3,215),(868,'TUN','Arabic-French-English','F',3.2,215),(869,'TUR','Arabic','F',1.4,216),(870,'TUR','Kurdish','F',10.6,216),(871,'TUR','Turkish','T',87.6,216),(872,'TUV','English','T',0.0,217),(873,'TUV','Kiribati','F',7.5,217),(874,'TUV','Tuvalu','T',92.5,217),(875,'TWN','Ami','F',0.6,218),(876,'TWN','Atayal','F',0.4,218),(877,'TWN','Hakka','F',11.0,218),(878,'TWN','Mandarin Chinese','T',20.1,218),(879,'TWN','Min','F',66.7,218),(880,'TWN','Paiwan','F',0.3,218),(881,'TZA','Chaga and Pare','F',4.9,219),(882,'TZA','Gogo','F',3.9,219),(883,'TZA','Ha','F',3.5,219),(884,'TZA','Haya','F',5.9,219),(885,'TZA','Hehet','F',6.9,219),(886,'TZA','Luguru','F',4.9,219),(887,'TZA','Makonde','F',5.9,219),(888,'TZA','Nyakusa','F',5.4,219),(889,'TZA','Nyamwesi','F',21.1,219),(890,'TZA','Shambala','F',4.3,219),(891,'TZA','Swahili','T',8.8,219),(892,'UGA','Acholi','F',4.4,220),(893,'UGA','Ganda','F',18.1,220),(894,'UGA','Gisu','F',4.5,220),(895,'UGA','Kiga','F',8.3,220),(896,'UGA','Lango','F',5.9,220),(897,'UGA','Lugbara','F',4.7,220),(898,'UGA','Nkole','F',10.7,220),(899,'UGA','Rwanda','F',3.2,220),(900,'UGA','Soga','F',8.2,220),(901,'UGA','Teso','F',6.0,220),(902,'UKR','Belorussian','F',0.3,221),(903,'UKR','Bulgariana','F',0.3,221),(904,'UKR','Hungarian','F',0.3,221),(905,'UKR','Polish','F',0.1,221),(906,'UKR','Romanian','F',0.7,221),(907,'UKR','Russian','F',32.9,221),(908,'UKR','Ukrainian','T',64.7,221),(909,'UMI','English','T',0.0,222),(910,'URY','Spanish','T',95.7,223),(911,'USA','Chinese','F',0.6,224),(912,'USA','English','T',86.2,224),(913,'USA','French','F',0.7,224),(914,'USA','German','F',0.7,224),(915,'USA','Italian','F',0.6,224),(916,'USA','Japanese','F',0.2,224),(917,'USA','Korean','F',0.3,224),(918,'USA','Polish','F',0.3,224),(919,'USA','Portuguese','F',0.2,224),(920,'USA','Spanish','F',7.5,224),(921,'USA','Tagalog','F',0.4,224),(922,'USA','Vietnamese','F',0.2,224),(923,'UZB','Karakalpak','F',2.0,225),(924,'UZB','Kazakh','F',3.8,225),(925,'UZB','Russian','F',10.9,225),(926,'UZB','Tadzhik','F',4.4,225),(927,'UZB','Tatar','F',1.8,225),(928,'UZB','Uzbek','T',72.6,225),(929,'VAT','Italian','T',0.0,226),(930,'VCT','Creole English','F',99.1,227),(931,'VCT','English','T',0.0,227),(932,'VEN','Goajiro','F',0.4,228),(933,'VEN','Spanish','T',96.9,228),(934,'VEN','Warrau','F',0.1,228),(935,'VGB','English','T',0.0,229),(936,'VIR','English','T',81.7,230),(937,'VIR','French','F',2.5,230),(938,'VIR','Spanish','F',13.3,230),(939,'VNM','Chinese','F',1.4,231),(940,'VNM','Khmer','F',1.4,231),(941,'VNM','Man','F',0.7,231),(942,'VNM','Miao','F',0.9,231),(943,'VNM','Muong','F',1.5,231),(944,'VNM','Nung','F',1.1,231),(945,'VNM','Thai','F',1.6,231),(946,'VNM','Tho','F',1.8,231),(947,'VNM','Vietnamese','T',86.8,231),(948,'VUT','Bislama','T',56.6,232),(949,'VUT','English','T',28.3,232),(950,'VUT','French','T',14.2,232),(951,'WLF','Futuna','F',0.0,233),(952,'WLF','Wallis','F',0.0,233),(953,'WSM','English','T',0.6,234),(954,'WSM','Samoan','T',47.5,234),(955,'WSM','Samoan-English','F',52.0,234),(956,'YEM','Arabic','T',99.6,235),(957,'YEM','Soqutri','F',0.0,235),(958,'YUG','Albaniana','F',16.5,236),(959,'YUG','Hungarian','F',3.4,236),(960,'YUG','Macedonian','F',0.5,236),(961,'YUG','Romani','F',1.4,236),(962,'YUG','Serbo-Croatian','T',75.2,236),(963,'YUG','Slovak','F',0.7,236),(964,'ZAF','Afrikaans','T',14.3,237),(965,'ZAF','English','T',8.5,237),(966,'ZAF','Ndebele','F',1.5,237),(967,'ZAF','Northsotho','F',9.1,237),(968,'ZAF','Southsotho','F',7.6,237),(969,'ZAF','Swazi','F',2.5,237),(970,'ZAF','Tsonga','F',4.3,237),(971,'ZAF','Tswana','F',8.1,237),(972,'ZAF','Venda','F',2.2,237),(973,'ZAF','Xhosa','T',17.7,237),(974,'ZAF','Zulu','T',22.7,237),(975,'ZMB','Bemba','F',29.7,238),(976,'ZMB','Chewa','F',5.7,238),(977,'ZMB','Lozi','F',6.4,238),(978,'ZMB','Nsenga','F',4.3,238),(979,'ZMB','Nyanja','F',7.8,238),(980,'ZMB','Tongan','F',11.0,238),(981,'ZWE','English','T',2.2,239),(982,'ZWE','Ndebele','F',16.2,239),(983,'ZWE','Nyanja','F',2.2,239),(984,'ZWE','Shona','F',72.1,239);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-10 10:40:30
