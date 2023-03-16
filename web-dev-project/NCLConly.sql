-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: new
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

UNLOCK TABLES;
drop database if exists darkarchorn$w42g2_lms;
create database darkarchorn$w42g2_lms;
use darkarchorn$w42g2_lms;

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add blacklisted token',6,'add_blacklistedtoken'),(22,'Can change blacklisted token',6,'change_blacklistedtoken'),(23,'Can delete blacklisted token',6,'delete_blacklistedtoken'),(24,'Can view blacklisted token',6,'view_blacklistedtoken'),(25,'Can add outstanding token',7,'add_outstandingtoken'),(26,'Can change outstanding token',7,'change_outstandingtoken'),(27,'Can delete outstanding token',7,'delete_outstandingtoken'),(28,'Can view outstanding token',7,'view_outstandingtoken'),(29,'Can add announcement',8,'add_announcement'),(30,'Can change announcement',8,'change_announcement'),(31,'Can delete announcement',8,'delete_announcement'),(32,'Can view announcement',8,'view_announcement'),(33,'Can add batch',9,'add_batch'),(34,'Can change batch',9,'change_batch'),(35,'Can delete batch',9,'delete_batch'),(36,'Can view batch',9,'view_batch'),(37,'Can add notification',10,'add_notification'),(38,'Can change notification',10,'change_notification'),(39,'Can delete notification',10,'delete_notification'),(40,'Can view notification',10,'view_notification'),(41,'Can add time table',11,'add_timetable'),(42,'Can change time table',11,'change_timetable'),(43,'Can delete time table',11,'delete_timetable'),(44,'Can view time table',11,'view_timetable'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add teacher',13,'add_teacher'),(50,'Can change teacher',13,'change_teacher'),(51,'Can delete teacher',13,'delete_teacher'),(52,'Can view teacher',13,'view_teacher'),(53,'Can add student',14,'add_student'),(54,'Can change student',14,'change_student'),(55,'Can delete student',14,'delete_student'),(56,'Can view student',14,'view_student'),(57,'Can add course',15,'add_course'),(58,'Can change course',15,'change_course'),(59,'Can delete course',15,'delete_course'),(60,'Can view course',15,'view_course'),(61,'Can add course post',16,'add_coursepost'),(62,'Can change course post',16,'change_coursepost'),(63,'Can delete course post',16,'delete_coursepost'),(64,'Can view course post',16,'view_coursepost'),(65,'Can add comment',17,'add_comment'),(66,'Can change comment',17,'change_comment'),(67,'Can delete comment',17,'delete_comment'),(68,'Can view comment',17,'view_comment'),(69,'Can add post',18,'add_post'),(70,'Can change post',18,'change_post'),(71,'Can delete post',18,'delete_post'),(72,'Can view post',18,'view_post');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_announcement`
--

DROP TABLE IF EXISTS `base_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_announcement`
--

LOCK TABLES `base_announcement` WRITE;
/*!40000 ALTER TABLE `base_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_batch`
--

DROP TABLE IF EXISTS `base_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_batch`
--

LOCK TABLES `base_batch` WRITE;
/*!40000 ALTER TABLE `base_batch` DISABLE KEYS */;
INSERT INTO `base_batch` VALUES (1,'N-CLC');
/*!40000 ALTER TABLE `base_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_notification`
--

DROP TABLE IF EXISTS `base_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `text` longtext NOT NULL,
  `isSeen` tinyint(1) NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `base_notification_course_id_cdf5aaba_fk_courses_course_code` (`course_id`),
  CONSTRAINT `base_notification_course_id_cdf5aaba_fk_courses_course_code` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification`
--

LOCK TABLES `base_notification` WRITE;
/*!40000 ALTER TABLE `base_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_notification_batch`
--

DROP TABLE IF EXISTS `base_notification_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_notification_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notification_id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_notification_batch_notification_id_batch_id_e379a3cc_uniq` (`notification_id`,`batch_id`),
  KEY `base_notification_batch_batch_id_5f2681df_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `base_notification_ba_notification_id_cb48eb44_fk_base_noti` FOREIGN KEY (`notification_id`) REFERENCES `base_notification` (`id`),
  CONSTRAINT `base_notification_batch_batch_id_5f2681df_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification_batch`
--

