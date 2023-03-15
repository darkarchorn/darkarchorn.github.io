-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: w42g2_lms
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

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_announcement`
--

LOCK TABLES `base_announcement` WRITE;
/*!40000 ALTER TABLE `base_announcement` DISABLE KEYS */;
INSERT INTO `base_announcement` VALUES (1,'Hôm này nghỉ nhé các bé','\"Hôm này nghỉ nhé các bé\"','2022-12-07'),(2,'TALKSHOW EXPLORE TECHNOLOGY WITH VIETCOMBANK NGÀY 06/12/2022','Thời gian chương trình: 8h00 - 11h00 ngày 06/12/2022\r\nĐịa điểm: Tầng 1, Hội trường SunWah, 144 Xuân Thủy, Cầu Giấy, Hà Nội\r\nTham gia chương trình sẽ được phát số may mắn, cuối chương trình sẽ quay số với 05 phần quà may mắn, mỗi phần trị giá 1.000.000 đồng;','2022-12-07'),(3,'UET - THƯ MỜI THAM DỰ CHƯƠNG TRÌNH TỰ HÀO SINH VIÊN TRƯỜNG ĐẠI HỌC CÔNG NGHỆ : UET CONNECT 2022 - FI','Đoàn Thanh niên - Hội Sinh viên Trường Đại học Công nghệ trân trọng kính gửi các đồng chí thư mời tham dự Chương trình Tự hào sinh viên Trường Đại học Công nghệ \"UET CONNECT 2022 - VYTEC\'22\"\r\n\r\n- Thời gian: 8h00 - 22h30 ngày 04/12/2022 (Chủ Nhật)\r\n- Địa điểm: Trường Đại học Công nghệ, ĐHQGHN','2022-12-07');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_batch`
--

LOCK TABLES `base_batch` WRITE;
/*!40000 ALTER TABLE `base_batch` DISABLE KEYS */;
INSERT INTO `base_batch` VALUES (1,'K65 N-CLC'),(2,'K65 T-CLC');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification`
--

LOCK TABLES `base_notification` WRITE;
/*!40000 ALTER TABLE `base_notification` DISABLE KEYS */;
INSERT INTO `base_notification` VALUES (1,'Test thông báo 1','Test thông báo 1',0,'2022-12-07 15:57:20.337327','PES1080_1 (CLC)'),(2,'Test thông báo 2','Test thông báo 2',0,'2022-12-07 15:59:02.741715','PES1050_1 (CLC)');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_notification_batch`
--

