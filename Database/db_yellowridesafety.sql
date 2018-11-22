# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_yellowridesafety
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2018-11-19 16:34:11
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_yellowridesafety'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_yellowridesafety" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_yellowridesafety";


#
# Table structure for table 'tbl_absent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_absent" (
  "abs_id" int(11) NOT NULL auto_increment,
  "abs_date" date NOT NULL,
  "stud_admno" int(11) NOT NULL,
  "abs_reason" varchar(30) NOT NULL,
  "prnt_id" int(11) NOT NULL,
  "abs_status" int(11) NOT NULL default '0',
  PRIMARY KEY  ("abs_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_absent'
#

LOCK TABLES "tbl_absent" WRITE;
/*!40000 ALTER TABLE "tbl_absent" DISABLE KEYS;*/
REPLACE INTO "tbl_absent" ("abs_id", "abs_date", "stud_admno", "abs_reason", "prnt_id", "abs_status") VALUES
	(1,'2018-10-21',5,'fever',1,0);
REPLACE INTO "tbl_absent" ("abs_id", "abs_date", "stud_admno", "abs_reason", "prnt_id", "abs_status") VALUES
	(2,'2018-10-21',7,'headache',1,0);
REPLACE INTO "tbl_absent" ("abs_id", "abs_date", "stud_admno", "abs_reason", "prnt_id", "abs_status") VALUES
	(3,'2018-10-21',7,'headache',1,0);
REPLACE INTO "tbl_absent" ("abs_id", "abs_date", "stud_admno", "abs_reason", "prnt_id", "abs_status") VALUES
	(4,'2018-10-26',7,'fever',1,0);
/*!40000 ALTER TABLE "tbl_absent" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(11) NOT NULL auto_increment,
  "admin_username" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  "admin_email" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_username", "admin_password", "admin_email") VALUES
	(1,'school','school','school@gmail.com');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_bus'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_bus" (
  "bus_id" int(11) NOT NULL auto_increment,
  "bus_vehno" varchar(50) NOT NULL,
  "bus_insure" varchar(50) NOT NULL,
  "bus_permit" varchar(50) NOT NULL,
  "bus_status" int(11) NOT NULL default '0',
  PRIMARY KEY  ("bus_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_bus'
#

LOCK TABLES "tbl_bus" WRITE;
/*!40000 ALTER TABLE "tbl_bus" DISABLE KEYS;*/
REPLACE INTO "tbl_bus" ("bus_id", "bus_vehno", "bus_insure", "bus_permit", "bus_status") VALUES
	(6,'kl17c3457','hf67dddd','76ghf',0);
REPLACE INTO "tbl_bus" ("bus_id", "bus_vehno", "bus_insure", "bus_permit", "bus_status") VALUES
	(7,'KL12D4563','GH465GFDH','BF567FFH',0);
REPLACE INTO "tbl_bus" ("bus_id", "bus_vehno", "bus_insure", "bus_permit", "bus_status") VALUES
	(8,'KL76M5629','NVY57883BJ','DFHDUF65',0);
/*!40000 ALTER TABLE "tbl_bus" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_class'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_class" (
  "class_id" int(11) NOT NULL auto_increment,
  "class_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("class_id")
) AUTO_INCREMENT=12;



#
# Dumping data for table 'tbl_class'
#

LOCK TABLES "tbl_class" WRITE;
/*!40000 ALTER TABLE "tbl_class" DISABLE KEYS;*/
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(2,'Std 2');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(3,'Std 3');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(4,'Std 4');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(5,'Std 5');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(6,'Std 6');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(7,'Std 7');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(10,'Std 9');
REPLACE INTO "tbl_class" ("class_id", "class_name") VALUES
	(11,'Std 10');
/*!40000 ALTER TABLE "tbl_class" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "com_id" int(11) NOT NULL auto_increment,
  "com_des" varchar(50) NOT NULL,
  "com_date" date NOT NULL,
  "com_time" time NOT NULL,
  "prnt_id" int(4) default NULL,
  PRIMARY KEY  ("com_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("com_id", "com_des", "com_date", "com_time", "prnt_id") VALUES
	(3,'overspeed','2018-11-06','10:06:20',1);
REPLACE INTO "tbl_complaint" ("com_id", "com_des", "com_date", "com_time", "prnt_id") VALUES
	(4,'bus late','2018-11-06','10:09:13',1);
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "dis_id" int(11) NOT NULL auto_increment,
  "dis_name" varchar(50) NOT NULL,
  "state_id" int(11) NOT NULL,
  PRIMARY KEY  ("dis_id")
) AUTO_INCREMENT=27;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(2,'Trissur',1);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(3,'Kasargod',1);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(5,'Idukki',1);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(6,'Idukki',1);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(7,'Trivandrum',1);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(15,'Ernakulam',11);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(16,'Thrissur',11);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(18,'Bangolore',3);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(19,'Kolar',3);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(20,'Chikmagalur',3);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(21,'Erode',4);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(22,'Tirunelveli',4);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(23,'Panaji',12);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(24,'Siligur',15);
REPLACE INTO "tbl_district" ("dis_id", "dis_name", "state_id") VALUES
	(26,'Idukki',11);
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_division'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_division" (
  "div_id" int(50) NOT NULL auto_increment,
  "div_name" varchar(50) NOT NULL,
  "class_id" int(11) NOT NULL,
  PRIMARY KEY  ("div_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_division'
#

LOCK TABLES "tbl_division" WRITE;
/*!40000 ALTER TABLE "tbl_division" DISABLE KEYS;*/
REPLACE INTO "tbl_division" ("div_id", "div_name", "class_id") VALUES
	(2,'A',1);
REPLACE INTO "tbl_division" ("div_id", "div_name", "class_id") VALUES
	(3,'B',1);
REPLACE INTO "tbl_division" ("div_id", "div_name", "class_id") VALUES
	(4,'A',2);
REPLACE INTO "tbl_division" ("div_id", "div_name", "class_id") VALUES
	(6,'A',2);
REPLACE INTO "tbl_division" ("div_id", "div_name", "class_id") VALUES
	(7,'A',4);
/*!40000 ALTER TABLE "tbl_division" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_driver'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_driver" (
  "dvr_id" int(11) NOT NULL auto_increment,
  "dvr_fname" varchar(50) NOT NULL,
  "dvr_lname" varchar(50) NOT NULL,
  "dvr_gender" varchar(50) NOT NULL,
  "dvr_hsname" varchar(50) NOT NULL,
  "dvr_pin" int(11) NOT NULL,
  "dvr_phno" varchar(11) NOT NULL,
  "dvr_email" varchar(50) NOT NULL,
  "dvr_licenceno" varchar(11) NOT NULL,
  "dvr_proof" varchar(50) NOT NULL,
  "dvr_dob" date NOT NULL,
  "dvr_username" varchar(50) NOT NULL,
  "dvr_pass" varchar(50) NOT NULL,
  "dvr_status" int(11) NOT NULL default '0',
  "place_id" int(11) NOT NULL,
  PRIMARY KEY  ("dvr_id")
) AUTO_INCREMENT=11;



#
# Dumping data for table 'tbl_driver'
#

LOCK TABLES "tbl_driver" WRITE;
/*!40000 ALTER TABLE "tbl_driver" DISABLE KEYS;*/
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(4,'Ashok','PR','male','Pulparambil house
',685567,'3214569877','ashok14@gmail.com','12n4343','proof_1620.PNG','2018-09-04','driver3','driver1',0,17);
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(5,'Basil','John','male','Madasseril',565456,'12348575858','john711@gmail.com','43431234','proof_1840.PNG','2018-09-05','driver3','driver3',0,17);
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(6,'Raghav','Ram','male','rose villas',4563778,'04852833749','aram@gmail.com','dfe3465fbd','proof_1325.PNG','2018-09-20','driver4','driver4',0,31);
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(7,'Shijo','DK','male','Pavels',545623,'954443464','dk14@gmail.com','12n43433','proof_1948.PNG','2018-09-03','driver5','driver5',0,14);
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(8,'Basil','PR','male','Vallar',5654563,'04852833749','basil71311@gmail.com','3435fg454','proof_1629.PNG','2018-09-04','driver3','driver3',0,33);
REPLACE INTO "tbl_driver" ("dvr_id", "dvr_fname", "dvr_lname", "dvr_gender", "dvr_hsname", "dvr_pin", "dvr_phno", "dvr_email", "dvr_licenceno", "dvr_proof", "dvr_dob", "dvr_username", "dvr_pass", "dvr_status", "place_id") VALUES
	(10,'Basil','ff','male','dfsfgsdfgdfsdf',565456344,'12348575','arya14@gmail.com','43431234','proof_1630.PNG','2018-09-05','driver4','driver4',0,35);
/*!40000 ALTER TABLE "tbl_driver" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_driverassign'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_driverassign" (
  "driverassign_id" int(11) NOT NULL auto_increment,
  "bus_id" int(11) NOT NULL,
  "dvr_id" int(11) NOT NULL,
  PRIMARY KEY  ("driverassign_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_driverassign'
#

LOCK TABLES "tbl_driverassign" WRITE;
/*!40000 ALTER TABLE "tbl_driverassign" DISABLE KEYS;*/
REPLACE INTO "tbl_driverassign" ("driverassign_id", "bus_id", "dvr_id") VALUES
	(1,0,4);
REPLACE INTO "tbl_driverassign" ("driverassign_id", "bus_id", "dvr_id") VALUES
	(3,7,5);
REPLACE INTO "tbl_driverassign" ("driverassign_id", "bus_id", "dvr_id") VALUES
	(5,6,6);
REPLACE INTO "tbl_driverassign" ("driverassign_id", "bus_id", "dvr_id") VALUES
	(12,7,5);
REPLACE INTO "tbl_driverassign" ("driverassign_id", "bus_id", "dvr_id") VALUES
	(13,7,6);
/*!40000 ALTER TABLE "tbl_driverassign" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_mainroute'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_mainroute" (
  "mainroute_id" int(11) NOT NULL auto_increment,
  "place_id" int(11) NOT NULL,
  PRIMARY KEY  ("mainroute_id")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tbl_mainroute'
#

LOCK TABLES "tbl_mainroute" WRITE;
/*!40000 ALTER TABLE "tbl_mainroute" DISABLE KEYS;*/
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(1,16);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(2,26);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(3,17);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(4,18);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(5,29);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(6,27);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(7,31);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(8,33);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(9,34);
REPLACE INTO "tbl_mainroute" ("mainroute_id", "place_id") VALUES
	(14,37);
/*!40000 ALTER TABLE "tbl_mainroute" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_notification'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_notification" (
  "noti_id" int(11) NOT NULL auto_increment,
  "noti_date" date NOT NULL,
  "noti_time" time NOT NULL,
  "noti_msg" varchar(50) NOT NULL,
  "dvr_id" int(11) NOT NULL,
  "status" int(11) NOT NULL default '0',
  PRIMARY KEY  ("noti_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_notification'
#

LOCK TABLES "tbl_notification" WRITE;
/*!40000 ALTER TABLE "tbl_notification" DISABLE KEYS;*/
REPLACE INTO "tbl_notification" ("noti_id", "noti_date", "noti_time", "noti_msg", "dvr_id", "status") VALUES
	(2,'2018-10-26','22:50:55','bus will be late for 30mnts',7,0);
REPLACE INTO "tbl_notification" ("noti_id", "noti_date", "noti_time", "noti_msg", "dvr_id", "status") VALUES
	(4,'2018-11-06','10:38:11','late for 5 mnts bcoz of rain',7,0);
REPLACE INTO "tbl_notification" ("noti_id", "noti_date", "noti_time", "noti_msg", "dvr_id", "status") VALUES
	(5,'2018-11-06','10:38:56','late bcoz of special class',7,0);
REPLACE INTO "tbl_notification" ("noti_id", "noti_date", "noti_time", "noti_msg", "dvr_id", "status") VALUES
	(6,'2018-11-06','16:31:31','bus will be early at muvattupuzha',7,0);
/*!40000 ALTER TABLE "tbl_notification" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_parent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_parent" (
  "prnt_id" int(11) NOT NULL auto_increment,
  "prnt_name" varchar(50) NOT NULL default '',
  "prnt_admno" varchar(50) NOT NULL,
  "prnt_address" varchar(50) NOT NULL,
  "prnt_age" int(11) NOT NULL,
  "prnt_gender" varchar(50) NOT NULL,
  "prnt_phno" varchar(20) NOT NULL,
  "prnt_email" varchar(50) NOT NULL,
  "prnt_username" varchar(50) NOT NULL,
  "prnt_pass" varchar(50) NOT NULL,
  "prnt_status" int(11) NOT NULL default '0',
  PRIMARY KEY  ("prnt_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_parent'
#

LOCK TABLES "tbl_parent" WRITE;
/*!40000 ALTER TABLE "tbl_parent" DISABLE KEYS;*/
REPLACE INTO "tbl_parent" ("prnt_id", "prnt_name", "prnt_admno", "prnt_address", "prnt_age", "prnt_gender", "prnt_phno", "prnt_email", "prnt_username", "prnt_pass", "prnt_status") VALUES
	(1,'athira kishor','M16CA014','vallarkkottu',45,'MALE','9544434626','athirakishore977@gmail.com','athira','athira',0);
REPLACE INTO "tbl_parent" ("prnt_id", "prnt_name", "prnt_admno", "prnt_address", "prnt_age", "prnt_gender", "prnt_phno", "prnt_email", "prnt_username", "prnt_pass", "prnt_status") VALUES
	(2,'Kishore','m17ca015','vallar',45,'MALE','9446866388','kishore@gmail.com','kishore','kishore',0);
REPLACE INTO "tbl_parent" ("prnt_id", "prnt_name", "prnt_admno", "prnt_address", "prnt_age", "prnt_gender", "prnt_phno", "prnt_email", "prnt_username", "prnt_pass", "prnt_status") VALUES
	(3,'Sarath','mac16va','puthedathu',50,'MALE','9658421348','sarath@gmail.com','sarath','sarath',0);
/*!40000 ALTER TABLE "tbl_parent" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_parstudent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_parstudent" (
  "ps_id" int(11) NOT NULL auto_increment,
  "prnt_id" int(11) NOT NULL,
  "stud_admno" varchar(20) NOT NULL,
  PRIMARY KEY  ("ps_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_parstudent'
#

LOCK TABLES "tbl_parstudent" WRITE;
/*!40000 ALTER TABLE "tbl_parstudent" DISABLE KEYS;*/
REPLACE INTO "tbl_parstudent" ("ps_id", "prnt_id", "stud_admno") VALUES
	(1,1,'5');
REPLACE INTO "tbl_parstudent" ("ps_id", "prnt_id", "stud_admno") VALUES
	(2,1,'7');
/*!40000 ALTER TABLE "tbl_parstudent" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_place'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_place" (
  "place_id" int(11) NOT NULL auto_increment,
  "place_name" varchar(50) NOT NULL,
  "dis_id" int(11) NOT NULL,
  PRIMARY KEY  ("place_id")
) AUTO_INCREMENT=38;



#
# Dumping data for table 'tbl_place'
#

LOCK TABLES "tbl_place" WRITE;
/*!40000 ALTER TABLE "tbl_place" DISABLE KEYS;*/
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(3,'Thodupuzha',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(5,'Muvattupuzha',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(7,'Avoli',1);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(11,'dd',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(14,'Temple road',2);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(15,'assdsd',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(16,'asf',3);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(26,'street',9);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(27,'Koratti',16);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(28,'Chalakkudi',16);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(29,'Selam',21);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(30,'Belari',19);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(31,'Gundogram',23);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(32,'Minarva ',24);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(33,'Muvattupuzha',15);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(34,'Thodupuzha',15);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(35,'Adimali',26);
REPLACE INTO "tbl_place" ("place_id", "place_name", "dis_id") VALUES
	(37,'Adimali',26);
/*!40000 ALTER TABLE "tbl_place" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_qrcode'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_qrcode" (
  "qrcode_id" int(11) NOT NULL auto_increment,
  "stud_id" int(11) NOT NULL,
  "pickup_time" time NOT NULL,
  "pickup_date" date NOT NULL,
  "pickup_address" varchar(200) NOT NULL,
  "dropdown_time" time NOT NULL default '00:00:00',
  "dropdown_address" varchar(200) NOT NULL default 'null',
  PRIMARY KEY  ("qrcode_id")
) AUTO_INCREMENT=18;



#
# Dumping data for table 'tbl_qrcode'
#

LOCK TABLES "tbl_qrcode" WRITE;
/*!40000 ALTER TABLE "tbl_qrcode" DISABLE KEYS;*/
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(1,5,'17:21:11','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','16:15:06','City:SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(2,5,'17:21:12','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(3,5,'17:21:13','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(4,5,'17:21:13','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(5,5,'17:21:14','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(6,5,'17:21:16','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(7,5,'17:21:17','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(8,5,'17:21:18','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(9,5,'17:21:19','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(10,5,'17:21:20','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(11,5,'17:21:21','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(12,5,'17:21:22','2018-11-14','City:14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','00:00:00','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(13,7,'17:27:59','2018-11-14','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','17:28:09','null');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(14,8,'17:28:18','2018-11-14','City:Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','18:03:44','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(15,9,'17:28:29','2018-11-14','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','15:58:30','City:Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(16,4,'17:28:42','2018-11-14','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','15:20:29','City:Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha');
REPLACE INTO "tbl_qrcode" ("qrcode_id", "stud_id", "pickup_time", "pickup_date", "pickup_address", "dropdown_time", "dropdown_address") VALUES
	(17,6,'17:29:08','2018-11-14','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha','18:02:29','City:Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, IndiaMuvattupuzha');
/*!40000 ALTER TABLE "tbl_qrcode" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_routeassign'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_routeassign" (
  "routeassign_id" int(11) NOT NULL auto_increment,
  "mainroute_id" int(11) NOT NULL,
  "bus_id" int(11) NOT NULL,
  PRIMARY KEY  ("routeassign_id")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tbl_routeassign'
#

LOCK TABLES "tbl_routeassign" WRITE;
/*!40000 ALTER TABLE "tbl_routeassign" DISABLE KEYS;*/
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(1,0,2);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(2,1,6);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(6,8,6);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(7,9,2);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(8,9,2);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(10,6,2);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(11,0,8);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(12,0,7);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(13,6,7);
REPLACE INTO "tbl_routeassign" ("routeassign_id", "mainroute_id", "bus_id") VALUES
	(14,7,8);
/*!40000 ALTER TABLE "tbl_routeassign" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_state" (
  "state_id" int(11) NOT NULL auto_increment,
  "state_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("state_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_state'
#

LOCK TABLES "tbl_state" WRITE;
/*!40000 ALTER TABLE "tbl_state" DISABLE KEYS;*/
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(3,'Karnataka');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(4,'TamilNadu');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(11,'Kerala');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(12,'Goa');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	(15,'West Bengal');
/*!40000 ALTER TABLE "tbl_state" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_student'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_student" (
  "stud_id" int(11) NOT NULL auto_increment,
  "stud_admno" varchar(50) NOT NULL,
  "stud_fname" varchar(50) NOT NULL,
  "stud_lname" varchar(50) NOT NULL,
  "stud_gender" varchar(10) NOT NULL,
  "stud_blood" varchar(10) NOT NULL,
  "stud_dob" date NOT NULL,
  "div_id" int(11) NOT NULL,
  "place_id" varchar(50) NOT NULL,
  PRIMARY KEY  ("stud_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_student'
#

LOCK TABLES "tbl_student" WRITE;
/*!40000 ALTER TABLE "tbl_student" DISABLE KEYS;*/
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(4,'m16ca014','jessica','john','female','B','2010-07-15',2,'7');
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(5,'m16ca014','Nivin','Paul','male','A','1995-07-01',3,'34');
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(6,'m16ca0131','Sherin','Benny','male','B','2001-05-03',4,'30');
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(7,'m16ca013','Sherin','Benny','female','O','2018-09-11',3,'30');
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(8,'m16ca0143','Athira','Kishore','female','A','2018-09-10',3,'33');
REPLACE INTO "tbl_student" ("stud_id", "stud_admno", "stud_fname", "stud_lname", "stud_gender", "stud_blood", "stud_dob", "div_id", "place_id") VALUES
	(9,'m16ca01314','Saviyo','Bennys','male','B','2018-09-02',6,'27');
/*!40000 ALTER TABLE "tbl_student" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_subroute'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_subroute" (
  "subroute_id" int(11) NOT NULL auto_increment,
  "place_id" int(11) NOT NULL,
  "mainroute_id" int(10) unsigned default NULL,
  PRIMARY KEY  ("subroute_id")
) AUTO_INCREMENT=18;



#
# Dumping data for table 'tbl_subroute'
#

LOCK TABLES "tbl_subroute" WRITE;
/*!40000 ALTER TABLE "tbl_subroute" DISABLE KEYS;*/
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(1,15,'17');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(3,18,'3');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(4,18,'3');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(5,27,'4');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(6,30,'5');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(7,28,'5');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(8,34,'8');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(9,34,'12');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(10,34,'13');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(11,28,'13');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(12,35,'9');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(14,28,'6');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(15,34,'9');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(16,33,'9');
REPLACE INTO "tbl_subroute" ("subroute_id", "place_id", "mainroute_id") VALUES
	(17,33,'14');
/*!40000 ALTER TABLE "tbl_subroute" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_tracklocation'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_tracklocation" (
  "track_id" int(11) NOT NULL auto_increment,
  "dvr_id" int(11) NOT NULL,
  "lattitude" varchar(50) NOT NULL,
  "longitude" varchar(50) NOT NULL,
  "date" date NOT NULL,
  "time" time NOT NULL,
  "locationplace" varchar(200) NOT NULL,
  PRIMARY KEY  ("track_id")
) AUTO_INCREMENT=267;



#
# Dumping data for table 'tbl_tracklocation'
#

LOCK TABLES "tbl_tracklocation" WRITE;
/*!40000 ALTER TABLE "tbl_tracklocation" DISABLE KEYS;*/
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(1,7,'9.9809921','76.5804063','2018-10-25','13:11:40','Latitude: 9.9809921
 Longitude: 76.5804063
Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India, null');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(2,7,'9.9809921','76.5804063','2018-10-25','13:11:41','Latitude: 9.9809921
 Longitude: 76.5804063
Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India, null');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(3,7,'9.9810237','76.5803983','2018-10-25','13:12:12','Latitude: 9.9810237
 Longitude: 76.5803983
Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India, null');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(4,7,'9.9809756','76.5804249','2018-10-25','13:13:14','Latitude: 9.9809756
 Longitude: 76.5804249
Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India, null');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(5,7,'9.980755','76.5806269','2018-10-25','15:44:41','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(6,7,'9.9806485','76.5806836','2018-10-25','15:44:55','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(7,7,'9.9806862','76.5806538','2018-10-25','15:45:16','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(8,7,'9.9807798','76.5806098','2018-10-25','15:45:36','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(9,7,'9.9807725','76.58061','2018-10-25','15:46:55','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(10,7,'9.98111','76.5803721','2018-10-25','15:47:39','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(11,7,'9.98111','76.5803721','2018-10-25','15:47:40','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(12,7,'9.9810097','76.5804181','2018-10-25','15:47:58','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(13,7,'9.9810097','76.5804181','2018-10-25','15:47:58','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(24,7,'9.9597373','76.5756191','2018-10-26','23:02:54','Main Central Road, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(25,7,'9.9597373','76.5756191','2018-10-26','23:02:55','Main Central Road, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(26,7,'9.9691715','76.5583569','2018-10-26','23:03:39','Shakthipuram - Kadathy Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(27,7,'9.9691715','76.5583569','2018-10-26','23:03:40','Shakthipuram - Kadathy Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(28,7,'9.9688778','76.5563107','2018-10-26','23:03:46','Unnamed Road, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(29,7,'9.9688778','76.5563107','2018-10-26','23:03:46','Unnamed Road, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(30,7,'9.9591499','76.5715265','2018-10-26','23:04:11','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(31,7,'9.9591499','76.5715265','2018-10-26','23:04:11','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(32,7,'9.9819644','76.5793456','2018-11-06','10:14:49','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(33,7,'9.9835837','76.5771785','2018-11-06','10:18:50','Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(34,7,'9.9819644','76.5793456','2018-11-06','10:33:15','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(35,7,'9.9819644','76.5793456','2018-11-06','10:33:15','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(36,7,'9.9819644','76.5793456','2018-11-06','10:37:09','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(37,7,'9.9819644','76.5793456','2018-11-06','10:37:09','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(38,7,'9.9819644','76.5793456','2018-11-06','10:39:20','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(39,7,'9.9843055','76.5777335','2018-11-06','16:30:49','Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(40,7,'9.9843055','76.5777335','2018-11-06','16:30:50','Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(41,7,'10.0399278','76.6183459','2018-11-09','15:15:36','varghese (Raju).padinjarekudyil jawahar Nagar ,JN.53, shethrapady, Mathirappilly, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(42,7,'10.0399278','76.6183459','2018-11-09','15:15:36','varghese (Raju).padinjarekudyil jawahar Nagar ,JN.53, shethrapady, Mathirappilly, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(43,7,'10.0500936','76.6161796','2018-11-09','15:16:00','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(44,7,'10.0500936','76.6161796','2018-11-09','15:16:00','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(45,7,'10.0399278','76.6183459','2018-11-09','15:16:14','varghese (Raju).padinjarekudyil jawahar Nagar ,JN.53, shethrapady, Mathirappilly, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(46,7,'10.0399278','76.6183459','2018-11-09','15:16:15','varghese (Raju).padinjarekudyil jawahar Nagar ,JN.53, shethrapady, Mathirappilly, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(47,7,'10.0500936','76.6161796','2018-11-09','15:16:39','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(48,7,'10.0500936','76.6161796','2018-11-09','15:16:39','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(49,7,'10.0428069','76.6302604','2018-11-09','15:18:06','Parachalippady Bus Stop, Kothamangalam - Vazhakulam Rd, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(50,7,'10.0428069','76.6302604','2018-11-09','15:18:06','Parachalippady Bus Stop, Kothamangalam - Vazhakulam Rd, Kothamangalam, Kerala 686691, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(51,7,'10.0500936','76.6161796','2018-11-09','15:18:31','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(52,7,'10.0500936','76.6161796','2018-11-09','15:18:31','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(53,7,'9.9868222','76.5728443','2018-11-12','15:50:52','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(54,7,'9.9868222','76.5728443','2018-11-12','15:50:52','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(55,7,'9.9816376','76.5797067','2018-11-12','15:51:05','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(56,7,'9.9816376','76.5797067','2018-11-12','15:51:05','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(57,7,'9.9816376','76.5797067','2018-11-12','15:56:22','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(58,7,'9.9816376','76.5797067','2018-11-12','15:56:22','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(59,7,'9.9845347','76.5753726','2018-11-12','15:57:19','Sub, Jail Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(60,7,'9.9845347','76.5753726','2018-11-12','15:57:19','Sub, Jail Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(61,7,'9.9816376','76.5797067','2018-11-12','15:57:43','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(62,7,'9.9816376','76.5797067','2018-11-12','15:57:43','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(63,7,'9.9845347','76.5753726','2018-11-12','15:59:04','Sub, Jail Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(64,7,'9.9845347','76.5753726','2018-11-12','15:59:04','Sub, Jail Rd, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(65,7,'9.9816376','76.5797067','2018-11-12','15:59:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(66,7,'9.9816376','76.5797067','2018-11-12','15:59:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(67,7,'9.9868222','76.5728443','2018-11-12','18:25:26','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(68,7,'9.9819644','76.5793456','2018-11-12','18:25:40','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(69,7,'9.9835984','76.5775397','2018-11-12','18:26:05','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(70,7,'9.9835984','76.5775397','2018-11-12','18:26:42','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(71,7,'9.9835984','76.5775397','2018-11-12','18:27:08','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(72,7,'9.9819644','76.5793456','2018-11-12','18:27:23','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(73,7,'10.0508068','76.6169017','2018-11-13','13:16:08','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(74,7,'10.0508068','76.6169017','2018-11-13','13:16:41','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(75,7,'10.0508068','76.6169017','2018-11-13','13:17:01','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(76,7,'10.0508068','76.6169017','2018-11-13','13:17:37','NSS Building, National Highway 85,1st Mile, Kothamangalam, Kerala 686 666,, Kothamangalam, Kerala 686666, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(77,7,'9.9790526','76.5833184','2018-11-14','16:26:57','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(78,7,'9.9790526','76.5833184','2018-11-14','16:27:13','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(79,7,'9.9835984','76.5775397','2018-11-14','16:27:39','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(80,1,'9.9835984','76.5775397','2018-11-14','16:28:16','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(81,7,'9.9819644','76.5793456','2018-11-14','16:28:57','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(82,1,'9.9819644','76.5793456','2018-11-14','16:28:57','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(83,7,'9.9790526','76.5833184','2018-11-14','16:29:12','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(84,1,'9.9790526','76.5833184','2018-11-14','16:29:12','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(85,7,'9.9835984','76.5775397','2018-11-14','16:30:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(86,1,'9.9835984','76.5775397','2018-11-14','16:30:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(87,7,'9.9790526','76.5833184','2018-11-14','16:30:59','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(88,1,'9.9790526','76.5833184','2018-11-14','16:30:59','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(89,7,'9.9868222','76.5728443','2018-11-14','16:31:14','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(90,1,'9.9868222','76.5728443','2018-11-14','16:31:14','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(91,7,'9.9790526','76.5833184','2018-11-14','16:31:57','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(92,1,'9.9790526','76.5833184','2018-11-14','16:31:57','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(93,7,'9.9819644','76.5793456','2018-11-14','16:48:41','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(94,7,'9.9868222','76.5728443','2018-11-14','16:48:56','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(95,7,'9.9819644','76.5793456','2018-11-14','16:49:21','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(96,7,'9.9819644','76.5793456','2018-11-14','16:50:12','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(97,7,'9.9819644','76.5793456','2018-11-14','16:50:12','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(98,7,'9.9868222','76.5728443','2018-11-14','16:50:52','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(99,7,'9.9868222','76.5728443','2018-11-14','16:50:52','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(100,7,'9.9819644','76.5793456','2018-11-14','16:51:11','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(101,7,'9.9819644','76.5793456','2018-11-14','16:51:11','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(102,7,'9.9819644','76.5793456','2018-11-14','16:51:36','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(103,7,'9.9790526','76.5833184','2018-11-14','16:52:18','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(104,7,'9.9790526','76.5833184','2018-11-14','16:52:19','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(105,7,'9.9790526','76.5833184','2018-11-14','16:52:19','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(106,7,'9.9835984','76.5775397','2018-11-14','16:52:33','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(107,7,'9.9835984','76.5775397','2018-11-14','16:52:34','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(108,7,'9.9835984','76.5775397','2018-11-14','16:52:34','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(109,7,'9.9868222','76.5728443','2018-11-14','16:52:58','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(110,7,'9.9868222','76.5728443','2018-11-14','16:52:59','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(111,7,'9.9868222','76.5728443','2018-11-14','16:52:59','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(112,7,'9.9835984','76.5775397','2018-11-14','16:53:14','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(113,7,'9.9835984','76.5775397','2018-11-14','16:53:14','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(114,7,'9.9835984','76.5775397','2018-11-14','16:53:14','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(115,7,'9.9790526','76.5833184','2018-11-14','16:55:01','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(116,7,'9.9790526','76.5833184','2018-11-14','16:55:01','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(117,7,'9.9790526','76.5833184','2018-11-14','16:55:01','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(118,7,'9.9835984','76.5775397','2018-11-14','16:55:16','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(119,7,'9.9835984','76.5775397','2018-11-14','16:55:16','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(120,7,'9.9835984','76.5775397','2018-11-14','16:55:16','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(121,7,'9.9790526','76.5833184','2018-11-14','16:56:22','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(122,7,'9.9790526','76.5833184','2018-11-14','16:56:22','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(123,7,'9.9790526','76.5833184','2018-11-14','16:56:22','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(124,7,'9.9835984','76.5775397','2018-11-14','16:57:02','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(125,7,'9.9835984','76.5775397','2018-11-14','16:57:02','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(126,7,'9.9835984','76.5775397','2018-11-14','16:57:02','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(127,7,'9.9868222','76.5728443','2018-11-14','16:58:22','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(128,7,'9.9868222','76.5728443','2018-11-14','16:58:22','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(129,7,'9.9868222','76.5728443','2018-11-14','16:58:22','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(130,7,'9.9868222','76.5728443','2018-11-14','17:08:25','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(131,7,'9.9835984','76.5775397','2018-11-14','17:08:34','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(132,7,'9.9790526','76.5833184','2018-11-14','17:09:09','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(133,7,'9.9790526','76.5833184','2018-11-14','17:20:54','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(134,7,'9.9819644','76.5793456','2018-11-14','17:21:09','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(135,7,'9.9790526','76.5833184','2018-11-14','17:21:43','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(136,7,'9.9868222','76.5728443','2018-11-14','17:22:09','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(137,7,'9.9790526','76.5833184','2018-11-14','17:27:29','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(138,7,'9.9835984','76.5775397','2018-11-14','17:27:44','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(139,7,'9.9790526','76.5833184','2018-11-14','17:28:04','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(140,7,'9.9835984','76.5775397','2018-11-14','17:28:18','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(141,7,'9.9790526','76.5833184','2018-11-14','17:29:15','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(142,7,'9.9835984','76.5775397','2018-11-14','17:29:30','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(143,7,'9.9835984','76.5775397','2018-11-14','17:29:30','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(144,7,'9.9790526','76.5833184','2018-11-14','17:36:38','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(145,7,'9.9790526','76.5833184','2018-11-14','17:36:38','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(146,7,'9.9835984','76.5775397','2018-11-14','17:37:18','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(147,7,'9.9835984','76.5775397','2018-11-14','17:37:18','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(148,7,'9.9790526','76.5833184','2018-11-14','17:42:39','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(149,7,'9.9790526','76.5833184','2018-11-14','17:42:40','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(150,7,'9.9835984','76.5775397','2018-11-14','17:42:54','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(151,7,'9.9835984','76.5775397','2018-11-14','17:42:54','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(152,7,'9.9790526','76.5833184','2018-11-14','17:43:20','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(153,7,'9.9790526','76.5833184','2018-11-14','17:43:21','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(154,7,'9.9835984','76.5775397','2018-11-14','17:44:43','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(155,7,'9.9835984','76.5775397','2018-11-14','17:44:43','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(156,7,'9.9790526','76.5833184','2018-11-14','17:44:57','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(157,7,'9.9790526','76.5833184','2018-11-14','17:44:58','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(158,7,'9.9835984','76.5775397','2018-11-14','17:46:03','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(159,7,'9.9835984','76.5775397','2018-11-14','17:46:03','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(160,7,'9.9790526','76.5833184','2018-11-14','18:02:04','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(161,7,'9.9790526','76.5833184','2018-11-14','18:02:04','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(162,7,'9.9835984','76.5775397','2018-11-14','18:02:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(163,7,'9.9835984','76.5775397','2018-11-14','18:02:19','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(164,7,'9.9790526','76.5833184','2018-11-14','18:03:49','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(165,7,'9.9790526','76.5833184','2018-11-14','18:03:49','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(166,7,'9.9819644','76.5793456','2018-11-14','18:04:30','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(167,7,'9.9819644','76.5793456','2018-11-14','18:04:30','14 Ward, 151 Aramana Junction, State Highway 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(168,7,'9.9790526','76.5833184','2018-11-14','18:05:09','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(169,7,'9.9790526','76.5833184','2018-11-14','18:05:09','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(170,7,'9.9835984','76.5775397','2018-11-14','18:05:26','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(171,7,'9.9835984','76.5775397','2018-11-14','18:05:26','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(172,7,'9.9790526','76.5833184','2018-11-14','18:06:10','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(173,7,'9.9790526','76.5833184','2018-11-14','18:06:10','Latha Bridge, Thodupuzha River, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(174,7,'9.9523202','76.5703416','2018-11-17','15:48:36','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(175,7,'9.9523202','76.5703416','2018-11-17','15:48:36','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(176,7,'9.959374','76.5644709','2018-11-17','15:48:55','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(177,7,'9.959374','76.5644709','2018-11-17','15:48:56','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(178,7,'9.959374','76.5644709','2018-11-17','15:49:04','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(179,7,'9.959374','76.5644709','2018-11-17','15:49:29','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(180,7,'9.9594564','76.5698612','2018-11-17','15:50:51','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(181,7,'9.9595388','76.5752515','2018-11-17','15:51:07','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(182,7,'9.9594564','76.5698612','2018-11-17','15:51:45','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(183,7,'9.959374','76.5644709','2018-11-17','15:52:08','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(184,7,'9.959374','76.5644709','2018-11-17','15:52:08','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(185,7,'9.959374','76.5644709','2018-11-17','15:52:08','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(186,7,'9.9594564','76.5698612','2018-11-17','15:52:46','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(187,7,'9.9594564','76.5698612','2018-11-17','15:52:46','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(188,7,'9.9594564','76.5698612','2018-11-17','15:52:46','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(189,7,'9.9594564','76.5698612','2018-11-17','15:52:46','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(190,7,'9.9595388','76.5752515','2018-11-17','15:55:17','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(191,7,'9.9595388','76.5752515','2018-11-17','15:55:17','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(192,7,'9.9594564','76.5698612','2018-11-17','15:55:17','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(193,7,'9.9594564','76.5698612','2018-11-17','15:55:18','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(194,7,'9.9594564','76.5698612','2018-11-17','15:55:18','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(195,7,'9.9594564','76.5698612','2018-11-17','15:55:18','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(196,7,'9.959374','76.5644709','2018-11-17','15:55:18','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(197,7,'9.959374','76.5644709','2018-11-17','15:55:18','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(198,7,'9.959374','76.5644709','2018-11-17','15:55:19','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(199,7,'9.959374','76.5644709','2018-11-17','15:55:19','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(200,7,'9.9523202','76.5703416','2018-11-17','15:55:19','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(201,7,'9.9523202','76.5703416','2018-11-17','15:55:19','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(202,7,'9.9523202','76.5703416','2018-11-17','15:55:19','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(203,7,'9.9523202','76.5703416','2018-11-17','15:55:19','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(204,7,'9.9452663','76.5762122','2018-11-17','15:55:35','DEEPAM TIMBER INDUSTRIES, C/o. K. C. PAILY, EAST MARADY, P.O, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(205,7,'9.9452663','76.5762122','2018-11-17','15:55:36','DEEPAM TIMBER INDUSTRIES, C/o. K. C. PAILY, EAST MARADY, P.O, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(206,7,'9.9452663','76.5762122','2018-11-17','15:55:36','DEEPAM TIMBER INDUSTRIES, C/o. K. C. PAILY, EAST MARADY, P.O, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(207,7,'9.9523202','76.5703416','2018-11-17','15:55:41','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(208,7,'9.9523202','76.5703416','2018-11-17','15:55:41','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(209,7,'9.9523202','76.5703416','2018-11-17','15:55:41','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(210,7,'9.9523202','76.5703416','2018-11-17','15:55:41','Nandhikara house,east marady,east marady p.o.muvattupuzha, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(211,7,'9.959374','76.5644709','2018-11-17','15:56:06','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(212,7,'9.959374','76.5644709','2018-11-17','15:56:06','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(213,7,'9.959374','76.5644709','2018-11-17','15:56:06','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(214,7,'9.959374','76.5644709','2018-11-17','15:56:06','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(215,7,'9.9594564','76.5698612','2018-11-17','15:56:22','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(216,7,'9.9594564','76.5698612','2018-11-17','15:56:22','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(217,7,'9.9594564','76.5698612','2018-11-17','15:56:22','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(218,7,'9.9594564','76.5698612','2018-11-17','15:56:22','Unnamed Road, Thottumkalpeedika, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(219,7,'9.9595388','76.5752515','2018-11-17','15:56:47','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(220,7,'9.9595388','76.5752515','2018-11-17','15:56:47','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(221,7,'9.9595388','76.5752515','2018-11-17','15:56:47','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(222,7,'9.9595388','76.5752515','2018-11-17','15:56:47','AJ Tower, SH41, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(223,7,'9.959374','76.5644709','2018-11-17','15:58:18','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(224,7,'9.959374','76.5644709','2018-11-17','15:58:19','Muvattupuzha Pampakuda Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(225,7,'9.9793794','76.5829572','2018-11-19','13:17:34','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(226,7,'9.9836426','76.5786232','2018-11-19','13:19:09','Tone Shotcut, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(227,7,'9.9793794','76.5829572','2018-11-19','13:19:42','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(228,7,'9.9836426','76.5786232','2018-11-19','13:20:06','Tone Shotcut, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(229,7,'9.9848762','76.5753726','2018-11-19','13:21:41','Life Metro, Oppo.Govt. Hospital, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(230,7,'9.9793794','76.5829572','2018-11-19','13:22:20','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(231,7,'9.9848762','76.5753726','2018-11-19','13:22:59','Life Metro, Oppo.Govt. Hospital, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(232,7,'9.9793794','76.5829572','2018-11-19','13:23:26','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(233,7,'9.9848762','76.5753726','2018-11-19','13:23:41','Life Metro, Oppo.Govt. Hospital, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(234,7,'9.9793794','76.5829572','2018-11-19','13:24:06','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(235,7,'9.9836426','76.5786232','2018-11-19','13:24:21','Tone Shotcut, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(236,7,'9.9793794','76.5829572','2018-11-19','13:24:46','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(237,7,'9.9848762','76.5753726','2018-11-19','13:25:42','Life Metro, Oppo.Govt. Hospital, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(238,7,'9.9836426','76.5786232','2018-11-19','13:26:08','Tone Shotcut, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(239,7,'9.9793794','76.5829572','2018-11-19','13:27:04','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(240,7,'9.9832569','76.5775397','2018-11-19','13:27:29','Main Central Road, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(241,7,'9.9836426','76.5786232','2018-11-19','13:27:44','Tone Shotcut, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(242,7,'9.9793794','76.5829572','2018-11-19','13:28:24','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(243,7,'9.9793794','76.5829572','2018-11-19','15:19:53','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(244,7,'9.9793794','76.5829572','2018-11-19','15:20:07','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(245,7,'9.9842962','76.5779009','2018-11-19','15:20:27','Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(246,7,'9.9842962','76.5779009','2018-11-19','15:20:27','Jail Rd, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(247,7,'9.9868222','76.5728443','2018-11-19','15:20:42','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(248,7,'9.9868222','76.5728443','2018-11-19','15:20:42','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(249,7,'9.9836131','76.5779009','2018-11-19','15:21:09','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(250,7,'9.9836131','76.5779009','2018-11-19','15:21:09','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(251,7,'9.9793794','76.5829572','2018-11-19','15:21:48','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(252,7,'9.9793794','76.5829572','2018-11-19','15:21:48','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(253,7,'9.9868222','76.5728443','2018-11-19','15:22:03','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(254,7,'9.9868222','76.5728443','2018-11-19','15:22:03','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(255,7,'9.9793794','76.5829572','2018-11-19','15:22:28','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(256,7,'9.9793794','76.5829572','2018-11-19','15:22:29','Thodupuzhayar Bridge, Thodupuzha - Muvattupuzha Rd, Kizhakkekara, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(257,7,'9.9868222','76.5728443','2018-11-19','15:22:43','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(258,7,'9.9868222','76.5728443','2018-11-19','15:22:44','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(259,7,'9.9836131','76.5779009','2018-11-19','15:23:08','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(260,7,'9.9836131','76.5779009','2018-11-19','15:23:08','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(261,7,'9.9836131','76.5779009','2018-11-19','16:13:04','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(262,7,'9.9836131','76.5779009','2018-11-19','16:16:49','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(263,7,'9.9868222','76.5728443','2018-11-19','16:17:59','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(264,7,'9.9868222','76.5728443','2018-11-19','16:18:00','ITR Rd, Vazhappily, Muvattupuzha, Kerala 686673, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(265,7,'9.9836131','76.5779009','2018-11-19','16:18:18','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
REPLACE INTO "tbl_tracklocation" ("track_id", "dvr_id", "lattitude", "longitude", "date", "time", "locationplace") VALUES
	(266,7,'9.9836131','76.5779009','2018-11-19','16:18:31','SNDP Junction Bus Stop, SH 1, Thottumkalpeedika, Muvattupuzha, Kerala 686661, India');
/*!40000 ALTER TABLE "tbl_tracklocation" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
