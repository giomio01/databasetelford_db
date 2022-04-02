-- MariaDB dump 10.18  Distrib 10.4.17-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: telford_db
-- ------------------------------------------------------
-- Server version	10.4.17-MariaDB

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
-- Table structure for table `auth_pe`
--

DROP TABLE IF EXISTS `auth_pe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_pe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approvers_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`,`approvers_id`),
  KEY `fk_auth_prod_approvers1_idx` (`approvers_id`),
  CONSTRAINT `fk_auth_prod_approvers10` FOREIGN KEY (`approvers_id`) REFERENCES `approvers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_pe`
--

LOCK TABLES `auth_pe` WRITE;
/*!40000 ALTER TABLE `auth_pe` DISABLE KEYS */;
INSERT INTO `auth_pe` VALUES (1,15,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(2,16,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(3,43,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(4,44,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(5,45,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(6,46,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(7,47,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(8,48,'2021-05-07 16:19:56','2021-06-14 07:52:48'),(15,46,'2021-07-12 10:19:41','2021-07-12 18:19:41'),(16,81,'2021-07-12 10:19:41','2021-07-12 18:19:41'),(17,82,'2021-07-12 10:19:41','2021-07-12 18:19:41'),(18,36,'2021-07-12 10:19:41','2021-07-12 18:19:41'),(19,85,'2021-07-12 10:19:41','2021-07-12 18:19:41');
/*!40000 ALTER TABLE `auth_pe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02 22:12:09
