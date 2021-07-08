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

/*Table structure for table `approveinnfo` */

DROP TABLE IF EXISTS `approveinnfo`;

CREATE TABLE `approveinnfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `document` bigint(20) DEFAULT NULL,
  `approver` bigint(20) DEFAULT NULL,
  `approveTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `approveinnfo` */

insert  into `approveinnfo`(`id`,`comment`,`document`,`approver`,`approveTime`) values 
(1,'审批意见',1,1,'2021-07-07 11:30:34'),
(2,'document',2,3,'2021-07-07 11:30:43');

/*Table structure for table `document` */

DROP TABLE IF EXISTS `document`;

CREATE TABLE `document` (
  `title` varchar(20) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `content` text,
  `creator` bigint(20) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `workflow` varchar(10) DEFAULT NULL,
  `processed` varchar(1) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `document` */

insert  into `document`(`title`,`description`,`content`,`creator`,`createtime`,`workflow`,`processed`,`status`) values 
('文档标题','文档描述','文档内容',1,'2021-07-07 10:47:40','未知','0','0'),
('文档标题1','文档描述','文档内容2',2,'2021-07-07 10:48:42','未知','1','1');

/*Table structure for table `fieidinput` */

DROP TABLE IF EXISTS `fieidinput`;

CREATE TABLE `fieidinput` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `template` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `fieidinput` */

insert  into `fieidinput`(`id`,`name`,`template`) values 
(1,'表单1','表单1模板'),
(2,'表单2','表单2模板'),
(3,'表单3','表单3模板');

/*Table structure for table `fieiditem` */

DROP TABLE IF EXISTS `fieiditem`;

CREATE TABLE `fieiditem` (
  `label` varchar(10) NOT NULL,
  `value` text,
  PRIMARY KEY (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fieiditem` */

insert  into `fieiditem`(`label`,`value`) values 
('域项目标签1','域项目值1'),
('域项目标签2','域项目值2\r\n');

/*Table structure for table `fieidtype` */

DROP TABLE IF EXISTS `fieidtype`;

CREATE TABLE `fieidtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `fieidtype` */

insert  into `fieidtype`(`id`,`name`,`type`) values 
(1,'域类型名称1','类型1'),
(2,'域类型名称2','类型2');

/*Table structure for table `flowform` */

DROP TABLE IF EXISTS `flowform`;

CREATE TABLE `flowform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `workflow` bigint(20) DEFAULT NULL,
  `template` text,
  `fieId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `flowform` */

insert  into `flowform`(`id`,`workflow`,`template`,`fieId`) values 
(1,1,'模板1\r\n',1),
(2,2,'模板2\r\n',2),
(3,3,'模板3',3);

/*Table structure for table `formfieid` */

DROP TABLE IF EXISTS `formfieid`;

CREATE TABLE `formfieid` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fieIdLabel` varchar(10) DEFAULT NULL,
  `fieIdname` varchar(10) DEFAULT NULL,
  `fieIdInput` varchar(10) DEFAULT NULL,
  `flowform` bigint(20) DEFAULT NULL,
  `items` text,
  `fieIdtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `formfieid` */

insert  into `formfieid`(`id`,`fieIdLabel`,`fieIdname`,`fieIdInput`,`flowform`,`items`,`fieIdtype`) values 
(1,'表单域标签1','表单域的名称1','表单域的输入形式',1,'表单域集合1','表单域类型'),
(2,'表单域标签2','表单域的名称2','表单域的输入形式',2,'表单域集合2','表单域类型');

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

/*Table structure for table `module` */

DROP TABLE IF EXISTS `module`;

CREATE TABLE `module` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sn` varchar(10) DEFAULT NULL,
  `url` varchar(10) DEFAULT NULL,
  `orderNo` varchar(10) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `chidren` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `module` */

insert  into `module`(`id`,`name`,`sn`,`url`,`orderNo`,`parent`,`chidren`) values 
(1,'模块1','模块SN','模块地址','模块排序号',NULL,2),
(2,'模块名称2','模块SN2','模块地址2','模块排序号',1,3),
(3,'模块3','模块SN3','模块地址3','模块排序号',2,NULL);

/*Table structure for table `organization` */

DROP TABLE IF EXISTS `organization`;

CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `sn` varchar(20) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `chiIdren` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `organization` */

insert  into `organization`(`id`,`name`,`sn`,`description`,`parent`,`chiIdren`) values 
(1,'机构名称','机构SN','机构描述',NULL,2),
(2,'机构名称2','机构SN2','机构描述2',1,3),
(3,'机构名称3','机构SN3','机构描述3',2,NULL);

/*Table structure for table `penson` */

DROP TABLE IF EXISTS `penson`;

CREATE TABLE `penson` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `duty` varchar(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `org` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `penson` */

insert  into `penson`(`id`,`name`,`sex`,`address`,`duty`,`phone`,`description`,`org`) values 
(1,'张三','男','广东佛山','员工','12345678901','无','财务'),
(2,'李四','女','广东广州','员工','12345678912','无','行政'),
(3,'王五','女','广东清远','员工','12332112345','无','人事');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`) values 
(1,'系统管理员'),
(2,'人事部门管理'),
(3,'行政部门管理'),
(4,'业务部门管理'),
(5,'普通员工');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `expireTime` datetime DEFAULT NULL,
  `parson` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`createTime`,`expireTime`,`parson`) values 
(1,'zhangsan','123456','2021-07-07 10:39:40','2022-07-07 10:39:46',1),
(2,'lisi','123456','2021-07-07 10:40:13','2022-07-07 10:40:15',2),
(3,'wangwu','123456','2021-07-07 10:40:30','2022-07-07 10:40:32',3),
(4,'admin','admin','2021-07-07 11:27:05','2029-07-07 11:27:07',NULL),
(5,'xinsix','xinsix','2021-07-07 11:28:06','2022-07-07 11:28:08',4);

/*Table structure for table `usersroles` */

DROP TABLE IF EXISTS `usersroles`;

CREATE TABLE `usersroles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` bigint(20) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `orderNo` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `usersroles` */

insert  into `usersroles`(`id`,`role`,`user`,`orderNo`) values 
(1,2,3,3),
(2,3,2,2),
(3,1,4,1),
(4,5,5,5);

/*Table structure for table `workflow` */

DROP TABLE IF EXISTS `workflow`;

CREATE TABLE `workflow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `processDefinition` text,
  `processImge` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `workflow` */

insert  into `workflow`(`id`,`name`,`processDefinition`,`processImge`) values 
(1,'工作流名称1','流程文件定义','??'),
(2,'工作流名称2','流程文件定义','??');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
