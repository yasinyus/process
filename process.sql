/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.44-0ubuntu0.14.04.1 : Database - process
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `blogs` */

CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blogs` */

insert  into `blogs`(`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created`,`updated`,`deleted`) values (1,0,'Hello World','Hang the','Yar Meta Description','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','1','2018-10-04 09:55:24','2019-01-23 16:01:42',1);
insert  into `blogs`(`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created`,`updated`,`deleted`) values (4,0,'My Page','Excepteura','                                                                                                            <div style=\"text-align: center;\"><span style=\"font-size: 0.9375rem;\">#php echo \'php echo test\' php#</span></div><div class=\"container-fluid text-center bg-grey\">\r\n  <h2>Portfolio223</h2><br>\r\n  <h4>What we have created</h4>\r\n  <div class=\"row text-center\">\r\n    <div class=\"col-sm-4\">\r\n      <div class=\"thumbnail\">\r\n        \r\n        <p><img src=\"https://cdn.pixabay.com/photo/2018/11/29/21/19/hamburg-3846525_960_720.jpg\" style=\"width: 100%;\"><strong><br></strong></p><p><strong>Paris</strong></p>\r\n        <p>Yes, we built Paris</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"col-sm-4\">\r\n      <div class=\"thumbnail\">\r\n        \r\n        <p><img style=\"width: 100%;\" src=\"https://image.shutterstock.com/image-photo/unesco-world-cultural-heritage-speicherstadt-450w-1242947317.jpg\"><strong><br></strong></p><p><strong>New York</strong></p>\r\n        <p>We built New York</p>\r\n      </div>\r\n    </div>\r\n    <div class=\"col-sm-4\">\r\n      <div class=\"thumbnail\">\r\n        \r\n        <p><img style=\"width:100%;\" src=\"https://cdn.pixabay.com/photo/2013/05/28/20/30/city-114290_960_720.jpg\"><strong><br></strong></p><p><strong>San Francisco</strong></p>\r\n        <p>Yes, San Fran is ours</p>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>                                                                                                                                                                                                                                                                                                                                  ','uploads/blog/Mar_2019/1551885667.jpg','my-page','Eos12','Cupidatat','1','2019-01-22 04:50:39','2019-01-22 04:50:39',0);
insert  into `blogs`(`id`,`author_id`,`title`,`excerpt`,`body`,`image`,`slug`,`meta_description`,`meta_keywords`,`status`,`created`,`updated`,`deleted`) values (5,0,'nTestasd','nTest','                                                                                                                                                <p>                                nTestnTestnTestnTest</p>                                                                                                                ','uploads/blog/Mar_2019/1551884275.jpg','nTest','nTest','nTest','1','2019-02-07 09:57:57','2019-02-07 09:57:57',0);

/*Table structure for table `brand` */

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `descriptions` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_brand`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `brand` */

insert  into `brand`(`id_brand`,`client_id`,`brand_name`,`descriptions`,`updated`) values (1,1,'ELISHACOY','ELISHACOY','2019-09-08 02:46:39');
insert  into `brand`(`id_brand`,`client_id`,`brand_name`,`descriptions`,`updated`) values (3,2,'Unknowen','not described','2019-09-08 01:53:34');
insert  into `brand`(`id_brand`,`client_id`,`brand_name`,`descriptions`,`updated`) values (4,3,'FLOR DE MAN RGIII','FLOR DE MAN RGIII','2019-09-08 02:46:22');
insert  into `brand`(`id_brand`,`client_id`,`brand_name`,`descriptions`,`updated`) values (6,11,'asdasd','asdasdasd','2019-09-21 10:24:54');

/*Table structure for table `captcha` */

