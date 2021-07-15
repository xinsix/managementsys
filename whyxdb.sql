/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.5.56 : Database - whyxdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`whyxdb` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `whyxdb`;

/*Table structure for table `applyinfo` */

DROP TABLE IF EXISTS `applyinfo`;

CREATE TABLE `applyinfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `subject` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `applyinfo` */

insert  into `applyinfo`(`id`,`pid`,`state`,`subject`) values 
(1,3,0,1),
(2,2,0,0);

/*Table structure for table `articlesmanage` */

DROP TABLE IF EXISTS `articlesmanage`;

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

/*Data for the table `articlesmanage` */

insert  into `articlesmanage`(`id`,`productname`,`applicant`,`quantity`,`applicationtime`,`backtime`,`purpose`,`record_pid`) values 
(1,'电脑','3',1,'2021-07-15 11:48:46','2021-07-16 11:48:50','”吃饭“',1),
(2,'桌子','3',1,'2021-07-15 11:49:21','2021-07-16 11:49:23','吃饭',NULL);

/*Table structure for table `assetsmanage` */

DROP TABLE IF EXISTS `assetsmanage`;

CREATE TABLE `assetsmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assetname` varchar(10) DEFAULT NULL,
  `quantity` varchar(20) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `assetmanager` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `assetsmanage` */

insert  into `assetsmanage`(`id`,`assetname`,`quantity`,`position`,`assetmanager`) values 
(1,'桌子','10','401',1),
(2,'桌子','10','402',1),
(3,'桌子','10','403',1),
(4,'椅子','10','401',1);

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

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

/*Data for the table `attendance` */

insert  into `attendance`(`id`,`creadate`,`offdate`,`jobib`,`attendancetype`,`actual`,`days`) values 
(1,'2021-07-15 08:49:15',NULL,2,0,1,22),
(2,'2021-07-15 08:49:41',NULL,3,0,1,22),
(3,'2021-07-15 08:50:04',NULL,4,0,1,22),
(4,NULL,'2021-07-15 18:50:32',2,1,1,22);

/*Table structure for table `carmanage` */

DROP TABLE IF EXISTS `carmanage`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `carmanage` */

insert  into `carmanage`(`id`,`licenseplate`,`applicant`,`applytime`,`backtime`,`purpose`,`mileage`,`voucher`) values 
(1,'粤A-66666','3','2021-07-15 11:58:33','2021-07-16 11:58:35','吃饭','100','无'),
(2,'粤A-55555','2','2021-07-15 11:59:08','2021-07-16 11:59:10','吃饭','10','无');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`id`,`department_name`) values 
(1,'财务部'),
(2,'管理部'),
(3,'市场部'),
(4,'行政部'),
(5,'开发部');

/*Table structure for table `detailedprocess` */

DROP TABLE IF EXISTS `detailedprocess`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `detailedprocess` */

insert  into `detailedprocess`(`id`,`procedure_id`,`matter`,`start_time`,`end_time`,`duration`,`state`,`apply_pid`,`examine_pid`) values 
(1,1,'无','2021-07-15 12:02:12','2021-07-16 12:02:15',24.0,0,3,NULL),
(2,1,'无','2021-07-15 12:03:48','2021-07-16 12:03:50',24.0,1,2,NULL);

/*Table structure for table `infomanage` */

DROP TABLE IF EXISTS `infomanage`;

CREATE TABLE `infomanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `releasetime` datetime DEFAULT NULL,
  `revisiontime` datetime DEFAULT NULL,
  `release_pid` varchar(20) DEFAULT NULL,
  `modify_pid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `infomanage` */

insert  into `infomanage`(`id`,`content`,`releasetime`,`revisiontime`,`release_pid`,`modify_pid`) values 
(1,'紧急通知','2021-07-15 11:43:58',NULL,'1',NULL),
(2,'红红火火恍恍惚惚或或','2021-07-15 11:44:26',NULL,'2',NULL);

/*Table structure for table `meetingroom` */

DROP TABLE IF EXISTS `meetingroom`;

CREATE TABLE `meetingroom` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(10) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `meetingroom` */

insert  into `meetingroom`(`id`,`sn`,`position`,`description`) values 
(1,'会议室1','一楼','无'),
(2,'会议室2','二楼','无'),
(3,'会议室3','三楼','无');

/*Table structure for table `meetingroomapply` */

DROP TABLE IF EXISTS `meetingroomapply`;

CREATE TABLE `meetingroomapply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `meetroomid` bigint(20) DEFAULT NULL,
  `begindate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `applyreason` varchar(50) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `meetingroomapply` */

insert  into `meetingroomapply`(`id`,`meetroomid`,`begindate`,`enddate`,`applyreason`,`status`) values 
(1,1,'2021-07-07 10:50:36','2021-07-07 14:50:40','开会','0'),
(2,2,'2021-07-07 10:51:01','2021-07-07 13:51:05','开会','1'),
(3,3,'2021-07-07 10:51:22','2021-07-07 11:51:24','紧急会议','2');

/*Table structure for table `note` */

DROP TABLE IF EXISTS `note`;

CREATE TABLE `note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notecontent` varchar(20) DEFAULT NULL,
  `executiontime` datetime DEFAULT NULL,
  `creationtime` datetime DEFAULT NULL,
  `revisiontime` datetime DEFAULT NULL,
  `employeeid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `note` */

