/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zaixianyingyuyuedupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zaixianyingyuyuedupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zaixianyingyuyuedupingtai`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-22 11:23:42'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-22 11:23:42'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-22 11:23:42'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-22 11:23:42'),(5,'shuji_types','书籍类型',1,'书籍类型1',NULL,NULL,'2023-04-22 11:23:42'),(6,'shuji_types','书籍类型',2,'书籍类型2',NULL,NULL,'2023-04-22 11:23:42'),(7,'shuji_erji_types','二级类型',1,'书籍类型1.1',1,NULL,'2023-04-22 11:23:42'),(8,'shuji_erji_types','二级类型',2,'二级类型1.2',1,NULL,'2023-04-22 11:23:42'),(9,'shuji_erji_types','二级类型',3,'书籍类型2.1',2,NULL,'2023-04-22 11:23:42'),(10,'shuji_erji_types','二级类型',4,'书籍类型2.2',2,NULL,'2023-04-22 11:23:42'),(11,'shuji_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-22 11:23:42'),(12,'zhangjie_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-22 11:23:42'),(13,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-22 11:23:42'),(14,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-22 11:23:42');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-22 11:23:56','公告详情1','2023-04-22 11:23:56'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-22 11:23:56','公告详情2','2023-04-22 11:23:56'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-22 11:23:56','公告详情3','2023-04-22 11:23:56'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-22 11:23:56','公告详情4','2023-04-22 11:23:56'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-22 11:23:56','公告详情5','2023-04-22 11:23:56'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-22 11:23:56','公告详情6','2023-04-22 11:23:56'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-04-22 11:23:56','公告详情7','2023-04-22 11:23:56'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-22 11:23:56','公告详情8','2023-04-22 11:23:56'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-22 11:23:56','公告详情9','2023-04-22 11:23:56'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-22 11:23:56','公告详情10','2023-04-22 11:23:56'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-22 11:23:56','公告详情11','2023-04-22 11:23:56'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-22 11:23:56','公告详情12','2023-04-22 11:23:56'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-22 11:23:56','公告详情13','2023-04-22 11:23:56'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-22 11:23:56','公告详情14','2023-04-22 11:23:56');

/*Table structure for table `shuji` */

DROP TABLE IF EXISTS `shuji`;

CREATE TABLE `shuji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_name` varchar(200) DEFAULT NULL COMMENT '书籍名称  Search111 ',
  `shuji_uuid_number` varchar(200) DEFAULT NULL COMMENT '书籍编号',
  `shuji_photo` varchar(200) DEFAULT NULL COMMENT '书籍封面',
  `shuji_types` int(11) DEFAULT NULL COMMENT '书籍类型 Search111',
  `shuji_erji_types` int(11) DEFAULT NULL COMMENT '二级类型 Search111',
  `shuji_clicknum` int(11) DEFAULT NULL COMMENT '书籍热度',
  `shuji_content` text COMMENT '书籍简介 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shuji_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='书籍';

/*Data for the table `shuji` */

insert  into `shuji`(`id`,`shuji_name`,`shuji_uuid_number`,`shuji_photo`,`shuji_types`,`shuji_erji_types`,`shuji_clicknum`,`shuji_content`,`shangxia_types`,`shuji_delete`,`insert_time`,`create_time`) values (1,'书籍名称1','1682133836967','upload/shuji1.jpg',2,2,344,'书籍简介1',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,'书籍名称2','1682133837001','upload/shuji2.jpg',2,2,486,'书籍简介2',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,'书籍名称3','1682133837045','upload/shuji3.jpg',1,3,178,'书籍简介3',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,'书籍名称4','1682133837034','upload/shuji4.jpg',1,1,125,'书籍简介4',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,'书籍名称5','1682133837049','upload/shuji5.jpg',1,4,40,'书籍简介5',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(6,'书籍名称6','1682133836964','upload/shuji6.jpg',1,1,422,'书籍简介6',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,'书籍名称7','1682133836987','upload/shuji7.jpg',2,3,109,'书籍简介7',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,'书籍名称8','1682133837001','upload/shuji8.jpg',2,3,197,'书籍简介8',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(9,'书籍名称9','1682133837003','upload/shuji9.jpg',1,2,348,'书籍简介9',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,'书籍名称10','1682133837018','upload/shuji10.jpg',2,3,150,'书籍简介10',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,'书籍名称11','1682133837013','upload/shuji11.jpg',2,4,53,'书籍简介11',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(12,'书籍名称12','1682133836980','upload/shuji12.jpg',1,2,87,'书籍简介12',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,'书籍名称13','1682133837031','upload/shuji13.jpg',2,3,259,'书籍简介13',1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,'书籍名称14','1682133837010','upload/shuji14.jpg',1,4,340,'书籍简介14',2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56');

/*Table structure for table `shuji_collection` */

DROP TABLE IF EXISTS `shuji_collection`;

CREATE TABLE `shuji_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='我的书架';

