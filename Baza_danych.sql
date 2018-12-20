CREATE DATABASE  IF NOT EXISTS `biblioteka` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `biblioteka`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: biblioteka
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `konta`
--

DROP TABLE IF EXISTS `konta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `haslo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konta`
--

LOCK TABLES `konta` WRITE;
/*!40000 ALTER TABLE `konta` DISABLE KEYS */;
INSERT INTO `konta` (`id`, `login`, `haslo`) VALUES (1,'administrator','administrator');
/*!40000 ALTER TABLE `konta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ksiazki`
--

DROP TABLE IF EXISTS `ksiazki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ksiazki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `autor` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `strony` int(11) NOT NULL,
  `przeczytane` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gatunek` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `rok_wydania` int(11) NOT NULL,
  `okladka` varchar(1000) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `uzytkownik` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ksiazki`
--

LOCK TABLES `ksiazki` WRITE;
/*!40000 ALTER TABLE `ksiazki` DISABLE KEYS */;
INSERT INTO `ksiazki` (`id`, `tytul`, `autor`, `strony`, `przeczytane`, `gatunek`, `rok_wydania`, `okladka`, `uzytkownik`) VALUES (1,'Macbeth','Jo Nesbo',345,'Tak','Fantastyka',2010,'https://cdn.bonito.pl/zdjecie/1275345/200/1275345.jpg','guest'),(2,'Przed egzekucja','Helen Prejean',521,'Nie','Przygodowa',2003,'https://cdn.bonito.pl/zdjecie/1610081/200/1610081.jpg','guest'),(3,'Rozmowy dzieciecia wieku','Frederic Beigbeder',631,'Nie','Horror',1995,'https://cdn.bonito.pl/zdjecie/1348264/200/1348264.jpg','guest'),(4,'Po prostu misja','Maz Evans',749,'Tak','Thriller',2011,'https://cdn.bonito.pl/zdjecie/1711365/200/1711365.jpg','guest'),(5,'Nora','Katarzyna Puzynska',489,'Tak','Kryminal',2000,'https://cdn.bonito.pl/zdjecie/1389056/200/1389056.jpg','administrator'),(10,'Kogut domowy','Natasza Socha',458,'Tak','Biografia',2017,'https://cdn.bonito.pl/zdjecie/1410431/200/1410431.jpg','administrator'),(8,'Poldark. Tom 4.','Winston Graham',712,'Nie','Fantastyka',1998,'https://cdn.bonito.pl/zdjecie/1218478/200/1218478.jpg','administrator'),(9,'Koniec smierci','Cixin Liu',509,'Nie','Przygodowa',2018,'https://cdn.bonito.pl/zdjecie/1531978/200/1531978.jpg','administrator');
/*!40000 ALTER TABLE `ksiazki` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'biblioteka'
--

--
-- Dumping routines for database 'biblioteka'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-22 22:43:20