LOCK TABLES `base_notification_batch` WRITE;
/*!40000 ALTER TABLE `base_notification_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_notification_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_timetable`
--

DROP TABLE IF EXISTS `base_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_timetable` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `class_type` varchar(7) NOT NULL,
  `day` smallint unsigned NOT NULL,
  `start_time` time(6) NOT NULL,
  `end_time` time(6) NOT NULL,
  `course_id` varchar(15) NOT NULL,
  `teacher_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `base_timetable_course_id_6c98a006_fk_courses_course_code` (`course_id`),
  KEY `base_timetable_teacher_id_a5a1bcfa_fk_users_teacher_user_id` (`teacher_id`),
  CONSTRAINT `base_timetable_course_id_6c98a006_fk_courses_course_code` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`code`),
  CONSTRAINT `base_timetable_teacher_id_a5a1bcfa_fk_users_teacher_user_id` FOREIGN KEY (`teacher_id`) REFERENCES `users_teacher` (`user_id`),
  CONSTRAINT `base_timetable_chk_1` CHECK ((`day` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable`
--

LOCK TABLES `base_timetable` WRITE;
/*!40000 ALTER TABLE `base_timetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_timetable_batch`
--

DROP TABLE IF EXISTS `base_timetable_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_timetable_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `timetable_id` bigint NOT NULL,
  `batch_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `base_timetable_batch_timetable_id_batch_id_aa4ee98a_uniq` (`timetable_id`,`batch_id`),
  KEY `base_timetable_batch_batch_id_53293980_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `base_timetable_batch_batch_id_53293980_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`),
  CONSTRAINT `base_timetable_batch_timetable_id_83273c9c_fk_base_timetable_id` FOREIGN KEY (`timetable_id`) REFERENCES `base_timetable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable_batch`
--

LOCK TABLES `base_timetable_batch` WRITE;
/*!40000 ALTER TABLE `base_timetable_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_timetable_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course`
--

DROP TABLE IF EXISTS `courses_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course` (
  `name` varchar(100) NOT NULL,
  `code` varchar(15) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES ('Truyền thông số và mã hóa','ELT3057 40'),('Vật lý đại cương 2','EPN1096 40'),('Lịch sử Đảng Cộng sản Việt Nam','HIS1001 40'),('Lịch sử Đảng Cộng sản Việt Nam','HIS1001 42'),('Lịch sử Đảng Cộng sản Việt Nam','HIS1001 43'),('Nhập môn lập trình','INT1008 48'),('Lý thuyết thông tin','INT2044E 43'),('Cấu trúc dữ liệu và giải thuật','INT2210 44'),('Cấu trúc dữ liệu và giải thuật','INT2210 45'),('Cơ sở dữ liệu','INT2211 45'),('Kiến trúc phần mềm','INT3105 40'),('Phân tích và thiết kế hướng đối tượng','INT3110E 40'),('Quản lý dự án phần mềm','INT3111E 40'),('Thực hành hệ điều hành mạng','INT3301 40'),('Mạng không dây','INT3303 40'),('Phát triển ứng dụng Web','INT3306 42'),('An toàn và an ninh mạng','INT3307E 40'),('An toàn và an ninh mạng','INT3307E 41'),('Quản trị mạng','INT3310 40'),('Các thiết bị mạng và môi trường truyền','INT3318E 40'),('Học máy','INT3405E 40'),('Học máy','INT3405E 41'),('Đại số','MAT1093 42'),('Xác suất thống kê','MAT1101 40'),('Xác suất thống kê','MAT1101 41'),('Xác suất thống kê','MAT1101 44'),('Xác suất thống kê','MAT1101 46'),('Bóng chuyền 1','PES1015 1 (CLC)'),('Bóng chuyền 1','PES1015 7 (CLC)'),('Bóng chuyền 1','PES1015 9 (CLC)'),('Bóng chuyền hơi','PES1017 8 (CLC)'),('Bóng chuyền hơi','PES1017 9 (CLC)'),('Bóng rổ 1','PES1020 2 (CLC)'),('Bóng rổ 1','PES1020 6 (CLC)'),('Bóng đá','PES1025 1 (CLC)'),('Bóng đá','PES1025 2 (CLC)'),('Bóng đá','PES1025 5 (CLC)'),('Bóng bàn','PES1030 1 (CLC)'),('Cầu lông','PES1035 2 (CLC)'),('Teakwondo 1','PES1050 1 (CLC)'),('Golf','PES1080 1 (CLC)'),('Tư tưởng Hồ Chí Minh','POL1001 42'),('Tư tưởng Hồ Chí Minh','POL1001 45'),('Kỹ năng khởi nghiệp','UET1002 40'),('Kỹ năng khởi nghiệp','UET1002 43');
/*!40000 ALTER TABLE `courses_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_course_student`
--

DROP TABLE IF EXISTS `courses_course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_course_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` varchar(15) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_course_student_course_id_student_id_00813440_uniq` (`course_id`,`student_id`),
  KEY `courses_course_stude_student_id_408ccb9e_fk_users_stu` (`student_id`),
  CONSTRAINT `courses_course_stude_student_id_408ccb9e_fk_users_stu` FOREIGN KEY (`student_id`) REFERENCES `users_student` (`user_id`),
  CONSTRAINT `courses_course_student_course_id_90344f0b_fk_courses_course_code` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course_student`
--

LOCK TABLES `courses_course_student` WRITE;
/*!40000 ALTER TABLE `courses_course_student` DISABLE KEYS */;
INSERT INTO `courses_course_student` VALUES (124,'ELT3057 40',20),(170,'ELT3057 40',26),(62,'ELT3057 40',65),(4,'EPN1096 40',17),(8,'HIS1001 40',17),(219,'HIS1001 40',33),(312,'HIS1001 40',49),(15,'HIS1001 42',10),(226,'HIS1001 43',35),(416,'INT1008 48',64),(70,'INT2044E 43',9),(14,'INT2044E 43',10),(77,'INT2044E 43',11),(86,'INT2044E 43',12),(92,'INT2044E 43',13),(100,'INT2044E 43',14),(23,'INT2044E 43',15),(108,'INT2044E 43',16),(7,'INT2044E 43',17),(114,'INT2044E 43',18),(121,'INT2044E 43',19),(128,'INT2044E 43',20),(142,'INT2044E 43',22),(150,'INT2044E 43',23),(159,'INT2044E 43',24),(166,'INT2044E 43',25),(174,'INT2044E 43',26),(181,'INT2044E 43',27),(189,'INT2044E 43',28),(194,'INT2044E 43',29),(202,'INT2044E 43',30),(210,'INT2044E 43',31),(38,'INT2044E 43',32),(218,'INT2044E 43',33),(45,'INT2044E 43',34),(225,'INT2044E 43',35),(233,'INT2044E 43',36),(240,'INT2044E 43',37),(30,'INT2044E 43',38),(247,'INT2044E 43',39),(255,'INT2044E 43',40),(262,'INT2044E 43',41),(53,'INT2044E 43',42),(270,'INT2044E 43',43),(276,'INT2044E 43',44),(283,'INT2044E 43',45),(289,'INT2044E 43',46),(296,'INT2044E 43',47),(303,'INT2044E 43',48),(311,'INT2044E 43',49),(319,'INT2044E 43',50),(326,'INT2044E 43',51),(58,'INT2044E 43',52),(334,'INT2044E 43',53),(341,'INT2044E 43',54),(350,'INT2044E 43',55),(358,'INT2044E 43',56),(367,'INT2044E 43',57),(372,'INT2044E 43',58),(378,'INT2044E 43',59),(386,'INT2044E 43',60),(395,'INT2044E 43',61),(403,'INT2044E 43',62),(411,'INT2044E 43',63),(418,'INT2044E 43',64),(190,'INT2210 44',28),(379,'INT2210 45',59),(327,'INT2211 45',51),(427,'INT3105 40',66),(84,'INT3110E 40',12),(106,'INT3110E 40',16),(253,'INT3110E 40',40),(365,'INT3110E 40',57),(401,'INT3110E 40',62),(409,'INT3110E 40',63),(425,'INT3110E 40',66),(118,'INT3111E 40',19),(35,'INT3111E 40',32),(244,'INT3111E 40',39),(363,'INT3111E 40',57),(392,'INT3111E 40',61),(407,'INT3111E 40',63),(88,'INT3301 40',13),(19,'INT3301 40',15),(110,'INT3301 40',18),(138,'INT3301 40',22),(146,'INT3301 40',23),(155,'INT3301 40',24),(162,'INT3301 40',25),(206,'INT3301 40',31),(33,'INT3301 40',32),(214,'INT3301 40',33),(299,'INT3301 40',48),(315,'INT3301 40',50),(337,'INT3301 40',54),(345,'INT3301 40',55),(390,'INT3301 40',61),(69,'INT3303 40',9),(13,'INT3303 40',10),(76,'INT3303 40',11),(85,'INT3303 40',12),(91,'INT3303 40',13),(99,'INT3303 40',14),(22,'INT3303 40',15),(107,'INT3303 40',16),(6,'INT3303 40',17),(113,'INT3303 40',18),(120,'INT3303 40',19),(127,'INT3303 40',20),(132,'INT3303 40',21),(141,'INT3303 40',22),(149,'INT3303 40',23),(158,'INT3303 40',24),(165,'INT3303 40',25),(173,'INT3303 40',26),(180,'INT3303 40',27),(188,'INT3303 40',28),(193,'INT3303 40',29),(201,'INT3303 40',30),(209,'INT3303 40',31),(37,'INT3303 40',32),(217,'INT3303 40',33),(44,'INT3303 40',34),(224,'INT3303 40',35),(232,'INT3303 40',36),(239,'INT3303 40',37),(29,'INT3303 40',38),(246,'INT3303 40',39),(254,'INT3303 40',40),(261,'INT3303 40',41),(52,'INT3303 40',42),(269,'INT3303 40',43),(275,'INT3303 40',44),(282,'INT3303 40',45),(288,'INT3303 40',46),(295,'INT3303 40',47),(302,'INT3303 40',48),(310,'INT3303 40',49),(318,'INT3303 40',50),(325,'INT3303 40',51),(57,'INT3303 40',52),(333,'INT3303 40',53),(340,'INT3303 40',54),(349,'INT3303 40',55),(357,'INT3303 40',56),(366,'INT3303 40',57),(371,'INT3303 40',58),(377,'INT3303 40',59),(385,'INT3303 40',60),(394,'INT3303 40',61),(402,'INT3303 40',62),(410,'INT3303 40',63),(417,'INT3303 40',64),(64,'INT3303 40',65),(426,'INT3303 40',66),(68,'INT3306 42',9),(12,'INT3306 42',10),(75,'INT3306 42',11),(83,'INT3306 42',12),(90,'INT3306 42',13),(98,'INT3306 42',14),(21,'INT3306 42',15),(105,'INT3306 42',16),(112,'INT3306 42',18),(119,'INT3306 42',19),(126,'INT3306 42',20),(131,'INT3306 42',21),(140,'INT3306 42',22),(148,'INT3306 42',23),(157,'INT3306 42',24),(164,'INT3306 42',25),(172,'INT3306 42',26),(179,'INT3306 42',27),(187,'INT3306 42',28),(200,'INT3306 42',30),(208,'INT3306 42',31),(36,'INT3306 42',32),(216,'INT3306 42',33),(43,'INT3306 42',34),(223,'INT3306 42',35),(231,'INT3306 42',36),(238,'INT3306 42',37),(28,'INT3306 42',38),(245,'INT3306 42',39),(252,'INT3306 42',40),(260,'INT3306 42',41),(51,'INT3306 42',42),(268,'INT3306 42',43),(274,'INT3306 42',44),(281,'INT3306 42',45),(287,'INT3306 42',46),(294,'INT3306 42',47),(301,'INT3306 42',48),(309,'INT3306 42',49),(317,'INT3306 42',50),(324,'INT3306 42',51),(56,'INT3306 42',52),(332,'INT3306 42',53),(339,'INT3306 42',54),(348,'INT3306 42',55),(356,'INT3306 42',56),(364,'INT3306 42',57),(370,'INT3306 42',58),(376,'INT3306 42',59),(384,'INT3306 42',60),(393,'INT3306 42',61),(400,'INT3306 42',62),(408,'INT3306 42',63),(415,'INT3306 42',64),(424,'INT3306 42',66),(73,'INT3307E 40',9),(18,'INT3307E 40',10),(80,'INT3307E 40',11),(87,'INT3307E 40',12),(95,'INT3307E 40',13),(103,'INT3307E 40',14),(25,'INT3307E 40',15),(109,'INT3307E 40',16),(10,'INT3307E 40',17),(116,'INT3307E 40',18),(123,'INT3307E 40',19),(129,'INT3307E 40',20),(137,'INT3307E 40',21),(145,'INT3307E 40',22),(154,'INT3307E 40',23),(161,'INT3307E 40',24),(169,'INT3307E 40',25),(177,'INT3307E 40',26),(184,'INT3307E 40',27),(191,'INT3307E 40',28),(198,'INT3307E 40',29),(205,'INT3307E 40',30),(213,'INT3307E 40',31),(41,'INT3307E 40',32),(221,'INT3307E 40',33),(48,'INT3307E 40',34),(229,'INT3307E 40',35),(236,'INT3307E 40',36),(32,'INT3307E 40',38),(250,'INT3307E 40',39),(257,'INT3307E 40',40),(265,'INT3307E 40',41),(54,'INT3307E 40',42),(272,'INT3307E 40',43),(279,'INT3307E 40',44),(285,'INT3307E 40',45),(292,'INT3307E 40',46),(298,'INT3307E 40',47),(305,'INT3307E 40',48),(314,'INT3307E 40',49),(322,'INT3307E 40',50),(336,'INT3307E 40',53),(344,'INT3307E 40',54),(352,'INT3307E 40',55),(360,'INT3307E 40',56),(368,'INT3307E 40',57),(375,'INT3307E 40',58),(382,'INT3307E 40',59),(389,'INT3307E 40',60),(398,'INT3307E 40',61),(405,'INT3307E 40',62),(413,'INT3307E 40',63),(421,'INT3307E 40',64),(66,'INT3307E 40',65),(242,'INT3307E 41',37),(330,'INT3307E 41',51),(60,'INT3307E 41',52),(67,'INT3310 40',9),(11,'INT3310 40',10),(74,'INT3310 40',11),(82,'INT3310 40',12),(89,'INT3310 40',13),(97,'INT3310 40',14),(20,'INT3310 40',15),(104,'INT3310 40',16),(5,'INT3310 40',17),(111,'INT3310 40',18),(117,'INT3310 40',19),(125,'INT3310 40',20),(130,'INT3310 40',21),(139,'INT3310 40',22),(147,'INT3310 40',23),(156,'INT3310 40',24),(163,'INT3310 40',25),(171,'INT3310 40',26),(178,'INT3310 40',27),(186,'INT3310 40',28),(192,'INT3310 40',29),(199,'INT3310 40',30),(207,'INT3310 40',31),(34,'INT3310 40',32),(215,'INT3310 40',33),(42,'INT3310 40',34),(222,'INT3310 40',35),(230,'INT3310 40',36),(237,'INT3310 40',37),(27,'INT3310 40',38),(243,'INT3310 40',39),(251,'INT3310 40',40),(259,'INT3310 40',41),(50,'INT3310 40',42),(267,'INT3310 40',43),(273,'INT3310 40',44),(280,'INT3310 40',45),(286,'INT3310 40',46),(293,'INT3310 40',47),(300,'INT3310 40',48),(308,'INT3310 40',49),(316,'INT3310 40',50),(323,'INT3310 40',51),(55,'INT3310 40',52),(331,'INT3310 40',53),(338,'INT3310 40',54),(347,'INT3310 40',55),(355,'INT3310 40',56),(362,'INT3310 40',57),(369,'INT3310 40',58),(383,'INT3310 40',60),(391,'INT3310 40',61),(399,'INT3310 40',62),(406,'INT3310 40',63),(414,'INT3310 40',64),(63,'INT3310 40',65),(423,'INT3310 40',66),(71,'INT3318E 40',9),(16,'INT3318E 40',10),(78,'INT3318E 40',11),(135,'INT3318E 40',21),(143,'INT3318E 40',22),(152,'INT3318E 40',23),(175,'INT3318E 40',26),(182,'INT3318E 40',27),(196,'INT3318E 40',29),(211,'INT3318E 40',31),(39,'INT3318E 40',32),(220,'INT3318E 40',33),(46,'INT3318E 40',34),(227,'INT3318E 40',35),(234,'INT3318E 40',36),(31,'INT3318E 40',38),(263,'INT3318E 40',41),(271,'INT3318E 40',43),(284,'INT3318E 40',45),(290,'INT3318E 40',46),(304,'INT3318E 40',48),(320,'INT3318E 40',50),(328,'INT3318E 40',51),(342,'INT3318E 40',54),(351,'INT3318E 40',55),(359,'INT3318E 40',56),(373,'INT3318E 40',58),(380,'INT3318E 40',59),(387,'INT3318E 40',60),(396,'INT3318E 40',61),(420,'INT3318E 40',64),(65,'INT3318E 40',65),(134,'INT3405E 40',21),(195,'INT3405E 40',29),(203,'INT3405E 40',30),(248,'INT3405E 40',39),(277,'INT3405E 40',44),(93,'INT3405E 41',13),(101,'MAT1093 42',14),(81,'MAT1101 40',12),(306,'MAT1101 40',49),(353,'MAT1101 40',56),(96,'MAT1101 41',14),(61,'MAT1101 44',65),(3,'MAT1101 46',17),(185,'MAT1101 46',28),(72,'PES1015 1 (CLC)',9),(297,'PES1015 7 (CLC)',47),(59,'PES1015 7 (CLC)',52),(228,'PES1015 9 (CLC)',35),(264,'PES1015 9 (CLC)',41),(278,'PES1015 9 (CLC)',44),(381,'PES1015 9 (CLC)',59),(388,'PES1015 9 (CLC)',60),(183,'PES1017 8 (CLC)',27),(197,'PES1017 8 (CLC)',29),(136,'PES1017 9 (CLC)',21),(144,'PES1017 9 (CLC)',22),(176,'PES1017 9 (CLC)',26),(47,'PES1017 9 (CLC)',34),(321,'PES1017 9 (CLC)',50),(329,'PES1017 9 (CLC)',51),(412,'PES1017 9 (CLC)',63),(313,'PES1020 2 (CLC)',49),(102,'PES1020 6 (CLC)',14),(291,'PES1020 6 (CLC)',46),(397,'PES1025 1 (CLC)',61),(404,'PES1025 1 (CLC)',62),(79,'PES1025 2 (CLC)',11),(94,'PES1025 2 (CLC)',13),(168,'PES1025 2 (CLC)',25),(204,'PES1025 2 (CLC)',30),(235,'PES1025 2 (CLC)',36),(24,'PES1025 5 (CLC)',15),(153,'PES1025 5 (CLC)',23),(160,'PES1025 5 (CLC)',24),(212,'PES1025 5 (CLC)',31),(40,'PES1025 5 (CLC)',32),(256,'PES1025 5 (CLC)',40),(343,'PES1025 5 (CLC)',54),(374,'PES1025 5 (CLC)',58),(17,'PES1030 1 (CLC)',10),(9,'PES1030 1 (CLC)',17),(115,'PES1030 1 (CLC)',18),(241,'PES1035 2 (CLC)',37),(26,'PES1050 1 (CLC)',38),(49,'PES1050 1 (CLC)',42),(346,'PES1050 1 (CLC)',55),(354,'PES1050 1 (CLC)',56),(361,'PES1050 1 (CLC)',57),(422,'PES1050 1 (CLC)',66),(122,'PES1080 1 (CLC)',19),(249,'PES1080 1 (CLC)',39),(335,'PES1080 1 (CLC)',53),(419,'PES1080 1 (CLC)',64),(258,'POL1001 42',41),(266,'POL1001 42',43),(307,'POL1001 45',49),(133,'UET1002 40',21),(151,'UET1002 40',23),(167,'UET1002 43',25);
/*!40000 ALTER TABLE `courses_course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses_coursepost`
--

DROP TABLE IF EXISTS `courses_coursepost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses_coursepost` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `post_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `media_url` varchar(100) DEFAULT NULL,
  `courses_id` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_coursepost_courses_id_e18fb2e2_fk_courses_course_code` (`courses_id`),
  CONSTRAINT `courses_coursepost_courses_id_e18fb2e2_fk_courses_course_code` FOREIGN KEY (`courses_id`) REFERENCES `courses_course` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_coursepost`
--

LOCK TABLES `courses_coursepost` WRITE;
/*!40000 ALTER TABLE `courses_coursepost` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses_coursepost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-06 00:56:15.796044','2','2002',1,'[{\"added\": {}}]',12,1),(2,'2022-12-06 00:56:21.095291','1','ncc',1,'[{\"added\": {}}]',9,1),(3,'2022-12-06 00:56:23.800246','2','abc',1,'[{\"added\": {}}]',14,1),(4,'2022-12-06 00:58:04.923209','3','1232',1,'[{\"added\": {}}]',12,1),(5,'2022-12-06 00:58:13.678762','3','12323',1,'[{\"added\": {}}]',14,1),(6,'2022-12-06 00:58:51.539550','123124124','123124124',1,'[{\"added\": {}}]',15,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(8,'base','announcement'),(9,'base','batch'),(10,'base','notification'),(11,'base','timetable'),(4,'contenttypes','contenttype'),(15,'courses','course'),(16,'courses','coursepost'),(17,'forum','comment'),(18,'forum','post'),(5,'sessions','session'),(6,'token_blacklist','blacklistedtoken'),(7,'token_blacklist','outstandingtoken'),(14,'users','student'),(13,'users','teacher'),(12,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'courses','0001_initial','2022-12-06 00:54:51.267769'),(2,'base','0001_initial','2022-12-06 00:54:51.420242'),(3,'base','0002_initial','2022-12-06 00:54:51.480243'),(4,'contenttypes','0001_initial','2022-12-06 00:54:51.516741'),(5,'contenttypes','0002_remove_content_type_name','2022-12-06 00:54:51.583740'),(6,'auth','0001_initial','2022-12-06 00:54:51.771869'),(7,'auth','0002_alter_permission_name_max_length','2022-12-06 00:54:51.814541'),(8,'auth','0003_alter_user_email_max_length','2022-12-06 00:54:51.821044'),(9,'auth','0004_alter_user_username_opts','2022-12-06 00:54:51.828042'),(10,'auth','0005_alter_user_last_login_null','2022-12-06 00:54:51.834546'),(11,'auth','0006_require_contenttypes_0002','2022-12-06 00:54:51.837544'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-06 00:54:51.844542'),(13,'auth','0008_alter_user_username_max_length','2022-12-06 00:54:51.851044'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-06 00:54:51.858045'),(15,'auth','0010_alter_group_name_max_length','2022-12-06 00:54:51.873042'),(16,'auth','0011_update_proxy_permissions','2022-12-06 00:54:51.884042'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-06 00:54:51.892543'),(18,'users','0001_initial','2022-12-06 00:54:52.241021'),(19,'admin','0001_initial','2022-12-06 00:54:52.354149'),(20,'admin','0002_logentry_remove_auto_add','2022-12-06 00:54:52.365652'),(21,'admin','0003_logentry_add_action_flag_choices','2022-12-06 00:54:52.378649'),(22,'base','0003_initial','2022-12-06 00:54:52.604996'),(23,'courses','0002_initial','2022-12-06 00:54:52.702668'),(24,'forum','0001_initial','2022-12-06 00:54:52.734768'),(25,'forum','0002_initial','2022-12-06 00:54:52.914756'),(26,'sessions','0001_initial','2022-12-06 00:54:52.944255'),(27,'token_blacklist','0001_initial','2022-12-06 00:54:53.082759'),(28,'token_blacklist','0002_outstandingtoken_jti_hex','2022-12-06 00:54:53.108870'),(29,'token_blacklist','0003_auto_20171017_2007','2022-12-06 00:54:53.127767'),(30,'token_blacklist','0004_auto_20171017_2013','2022-12-06 00:54:53.179567'),(31,'token_blacklist','0005_remove_outstandingtoken_jti','2022-12-06 00:54:53.224280'),(32,'token_blacklist','0006_auto_20171017_2113','2022-12-06 00:54:53.247007'),(33,'token_blacklist','0007_auto_20171017_2214','2022-12-06 00:54:53.409437'),(34,'token_blacklist','0008_migrate_to_bigautofield','2022-12-06 00:54:53.619259'),(35,'token_blacklist','0010_fix_migrate_to_bigautofield','2022-12-06 00:54:53.638122'),(36,'token_blacklist','0011_linearizes_history','2022-12-06 00:54:53.641996'),(37,'token_blacklist','0012_alter_outstandingtoken_user','2022-12-06 00:54:53.657496');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5jm8c2q6kyf8xbr7egj712g7lj4wswho','.eJxVzM0OwiAQBOB34WxI-VHAo_c-A9llt1I1kJT2ZHx3S9KDXme-mbeIsK05bo2XOJO4CiVOvxlCenLpBT2g3KtMtazLjLITebRNjpX4dTvs30GGlvc1a_IWHQXrkvIK-TwFg8nYgRkD6KCNSTtwCMPEylP3Jnml1QUYUXy-8ck4Ww:1p2MFL:gaWfhwvMLTKyZ6nSK8fqXSPWyUyb3azOfyG4VJoeHJE','2022-12-20 00:55:43.550781'),('zhuo8fr2r8rsdsbf1it1odpj57ru6mp0','.eJxVzM0OwiAQBOB34WxI-VHAo_c-A9llt1I1kJT2ZHx3S9KDXme-mbeIsK05bo2XOJO4CiVOvxlCenLpBT2g3KtMtazLjLITebRNjpX4dTvs30GGlvc1a_IWHQXrkvIK-TwFg8nYgRkD6KCNSTtwCMPEylP3Jnml1QUYUXy-8ck4Ww:1p2NHV:Y80_gQOxH4maTShjh6T3Ikr5w9QSZ5OzxqjLHZEWEE4','2022-12-20 02:02:01.503644');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_comment`
--

DROP TABLE IF EXISTS `forum_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `text` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_comment_post_id_eb329692_fk_forum_post_id` (`post_id`),
  KEY `forum_comment_user_id_ee1c4b93_fk_users_user_id` (`user_id`),
  CONSTRAINT `forum_comment_post_id_eb329692_fk_forum_post_id` FOREIGN KEY (`post_id`) REFERENCES `forum_post` (`id`),
  CONSTRAINT `forum_comment_user_id_ee1c4b93_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_comment`
--

LOCK TABLES `forum_comment` WRITE;
/*!40000 ALTER TABLE `forum_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum_post`
--

DROP TABLE IF EXISTS `forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forum_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `likes` int unsigned NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `forum_post_user_id_9caccb96_fk_users_user_id` (`user_id`),
  CONSTRAINT `forum_post_user_id_9caccb96_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`),
  CONSTRAINT `forum_post_chk_1` CHECK ((`likes` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_users_use` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_student`
--

DROP TABLE IF EXISTS `users_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_student` (
  `user_id` bigint NOT NULL,
  `batch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `users_student_batch_id_e8543593_fk_base_batch_id` (`batch_id`),
  CONSTRAINT `users_student_batch_id_e8543593_fk_base_batch_id` FOREIGN KEY (`batch_id`) REFERENCES `base_batch` (`id`),
  CONSTRAINT `users_student_user_id_dc59cd64_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (2,1),(3,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1);
/*!40000 ALTER TABLE `users_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teacher`
--

DROP TABLE IF EXISTS `users_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_teacher` (
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `users_teacher_user_id_bc9e1389_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teacher`
--

LOCK TABLES `users_teacher` WRITE;
/*!40000 ALTER TABLE `users_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `enrollment_number` varchar(9) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enrollment_number` (`enrollment_number`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$320000$DOcolqujgenliCqvsPSvQW$mHb+nfKeKbTnPEtXtEJAt4NBLNTqcTEZ48Ykt9jkp1M=','2022-12-06 02:02:01.501145',1,'',1,1,'2022-12-06 00:55:33.636528','admin','admin','','A'),(2,'pbkdf2_sha256$320000$Wo4Ry34JhOcMUxLNmS0BZV$t7xRCaof4vYxqoRfuzEcZAZ7A0n12+jMs0XIq1x7HQ0=',NULL,0,'',0,1,'2022-12-06 00:56:15.619072','2002','abc','abc','S'),(3,'pbkdf2_sha256$320000$Wdt3jkzrkGdZ69aw7cSiBU$g7gdEnZdqKkmjTmgvTLST17Z5R3ZHBMvn3J1fcldsFA=',NULL,0,'',0,1,'2022-12-06 00:58:04.739714','1232','12323','12321','S'),(9,'pbkdf2_sha256$320000$NgMi8NS4JdMpgnkoEFxs03$0jXQ03CAcE2RpV7EYc0xpMF9thYN5mam/yg/cg/7H0w=',NULL,0,'',0,1,'2022-12-05 13:05:50.516611','20021280','An','Nguyễn Thành','S'),(10,'pbkdf2_sha256$320000$AsANFXqBav1ny4KObfFHPc$tUZDMQoELaHZXD8lc9ql9J1GsQiPHEYL4UXylF2vYws=',NULL,0,'',0,1,'2022-12-05 13:07:11.721693','20020180','Anh','Đỗ Huy','S'),(11,'pbkdf2_sha256$320000$QXobol1nskwnwTTvdyGbgN$P/dmUZOOBzE4biugZBqQM56/mxYVEvxKw6GfM8+qpko=',NULL,0,'',0,1,'2022-12-05 13:07:38.361848','20021289','Anh','Mai Hoàng','S'),(12,'pbkdf2_sha256$320000$JdYOmEzxzVCN4pb4mRIzYW$29q16uSlE+ib1ww3JRvzW9STxD81OGfxBZnBwcA1q34=',NULL,0,'',0,1,'2022-12-05 13:08:06.444648','20021293','Anh','Phạm Tuấn','S'),(13,'pbkdf2_sha256$320000$pcwlRYgW0WA2zULQ4LPtrV$fAMrs0eEpm9oMH7R2SLo3C8s1zaR8L2HtoUi2mVyqj0=',NULL,0,'',0,1,'2022-12-05 13:08:25.494960','20021297','Tuấn Anh','Trần','S'),(14,'pbkdf2_sha256$320000$YYpsTaeeSOAZ6HhpUuxD0s$Q3QpwpW4YVqqHp0sT0aiSEp64SBcap8X3D3Bmq/dDh0=',NULL,0,'',0,1,'2022-12-05 13:10:37.794939','20021306','Đức Chính','Nguyễn','S'),(15,'pbkdf2_sha256$320000$RDMc0ZeIWVoMNls0kIh10v$qYkrEkHWYsUMvWWDljWLwhq56S6osfeAruXycLbM9D0=',NULL,0,'',0,1,'2022-12-05 13:11:07.523769','20020181','Đức Dũng','Nguyễn','S'),(16,'pbkdf2_sha256$320000$iaiVPJfnbrJIP26FrkL9Z2$UGZVD2s3OTWC91R6KZjeITZ6svCXy+CuhdrtvFLU/Ic=',NULL,0,'',0,1,'2022-12-05 13:11:28.726571','20021317','Vĩnh Dũng','Nguyễn','S'),(17,'pbkdf2_sha256$320000$yEqeQE4VBNQQi46xcbbugM$yxZjsuCrFHOPmLe+IbX0tlGY1NAQxZk60Q1/TBlMRyk=',NULL,0,'',0,1,'2022-12-05 13:11:45.785108','20020007','Thái Dương','Nguyễn','S'),(18,'pbkdf2_sha256$320000$cbsFhMZjy5Vs2TMEn6R0w7$g1OZWEMPWtXdm3XkRxGmmrEznoMxhcmtzifonGh+AGQ=',NULL,0,'',0,1,'2022-12-05 13:12:02.576674','20021323','Minh Dương','Trần','S'),(19,'pbkdf2_sha256$320000$OMlVDO7Omv1CdjSdwMBaPJ$OyKPP4+xRZH6FrRDwwRqnj+ysRnCgSTpavZx0yXot9k=',NULL,0,'',0,1,'2022-12-05 13:12:20.513446','20021331','Văn Độ','Trương','S'),(20,'pbkdf2_sha256$320000$xdFAQDc8kcQvzlHDdeaGVY$/VKiDHsM6yTK90zyvId4TXDrjS6pH3gbs24PvvFdac0=',NULL,0,'',0,1,'2022-12-05 13:12:37.810432','20021334','Văn Đức','Đào','S'),(21,'pbkdf2_sha256$320000$G3gDncOA1dV8oJnHpug7s3$Fz6Zpdtu7TdAVJsTUdGNfyRp2OTm47OiOd6FzxNdODk=',NULL,0,'',0,1,'2022-12-05 13:13:06.802835','20021336','Anh Đức','Nguyễn','S'),(22,'pbkdf2_sha256$320000$Znh3VvZHrgoTUt9Nw2qC9D$mwvs0CIh0kCv8xRnB28ji0waqsbVNq7jHJuXeVYLTaU=',NULL,0,'',0,1,'2022-12-05 13:13:23.192309','20021340','Thu Giang','Hoàng','S'),(23,'pbkdf2_sha256$320000$TbtReJxkBLrds7rnye4ZBN$+AkKcAf3dbGx1QYPjigXDWj2m25CJ8qX0HbFPw4alMQ=',NULL,0,'',0,1,'2022-12-05 13:13:43.403867','20021342','Ngọc Hải','Nguyễn','S'),(24,'pbkdf2_sha256$320000$WxKpBuyP3ZapYtPIEJiteI$nWdjYuZ+7uVEgmCBN562pDnV1KyJFIMIK8v01BEq4og=',NULL,0,'',0,1,'2022-12-05 13:14:09.016116','20021348','Xuân Hiệp','Đỗ','S'),(25,'pbkdf2_sha256$320000$wmepoUb5r2VU5aKEosLYVT$WTCiiwb+M0BRFxU93N16LNYvTn/qvbl7YIQHCwGRLZQ=',NULL,0,'',0,1,'2022-12-05 13:14:31.507345','20021349','Ngọc Hiệp','Nguyễn','S'),(26,'pbkdf2_sha256$320000$sKu36Lx6mkuVD258l2GRXt$qJnxEslPRzQBofSuMybfPpQFmwHkRX6VW02X+x8rTIw=',NULL,0,'',0,1,'2022-12-05 13:14:58.174300','20021350','Tuấn Hiệp','Nguyễn','S'),(27,'pbkdf2_sha256$320000$lKPXjzfghMv01LTq2ozZ6V$ZmVDWRiqvTjv2gFYXtxMbwq8UbeCBvBTAVvf2sgpN60=',NULL,0,'',0,1,'2022-12-05 13:15:10.679146','20021354','Trung Hiếu','Lê','S'),(28,'pbkdf2_sha256$320000$RehMPAhqjnhCDsQLofG8Xf$PgjcluOlN4X7oS8QT3P5gY5KL1SyL3YOu6kDjYxG3Nw=',NULL,0,'',0,1,'2022-12-05 13:15:31.809503','20021355','Trọng Hiếu','Ngô Trần','S'),(29,'pbkdf2_sha256$320000$JHbGhnHiVeao5KIOvUaY4a$PbRIMzgMTZarwiEGmkKQFw0PfD/HvQTh9y1MX7s9cpk=',NULL,0,'',0,1,'2022-12-05 13:15:48.618111','20021359','Huy Hoàng','Bùi','S'),(30,'pbkdf2_sha256$320000$fsA0ryMdEV7djAUuIUqzcN$96vBePGF3/B89AM8GEN77ZwOGCU/mSB2MwrrnCq1m6o=',NULL,0,'',0,1,'2022-12-05 13:16:07.186689','20021361','Đình Hoàng','Nguyễn','S'),(31,'pbkdf2_sha256$320000$vVJDXKi8wkqghO02uzUXGz$7ccVVVrN9WXfe8HUIBVSxTuOq5Jg2TSIeIaiAyT/5W8=',NULL,0,'',0,1,'2022-12-05 13:16:29.896309','20021364','Mạnh Hùng','Cấn','S'),(32,'pbkdf2_sha256$320000$rTCG0JcOLu2ymxtEPEMl9U$rKB5hw23+84+C69PLNsttTKh2Rac8pFavtYYElNcA14=',NULL,0,'',0,1,'2022-12-05 13:16:46.062917','20020322','Mạnh Hùng','Đỗ Lê','S'),(33,'pbkdf2_sha256$320000$9GNMpviumxGBwXReth9yUg$nAcSfHTgiyoyhWl3pAkKXt2FDrK50jgBFULwOuH0V/s=',NULL,0,'',0,1,'2022-12-05 13:16:59.160845','20021365','Quang Huy','Đỗ','S'),(34,'pbkdf2_sha256$320000$ASucCs1arMGhOB714AsRkB$tqMKEjyJqhToiDj+y2zhdwzwNZqquuzjMK0IDQhqy28=',NULL,0,'',0,1,'2022-12-05 13:17:25.321932','20020323','Thanh Huyền','Hồ','S'),(35,'pbkdf2_sha256$320000$syRKCyBC0nGAlaRvnh6Q8v$3FKO1ChRQPiPCgcB6Ocg7+djJB6Cgfi0/uvNEDJw+1w=',NULL,0,'',0,1,'2022-12-05 13:17:40.153463','20021371','Duy Hưng','Trần','S'),(36,'pbkdf2_sha256$320000$eQZVGlArQhyrJZTT24lvWg$d7RqigB5lIqqPUb8RjTqVra+3Sh+2Flb9ULs+x0h2Ys=',NULL,0,'',0,1,'2022-12-05 13:17:58.206418','20021375','Văn Khánh','Nguyễn','S'),(37,'pbkdf2_sha256$320000$m6NAmG2G5EInyc8xHIFubI$XWfMCHRn10I03MawpRkOAx1xuOnJoyE4O6JeIeLCCr0=',NULL,0,'',0,1,'2022-12-05 13:18:10.405175','20021376','Công Khoa','Nguyễn','S'),(38,'pbkdf2_sha256$320000$k2c04jWIp7gSxcctcxhXFO$GUV356aDzoigfWXPuOQGo7aczPdGZcN3NpNQ6/82BbM=',NULL,0,'',0,1,'2022-12-05 13:18:25.691118','20020182','Trung Kiên','Đào','S'),(39,'pbkdf2_sha256$320000$B2x7BpdC23NOc4z6XfhL1k$HuvjywzvODxaRnmTvWwqtkV4MGL0zgtoNKPZxkWvZqk=',NULL,0,'',0,1,'2022-12-05 13:18:39.061962','20021378','Trung Kiên','Lương','S'),(40,'pbkdf2_sha256$320000$LFHQUlw2xVQ3kedWU3mF2t$wQJaKmPhunlu6pK5wpL9WYQeMwkidxdgZCcqS/m47GU=',NULL,0,'',0,1,'2022-12-05 13:18:52.693992','20021379','Duy Kiên','Nguyễn','S'),(41,'pbkdf2_sha256$320000$G0oeo3cyTX2cwZqo1WBMrQ$RnDjZ/o1Cy7Cjo5agV7NuIdwiITVFm4zcoNwpbbCrqs=',NULL,0,'',0,1,'2022-12-05 13:19:05.751275','20021383','Việt Linh','Đặng','S'),(42,'pbkdf2_sha256$320000$Qi7J3mJdMcvLAFJrJyG9zE$0g6t47Vy+X0ugA2D45yvjVgRRByWxoA4ivQOvjNKu/Y=',NULL,0,'',0,1,'2022-12-05 13:19:23.680498','20020324','Khánh Linh','Phạm Thị','S'),(43,'pbkdf2_sha256$320000$FXdhW7lY4JLIIMCP4RzkUr$YBO9y1cyc2z2VcddSpTkGVC5OieBE1hg93pG3z14aBI=',NULL,0,'',0,1,'2022-12-05 13:19:38.562764','20021387','Phúc Long','Nguyễn','S'),(44,'pbkdf2_sha256$320000$LgKkVRMy8XwAXCs5ohgCjK$tkioVOEb63gIl8707yXCHTWTtlim+bwL4Go4FGOdZH8=',NULL,0,'',0,1,'2022-12-05 13:20:07.104823','20021389','Thọ Lộc','Nguyễn Khánh','S'),(45,'pbkdf2_sha256$320000$Sj7ne1LP4isaNXGh05HeZJ$2Qo2fVmxXdGO/UfVUDBzQZH17Hkc0Fp2vN8ydtEiHWo=',NULL,0,'',0,1,'2022-12-05 13:20:23.539084','20021395','Quang Minh','Nguyễn','S'),(46,'pbkdf2_sha256$320000$QJv2coL41DAMFuQ9AVmtZU$DQp4neorEeiSisJlmTXgKZ65vr/+kVkLy2oHRa9ZUWI=',NULL,0,'',0,1,'2022-12-05 13:20:37.484456','20021398','Tuấn Nam','Nguyễn','S'),(47,'pbkdf2_sha256$320000$gLD39hidE3HNcfmugt8cSV$x6qgGhxdYu2C+GEkBTCOWyEQvaF342Pm0SO5pefNVwE=',NULL,0,'',0,1,'2022-12-05 13:20:48.879632','20021399','Thị Ngân','Trần','S'),(48,'pbkdf2_sha256$320000$kCqADz3IhoV0PM4QEmi0jS$24EpYmTSjrEA3pwS0X31WlkRxs5P+WEeYeD90xY2+p0=',NULL,0,'',0,1,'2022-12-05 13:21:05.093314','20021406','Phúc Nguyên','Nguyễn','S'),(49,'pbkdf2_sha256$320000$RMEkZUPOWRLzSNBb152QSc$ABbx18lakDDPMCatqZxojdn1vm0zH04E1vJK8QlXcDg=',NULL,0,'',0,1,'2022-12-05 13:21:19.314488','20021408','Cẩm Nhung','Lê Thị','S'),(50,'pbkdf2_sha256$320000$HMkkGHtoLQLvbzg1xV990m$A1BewtJ5vYGd9fV5Ful9u6b7pTAKfAewFOu6cWMQ3a8=',NULL,0,'',0,1,'2022-12-05 13:21:36.829786','20021413','Minh Quang','Phạm','S'),(51,'pbkdf2_sha256$320000$As63DVUvJ9LlncxnS5OnHz$LL5tiL9Afb12TIxfmncwkfFUzoVt2XnCFcd2KVSEUHU=',NULL,0,'',0,1,'2022-12-05 13:21:51.478358','20021414','Minh Quân','Đỗ','S'),(52,'pbkdf2_sha256$320000$JBjbrRhv65l5U7UV06ZS2x$wFs2QBRMJmAiNCf5jwhaCEwCxCfTsMAGqgRHdV+YQcg=',NULL,0,'',0,1,'2022-12-05 13:22:05.847048','20020325','Anh Quân','Phan','S'),(53,'pbkdf2_sha256$320000$MN8r23pd5LNpGDrke7fuQb$vE1W7CzJAe+m+eXmLSUqIYA9KOALT2NftxJTNg7mwgo=',NULL,0,'',0,1,'2022-12-05 13:22:23.678160','20021421','Thị Quyên','Phạm','S'),(54,'pbkdf2_sha256$320000$nsgM1OWFQlen01XuCfqakO$TkSDSsX0KXkPwlfJRfxCqUW2r8X+vB6gUVhyEZ36pzo=',NULL,0,'',0,1,'2022-12-05 13:22:41.113065','20021426','Thúy Quỳnh','Nguyễn Thị','S'),(55,'pbkdf2_sha256$320000$y32MopqycOxZSN3WYyG1r0$8qUHmeRQpVuQE/uqYKPLvrRyAnQ0ayAuaUMJnMF9M0Y=',NULL,0,'',0,1,'2022-12-05 13:23:01.507089','20021427','Minh Sơn','Bùi','S'),(56,'pbkdf2_sha256$320000$MSokGtb6rVuI8H8GUJXqyK$c6b0/NL6PwUPWPZK94vna4lZfF21DP6qVdPFYPvqssw=',NULL,0,'',0,1,'2022-12-05 13:23:14.541466','20021430','Ngọc Sơn','Nông','S'),(57,'pbkdf2_sha256$320000$kSzJPFlIKJjBmOs32lg56p$jYs923VhzvJngRVzldEyXD6rTdKWBa3PSQnWlcU2MtE=',NULL,0,'',0,1,'2022-12-05 13:23:36.158557','20021431','Mạnh Sơn','Trần','S'),(58,'pbkdf2_sha256$320000$Bhr4ysHuS3lStoIaUFHePi$y3lSTiCjBkS6E95RCYqibX0FxAXuvygOnH2toKL36aI=',NULL,0,'',0,1,'2022-12-05 13:23:47.553444','20021436','Viết Thành','Vũ','S'),(59,'pbkdf2_sha256$320000$0C98jWxtWFnNalXlTRGviv$I3TLoRuB8oHkl/ZJ40XGJFhS3ViSIwWFc9zlqXnxkfU=',NULL,0,'',0,1,'2022-12-05 13:23:59.878624','20021439','Duy Thắng','Phan','S'),(60,'pbkdf2_sha256$320000$u8zqzyqjxO7X4f5nez36aA$Ipf5fgq1F+A0iNa8JAVe4qqkUFTouBKa1iOeBXUmMPU=',NULL,0,'',0,1,'2022-12-05 13:24:17.148005','20021455','Thành Trung','Đặng','S'),(61,'pbkdf2_sha256$320000$DqxOPo6SwGxvUhibFfLyCl$RGKIEqX+4r3t/8+9p3NTUslQpFOZtm5+fRVVv4RVSgk=',NULL,0,'',0,1,'2022-12-05 13:24:27.514876','20021460','Anh Tú','Đỗ','S'),(62,'pbkdf2_sha256$320000$hPS5LC52eTvkkx5y4r4URM$DgC6e3n8vYJf+GrtjdGtBUK/5RAKMvy12FHFH8jBKsQ=',NULL,0,'',0,1,'2022-12-05 13:24:41.723397','20021464','Anh Tuấn','Lê','S'),(63,'pbkdf2_sha256$320000$GNK8PQChqpS1G2eCBl8pjo$Y7VtoT1xYOomqWrWcoMO49ZEMIyn2UZzlYVfEafx2jg=',NULL,0,'',0,1,'2022-12-05 13:24:55.880614','20021467','Thanh Tùng','Bá','S'),(64,'pbkdf2_sha256$320000$OOQuGWX9dQrUN7MU1e0hnd$qE0sh3lXGF+Hr3CnMq/X1rNjtZzhmvTNM6CZvahsTsk=',NULL,0,'',0,1,'2022-12-05 13:25:11.229347','20021475','Phương Uyên','Lê','S'),(65,'pbkdf2_sha256$320000$y6kbAnVihUByNWPwxmCRIs$YBg9iO9ssibny8pl+WLEB7NMEM9JxhyQChngeaAOnCM=',NULL,0,'',0,1,'2022-12-05 13:25:26.697653','20020326','Quốc Việt','Bùi','S'),(66,'pbkdf2_sha256$320000$WH0mSjGzMju2BmPPLQLJ5u$m+SSNbAadMMo+gX0arJF6tzQdtMNdefTiQGwHQpPzKQ=',NULL,0,'',0,1,'2022-12-05 13:25:37.651806','20021478','Công Vinh','Trình','S');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 14:09:21