LOCK TABLES `base_notification_batch` WRITE;
/*!40000 ALTER TABLE `base_notification_batch` DISABLE KEYS */;
INSERT INTO `base_notification_batch` VALUES (1,1,2),(2,2,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable`
--

LOCK TABLES `base_timetable` WRITE;
/*!40000 ALTER TABLE `base_timetable` DISABLE KEYS */;
INSERT INTO `base_timetable` VALUES (1,'lab',3,'16:43:58.000000','18:44:01.000000','INT3318E_40',47);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_timetable_batch`
--

LOCK TABLES `base_timetable_batch` WRITE;
/*!40000 ALTER TABLE `base_timetable_batch` DISABLE KEYS */;
INSERT INTO `base_timetable_batch` VALUES (1,1,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course`
--

LOCK TABLES `courses_course` WRITE;
/*!40000 ALTER TABLE `courses_course` DISABLE KEYS */;
INSERT INTO `courses_course` VALUES ('Truyền thông số và mã hóa','ELT3057_40'),('Lịch sử Đảng Cộng sản Việt Nam','HIS1001_40'),('Nhập môn lập trình','INT1008_48'),('Lý thuyết thông tin','INT2044E_43'),('Cấu trúc dữ liệu và giải thuật','INT2210_44'),('Cơ sở dữ liệu','INT2211_45'),('Thực hành hệ điều hành mạng','INT3301_40'),('Mạng không dây','INT3303_40'),('Phát triển ứng dụng Web','INT3306_42'),('An toàn và an ninh mạng','INT3307E_40'),('Quản trị mạng','INT3310_40'),('Các thiết bị mạng và môi trường truyền','INT3318E_40'),('Teakwondo 1','PES1050_1 (CLC)'),('Golf','PES1080_1 (CLC)'),('Tư tưởng Hồ Chí Minh','POL1001_42');
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_course_student`
--

LOCK TABLES `courses_course_student` WRITE;
/*!40000 ALTER TABLE `courses_course_student` DISABLE KEYS */;
INSERT INTO `courses_course_student` VALUES (1,'ELT3057_40',3),(2,'HIS1001_40',2),(3,'INT1008_48',4),(4,'INT2044E_43',5),(5,'INT2210_44',2),(70,'INT2210_44',3),(71,'INT2210_44',4),(72,'INT2210_44',5),(73,'INT2210_44',6),(74,'INT2210_44',7),(6,'INT2211_45',7),(8,'INT3301_40',7),(7,'INT3301_40',8),(9,'INT3303_40',4),(10,'INT3306_42',5),(11,'INT3307E_40',6),(12,'INT3310_40',2),(75,'INT3318E_40',2),(76,'INT3318E_40',3),(77,'INT3318E_40',4),(78,'INT3318E_40',5),(79,'INT3318E_40',6),(80,'INT3318E_40',7),(81,'INT3318E_40',8),(82,'INT3318E_40',9),(83,'INT3318E_40',10),(84,'INT3318E_40',11),(85,'INT3318E_40',12),(86,'INT3318E_40',13),(87,'INT3318E_40',14),(88,'INT3318E_40',15),(89,'INT3318E_40',16),(90,'INT3318E_40',17),(91,'INT3318E_40',18),(92,'INT3318E_40',19),(93,'INT3318E_40',20),(94,'INT3318E_40',21),(95,'INT3318E_40',22),(96,'INT3318E_40',23),(97,'INT3318E_40',24),(98,'INT3318E_40',25),(99,'INT3318E_40',26),(100,'INT3318E_40',27),(101,'INT3318E_40',28),(102,'INT3318E_40',29),(103,'INT3318E_40',30),(104,'INT3318E_40',31),(105,'INT3318E_40',32),(106,'INT3318E_40',33),(107,'INT3318E_40',34),(108,'INT3318E_40',35),(109,'INT3318E_40',36),(110,'INT3318E_40',37),(111,'INT3318E_40',38),(112,'INT3318E_40',39),(113,'INT3318E_40',40),(114,'INT3318E_40',41),(115,'INT3318E_40',42),(116,'INT3318E_40',43),(117,'INT3318E_40',44),(118,'INT3318E_40',45),(20,'PES1050_1 (CLC)',40),(21,'PES1050_1 (CLC)',41),(22,'PES1050_1 (CLC)',42),(23,'PES1050_1 (CLC)',43),(24,'PES1050_1 (CLC)',44),(25,'PES1080_1 (CLC)',2),(26,'PES1080_1 (CLC)',3),(27,'PES1080_1 (CLC)',4),(28,'PES1080_1 (CLC)',5),(29,'PES1080_1 (CLC)',6),(30,'PES1080_1 (CLC)',7),(31,'PES1080_1 (CLC)',8),(32,'PES1080_1 (CLC)',9),(33,'PES1080_1 (CLC)',10),(34,'PES1080_1 (CLC)',11),(35,'PES1080_1 (CLC)',12),(36,'PES1080_1 (CLC)',13),(37,'PES1080_1 (CLC)',14),(38,'PES1080_1 (CLC)',15),(39,'PES1080_1 (CLC)',16),(40,'PES1080_1 (CLC)',17),(41,'PES1080_1 (CLC)',18),(42,'PES1080_1 (CLC)',19),(43,'PES1080_1 (CLC)',20),(44,'PES1080_1 (CLC)',21),(45,'PES1080_1 (CLC)',22),(46,'PES1080_1 (CLC)',23),(47,'PES1080_1 (CLC)',24),(48,'PES1080_1 (CLC)',25),(49,'PES1080_1 (CLC)',26),(50,'PES1080_1 (CLC)',27),(51,'PES1080_1 (CLC)',28),(52,'PES1080_1 (CLC)',29),(53,'PES1080_1 (CLC)',30),(54,'PES1080_1 (CLC)',31),(55,'PES1080_1 (CLC)',32),(56,'PES1080_1 (CLC)',33),(57,'PES1080_1 (CLC)',34),(58,'PES1080_1 (CLC)',35),(59,'PES1080_1 (CLC)',36),(60,'PES1080_1 (CLC)',37),(61,'PES1080_1 (CLC)',38),(62,'PES1080_1 (CLC)',39),(63,'PES1080_1 (CLC)',40),(64,'PES1080_1 (CLC)',41),(65,'PES1080_1 (CLC)',42),(66,'PES1080_1 (CLC)',43),(67,'PES1080_1 (CLC)',44),(68,'PES1080_1 (CLC)',45),(69,'PES1080_1 (CLC)',46),(13,'POL1001_42',2),(14,'POL1001_42',3),(15,'POL1001_42',4),(16,'POL1001_42',5),(17,'POL1001_42',6),(18,'POL1001_42',7),(19,'POL1001_42',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses_coursepost`
--

LOCK TABLES `courses_coursepost` WRITE;
/*!40000 ALTER TABLE `courses_coursepost` DISABLE KEYS */;
INSERT INTO `courses_coursepost` VALUES (1,'2022-12-08 16:09:26.000000','Test courses post','abcdefgh','media/6.4.1_Packet_Tracer_-_Implement_Etherchannel.pka','INT2210_44'),(2,'2022-12-09 16:17:13.000000','Bài thực hành trên lab 404','Ngày hôm nay thầy có việc bận nên các em lên phòng lab 404 đê thực hành','media/6.2.4_Packet_Tracer_-_Configure_EtherChannel.pka','INT3318E_40'),(3,'2022-12-06 16:23:56.000000','6.4.1 Packet Tracer - Implement Etherchannel','Hôm nay lớp sẽ làm bài thực hành 6.4.1 trên phòng máy','media/CCNAv7_SRWE_Skills_Assessment.pka','INT3318E_40'),(4,'2022-12-07 16:36:53.000000','Test','test','media/Automobile_data.csv','INT3318E_40');
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-07 11:11:26.408212','2','20021427',1,'[{\"added\": {}}]',12,1),(2,'2022-12-07 11:23:58.172947','1','K65 N-CLC',1,'[{\"added\": {}}]',9,1),(3,'2022-12-07 11:24:51.808291','2','Bùi Minh Sơn',1,'[{\"added\": {}}]',14,1),(4,'2022-12-07 11:26:21.719407','3','20021280',1,'[{\"added\": {}}]',12,1),(5,'2022-12-07 11:26:29.373184','3','20021280',2,'[]',12,1),(6,'2022-12-07 11:27:05.176133','4','20020180',1,'[{\"added\": {}}]',12,1),(7,'2022-12-07 11:27:07.135070','4','20020180',2,'[]',12,1),(8,'2022-12-07 11:27:34.980015','5','20021289',1,'[{\"added\": {}}]',12,1),(9,'2022-12-07 11:27:37.010033','5','20021289',2,'[]',12,1),(10,'2022-12-07 11:28:49.684091','6','20021293',1,'[{\"added\": {}}]',12,1),(11,'2022-12-07 11:28:51.560732','6','20021293',2,'[]',12,1),(12,'2022-12-07 11:29:16.563770','7','20021297',1,'[{\"added\": {}}]',12,1),(13,'2022-12-07 11:29:19.400224','7','20021297',2,'[]',12,1),(14,'2022-12-07 11:29:40.862033','8','20021306',1,'[{\"added\": {}}]',12,1),(15,'2022-12-07 11:29:42.825484','8','20021306',2,'[]',12,1),(16,'2022-12-07 11:30:10.525295','9','20020181',1,'[{\"added\": {}}]',12,1),(17,'2022-12-07 11:30:13.523922','9','20020181',2,'[]',12,1),(18,'2022-12-07 11:30:35.997032','10','20021317',1,'[{\"added\": {}}]',12,1),(19,'2022-12-07 11:30:37.883296','10','20021317',2,'[]',12,1),(20,'2022-12-07 11:31:04.492533','11','20020007',1,'[{\"added\": {}}]',12,1),(21,'2022-12-07 11:31:23.574861','12','20021323',1,'[{\"added\": {}}]',12,1),(22,'2022-12-07 11:31:41.384904','13','20021331',1,'[{\"added\": {}}]',12,1),(23,'2022-12-07 11:31:43.128733','13','20021331',2,'[]',12,1),(24,'2022-12-07 11:32:12.837151','14','20021334',1,'[{\"added\": {}}]',12,1),(25,'2022-12-07 11:32:30.899403','15','20021336',1,'[{\"added\": {}}]',12,1),(26,'2022-12-07 11:32:49.686266','16','20021340',1,'[{\"added\": {}}]',12,1),(27,'2022-12-07 11:33:05.065660','16','20021340',2,'[]',12,1),(28,'2022-12-07 11:33:24.504657','17','20021342',1,'[{\"added\": {}}]',12,1),(29,'2022-12-07 11:33:41.048261','18','20021348',1,'[{\"added\": {}}]',12,1),(30,'2022-12-07 11:34:00.715512','19','20021349',1,'[{\"added\": {}}]',12,1),(31,'2022-12-07 11:34:18.210176','20','20021350',1,'[{\"added\": {}}]',12,1),(32,'2022-12-07 11:34:34.173865','21','20021354',1,'[{\"added\": {}}]',12,1),(33,'2022-12-07 11:34:52.415223','22','20021355',1,'[{\"added\": {}}]',12,1),(34,'2022-12-07 11:35:07.139759','23','20021359',1,'[{\"added\": {}}]',12,1),(35,'2022-12-07 11:35:21.542610','24','20021361',1,'[{\"added\": {}}]',12,1),(36,'2022-12-07 11:35:35.919173','25','20021364',1,'[{\"added\": {}}]',12,1),(37,'2022-12-07 11:35:53.380946','26','20020322',1,'[{\"added\": {}}]',12,1),(38,'2022-12-07 11:36:13.042769','27','20021365',1,'[{\"added\": {}}]',12,1),(39,'2022-12-07 11:36:29.035816','28','20020323',1,'[{\"added\": {}}]',12,1),(40,'2022-12-07 11:36:42.719863','29','20021371',1,'[{\"added\": {}}]',12,1),(41,'2022-12-07 11:36:58.934604','30','20021375',1,'[{\"added\": {}}]',12,1),(42,'2022-12-07 11:37:14.812559','31','20021376',1,'[{\"added\": {}}]',12,1),(43,'2022-12-07 11:37:30.007399','32','20020182',1,'[{\"added\": {}}]',12,1),(44,'2022-12-07 11:37:43.683850','33','20021378',1,'[{\"added\": {}}]',12,1),(45,'2022-12-07 11:38:04.371403','34','20021379',1,'[{\"added\": {}}]',12,1),(46,'2022-12-07 11:38:19.960270','35','20021383',1,'[{\"added\": {}}]',12,1),(47,'2022-12-07 11:38:36.208344','36','20020324',1,'[{\"added\": {}}]',12,1),(48,'2022-12-07 11:38:50.369314','37','20021387',1,'[{\"added\": {}}]',12,1),(49,'2022-12-07 11:39:18.371922','38','20021389',1,'[{\"added\": {}}]',12,1),(50,'2022-12-07 11:39:40.153252','39','20021395',1,'[{\"added\": {}}]',12,1),(51,'2022-12-07 11:40:02.134661','40','20021398',1,'[{\"added\": {}}]',12,1),(52,'2022-12-07 11:40:03.956338','40','20021398',2,'[]',12,1),(53,'2022-12-07 11:40:20.439779','41','20021399',1,'[{\"added\": {}}]',12,1),(54,'2022-12-07 11:42:12.468598','11','Nguyễn Thái Dương',1,'[{\"added\": {}}]',14,1),(55,'2022-12-07 11:42:17.112231','4','Đỗ Huy Anh',1,'[{\"added\": {}}]',14,1),(56,'2022-12-07 11:42:22.358103','9','Nguyễn Đức Dũng',1,'[{\"added\": {}}]',14,1),(57,'2022-12-07 11:42:25.940370','32','Đào Trung Kiên',1,'[{\"added\": {}}]',14,1),(58,'2022-12-07 11:42:30.265644','26','Đỗ Lê Mạnh Hùng',1,'[{\"added\": {}}]',14,1),(59,'2022-12-07 11:42:34.407913','28','Hồ Thanh Huyền',1,'[{\"added\": {}}]',14,1),(60,'2022-12-07 11:42:38.925672','36','Phạm Thị Khánh Linh',1,'[{\"added\": {}}]',14,1),(61,'2022-12-07 11:42:48.044211','3','Nguyễn Thành An',1,'[{\"added\": {}}]',14,1),(62,'2022-12-07 11:42:56.069705','5','Mai Hoàng Anh',1,'[{\"added\": {}}]',14,1),(63,'2022-12-07 11:42:59.531624','6','Phạm Tuấn Anh',1,'[{\"added\": {}}]',14,1),(64,'2022-12-07 11:43:03.326065','7','Trần Tuấn Anh',1,'[{\"added\": {}}]',14,1),(65,'2022-12-07 11:43:09.087772','8','Nguyễn Đức Chính',1,'[{\"added\": {}}]',14,1),(66,'2022-12-07 11:43:13.020000','10','Nguyễn Vĩnh Dũng',1,'[{\"added\": {}}]',14,1),(67,'2022-12-07 11:43:16.903380','12','Trần Minh Dương',1,'[{\"added\": {}}]',14,1),(68,'2022-12-07 11:43:27.167520','13','Trương Văn Độ',1,'[{\"added\": {}}]',14,1),(69,'2022-12-07 11:43:33.113291','14','Đào Văn Đức',1,'[{\"added\": {}}]',14,1),(70,'2022-12-07 11:43:37.467808','15','Nguyễn Anh Đức',1,'[{\"added\": {}}]',14,1),(71,'2022-12-07 11:43:41.010402','16','Hoàng Thu Giang',1,'[{\"added\": {}}]',14,1),(72,'2022-12-07 11:43:44.740214','17','Nguyễn Ngọc Hải',1,'[{\"added\": {}}]',14,1),(73,'2022-12-07 11:44:01.371122','25','Cấn Mạng Hùng',1,'[{\"added\": {}}]',14,1),(74,'2022-12-07 11:44:25.625206','18','Đỗ Xuân Hiệp',1,'[{\"added\": {}}]',14,1),(75,'2022-12-07 11:44:37.065571','19','Nguyễn Ngọc Hiệp',1,'[{\"added\": {}}]',14,1),(76,'2022-12-07 11:44:43.084096','20','Nguyễn Tuấn Hiệp',1,'[{\"added\": {}}]',14,1),(77,'2022-12-07 11:44:48.815491','21','Lê Trung Hiếu',1,'[{\"added\": {}}]',14,1),(78,'2022-12-07 11:44:55.318140','22','Ngô Trần Trọng Hiếu',1,'[{\"added\": {}}]',14,1),(79,'2022-12-07 11:45:01.871170','23','Bùi Huy Hoàng',1,'[{\"added\": {}}]',14,1),(80,'2022-12-07 11:45:09.515298','24','Nguyễn Đình Hoàng',1,'[{\"added\": {}}]',14,1),(81,'2022-12-07 11:45:20.038599','27','Đỗ Quang Huy',1,'[{\"added\": {}}]',14,1),(82,'2022-12-07 11:45:26.287200','29','Trần Duy Hưng',1,'[{\"added\": {}}]',14,1),(83,'2022-12-07 11:45:31.692456','30','Nguyễn Văn Khánh',1,'[{\"added\": {}}]',14,1),(84,'2022-12-07 11:45:36.754010','31','Nguyễn Công Khoa',1,'[{\"added\": {}}]',14,1),(85,'2022-12-07 11:45:43.056003','33','Lương Trung Kiên',1,'[{\"added\": {}}]',14,1),(86,'2022-12-07 11:45:58.417173','34','Nguyễn Duy Kiên',1,'[{\"added\": {}}]',14,1),(87,'2022-12-07 11:46:03.677460','35','Dặng Việt Linh',1,'[{\"added\": {}}]',14,1),(88,'2022-12-07 11:46:08.698065','37','Nguyễn Phúc Long',1,'[{\"added\": {}}]',14,1),(89,'2022-12-07 11:46:13.190517','38','Nguyễn Khánh Thọ Lộc',1,'[{\"added\": {}}]',14,1),(90,'2022-12-07 11:46:18.209254','39','Nguyễn Quang Minh',1,'[{\"added\": {}}]',14,1),(91,'2022-12-07 11:46:23.501590','40','Nguyễn Tuấn Nam',1,'[{\"added\": {}}]',14,1),(92,'2022-12-07 11:46:29.271608','41','Trần Thị Ngân',1,'[{\"added\": {}}]',14,1),(93,'2022-12-07 11:52:17.797942','1','TestPost',1,'[{\"added\": {}}]',18,1),(94,'2022-12-07 11:55:43.043400','ELT3057_40','ELT3057_40',1,'[{\"added\": {}}]',15,1),(95,'2022-12-07 11:57:12.456673','ELT3057_40','ELT3057_40',2,'[]',15,1),(96,'2022-12-07 11:57:44.623883','ELT3057_40','ELT3057_40',2,'[]',15,1),(97,'2022-12-07 12:00:16.038207','HIS1001_40','HIS1001_40',1,'[{\"added\": {}}]',15,1),(98,'2022-12-07 12:00:40.153482','INT1008_48','INT1008_48',1,'[{\"added\": {}}]',15,1),(99,'2022-12-07 12:00:53.270935','INT2044E_43','INT2044E_43',1,'[{\"added\": {}}]',15,1),(100,'2022-12-07 12:01:05.380463','INT2210_44','INT2210_44',1,'[{\"added\": {}}]',15,1),(101,'2022-12-07 12:01:17.181538','INT2211_45','INT2211_45',1,'[{\"added\": {}}]',15,1),(102,'2022-12-07 12:01:30.980394','INT3301_40','INT3301_40',1,'[{\"added\": {}}]',15,1),(103,'2022-12-07 12:01:41.889978','INT3303_40','INT3303_40',1,'[{\"added\": {}}]',15,1),(104,'2022-12-07 12:01:54.108734','INT3306_42','INT3306_42',1,'[{\"added\": {}}]',15,1),(105,'2022-12-07 12:02:06.670025','INT3307E_40','INT3307E_40',1,'[{\"added\": {}}]',15,1),(106,'2022-12-07 12:02:19.367883','INT3310_40','INT3310_40',1,'[{\"added\": {}}]',15,1),(107,'2022-12-07 12:04:46.206886','POL1001_42','POL1001_42',1,'[{\"added\": {}}]',15,1),(108,'2022-12-07 12:08:41.671128','1','Hôm này nghỉ nhé các bé',1,'[{\"added\": {}}]',8,1),(109,'2022-12-07 15:47:42.348415','2','K65 T-CLC',1,'[{\"added\": {}}]',9,1),(110,'2022-12-07 15:48:55.861560','42','20021281',1,'[{\"added\": {}}]',12,1),(111,'2022-12-07 15:49:28.672081','43','20020273',1,'[{\"added\": {}}]',12,1),(112,'2022-12-07 15:49:53.770649','44','20021290',1,'[{\"added\": {}}]',12,1),(113,'2022-12-07 15:50:10.320594','45','20021296',1,'[{\"added\": {}}]',12,1),(114,'2022-12-07 15:50:35.859620','46','20021298',1,'[{\"added\": {}}]',12,1),(115,'2022-12-07 15:50:58.089928','42','Phan Hiền An',1,'[{\"added\": {}}]',14,1),(116,'2022-12-07 15:51:06.620254','43','Nguyễn Bá Hà Anh',1,'[{\"added\": {}}]',14,1),(117,'2022-12-07 15:51:19.181784','44','Nguyễn Phạm Minh Anh',1,'[{\"added\": {}}]',14,1),(118,'2022-12-07 15:52:22.420836','45','Trần Đức Anh',1,'[{\"added\": {}}]',14,1),(119,'2022-12-07 15:52:31.853216','46','Vũ Nhật Anh',1,'[{\"added\": {}}]',14,1),(120,'2022-12-07 15:56:05.323689','PES1050_1 (CLC)','PES1050_1 (CLC)',1,'[{\"added\": {}}]',15,1),(121,'2022-12-07 15:56:33.695552','PES1080_1 (CLC)','PES1080_1 (CLC)',1,'[{\"added\": {}}]',15,1),(122,'2022-12-07 15:57:20.342680','1','Test thông báo 1',1,'[{\"added\": {}}]',10,1),(123,'2022-12-07 15:59:02.744059','2','Test thông báo 2',1,'[{\"added\": {}}]',10,1),(124,'2022-12-07 16:10:37.798462','1','CoursePost object (1)',1,'[{\"added\": {}}]',16,1),(125,'2022-12-07 16:11:18.960869','INT2210_44','INT2210_44',2,'[{\"changed\": {\"fields\": [\"Student\"]}}]',15,1),(126,'2022-12-07 16:16:03.033051','INT3318E_40','INT3318E_40',1,'[{\"added\": {}}]',15,1),(127,'2022-12-07 16:18:55.264409','2','CoursePost object (2)',1,'[{\"added\": {}}]',16,1),(128,'2022-12-07 16:21:45.977526','2','TALKSHOW EXPLORE TECHNOLOGY WITH VIETCOMBANK NGÀY 06/12/2022',1,'[{\"added\": {}}]',8,1),(129,'2022-12-07 16:22:46.960831','3','UET - THƯ MỜI THAM DỰ CHƯƠNG TRÌNH TỰ HÀO SINH VIÊN TRƯỜNG ĐẠI HỌC CÔNG NGHỆ : UET CONNECT 2022 - FI',1,'[{\"added\": {}}]',8,1),(130,'2022-12-07 16:25:25.605679','3','CoursePost object (3)',1,'[{\"added\": {}}]',16,1),(131,'2022-12-07 16:37:22.924217','4','CoursePost object (4)',1,'[{\"added\": {}}]',16,1),(132,'2022-12-10 11:13:24.299062','47','teacher1',1,'[{\"added\": {}}]',12,1),(133,'2022-12-10 11:13:36.582733','47','teacher1',1,'[{\"added\": {}}]',13,1),(134,'2022-12-10 11:14:09.084658','1','INT3318E_40 lab on Tuesday at 16:43:58',1,'[{\"added\": {}}]',11,1),(135,'2022-12-11 14:38:02.466249','4','CoursePost object (4)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(136,'2022-12-11 14:38:16.849355','4','CoursePost object (4)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(137,'2022-12-11 14:39:06.750059','3','CoursePost object (3)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(138,'2022-12-11 14:39:17.837148','3','CoursePost object (3)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(139,'2022-12-11 14:39:25.596556','2','CoursePost object (2)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(140,'2022-12-11 14:39:39.210265','2','CoursePost object (2)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(141,'2022-12-11 14:39:43.533605','1','CoursePost object (1)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1),(142,'2022-12-11 14:39:51.683853','1','CoursePost object (1)',2,'[{\"changed\": {\"fields\": [\"Media url\"]}}]',16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'courses','0001_initial','2022-12-07 10:59:40.320176'),(2,'base','0001_initial','2022-12-07 10:59:40.518878'),(3,'base','0002_initial','2022-12-07 10:59:40.573212'),(4,'contenttypes','0001_initial','2022-12-07 10:59:40.612694'),(5,'contenttypes','0002_remove_content_type_name','2022-12-07 10:59:40.700096'),(6,'auth','0001_initial','2022-12-07 10:59:40.894834'),(7,'auth','0002_alter_permission_name_max_length','2022-12-07 10:59:40.946068'),(8,'auth','0003_alter_user_email_max_length','2022-12-07 10:59:40.953053'),(9,'auth','0004_alter_user_username_opts','2022-12-07 10:59:40.959045'),(10,'auth','0005_alter_user_last_login_null','2022-12-07 10:59:40.964822'),(11,'auth','0006_require_contenttypes_0002','2022-12-07 10:59:40.967813'),(12,'auth','0007_alter_validators_add_error_messages','2022-12-07 10:59:40.975747'),(13,'auth','0008_alter_user_username_max_length','2022-12-07 10:59:40.981743'),(14,'auth','0009_alter_user_last_name_max_length','2022-12-07 10:59:40.990747'),(15,'auth','0010_alter_group_name_max_length','2022-12-07 10:59:41.006805'),(16,'auth','0011_update_proxy_permissions','2022-12-07 10:59:41.016703'),(17,'auth','0012_alter_user_first_name_max_length','2022-12-07 10:59:41.024682'),(18,'users','0001_initial','2022-12-07 10:59:41.372119'),(19,'admin','0001_initial','2022-12-07 10:59:41.491286'),(20,'admin','0002_logentry_remove_auto_add','2022-12-07 10:59:41.500029'),(21,'admin','0003_logentry_add_action_flag_choices','2022-12-07 10:59:41.511893'),(22,'base','0003_initial','2022-12-07 10:59:41.750482'),(23,'courses','0002_initial','2022-12-07 10:59:41.860227'),(24,'forum','0001_initial','2022-12-07 10:59:41.893838'),(25,'forum','0002_initial','2022-12-07 10:59:42.056908'),(26,'sessions','0001_initial','2022-12-07 10:59:42.089597'),(27,'token_blacklist','0001_initial','2022-12-07 10:59:42.240415'),(28,'token_blacklist','0002_outstandingtoken_jti_hex','2022-12-07 10:59:42.263436'),(29,'token_blacklist','0003_auto_20171017_2007','2022-12-07 10:59:42.283388'),(30,'token_blacklist','0004_auto_20171017_2013','2022-12-07 10:59:42.359402'),(31,'token_blacklist','0005_remove_outstandingtoken_jti','2022-12-07 10:59:42.411457'),(32,'token_blacklist','0006_auto_20171017_2113','2022-12-07 10:59:42.443072'),(33,'token_blacklist','0007_auto_20171017_2214','2022-12-07 10:59:42.621768'),(34,'token_blacklist','0008_migrate_to_bigautofield','2022-12-07 10:59:42.806103'),(35,'token_blacklist','0010_fix_migrate_to_bigautofield','2022-12-07 10:59:42.824056'),(36,'token_blacklist','0011_linearizes_history','2022-12-07 10:59:42.827226'),(37,'token_blacklist','0012_alter_outstandingtoken_user','2022-12-07 10:59:42.843811');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6d5xblimuepyqhpey13vvpignv1q5g2h','.eJxVjDkOwjAQRe_iGlle4mUo6TmDNTN2cADZUpYKcXeIlALa_977L5FwW2valjKnKYuz0OL0uxHyo7Qd5Du2W5fc2zpPJHdFHnSR157L83K4fwcVl_qtkQfLFtCg0gzg2EUmC36gHFUhD5B1MQXdANqOaIInnzkYFWIcgyXx_gDo-zfd:1p3xkM:5iFJyBEhWpzeBkiBTk17EEk7OX4_ReoK0SrNUv-MGsA','2022-12-24 11:10:22.677171'),('pcnfkl2dr8r9fx535a24lyz76h1teab9','.eJxVjDkOwjAQRe_iGlle4mUo6TmDNTN2cADZUpYKcXeIlALa_977L5FwW2valjKnKYuz0OL0uxHyo7Qd5Du2W5fc2zpPJHdFHnSR157L83K4fwcVl_qtkQfLFtCg0gzg2EUmC36gHFUhD5B1MQXdANqOaIInnzkYFWIcgyXx_gDo-zfd:1p2sK4:969kpguPgiuO_C5HZI6rzddAGsD6PKL9hEIfzeit8Zc','2022-12-21 11:10:44.258414');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_comment`
--

LOCK TABLES `forum_comment` WRITE;
/*!40000 ALTER TABLE `forum_comment` DISABLE KEYS */;
INSERT INTO `forum_comment` VALUES (1,'Check ok','2022-12-07 11:52:56.168824',1,11),(2,'Ai đó trả lời hộ tôi ','2022-12-07 16:14:17.767697',3,2),(3,'Đúng rồi đấy bạn, hình như tôi không thể like bài viết của bạn thì phải :(','2022-12-07 16:15:07.111142',3,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum_post`
--

LOCK TABLES `forum_post` WRITE;
/*!40000 ALTER TABLE `forum_post` DISABLE KEYS */;
INSERT INTO `forum_post` VALUES (1,'TestPost','TestPost',0,'2022-12-07 11:52:17.797628',11),(2,'TestPost2','TestPost2',0,'2022-12-07 11:54:02.527288',2),(3,'Câu hỏi về diễn đàn','Diễn đàn này được sử dụng cho các sinh viên trên toàn khoá ?',0,'2022-12-07 16:13:59.610555',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1,'2022-12-07 11:51:58.250407',1),(2,'2022-12-07 11:58:03.218197',3),(3,'2022-12-07 12:02:04.221580',4),(4,'2022-12-07 12:13:14.244654',9),(5,'2022-12-07 12:17:16.401113',10),(6,'2022-12-07 12:21:17.385656',11),(7,'2022-12-07 12:25:18.390870',12),(8,'2022-12-07 15:44:19.080210',13),(9,'2022-12-07 15:48:20.061015',15),(10,'2022-12-07 15:49:02.760109',14),(11,'2022-12-07 15:52:21.050565',16),(12,'2022-12-07 15:53:03.747249',17),(13,'2022-12-07 15:56:22.058790',18),(14,'2022-12-07 15:57:04.725541',19),(15,'2022-12-07 16:04:09.040331',24),(16,'2022-12-07 16:05:10.041740',25),(17,'2022-12-07 16:08:10.058250',26),(18,'2022-12-07 16:09:11.067162',27),(19,'2022-12-07 16:20:50.051552',29),(20,'2022-12-07 16:24:51.065718',32),(21,'2022-12-07 16:30:30.065359',33),(22,'2022-12-10 11:18:38.250620',37),(23,'2022-12-10 11:22:39.204154',38),(24,'2022-12-11 05:36:50.251119',39),(25,'2022-12-11 05:40:50.937748',40),(26,'2022-12-11 05:53:55.960873',41),(27,'2022-12-11 05:57:56.930764',42),(28,'2022-12-11 06:03:29.345759',43),(29,'2022-12-11 14:09:40.349848',44),(30,'2022-12-11 14:15:33.297028',45),(31,'2022-12-11 14:19:34.275340',46),(32,'2022-12-11 14:23:35.257213',47),(33,'2022-12-11 14:27:36.268123',48),(34,'2022-12-11 14:31:37.244526',49),(35,'2022-12-11 14:35:37.955158',51),(36,'2022-12-11 14:39:39.248164',54),(37,'2022-12-11 14:43:39.950360',57),(38,'2022-12-11 14:47:41.260434',58),(39,'2022-12-11 14:49:10.248978',56),(40,'2022-12-11 14:51:42.242687',59),(41,'2022-12-11 14:53:11.257678',60),(42,'2022-12-11 14:55:43.258538',61),(43,'2022-12-11 14:57:12.254599',62),(44,'2022-12-11 14:59:44.255730',63),(45,'2022-12-11 15:01:13.264999',64),(46,'2022-12-11 15:03:45.248544',65),(47,'2022-12-11 15:05:14.251718',66),(48,'2022-12-11 15:07:46.245226',67),(49,'2022-12-11 15:09:15.252359',68),(50,'2022-12-11 15:11:47.265034',69),(51,'2022-12-11 15:13:16.258693',70),(52,'2022-12-11 15:15:48.264634',71),(53,'2022-12-11 15:17:17.245341',72),(54,'2022-12-11 15:19:49.243341',73),(55,'2022-12-11 15:21:18.249081',74),(56,'2022-12-11 15:23:50.262987',75),(57,'2022-12-11 15:25:19.249342',76),(58,'2022-12-11 15:27:51.259125',77),(59,'2022-12-11 15:29:20.259033',78),(60,'2022-12-11 15:31:52.235149',79),(61,'2022-12-11 15:33:21.248652',80),(62,'2022-12-11 15:35:53.244096',81),(63,'2022-12-11 15:37:22.271618',82),(64,'2022-12-11 15:39:54.246261',83),(65,'2022-12-11 15:41:23.290175',84),(66,'2022-12-11 15:43:55.264310',85),(67,'2022-12-11 15:45:24.277728',86),(68,'2022-12-11 15:47:56.265157',87),(69,'2022-12-11 15:49:25.279705',88),(70,'2022-12-11 15:51:57.286337',89),(71,'2022-12-11 15:53:26.307579',90);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNTY2MSwiaWF0IjoxNjcwNDEzNjYxLCJqdGkiOiJiODEwNGIzNGE0YjI0ZjdhOGI4MGRhOWRkY2Y3NjU3MiIsInVzZXJfaWQiOjExfQ.52lo6g_RHDDOJ30AQoLLBBtR968AYXPRs__pYNcPDF8','2022-12-07 11:47:41.502592','2023-01-06 11:47:41.000000',11,'b8104b34a4b24f7a8b80da9ddcf76572'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNTk1MywiaWF0IjoxNjcwNDEzOTUzLCJqdGkiOiI2NzcxMDBhNDZkZmY0NzU3OWZmMGYxMDQ1Y2VmZmY3YSIsInVzZXJfaWQiOjExfQ.r1aNWDfP2fQB3MeZwCq9OOs3ZUqfTE3rZvn79LBuKoQ','2022-12-07 11:52:33.979845','2023-01-06 11:52:33.000000',11,'677100a46dff47579ff0f1045cefff7a'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNTk5NywiaWF0IjoxNjcwNDEzOTk3LCJqdGkiOiJlMDY4Mzg5YWI5MzA0ODA0YWM2ZWVlZDNkNmVlMWVjOCIsInVzZXJfaWQiOjJ9.YtAkqqmS8Gqzz9jhCVqrULw14snsWGXF6z3fGuTsn04','2022-12-07 11:53:17.869496','2023-01-06 11:53:17.000000',2,'e068389ab9304804ac6eeed3d6ee1ec8'),(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjI4MywiaWF0IjoxNjcwNDE0MjgzLCJqdGkiOiJlZTliNjNkOTYxZmY0NGVmOTE0YmJlODZhODAwZDk2YyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.IOftYYNDZEkAfUqrEgD7ZVpJ-VHB0CwyQTqaNTMr2Zk',NULL,'2023-01-06 11:58:03.000000',NULL,'ee9b63d961ff44ef914bbe86a800d96c'),(5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjU2MywiaWF0IjoxNjcwNDE0NTYzLCJqdGkiOiIyNTIwZGQzYmQ4YWQ0YTQxYjU1MzVhZjlmOGM0YTAzOSIsInVzZXJfaWQiOjJ9.M7_a3atTcJyeSC7lMrkQiVEEXjMaz8ph7U_yE8pZcTc','2022-12-07 12:02:43.637896','2023-01-06 12:02:43.000000',2,'2520dd3bd8ad4a41b5535af9f8c4a039'),(6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjYxNCwiaWF0IjoxNjcwNDE0NjE0LCJqdGkiOiI1MmNjYzYxNGVkYWE0YmZjYmQwMmUzMWY4NTY4YjFlMCIsInVzZXJfaWQiOjQxfQ.6MevVL_g3bsCrh0Td-MhiU7CP8On0FTjkaQgTZm9SuI','2022-12-07 12:03:34.081962','2023-01-06 12:03:34.000000',41,'52ccc614edaa4bfcbd02e31f8568b1e0'),(7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjgxNywiaWF0IjoxNjcwNDE0ODE3LCJqdGkiOiJiODY2MTE2ZjI0YTI0OWExYWNjM2QwNzdjODYzMjNkMSIsInVzZXJfaWQiOjJ9.tqkMRmtBXn1n4z_FXxwKYKUUUgYZnytUBpn4OxjEkWY','2022-12-07 12:06:57.393678','2023-01-06 12:06:57.000000',2,'b866116f24a249a1acc3d077c86323d1'),(8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjkzMiwiaWF0IjoxNjcwNDE0OTMyLCJqdGkiOiI1NTRjNzJkMTEzYmQ0ZjE0YTRkYTI5ZTU1NjZkMzZkMyIsInVzZXJfaWQiOjJ9.5l4JjhMtsPIVRGacqzK9njMzM8n4KeO97_AfoSv2vqc','2022-12-07 12:08:52.549399','2023-01-06 12:08:52.000000',2,'554c72d113bd4f14a4da29e5566d36d3'),(9,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNjk1MywiaWF0IjoxNjcwNDE0OTUzLCJqdGkiOiJjNjgxNmM1ZWYwNjM0ZjlhOTdhZjdmMWFiNGE3NWI2YyIsInVzZXJfaWQiOjExfQ.IcxMOOcoK09KmjPyHPEB0I9u8zJMD-v2FuaUp5myOSQ','2022-12-07 12:09:13.820080','2023-01-06 12:09:13.000000',11,'c6816c5ef0634f9a97af7f1ab4a75b6c'),(10,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNzE5NCwiaWF0IjoxNjcwNDE1MTk0LCJqdGkiOiIzMzE2YTcxZGM3N2E0MjU2ODk0Nzg1ODNiODBmMGNiYyIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.Z1lJ2Fs0dOGPEIzZBOZIGBrDj7CSdocH2VFK2de6oNE',NULL,'2023-01-06 12:13:14.000000',NULL,'3316a71dc77a425689478583b80f0cbc'),(11,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNzQzNiwiaWF0IjoxNjcwNDE1NDM2LCJqdGkiOiI1MmRiM2EyMDIzY2Y0OTNmYmNkNGI0YmQ3YjVhNTdlZCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.-n0kySoSqTNS_AcNQo61GrSINmSS0yvWPN39EOaH5gA',NULL,'2023-01-06 12:17:16.000000',NULL,'52db3a2023cf493fbcd4b4bd7b5a57ed'),(12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAwNzY3NywiaWF0IjoxNjcwNDE1Njc3LCJqdGkiOiIxZTc5YTczZjM3Yzg0NTdhYjQ1MTQ5ZTJjNGE2NGE1OSIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.UuD2O-BfTeU7KDOxPgRY3vRYozbccxe96IFS_dlCOP0',NULL,'2023-01-06 12:21:17.000000',NULL,'1e79a73f37c8457ab45149e2c4a64a59'),(13,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAxOTYxMywiaWF0IjoxNjcwNDI3NjEzLCJqdGkiOiJlNTNmM2YxYzExNWQ0YzlhOGEyYzBkMGUzMGVhNjhjYiIsInVzZXJfaWQiOjJ9.H2gCSuBn3Wd58E36-H8CEKRh3pp2QX4N-1i3J6_2uWo','2022-12-07 15:40:13.055834','2023-01-06 15:40:13.000000',2,'e53f3f1c115d4c9a8a2c0d0e30ea68cb'),(14,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAxOTkwMiwiaWF0IjoxNjcwNDI3OTAyLCJqdGkiOiI3MWMzMGIzZDI4NGE0OTgyOGNlMWZjYzc4MjhlOWU2MSIsInVzZXJfaWQiOjExfQ.CI0OFeBhZY8f10S8v4uhJPKeI7wWUVhTp-DjEVA9ZSk','2022-12-07 15:45:02.582314','2023-01-06 15:45:02.000000',11,'71c30b3d284a49828ce1fcc7828e9e61'),(15,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAxOTg1OSwiaWF0IjoxNjcwNDI3ODU5LCJqdGkiOiJjYWVjMWM0Nzk4YzM0MjkxODkwNWM2Y2NlYzM1NGQ2MCIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.LauYtIGTube_7ITR1E8m-XE1FUDnAicRE-KIgYp_i4o',NULL,'2023-01-06 15:44:19.000000',NULL,'caec1c4798c342918905c6ccec354d60'),(16,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDEwMCwiaWF0IjoxNjcwNDI4MTAwLCJqdGkiOiJlNjEzYzhmM2U1NmM0MzVmYmE2N2I4YzRiZmY1MDc1OSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.eqnqaxMAfspHfChv1JI1l9GVvVfr_Nh5HZdPtyonaNE',NULL,'2023-01-06 15:48:20.000000',NULL,'e613c8f3e56c435fba67b8c4bff50759'),(17,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDE0MiwiaWF0IjoxNjcwNDI4MTQyLCJqdGkiOiJiM2EzNjFlMzE3ZTI0OTIyYjMyOTFhOTY5ZjYzNWIzOCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.SoSyFan-OkCh00QkyGz-uMUVlPZ-l92gFmtaAbDbM1k',NULL,'2023-01-06 15:49:02.000000',NULL,'b3a361e317e24922b3291a969f635b38'),(18,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDM0MSwiaWF0IjoxNjcwNDI4MzQxLCJqdGkiOiIzOWZmZWUyMWY3OTQ0NTVjYTY3NjJhMWM3M2QxM2IxNSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.wXS5H8jnKlfM-cXSfyZGDcqG4W9jrQCg2YDEbgkfBrI',NULL,'2023-01-06 15:52:21.000000',NULL,'39ffee21f794455ca6762a1c73d13b15'),(19,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDM4MywiaWF0IjoxNjcwNDI4MzgzLCJqdGkiOiI5ZTU4MWI0N2VkMDc0N2Q0YTE3YjhhZmI5MzQyOGVkZiIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.EmyynaH-lzQQaWcL648zDC7ZwTkJpAPT4u367oOEVIY',NULL,'2023-01-06 15:53:03.000000',NULL,'9e581b47ed0747d4a17b8afb93428edf'),(20,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDY1NSwiaWF0IjoxNjcwNDI4NjU1LCJqdGkiOiJjMmVlZmMwYWI3MDc0NjE3OTdjYTRkOWJlMTIxZWJmZSIsInVzZXJfaWQiOjQyfQ.X32hFmTijHNr_uq5SwSS-g1jPWEBPmh35JOznLS0Ebk','2022-12-07 15:57:35.027014','2023-01-06 15:57:35.000000',42,'c2eefc0ab707461797ca4d9be121ebfe'),(21,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDY2OSwiaWF0IjoxNjcwNDI4NjY5LCJqdGkiOiJhMjhhZTU4NzRiMjE0YmU1OGFiMWYzYTY0NjcxZWNlYyIsInVzZXJfaWQiOjJ9.DsLiipx_z52JCDjX_wZ_NRv2Un0Gy7j5qL5jYG4iKnk','2022-12-07 15:57:49.297584','2023-01-06 15:57:49.000000',2,'a28ae5874b214be58ab1f3a64671ecec'),(22,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDc1NCwiaWF0IjoxNjcwNDI4NzU0LCJqdGkiOiJmYzMzNWI0YjIyM2Q0ZWE3YTVlYTA4YmZhNmQ2YjU2ZiIsInVzZXJfaWQiOjQyfQ.d5sWY0LH34emJ5f_lflLz5h3dyTW0QskAiudN6ibWTI','2022-12-07 15:59:14.029253','2023-01-06 15:59:14.000000',42,'fc335b4b223d4ea7a5ea08bfa6d6b56f'),(23,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDc2OCwiaWF0IjoxNjcwNDI4NzY4LCJqdGkiOiJiYzY2MjliYjYwMjk0ZjljOTVmYzNlMDUwZmQzOTFlZSIsInVzZXJfaWQiOjJ9.VDXfQeOjLvOC9_HOFY2LR2cZjhcefPF9vTCGWl4xE6s','2022-12-07 15:59:28.966838','2023-01-06 15:59:28.000000',2,'bc6629bb60294f9c95fc3e050fd391ee'),(24,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDgwNywiaWF0IjoxNjcwNDI4ODA3LCJqdGkiOiI5NTRiYjg0MzgzMzQ0MGNkYTRiN2Q0YzFmNzRhZTE2OSIsInVzZXJfaWQiOjJ9.GBzdcVzWdscTLSG-LFbFkuo1lycioS4ZrtqhFubMWFs','2022-12-07 16:00:07.940688','2023-01-06 16:00:07.000000',2,'954bb843833440cda4b7d4c1f74ae169'),(25,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMDgxNiwiaWF0IjoxNjcwNDI4ODE2LCJqdGkiOiIzNzAyMjdjNTkxMzM0MDhkOWNjOWFlODQwMjRhYmRhYyIsInVzZXJfaWQiOjExfQ.Ah8yutEZqDlwnowTOAe3Id6auJSN-rDIEfBHNEdUduU','2022-12-07 16:00:16.466239','2023-01-06 16:00:16.000000',11,'370227c59133408d9cc9ae84024abdac'),(26,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTA0OSwiaWF0IjoxNjcwNDI5MDQ5LCJqdGkiOiJlYzgyNWJmMGQ2N2M0NGM1YmYwNDIxMWI1NjAxYmE0ZiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.RfUdMDnx_ZNHbLTwLhojcDX2_YQcHXSihU2POIIbmsY',NULL,'2023-01-06 16:04:09.000000',NULL,'ec825bf0d67c44c5bf04211b5601ba4f'),(27,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTExMCwiaWF0IjoxNjcwNDI5MTEwLCJqdGkiOiIyZjc5OWVlZjc0YzM0ZDJlOWYwOTUyOGY1ZTYyMDdjNCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.tfahxBviSryaObEpFP-IJ7J61f_tc03AWT5NACoM1to',NULL,'2023-01-06 16:05:10.000000',NULL,'2f799eef74c34d2e9f09528f5e6207c4'),(28,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTUwNywiaWF0IjoxNjcwNDI5NTA3LCJqdGkiOiJjYmRlYzI0MzIzYzU0YTE2ODQxN2FhN2EwZDE0Zjg3NCIsInVzZXJfaWQiOjN9.kMhpwWLXIhyF0CntsK138lG-twtljj2WxYDjSQaSCsk','2022-12-07 16:11:47.400964','2023-01-06 16:11:47.000000',3,'cbdec24323c54a168417aa7a0d14f874'),(29,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTgwNiwiaWF0IjoxNjcwNDI5ODA2LCJqdGkiOiI4NDNlMzE4MjRmMTY0Y2M5Yjc1YmU3ZmJhZmIxOWEwZCIsInVzZXJfaWQiOjJ9.ijfUhEfLDv3Ge15RIG9qOL-ACf2Zsw7uFeKiUnknCJQ','2022-12-07 16:16:46.649190','2023-01-06 16:16:46.000000',2,'843e31824f164cc9b75be7fbafb19a0d'),(30,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTk2OCwiaWF0IjoxNjcwNDI5OTY4LCJqdGkiOiJjYjFlOWJjOTgxODQ0YWY4YTEzNTA0NWZkY2RmNjdjNSIsInVzZXJfaWQiOjQ2fQ.wlYphRtWtTae0EHTaWeJKt2Uzdl7ccq2__X2gqYRLXo','2022-12-07 16:19:28.051430','2023-01-06 16:19:28.000000',46,'cb1e9bc981844af8a135045fdcdf67c5'),(31,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMTk4NCwiaWF0IjoxNjcwNDI5OTg0LCJqdGkiOiI1MjdkMWY3MmJkY2U0OTJiYmRiMWQ2ZGIxMjAxN2YzNSIsInVzZXJfaWQiOjQyfQ.-9Pb6gPZLmyZ1HCpcdkiwV4GXuhGXuzufVxeBAj3TpM','2022-12-07 16:19:44.575422','2023-01-06 16:19:44.000000',42,'527d1f72bdce492bbdb1d6db12017f35'),(32,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMjA1MCwiaWF0IjoxNjcwNDMwMDUwLCJqdGkiOiJlNzk2MTU4NDhlN2I0NjQyOGU1MDZkNTAwMmZmMTJiMiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.EXpFQfazkMmgczHuTjR6XiFdWQrsF0P0VPYkPscXwLc',NULL,'2023-01-06 16:20:50.000000',NULL,'e79615848e7b46428e506d5002ff12b2'),(33,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMjM4OCwiaWF0IjoxNjcwNDMwMzg4LCJqdGkiOiIyN2NhMzkyZmZkN2E0MDJlYWY5ZmMyMTU5YzFjNjMzYyIsInVzZXJfaWQiOjQyfQ.Uk6hZWbaNL1HtWnkrSrkPTcY01K4wkZ-kPL98p9kNs4','2022-12-07 16:26:28.351794','2023-01-06 16:26:28.000000',42,'27ca392ffd7a402eaf9fc2159c1c633c'),(34,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzAyMjY0OSwiaWF0IjoxNjcwNDMwNjQ5LCJqdGkiOiI4YTNmNTg4NGY1MmE0ZWUwODA5MDZhMGNmODVjYjIyYyIsInVzZXJfaWQiOjJ9.kRAVEOHGaRjq_hKI9mGcxisyOgPovwXjb1U7ZSeyD3o','2022-12-07 16:30:49.870487','2023-01-06 16:30:49.000000',2,'8a3f5884f52a4ee080906a0cf85cb22c'),(35,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzI2MjcyMywiaWF0IjoxNjcwNjcwNzIzLCJqdGkiOiJiODk1NzQ0NjlhN2M0YzI0YmI4MzBmZGYwMTViMjM2NyIsInVzZXJfaWQiOjJ9.Sy04mDET9UXLSDDv1XCA0crV2oUkvBSox7Gcm7sR7_o','2022-12-10 11:12:03.802655','2023-01-09 11:12:03.000000',2,'b89574469a7c4c24bb830fdf015b2367'),(36,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzI2Mjc0MSwiaWF0IjoxNjcwNjcwNzQxLCJqdGkiOiI0ZDk3ZmE4NGY2MmI0MzkxOGUxMDgwZmU2ZDhhN2Q2YiIsInVzZXJfaWQiOjJ9.P6J8IQnXQsLxx485LEAZ-UC8nWCSnsrb5tn9aEh70IY','2022-12-10 11:12:21.413472','2023-01-09 11:12:21.000000',2,'4d97fa84f62b43918e1080fe6d8a7d6b'),(37,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzI2Mjg2MywiaWF0IjoxNjcwNjcwODYzLCJqdGkiOiIwMjU2YmE3OTkwN2M0MzA1YTY1YjkyYTc2ZTQzNDc0MSIsInVzZXJfaWQiOjJ9.8GhS7GU4hvmw1VVNnEJ8G1Fe5w7sCT9mJuYw2Teg2CQ','2022-12-10 11:14:23.272846','2023-01-09 11:14:23.000000',2,'0256ba79907c4305a65b92a76e434741'),(38,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzI2MzExOCwiaWF0IjoxNjcwNjcxMTE4LCJqdGkiOiJkMGFjMWFmNGViZjQ0ZDY5OWRjYjUxNWQzMTRhNTAzNiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.oHp6O8-vYdIuuJlfCP_oFPF0NBeMdag-9vkMHy6bQTc',NULL,'2023-01-09 11:18:38.000000',NULL,'d0ac1af4ebf44d699dcb515d314a5036'),(39,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzMyODc2NywiaWF0IjoxNjcwNzM2NzY3LCJqdGkiOiIyZWI3NzBjMTU5M2U0ZWM2YWQ5NGZhMWU1NDJmMTUyYiIsInVzZXJfaWQiOjJ9.dZ1SaEoXyxaUQxxKEFUz8vun75xQAbTOF3aGvMuv0KI','2022-12-11 05:32:47.266432','2023-01-10 05:32:47.000000',2,'2eb770c1593e4ec6ad94fa1e542f152b'),(40,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzMyOTAxMCwiaWF0IjoxNjcwNzM3MDEwLCJqdGkiOiIwYmQ2ZGIyODhmOGQ0NTJlOTZhYWNlNTE3YzkxN2QxNCIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.hS8QNVFHQs0rbaWIlcAV97k1QiBIjfIDnbrKPo9EJUU',NULL,'2023-01-10 05:36:50.000000',NULL,'0bd6db288f8d452e96aace517c917d14'),(41,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzMyOTc1MywiaWF0IjoxNjcwNzM3NzUzLCJqdGkiOiJiNGU2ZTRlZmQ4NzU0ODViODFlMjY1OWFkM2U4MGJjMSIsInVzZXJfaWQiOjJ9.cuTxPxQs8kNRo6Zp4w0KS_uJZpaFrgSZTR6GZni6pW0','2022-12-11 05:49:13.962235','2023-01-10 05:49:13.000000',2,'b4e6e4efd875485b81e2659ad3e80bc1'),(42,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzMzMDAzNSwiaWF0IjoxNjcwNzM4MDM1LCJqdGkiOiJlNzJjODcyYzFmYTI0Y2MxODI5OWMwYmI2ZTg0N2JjYiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.oB5xiDkKWOpS5Ay340acSlJJtt6AxxlIGMAbCwajJ2s',NULL,'2023-01-10 05:53:55.000000',NULL,'e72c872c1fa24cc18299c0bb6e847bcb'),(43,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzMzMDI3NiwiaWF0IjoxNjcwNzM4Mjc2LCJqdGkiOiJmYTIzMGRlZTE0MTI0MWYxYjc5MzEyNjVkNTI1ZjQ5ZiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.S7LQ_yXHbEyxRcgwajyTPBLGP9c2TBGkqoUHv3d3JYs',NULL,'2023-01-10 05:57:56.000000',NULL,'fa230dee141241f1b7931265d525f49f'),(44,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM1OTUwNSwiaWF0IjoxNjcwNzY3NTA1LCJqdGkiOiIzODQ3ODMwZjk2N2M0NmM4YWE4NGY5OTcyY2FhNWQ4NyIsInVzZXJfaWQiOjJ9.QHJuCi5_sREN7hXRHSzbsdvsFXRw1sI9yfW6euOmm_w','2022-12-11 14:05:05.455519','2023-01-10 14:05:05.000000',2,'3847830f967c46c8aa84f9972caa5d87'),(45,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM1OTg4NiwiaWF0IjoxNjcwNzY3ODg2LCJqdGkiOiI0YTUzOGI5ZDhjMjg0YTBjYWJiNTA1M2M3NTA2MzBiNyIsInVzZXJfaWQiOjJ9.JTALQyKELK420cl4DH5868LaA-kjMeJXBgJ8DXZixAc','2022-12-11 14:11:26.151621','2023-01-10 14:11:26.000000',2,'4a538b9d8c284a0cabb5053c750630b7'),(46,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MDEzMywiaWF0IjoxNjcwNzY4MTMzLCJqdGkiOiI1NmVjNjViMzc3Mjg0YmRiYWVhZTc5MDIxYmEwM2MyNiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.t5R2xaOx9UxGos2dVwIcDTLutbhfVW-xoz_Zc0aSe-U',NULL,'2023-01-10 14:15:33.000000',NULL,'56ec65b377284bdbaeae79021ba03c26'),(47,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MDM3NCwiaWF0IjoxNjcwNzY4Mzc0LCJqdGkiOiI0ZGE3MzNmZjBkMjM0MDZiOTRmOWU0ZDM1MjM4ZDg5ZiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.cCLFMnfoytCX6JmjIKYMcsOXtx91hb0fOtqNLCHiBSM',NULL,'2023-01-10 14:19:34.000000',NULL,'4da733ff0d23406b94f9e4d35238d89f'),(48,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MDYxNSwiaWF0IjoxNjcwNzY4NjE1LCJqdGkiOiI2MDJmY2UyNDgzMjg0NTQ1YTI0NDU0MjYwMDFiYzJiMiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.ehsP9F9_jg9fvSO8M-uP-sKdwStSZum66hFxVO8Ano8',NULL,'2023-01-10 14:23:35.000000',NULL,'602fce2483284545a2445426001bc2b2'),(49,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MDg1NiwiaWF0IjoxNjcwNzY4ODU2LCJqdGkiOiI1NDlkMGQwNjI3ZmY0Yjg5YjJhMzM0ZDhjNGFlZjkyZiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.PaLiLD-LtDRIc168nasRqt5eEt_FckkutYHuM_yE1qI',NULL,'2023-01-10 14:27:36.000000',NULL,'549d0d0627ff4b89b2a334d8c4aef92f'),(50,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTIwNywiaWF0IjoxNjcwNzY5MjA3LCJqdGkiOiI3YzI1N2M2NGM2Zjk0YmM2OWM0ZGU2NzQ3NDZkYTdkNiIsInVzZXJfaWQiOjJ9.Oep3oz45FiTLpahwIj-UIpxZQiBoiuSxX9rJeyypYok','2022-12-11 14:33:27.118978','2023-01-10 14:33:27.000000',2,'7c257c64c6f94bc69c4de674746da7d6'),(51,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTA5NywiaWF0IjoxNjcwNzY5MDk3LCJqdGkiOiJhZmE4ZWEyMWZlNjQ0YTBkODk4OWNiZDk0NzQ0ODRiYyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.qZD_s_QxLxhtVUB3XeHprs-qnGoMvBihJ2wtsDkeYGI',NULL,'2023-01-10 14:31:37.000000',NULL,'afa8ea21fe644a0d8989cbd9474484bc'),(52,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTM3NywiaWF0IjoxNjcwNzY5Mzc3LCJqdGkiOiI4NjUyNDcxZWY4NTk0NDRiOWIzNmY3YzNjNTI2NzkxZCIsInVzZXJfaWQiOjJ9.Xn0MneI5BkkPoajArT24po2Fo0NcbcReAVk9Kdrne00','2022-12-11 14:36:17.490970','2023-01-10 14:36:17.000000',2,'8652471ef859444b9b36f7c3c526791d'),(53,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTUwOSwiaWF0IjoxNjcwNzY5NTA5LCJqdGkiOiI2ZDY2Yzk5MjJhOWE0NjQ2YTU5MTBjYmJmNWE5NGU5ZiIsInVzZXJfaWQiOjJ9.EZ_-4hcVyLaJCgX12nk-B1l0l-pNw9Hn3hTH5Ar1mbg','2022-12-11 14:38:29.204098','2023-01-10 14:38:29.000000',2,'6d66c9922a9a4646a5910cbbf5a94e9f'),(54,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTMzNywiaWF0IjoxNjcwNzY5MzM3LCJqdGkiOiIwMWExOGY1YmJiMjA0ZmZlOGJiODY4N2E0YjMwYzUxYiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.2Z8UPn2PzzZdbdFK9itG3zB2Xvc3J1cIpHqyLYsM69Q',NULL,'2023-01-10 14:35:37.000000',NULL,'01a18f5bbb204ffe8bb8687a4b30c51b'),(55,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTYwMiwiaWF0IjoxNjcwNzY5NjAyLCJqdGkiOiJkMzk4ZGQxMzNmNWM0ZTM1OGUyYjliYTRlOGUzMGIzOSIsInVzZXJfaWQiOjJ9.3AeDmq9Nz-lDKM8NXTuOJMuKj7f-QllzUSQf1mLreuM','2022-12-11 14:40:02.345539','2023-01-10 14:40:02.000000',2,'d398dd133f5c4e358e2b9ba4e8e30b39'),(56,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTc2NywiaWF0IjoxNjcwNzY5NzY3LCJqdGkiOiIwYzJiN2IxNjZjNjc0YzA2YTlmYWJmYTNhYzdmODE5YyIsInVzZXJfaWQiOjExfQ.-lEY6uV1RgHNCuxgcObf03zQZESjIJ73ZE_7dF8PCt0','2022-12-11 14:42:47.597231','2023-01-10 14:42:47.000000',11,'0c2b7b166c674c06a9fabfa3ac7f819c'),(57,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTU3OSwiaWF0IjoxNjcwNzY5NTc5LCJqdGkiOiJhOTlkZWQzNzljMDU0ODJmODk1OTBkNTNhMzZkZTY2ZCIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.yO0FL3A6uVsYiqeChBGLfwvZ4ykjLmbVA2MYagAQO6M',NULL,'2023-01-10 14:39:39.000000',NULL,'a99ded379c05482f89590d53a36de66d'),(58,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MTgxOSwiaWF0IjoxNjcwNzY5ODE5LCJqdGkiOiI2OTc0ZTZjMDQwNTU0MjBjOWFjODc0ZmI4OTcxODRkNyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.j0ld7-Cxhkig-Yf1lEpuUx4aQZ-a8KWo9iWEeqfjr9Q',NULL,'2023-01-10 14:43:39.000000',NULL,'6974e6c04055420c9ac874fb897184d7'),(59,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjA2MSwiaWF0IjoxNjcwNzcwMDYxLCJqdGkiOiI4NGIzOWVmZjk3ZGM0YTk5ODRhZjQ1MjAxYjM2OTYwYiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.YE-9BXAE2AbPDu2oTn1qsINwE6RhYE1i29g8D5JuZMI',NULL,'2023-01-10 14:47:41.000000',NULL,'84b39eff97dc4a9984af45201b36960b'),(60,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjE1MCwiaWF0IjoxNjcwNzcwMTUwLCJqdGkiOiJkNmI5ZjcwNWY4ZmE0OGExODIxNGMyNjU5MTRjNjI1MCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.9crPHJn98BhzjwaG6funYWJyjXdHPShkz38JkPhoi3Q',NULL,'2023-01-10 14:49:10.000000',NULL,'d6b9f705f8fa48a18214c265914c6250'),(61,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjMwMiwiaWF0IjoxNjcwNzcwMzAyLCJqdGkiOiJjNzBhZDczZGNmODk0YmVhODRiZTM2NmJiZjdjYTI5YiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.SIg4m8cPDY2Jn07cQaVK40sdYzQZA4KuoGXH1vfU-NM',NULL,'2023-01-10 14:51:42.000000',NULL,'c70ad73dcf894bea84be366bbf7ca29b'),(62,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjM5MSwiaWF0IjoxNjcwNzcwMzkxLCJqdGkiOiIwODkzODRjZWU4ZjI0NWIyOTAzMDllZmM1ZGMyM2ZjMCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.7IQp8QoDeyTg8e7JfsgsTWzqU7crZPIt1qdXtuTJnjI',NULL,'2023-01-10 14:53:11.000000',NULL,'089384cee8f245b290309efc5dc23fc0'),(63,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjU0MywiaWF0IjoxNjcwNzcwNTQzLCJqdGkiOiIyOWJiNmYzMDc5ZDY0YmFkYjBiNDJmNDAxOTBhYmI4MSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.FfcNCMScsf0zffeFbDiICeqjTdznVIIwSnA0PF1dKlo',NULL,'2023-01-10 14:55:43.000000',NULL,'29bb6f3079d64badb0b42f40190abb81'),(64,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MjYzMiwiaWF0IjoxNjcwNzcwNjMyLCJqdGkiOiI2ZGM1NDI4YzcxNGI0NmE5Yjk4N2M2MWUyMjM1YmYyZSIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.2W5UMWaMz7LxVwz5FAUdZ2kU4exLp4ETU6RXnJCz2ZI',NULL,'2023-01-10 14:57:12.000000',NULL,'6dc5428c714b46a9b987c61e2235bf2e'),(65,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2Mjc4NCwiaWF0IjoxNjcwNzcwNzg0LCJqdGkiOiI0ODRmZTAxYzUyYmU0ZWM0YTJmMzIyYjA3OTM4MGQ5NCIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.crd_8uddGey1eeXUESaQ2nEFcc4CZ8mizTkoOAOBL_I',NULL,'2023-01-10 14:59:44.000000',NULL,'484fe01c52be4ec4a2f322b079380d94'),(66,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2Mjg3MywiaWF0IjoxNjcwNzcwODczLCJqdGkiOiJlODhkMDAzMzYyYjM0ZGNjOTBiNDQ5NGI3NDBiNjkxZiIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.NUnEUwfofWoELYmePtR1tKKo7CCp3nPO_qbuguwaUpo',NULL,'2023-01-10 15:01:13.000000',NULL,'e88d003362b34dcc90b4494b740b691f'),(67,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzAyNSwiaWF0IjoxNjcwNzcxMDI1LCJqdGkiOiIyMGQ5ZWNhODQ5OTk0MTA0ODFhYjdjMjAzMmY0MGZlMiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.tgP4k2ShoRITFpuGY0rC_qXSyTNomOul6PTpE650x9E',NULL,'2023-01-10 15:03:45.000000',NULL,'20d9eca84999410481ab7c2032f40fe2'),(68,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzExNCwiaWF0IjoxNjcwNzcxMTE0LCJqdGkiOiI3MDQyNGI3ZTVhZjM0NmE1OTAwY2NiZDEyODc4MTY5MyIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.kAo3RT7r6vgdOlZf_WfIXxr5UOQqMsChUoRTtBRpgOs',NULL,'2023-01-10 15:05:14.000000',NULL,'70424b7e5af346a5900ccbd128781693'),(69,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzI2NiwiaWF0IjoxNjcwNzcxMjY2LCJqdGkiOiIyNTU1MDE1NmQ5ZmM0OWNjYTQ4OTk2OTM4M2I0ZTE1NyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.RUPqlbV_roMSDqjKQOo-z6I443c7MdLkhjl7ZMl1j0k',NULL,'2023-01-10 15:07:46.000000',NULL,'25550156d9fc49cca489969383b4e157'),(70,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzM1NSwiaWF0IjoxNjcwNzcxMzU1LCJqdGkiOiJmMWQ0ZGZjZmU2NDg0NDg4YTRiZDhkZjIwMzliZDFlZCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.eGWB_VxfP_tk31h9DKeLSwsBcY484Zcv11KGw57JJtc',NULL,'2023-01-10 15:09:15.000000',NULL,'f1d4dfcfe6484488a4bd8df2039bd1ed'),(71,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzUwNywiaWF0IjoxNjcwNzcxNTA3LCJqdGkiOiIzODg2OGE4YjM0MTY0ZGI0OTc5ODQyOWQ1NjVhZWY1NiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.8AeB_pP5VwEiZZ7NlcL7m2SBgKGz8Ys5O-EjoG4rhhg',NULL,'2023-01-10 15:11:47.000000',NULL,'38868a8b34164db49798429d565aef56'),(72,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzU5NiwiaWF0IjoxNjcwNzcxNTk2LCJqdGkiOiIzMzQ4NDQyNmUyYmI0MmRkYjVmNTIzNGY5MzUzMTA5ZiIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.tVOqNLQf_g2ZB_NN5lKxA3z9wYXo3Ot-IsE9dn86a3U',NULL,'2023-01-10 15:13:16.000000',NULL,'33484426e2bb42ddb5f5234f9353109f'),(73,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2Mzc0OCwiaWF0IjoxNjcwNzcxNzQ4LCJqdGkiOiIyYjk0MjNhMmNlMmQ0YzhhYWQxYmUzODc2ZmIyNTVmNyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.zON01u4IcAnZA0i5VDT_a1T956eQecgHJAbkY7WLm3Y',NULL,'2023-01-10 15:15:48.000000',NULL,'2b9423a2ce2d4c8aad1be3876fb255f7'),(74,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2MzgzNywiaWF0IjoxNjcwNzcxODM3LCJqdGkiOiJjNGJiMTRmNTFmNmM0NGU3ODIzNTQ4OTBhMWZmYWI4ZSIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.Tn9WKWzuwmhicCB33cLqO5xsgfbT0p6w4USpuwDDwJs',NULL,'2023-01-10 15:17:17.000000',NULL,'c4bb14f51f6c44e782354890a1ffab8e'),(75,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2Mzk4OSwiaWF0IjoxNjcwNzcxOTg5LCJqdGkiOiJjMjZmYzcxMmI3YjU0NDE0ODVkMzg0ODgzMzFhNDliMyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.ik9HMDlXSbL00X_RGgqRd98u3EnTsEvnnXgdGpvjx0M',NULL,'2023-01-10 15:19:49.000000',NULL,'c26fc712b7b5441485d38488331a49b3'),(76,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDA3OCwiaWF0IjoxNjcwNzcyMDc4LCJqdGkiOiI4MGE0ZDc1YTg0ZGI0OGFiODBlOTY0MjVkYzJlOTAyZiIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.W-Qjtl5L5LKYtCdjSiOgqF_NPIY-OW4OxYt3oS_66vY',NULL,'2023-01-10 15:21:18.000000',NULL,'80a4d75a84db48ab80e96425dc2e902f'),(77,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDIzMCwiaWF0IjoxNjcwNzcyMjMwLCJqdGkiOiJhN2ZkZWY1ZmJlMGQ0YzYyYjllNjU5Y2U5MWJiNDEwYyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.DxvVTuVoUUo0NllmQYprU5SICGGgc9TqDjmeo1ei1ws',NULL,'2023-01-10 15:23:50.000000',NULL,'a7fdef5fbe0d4c62b9e659ce91bb410c'),(78,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDMxOSwiaWF0IjoxNjcwNzcyMzE5LCJqdGkiOiI1NTZkYjEyODk1ZDY0ZTliODc1ZTZiMzIzYjU4ZTZmZiIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.se3J04ngWt51zxJvWF3LqIq13f5tcaZ9jySsK0QBwEk',NULL,'2023-01-10 15:25:19.000000',NULL,'556db12895d64e9b875e6b323b58e6ff'),(79,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDQ3MSwiaWF0IjoxNjcwNzcyNDcxLCJqdGkiOiI1MGIzNDIyZGI5NzM0ODEzYjQyYzRkNTVlMmUzOGFiMiIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.fDA9JkBNUvXNaUnIRMZCw2WKafn1iFUyvSN9mxAxgAI',NULL,'2023-01-10 15:27:51.000000',NULL,'50b3422db9734813b42c4d55e2e38ab2'),(80,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDU2MCwiaWF0IjoxNjcwNzcyNTYwLCJqdGkiOiJiODRkNmRkYTMwNjE0ZTJjYmM1Yjc1M2EzMmQwYThmMCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.Djh0Hk32YlGqYX9xHUNjwGbxNgTbP-eYVQNigXZM0AI',NULL,'2023-01-10 15:29:20.000000',NULL,'b84d6dda30614e2cbc5b753a32d0a8f0'),(81,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDcxMiwiaWF0IjoxNjcwNzcyNzEyLCJqdGkiOiJmZjg0Y2E2OTVkMGM0NDU2YTM3MjZhZGU4NTkyOTAxNyIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.3x5FUpoMv3hTCaIy3IazgvN5FwHxK2Yz6Pq_ilWnstY',NULL,'2023-01-10 15:31:52.000000',NULL,'ff84ca695d0c4456a3726ade85929017'),(82,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDgwMSwiaWF0IjoxNjcwNzcyODAxLCJqdGkiOiIzZjdlZTA2MDE0MTA0ZWEwYjY5YmQ3ZjZjMTcwNzFkNyIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.TO9k2W5cL3MFtUr-J_QmPnpNqRrt96N1Vo0rsilqqJw',NULL,'2023-01-10 15:33:21.000000',NULL,'3f7ee06014104ea0b69bd7f6c17071d7'),(83,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NDk1MywiaWF0IjoxNjcwNzcyOTUzLCJqdGkiOiI5ODg0MDBhMzA1YjQ0ZjU0ODUzY2I5YmMxNzhiZTczNSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.NX5RWHmnzb2dSlqMIUIxdqfxVdsQm_5UcN1bzWfQEIc',NULL,'2023-01-10 15:35:53.000000',NULL,'988400a305b44f54853cb9bc178be735'),(84,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTA0MiwiaWF0IjoxNjcwNzczMDQyLCJqdGkiOiJjZTY3MDliNmU0Zjg0ZjRjYTA5NjE4MjgzMjY3NGYwNCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.dcBgNnuYi6JvbhOaLhKLdAAjNy6fz988hFB-Vk88V1w',NULL,'2023-01-10 15:37:22.000000',NULL,'ce6709b6e4f84f4ca096182832674f04'),(85,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTE5NCwiaWF0IjoxNjcwNzczMTk0LCJqdGkiOiIyN2FlZGY2MjE2NDk0ZjI3YjJhZDJiNThlZGU4YzE1ZSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.L8JxYnDEQjLX2MltX5qZgdi6xHVozkTosxbCc_VEeBQ',NULL,'2023-01-10 15:39:54.000000',NULL,'27aedf6216494f27b2ad2b58ede8c15e'),(86,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTI4MywiaWF0IjoxNjcwNzczMjgzLCJqdGkiOiIzMTBhMjkwNmFhZWQ0MDdhOGU3ZmQ3OGJkZTMwY2Q0OCIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.HhOsi8GpnjDcB0e3bRmCwooQjOXwDFCXXl5rUXHsCag',NULL,'2023-01-10 15:41:23.000000',NULL,'310a2906aaed407a8e7fd78bde30cd48'),(87,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTQzNSwiaWF0IjoxNjcwNzczNDM1LCJqdGkiOiJkZTlkYTFhZGFhMzA0YzQ5ODNhOGYwYjkzZmM4NmQxZCIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0.VRK3F8SDSDeUgZbexWNQyu2eYcLlVrQUO4hEwVIxhSc',NULL,'2023-01-10 15:43:55.000000',NULL,'de9da1adaa304c4983a8f0b93fc86d1d'),(88,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTUyNCwiaWF0IjoxNjcwNzczNTI0LCJqdGkiOiIwNzM2MWNhMjRlN2U0ZjE3YTQyYzViNGExMmZkZmYwYyIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.Xe1ooomLCVwu3QiX5kKuxxhlTJgelxhbKhvadBxbBWM',NULL,'2023-01-10 15:45:24.000000',NULL,'07361ca24e7e4f17a42c5b4a12fdff0c'),(89,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTY3NiwiaWF0IjoxNjcwNzczNjc2LCJqdGkiOiI4MTZhYmQwZjAwZmQ0YjkxOGE5NDA3NTE3MzZmMTAyNSIsInVzZXJfaWQiOjIsImVucm9sbG1lbnRfbnVtYmVyIjoiMjAwMjE0MjciLCJmaXJzdF9uYW1lIjoiQlx1MDBmOWkgTWluaCBTXHUwMWExbiIsImJhdGNoIjoiSzY1IE4tQ0xDIn0._9PU-iRSK1vxiMmsEnihDi5_c98Z6AmovZVpmHRtTz0',NULL,'2023-01-10 15:47:56.000000',NULL,'816abd0f00fd4b918a940751736f1025'),(90,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3MzM2NTc2NSwiaWF0IjoxNjcwNzczNzY1LCJqdGkiOiI0ZmY4NzJiYTdjN2I0ZTEzODNmOWMxODBlNTUzMzU3MyIsInVzZXJfaWQiOjExLCJlbnJvbGxtZW50X251bWJlciI6IjIwMDIwMDA3IiwiZmlyc3RfbmFtZSI6Ik5ndXlcdTFlYzVuIFRoXHUwMGUxaSBEXHUwMWIwXHUwMWExbmciLCJiYXRjaCI6Iks2NSBOLUNMQyJ9.GBvo5u-ApRQwJNZeMfWXZP3a7QxRivb_3JKDpXDOKKA',NULL,'2023-01-10 15:49:25.000000',NULL,'4ff872ba7c7b4e1383f9c180e5533573');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_student`
--

LOCK TABLES `users_student` WRITE;
/*!40000 ALTER TABLE `users_student` DISABLE KEYS */;
INSERT INTO `users_student` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,2),(43,2),(44,2),(45,2),(46,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teacher`
--

LOCK TABLES `users_teacher` WRITE;
/*!40000 ALTER TABLE `users_teacher` DISABLE KEYS */;
INSERT INTO `users_teacher` VALUES (47);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$390000$oGSJkkRBf8qUQvYvNZ2uFb$l3Wrx9Y3iL80tyG7uYFUQ1y1gej2rOe7U52cxycIwOA=','2022-12-10 11:10:22.672887',1,'',1,1,'2022-12-07 11:09:44.864539','admin','admin','','A'),(2,'pbkdf2_sha256$390000$d3a19LnC38wA3bEMHIVeDS$yJfodbk2L1VGwL96q3gi92HKNm2d8Ofbz5idKO9ZmTw=',NULL,0,'',0,1,'2022-12-07 11:11:26.196508','20021427','Bùi Minh Sơn','','S'),(3,'pbkdf2_sha256$390000$MI0LYWvYmNPdGlhvGV200x$q3MlsnI0KBH700b6MwhMdKVF1PKy71Eu2h2Li5A/EBQ=',NULL,0,'',0,1,'2022-12-07 11:26:21.484723','20021280','Nguyễn Thành An','','S'),(4,'pbkdf2_sha256$390000$ojOjjB76qalAtV8LcmO7AS$+fuFJMgV1CtsEylaNuyP9zBUk1mvU6bDrjwWY1wbmYM=',NULL,0,'',0,1,'2022-12-07 11:27:04.963655','20020180','Đỗ Huy Anh','','S'),(5,'pbkdf2_sha256$390000$2Apw9bB0qmxto6M2gbds9r$6mo0Dmmyf3UNpVQYmMR/T1WOIGHhKQiqM16LZWoYCMQ=',NULL,0,'',0,1,'2022-12-07 11:27:34.765952','20021289','Mai Hoàng Anh','','S'),(6,'pbkdf2_sha256$390000$TgoGn9LFkjvK1dmyiz6Kkb$hiej2AmeKU5uwAsr2JBVZl+Y/2iUaYAptrpJMlIXFcA=',NULL,0,'',0,1,'2022-12-07 11:28:49.445745','20021293','Phạm Tuấn Anh','','S'),(7,'pbkdf2_sha256$390000$4zYz9Bm0WcV1Wscd4CUfjF$wDxh85w+JkAN82P8ln8gvSnUsIFQ2fD7h9GHKtbyYIk=',NULL,0,'',0,1,'2022-12-07 11:29:16.349961','20021297','Trần Tuấn Anh','','S'),(8,'pbkdf2_sha256$390000$IzboBrKzxs5AWKVXUD5Rlg$5f6FyU6Oeyv+5WvDFvARgOEiG56PQaZT0zGcDQaUOEA=',NULL,0,'',0,1,'2022-12-07 11:29:40.640229','20021306','Nguyễn Đức Chính','','S'),(9,'pbkdf2_sha256$390000$XAWmCN8mzLeaTUlpJa906j$BT6LkhHNMkA7RJtO170qtC7MBfJmcqsyZhYgmNi7aGQ=',NULL,0,'',0,1,'2022-12-07 11:30:10.311316','20020181','Nguyễn Đức Dũng','','S'),(10,'pbkdf2_sha256$390000$Me6EtePhWhhAnPsGiQAhwQ$XMYjCUyxJuckxr8LedDuOmkOwouaqLStGiyzG7G+G7Q=',NULL,0,'',0,1,'2022-12-07 11:30:35.784068','20021317','Nguyễn Vĩnh Dũng','','S'),(11,'pbkdf2_sha256$390000$TQtc50zPT0ZYjJcUFbBHW5$ZLTIV4YmeiSGrtcjyUyosCxclmE0kvrQdQkMm852Zhk=',NULL,0,'',0,1,'2022-12-07 11:31:04.220450','20020007','Nguyễn Thái Dương','','S'),(12,'pbkdf2_sha256$390000$vb6QBDU1Had8mExxuTUNj0$moSilHoqv7cTu7hrwwbhlpn1RNE50X05bVWbOHW8N40=',NULL,0,'',0,1,'2022-12-07 11:31:23.361984','20021323','Trần Minh Dương','','S'),(13,'pbkdf2_sha256$390000$Blp5eDwjwJPy4MB8IVr59o$VMHDEX25HWKKJflUeW+wNI0j8QnOkqkxA17YrF6rgFc=',NULL,0,'',0,1,'2022-12-07 11:31:41.172440','20021331','Trương Văn Độ','','S'),(14,'pbkdf2_sha256$390000$LUuD5fw3xFy69ROgLelS44$xJ3QzrDaXx2rxifOx1+0xHOK6D3OqW51vHf9xTBGbyE=',NULL,0,'',0,1,'2022-12-07 11:32:12.623427','20021334','Đào Văn Đức','','S'),(15,'pbkdf2_sha256$390000$NehnAQ0EAFFUFTQTxLfsaO$8e4xtraRQZ9PoX/ZF7mRNvJ6K5JXPXAITuBNNOhUyfY=',NULL,0,'',0,1,'2022-12-07 11:32:30.662499','20021336','Nguyễn Anh Đức','','S'),(16,'pbkdf2_sha256$390000$Gowb6sIJvVsyge5z6J6onb$0HwdTYyhLSPV4dpBBpUdZcXNN01qF9i5PK/TocEEeCU=',NULL,0,'',0,1,'2022-12-07 11:32:49.471789','20021340','Hoàng Thu Giang','','S'),(17,'pbkdf2_sha256$390000$2EVfYkTeMVCimiYfi9koSq$GFiTMs2de79p38jJBJiYpqmUYF83bMrDhZTt5sT2gMU=',NULL,0,'',0,1,'2022-12-07 11:33:24.243823','20021342','Nguyễn Ngọc Hải','','S'),(18,'pbkdf2_sha256$390000$rgmI5IiPNh5RwpjICbttQb$DIJM9pw7tIV12B8b0nTG6o7NcEnuQIpBp0lBhADA1L4=',NULL,0,'',0,1,'2022-12-07 11:33:40.813879','20021348','Đỗ Xuân Hiệp','','S'),(19,'pbkdf2_sha256$390000$RGPkbs3ESBAmcWyUuNWohB$IVhMd4n5/UF9+l2X4x+YVsoW7NVie7ZCM5So5ad8UkM=',NULL,0,'',0,1,'2022-12-07 11:34:00.498721','20021349','Nguyễn Ngọc Hiệp','','S'),(20,'pbkdf2_sha256$390000$FYjoFdjWRGbrgps6EncgYQ$crbmX40xkXzhW3qnqYwiZw8q/d25q/YUNLCP1+RJcb8=',NULL,0,'',0,1,'2022-12-07 11:34:17.995118','20021350','Nguyễn Tuấn Hiệp','','S'),(21,'pbkdf2_sha256$390000$nDnNsNtV8e1UHPCvVI4ECo$hsOqTxVO+6/qA1MjcDhVE894lPoiiLhP7dx/oeD8sf8=',NULL,0,'',0,1,'2022-12-07 11:34:33.951353','20021354','Lê Trung Hiếu','','S'),(22,'pbkdf2_sha256$390000$karWhsYBCq3qIeV2rykKXw$QmI6Vx7KKITs3w4baC4fD1zd51jXaTQ7roxXNegqfAs=',NULL,0,'',0,1,'2022-12-07 11:34:52.199687','20021355','Ngô Trần Trọng Hiếu','','S'),(23,'pbkdf2_sha256$390000$d9b14JLPykgxswk8IS6QXM$VmZIPIkBQ0D7jYiPg2PkI3BlQBsyNhbivOMTgQLtFCM=',NULL,0,'',0,1,'2022-12-07 11:35:06.921576','20021359','Bùi Huy Hoàng','','S'),(24,'pbkdf2_sha256$390000$vP5NNE8CqTzi66sRLHamjb$+il3tWzVgExiaIgXRq5flPXt+6h032iOBNn1XexU+bA=',NULL,0,'',0,1,'2022-12-07 11:35:21.326575','20021361','Nguyễn Đình Hoàng','','S'),(25,'pbkdf2_sha256$390000$rszjEvKIUWPC9l6mHDyRIr$2IhO0d8+0f28SuyeeSeKT3icZERsIaTYWkM9fysr1KA=',NULL,0,'',0,1,'2022-12-07 11:35:35.704746','20021364','Cấn Mạng Hùng','','S'),(26,'pbkdf2_sha256$390000$rplku2D458g8IGaVAsXR3U$VQNR7i62/FhSc5aJq1ujxTmnG4pc8qCPnK2zrmdcd5U=',NULL,0,'',0,1,'2022-12-07 11:35:53.116924','20020322','Đỗ Lê Mạnh Hùng','','S'),(27,'pbkdf2_sha256$390000$HYAQ4v9OxvMvLVmEM5ghoG$GWJjB/kezAk1mVA5+W5VNyK/LgBQgWVw3meVuvZ0+2k=',NULL,0,'',0,1,'2022-12-07 11:36:12.828564','20021365','Đỗ Quang Huy','','S'),(28,'pbkdf2_sha256$390000$yQjneoHz7svOmHJU7RXHqR$CrH4N9BJpHJYVrzA+yLHU2SkFVXhadPqxkKwYvq+4TQ=',NULL,0,'',0,1,'2022-12-07 11:36:28.821105','20020323','Hồ Thanh Huyền','','S'),(29,'pbkdf2_sha256$390000$6va7QKxYUHQ5r1Ug49NVnQ$y12tLdkZoVHKIf5Ugx693Dy+u/zFLCUJswhYOHu2fwo=',NULL,0,'',0,1,'2022-12-07 11:36:42.468364','20021371','Trần Duy Hưng','','S'),(30,'pbkdf2_sha256$390000$oiRHCR83cxtXLoEXmPJkNX$E32Ya7Fa/Oc8PvOQ/wal7lX3ShHSk0//9ZZVxe9Dq20=',NULL,0,'',0,1,'2022-12-07 11:36:58.721622','20021375','Nguyễn Văn Khánh','','S'),(31,'pbkdf2_sha256$390000$fs4wAtHmbC5YkNv7M3CJsh$VCC4tjAkCgAJlSBSLd0zULg+KkXtqLMWzyQTN9dwRgE=',NULL,0,'',0,1,'2022-12-07 11:37:14.526816','20021376','Nguyễn Công Khoa','','S'),(32,'pbkdf2_sha256$390000$DkcST0l9stvlpwjMad5EWf$pcHHRD5R8Guxx7hf4YT+HkCDCJdzWM2C3J0Jo8B2XCk=',NULL,0,'',0,1,'2022-12-07 11:37:29.787928','20020182','Đào Trung Kiên','','S'),(33,'pbkdf2_sha256$390000$M7dDtfiNddPI7bfjLh97Va$6ZiWydd0pojQOrvwFvPihd+AhswnDmIj9JluLd+YgWk=',NULL,0,'',0,1,'2022-12-07 11:37:43.471838','20021378','Lương Trung Kiên','','S'),(34,'pbkdf2_sha256$390000$IEBjQc3RLnQa65b1oiQakh$vCtwFTk0UYGy9CNdNKjP69L/RzmzUFsvawqL8Nq1J2Q=',NULL,0,'',0,1,'2022-12-07 11:38:04.156945','20021379','Nguyễn Duy Kiên','','A'),(35,'pbkdf2_sha256$390000$bszrqVT7NYIqiXm4v3yanp$WHc+iT26Y9gRq+cLxf56CizdOB/d04WpLxouc/3/BCs=',NULL,0,'',0,1,'2022-12-07 11:38:19.730884','20021383','Dặng Việt Linh','','S'),(36,'pbkdf2_sha256$390000$T75XKUIR7M9jpxLQIkDfG8$Ln7kgIdAPL7CW4HZhqCR13XubPntRe7PhTBXAxJoPUs=',NULL,0,'',0,1,'2022-12-07 11:38:35.878748','20020324','Phạm Thị Khánh Linh','','S'),(37,'pbkdf2_sha256$390000$URfLM1ZKDOQiCtSN3a3z5h$3BiSvT2J2cNJOO6mqymrEIOOVihUapCiEVq9PJ5RIIQ=',NULL,0,'',0,1,'2022-12-07 11:38:50.073596','20021387','Nguyễn Phúc Long','','S'),(38,'pbkdf2_sha256$390000$GF4AKVtLrI9m3tcHcamniC$WnICuQemb55f7qYklkMvkf8LYFd+4Fbo7VVjbDb/tP8=',NULL,0,'',0,1,'2022-12-07 11:39:18.103513','20021389','Nguyễn Khánh Thọ Lộc','','S'),(39,'pbkdf2_sha256$390000$YZzBTkcgqqGyvHScZuZLTe$HXhINP2jBlyn1YiBDLyK3MCNGCyTzeU5etdOCfv27e8=',NULL,0,'',0,1,'2022-12-07 11:39:39.938890','20021395','Nguyễn Quang Minh','','S'),(40,'pbkdf2_sha256$390000$rKNixF51aI7USxM5FI42Y3$xSkhGisIydtWdPCIGQ6Cgb6o9iuKn8tJU/HtpvcQBj4=',NULL,0,'',0,1,'2022-12-07 11:40:01.920081','20021398','Nguyễn Tuấn Nam','','S'),(41,'pbkdf2_sha256$390000$SqZ4xaugjiBnr1By3jInLX$DOcwJnkZ6r/jN8jysjtqr0jKkln1vgbe5QwrjHewriY=',NULL,0,'',0,1,'2022-12-07 11:40:20.226741','20021399','Trần Thị Ngân','','S'),(42,'pbkdf2_sha256$390000$AxZnWiB3e3Y2dwV1QvOJ2G$yuGfeljxc6H32HVg84gbte5WYhA7BJozmtKPi/2eQcY=',NULL,0,'',0,1,'2022-12-07 15:48:55.641150','20021281','Phan Hiền An','','S'),(43,'pbkdf2_sha256$390000$m59NTLlCQ1oztAllQdCf1Q$KQ2ABmBSouNsbUHgyeglxj+SiIDbhTFojEOPL0vnUZ0=',NULL,0,'',0,1,'2022-12-07 15:49:28.453662','20020273','Nguyễn Bá Hà Anh','','S'),(44,'pbkdf2_sha256$390000$58gsxKhxTXRClKGpU1Jxuz$8pCZ1m/Rtbbp5ZfKebrthokDkqXsn2+SBVaykcJaQv8=',NULL,0,'',0,1,'2022-12-07 15:49:53.551940','20021290','Nguyễn Phạm Minh Anh','','S'),(45,'pbkdf2_sha256$390000$xXH2QyMAVjoRA02QaYpUNa$Kz9sUNA6SWHWSbBtN0ZFtU8s85pOCoszvZT9kLZm408=',NULL,0,'',0,1,'2022-12-07 15:50:10.099186','20021296','Trần Đức Anh','','S'),(46,'pbkdf2_sha256$390000$bt75POy3mY2zvTJrxurSlY$RBFStAB/gsPw3TTlu4x36i5XodRWfOQZujHb6EiwG+k=',NULL,0,'',0,1,'2022-12-07 15:50:35.610101','20021298','Vũ Nhật Anh','','S'),(47,'pbkdf2_sha256$390000$RTXQDwgKgh4RWcvt9lOS0R$wvUvIitqr2eYOcS/hVWgB/4og+A1b08u5sodsLVnmx8=',NULL,0,'',0,1,'2022-12-10 11:13:24.074670','teacher1','teacher1','','T');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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

-- Dump completed on 2022-12-12 22:26:12
