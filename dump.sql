-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: groupdev
-- ------------------------------------------------------
-- Server version	8.0.12

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
INSERT INTO `gender` VALUES ('0','男性'),('1','女性'),('2','その他');
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
  `image_url` varchar(300) NOT NULL,
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
INSERT INTO `image` VALUES ('aragaki_yui','0','0','aragaki_yui/0/0.jpg','1',0),('arimura_kasumi','0','0','arimura_kasumi/0/0.jpg','1',0),('arimura_kasumi','0','1','arimura_kasumi/0/1.jpg','1',0),('ayano_go','0','0','ayano_go/0/0.jpg','1',0),('ayano_go','0','1','ayano_go/0/1.jpg','1',0),('ayase_haruka','0','0','ayase_haruka/0/0.jpg','0',0),('ayase_haruka','0','1','ayase_haruka/0/1.jpg','0',0),('hamabe_minami','0','0','hamabe_minami/0/0.jpg','0',0),('hamabe_minami','0','1','hamabe_minami/0/1.jpg','0',0),('higaside_masahiro','0','0','higaside_masahiro/0/0.jpg','0',0),('higaside_masahiro','0','1','higaside_masahiro/0/1.jpg','0',0),('higaside_masahiro','0','2','higaside_masahiro/0/2.jpg','0',0),('higaside_masahiro','0','3','higaside_masahiro/0/3.jpg','0',0),('isihara_satomi','0','0','ishihara_satomi/0/0.jpg','0',0),('isihara_satomi','0','1','isihara_satomi/0/1.jpg','0',0),('kohinata_humiyo','0','0','kohinata_humiyo/0/0.jpg','0',0),('nagasawa_masami','0','0','nagasawa_masami/0/0.jpg','0',0),('nagasawa_masami','0','1','nagasawa_masami/0/1.jpg','0',0),('oguri_syun','0','0','oguri_syun/0/0.jpg','0',0),('oguri_syun','0','1','oguri_syun/0/1.jpg','0',0),('oguri_syun','1','0','oguri_syun/1/0.jpg','0',0),('oguri_syun','1','1','oguri_syun/1/1.jpg','0',0),('oizumi_yo','0','0','oizumi_yo/0/0.jpg','0',0),('oizumi_yo','1','0','oizumi_yo/1/0.jpg','0',0),('sakai_masato','0','0','sakai_masato/0/0.jpg','0',0),('sakai_masato','0','1','sakai_masato/0/1.jpg','0',0),('sakai_masato','0','2','sakai_masato/0/2.jpg','0',0),('sakurai_hinako','0','0','sakurai_hinako/0/0.jpg','0',0),('satou_jirou','0','0','satou_jirou/0/0.jpg','0',0),('satou_jirou','0','1','satou_jirou/0/1.jpg','0',0),('satou_jirou','1','0','satou_jirou/1/0.jpg','0',0),('satou_jirou','1','1','satou_jirou/1/1.jpg','0',0),('suda_masaki','0','0','suda_masaki/0/0.jpg','0',0),('suda_masaki','0','1','suda_masaki/0/1.jpg','0',0),('tiba_yudai','0','0','tiba_yudai/0/0.jpg','0',0),('yamada_takayuki','0','0','yamada_takayuki/0/0.jpg','0',0),('yamada_takayuki','0','1','yamada_takayuki/0/1.jpg','0',0),('yamada_takayuki','0','2','yamada_takayuki/0/2.jpg','0',0),('yonekura_ryoko','0','0','yonekura_ryoko/0/0.jpg','0',0),('yosioka_riho','0','0','yosioka_riho/0/0.jpg','0',0),('yosioka_riho','0','1','yosioka_riho/0/1.jpg','0',0),('yositaka_yuriko','0','0','yositaka_yuriko/0/0.jpg','0',0);
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
INSERT INTO `member` VALUES ('aragaki_yui','0000','0003','新垣結衣','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('arimura_kasumi','0000','0000','有村架純','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('ayano_go','0000','0001','綾野剛','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('ayase_haruka','0000','0002','綾瀬はるか','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('hamabe_minami','0000','0004','浜辺美波','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('higaside_masahiro','0000','0005','東出昌大','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('isihara_satomi','0000','0006','石原さとみ','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('kohinata_humiyo','0000','0007','小日向文世','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('nagasawa_masami','0000','0008','長澤まさみ','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('oguri_syun','0000','0009','小栗旬','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('oizumi_yo','0000','0010','大泉洋','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('sakai_masato','0000','0011','堺雅人','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('sakurai_hinako','0000','0012','桜井日奈子','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('satou_jirou','0000','0013','佐藤二朗','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('suda_masaki','0000','0014','菅田将暉','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('tiba_yudai','0000','0015','千葉雄大','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('yamada_takayuki','0000','0016','山田孝之','0000-00-00','0','0000-00-00','0','0000/00/00','no','no'),('yonekura_ryoko','0000','0017','米倉涼子','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('yosioka_riho','0000','0018','吉岡里帆','0000-00-00','1','0000-00-00','0','0000/00/00','no','no'),('yositaka_yuriko','0000','0019','吉高由里子','0000-00-00','1','0000-00-00','0','0000/00/00','no','no');
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
INSERT INTO `post` VALUES ('aragaki_yui','0','コードブルー','2018-11-06',0),('arimura_kasumi','0','広告ポスター撮影','2018-11-06',0),('ayano_go','0','映画 亜人','2018-11-06',0),('ayase_haruka','0','南方先生!','2018-11-06',0),('hamabe_minami','0','雑誌撮影','2018-11-06',0),('higaside_masahiro','0','舞台挨拶','2018-11-06',0),('isihara_satomi','0','週刊誌撮影','2018-11-06',0),('kohinata_humiyo','0','コンフィデンスマン','2018-11-06',0),('nagasawa_masami','0','コンフィデンスマン','2018-11-06',0),('oguri_syun','0','CM撮影','2018-11-06',0),('oguri_syun','1','映画撮影','2018-11-06',0),('oizumi_yo','0','ドラマワンシーン','2018-11-06',0),('oizumi_yo','1','眼力!','2018-11-06',0),('sakai_masato','0','リーガルハイ','2018-11-06',0),('sakurai_hinako','0','雑誌撮影','2018-11-06',0),('satou_jirou','0','ドラマ','2018-11-06',0),('satou_jirou','1','CM','2018-11-06',0),('suda_masaki','0','ライブ告知','2018-11-06',0),('tiba_yudai','0','右目がうずく','2018-11-06',0),('yamada_takayuki','0','宣材写真','2018-11-06',0),('yonekura_ryoko','0','ドクターX','2018-11-06',0),('yosioka_riho','0','CM','2018-11-06',0),('yositaka_yuriko','0','酔いすぎちゃった','2018-11-06',0);
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
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
  `id` int(11) DEFAULT NULL,
  `name` int(11) DEFAULT NULL,
  `text` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (0,0,0),(0,0,1),(0,1,2),(1,0,3);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-13  9:21:06
