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

/*Table structure for table `ns_questions` */

DROP TABLE IF EXISTS `ns_questions`;

CREATE TABLE `ns_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `optionA` varchar(255) DEFAULT NULL,
  `optionB` varchar(255) DEFAULT NULL,
  `optionC` varchar(255) DEFAULT NULL,
  `optionD` varchar(255) DEFAULT NULL,
  `answer` char(1) DEFAULT NULL,
  `netset_type` tinyint(4) DEFAULT NULL,
  `paper_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `netset_type` (`netset_type`),
  KEY `paper_type` (`paper_type`),
  CONSTRAINT `ns_questions_ibfk_1` FOREIGN KEY (`netset_type`) REFERENCES `m_net_set_type` (`id`),
  CONSTRAINT `ns_questions_ibfk_2` FOREIGN KEY (`paper_type`) REFERENCES `paper_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `ns_questions` */

insert  into `ns_questions`(`id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`,`netset_type`,`paper_type`) values 
(1,'What is the capital of india?','Mumbai','delhi','Chennai','goa','b',3,1),
(2,'Which of the following is not an event in ancient Indian history in BC era?','Foundation of the Indo-Greek empire','Beginning of Vikram samvat Era ','Fourth Buddhist Council','Hathigumpha inscription by Kharvela','c',3,1),
(3,'Which of the following was most probably the first metal to be used in India?','Iron','Copper','Gold','Silver','b',3,1),
(4,'The Jorwe culture of ancient India has been named after site of the same name in which of the following states?','Rajasthan','Gujarat','Karnataka','Maharashtra','d',3,1),
(5,'Which of the following terms is not associated with a tool tradition of ancient India / World?','Mousterian','Acheulean','Oldowan','Grotian','d',3,1),
(6,'In stone age, the Microliths were most commonly found in which of the following ages?','Paleolithic','Mesolithic','Neolithic','Chalcolithic','b',3,1),
(7,'Which of the following is a correct statement about Indus Valley Civilization?','Both Harappa and Mohejodero are is located on the banks of Indus River','Both Chanhudaro and Kalibangan were located within the boundaries of present day Rajasthan','Both Surkotada and Dholavira are located in Katch of Gujarat','Lothal site was located on bank of Narmada river','c',3,2),
(8,'Which of the following is not a correct statement about Buddhist Canonical literature?','Abhidhamma Pitaka was compiled in third Buddhist Council','Digha Nikaya is a part of the Sutta Pitaka','Vinaya Pitaka primarily deals with monastic rules for monks and nuns','Sutta Pitaka deals with philosophy and psychology and lays down methods for training the mind.','d',3,2),
(9,'Which of the following rulers were closely associated with Yuehzhi nomadic people?','Shaka','Kushana','Pahalva','None of them','b',3,2),
(10,'Which of the following ancient Indian sages did not make substantial contribution to the(Yogachara) philosophical tradition?','Vasubandhu','Dinnaga','Dharmakirti','Nagarjuna','d',3,2),
(11,'Vindhyashakti was founder of which of the following dynasties in ancient India?','Vakataka','Kakatiya','Kalachuri','Chalukyas of Badami','a',3,2);

/*Table structure for table `paper_type` */

DROP TABLE IF EXISTS `paper_type`;

CREATE TABLE `paper_type` (
  `id` tinyint(4) NOT NULL,
  `paper_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paper_type` */

insert  into `paper_type`(`id`,`paper_type`) values 
(1,'Paper I'),
(2,'Paper II'),
(3,'General');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user_queries` */

insert  into `user_queries`(`id`,`user_name`,`user_email`,`message_subject`,`message_text`,`inserted_time`) values 
(1,'adsf','adsf@gmail.com','dasf','adsf','2019-03-16 12:33:18'),
(2,'adsf','adsf@gmail.com','adsf','adsf','2019-03-16 12:35:23'),
(3,'dsaf','adsf@gmail.com','dasf','dsaf','2019-03-16 12:37:01'),
(4,'dsaf','adsf@gmail.com','dasf','adsfdsafd','2019-03-16 12:39:48'),
(5,'dsaf','adsf@gmail.com','dasf','adfadsf','2019-03-16 12:40:36');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`uname`,`uemail`,`upassword`,`utype`,`created_on`) values 
(1,'root','ab@gmail.com','root',2,'2019-03-16 11:23:23');

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

/*!50003 CREATE PROCEDURE `getQuestionsByPaperId`(netsetid_in tinyint, paperid_in tinyint, limit_in tinyint)
BEGIN
	
		select `id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`
		from `ns_questions`
		where `netset_type` = netsetid_in and `paper_type` =paperid_in
		order by `id` asc
		limit limit_in;

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
