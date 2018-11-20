--
-- Host: localhost    Database: groupdev
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `follow` (
  `user_id` varchar(20) NOT NULL,
  `target_id` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`,`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES ('aragaki_yui','arimura_kasumi'),('aragaki_yui','sakai_masato'),('aragaki_yui','suda_masaki'),('aragaki_yui','tiba_yudai'),('arimura_kasumi','aragaki_yui'),('arimura_kasumi','ayano_go'),('arimura_kasumi','isihara_satomi'),('ayano_go','hamabe_minami'),('ayano_go','yosioka_riho'),('ayase_haruka','higaside_masahiro'),('ayase_haruka','oguri_syun'),('ayase_haruka','oizumi_yo'),('ayase_haruka','sakurai_hinako'),('ayase_haruka','yonekura_ryoko'),('hamabe_minami','higaside_masahiro'),('higaside_masahiro','isihara_satomi'),('higaside_masahiro','kohinata_humiyo'),('higaside_masahiro','nagasawa_masami'),('higaside_masahiro','oguri_syun'),('higaside_masahiro','oizumi_yo'),('higaside_masahiro','sakai_masato'),('isihara_satomi','satou_jirou'),('isihara_satomi','yamada_takayuki'),('kohinata_humiyo','higaside_masahiro'),('kohinata_humiyo','nagasawa_masami'),('nagasawa_masami','oguri_syun'),('nagasawa_masami','oizumi_yo'),('nagasawa_masami','sakai_masato'),('oguri_syun','sakurai_hinako'),('oguri_syun','suda_masaki'),('oizumi_yo','sakai_masato'),('oizumi_yo','sakurai_hinako'),('sakai_masato','sakurai_hinako'),('sakai_masato','satou_jirou'),('sakai_masato','tiba_yudai'),('sakurai_hinako','satou_jirou'),('sakurai_hinako','suda_masaki'),('satou_jirou','suda_masaki'),('suda_masaki','satou_jirou'),('suda_masaki','tiba_yudai'),('suda_masaki','yamada_takayuki'),('tiba_yudai','yamada_takayuki'),('yamada_takayuki','yonekura_ryoko'),('yamada_takayuki','yosioka_riho'),('yamada_takayuki','yositaka_yuriko'),('yonekura_ryoko','kohinata_humiyo'),('yonekura_ryoko','yosioka_riho'),('yonekura_ryoko','yositaka_yuriko'),('yosioka_riho','arimura_kasumi'),('yosioka_riho','ayano_go'),('yosioka_riho','hamabe_minami'),('yosioka_riho','yositaka_yuriko'),('yositaka_yuriko','aragaki_yui'),('yositaka_yuriko','arimura_kasumi'),('yositaka_yuriko','ayano_go'),('yositaka_yuriko','ayase_haruka'),('yositaka_yuriko','hamabe_minami'),('yositaka_yuriko','higaside_masahiro'),('yositaka_yuriko','isihara_satomi'),('yositaka_yuriko','kohinata_humiyo'),('yositaka_yuriko','nagasawa_masami'),('yositaka_yuriko','oguri_syun'),('yositaka_yuriko','oizumi_yo'),('yositaka_yuriko','sakai_masato'),('yositaka_yuriko','sakurai_hinako'),('yositaka_yuriko','satou_jirou'),('yositaka_yuriko','suda_masaki'),('yositaka_yuriko','tiba_yudai'),('yositaka_yuriko','yamada_takayuki'),('yositaka_yuriko','yonekura_ryoko'),('yositaka_yuriko','yosioka_riho');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gender` (
  `gender_id` varchar(1) NOT NULL,
  `gender_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `good`
--

DROP TABLE IF EXISTS `good`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `good` (
  `user_id` varchar(20) NOT NULL,
  `post_id` varchar(10) NOT NULL,
  `image_id` varchar(10) NOT NULL,
  `good_id` varchar(10) NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`,`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `good`
--

LOCK TABLES `good` WRITE;
/*!40000 ALTER TABLE `good` DISABLE KEYS */;
/*!40000 ALTER TABLE `good` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `image` (
  `user_id` varchar(20) NOT NULL,
  `post_id` varchar(10) NOT NULL,
  `image_id` varchar(1) NOT NULL,
  `image_url` varchar(31) NOT NULL,
  `s_genru_id` varchar(10) NOT NULL,
  `good_count` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`,`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `l_genru`
--

DROP TABLE IF EXISTS `l_genru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `l_genru` (
  `l_genru_id` varchar(10) NOT NULL,
  `l_genru_name` varchar(30) NOT NULL,
  PRIMARY KEY (`l_genru_id`),
  UNIQUE KEY `l_genru_name` (`l_genru_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `l_genru`
--

LOCK TABLES `l_genru` WRITE;
/*!40000 ALTER TABLE `l_genru` DISABLE KEYS */;
/*!40000 ALTER TABLE `l_genru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_genru`
--

DROP TABLE IF EXISTS `m_genru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `m_genru` (
  `m_genru_id` varchar(10) NOT NULL,
  `m_genru_name` varchar(30) NOT NULL,
  `l_genru_id` varchar(10) NOT NULL,
  PRIMARY KEY (`m_genru_id`),
  UNIQUE KEY `m_genru_name` (`m_genru_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_genru`
--

LOCK TABLES `m_genru` WRITE;
/*!40000 ALTER TABLE `m_genru` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_genru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mail_address` varchar(100) NOT NULL,
  `account_name` varchar(200) NOT NULL,
  `birth_day` date NOT NULL,
  `gender_id` char(1) NOT NULL,
  `last_login` date DEFAULT NULL,
  `ip_address` varchar(17) DEFAULT NULL,
  `register_day` varchar(50) NOT NULL,
  `profile` varchar(800) DEFAULT NULL,
  `profile_image` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `mail_address` (`mail_address`),
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('ringoame','c8d041acc8ae40477dc22560ee9bd365','rin.oosima.09.07.02@gmail.com','菅田将暉','1997-07-02','0',NULL,NULL,'2018/8/21 18:18:39',NULL,NULL),('tomotin1112','898c0868a13cb045b425a7d6eab0a230','tomomi@tomotinteam8.gunma.jp','ともちん','1997-11-12','0',NULL,NULL,'2018/8/10 23:49:51',NULL,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `post` (
  `user_id` varchar(20) NOT NULL,
  `post_id` varchar(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `bat_count` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ranking` (
  `ranking` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `post_id` varchar(10) NOT NULL,
  `image_id` varchar(10) NOT NULL,
  PRIMARY KEY (`ranking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_genru`
--

DROP TABLE IF EXISTS `s_genru`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `s_genru` (
  `s_genru_id` varchar(10) NOT NULL,
  `s_genru_name` varchar(30) NOT NULL,
  `l_genru_id` varchar(10) NOT NULL,
  `m_genru_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_genru_id`),
  UNIQUE KEY `s_genru_name` (`s_genru_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_genru`
--

LOCK TABLES `s_genru` WRITE;
/*!40000 ALTER TABLE `s_genru` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_genru` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `signup` (
  `mail_address` varchar(100) NOT NULL,
  `checker` char(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`mail_address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('tomotin-keyakizaka46@docomo.ne.jp','qdjdD7YdyagzLigxgzugbYRc505gkUZW6zSQa2SQJZBw4ibl66a9OwyPVzA05g1WsTCv9CKg3rNr1fdr','2018-08-21 13:49:36');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

