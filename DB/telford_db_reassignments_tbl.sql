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
-- Table structure for table `reassignments_tbl`
--

DROP TABLE IF EXISTS `reassignments_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reassignments_tbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reAssignedTo` varchar(255) DEFAULT NULL,
  `reAssignedName` varchar(255) DEFAULT NULL,
  `reAssignedTeam` varchar(45) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `reAssignDescription` text DEFAULT NULL,
  `analysis_tbl_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_reAssignments_tbl_analysis_tbl1_idx` (`analysis_tbl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reassignments_tbl`
--

LOCK TABLES `reassignments_tbl` WRITE;
/*!40000 ALTER TABLE `reassignments_tbl` DISABLE KEYS */;
INSERT INTO `reassignments_tbl` VALUES (1,'297','Pasco, Erwin R.','NORMAL','Quality Assurance','This is sample description of reanalysis',5,'2021-06-07 09:19:18','2021-06-14 07:52:57'),(2,'13353','Olaybar, Darling Mae A.','C','Production','WRONG ISSUED BY:',519,'2021-06-15 05:03:24','2021-06-15 13:03:24'),(3,'493','Marquez, Jonalyn H.','C','Production','MACHINE RELATED',3160,'2021-07-12 06:13:21','2021-07-12 14:13:21'),(4,'845','Pakingan, Abigail M.','NORMAL','Central Engineering & Training','wrong employee number',3256,'2021-07-13 05:46:51','2021-07-13 13:46:51'),(5,'400','Santiaguel, Arnold C.','NORMAL','Logistics','delivery van hit the genset',3342,'2021-07-14 05:52:09','2021-07-14 13:52:09'),(6,'11373','Cortez, Sharmaine B.','B','Equipment Engineering','CRITICAL JAM',3510,'2021-07-16 00:55:45','2021-07-16 08:55:45'),(7,'12365','Mahilum, Christine G.','B','Production','no jamming found, no missing on endorsement',3512,'2021-07-17 01:41:32','2021-07-17 09:41:32'),(8,'14835','Hilario, Mayette D.','B','QUALITY ASSURANCE','Operator  failed to check document attached on lot',3708,'2021-07-18 01:34:34','2021-07-18 09:34:34'),(9,'14835','Hilario, Mayette D.','B','QUALITY ASSURANCE','Operator  failed to check document attached on lot',3708,'2021-07-18 01:34:57','2021-07-18 09:34:57'),(10,'14835','Hilario, Mayette D.','B','QUALITY ASSURANCE','Operator  failed to check document attached on lot',3708,'2021-07-18 01:35:27','2021-07-18 09:35:27'),(11,'14835','Hilario, Mayette D.','B','QUALITY ASSURANCE','Failed to check documents attached on lot',3708,'2021-07-20 03:46:50','2021-07-20 11:46:50'),(12,'14835','Hilario, Mayette D.','B','QUALITY ASSURANCE','failed to check document\n',3708,'2021-07-20 03:47:26','2021-07-20 11:47:26'),(13,'1251','Romano Jr., Manuel N.','NORMAL','Equipment Engineering','Wrong Issuance',4335,'2021-07-24 16:55:34','2021-07-25 00:55:34'),(14,'1104','Mendoza, Nikki N.','C','Equipment Engineering','4 MISSING UNIT',4332,'2021-07-24 23:57:44','2021-07-25 07:57:44'),(15,'542','Pascua, Mark Ryan C.','B','Equipment Engineering','Correction of Department to be issued (CE to EE instead)\nHelp to repair and answer QDN',4578,'2021-07-28 00:59:35','2021-07-28 08:59:35'),(16,'542','Pascua, Mark Ryan C.','B','Equipment Engineering','Correction of Department to be issued (CE to EE instead)\nHelp to repair and answer QDN',4578,'2021-07-28 01:00:46','2021-07-28 09:00:46'),(17,'959','Quinto, Jose M. III','NORMAL','Process Engineering','n/a',5131,'2021-08-02 00:08:56','2021-08-02 08:08:56'),(18,'1238','De Torres, Mark Jhun E.','C','Process Engineering','DONE MARK VERIFICATION\n',5173,'2021-08-02 05:55:53','2021-08-02 13:55:53'),(19,'958','de Sosa, Emmanuel M.','C','Equipment Engineering','PACKAGE CHIP OUT ESCAPED AT CURRENT MACHINE SET UP.',5183,'2021-08-02 08:47:07','2021-08-02 16:47:07'),(20,'30202','Indita, Darwin D.','B','Equipment Engineering','package chipout passed on current machine set up\n',5183,'2021-08-02 09:32:14','2021-08-02 17:32:14'),(21,'1238','De Torres, Mark Jhun E.','C','Process Engineering','MARK PARAMETER CHANGES\n',5300,'2021-08-03 00:50:03','2021-08-03 08:50:03');
/*!40000 ALTER TABLE `reassignments_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02 22:12:12
