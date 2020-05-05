/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.19 : Database - kuwan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kuwan` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `kuwan`;

/*Table structure for table `game_tab` */

DROP TABLE IF EXISTS `game_tab`;

CREATE TABLE `game_tab` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `gameName` char(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gameType` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gameImage` char(255) NOT NULL,
  `Type` int NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `game_tab` */

insert  into `game_tab`(`game_id`,`gameName`,`gameType`,`gameImage`,`Type`) values (1,'部落冲突','策略类游戏','image/1.jpg',0),(2,'王者荣耀','策略类游戏','image/2.jpg',0),(3,'刺激战场','射击类游戏','image/3.jpg',0),(4,'我的世界','养成类游戏','image/4.jpg',0),(5,'英雄联盟','策略类游戏','image/5.jpg',0),(6,'生日祝福','其他类','image/6.jpg',1);

/*Table structure for table `msg_tab` */

DROP TABLE IF EXISTS `msg_tab`;

CREATE TABLE `msg_tab` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `msgInfo` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `msg_tab_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tab` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `msg_tab` */

/*Table structure for table `order_tab` */

DROP TABLE IF EXISTS `order_tab`;

CREATE TABLE `order_tab` (
  `orderNum` char(15) NOT NULL,
  `sale_id` int NOT NULL,
  `user_id` int NOT NULL,
  `orderFlag` int NOT NULL,
  `evaluate` char(255) DEFAULT NULL,
  PRIMARY KEY (`orderNum`),
  KEY `sale_id` (`sale_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `order_tab_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sale_tab` (`sale_id`),
  CONSTRAINT `order_tab_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_tab` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_tab` */

insert  into `order_tab`(`orderNum`,`sale_id`,`user_id`,`orderFlag`,`evaluate`) values ('1234567890',1,1,1,'很把那个'),('202004302126291',9,5,1,'小哥哥很棒'),('202005012136872',4,5,1,'小哥哥也很棒'),('987654321',2,1,1,'牛牛');

/*Table structure for table `sale_tab` */

DROP TABLE IF EXISTS `sale_tab`;

CREATE TABLE `sale_tab` (
  `sale_id` int NOT NULL AUTO_INCREMENT,
  `vip_id` int NOT NULL,
  `game_id` int NOT NULL,
  `time` date NOT NULL,
  `price` int NOT NULL,
  `saleFlag` int NOT NULL,
  `saleImage` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gameLevel` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gameNick` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instroduce` char(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `vip_id` (`vip_id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `sale_tab_ibfk_1` FOREIGN KEY (`vip_id`) REFERENCES `vip_tab` (`vip_id`),
  CONSTRAINT `sale_tab_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game_tab` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `sale_tab` */

insert  into `sale_tab`(`sale_id`,`vip_id`,`game_id`,`time`,`price`,`saleFlag`,`saleImage`,`gameLevel`,`gameNick`,`instroduce`) values (1,1,1,'2020-04-15',12,1,'image/u=1588855337,1619856908fm=26gp=0.jpg','青铜','小明','我很厉害'),(2,1,1,'2020-04-14',12,1,'image/u=1430267255,1728692051fm=26gp=0.jpg','青铜','小蓝','我很牛逼'),(4,1,1,'2020-04-09',13,1,'image/u=3594596470,3258599353fm=26gp=0.jpg','青铜','小白','我很吊'),(5,1,1,'2020-04-08',14,0,'image/u=3243476388,997001710fm=26gp=0.jpg','青铜','小黑','我很菜'),(6,1,1,'2020-04-30',22,0,'image/u=1992957658,4292036838fm=26gp=0.jpg','青铜','小红','欢迎来玩'),(7,1,1,'2020-04-14',22,0,'image/u=1992957658,4292036838fm=26gp=0.jpg','青铜','小绿','我很牛'),(8,1,1,'2020-04-16',11,0,'image/u=3766675073,939112508fm=15gp=0.jpg','青铜','小黄','我很厉害'),(9,1,1,'2020-04-17',22,1,'image/u=3766675073,939112508fm=15gp=0.jpg','青铜','小紫','来来来来'),(10,1,1,'2020-04-21',11,0,'image/u=3766675073,939112508fm=15gp=0.jpg','青铜','小青','快啊迪阿敏');

/*Table structure for table `user_tab` */

DROP TABLE IF EXISTS `user_tab`;

CREATE TABLE `user_tab` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` char(9) NOT NULL,
  `password` char(9) NOT NULL,
  `birthday` date NOT NULL,
  `sex` char(3) NOT NULL,
  `userImage` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `money` int NOT NULL,
  `vipFlag` int NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `user_tab` */

insert  into `user_tab`(`user_id`,`name`,`password`,`birthday`,`sex`,`userImage`,`money`,`vipFlag`) values (1,'admin','admin','1997-02-24','男','image/U1.jpg',1035,1),(2,'admin1','admin1','1997-12-12','男','image/U2.jpg',1000,1),(3,'admin2','admin2','2020-04-21','女','image/U3.jpg',1000,0),(4,'admin3','admin3','2020-04-15','女','image/b2f88c5d-f6d8-4139-944b-1e1bb03951cfuuuuuuu.jpg',1000,0),(5,'admin4','admin4','2021-04-20','男','image/17fc74e0-ecb7-4c87-9b3f-720adc135533uuuuuuu.jpg',929,1);

/*Table structure for table `vip_tab` */

DROP TABLE IF EXISTS `vip_tab`;

CREATE TABLE `vip_tab` (
  `vip_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `realName` char(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `idCard` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`vip_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `vip_tab_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_tab` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `vip_tab` */

insert  into `vip_tab`(`vip_id`,`user_id`,`realName`,`idCard`,`tel`) values (1,1,'张大炮','123123123123123123','11111111111'),(6,5,'张三','456987458965478521','12548759564');

/* Trigger structure for table `sale_tab` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `deleteOrderBySale` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `deleteOrderBySale` BEFORE DELETE ON `sale_tab` FOR EACH ROW BEGIN
	delete from order_tab where order_tab.sale_id=old.sale_id;
    END */$$


DELIMITER ;

/* Trigger structure for table `vip_tab` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `updateVipFlag` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `updateVipFlag` AFTER INSERT ON `vip_tab` FOR EACH ROW BEGIN
	update user_tab set vipFlag = 1 where user_tab.user_id=new.user_id;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
