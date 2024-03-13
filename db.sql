/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liaoyangyuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liaoyangyuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liaoyangyuan`;

/*Table structure for table `chaungweishenqing` */

DROP TABLE IF EXISTS `chaungweishenqing`;

CREATE TABLE `chaungweishenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangwei_id` int(11) DEFAULT NULL COMMENT '床位',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `chaungweishenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `chaungweishenqing_yesno_text` text COMMENT '申请结果',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='床位申请';

/*Data for the table `chaungweishenqing` */

insert  into `chaungweishenqing`(`id`,`chuangwei_id`,`yonghu_id`,`chaungweishenqing_yesno_types`,`chaungweishenqing_yesno_text`,`update_time`,`create_time`) values (2,2,2,1,NULL,NULL,'2022-04-18 09:33:14'),(3,3,3,2,'123',NULL,'2022-04-18 09:33:14');

/*Table structure for table `chuangwei` */

DROP TABLE IF EXISTS `chuangwei`;

CREATE TABLE `chuangwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chuangwei_name` varchar(200) DEFAULT NULL COMMENT '床位编号 Search111',
  `chuangwei_address` varchar(200) DEFAULT NULL COMMENT '房间地址',
  `chuangwei_types` int(11) DEFAULT NULL COMMENT '床位状态 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='床位信息';

/*Data for the table `chuangwei` */