CREATE TABLE `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

/*Data for the table `captcha` */

insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (126,1537646878,'::1','AePcf');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (127,1537646974,'::1','Ydu9B');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (128,1537646989,'::1','Hf6g2');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (129,1537647091,'::1','cBXDx');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (130,1537647185,'::1','mYvZD');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (131,1537647200,'::1','CB7PP');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (132,1537647227,'::1','RDYzq');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (133,1537647379,'::1','k3aMW');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (134,1537647414,'::1','5hrZn');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (135,1537647531,'::1','BGPWV');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (136,1537647636,'::1','B2DNE');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (137,1537647687,'::1','zqvmr');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (138,1537647704,'::1','c3YTf');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (139,1537648822,'::1','45YpQ');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (140,1537648858,'::1','hMBZp');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (141,1537648878,'::1','JXt4Q');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (142,1537648885,'::1','f2n4h');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (143,1537648911,'::1','Q7a9C');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (144,1537648927,'::1','mqda9');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (145,1537648955,'::1','Lu2tz');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (146,1537649338,'::1','9Psp4');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (147,1537649792,'::1','HnG42');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (148,1537649901,'::1','Lqynf');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (149,1537649932,'::1','w5swK');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (150,1537649948,'::1','Gd658');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (151,1537650294,'::1','DTDqx');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (152,1537650335,'::1','SpPYL');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (153,1537650394,'::1','9h8Sa');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (154,1537650463,'::1','kdUSs');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (155,1537650577,'::1','sGRCS');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (156,1537650590,'::1','56US7');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (157,1537650620,'::1','h4Xub');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (158,1537650628,'::1','pyr3q');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (159,1537650659,'::1','HG2VV');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (160,1537650729,'::1','3FQud');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (161,1537650740,'::1','XXYku');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (162,1537650746,'::1','swEhW');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (163,1537650759,'::1','Twmgu');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (164,1537650780,'::1','d34ER');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (165,1537650788,'::1','9SbHH');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (166,1537650802,'::1','n9QSn');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (167,1537650808,'::1','V3nmm');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (168,1537650867,'::1','bkRLC');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (169,1537650901,'::1','zJCBc');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (170,1537650931,'::1','bxdcx');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (171,1537650935,'::1','BwSUF');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (172,1537650937,'::1','ASKGr');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (173,1537650947,'::1','3M9Pq');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (174,1537650990,'::1','EajzK');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (175,1537650996,'::1','6teC7');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (176,1537651121,'::1','yCXCN');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (177,1537651127,'::1','2vJyA');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (178,1537651207,'::1','H3QPg');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (179,1537651218,'::1','TQy9T');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (180,1537651533,'::1','aYrGg');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (181,1537651600,'::1','zdcuW');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (182,1537651616,'::1','uMPXa');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (183,1537651629,'::1','XLTb7');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (184,1537651716,'::1','Q7uNg');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (185,1537651753,'::1','Qq5nZ');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (186,1537651770,'::1','M3Ppz');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (187,1537651788,'::1','enDek');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (188,1537651797,'::1','MTftc');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (189,1537651828,'::1','HwCuW');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (190,1537651852,'::1','WHGkw');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (191,1537651931,'::1','jX72k');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (192,1537651946,'::1','M4egj');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (193,1537651979,'::1','rGf8F');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (194,1537651985,'::1','HKy3u');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (195,1537652044,'::1','csJH8');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (196,1537652071,'::1','LVvQh');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (197,1537652076,'::1','D47mn');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (198,1537652103,'::1','a22c4');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (199,1537652117,'::1','UPNsq');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (200,1537652130,'::1','TY2Lf');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (201,1537652642,'::1','CUqA6');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (202,1537652984,'::1','vf3F2');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (203,1537653047,'::1','xwwLm');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (204,1537653246,'::1','9LJvs');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (205,1537653270,'::1','3fa8A');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (206,1537653283,'::1','zAQPF');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (207,1537653367,'::1','8Rcte');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (208,1537653410,'::1','8KTeg');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (209,1537653422,'::1','pjZ2W');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (210,1537653433,'::1','MqsdZ');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (211,1537653477,'::1','y3ZKV');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (212,1537653926,'::1','Dja4k');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (213,1537653949,'::1','jTbrK');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (214,1537653960,'::1','LYLyX');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (215,1537653988,'::1','SpvBk');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (216,1537654015,'::1','yRLzE');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (217,1537654033,'::1','yBSn3');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (218,1537654179,'::1','p28Yp');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (219,1537654207,'::1','LfDpm');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (220,1537654226,'::1','wuAVD');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (221,1537654284,'::1','XLD72');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (222,1537654296,'::1','gxWCX');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (223,1537654314,'::1','AqYEk');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (224,1537654956,'::1','sGGp6');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (225,1537654971,'::1','dsBZd');
insert  into `captcha`(`captcha_id`,`captcha_time`,`ip_address`,`word`) values (226,1537655388,'::1','rjmVW');

/*Table structure for table `category` */

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf16_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf16_unicode_ci NOT NULL,
  `parent_category` int(11) NOT NULL DEFAULT '-1',
  `price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `flag` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `sort_order` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (1,'Digital Marketing','digital-marketing-1',7,200,'2019-08-10 14:00:52',1,'2019-08-10 09:00:52',NULL,'uploads/category/May_2019/1557814502_14.png','1557814502_14.png',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (2,'Writing & Translation','writing-translation',3,20,'2019-08-10 14:02:03',0,'2019-08-10 09:02:03',NULL,'uploads/category/May_2019/1557814525_14.png','1557814525_14.png',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (3,'Programming & Tech','programming-tech-1',11,20,'2019-06-14 19:25:02',0,'2019-06-14 03:25:02',NULL,'uploads/category/May_2019/1557814547_14.png','1557814547_14.png',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (4,'Business','business',-1,100,'2019-06-17 16:34:49',0,'2019-06-17 12:34:49',NULL,'uploads/category/May_2019/1557814682_14.png','1557814682_14.png',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (6,'Grapics','grapics-1',-1,20,'2019-06-14 19:25:50',1,'2019-06-14 15:25:50',NULL,'uploads/category/Jun_2019/1560509748_14.jpg','1560509748_14.jpg',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (7,'Social Media Marketing','social-media-marketing-1',-1,100,'2019-06-17 16:36:56',0,'2019-06-17 12:36:56',NULL,'uploads/category/Jun_2019/1560515946_14.jpg','1560515946_14.jpg',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (8,'Staff Support','staff-support-1',9,100,'2019-06-14 19:31:05',1,'2019-06-14 15:31:05',NULL,'uploads/category/Jun_2019/1560516364_14.jpg','1560516364_14.jpg',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (9,'Support','support-1',-1,200,'2019-06-14 19:03:00',0,'2019-06-14 03:03:00',NULL,'uploads/category/Jun_2019/1560516409_14.jpg','1560516409_14.jpg',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (10,'Supoort','supoort-1',-1,200,'2019-06-14 19:01:57',1,'2019-06-14 15:01:57',NULL,'uploads/category/Jun_2019/1560516409_14.jpg','1560516409_14.jpg',0);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (11,'Web Development','web-development',-1,500,'2019-06-17 16:34:57',0,'2019-06-17 12:34:57',NULL,'uploads/category/Jun_2019/1560518664_14.png','1560518664_14.png',1);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (12,'Music & Audio','music-audio-1',-1,500,'2019-06-17 16:35:16',0,'2019-06-17 12:35:16',NULL,'uploads/category/Jun_2019/1560519146_14.jpg','1560519146_14.jpg',5);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (13,'Art & Design','art-design-1',-1,200,'2019-06-14 19:51:37',0,'2019-06-14 03:51:37',NULL,'uploads/category/Jun_2019/1560519260_14.jpg','1560519260_14.jpg',10);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (14,'Logo Design','logo-design',13,561,'2019-06-14 19:51:29',0,'2019-06-14 03:51:29',NULL,'uploads/category/Jun_2019/1560520147_14.jpg','1560520147_14.jpg',10);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (15,'Deacon Hardin 100','deacon-hardin-100',0,11,'2019-06-17 16:19:32',1,'2019-06-17 12:19:32',NULL,'uploads/category/Jun_2019/1560766759_17.jpg','1560766759_17.jpg',10);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (16,'yayuz yusuf','yayuz-yusuf',-1,10000,'2019-08-08 05:44:08',0,'2019-08-08 05:44:08',NULL,'uploads/category/Aug_2019/1565235848_08.jpg','1565235848_08.jpg',10);
insert  into `category`(`id`,`name`,`slug`,`parent_category`,`price`,`created`,`deleted`,`updated`,`flag`,`file_path`,`file_name`,`sort_order`) values (17,'okeee sekali','okeee-sekali',16,2000,'2019-08-16 22:21:35',0,'2019-08-16 05:21:35',NULL,'uploads/category/Aug_2019/1565968478_16.jpg','1565968478_16.jpg',10);

/*Table structure for table `ci_sessions` */

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `tbl_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`tbl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=626 DEFAULT CHARSET=latin1;

/*Data for the table `ci_sessions` */

insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('o5lk9ncdcbhsj4qmem87c5l2ff7h4q5p','::1',1551714913,'__ci_last_regenerate|i:1551714913;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:4:\"Site\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2018-09-22 22:28:14\";}referrer|s:85:\"http://localhost/voyager_junior/admin/portfolio?sort=status&dir=asc&limit=20&offset=0\";',190);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('736l7mjhhmgbone8kl41uj7mvhset3b4','::1',1551788588,'__ci_last_regenerate|i:1551788527;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:4:\"Site\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2018-09-22 22:28:14\";}',192);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ndenhhqfenr8k7jtilm092es04jngah5','::1',1551798446,'__ci_last_regenerate|i:1551798241;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:4:\"Site\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2018-09-22 22:28:14\";}referrer|s:80:\"http://localhost/voyager_junior/admin/Pages?sort=title&dir=asc&limit=20&offset=0\";',194);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ajqte0qfqk28a4b08g5kuor0mvka2429','::1',1551864260,'__ci_last_regenerate|i:1551864260;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',195);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('rb6d2chbat20heam0pmlrdcjflv405sr','::1',1551887077,'__ci_last_regenerate|i:1551887013;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:10:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:4:\"Site\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2018-09-22 22:28:14\";}referrer|s:79:\"http://localhost/voyager_junior/admin/blog?sort=title&dir=asc&limit=20&offset=0\";',242);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('rb9tfgglsjr5iu4udi8i9gub5tpea2q1','::1',1562329779,'__ci_last_regenerate|i:1562329776;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',243);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('1vri4gbrecaskf1suensedc43m2ae6k8','::1',1562330097,'__ci_last_regenerate|i:1562330097;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',244);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('el3ig5viat52vi3242uqovr42bd23hbf','::1',1562330105,'__ci_last_regenerate|i:1562330105;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',245);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('puc95326t7hf1hjf3ojg636dpfcuuev2','::1',1562330130,'__ci_last_regenerate|i:1562330130;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',246);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('qalldlu69ajpi58pes99rl8b1krjdj5f','::1',1562330165,'__ci_last_regenerate|i:1562330165;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',247);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('5ijkkur803dc4m5fm4269valnsmpgdhi','::1',1562330229,'__ci_last_regenerate|i:1562330228;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',248);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('t37rthl1dtrgrg6hpgorevbmhh17h08k','::1',1562330234,'__ci_last_regenerate|i:1562330231;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',249);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('b3mlucsegbtme1fhp5kop55romcbug1m','::1',1562330238,'__ci_last_regenerate|i:1562330238;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',250);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('st3pf67sp4q9vi1ua6s3nrfllg87ocol','::1',1562330314,'__ci_last_regenerate|i:1562330314;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',251);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('aq60q9spaiovg4cc965jsl8dp2o7ir74','::1',1562330320,'__ci_last_regenerate|i:1562330315;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',252);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('4o3e2lp0dp2migmcl4j6e4qucgd7tv9r','::1',1562330320,'__ci_last_regenerate|i:1562330320;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',253);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('fj2huvf2d65qcvo89sb20i822ahrpgp8','::1',1562330330,'__ci_last_regenerate|i:1562330329;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',254);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('31q7enveeadsc8g7849t8lhg5al1e1q4','::1',1562330395,'__ci_last_regenerate|i:1562330393;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',255);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ji4ip9hcua1o7443tdnmfjgjt7926ihi','::1',1562330398,'__ci_last_regenerate|i:1562330397;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',256);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('8a053a6b964ebpi9j3bkke6tvbbs8eg1','::1',1562330464,'__ci_last_regenerate|i:1562330460;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',257);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('4ilm8ffku8dcvbjv9mmn4s28149blkel','::1',1562330473,'__ci_last_regenerate|i:1562330471;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',258);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('iga33g4cac63iilfrra63nullt8ofbui','::1',1562330476,'__ci_last_regenerate|i:1562330475;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',259);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('gcosdcg3ismnodd0sdmdcqjq2o0lhq3h','::1',1562330498,'__ci_last_regenerate|i:1562330498;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci/project_manager/admin\";',260);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('g6uflq1e4sr4l1g85oajs0iehmkan2rt','::1',1562340261,'__ci_last_regenerate|i:1562340261;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}referrer|s:97:\"http://localhost/ci/project_manager/admin/category?sort=cat1.sort_order&dir=asc&limit=20&offset=0\";',283);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('bp8u096k5vcv70k72f96vq7tc9d15clm','::1',1562341369,'__ci_last_regenerate|i:1562341344;languages|a:1:{s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@admin.com\";s:9:\"user_type\";s:1:\"1\";s:11:\"profile_img\";s:19:\"admin1556803478.jpg\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2013-01-01 00:00:00\";s:7:\"updated\";s:19:\"2019-05-02 19:24:38\";s:10:\"ip_address\";s:3:\"::1\";}',286);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('6480p9ceb0jd5qk7621glto0aeu4ji4t','::1',1565236219,'__ci_last_regenerate|i:1565235946;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:45:23\";}referrer|s:92:\"http://localhost/ci_brad/admin/users?sort=last_name&dir=asc&limit=20&offset=0&username=buyer\";',289);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ks4a4g563qcjqu7octu624oacug5va9u','::1',1565257903,'__ci_last_regenerate|i:1565257853;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:77:\"http://localhost/ci_brad/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',291);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('65tnndtlaib161fvmi14k5tvcttit4ur','::1',1565333601,'__ci_last_regenerate|i:1565333599;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:41:\"http://localhost/ci_brad/admin/acl/groups\";',292);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ci7q54rfl4la6ikff3321dgklugbj0tm','::1',1565420906,'__ci_last_regenerate|i:1565420906;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:77:\"http://localhost/ci_brad/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',294);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('fk3g0ot768c141jfeui395khlh4tgf6a','::1',1565447909,'__ci_last_regenerate|i:1565447909;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:86:\"http://localhost/ci_brad/admin/category?sort=cat1.sort_order&dir=asc&limit=20&offset=0\";',307);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('35b0v9otisvv3s0d1otra1rhf1imhurh','::1',1565494522,'__ci_last_regenerate|i:1565494459;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:86:\"http://localhost/ci_brad/admin/category?sort=cat1.sort_order&dir=asc&limit=20&offset=0\";',312);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('nalk7jum0god8v6te5t3cm2oln3gmfvb','::1',1565519011,'__ci_last_regenerate|i:1565518791;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:86:\"http://localhost/ci_brad/admin/category?sort=cat1.sort_order&dir=asc&limit=20&offset=0\";',325);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('t5gqrd7k2ftcvlkdbcfe12n3mf3g3oj0','::1',1565537963,'__ci_last_regenerate|i:1565537675;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:86:\"http://localhost/ci_brad/admin/category?sort=cat1.sort_order&dir=asc&limit=20&offset=0\";',330);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('59ckof0mdg53pvffupvnuvvi4g92smtt','::1',1565591256,'__ci_last_regenerate|i:1565591252;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:39:\"http://localhost/ci_brad/admin/category\";',331);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('kfprfme0te3ktiik1n1011ktv1eojic3','::1',1565665609,'__ci_last_regenerate|i:1565665609;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',335);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('b2ent227u7rt3gcnl6lr7ssesdkvu9oo','::1',1565681670,'__ci_last_regenerate|i:1565681668;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:34:\"http://localhost/ci_brad/dashboard\";',337);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('91so06hpkckbtqdpin2ktmglaui3vevk','::1',1565690664,'__ci_last_regenerate|i:1565690664;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:77:\"http://localhost/ci_brad/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";message|s:7:\"Success\";__ci_vars|a:2:{s:7:\"message\";s:3:\"old\";s:6:\"grp_id\";s:3:\"old\";}grp_id|s:2:\"51\";',350);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('j1scq1urt9l93ciogsuc1cmi6o8sfhgs','::1',1565961456,'__ci_last_regenerate|i:1565961454;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',351);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('pkdsr2a3j832sdfbmj7hp0piljc1hg4a','::1',1565978350,'__ci_last_regenerate|i:1565978150;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:14:\"Super Adminsss\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:77:\"http://localhost/ci_brad/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',370);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('6kpmiah88vei8j4p7g0lmg1en49dds2h','::1',1566029053,'__ci_last_regenerate|i:1566029052;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:78:\"http://localhost/ci_brad/admin/servicename?sort=name&dir=asc&limit=20&offset=0\";message|s:8:\"Updated!\";__ci_vars|a:1:{s:7:\"message\";s:3:\"old\";}',418);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('pdre7b0sp5pcr9uarisb944lcm1fjgvf','::1',1566059569,'__ci_last_regenerate|i:1566059568;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:87:\"http://localhost/ci_brad/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',427);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('hnfe1gt3mstqkngvfdocpjgbv89v3oiu','::1',1566088249,'__ci_last_regenerate|i:1566088086;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:87:\"http://localhost/ci_brad/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',432);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('7seo44h0qe35aols4hi0lvv1dlfd990u','::1',1566115690,'__ci_last_regenerate|i:1566115568;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:87:\"http://localhost/ci_brad/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',434);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('euhhabkvuqq0tmp85rbs1ek8p2t0n2ml','::1',1566145504,'__ci_last_regenerate|i:1566145486;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:78:\"http://localhost/ci_brad/admin/distributor?sort=name&dir=asc&limit=20&offset=0\";',446);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('htu2sqnfus0f6i578al96je6rv0au2mv','::1',1566208558,'__ci_last_regenerate|i:1566208546;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:87:\"http://localhost/ci_brad/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',448);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('j216ie0sm13rcjbipmjcs8s5kq0410rv','::1',1566256418,'__ci_last_regenerate|i:1566256418;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',454);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ejdv9tucmc2ka2v0i1qhjtkim2khralb','112.78.143.69',1566265645,'__ci_last_regenerate|i:1566265645;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',460);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('sedlrq977qnh7su3lrk5onug55m0ghbf','112.78.143.69',1566265646,'__ci_last_regenerate|i:1566265646;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',461);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('p63e2nt4ml0sea06e34rd0du4lnvfou7','112.78.143.69',1566265918,'__ci_last_regenerate|i:1566265918;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',465);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('phd3mr24b6s4path0uvefjiquuhp0377','36.83.200.24',1566269245,'__ci_last_regenerate|i:1566269137;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-08-20 01:12:13\";}referrer|s:79:\"http://incopi.com/process/admin/servicename?sort=name&dir=asc&limit=20&offset=0\";',467);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('1lrgfgfj5fn5o11j0qclc1iqa026knte','180.252.216.47',1566292898,'__ci_last_regenerate|i:1566292809;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-08-20 01:12:13\";}referrer|s:88:\"http://incopi.com/process/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',468);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('105gud3g1elqs27ihv64egn6n68jun6e','112.78.143.69',1566433657,'__ci_last_regenerate|i:1566433612;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:78:\"http://incopi.com/process/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',469);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('209lo1jgai45fehfq473qvri65mahfmb','112.78.143.69',1566483517,'__ci_last_regenerate|i:1566483444;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:78:\"http://incopi.com/process/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',470);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ks9cm9r65du9obqdl4p32qhj5b39bamv','112.78.143.69',1566494850,'__ci_last_regenerate|i:1566494734;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:72:\"http://incopi.com/process/admin/status?sort=id&dir=asc&limit=20&offset=0\";',472);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('b824jr0ko0jp7ftirknhodhkk1i7fmib','112.78.143.69',1566517577,'__ci_last_regenerate|i:1566517522;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:37:\"http://incopi.com/process/admin/users\";',473);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ihs4pqabm5r1htfi1fb6dnr1p9luq5hi','180.252.216.47',1566529240,'__ci_last_regenerate|i:1566529157;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-08-20 01:12:13\";}referrer|s:88:\"http://incopi.com/process/admin/process?sort=cat1.process_name&dir=asc&limit=20&offset=0\";',474);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('mlmfpo78pli1kho7mkbfa2b8emv6ip5f','182.0.141.36',1567058684,'__ci_last_regenerate|i:1567058606;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-08-20 01:12:13\";}referrer|s:72:\"http://incopi.com/process/admin/status?sort=id&dir=asc&limit=20&offset=0\";',475);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('v53mkgrd1dbgbvh2nrnl0fi58l9581ef','112.78.143.69',1568048720,'__ci_last_regenerate|i:1568048720;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:79:\"http://incopi.com/process/admin/distributor?sort=name&dir=asc&limit=20&offset=0\";',486);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('25uvq5gqacpjk64fs1p2por37lfdlsq9','112.78.143.69',1568077638,'__ci_last_regenerate|i:1568077627;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:79:\"http://incopi.com/process/admin/distributor?sort=name&dir=asc&limit=20&offset=0\";',487);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('tumemav5aftg60kfcn2o2mmbg2u3mb7r','112.78.143.69',1568088454,'__ci_last_regenerate|i:1568088446;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:79:\"http://incopi.com/process/admin/distributor?sort=name&dir=asc&limit=20&offset=0\";',489);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('0153roi4qcdnr5k4ouds8q2jg8j3gkfu','112.78.143.69',1568107251,'__ci_last_regenerate|i:1568107212;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:93:\"http://incopi.com/process/admin/users?sort=last_name&dir=asc&limit=20&offset=0&username=admin\";',490);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('tv224pqpmci8uuhet61eu8eb4ccu3jqp','125.160.240.151',1568201922,'__ci_last_regenerate|i:1568201866;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:7:\"english\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-08-20 01:12:13\";}referrer|s:72:\"http://incopi.com/process/admin/status?sort=id&dir=asc&limit=20&offset=0\";',491);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('p0qcbb3aqqv3c77ruk8irpv0iopfrljd','112.78.143.69',1568251494,'__ci_last_regenerate|i:1568251494;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:13:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',493);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('3vgnadcr4767q0nt2lucdjvkardo8669','112.78.143.69',1568569611,'__ci_last_regenerate|i:1568569376;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"0\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";s:11:\"profile_img\";s:22:\"yasinyus1565235985.jpg\";}referrer|s:94:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0&mainprocess.client=1\";',507);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('k7tj1gat9fjh5fk87r6dj9aec311qo7l','112.78.143.69',1568596502,'__ci_last_regenerate|i:1568596502;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',527);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('gvq3b2u3el0gfeo0lutnp58rmjuajlfp','112.78.143.69',1568596569,'__ci_last_regenerate|i:1568596569;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',528);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('viq7m7knu6qdmvaqp3hkv9uvvlbsmsvi','125.160.240.151',1568614603,'__ci_last_regenerate|i:1568614567;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-09-15 20:59:45\";s:11:\"profile_img\";N;}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',529);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('8h47qombq81tdlkm2bjrcc9p3g3ar99a','36.84.135.136',1568860382,'__ci_last_regenerate|i:1568860091;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-09-15 20:59:45\";s:11:\"profile_img\";N;}referrer|s:83:\"http://incopi.com/process/admin/product?sort=product_name&dir=asc&limit=20&offset=0\";',533);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('j4c3isdo1jbt765lklr5mfmss62nhbpn','112.78.143.69',1569076868,'__ci_last_regenerate|i:1569076720;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"0\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";s:11:\"profile_img\";s:22:\"yasinyus1565235985.jpg\";}referrer|s:78:\"http://incopi.com/process/admin/users?sort=last_name&dir=asc&limit=20&offset=0\";',534);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('cg1pch93ttbm2qnv9gmpfeqgeh6ji5fa','103.66.197.86',1569125837,'__ci_last_regenerate|i:1569125587;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"0\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";s:11:\"profile_img\";s:22:\"yasinyus1565235985.jpg\";}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',552);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('08ggekneuhnfcte4l7ctv8lu8i2e6l96','36.84.135.136',1569217984,'__ci_last_regenerate|i:1569217975;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',554);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('rrlr671icea03qqb17kbtb4kv5r7sgj5','112.78.143.69',1569246997,'__ci_last_regenerate|i:1569246985;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"0\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";s:11:\"profile_img\";s:22:\"yasinyus1565235985.jpg\";}referrer|s:94:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0&mainprocess.client=2\";',557);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('cmvipua5pcqmrv7n1oghjvs9ct4h0nr2','112.78.143.69',1569643434,'__ci_last_regenerate|i:1569643431;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-09-27 20:29:53\";s:11:\"profile_img\";N;}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',576);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('r0ng1t50vjvq0hsn6j4qr5slgoppu4vq','112.78.143.69',1569810762,'__ci_last_regenerate|i:1569810762;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-09-27 20:29:53\";s:11:\"profile_img\";N;}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',592);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('2s4c9vh6mv0a7147uggi0lq6jkld2and','112.78.143.69',1569973463,'__ci_last_regenerate|i:1569973447;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"23\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:8:\"yasinyus\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"yasin\";s:9:\"last_name\";s:5:\"yusuf\";s:5:\"email\";s:22:\"yasinyusuf89@gmail.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-08 05:45:23\";s:7:\"updated\";s:19:\"2019-08-08 05:46:25\";s:11:\"profile_img\";s:22:\"yasinyus1565235985.jpg\";}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',593);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('kojkhienlg447elakq3nmr436o1mdd0k','112.78.143.69',1569985474,'__ci_last_regenerate|i:1569985474;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',594);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ue3vs4omov5vglfkhk71fp6lgtli235p','112.78.143.69',1569999057,'__ci_last_regenerate|i:1569999057;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";redirect|s:36:\"http://incopi.com/process/admin/main\";',595);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('c7140435slgeidv0h01gah4nnmv9j04m','112.78.143.69',1570246646,'__ci_last_regenerate|i:1570246646;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"24\";s:9:\"user_type\";s:1:\"1\";s:9:\"client_id\";s:1:\"2\";s:8:\"username\";s:5:\"admin\";s:9:\"groupName\";s:11:\"Super Admin\";s:8:\"group_id\";s:1:\"1\";s:10:\"first_name\";s:5:\"admin\";s:9:\"last_name\";s:9:\"useradmin\";s:5:\"email\";s:15:\"admin@admin.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-08-20 01:12:13\";s:7:\"updated\";s:19:\"2019-09-27 20:29:53\";s:11:\"profile_img\";N;}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',612);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('bejpg52f0l2rsujimv3t220kbshv99r2','103.66.197.86',1570495177,'__ci_last_regenerate|i:1570495177;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',615);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('fdgrnh4nfhhu728u6s00mhcfbsdmidhu','103.66.197.86',1570495177,'__ci_last_regenerate|i:1570495177;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',616);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('og2ks733q8q7k66088k11h3ubslks02r','115.178.223.136',1570495271,'__ci_last_regenerate|i:1570495270;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";',617);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('4l0sb06uishcav9bk4q8rkes1elk433i','103.66.197.86',1570498876,'__ci_last_regenerate|i:1570498845;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"25\";s:9:\"user_type\";s:1:\"2\";s:9:\"client_id\";s:1:\"1\";s:8:\"username\";s:5:\"users\";s:9:\"groupName\";s:4:\"User\";s:8:\"group_id\";s:1:\"2\";s:10:\"first_name\";s:5:\"users\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:13:\"user@user.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-09-15 20:01:43\";s:7:\"updated\";s:19:\"2019-09-15 20:56:03\";s:11:\"profile_img\";N;}referrer|s:94:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0&mainprocess.client=1\";',620);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('ohpf4u9oa1fqogl24uo47ng0ihshjfj3','115.178.206.220',1570505554,'__ci_last_regenerate|i:1570505554;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"25\";s:9:\"user_type\";s:1:\"2\";s:9:\"client_id\";s:1:\"1\";s:8:\"username\";s:5:\"users\";s:9:\"groupName\";s:4:\"User\";s:8:\"group_id\";s:1:\"2\";s:10:\"first_name\";s:5:\"users\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:13:\"user@user.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-09-15 20:01:43\";s:7:\"updated\";s:19:\"2019-09-15 20:56:03\";s:11:\"profile_img\";N;}referrer|s:94:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0&mainprocess.client=1\";',622);
insert  into `ci_sessions`(`id`,`ip_address`,`timestamp`,`data`,`tbl_id`) values ('blh1me9asu8blmve4s8bkij1d3nca03s','112.78.143.69',1570583789,'__ci_last_regenerate|i:1570583509;languages|a:2:{s:6:\"bangla\";s:6:\"Bangla\";s:7:\"english\";s:7:\"English\";}language|s:7:\"english\";logged_in|a:15:{s:2:\"id\";s:2:\"25\";s:9:\"user_type\";s:1:\"2\";s:9:\"client_id\";s:1:\"1\";s:8:\"username\";s:5:\"users\";s:9:\"groupName\";s:4:\"User\";s:8:\"group_id\";s:1:\"2\";s:10:\"first_name\";s:5:\"users\";s:9:\"last_name\";s:5:\"admin\";s:5:\"email\";s:13:\"user@user.com\";s:8:\"language\";s:0:\"\";s:8:\"is_admin\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:7:\"created\";s:19:\"2019-09-15 20:01:43\";s:7:\"updated\";s:19:\"2019-09-15 20:56:03\";s:11:\"profile_img\";N;}referrer|s:73:\"http://incopi.com/process/admin/main?sort=Stage&dir=asc&limit=20&offset=0\";',625);

/*Table structure for table `client` */

CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `bank_account` int(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `client` */

insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (1,'PT. Jiwoone','-','-','-','-',0,'-','uploads/client/Aug_2019/1566022594_17.png','1566022594_17.png','2019-09-08 11:11:24');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (2,'Lee & Lee','','','','',0,'','uploads/client/Sep_2019/1567933918_08.png','1567933918_08.png','2019-09-08 11:11:58');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (3,'PT. Woori Super Indonesia','','','','',0,'',NULL,NULL,'2019-09-08 11:14:43');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (4,'PT. Smile','','','','',0,'',NULL,NULL,'2019-09-08 11:15:02');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (5,'PT. Sung San International','','','','',0,'',NULL,NULL,'2019-09-08 11:15:13');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (6,'CV. Wahid Intan','','','','',0,'',NULL,NULL,'2019-09-08 11:15:28');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (7,'PT. Bersama Bangun Usaha','','','','',0,'',NULL,NULL,'2019-09-08 11:15:47');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (8,'PT. Gaya Hidup Niaga','','','','',0,'',NULL,NULL,'2019-09-08 11:15:56');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (9,'PT. David Bintang Jaya(Mr. Han)','','','','',0,'',NULL,NULL,'2019-09-08 11:16:10');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (10,'PT. Nuga Best Soteria','','','','',0,'',NULL,NULL,'2019-09-08 11:16:26');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (11,'PT. Valuein Distribution Indonesia','','','','',0,'',NULL,NULL,'2019-09-08 11:16:37');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (12,'PT. Real Kencana Indonesia','-','-','-','-',0,'PT Smile ??',NULL,NULL,'2019-09-08 11:19:07');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (13,'PT. Indo Asean Trada','','','','',0,'',NULL,NULL,'2019-09-08 11:17:16');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (14,'PT. Olivia Sarana Kreasi','','','','',0,'',NULL,NULL,'2019-09-08 11:17:25');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (15,'PT. Global Shop Channel','','','','',0,'',NULL,NULL,'2019-09-08 11:17:33');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (16,'PT. Lejel International','','','','',0,'',NULL,NULL,'2019-09-08 11:17:42');
insert  into `client`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`bank_account`,`remark`,`file_path`,`file_name`,`updated`) values (17,'PT. Two Win Network','','','','',0,'',NULL,NULL,'2019-09-08 11:17:57');

/*Table structure for table `distributor` */

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `distributor` */

insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (2,'PT. Smile','-','-','-','-','-','uploads/distributor/Aug_2019/1565978151_16.jpg','1565978151_16.jpg','2019-09-08 11:41:16');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (3,'PT. Two Win Network','-','-','-','-','-','uploads/distributor/Aug_2019/1565978185_16.jpg','1565978185_16.jpg','2019-09-08 11:40:30');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (4,'PT. Jiwoone','-','-','-','-','-','uploads/distributor/Aug_2019/1566009929_17.png','1566009929_17.png','2019-09-08 11:40:53');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (5,'PT. Woori Super Indonesia','','','','','',NULL,NULL,'2019-09-08 11:44:12');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (6,'PT. Lejel International','','','','','',NULL,NULL,'2019-09-08 11:44:26');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (7,'PT. Nuga Best Soteria','','','','','',NULL,NULL,'2019-09-08 11:44:44');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (8,'PT. Sung San International','','','','','',NULL,NULL,'2019-09-08 11:44:57');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (9,'CV. Wahid Intan','','','','','',NULL,NULL,'2019-09-08 11:45:06');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (10,'PT. Indo Asean Trada','','','','','',NULL,NULL,'2019-09-08 11:45:15');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (11,'PT. Real Kencana Indonesia','','','','','',NULL,NULL,'2019-09-08 11:45:24');
insert  into `distributor`(`id`,`name`,`contact_person`,`contact_email`,`phone`,`address`,`remark`,`file_path`,`file_name`,`updated`) values (12,'PT. David Bintang Jaya','','','','','',NULL,NULL,'2019-09-08 11:45:38');

/*Table structure for table `emails` */

CREATE TABLE `emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `read` datetime DEFAULT NULL,
  `read_by` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `created` (`created`),
  KEY `read` (`read`),
  KEY `read_by` (`read_by`),
  KEY `email` (`email`(78))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `emails` */

insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (4,'Quon Barber','xotegagy@mailinator.com','Dolorum autem eos est quidem dolor','2018-09-20 15:31:57',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (5,'Noah West','pema@mailinator.com','Id dolores laboriosam necessitatibus in est et et enim doloribus tempor cumque sunt qui exercitation','2018-09-20 15:33:20',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (6,'Claudia Francis','zipolehe@mailinator.net','Optio vitae cupiditate do aperiam aliqua Nesciunt','2018-09-20 15:38:58',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (7,'Wynne Garrett','cakesoxi@mailinator.com','Veniam nemo velit velit saepe nobis quo esse aut velit quibusdam eum quam ut et','2018-09-20 15:40:07',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (8,'Jael Walter','bulu@mailinator.com','Dolore exercitationem quia atque sed obcaecati enim','2018-09-22 23:35:29',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (9,'name','nakib.un@gmail.com','asdasdsaasdasd','2019-03-06 19:58:50',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (10,'name','lukman.nakib@gmail.com','asdsadsadsad','2019-03-06 20:06:17',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (11,'asd','nakib.un@gmail.com','asdasdasdasdsad','2019-03-06 20:06:57',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (12,'asd','asd@s.com','asdsadsadasd','2019-03-06 20:07:20',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (13,'asdasd','asd@s.com','asdsadasdasd','2019-03-06 20:12:04',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (14,'asdsad','rahat392@gmail.com','asdasdsadsad','2019-03-06 20:17:18',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (15,'asdasd','asd@s.com','asdsadasdasd','2019-03-06 20:26:40',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (16,'name','lukman.nakib@gmail.com','asdasdasdasdsad','2019-03-06 20:28:12',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (17,'asdasd','asd@s.com','asdasdasdasd','2019-03-06 20:28:47',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (18,'DJ Sunny','rahat392@gmail.com','asdasdsadsdsd','2019-03-06 20:29:40',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (19,'assasd asd','nakib.un@gmail.com','asdsadsadasd','2019-03-06 20:30:07',NULL,NULL);
insert  into `emails`(`id`,`name`,`email`,`message`,`created`,`read`,`read_by`) values (20,'asd','asd@s.com','asdsadasdsad','2019-03-06 20:30:27',NULL,NULL);

/*Table structure for table `login_attempts` */

CREATE TABLE `login_attempts` (
  `ip` varchar(20) NOT NULL,
  `attempt` datetime NOT NULL,
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login_attempts` */

insert  into `login_attempts`(`ip`,`attempt`) values ('112.78.143.69','2019-10-08 21:06:40');

/*Table structure for table `mainprocess` */

CREATE TABLE `mainprocess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client` varchar(255) DEFAULT NULL,
  `service_type` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `distributor` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `progress_name` varchar(255) DEFAULT NULL,
  `progress_status` varchar(255) DEFAULT NULL,
  `progress_date` date DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `deleted` int(2) DEFAULT '0',
  `updated` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `mainprocess` */

insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (1,'1','2','16','2','3','1','2','2019-08-29','asdasdasd',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (2,'1','2','9','2','1','30','7','2019-09-29','asd',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (3,'1','2','9','2','1','29','4','2019-09-05','qwewqe',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (4,'1','2','9','2','1','14','7','2019-09-10','sad',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (5,'1','2','9','2','1','16','2','2019-09-10','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (6,'1','2','9','2','1','17','2','2019-09-10','sd',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (7,'1','2','9','2','1','18','2','0000-00-00','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (8,'1','2','9','2','1','19','2','0000-00-00','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (9,'1','2','9','2','1','20','2','0000-00-00','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (10,'1','2','9','2','1','21','2','0000-00-00','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (11,'2','2','9','2','1','21','2','0000-00-00','',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (12,'4','6','16','2','4','61','4','2019-09-01','adsad',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (13,'17','2','9','12','1','30','4','2019-09-12','asdasd',0,0);
insert  into `mainprocess`(`id`,`client`,`service_type`,`product`,`distributor`,`brand`,`progress_name`,`progress_status`,`progress_date`,`remark`,`deleted`,`updated`) values (14,'13','13','13','13','13','13','13','2019-09-28','asdasd',0,0);

/*Table structure for table `menu` */

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` text,
  `menu_position` int(11) DEFAULT NULL,
  `menu_style` text,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`menu_id`,`menu_name`,`menu_position`,`menu_style`,`status`) values (1,'Admin',1,NULL,1);
insert  into `menu`(`menu_id`,`menu_name`,`menu_position`,`menu_style`,`status`) values (2,'Category',2,NULL,1);
insert  into `menu`(`menu_id`,`menu_name`,`menu_position`,`menu_style`,`status`) values (17,'Footer Menu',3,NULL,1);

/*Table structure for table `menu_content` */

CREATE TABLE `menu_content` (
  `menu_content_id` int(11) NOT NULL AUTO_INCREMENT,
  `content_type` text,
  `content_id` int(11) DEFAULT NULL,
  `menu_position` int(11) DEFAULT NULL,
  `menu_lavel` varchar(222) DEFAULT NULL,
  `link_url` varchar(250) DEFAULT NULL,
  `slug` text,
  `parents_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`menu_content_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

/*Data for the table `menu_content` */

insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (1,'categories',1,5,'আন্তর্জাতিক','','International',0,1,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (4,'categories',4,14,' প্রযুক্তি','','Technology',0,1,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (9,'categories',17,9,'খেলা','','Sports',0,1,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (11,'categories',1,3,'আন্তর্জাতিক','','International',0,2,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (16,'categories',6,4,'সম্পাদক নির্বাচিত','','Editor-Choice',0,2,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (23,'links',1,4,'SITEMAP','http://demonewspaper.bdtask.com/DemoNewsPaper-v1.5/sitemap.xml',NULL,0,17,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (32,'pages',1,1,'ABOUT US',NULL,'About-us',NULL,17,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (33,'pages',2,2,'PRIVACY POLICY',NULL,'PRIVACY-POLICY',NULL,17,1);
insert  into `menu_content`(`menu_content_id`,`content_type`,`content_id`,`menu_position`,`menu_lavel`,`link_url`,`slug`,`parents_id`,`menu_id`,`status`) values (34,'pages',3,3,'TERMS OF USE',NULL,'TERMS-OF',NULL,17,1);

/*Table structure for table `permission_groups` */

CREATE TABLE `permission_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `permission_groups` */

insert  into `permission_groups`(`id`,`groupName`) values (1,'Super Admin');
insert  into `permission_groups`(`id`,`groupName`) values (2,'User');

/*Table structure for table `permission_map` */

CREATE TABLE `permission_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) NOT NULL,
  `permissionID` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

/*Data for the table `permission_map` */

insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (7,1,71,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (8,1,70,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (9,1,73,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (10,1,77,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (11,1,74,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (12,1,81,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (13,1,83,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (14,1,85,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (15,1,86,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (16,1,82,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (18,3,70,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (19,3,86,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (20,3,85,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (21,2,86,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (22,3,83,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (23,2,83,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (24,1,76,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (25,1,75,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (26,1,78,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (27,1,79,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (29,1,80,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (30,1,87,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (31,1,84,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (32,1,72,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (33,1,88,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (34,2,70,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (37,2,73,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (38,2,74,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (39,2,76,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (40,2,75,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (41,2,85,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (42,51,82,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (43,1,92,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (44,1,91,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (45,1,90,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (46,1,93,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (47,1,94,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (48,3,94,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (49,3,97,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (50,3,96,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (51,3,95,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (52,1,96,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (53,1,95,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (54,1,97,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (55,1,101,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (56,1,100,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (57,1,98,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (58,1,99,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (59,1,105,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (60,1,102,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (61,1,103,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (62,1,104,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (63,1,106,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (64,1,107,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (65,1,108,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (66,1,109,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (67,1,113,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (68,1,112,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (69,1,111,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (70,1,110,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (71,1,115,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (72,1,114,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (73,1,116,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (74,1,117,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (75,2,94,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (76,1,118,1);
insert  into `permission_map`(`id`,`groupID`,`permissionID`,`status`) values (77,1,119,1);

/*Table structure for table `permissions` */

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(200) DEFAULT NULL,
  `key` varchar(100) DEFAULT NULL,
  `module_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (106,'Read','process_view','Process');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (105,'Delete','service_name_delete','Servicename');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (104,'Update','service_name_update','Servicename');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (103,'Read','service_name_view','Servicename');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (102,'Create','service_name_create','Servicename');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (101,'Update','client_update','Client');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (100,'Read','client_view','Client');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (94,'Read','distributor_view','Distributor');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (95,'Edit','distributor_update','Distributor');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (96,'Create','distributor_create','Distributor');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (97,'Delete','distributor_delete','Distributor');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (98,'Create','client_create','Client');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (99,'Delete','client_delete','Client');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (88,'Delete','acl_delete','User Access Control');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (86,'Read','email_test_view','Email Test');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (85,'Read','payment_view','Payment');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (84,'Update','settings_update','Settings');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (83,'Read','settings_view','Settings');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (82,'Update','acl_update','User Access Control');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (81,'Read','acl_view','User Access Control');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (80,'Update','user_update','User');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (79,'Delete','user_delete','User');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (78,'Create','user_create','User');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (77,'Read','user_view','User');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (76,'Update','category_update','Category');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (75,'Delete','category_delete','Category');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (74,'Read','category_view','Category');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (73,'Create','category_create','Category');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (72,'Update','projects_update','Projects');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (87,'Create','acl_create','User Access Control');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (70,'Read','dashboard_view','Admin Dashboard');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (71,'Read','projects_view','Projects');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (107,'Create','process_create','Process');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (108,'Update','process_update','Process');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (109,'Delete','process_delete','Process');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (110,'Read','status_view','Status');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (111,'Update','status_update','Status');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (112,'Create','status_create','Status');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (113,'Delete','status_delete','Status');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (114,'Read','product_view','Product');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (115,'Create','product_create','Product');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (116,'Delete','product_delete','Product');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (117,'Update','product_update','Product');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (118,'Create','mainprocess_create','mainprocess');
insert  into `permissions`(`id`,`permission`,`key`,`module_name`) values (119,'Read','mainprocess_read','Mainprocess');

/*Table structure for table `process` */

CREATE TABLE `process` (
  `id_process` int(11) NOT NULL,
  `service_name_id` int(11) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `process_name` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `deleted` int(2) DEFAULT '0',
  PRIMARY KEY (`id_process`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `process` */

insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (1,3,'02','Initial Invoice and Payment','Initial Review Fee: Rp 500,0000. It will be merged into 1st 50% invoice in case of overseas client','2019-09-07 09:15:34',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (2,3,'01','Guide and Preparation','Guide customer by email','2019-09-07 09:15:44',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (3,3,'03','Prepare Distributor\'s Documents','NIB, NPWP, IU, Director\'s KTP(or Kitas)','2019-09-07 09:16:14',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (4,3,'04','Prepare Product Documents','LOA, CFS, CGMP/ISO22716, Formula, MSDS(Material Safty Data Sheet), Packaging Design etc.','2019-09-07 09:23:10',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (5,3,'05','1st 50% Invoice and Payment','Client pay service fee (50% after deducting initial payment)','2019-09-07 09:24:53',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (6,3,'06','Client pay service fee (50% after deducting initial payment)','Make distributor\'s account in BPOM system','2019-09-07 09:25:23',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (7,3,'07','Apply for Product Permit','Submit all the requred douments to BPOM','2019-09-07 09:25:50',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (8,3,'08','Pay Application Fee','Client pay Rp. 1,500,000 (Government Application Fee)','2019-09-07 09:26:37',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (9,3,'09','Government Review and Evaluation','Evalauted by BPOM (Stage 1~Stage 4)','2019-09-07 09:27:05',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (10,3,'10','Additional Document or Test (Optional)','If BPOM request additional documents, it return back to BPOM stage 2','2019-09-07 09:27:34',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (11,3,'11','Government Approval','Final approval by BPOM director','2019-09-07 09:27:56',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (12,3,'12','Final 50% Invoice and Payment','Client pay remainingg service fee','2019-09-07 09:28:59',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (13,3,'13','Deliver Approval Documents to Client','Deliver BPOM permit to client','2019-09-07 09:29:27',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (14,2,'01','Guide and Preparation','Guide customer by email','2019-09-08 04:49:13',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (15,2,'02','Initial Invoice and Payment','Initial Review Fee: Rp 500,0000. It will be merged into 1st 50% invoice in case of overseas client','2019-09-07 09:32:29',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (16,2,'03','Prepare Distributor\'s Documents','NIB, NPWP, IU, Director\'s KTP(or Kitas)','2019-09-07 09:33:03',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (17,2,'04','Prepare Product Documents','LOA, CFS, GMP/ISO22000,(HACCP), Formula, Health Certificate, Packaging Design etc.','2019-09-07 09:33:32',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (18,2,'05','1st 50% Invoice and Payment','Client pay service fee (50% after deducting initial payment)','2019-09-07 09:34:02',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (19,2,'06','Apply for Distributor Account','Make distributor\'s account in BPOM system','2019-09-07 09:34:24',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (20,2,'07','Pay translation fee','.','2019-09-07 09:34:45',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (21,2,'08','Translate packaging design into Indonesian','.','2019-09-07 09:35:06',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (22,2,'09','Pay Lab Test Fee','500,000 rupiah ~','2019-09-07 09:35:47',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (23,2,'10','Sample test in Lab Indonesia ','.','2019-09-07 09:36:18',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (24,2,'11','Apply for Product Permit','Submit all the requred douments to BPOM','2019-09-07 09:37:15',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (25,2,'12','Pay Application Fee','Client pay Rp. 300,000~1,500,000 (Government Application Fee)','2019-09-07 09:37:38',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (26,2,'13','Government Review and Evaluation','Evalauted by BPOM','2019-09-07 09:38:21',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (27,2,'14','Additional Document or Test (Optional)','If BPOM request additional documents, it returns back to BPOM evaluation stage','2019-09-07 09:38:39',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (28,2,'15','Government Approval','Final approval by BPOM director','2019-09-07 09:39:00',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (29,2,'16','Final 50% Invoice and Payment','Client pay remainingg service fee','2019-09-07 09:39:24',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (30,2,'17','Deliver Approval Documents to Client','Deliver BPOM permit to client','2019-09-07 09:39:46',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (31,4,'01','Guide and Preparation','Guide customer by email','2019-09-07 09:40:25',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (32,4,'02','Initial Invoice and Payment','Initial Review Fee: Rp 500,0000. It will be merged into 1st 50% invoice in case of overseas client','2019-09-07 05:40:03',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (33,4,'03','Prepare Distributor\'s Documents','NIB, NPWP, IU, Director\'s KTP(or Kitas)','2019-09-07 05:40:28',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (34,4,'04','Prepare Product Documents','LOA, CFS, GMP/ISO22000,(HACCP), Formula, Health Certificate, Packaging Design etc.','2019-09-07 05:41:08',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (35,4,'05','1st 50% Invoice and Payment','Client pay service fee (50% after deducting initial payment)','2019-09-07 05:41:28',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (36,4,'06','Apply for Distributor Account','Make distributor\'s account in BPOM system','2019-09-07 05:41:54',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (37,4,'07','Pay Lab Test Fee','500,000 rupiah ~','2019-09-07 05:42:19',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (38,4,'08','Sample test in Lab Indonesia ','.','2019-09-07 05:42:39',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (39,4,'09','Apply for Product Permit','Submit all the requred douments to BPOM','2019-09-07 05:42:56',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (40,4,'10','Pay Application Fee','Client pay Rp.5,000,000(Supplement) or Rp.15,000,000(Traditional Medicine) (Government Application Fee)','2019-09-07 05:43:18',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (41,4,'11','Government Review and Evaluation','Evalauted by BPOM','2019-09-07 05:43:38',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (42,4,'12','Additional Document or Test (Optional)','If BPOM request additional documents, it returns back to BPOM evaluation stage','2019-09-07 05:44:00',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (43,4,'13','Government Approval','Final approval by BPOM director','2019-09-07 05:44:18',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (44,4,'14','Final 50% Invoice and Payment','Client pay remainingg service fee','2019-09-07 05:44:34',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (45,4,'15','Deliver Approval Documents to Client','Deliver BPOM permit to client','2019-09-07 05:44:54',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (46,5,'01','Guide and Preparation','Guide customer by email','2019-09-07 05:45:38',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (47,5,'02','Initial Invoice and Payment','Initial Review Fee: Rp 500,0000. It will be merged into 1st 50% invoice in case of overseas client','2019-09-07 05:45:59',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (48,5,'03','Prepare Distributor\'s Documents','NIB, NPWP, IU, Director\'s KTP(or Kitas)','2019-09-07 05:46:32',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (49,5,'04','Prepare Product Documents','LOA, CFS, ISO9001, Formula, Packaging Design etc.','2019-09-07 05:46:53',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (50,5,'05','1st 50% Invoice and Payment','Client pay service fee (50% after deducting initial payment)','2019-09-07 05:47:14',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (51,5,'06','Apply for Distributor Account','Make distributor\'s account in MENKES system','2019-09-07 05:47:35',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (52,5,'07','Pay Lab Test Fee','1,000,000~3,000,000 rupiah','2019-09-07 05:48:05',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (53,5,'08','Sample test in Lab Indonesia ','.','2019-09-07 05:48:22',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (54,5,'09','Apply for Product Permit','Submit all the requred douments to MENKES','2019-09-07 05:48:39',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (55,5,'10','Pay Application Fee','Client pay Rp.1,000,000~3,000,000 (Government Application Fee)','2019-09-07 05:48:57',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (56,5,'11','Government Review and Evaluation','Evalauted by MENKES','2019-09-07 05:49:20',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (57,5,'12','Additional Document or Test (Optional)','If MENKES request additional documents, it returns back to MENKES evaluation stage','2019-09-07 05:49:43',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (58,5,'13','Government Approval','Final approval by MENKES director','2019-09-07 05:50:02',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (59,5,'14','Final 50% Invoice and Payment','Client pay remainingg service fee','2019-09-07 05:50:22',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (60,5,'15','Deliver Approval Documents to Client','Deliver MENKES permit to client','2019-09-07 05:50:39',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (61,6,'01','Guide and Preparation','Guide customer by email','2019-09-07 05:51:58',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (62,6,'02','Initial Invoice and Payment','Initial Review Fee: Rp 500,0000. It will be merged into 1st 50% invoice in case of overseas client','2019-09-07 05:52:14',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (63,6,'03','Prepare Distributor\'s Documents','NIB, NPWP, IU, Director\'s KTP(or Kitas)','2019-09-07 05:52:33',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (64,6,'04','Prepare Product Documents','LOA, CFS, ISO13485 (GMP), Formula, Packaging Design etc.','2019-09-07 05:52:51',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (65,6,'05','1st 50% Invoice and Payment','Client pay service fee (50% after deducting initial payment)','2019-09-07 05:53:14',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (66,6,'06','Apply for Distributor Account','Make distributor\'s account in MENKES system','2019-09-07 05:53:37',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (67,6,'07','Pay Lab Test Fee','1,000,000~3,000,000 rupiah','2019-09-07 05:54:00',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (68,6,'08','Sample test in Lab Indonesia ','.','2019-09-07 05:54:20',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (69,6,'09','Apply for Product Permit','Submit all the requred douments to MENKES','2019-09-07 05:54:34',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (70,6,'10','Pay Application Fee','Client pay Rp.1,500,000~5,000,000 (Government Application Fee)','2019-09-07 05:54:52',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (71,6,'11','Government Review and Evaluation','Evalauted by MENKES','2019-09-07 05:55:07',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (72,6,'12','Additional Document or Test (Optional)','If MENKES request additional documents, it returns back to MENKES evaluation stage','2019-09-07 05:55:24',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (73,6,'13','Government Approval','Final approval by MENKES director','2019-09-07 05:55:45',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (74,6,'14','Final 50% Invoice and Payment','Client pay remainingg service fee','2019-09-07 05:56:06',0);
insert  into `process`(`id_process`,`service_name_id`,`stage`,`process_name`,`detail`,`updated`,`deleted`) values (75,6,'15','Deliver Approval Documents to Client','Deliver MENKES permit to client','2019-09-07 05:56:23',0);

/*Table structure for table `product` */

CREATE TABLE `product` (
  `id_prod` int(11) NOT NULL AUTO_INCREMENT,
  `id_brand` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (9,3,1,'Korean Red Ginseng Extract All Day','Korean Red Ginseng Extract All Day','2019-09-08 02:45:16');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (10,4,1,'Hair Loss Clinic Shampoo','Hair Loss Clinic Shampoo','2019-09-08 02:47:46');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (11,3,1,'BB All-in-One Cleanser','BB All-in-One Cleanser','2019-09-08 02:48:49');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (12,1,3,'Moist Up Super Hyalurone Ampoule Serum','Moist Up Super Hyalurone Ampoule Serum','2019-09-08 02:49:08');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (13,1,3,'Moist Up Hyalurone Ampoule Toner','Moist Up Hyalurone Ampoule Toner','2019-09-08 02:49:29');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (14,1,3,'Skin Refining Snail Skin Lotion','Skin Refining Snail Skin Lotion','2019-09-08 02:49:47');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (15,1,4,'Skin Refining Snail Skin Cream','Skin Refining Snail Skin Cream','2019-09-08 02:50:07');
insert  into `product`(`id_prod`,`id_brand`,`client_id`,`product_name`,`description`,`updated`) values (16,1,4,'Moist Up Super Hyalurone Cream','Moist Up Super Hyalurone Cream','2019-09-08 02:50:35');

/*Table structure for table `service_name` */

CREATE TABLE `service_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `service_name` */

insert  into `service_name`(`id`,`name`,`description`,`updated`) values (2,'BPOM Food Process','BPOM for Food','2019-08-17 09:24:40');
insert  into `service_name`(`id`,`name`,`description`,`updated`) values (3,'BPOM Cosmetics Process','BPOM for cosmetics','2019-08-17 09:34:37');
insert  into `service_name`(`id`,`name`,`description`,`updated`) values (4,'BPOM Supplement/Traditional Medicine Process','BPOM for Supplement/Traditional Medicine','2019-08-19 07:28:43');
insert  into `service_name`(`id`,`name`,`description`,`updated`) values (5,'MENKES PKRT (Household Goods)','MENKES PKRT (Household Goods)','2019-08-19 07:29:16');
insert  into `service_name`(`id`,`name`,`description`,`updated`) values (6,'MENKES ALKES (Medical Device)','MENKES ALKES (Medical Device)','2019-08-19 07:29:44');

/*Table structure for table `settings` */

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `input_type` enum('input','textarea','radio','dropdown','timezones','file') CHARACTER SET latin1 NOT NULL,
  `options` text COMMENT 'Use for radio and dropdown: key|value on each line',
  `is_numeric` enum('0','1') NOT NULL DEFAULT '0' COMMENT 'forces numeric keypad on mobile devices',
  `show_editor` enum('0','1') NOT NULL DEFAULT '0',
  `input_size` enum('large','medium','small') DEFAULT NULL,
  `translate` enum('0','1') NOT NULL DEFAULT '0',
  `help_text` varchar(256) DEFAULT NULL,
  `validation` varchar(128) NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL,
  `label` varchar(128) NOT NULL,
  `value` text COMMENT 'If translate is 1, just start with your default language',
  `last_update` datetime DEFAULT NULL,
  `updated_by` int(11) unsigned DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'general',
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `settings` */

insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (1,'site_name','input',NULL,'0','0','large','0',NULL,'required|trim|min_length[3]|max_length[128]',10,'Site Name','Process Management','2019-08-17 08:40:06',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (3,'meta_keywords','input',NULL,'0','0','large','0','Comma-seperated list of site keywords','trim',10,'Meta Keywords','Progress Management System for Registration BPOM','2019-08-17 08:40:06',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (4,'meta_description','textarea',NULL,'0','0','large','0','Short description describing your site.','trim',10,'Meta Description','This is the site description from settings','2019-08-17 08:40:06',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (5,'site_email','input',NULL,'0','0','medium','0','Email address all emails will be sent from.','required|trim|valid_email',50,'Site Email','email@yourdomain.com','2019-08-17 08:40:07',23,'contact',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (7,'welcome_message','textarea',NULL,'0','1','large','1','Message to display on home page.','trim',10,'Welcome message','Welcome','2019-08-17 08:40:06',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (8,'contact','input',NULL,'0','0',NULL,'0','Your Contact Info','',50,'Contact Info','','2019-08-17 08:40:07',23,'contact',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (9,'owner_name','input',NULL,'0','0',NULL,'0',NULL,'',10,'Owner Name','Brad Min','2019-08-17 08:40:06',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (10,'owner_mobile','input',NULL,'0','0',NULL,'0','Owner Contact Number','',50,'Contact Number','','2019-08-17 08:40:07',23,'contact',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (11,'facebook','input',NULL,'0','0',NULL,'0','Fb Link','',100,'Facebook','https://www.facebook.com/','2019-08-17 08:40:07',23,'social',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (12,'twitter','input',NULL,'0','0',NULL,'0','Twitter Link','',100,'Twitter ','#','2019-08-17 08:40:07',23,'social',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (13,'instagram','input',NULL,'0','0',NULL,'0','Instagram Link','',100,'Instagram','#','2019-08-17 08:40:07',23,'social',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (14,'address','textarea',NULL,'0','0',NULL,'0',NULL,'',50,'Address','','2019-08-17 08:40:07',23,'contact',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (15,'per_page_limit','input',NULL,'0','0',NULL,'0','per_page_limit','',10,'per_page_limit','20','2019-08-17 08:40:07',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (19,'template','dropdown','default|Default\r\ndefault_2018|2018','0','0',NULL,'0','Website Theme','',10,'Theme','default','2019-08-17 08:40:07',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (20,'logo1','file','','0','0',NULL,'0',NULL,'',5,'Logo','uploads/logo/Aug_2019/logo1.png','2019-08-17 03:51:40',23,'general',0);
insert  into `settings`(`id`,`name`,`input_type`,`options`,`is_numeric`,`show_editor`,`input_size`,`translate`,`help_text`,`validation`,`sort_order`,`label`,`value`,`last_update`,`updated_by`,`type`,`deleted`) values (21,'footer','input','','0','0',NULL,'0','','trim',10,'Website Footer','Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Created <!-- <i class=\"icon-heart color-danger\" aria-hidden=\"true\"></i> --> by <a href=\"http://thedigitalavengers.com/\" target=\"_blank\"> The Digital Avengers </a>','2019-08-17 08:40:07',23,'general',0);

/*Table structure for table `status` */

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `status` */

insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (2,'Under Progress','Still in progress','badge-warning','2019-08-22 07:03:56');
insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (3,'Stop Process','Stop','badge-danger','2019-08-22 07:05:03');
insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (4,'Progress Status','Progress Status','badge-success','2019-08-22 07:06:06');
insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (5,'Finish','Finish','badge-primary','2019-08-22 07:06:35');
insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (6,'N/A','Not available','badge-secondary','2019-08-22 07:07:08');
insert  into `status`(`id`,`status_name`,`description`,`color`,`updated`) values (7,'No Progress','No Progress','badge-light','2019-08-22 07:11:52');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(3) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(256) NOT NULL,
  `user_type` tinyint(2) NOT NULL DEFAULT '1',
  `mobile` varchar(12) NOT NULL,
  `salt` char(128) NOT NULL,
  `is_admin` enum('1','0') NOT NULL DEFAULT '1',
  `language` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `deleted` enum('0','1') NOT NULL DEFAULT '0',
  `validation_code` varchar(50) DEFAULT NULL COMMENT 'Temporary code for opt-in registration',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `online` int(4) NOT NULL DEFAULT '0',
  `ip_address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`client_id`,`username`,`first_name`,`last_name`,`email`,`user_type`,`mobile`,`salt`,`is_admin`,`language`,`password`,`gender`,`status`,`deleted`,`validation_code`,`created`,`updated`,`profile_img`,`address`,`online`,`ip_address`) values (23,2,'yasinyus','yasin','yusuf','yasinyusuf89@gmail.com',1,'','3ef408c389f9d58390b481e39e06fb81240db3814f458ca7830ffae3920743aa3affa27abb3b4ef07c46ff1dc2af80d6fdeef78cf06eae1864079acef1fcb68d','1','','3a4e68f08a95dbbf85de9696b6c15f8b5700b7d28f182362fb3eea2020e95009e54fb35d3f74f5bd5dafa611f00a2d033e177084509cdc0719f474b779d0fe36','','1','0',NULL,'2019-08-08 05:45:23','2019-08-08 05:46:25','yasinyus1565235985.jpg','',0,'112.78.143.69');
insert  into `users`(`id`,`client_id`,`username`,`first_name`,`last_name`,`email`,`user_type`,`mobile`,`salt`,`is_admin`,`language`,`password`,`gender`,`status`,`deleted`,`validation_code`,`created`,`updated`,`profile_img`,`address`,`online`,`ip_address`) values (24,2,'admin','admin','useradmin','admin@admin.com',1,'','8d46a62ad858d883bbdaf868303b9fcab638c0468ddc4eed3516fb1c2a327971492999ee1078f38c4bc32b4ee659ad471af10bb2659f7cfd6dfa7da43624a9d8','1','','fb0b1fc6863c39a41268c8153087b5aefc390d1c02aaac346337500b4c77cac30e76540bff0381ed1f2ac5131804575d5ac969e1c30198c3122f7e3ddd2c30ba','','1','0',NULL,'2019-08-20 01:12:13','2019-09-27 20:29:53',NULL,'',0,'112.78.143.69');
insert  into `users`(`id`,`client_id`,`username`,`first_name`,`last_name`,`email`,`user_type`,`mobile`,`salt`,`is_admin`,`language`,`password`,`gender`,`status`,`deleted`,`validation_code`,`created`,`updated`,`profile_img`,`address`,`online`,`ip_address`) values (25,1,'users','users','admin','user@user.com',2,'','412d899cb954f3dad02cd427fce95d7bea3fe15bf749dea5152b19450ec76670d48bf24d70fc04af70cf46fcabb079e5240994b83f48112a3fe28f8eda6a4e22','1','','71f5310b6989cb658554728166f3402b50cb755f0e71c684a2c8499867f769d6b36232205506f76668f09ee83fa954355d4727f24a0b33a901032185f827249d','','1','0',NULL,'2019-09-15 20:01:43','2019-09-15 20:56:03',NULL,'',0,'112.78.143.69');
insert  into `users`(`id`,`client_id`,`username`,`first_name`,`last_name`,`email`,`user_type`,`mobile`,`salt`,`is_admin`,`language`,`password`,`gender`,`status`,`deleted`,`validation_code`,`created`,`updated`,`profile_img`,`address`,`online`,`ip_address`) values (26,1,'users1','users','users','users1@user.com',2,'','cd021dd4718b263f36818abb123e026bd341bf04c7653e8b006acf049fcdb6cd4d71ff70be3231c3badb9f9c4b75c91fc87b9a7d9492005b90afc0aae7153f22','1','english','d90a3244a46a215e13eb12e7585477fe4408d0958785c3f39d7b08ac1978214a8359f83dc44a637bad893d214e71f10e385e07bb7de2b1a125bc015174dc8b61','','1','0',NULL,'2019-09-15 20:07:24','2019-09-15 20:07:24',NULL,'',0,'112.78.143.69');
insert  into `users`(`id`,`client_id`,`username`,`first_name`,`last_name`,`email`,`user_type`,`mobile`,`salt`,`is_admin`,`language`,`password`,`gender`,`status`,`deleted`,`validation_code`,`created`,`updated`,`profile_img`,`address`,`online`,`ip_address`) values (29,2,'admin1','admin','useradmin','admin@admin.com',1,'','9dd54280afe45259b6063cc40d84cf64b1843ea24aef8f389e8c733e752ac27ae301068456ecadb1f12984b9214c5808ff84e645064f13717fb9743403a21957','1','','1582285d889ff78e00037557415759cc7945b68e5a338f86386444d26e112001ff7616fc486ce2f4e6046bd8c3245c39d61d4547252f59ef448d40fc5285808a','','1','0',NULL,'2019-08-20 01:12:13','2019-09-15 20:59:45',NULL,'',0,'36.84.135.136');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