insert  into `note`(`id`,`notecontent`,`executiontime`,`creationtime`,`revisiontime`,`employeeid`) values 
(1,'哈哈哈','2021-07-15 11:37:25','2021-07-15 11:37:30',NULL,1),
(2,'哈哈哈哈','2021-07-15 11:37:41','2021-07-15 11:37:43',NULL,2),
(3,'哈哈哈哈哈','2021-07-15 11:37:50','2021-07-15 11:37:53',NULL,3);

/*Table structure for table `organmanage` */

DROP TABLE IF EXISTS `organmanage`;

CREATE TABLE `organmanage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentid` bigint(20) DEFAULT NULL,
  `postid` bigint(20) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `organmanage` */

insert  into `organmanage`(`id`,`departmentid`,`postid`,`position`) values 
(1,1,1,'实习员工'),
(2,1,2,'普通员工 '),
(3,1,3,'组长');

/*Table structure for table `penson` */

DROP TABLE IF EXISTS `penson`;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `penson` */

insert  into `penson`(`id`,`name`,`username`,`password`,`sex`,`address`,`phone`,`description`,`org`,`role`) values 
(1,'保密','admin','admin','0','中国','11111111111',NULL,NULL,1),
(2,'张三','zhangsan','123456','1','广东','22222222222',NULL,1,1),
(3,'李四','lisi','123456','0','广西','33333333333',NULL,2,7),
(4,'王五','wangwu','123456','1','湖南','55555555555',NULL,3,7);

/*Table structure for table `procedure` */

DROP TABLE IF EXISTS `procedure`;

CREATE TABLE `procedure` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `procedure` */

insert  into `procedure`(`id`,`name`) values 
(1,'请假'),
(2,'加班'),
(3,'出差');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values 
(1,'超级管理员'),
(2,'财务部部长'),
(3,'行政部部长'),
(4,'开发部部长'),
(5,'市场部部长'),
(6,'管理部部长'),
(7,'员工');

/*Table structure for table `station` */

DROP TABLE IF EXISTS `station`;

CREATE TABLE `station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `station_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `station` */

insert  into `station`(`id`,`station_name`) values 
(1,'总会计师'),
(2,'出纳'),
(3,'稽核'),
(4,'核算');

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `task` */

insert  into `task`(`id`,`matter`,`starttime`,`endtime`,`creationtime`,`revisiontime`,`state`,`employeeid`,`executeid`) values 
(1,'哈哈哈哈','2021-07-15 11:38:27','2021-08-07 11:41:33','2021-07-15 11:38:30',NULL,0,3,1),
(2,'哈哈哈哈哈哈','2021-07-15 11:41:47','2021-07-16 11:41:49','2021-07-15 11:41:51',NULL,0,2,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