insert  into `chuangwei`(`id`,`chuangwei_name`,`chuangwei_address`,`chuangwei_types`,`insert_time`,`create_time`) values (1,'床位编号1','房间地址1',2,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,'床位编号2','房间地址2',1,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,'床位编号3','房间地址3',2,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,'床位编号4','房间地址4',2,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,'床位编号5','房间地址5',1,'2022-04-18 09:33:14','2022-04-18 09:33:14');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'liliaoxiangmu_types','项目类型',1,'项目类型1',NULL,NULL,'2022-04-18 09:32:28'),(2,'liliaoxiangmu_types','项目类型',2,'项目类型2',NULL,NULL,'2022-04-18 09:32:28'),(3,'liliaoxiangmu_types','项目类型',3,'项目类型3',NULL,NULL,'2022-04-18 09:32:28'),(4,'xiangmushenqing_yesno_types','申请状态',1,'申请中',NULL,NULL,'2022-04-18 09:32:28'),(5,'xiangmushenqing_yesno_types','申请状态',2,'通过',NULL,NULL,'2022-04-18 09:32:28'),(6,'xiangmushenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-04-18 09:32:28'),(7,'chuangwei_types','床位状态',1,'空闲',NULL,NULL,'2022-04-18 09:32:28'),(8,'chuangwei_types','床位状态',2,'使用中',NULL,NULL,'2022-04-18 09:32:28'),(9,'chaungweishenqing_yesno_types','申请状态',1,'申请中',NULL,NULL,'2022-04-18 09:32:28'),(10,'chaungweishenqing_yesno_types','申请状态',2,'通过',NULL,NULL,'2022-04-18 09:32:28'),(11,'chaungweishenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2022-04-18 09:32:28'),(12,'feiyongxinxi_types','缴费类型',1,'缴费类型1',NULL,NULL,'2022-04-18 09:32:29'),(13,'feiyongxinxi_types','缴费类型',2,'缴费类型2',NULL,NULL,'2022-04-18 09:32:29'),(14,'feiyongxinxi_types','缴费类型',3,'缴费类型3',NULL,NULL,'2022-04-18 09:32:29'),(15,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-18 09:32:29'),(16,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-18 09:32:29'),(17,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-18 09:32:29'),(18,'sex_types','性别',1,'男',NULL,NULL,'2022-04-18 09:32:29'),(19,'sex_types','性别',2,'女',NULL,NULL,'2022-04-18 09:32:29'),(20,'xueshengqingjia_yesno_types','审核结果',1,'审核中',NULL,NULL,'2022-04-18 09:32:29'),(21,'xueshengqingjia_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-04-18 09:32:29'),(22,'xueshengqingjia_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-04-18 09:32:29'),(23,'qingjia_types','请假类型',1,'请假类型1',NULL,NULL,'2022-04-18 09:32:29'),(24,'qingjia_types','请假类型',2,'请假类型2',NULL,NULL,'2022-04-18 09:32:29'),(25,'qingjia_types','请假类型',3,'请假类型3',NULL,NULL,'2022-04-18 09:32:29'),(26,'yishengqingjia_yesno_types','审核结果',1,'审核中',NULL,NULL,'2022-04-18 09:32:29'),(27,'yishengqingjia_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-04-18 09:32:29'),(28,'yishengqingjia_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-04-18 09:32:29'),(29,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-18 09:32:29'),(30,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-18 09:32:29');

/*Table structure for table `feiyongxinxi` */

DROP TABLE IF EXISTS `feiyongxinxi`;

CREATE TABLE `feiyongxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `feiyongxinxi_name` varchar(200) DEFAULT NULL COMMENT '缴费项目 Search111',
  `feiyongxinxi_types` int(11) DEFAULT NULL COMMENT '缴费类型 Search111',
  `feiyongxinxi_new_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 ',
  `feiyongxinxi_text` text COMMENT '缴费详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='费用信息';

/*Data for the table `feiyongxinxi` */

insert  into `feiyongxinxi`(`id`,`yonghu_id`,`feiyongxinxi_name`,`feiyongxinxi_types`,`feiyongxinxi_new_money`,`feiyongxinxi_text`,`create_time`) values (1,1,'缴费项目1',2,'53.98','缴费详情1','2022-04-18 09:33:14'),(2,3,'缴费项目2',2,'442.90','缴费详情2','2022-04-18 09:33:14'),(3,3,'缴费项目3',2,'296.48','缴费详情3','2022-04-18 09:33:14'),(4,1,'缴费项目4',1,'477.38','缴费详情4','2022-04-18 09:33:14'),(5,2,'缴费项目5',1,'223.11','缴费详情5','2022-04-18 09:33:14'),(6,2,'123',2,'123.00','123','2022-04-18 10:34:07');

/*Table structure for table `liliaoxiangmu` */

DROP TABLE IF EXISTS `liliaoxiangmu`;

CREATE TABLE `liliaoxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liliaoxiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称 Search111',
  `liliaoxiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型 Search111',
  `liliaoxiangmu_content` text COMMENT '项目介绍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='理疗项目';

/*Data for the table `liliaoxiangmu` */

insert  into `liliaoxiangmu`(`id`,`liliaoxiangmu_name`,`liliaoxiangmu_types`,`liliaoxiangmu_content`,`insert_time`,`create_time`) values (1,'项目名称1',2,'项目介绍1','2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,'项目名称2',1,'项目介绍2','2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,'项目名称3',1,'项目介绍3','2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,'项目名称4',2,'项目介绍4','2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,'项目名称5',2,'项目介绍5','2022-04-18 09:33:14','2022-04-18 09:33:14');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '反馈标题  Search111 ',
  `liuyan_text` text COMMENT '反馈内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '反馈时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='意见反馈';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,'反馈标题1','反馈内容1','2022-04-18 09:33:14','回复信息1','2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,2,'反馈标题2','反馈内容2','2022-04-18 09:33:14','回复信息2','2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,2,'反馈标题3','反馈内容3','2022-04-18 09:33:14','回复信息3','2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,3,'反馈标题4','反馈内容4','2022-04-18 09:33:14','回复信息4','2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,1,'反馈标题5','反馈内容5','2022-04-18 09:33:14','回复信息5','2022-04-18 09:33:14','2022-04-18 09:33:14'),(6,1,'反馈标题6','反馈内容6','2022-04-18 10:25:53','回复23','2022-04-18 10:41:17','2022-04-18 10:25:53');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/liaoyangyuan/upload/news1.jpg','2022-04-18 09:33:14','公告详情1','2022-04-18 09:33:14'),(2,'公告标题2',2,'http://localhost:8080/liaoyangyuan/upload/news2.jpg','2022-04-18 09:33:14','公告详情2','2022-04-18 09:33:14'),(3,'公告标题3',2,'http://localhost:8080/liaoyangyuan/upload/news3.jpg','2022-04-18 09:33:14','公告详情3','2022-04-18 09:33:14'),(4,'公告标题4',1,'http://localhost:8080/liaoyangyuan/upload/news4.jpg','2022-04-18 09:33:14','公告详情4','2022-04-18 09:33:14'),(5,'公告标题5',1,'http://localhost:8080/liaoyangyuan/upload/news5.jpg','2022-04-18 09:33:14','公告详情5','2022-04-18 09:33:14');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','0helrdgw5b741w54qn551zoqmanam96a','2022-04-18 09:19:35','2022-04-18 11:50:04'),(2,1,'a1','yonghu','患者','q85yhm0ore7t6pd2l9lhk1sz57qdbmyc','2022-04-18 09:29:18','2022-04-18 11:25:10'),(3,1,'a1','yisheng','医生','yrdzlwckcwhexf4gawfbs95he8yzvzom','2022-04-18 09:48:27','2022-04-18 10:48:28'),(4,2,'a2','yisheng','医生','g3iidd8ggcvuhup7vw1egz3pl7gfux0l','2022-04-18 10:26:30','2022-04-18 11:26:30');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xiangmushenqing` */

