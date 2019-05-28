/*
SQLyog Community
MySQL - 5.5.33 : Database - madhurisadgir
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `message_by_user_id` int(11) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `inserted_date_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isRead` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `message_by_user_id` (`message_by_user_id`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`message_by_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`id`,`from_user_id`,`message_by_user_id`,`message`,`inserted_date_time`,`isRead`) values 
(1,2,2,'Hi','2019-05-09 09:28:08',1),
(2,2,1,'Hello','2019-05-10 14:28:18',1),
(3,3,1,'hi','2019-05-06 15:35:59',1),
(4,3,1,'hi','2019-05-07 15:35:56',1),
(7,2,1,'How are you?','2019-05-10 17:14:59',1),
(8,2,1,'yes why not','2019-05-10 17:16:19',1),
(9,2,1,'Hello','2019-05-10 17:17:51',1),
(10,2,1,'Hii','2019-05-10 17:17:55',1),
(11,2,1,'Hii','2019-05-10 17:27:03',1),
(13,3,1,'message.value','2019-05-17 20:02:52',1),
(14,3,1,'message.value','2019-05-17 20:04:11',1),
(15,3,1,'message.value','2019-05-17 20:07:26',1),
(16,3,1,'','2019-05-20 11:05:15',1),
(17,3,1,'hi','2019-05-20 11:06:31',1),
(18,3,3,'hi','2019-05-20 11:13:42',1),
(19,3,3,'hi','2019-05-20 11:14:56',1),
(20,3,3,'hello','2019-05-20 11:15:46',1),
(21,3,3,'hi','2019-05-20 11:16:36',1),
(22,3,3,'Hii','2019-05-20 11:16:50',1),
(23,3,3,'hi','2019-05-20 11:17:12',1),
(24,3,3,'how are you','2019-05-20 11:17:17',1),
(25,3,1,'hi','2019-05-20 11:27:29',1),
(26,3,1,'hi','2019-05-20 11:27:42',1),
(27,3,1,'hi','2019-05-20 11:28:07',1),
(28,3,3,'Hii','2019-05-20 11:32:10',1),
(29,3,3,'yes why not','2019-05-20 11:32:39',1),
(30,3,3,'yes why not','2019-05-20 11:33:27',1),
(34,3,1,'hi','2019-05-20 11:36:54',1),
(35,3,1,'hi','2019-05-20 11:43:50',1),
(36,3,1,'','2019-05-20 11:43:50',1),
(37,3,1,'hi','2019-05-20 11:45:13',1),
(38,3,1,'hi','2019-05-20 11:46:18',1),
(39,3,1,'hi','2019-05-20 11:47:01',1),
(40,3,1,'hi','2019-05-20 11:48:07',1),
(41,3,1,'hi','2019-05-20 11:48:51',1),
(42,3,1,'hi','2019-05-20 11:49:09',1),
(43,3,1,'hi','2019-05-20 11:49:57',1),
(44,3,3,'hi','2019-05-20 11:51:10',1),
(45,3,3,'hi','2019-05-20 11:51:34',1),
(46,3,3,'hello','2019-05-20 11:51:45',1),
(47,3,3,'hi','2019-05-20 11:53:07',1),
(48,3,3,'Hello Welcome ','2019-05-20 11:53:16',1),
(49,3,3,'how are you','2019-05-20 11:53:25',1),
(50,3,3,'im fine','2019-05-20 11:53:34',1),
(51,3,3,'how are you','2019-05-20 11:53:47',1),
(52,3,3,'Hello Welcome t','2019-05-20 11:53:55',1),
(53,3,3,'hi','2019-05-20 11:55:08',1),
(54,3,3,'Hello Welcome ','2019-05-20 11:55:33',1),
(55,3,3,'hwllo','2019-05-20 11:55:39',1),
(56,3,3,'hi','2019-05-20 12:00:32',1),
(57,3,1,'Hello','2019-05-20 12:00:42',1),
(58,3,3,'hi','2019-05-20 12:00:46',1),
(59,3,1,'Hello','2019-05-20 12:00:51',1),
(60,3,3,'hiii','2019-05-20 12:08:47',1),
(61,3,3,'hi','2019-05-20 12:11:43',1),
(62,3,3,'hi','2019-05-20 12:11:52',1),
(63,3,3,'hi','2019-05-20 12:12:03',1),
(64,3,3,'hello','2019-05-20 12:12:30',1),
(65,3,3,'u der','2019-05-20 12:12:38',1),
(66,3,1,'yes why not','2019-05-20 12:23:42',1),
(67,3,1,'Hii','2019-05-20 12:23:56',1),
(68,3,3,'hi','2019-05-20 12:24:14',1),
(69,3,1,'Hello','2019-05-20 12:24:18',1),
(70,3,3,'dafadsf','2019-05-20 12:24:22',1),
(71,3,1,'adsfasdf','2019-05-20 12:24:24',1),
(72,3,1,'dsaf','2019-05-20 12:24:41',1),
(73,3,1,'dsaf','2019-05-20 12:24:43',1),
(74,3,3,'Guru You will begin to realise why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures.','2019-05-20 13:07:39',1),
(75,3,1,'hi','2019-05-27 14:13:41',1);

/*Table structure for table `m_net_set_type` */

