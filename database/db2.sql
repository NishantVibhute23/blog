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
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `message_by_user_id` (`message_by_user_id`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`message_by_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`id`,`from_user_id`,`message_by_user_id`,`message`,`inserted_date_time`) values 
(1,2,2,'Hi','2019-05-09 09:28:08'),
(2,2,1,'Hello','2019-05-10 14:28:18'),
(3,3,1,'hi','2019-05-06 15:35:59'),
(4,3,1,'hi','2019-05-07 15:35:56'),
(7,2,1,'How are you?','2019-05-10 17:14:59'),
(8,2,1,'yes why not','2019-05-10 17:16:19'),
(9,2,1,'Hello','2019-05-10 17:17:51'),
(10,2,1,'Hii','2019-05-10 17:17:55'),
(11,2,1,'Hii','2019-05-10 17:27:03');

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

/*Table structure for table `myqualification` */

DROP TABLE IF EXISTS `myqualification`;

CREATE TABLE `myqualification` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `desc` varchar(250) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `myqualification` */

insert  into `myqualification`(`id`,`title`,`desc`,`year`) values 
(2,'sdf','sdf','1993'),
(4,'Doctor of Philosophy','Passed out from Mumbai University \r\n2018-2019','2019'),
(5,'sdfsadf','sdfdasfsa','1995'),
(6,'dsfa','SDF','1996'),
(8,'SDFASDF','SDFSADF','1996'),
(9,'DSAF','DSAF','1993');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_queries` */

insert  into `user_queries`(`id`,`user_name`,`user_email`,`message_subject`,`message_text`,`inserted_time`) values 
(1,'adsf','adsf@gmail.com','dasf','adsf','2019-03-16 12:33:18'),
(2,'adsf','adsf@gmail.com','adsf','adsf','2019-03-16 12:35:23'),
(3,'dsaf','adsf@gmail.com','dasf','dsaf','2019-03-16 12:37:01'),
(4,'dsaf','adsf@gmail.com','dasf','adsfdsafd','2019-03-16 12:39:48'),
(5,'dsaf','adsf@gmail.com','dasf','adfadsf','2019-03-16 12:40:36'),
(6,'dsaf','adsf@gmail.com','dasf','wqASD','2019-03-18 10:20:32');

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
(1,'root','ab@gmail.com','root',1,'2019-03-16 11:23:23',1,'2019-05-10 17:09:33','2019-05-10 14:40:46'),
(2,'Guru','g@gmail.com','root',2,'2019-05-10 11:00:04',1,'2019-05-08 15:41:58','2019-05-09 15:42:01'),
(3,'ab1@gmail.com','ab1@gmail.com','root',2,'2019-05-10 14:41:00',0,'2019-05-06 15:42:05','2019-05-09 15:42:08'),
(4,'ab2','ab2@gmail.com','root',2,'2019-05-10 14:41:45',0,'2019-05-10 14:42:09','2019-05-10 14:42:26');

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

/*!50003 CREATE PROCEDURE `getQuestionsByPaperId`(netsetid_in tinyint, paperid_in tinyint, limit_in tinyint)
BEGIN
	
		select `id`,`question`,`optionA`,`optionB`,`optionC`,`optionD`,`answer`
		from `ns_questions`
		where `netset_type` = netsetid_in and `paper_type` =paperid_in
		order by `id` asc
		limit limit_in;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getRecentChatNames` */

/*!50003 DROP PROCEDURE IF EXISTS  `getRecentChatNames` */;

DELIMITER $$

/*!50003 CREATE PROCEDURE `getRecentChatNames`()
BEGIN
		select u.`id`,u.`uname`,u.`is_logged_in`, DATE_FORMAT(`logout_time`, "%d %b %Y") as onDate,DATE_FORMAT(`inserted_date_time`, "%b %d ") AS chatDate,c.`inserted_date_time` AS datei
		from `users` u join `chat` c 
			on u.id = c.`from_user_id`
		where u.`utype` =2 and c.id in ( SELECT MAX(id)
						FROM chat
						GROUP BY from_user_id)

		order by datei desc;	
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