DROP TABLE IF EXISTS `xiangmushenqing`;

CREATE TABLE `xiangmushenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liliaoxiangmu_id` int(11) DEFAULT NULL COMMENT '理疗项目',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmushenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `xiangmushenqing_yesno_text` text COMMENT '申请结果',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='项目申请';

/*Data for the table `xiangmushenqing` */

insert  into `xiangmushenqing`(`id`,`liliaoxiangmu_id`,`yonghu_id`,`xiangmushenqing_yesno_types`,`xiangmushenqing_yesno_text`,`update_time`,`create_time`) values (1,1,1,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,2,3,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,3,1,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,4,1,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,5,2,2,'明天早上10点',NULL,'2022-04-18 09:33:14'),(6,4,1,1,'',NULL,'2022-04-18 09:42:16'),(7,5,1,2,'123',NULL,'2022-04-18 10:25:35');

/*Table structure for table `xueshengqingjia` */

DROP TABLE IF EXISTS `xueshengqingjia`;

CREATE TABLE `xueshengqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xueshengqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假原因 Search111 ',
  `xueshengqingjia_text` text COMMENT '详情',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `xueshengqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `xueshengqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '患者',
  `xueshengqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `xueshengqingjia_yesno_text` text COMMENT '处理结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='患者请假';

/*Data for the table `xueshengqingjia` */

insert  into `xueshengqingjia`(`id`,`xueshengqingjia_name`,`xueshengqingjia_text`,`qingjia_types`,`xueshengqingjia_time`,`xueshengqingjia_number`,`yonghu_id`,`xueshengqingjia_yesno_types`,`xueshengqingjia_yesno_text`,`insert_time`,`create_time`) values (1,'请假原因1','详情1',1,'2022-04-18 09:33:14',496,3,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,'请假原因3','详情3',2,'2022-04-18 09:33:14',52,3,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,'请假原因4','详情4',1,'2022-04-18 09:33:14',439,3,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,'请假原因5','详情5',2,'2022-04-18 09:33:14',4,2,2,'可以','2022-04-18 09:33:14','2022-04-18 09:33:14'),(8,'请假原因6','详情6',2,'2022-04-18 10:26:11',10,1,1,'','2022-04-18 10:26:15','2022-04-18 10:26:15');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) NOT NULL COMMENT '医生工号',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`username`,`password`,`yisheng_uuid_number`,`yisheng_name`,`sex_types`,`yisheng_phone`,`yisheng_photo`,`create_time`) values (1,'a1','123456','165024559409419','医生姓名1',1,'17703786901','http://localhost:8080/liaoyangyuan/upload/yisheng1.jpg','2022-04-18 09:33:14'),(2,'a2','123456','16502455940940','医生姓名2',2,'17703786902','http://localhost:8080/liaoyangyuan/upload/yisheng2.jpg','2022-04-18 09:33:14'),(3,'a3','123456','165024559409414','医生姓名3',1,'17703786903','http://localhost:8080/liaoyangyuan/upload/yisheng3.jpg','2022-04-18 09:33:14');

