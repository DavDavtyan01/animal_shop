/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.0.15 : Database - animal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`animal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `animal`;

/*Table structure for table `accessories` */

DROP TABLE IF EXISTS `accessories`;

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_text` mediumtext,
  `description` varbinary(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `other_accessory_id` int(11) DEFAULT NULL,
  `for_dog_accessory_id` int(11) DEFAULT NULL,
  `for_kat_accessory_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `FKg3cu6sb63e3syi8hxu9yoxr0l` (`for_kat_accessory_id`),
  KEY `for_dog_category_id` (`for_dog_accessory_id`),
  KEY `other_category_id` (`other_accessory_id`),
  CONSTRAINT `FKg3cu6sb63e3syi8hxu9yoxr0l` FOREIGN KEY (`for_kat_accessory_id`) REFERENCES `for_kat_accessory` (`id`),
  CONSTRAINT `accessories_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `accessories_ibfk_3` FOREIGN KEY (`for_dog_accessory_id`) REFERENCES `for_dog_accessory` (`id`),
  CONSTRAINT `accessories_ibfk_4` FOREIGN KEY (`other_accessory_id`) REFERENCES `other_accessory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `accessories` */

insert  into `accessories`(`id`,`size`,`material`,`weight`,`title`,`short_text`,`description`,`created_date`,`location`,`user_id`,`price`,`color`,`other_accessory_id`,`for_dog_accessory_id`,`for_kat_accessory_id`,`image`) values (5,'12','zxcxzc',NULL,'zxczxc','zxczxc zxczxc zxczxc','zxczxc zxczxc zxczxc','2019-04-27 08:58:33','Armenia, GITC2018-2019',14,'2000$','zxcxzc',NULL,NULL,NULL,NULL),(6,'12','dasdas',NULL,'dasdas','dsada asd dsa','dasdsa asda','2019-04-27 12:17:44','Armenia, GITC2018-2019',15,'2000$','asddsasd',NULL,NULL,NULL,NULL),(7,'12','Leather',NULL,'Black lether ','Black lether Black lether Black lether Black lether','Black lether Black lether Black lether Black lether ','2019-04-30 13:30:55','Armenia, GITC2018-2019',15,'2000$','Black',1,NULL,NULL,'1556631054790_1553165385_B0408CVWV_M900_E01_ZHC.jpg');

/*Table structure for table `accessories_image` */

DROP TABLE IF EXISTS `accessories_image`;

CREATE TABLE `accessories_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `accessories_image` */

insert  into `accessories_image`(`id`,`path`) values (10,'1556355513403_images.jpg'),(11,'1556367463746_images.jpg');

/*Table structure for table `animal` */

DROP TABLE IF EXISTS `animal`;

CREATE TABLE `animal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `breed` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` enum('MALE','FEMALE') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_text` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `animal_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `FKtbrmt5mhyjxak40fnbufie8m6` (`animal_category_id`),
  CONSTRAINT `FKtbrmt5mhyjxak40fnbufie8m6` FOREIGN KEY (`animal_category_id`) REFERENCES `animal_category` (`id`),
  CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `animal` */

insert  into `animal`(`id`,`breed`,`weight`,`price`,`color`,`dob`,`gender`,`title`,`short_text`,`description`,`created_date`,`location`,`user_id`,`age`,`size`,`animal_category_id`,`image`) values (41,'Horse','12','2000$','brown',NULL,NULL,'King British horse','King British horse King British horse King British horse','King British horse King British horseKing British horse','2019-04-28 13:55:17','Armenia, GITC2018-2019',14,'12','12',15,'1556459717379__102512274_gettyimages-518360318.jpg'),(42,'Dog','12','2000$','brown',NULL,NULL,'Kiing British dog','Kiing British dog Kiing British dog Kiing British dog','Kiing British dog Kiing British dog Kiing British dog ','2019-04-28 14:05:11','Armenia, GITC2018-2019',14,'12','12',12,'1556460311281__wNBgehb_400x400.jpg'),(43,'Cat','12','2000$','brown',NULL,NULL,'Kiing British cat','Kiing British cat Kiing British cat Kiing British cat','Kiing British ca Kiing British cat t Kiing British cat','2019-04-28 18:05:18','Armenia, GITC2018-2019',15,'12','12',NULL,'1556474718036_s-l300.jpg'),(44,'Fish','12','2000$','bluw',NULL,NULL,'Fish King','Fish King Fish King Fish King Fish King','Fish King Fish King Fish King Fish King','2019-04-28 18:11:58','Armenia, GITC2018-2019',15,'12','12',15,'1556475118159_IMG_0409.jpg'),(45,'Dog','12','2000$','brown',NULL,NULL,'Dog','Dog Dog Dog Dog','Dog Dog Dog Dog','2019-04-28 18:15:41','Armenia, GITC2018-2019',15,'12','12',12,'1556475341469__wNBgehb_400x400.jpg');

/*Table structure for table `animal_category` */

DROP TABLE IF EXISTS `animal_category`;

CREATE TABLE `animal_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `animal_category` */

insert  into `animal_category`(`id`,`name`) values (12,'Dog'),(13,'Cat'),(14,'Farm'),(15,'Fish '),(16,'Reptiles'),(17,'Other');

/*Table structure for table `animal_image` */

DROP TABLE IF EXISTS `animal_image`;

CREATE TABLE `animal_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `animal_image` */

insert  into `animal_image`(`id`,`path`) values (63,'1556397040956__wNBgehb_400x400.jpg'),(64,'1556440319695_s-l300.jpg');

/*Table structure for table `feed` */

DROP TABLE IF EXISTS `feed`;

CREATE TABLE `feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weight` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_text` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `for_kat_feed_id` int(11) DEFAULT NULL,
  `for_dog_feed_id` int(11) DEFAULT NULL,
  `other_feed_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `for_dog_feed_id` (`for_dog_feed_id`),
  KEY `for_kat_feed_id` (`for_kat_feed_id`),
  KEY `other_feed_id` (`other_feed_id`),
  CONSTRAINT `feed_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `feed_ibfk_3` FOREIGN KEY (`for_dog_feed_id`) REFERENCES `for_dog_feed` (`id`),
  CONSTRAINT `feed_ibfk_4` FOREIGN KEY (`for_kat_feed_id`) REFERENCES `for_kat_feed` (`id`),
  CONSTRAINT `feed_ibfk_5` FOREIGN KEY (`other_feed_id`) REFERENCES `other_feed` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `feed` */

/*Table structure for table `feed_category` */

DROP TABLE IF EXISTS `feed_category`;

CREATE TABLE `feed_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `feed_category` */

/*Table structure for table `feed_image` */

DROP TABLE IF EXISTS `feed_image`;

CREATE TABLE `feed_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `feed_image` */

insert  into `feed_image`(`id`,`path`) values (14,'1556355418048_1b13d52cad048fa2640b45f2d3fbe4949933c77d.jpg'),(15,'1556355418169_images.jpg'),(16,'1556367409022_images.jpg');

/*Table structure for table `for_dog_accessory` */

DROP TABLE IF EXISTS `for_dog_accessory`;

CREATE TABLE `for_dog_accessory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `for_dog_accessory` */

insert  into `for_dog_accessory`(`id`,`name`) values (1,'Sofas'),(2,'Huses'),(3,'Sun beds'),(4,'Carryng bags'),(5,'Clothing');

/*Table structure for table `for_dog_feed` */

DROP TABLE IF EXISTS `for_dog_feed`;

CREATE TABLE `for_dog_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `for_dog_feed` */

/*Table structure for table `for_kat_accessory` */

DROP TABLE IF EXISTS `for_kat_accessory`;

CREATE TABLE `for_kat_accessory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `for_kat_accessory` */

insert  into `for_kat_accessory`(`id`,`name`) values (5,'Houses'),(6,'Sun beds'),(7,'Carryng bads'),(8,'Clothing ');

/*Table structure for table `for_kat_feed` */

DROP TABLE IF EXISTS `for_kat_feed`;

CREATE TABLE `for_kat_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `for_kat_feed` */

/*Table structure for table `other_accessory` */

DROP TABLE IF EXISTS `other_accessory`;

CREATE TABLE `other_accessory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `other_accessory` */

insert  into `other_accessory`(`id`,`name`) values (1,'Aquarium'),(2,'Oars'),(3,'Limbs'),(4,'Belts'),(5,'Other');

/*Table structure for table `other_feed` */

DROP TABLE IF EXISTS `other_feed`;

CREATE TABLE `other_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `other_feed` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` enum('ADMIN','USER') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'USER',
  `phone_number` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`first_name`,`last_name`,`nickname`,`email`,`password`,`user_type`,`phone_number`,`avatar`,`created_date`) values (14,'Kasper','Kaspersky','KasperXak01','moblphone@mail.ru','$2a$10$PYaDTJwiPMldVifv2uxoR.CKuqN2UPqWFwQwgw9xbQCua7y9ewbo6','ADMIN','502350052','1556312817675_1b13d52cad048fa2640b45f2d3fbe4949933c77d.jpg',NULL),(15,'Dev','Dev','Dev','mobile.itproga01vg.dv@gmail.com','$2a$10$jzhTcgc5acRIdo56IbRCCO9JRk/1xZux/fGaNbcNjjYiHEAKeJhL.','USER','502350052','1556356748235_1b13d52cad048fa2640b45f2d3fbe4949933c77d.jpg',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
