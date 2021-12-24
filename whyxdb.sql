-- MySQL dump 10.13  Distrib 5.5.56, for Win64 (AMD64)
--
-- Host: localhost    Database: whyxdb
-- ------------------------------------------------------
-- Server version	5.5.56

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
-- Table structure for table `applyinfo`
--

DROP TABLE IF EXISTS `applyinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applyinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applyinfo`
--

LOCK TABLES `applyinfo` WRITE;
/*!40000 ALTER TABLE `applyinfo` DISABLE KEYS */;
INSERT INTO `applyinfo` VALUES (1,3,0,1),(2,2,0,0),(12,2,1,1);
/*!40000 ALTER TABLE `applyinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articlesmanage`
--

DROP TABLE IF EXISTS `articlesmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articlesmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productname` varchar(20) DEFAULT NULL,
  `applicant` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `applicationtime` datetime DEFAULT NULL,
  `backtime` datetime DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `record_pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articlesmanage`
--

LOCK TABLES `articlesmanage` WRITE;
/*!40000 ALTER TABLE `articlesmanage` DISABLE KEYS */;
INSERT INTO `articlesmanage` VALUES (1,'电脑','3',1,'2021-07-15 11:48:46','2021-07-16 11:48:50','”吃饭“',1),(2,'桌子','3',1,'2021-07-15 11:49:21','2021-07-16 11:49:23','吃饭',NULL);
/*!40000 ALTER TABLE `articlesmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetsmanage`
--

DROP TABLE IF EXISTS `assetsmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetsmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assetname` varchar(10) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `assetmanager` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetsmanage`
--

LOCK TABLES `assetsmanage` WRITE;
/*!40000 ALTER TABLE `assetsmanage` DISABLE KEYS */;
INSERT INTO `assetsmanage` VALUES (1,'桌子','10','401',1),(2,'桌子','10','402',1),(3,'桌子','10','403',1),(4,'椅子','10','401',1),(5,'椅子','10','303',1);
/*!40000 ALTER TABLE `assetsmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creadate` datetime DEFAULT NULL,
  `offdate` datetime DEFAULT NULL,
  `jobib` bigint(20) DEFAULT NULL,
  `attendancetype` int(11) DEFAULT NULL,
  `actual` int(11) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2021-07-15 08:49:15',NULL,2,0,1,22),(2,'2021-07-15 08:49:41',NULL,3,0,1,22),(3,'2021-07-15 08:50:04',NULL,4,0,1,22),(4,NULL,'2021-07-15 18:50:32',2,1,1,22);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carmanage`
--

DROP TABLE IF EXISTS `carmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `licenseplate` varchar(10) DEFAULT NULL,
  `applicant` varchar(20) DEFAULT NULL,
  `applytime` datetime DEFAULT NULL,
  `backtime` datetime DEFAULT NULL,
  `purpose` varchar(30) DEFAULT NULL,
  `mileage` varchar(30) DEFAULT NULL,
  `voucher` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carmanage`
--

LOCK TABLES `carmanage` WRITE;
/*!40000 ALTER TABLE `carmanage` DISABLE KEYS */;
INSERT INTO `carmanage` VALUES (1,'粤A-66666','3','2021-07-15 11:58:33','2021-07-16 11:58:35','吃饭','100','无'),(2,'粤A-55555','2','2021-07-15 11:59:08','2021-07-16 11:59:10','吃饭','10','无'),(18,'粤A-11111','2','2021-07-21 10:22:00','2021-07-22 10:22:00','123','123123','123123'),(21,'粤A-00000','1','2021-07-20 10:59:32','2021-07-20 10:59:49','chifan ','12','321'),(22,'粤A-22222','2','2021-07-20 14:13:21','2021-07-20 20:42:34','123','200000','我就不给你凭证');
/*!40000 ALTER TABLE `carmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'财务部'),(2,'管理部'),(3,'市场部'),(4,'行政部'),(5,'开发部'),(6,'综合部');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailedprocess`
--

DROP TABLE IF EXISTS `detailedprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailedprocess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `procedure_id` bigint(20) DEFAULT NULL,
  `matter` varchar(30) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` decimal(10,1) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `apply_pid` bigint(20) DEFAULT NULL,
  `examine_pid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailedprocess`
--

LOCK TABLES `detailedprocess` WRITE;
/*!40000 ALTER TABLE `detailedprocess` DISABLE KEYS */;
INSERT INTO `detailedprocess` VALUES (1,1,'无','2021-07-15 12:02:12','2021-07-16 12:02:15',24.0,2,2,1),(2,2,'无','2021-07-15 12:03:48','2021-07-16 12:03:50',24.0,2,3,1),(3,3,'wu','2021-07-21 04:59:17','2021-07-22 04:59:20',24.0,2,4,1),(4,1,'无','2021-07-21 00:00:00','2021-07-22 00:00:00',24.0,2,1,1),(5,1,'旅游','2021-07-21 00:00:00','2021-07-26 00:00:00',5.0,1,2,1);
/*!40000 ALTER TABLE `detailedprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infomanage`
--

DROP TABLE IF EXISTS `infomanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infomanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `releasetime` datetime DEFAULT NULL,
  `revisiontime` datetime DEFAULT NULL,
  `release_pid` varchar(20) DEFAULT NULL,
  `modify_pid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infomanage`
--

LOCK TABLES `infomanage` WRITE;
/*!40000 ALTER TABLE `infomanage` DISABLE KEYS */;
INSERT INTO `infomanage` VALUES (2,'今天八点开会','2021-07-15 11:44:26','2021-07-21 08:44:50','2','1'),(5,'明天早上去团建','2021-07-19 21:24:50','2021-07-21 08:45:11','1','1'),(6,'今晚九点开会','2021-07-20 20:44:57','2021-07-20 20:46:11','1','2'),(7,'明天放假啦！！！！！','2021-07-20 21:15:24','2021-07-21 08:45:37','1','1'),(8,'你错了，今天要上课','2021-07-21 10:13:10','2021-07-21 15:31:51','1','1');
/*!40000 ALTER TABLE `infomanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingroom`
--

DROP TABLE IF EXISTS `meetingroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetingroom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(10) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingroom`
--

LOCK TABLES `meetingroom` WRITE;
/*!40000 ALTER TABLE `meetingroom` DISABLE KEYS */;
INSERT INTO `meetingroom` VALUES (1,'会议室1','一楼','无'),(2,'会议室2','二楼','无'),(3,'会议室3','三楼','无');
/*!40000 ALTER TABLE `meetingroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetingroomapply`
--

DROP TABLE IF EXISTS `meetingroomapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetingroomapply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `meetroomid` bigint(20) DEFAULT NULL,
  `begindate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `applyreason` varchar(50) DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetingroomapply`
--

LOCK TABLES `meetingroomapply` WRITE;
/*!40000 ALTER TABLE `meetingroomapply` DISABLE KEYS */;
INSERT INTO `meetingroomapply` VALUES (19,1,'2021-03-01 13:36:00','2021-03-01 04:05:00','111',1,'0'),(20,2,'2021-07-21 15:39:00','2021-07-22 15:39:00','开会一天',2,'1');
/*!40000 ALTER TABLE `meetingroomapply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notecontent` varchar(20) DEFAULT NULL,
  `executiontime` datetime DEFAULT NULL,
  `creationtime` datetime DEFAULT NULL,
  `revisiontime` datetime DEFAULT NULL,
  `employeeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (1,'今天一切安好','2021-07-21 00:00:00','2021-07-15 11:37:30','2021-07-21 14:48:21',1),(2,'昨天我在公司吃螺蛳粉了','2021-07-10 00:00:00','2021-07-15 11:37:43','2021-07-21 14:47:57',2),(3,'今天偷吃了同事的小饼干','2021-07-18 00:00:00','2021-07-15 11:37:53','2021-07-21 14:47:31',3),(6,'今天打了老板','2021-07-21 00:00:00','2021-07-21 02:07:17','2021-07-21 14:47:06',NULL),(7,'明天放假拉','2021-07-22 00:00:00','2021-07-21 15:28:52',NULL,NULL),(8,'哈哈哈','2021-07-22 00:00:00','2021-07-21 15:29:34',NULL,NULL);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organmanage`
--

DROP TABLE IF EXISTS `organmanage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentid` bigint(20) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  `position` bigint(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organmanage`
--

LOCK TABLES `organmanage` WRITE;
/*!40000 ALTER TABLE `organmanage` DISABLE KEYS */;
INSERT INTO `organmanage` VALUES (1,1,1,1),(2,2,2,2),(3,1,3,3);
/*!40000 ALTER TABLE `organmanage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penson`
--

DROP TABLE IF EXISTS `penson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penson` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `org` bigint(20) DEFAULT NULL,
  `role` bigint(20) DEFAULT NULL,
  `wages` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penson`
--

LOCK TABLES `penson` WRITE;
/*!40000 ALTER TABLE `penson` DISABLE KEYS */;
INSERT INTO `penson` VALUES (1,'超级管理员','admin','admin','0','    中国','11111111111','',NULL,1,4000),(2,'张三','zhangsan','123456','1','广东','22222222222',NULL,1,2,4000),(3,'李四','lisi','123456','0','广西','33333333333',NULL,2,7,4000),(4,'王五','wangwu','123456','1','  湖南','55555555555','                  ',3,7,1000),(5,'王五',NULL,NULL,'1','123123123','11111111111','',5,7,1000),(6,'钟美玲',NULL,NULL,'0',' 佛山华南IT学院','15992097877',' 特别美丽的一位老师',3,5,10);
/*!40000 ALTER TABLE `penson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'员工'),(2,'员工1'),(3,'员工2'),(4,'员工3'),(5,'员工4');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedure`
--

DROP TABLE IF EXISTS `procedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedure`
--

LOCK TABLES `procedure` WRITE;
/*!40000 ALTER TABLE `procedure` DISABLE KEYS */;
INSERT INTO `procedure` VALUES (1,'请假'),(2,'加班'),(3,'出差');
/*!40000 ALTER TABLE `procedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'超级管理员'),(2,'财务部部长'),(3,'行政部部长'),(4,'开发部部长'),(5,'市场部部长'),(6,'管理部部长'),(7,'员工');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'总会计师'),(2,'出纳'),(3,'稽核'),(4,'核算'),(6,'前端开发工程师');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `matter` varchar(20) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `creationtime` datetime DEFAULT NULL,
  `revisiontime` datetime DEFAULT NULL,
  `state` int(255) DEFAULT NULL,
  `employeeid` bigint(20) DEFAULT NULL,
  `executeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (9,'今天需要做一个项目PPT','2021-07-21 00:00:00','2021-07-22 00:00:00','2021-07-21 14:35:16',NULL,0,3,1),(10,'明天放假','2021-07-21 00:00:00','2021-07-22 00:00:00','2021-07-21 15:30:33','2021-07-21 15:31:03',1,3,1);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 13:53:03