/*Table structure for table `yishengqingjia` */

DROP TABLE IF EXISTS `yishengqingjia`;

CREATE TABLE `yishengqingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yishengqingjia_name` varchar(200) DEFAULT NULL COMMENT '请假原因 Search111 ',
  `yishengqingjia_text` text COMMENT '详情',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假类型 Search111',
  `yishengqingjia_time` timestamp NULL DEFAULT NULL COMMENT '请假时间',
  `yishengqingjia_number` int(200) DEFAULT NULL COMMENT '请假天数',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `yishengqingjia_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `yishengqingjia_yesno_text` text COMMENT '处理结果',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='医生请假';

/*Data for the table `yishengqingjia` */

insert  into `yishengqingjia`(`id`,`yishengqingjia_name`,`yishengqingjia_text`,`qingjia_types`,`yishengqingjia_time`,`yishengqingjia_number`,`yisheng_id`,`yishengqingjia_yesno_types`,`yishengqingjia_yesno_text`,`insert_time`,`create_time`) values (1,'请假原因1','详情1',2,'2022-04-18 09:33:14',247,1,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,'请假原因2','详情2',1,'2022-04-18 09:33:14',76,2,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(3,'请假原因3','详情3',1,'2022-04-18 09:33:14',468,2,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(4,'请假原因4','详情4',1,'2022-04-18 09:33:14',134,3,1,NULL,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(5,'请假原因5','详情5',1,'2022-04-18 09:33:14',437,3,2,'123','2022-04-18 09:33:14','2022-04-18 09:33:14');

/*Table structure for table `yizhu` */

DROP TABLE IF EXISTS `yizhu`;

CREATE TABLE `yizhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yizhu_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '患者',
  `yizhu_bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `yaodan_text` text COMMENT '药单',
  `yizhu_text` text COMMENT '医嘱',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `yizhu_file` varchar(200) DEFAULT NULL COMMENT '病例附件',
  `yizhu_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int(200) DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='医嘱';

/*Data for the table `yizhu` */

insert  into `yizhu`(`id`,`yizhu_name`,`yonghu_id`,`yizhu_bingqing`,`jianchaxiangmu`,`jianchajieguo`,`yaodan_text`,`yizhu_text`,`zhuyishixiang`,`yizhu_file`,`yizhu_time`,`yisheng_id`,`create_time`) values (1,'标题1',1,'病情1','检查项目1','检查结果1','药单1','医嘱1','注意事项1','http://localhost:8080/liaoyangyuan/upload/file.rar','2022-04-18',1,'2022-04-18 09:33:14'),(2,'标题2',2,'病情2','检查项目2','检查结果2','药单2','医嘱2','注意事项2','http://localhost:8080/liaoyangyuan/upload/file.rar','2022-04-18',2,'2022-04-18 09:33:14'),(3,'标题3',3,'病情3','检查项目3','检查结果3','药单3','医嘱3','注意事项3','http://localhost:8080/liaoyangyuan/upload/file.rar','2022-04-18',3,'2022-04-18 09:33:14');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '患者姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_id` int(11) DEFAULT NULL COMMENT '医生',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='患者';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yisheng_id`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','患者姓名1','http://localhost:8080/liaoyangyuan/upload/yonghu1.jpg',1,'17703786901','1@qq.com',1,1,'2022-04-18 09:33:14','2022-04-18 09:33:14'),(2,'a2','123456','患者姓名2','http://localhost:8080/liaoyangyuan/upload/yonghu2.jpg',2,'17703786902','2@qq.com',2,1,'2022-04-18 10:35:28','2022-04-18 09:33:14'),(3,'a3','123456','患者姓名3','http://localhost:8080/liaoyangyuan/upload/yonghu3.jpg',1,'17703786903','3@qq.com',3,1,'2022-04-18 09:33:14','2022-04-18 09:33:14');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