/*Data for the table `shuji_collection` */

insert  into `shuji_collection`(`id`,`shuji_id`,`yonghu_id`,`shuji_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,2,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,3,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,4,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,5,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(6,6,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,7,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,8,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,10,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,11,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(12,12,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,13,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,14,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56');

/*Table structure for table `shuji_liuyan` */

DROP TABLE IF EXISTS `shuji_liuyan`;

CREATE TABLE `shuji_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shuji_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='书籍评论';

/*Data for the table `shuji_liuyan` */

insert  into `shuji_liuyan`(`id`,`shuji_id`,`yonghu_id`,`shuji_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2023-04-22 11:23:56','回复信息1','2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,2,3,'评论内容2','2023-04-22 11:23:56','回复信息2','2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,3,3,'评论内容3','2023-04-22 11:23:56','回复信息3','2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,4,1,'评论内容4','2023-04-22 11:23:56','回复信息4','2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,5,1,'评论内容5','2023-04-22 11:23:56','回复信息5','2023-04-22 11:23:56','2023-04-22 11:23:56'),(6,6,3,'评论内容6','2023-04-22 11:23:56','回复信息6','2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,7,1,'评论内容7','2023-04-22 11:23:56','回复信息7','2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,8,1,'评论内容8','2023-04-22 11:23:56','回复信息8','2023-04-22 11:23:56','2023-04-22 11:23:56'),(9,9,2,'评论内容9','2023-04-22 11:23:56','回复信息9','2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,10,2,'评论内容10','2023-04-22 11:23:56','回复信息10','2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,11,2,'评论内容11','2023-04-22 11:23:56','回复信息11','2023-04-22 11:23:56','2023-04-22 11:23:56'),(12,12,3,'评论内容12','2023-04-22 11:23:56','回复信息12','2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,13,2,'评论内容13','2023-04-22 11:23:56','回复信息13','2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,14,1,'评论内容14','2023-04-22 11:23:56','回复信息14','2023-04-22 11:23:56','2023-04-22 11:23:56');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','vy1s3i71bbdasen38iyq4rmu11493jyq','2023-04-22 11:34:29','2023-04-22 14:26:44'),(2,1,'a1','yonghu','用户','qwf3uq14chy89d9ij86jw7vfvq9mzbes','2023-04-22 12:00:22','2023-04-22 14:25:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-22 11:23:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-22 11:23:56'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-04-22 11:23:56'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-04-22 11:23:56');

/*Table structure for table `youlanjilu` */

DROP TABLE IF EXISTS `youlanjilu`;

CREATE TABLE `youlanjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `youlan_tableid` int(11) DEFAULT NULL COMMENT '游览表id',
  `youlan_tablename` varchar(200) DEFAULT NULL COMMENT '游览表名称 Search111 ',
  `youlan_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111 ',
  `youlan_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '游览时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4401 DEFAULT CHARSET=utf8 COMMENT='游览记录';

/*Data for the table `youlanjilu` */

insert  into `youlanjilu`(`id`,`yonghu_id`,`youlan_tableid`,`youlan_tablename`,`youlan_name`,`youlan_photo`,`insert_time`,`create_time`) values (4396,1,4,'shuji','书籍名称4','upload/shuji4.jpg','2023-04-22 13:24:08','2023-04-22 13:24:08'),(4397,1,14,'shuji','书籍名称14','upload/shuji14.jpg','2023-04-22 13:24:13','2023-04-22 13:24:13'),(4398,1,14,'shuji','书籍名称14','upload/shuji14.jpg','2023-04-22 13:24:23','2023-04-22 13:24:23'),(4399,1,14,'shuji','书籍名称14','upload/shuji14.jpg','2023-04-22 13:24:36','2023-04-22 13:24:36'),(4400,1,14,'shuji','书籍名称14','upload/shuji14.jpg','2023-04-22 13:24:57','2023-04-22 13:24:57');

/*Table structure for table `zhangjie` */

DROP TABLE IF EXISTS `zhangjie`;

CREATE TABLE `zhangjie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shuji_id` int(11) DEFAULT NULL COMMENT '书籍',
  `zhangjie_name` varchar(200) DEFAULT NULL COMMENT '章节标题  Search111 ',
  `zhangjie_clicknum` int(11) DEFAULT NULL COMMENT '章节热度',
  `zhangjie_xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `zhangjie_content` text COMMENT '章节内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='章节';

/*Data for the table `zhangjie` */

insert  into `zhangjie`(`id`,`shuji_id`,`zhangjie_name`,`zhangjie_clicknum`,`zhangjie_xuhao`,`zhangjie_content`,`insert_time`,`create_time`) values (1,14,'章节标题1',56,14,'章节内容1','2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,14,'章节标题2',443,14,'章节内容2','2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,14,'章节标题3',332,14,'章节内容3','2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,14,'章节标题4',452,14,'章节内容4','2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,14,'章节标题5',139,14,'章节内容5','2023-04-22 11:23:56','2023-04-22 11:23:56'),(6,14,'章节标题6',252,14,'章节内容6','2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,14,'章节标题7',355,14,'章节内容7','2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,14,'章节标题8',334,14,'章节内容8','2023-04-22 11:23:56','2023-04-22 11:23:56'),(9,14,'章节标题9',51,14,'章节内容9','2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,14,'章节标题10',347,14,'章节内容10','2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,14,'章节标题11',492,14,'章节内容11','2023-04-22 11:23:56','2023-04-22 11:23:56'),(12,14,'章节标题12',419,14,'章节内容12','2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,14,'章节标题13',335,14,'章节内容13','2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,14,'章节标题14',171,14,'章节内容14','2023-04-22 11:23:56','2023-04-22 11:23:56');

/*Table structure for table `zhangjie_collection` */

DROP TABLE IF EXISTS `zhangjie_collection`;

CREATE TABLE `zhangjie_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhangjie_id` int(11) DEFAULT NULL COMMENT '章节',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhangjie_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='章节收藏';

/*Data for the table `zhangjie_collection` */

insert  into `zhangjie_collection`(`id`,`zhangjie_id`,`yonghu_id`,`zhangjie_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,2,2,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,3,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,4,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,5,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,7,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,8,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(9,9,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,10,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,11,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,13,1,1,'2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,14,3,1,'2023-04-22 11:23:56','2023-04-22 11:23:56');

/*Table structure for table `zhangjie_liuyan` */

DROP TABLE IF EXISTS `zhangjie_liuyan`;

CREATE TABLE `zhangjie_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhangjie_id` int(11) DEFAULT NULL COMMENT '章节',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhangjie_liuyan_text` text COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='章节评论';

/*Data for the table `zhangjie_liuyan` */

insert  into `zhangjie_liuyan`(`id`,`zhangjie_id`,`yonghu_id`,`zhangjie_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2023-04-22 11:23:56','回复信息1','2023-04-22 11:23:56','2023-04-22 11:23:56'),(2,2,2,'评论内容2','2023-04-22 11:23:56','回复信息2','2023-04-22 11:23:56','2023-04-22 11:23:56'),(3,3,3,'评论内容3','2023-04-22 11:23:56','回复信息3','2023-04-22 11:23:56','2023-04-22 11:23:56'),(4,4,2,'评论内容4','2023-04-22 11:23:56','回复信息4','2023-04-22 11:23:56','2023-04-22 11:23:56'),(5,5,3,'评论内容5','2023-04-22 11:23:56','回复信息5','2023-04-22 11:23:56','2023-04-22 11:23:56'),(6,6,1,'评论内容6','2023-04-22 11:23:56','回复信息6','2023-04-22 11:23:56','2023-04-22 11:23:56'),(7,7,2,'评论内容7','2023-04-22 11:23:56','回复信息7','2023-04-22 11:23:56','2023-04-22 11:23:56'),(8,8,1,'评论内容8','2023-04-22 11:23:56','回复信息8','2023-04-22 11:23:56','2023-04-22 11:23:56'),(9,9,1,'评论内容9','2023-04-22 11:23:56','回复信息9','2023-04-22 11:23:56','2023-04-22 11:23:56'),(10,10,1,'评论内容10','2023-04-22 11:23:56','回复信息10','2023-04-22 11:23:56','2023-04-22 11:23:56'),(11,11,1,'评论内容11','2023-04-22 11:23:56','回复信息11','2023-04-22 11:23:56','2023-04-22 11:23:56'),(12,12,2,'评论内容12','2023-04-22 11:23:56','回复信息12','2023-04-22 11:23:56','2023-04-22 11:23:56'),(13,13,2,'评论内容13','2023-04-22 11:23:56','回复信息13','2023-04-22 11:23:56','2023-04-22 11:23:56'),(14,14,1,'评论内容14','2023-04-22 11:23:56','回复信息14','2023-04-22 11:23:56','2023-04-22 11:23:56'),(15,1,1,'1111111','2023-04-22 13:24:31','2222','2023-04-22 13:25:35','2023-04-22 13:24:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