DROP TABLE IF EXISTS `m_net_set_type`;

CREATE TABLE `m_net_set_type` (
  `id` tinyint(4) NOT NULL,
  `ns_type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_net_set_type` */

insert  into `m_net_set_type`(`id`,`ns_type`) values 
(1,'NET'),
(2,'SET'),
(3,'BOTH');

/*Table structure for table `m_paper_type` */

DROP TABLE IF EXISTS `m_paper_type`;

CREATE TABLE `m_paper_type` (
  `id` tinyint(4) NOT NULL,
  `paper_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_paper_type` */

insert  into `m_paper_type`(`id`,`paper_type`) values 
(1,'Paper I'),
(2,'Paper II'),
(3,'Paper III');

/*Table structure for table `m_test_type` */

DROP TABLE IF EXISTS `m_test_type`;

CREATE TABLE `m_test_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `m_test_type` */

insert  into `m_test_type`(`id`,`name`) values 
(1,'Paid'),
(2,'Free');

/*Table structure for table `myqualification` */

DROP TABLE IF EXISTS `myqualification`;

CREATE TABLE `myqualification` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `myqualification` */

insert  into `myqualification`(`id`,`title`,`desc`,`year`) values 
(2,'sdf','sdf','1993'),
(4,'Doctor of Philosophy','Passed out from Mumbai University \r\n2018-2019','2019'),
(5,'sdfsadf','sdfdasfsa','1995'),
(6,'dsfa','SDF','1996'),
(8,'SDFASDF','SDFSADF','1996'),
(9,'DSAF','DSAF','1993');

/*Table structure for table `net_set_papers` */

DROP TABLE IF EXISTS `net_set_papers`;

CREATE TABLE `net_set_papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `net_set_type` tinyint(4) DEFAULT NULL,
  `paper_type` tinyint(4) DEFAULT NULL,
  `test_type` tinyint(4) DEFAULT NULL,
  `test_name` varchar(50) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `net_set_type` (`net_set_type`),
  KEY `paper_type` (`paper_type`),
  KEY `test_type` (`test_type`),
  CONSTRAINT `net_set_papers_ibfk_1` FOREIGN KEY (`net_set_type`) REFERENCES `m_net_set_type` (`id`),
  CONSTRAINT `net_set_papers_ibfk_2` FOREIGN KEY (`paper_type`) REFERENCES `m_paper_type` (`id`),
  CONSTRAINT `net_set_papers_ibfk_3` FOREIGN KEY (`test_type`) REFERENCES `m_test_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `net_set_papers` */

insert  into `net_set_papers`(`id`,`net_set_type`,`paper_type`,`test_type`,`test_name`,`is_deleted`) values 
(1,1,1,2,'abc',0),
(2,1,1,2,'dsaf',0),
(3,1,1,2,'dsaf',0),
(6,1,1,1,'abc',0),
(7,1,1,2,'abc2',1),
(8,2,1,1,'abc',0),
(9,2,1,1,'dsaf',0);

/*Table structure for table `newsletter_sub` */

DROP TABLE IF EXISTS `newsletter_sub`;

CREATE TABLE `newsletter_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_email` varchar(200) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `newsletter_sub` */

insert  into `newsletter_sub`(`id`,`sub_email`,`is_active`) values 
(2,'gtiwari801@gmail.com',1),
(3,'nishantvibhute92@gmail.com',1);

/*Table structure for table `ns_questions` */

DROP TABLE IF EXISTS `ns_questions`;

CREATE TABLE `ns_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `optionA` text,
  `optionB` text,
  `optionC` text,
  `optionD` text,
  `answer` char(1) DEFAULT NULL,
  `paper_id` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `paper_id` (`paper_id`),
  CONSTRAINT `ns_questions_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `net_set_papers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

/*Data for the table `ns_questions` */

insert  into `ns_questions`(`id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`,`paper_id`,`is_deleted`) values 
(1,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',3,0),
(2,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',3,0),
(3,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',3,0),
(4,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',3,0),
(5,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',3,0),
(6,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',3,0),
(7,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',3,0),
(8,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',3,0),
(9,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',3,0),
(10,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',3,0),
(11,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',3,0),
(12,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',6,0),
(13,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',6,0),
(14,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',6,0),
(15,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',6,0),
(16,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',6,0),
(17,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',6,0),
(18,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',6,0),
(19,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',6,0),
(20,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',6,0),
(21,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',6,0),
(22,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',6,0),
(23,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',7,0),
(24,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',7,0),
(25,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',7,0),
(26,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',7,0),
(27,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',7,0),
(28,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',7,0),
(29,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',7,0),
(30,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',7,0),
(31,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',7,0),
(32,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',7,0),
(33,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',7,0),
(34,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',8,0),
(35,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',8,0),
(36,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',8,0),
(37,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',8,0),
(38,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',8,0),
(39,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',8,0),
(40,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',8,0),
(41,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',8,0),
(42,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',8,0),
(43,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',8,0),
(44,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',8,0),
(45,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',9,0),
(46,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',9,0),
(47,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',9,0),
(48,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',9,0),
(49,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',9,0),
(50,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',9,0),
(51,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',9,0),
(52,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',9,0),
(53,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',9,0),
(54,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',9,0),
(55,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',9,0);

/*Table structure for table `pagedetails` */

DROP TABLE IF EXISTS `pagedetails`;

CREATE TABLE `pagedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pagetype` tinyint(4) DEFAULT NULL,
  `photoUrl` varchar(250) DEFAULT NULL,
  `desc1` text,
  `desc2` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pagedetails` */

insert  into `pagedetails`(`id`,`pagetype`,`photoUrl`,`desc1`,`desc2`) values 
(1,1,'Home.png','Guru  You will begin to realise why this exercise is called the Dickens Pattern with reference to the ghost showing Scrooge some different futures.',''),
(2,2,'PersonalDetails.png','Here, I focus on a range of items and features that we use in life without giving them a second thought. such as Coca Cola. Dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco. ','Guru  It won?t be a bigger problem to find one video game lover in your neighbor. Since the introduction of Virtual Game, it has been achieving great heights so far as its popularity and technological advancement are concerned. The history of video game is as interesting as a fairy tale.\r\n\r\nThe quality of today\'s video game was not at all there when video game first conceptualized and played ever. During the formulative years, video games were created by using various interactive electronic devices with various display formats. The first ever video game was designed in 1947 by Thomas T. Goldsmith Jr. \r\n');

/*Table structure for table `user_net_set_score` */

DROP TABLE IF EXISTS `user_net_set_score`;

CREATE TABLE `user_net_set_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `paper_id` (`paper_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_net_set_score_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `net_set_papers` (`id`),
  CONSTRAINT `user_net_set_score_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user_net_set_score` */

insert  into `user_net_set_score`(`id`,`paper_id`,`user_id`,`score`) values 
(1,1,1,'50'),
(2,1,2,'30'),
(3,3,1,'1/11'),
(4,8,1,'0/11');

/*Table structure for table `user_queries` */

DROP TABLE IF EXISTS `user_queries`;

CREATE TABLE `user_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `message_subject` varchar(255) NOT NULL,
  `message_text` text NOT NULL,
  `inserted_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `user_queries` */

insert  into `user_queries`(`id`,`user_name`,`user_email`,`message_subject`,`message_text`,`inserted_time`) values 
(1,'adsf','adsf@gmail.com','dasf','adsf','2019-03-16 12:33:18'),
(2,'adsf','adsf@gmail.com','adsf','adsf','2019-03-16 12:35:23'),
(3,'dsaf','adsf@gmail.com','dasf','dsaf','2019-03-16 12:37:01'),
(4,'dsaf','adsf@gmail.com','dasf','adsfdsafd','2019-03-16 12:39:48'),
(5,'dsaf','adsf@gmail.com','dasf','adfadsf','2019-03-16 12:40:36'),
(6,'dsaf','adsf@gmail.com','dasf','wqASD','2019-03-18 10:20:32'),
(7,'Nishant','nishant@gmail.com','Test','Heloo this is test message','2019-05-27 13:14:00'),
(8,'Nishant1','nishant1@gmail.com','Test','\r\nMumbai, Maharashtra, India\r\n\r\nNear Mumbai University(Kalina), Santacruz (East).\r\n+91 9860955477\r\n\r\nMon to Fri 9am to 6 pm\r\nprofessor.madhuri@gmail.com\r\n\r\nSend me your query anytime!\r\n','2019-05-27 13:15:55');

/*Table structure for table `user_type` */

DROP TABLE IF EXISTS `user_type`;

CREATE TABLE `user_type` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `utype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_type` */

insert  into `user_type`(`id`,`utype`) values 
(1,'Admin'),
(2,'User');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `uemail` varchar(255) DEFAULT NULL,
  `upassword` varchar(255) DEFAULT NULL,
  `utype` tinyint(4) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_logged_in` tinyint(4) DEFAULT '0',
  `login_time` timestamp NULL DEFAULT NULL,
  `logout_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`uname`,`uemail`,`upassword`,`utype`,`created_on`,`is_logged_in`,`login_time`,`logout_time`) values 
(1,'root','ab@gmail.com','root',1,'2019-03-16 11:23:23',1,'2019-05-28 17:58:14','2019-05-28 17:44:30'),
(2,'Guru','g@gmail.com','root',2,'2019-05-10 11:00:04',0,'2019-05-08 15:41:58','2019-05-09 15:42:01'),
(3,'Nishant','ab1@gmail.com','root',2,'2019-05-10 14:41:00',0,'2019-05-28 16:10:58','2019-05-28 16:11:09'),
(4,'ab2','ab2@gmail.com','root',2,'2019-05-10 14:41:45',0,'2019-05-10 14:42:09','2019-05-10 14:42:26');

/* Procedure structure for procedure `addNewsSubs` */

/*!50003 DROP PROCEDURE IF EXISTS  `addNewsSubs` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `addNewsSubs`(email_in VARCHAR(255))
BEGIN
IF EXISTS (SELECT * FROM `newsletter_sub` WHERE `sub_email`= email_in) then
	
		SELECT 0;
	
	ELSE 
		INSERT INTO `newsletter_sub`(`sub_email`) VALUES(email_in);
		SELECT LAST_INSERT_ID();
	END IF;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `addPaper` */

/*!50003 DROP PROCEDURE IF EXISTS  `addPaper` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `addPaper`(`net_set_type_in` tinyint,`paper_type_in` tinyint,`test_type_in` tinyint,`test_name_in` varchar(50))
BEGIN
		insert into `net_set_papers`(`net_set_type`,`paper_type`,`test_type`,`test_name`)
		values(`net_set_type_in` ,`paper_type_in` ,`test_type_in` ,`test_name_in` );
		
		select last_insert_id();
	END */$$
DELIMITER ;

/* Procedure structure for procedure `CheckUserIsLoggedIn` */

/*!50003 DROP PROCEDURE IF EXISTS  `CheckUserIsLoggedIn` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `CheckUserIsLoggedIn`(id_in int)
BEGIN
	
	select `is_logged_in`
	from `users`
	where `id` = id_in;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `createUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `createUser` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `createUser`(uname_in varchar(255), uemail_in varchar(255),upassword_in varchar(255),utype_in tinyint)
BEGIN
			insert into `users`(`uname`,`uemail`,`upassword`,`utype`)
			values(uname_in , uemail_in ,upassword_in ,utype_in);
			
			select last_insert_id();
			
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `deleteQualification` */

/*!50003 DROP PROCEDURE IF EXISTS  `deleteQualification` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `deleteQualification`(id_in tinyint)
BEGIN

		delete 
		from `myqualification`
		where id = id_in;
		
			SELECT ROW_COUNT();
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `getPageDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `getPageDetail` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getPageDetail`(pageType_in tinyint)
BEGIN
	
	select `desc1`,`desc2`,`photoUrl`
	from `pagedetails`
	where `pagetype` = pageType_in;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getQualificationDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `getQualificationDetail` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getQualificationDetail`()
BEGIN
select `id`,`title`,`desc`,`year` from `myqualification` order by `year` desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getQuestionsAnswer` */

/*!50003 DROP PROCEDURE IF EXISTS  `getQuestionsAnswer` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getQuestionsAnswer`( questionId int)
BEGIN
	
		select `id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`
		from `ns_questions`
		where `id` = questionId
		order by `id` asc;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getQuestionsByPaperId` */

/*!50003 DROP PROCEDURE IF EXISTS  `getQuestionsByPaperId` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getQuestionsByPaperId`(paperid_in tinyint)
BEGIN
	
		select `id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`
		from `ns_questions`
		where 	`paper_id`=paperid_in and is_deleted = 0
		order by `id` asc;
		

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getRecentChatNames` */

/*!50003 DROP PROCEDURE IF EXISTS  `getRecentChatNames` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getRecentChatNames`()
BEGIN
		select u.`id`,u.`uname`,u.`is_logged_in`, DATE_FORMAT(`logout_time`, "%d %b %Y") as onDate,DATE_FORMAT(`inserted_date_time`, "%b %d ") AS chatDate,c.`inserted_date_time` AS datei,c.`isRead`
		from `users` u join `chat` c 
			on u.id = c.`from_user_id`
		where u.`utype` =2 and c.id in ( SELECT MAX(id)
						FROM chat
						GROUP BY from_user_id)

		order by datei desc;	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `getSubscribedNewsLetterEmailIds` */

/*!50003 DROP PROCEDURE IF EXISTS  `getSubscribedNewsLetterEmailIds` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getSubscribedNewsLetterEmailIds`()
BEGIN
		select `sub_email`
		from `newsletter_sub`
		where `is_active` = 1;


	END */$$
DELIMITER ;

/* Procedure structure for procedure `getUserChat` */

/*!50003 DROP PROCEDURE IF EXISTS  `getUserChat` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getUserChat`(`id_in` int)
BEGIN
	select c.id,c.`from_user_id`,c.`message_by_user_id`,u.`uname`,c.`message`,date_format(`inserted_date_time`,"%h:%i %p"),DATE_FORMAT(`inserted_date_time`,"%b %d")
from `chat` c join users u 
 on u.id = c.message_by_user_id
where `from_user_id` = id_in 
order by id asc ;

update chat
set `isRead` = 1
where `from_user_id` = id_in ;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `getUserPaperScore` */

/*!50003 DROP PROCEDURE IF EXISTS  `getUserPaperScore` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getUserPaperScore`(net_set_type_in int,paper_type_in int,test_type_id_in int,user_id_in int)
BEGIN

SET @query = CONCAT("SELECT np.`id`,np.`test_name`,np.`is_deleted`,us.score,(SELECT COUNT(id) FROM `ns_questions` WHERE `paper_id`=np.`id` and is_deleted = 0)
		FROM `net_set_papers` np LEFT JOIN `user_net_set_score` us
		ON np.`id` = us.`paper_id` and us.`user_id` =",user_id_in, " 
		WHERE np.`net_set_type` = ",net_set_type_in ," and np.is_deleted=0 and np.`paper_type` =", paper_type_in);
		
		if test_type_id_in=2 then
		SET @query = CONCAT(@query ," And np.`test_type` =2");
		end if;
		
		if user_id_in = 1 then

SET @query = CONCAT(@query ," union SELECT np.`id`,np.`test_name`,np.`is_deleted`,us.score,(SELECT COUNT(id) FROM `ns_questions` WHERE `paper_id`=np.`id` and is_deleted = 0)
		FROM `net_set_papers` np LEFT JOIN `user_net_set_score` us
		ON np.`id` = us.`paper_id` and us.`user_id` =",user_id_in, " 
		WHERE np.`net_set_type` = ",net_set_type_in ," and np.is_deleted=1 and np.`paper_type` =", paper_type_in);
		
		if test_type_id_in=2 then
		SET @query = CONCAT(@query ," And np.`test_type` =2");
		end if;		
		
		end if;
		PREPARE stmt FROM @query; 
    
    EXECUTE stmt;

     
    		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `getUserQueries` */

/*!50003 DROP PROCEDURE IF EXISTS  `getUserQueries` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getUserQueries`()
BEGIN
	
		select `user_name`,`user_email`,`message_subject`,`message_text`,DATE_FORMAT(`inserted_time`,"%d-%m-%Y")
		from `user_queries`
		order by `inserted_time` desc;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insertOrUpdateUserScore` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertOrUpdateUserScore` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `insertOrUpdateUserScore`(user_id_in int,paper_id_in int,score_in varchar(11))
BEGIN
	
				
		if exists(SELECT  `id` FROM `user_net_set_score` WHERE `paper_id` = paper_id_in AND `user_id` = user_id_in) then
			UPDATE user_net_set_score
			SET score = score_in
			WHERE `paper_id` = paper_id_in AND `user_id` = user_id_in;
		
		else 
			
			
			INSERT INTO `user_net_set_score`(`paper_id`,`user_id`,`score`)
			VALUES(paper_id_in,user_id_in,score_in);
		
		end if;
		

	END */$$
DELIMITER ;

/* Procedure structure for procedure `insertQuestion` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertQuestion` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `insertQuestion`(`question_in` text,`optionA_in` TEXT,`optionB_in` TEXT,`optionC_in` TEXT,`optionD_in` TEXT,`answer` char(1),`paper_id_in` int)
BEGIN
		insert into `ns_questions`(`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`,`paper_id`)
		values(`question_in` ,`optionA_in` ,`optionB_in` ,`optionC_in` ,`optionD_in` ,`answer` ,`paper_id_in`);
	END */$$
DELIMITER ;

/* Procedure structure for procedure `insert_queries` */

/*!50003 DROP PROCEDURE IF EXISTS  `insert_queries` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `insert_queries`(uname_in varchar(255),uemail_in varchar(255),msubject_in varchar(255), message_in text)
BEGIN
		insert into `user_queries`(`user_name`,`user_email`,`message_subject`,`message_text`)
		values(uname_in ,uemail_in ,msubject_in , message_in);
		
		select last_insert_id();
	END */$$
DELIMITER ;

/* Procedure structure for procedure `isSubsExist` */

/*!50003 DROP PROCEDURE IF EXISTS  `isSubsExist` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `isSubsExist`(email_in VARCHAR(255))
BEGIN
SELECT * FROM `newsletter_sub` WHERE `sub_email`= email_in;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `isUserExist` */

/*!50003 DROP PROCEDURE IF EXISTS  `isUserExist` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `isUserExist`(uemail_in VARCHAR(255),utype_in TINYINT)
BEGIN
select `id`,`uname`,`uemail`,`utype` from `users` where `uemail`=uemail_in and `utype`=utype_in;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `loginUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `loginUser` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `loginUser`(uemail_in VARCHAR(255),upassword_in VARCHAR(255))
BEGIN
select `id`,`uname`,`uemail`,`utype` from `users` where `uemail`= uemail_in and `upassword`=upassword_in;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `sendMessage` */

/*!50003 DROP PROCEDURE IF EXISTS  `sendMessage` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `sendMessage`(user_id_in int,message_by_userId_in int,message_in varchar(250))
BEGIN
	
	insert into `chat`(`from_user_id`,`message_by_user_id`,`message`)
	values(user_id_in,message_by_userId_in,message_in);
	
	select Last_insert_id();

	END */$$
DELIMITER ;

/* Procedure structure for procedure `updateDesc` */

/*!50003 DROP PROCEDURE IF EXISTS  `updateDesc` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `updateDesc`(`pagetype_in` TINYINT,`desc1_in` text,`desc2_in` text)
BEGIN
UPDATE `pagedetails`
	SET `desc1` = desc1_in,`desc2`=desc2_in
	WHERE `pagetype` = pagetype_in;
	
	select ROW_COUNT() ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `updatePhotoUrl` */

/*!50003 DROP PROCEDURE IF EXISTS  `updatePhotoUrl` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `updatePhotoUrl`(`pagetype_in` tinyint,`photoUrl_in` varchar(250))
BEGIN
	
	update `pagedetails`
	set `photoUrl` = photoUrl_in
	where `pagetype` = pagetype_in;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `updateQualificationDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `updateQualificationDetail` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `updateQualificationDetail`(`title_in` varchar(250),`desc_in` varchar(250),`year_in` year,`id_in` tinyint)
BEGIN

	if id_in = 0 then
		insert into `myqualification`(`title`,`desc`,`year`)
		values (title_in,desc_in,year_in);
	else
	
		update `myqualification`
		set `title`=title_in,`desc`=desc_in,`year`=year_in
		where `id`=id_in;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `updateUserLoginLogout` */

/*!50003 DROP PROCEDURE IF EXISTS  `updateUserLoginLogout` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `updateUserLoginLogout`(user_id_in tinyint,log_type tinyint)
BEGIN
		if log_type = 1 then
			update `users`
			set `is_logged_in` = 1
				, `login_time` = current_timestamp
			where `id` = user_id_in;
		
		else
			UPDATE `users`
			SET `is_logged_in` = 0
				, `logout_time` = CURRENT_TIMESTAMP
			WHERE `id` = user_id_in	;
		
		end if;
	END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
