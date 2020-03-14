-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: student_management_system
-- ------------------------------------------------------
-- Server version	8.0.18

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add admin hod',7,'add_adminhod'),(26,'Can change admin hod',7,'change_adminhod'),(27,'Can delete admin hod',7,'delete_adminhod'),(28,'Can view admin hod',7,'view_adminhod'),(29,'Can add attendance',8,'add_attendance'),(30,'Can change attendance',8,'change_attendance'),(31,'Can delete attendance',8,'delete_attendance'),(32,'Can view attendance',8,'view_attendance'),(33,'Can add courses',9,'add_courses'),(34,'Can change courses',9,'change_courses'),(35,'Can delete courses',9,'delete_courses'),(36,'Can view courses',9,'view_courses'),(37,'Can add staffs',10,'add_staffs'),(38,'Can change staffs',10,'change_staffs'),(39,'Can delete staffs',10,'delete_staffs'),(40,'Can view staffs',10,'view_staffs'),(41,'Can add subjects',11,'add_subjects'),(42,'Can change subjects',11,'change_subjects'),(43,'Can delete subjects',11,'delete_subjects'),(44,'Can view subjects',11,'view_subjects'),(45,'Can add students',12,'add_students'),(46,'Can change students',12,'change_students'),(47,'Can delete students',12,'delete_students'),(48,'Can view students',12,'view_students'),(49,'Can add notification student',13,'add_notificationstudent'),(50,'Can change notification student',13,'change_notificationstudent'),(51,'Can delete notification student',13,'delete_notificationstudent'),(52,'Can view notification student',13,'view_notificationstudent'),(53,'Can add notification staffs',14,'add_notificationstaffs'),(54,'Can change notification staffs',14,'change_notificationstaffs'),(55,'Can delete notification staffs',14,'delete_notificationstaffs'),(56,'Can view notification staffs',14,'view_notificationstaffs'),(57,'Can add leave report student',15,'add_leavereportstudent'),(58,'Can change leave report student',15,'change_leavereportstudent'),(59,'Can delete leave report student',15,'delete_leavereportstudent'),(60,'Can view leave report student',15,'view_leavereportstudent'),(61,'Can add leave report staff',16,'add_leavereportstaff'),(62,'Can change leave report staff',16,'change_leavereportstaff'),(63,'Can delete leave report staff',16,'delete_leavereportstaff'),(64,'Can view leave report staff',16,'view_leavereportstaff'),(65,'Can add feed back student',17,'add_feedbackstudent'),(66,'Can change feed back student',17,'change_feedbackstudent'),(67,'Can delete feed back student',17,'delete_feedbackstudent'),(68,'Can view feed back student',17,'view_feedbackstudent'),(69,'Can add feed back staffs',18,'add_feedbackstaffs'),(70,'Can change feed back staffs',18,'change_feedbackstaffs'),(71,'Can delete feed back staffs',18,'delete_feedbackstaffs'),(72,'Can view feed back staffs',18,'view_feedbackstaffs'),(73,'Can add attendance report',19,'add_attendancereport'),(74,'Can change attendance report',19,'change_attendancereport'),(75,'Can delete attendance report',19,'delete_attendancereport'),(76,'Can view attendance report',19,'view_attendancereport');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'student_management_app','adminhod'),(8,'student_management_app','attendance'),(19,'student_management_app','attendancereport'),(9,'student_management_app','courses'),(18,'student_management_app','feedbackstaffs'),(17,'student_management_app','feedbackstudent'),(16,'student_management_app','leavereportstaff'),(15,'student_management_app','leavereportstudent'),(14,'student_management_app','notificationstaffs'),(13,'student_management_app','notificationstudent'),(10,'student_management_app','staffs'),(12,'student_management_app','students'),(11,'student_management_app','subjects');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-14 10:40:43.194847'),(2,'auth','0001_initial','2020-03-14 10:40:43.478204'),(3,'admin','0001_initial','2020-03-14 10:40:44.647497'),(4,'admin','0002_logentry_remove_auto_add','2020-03-14 10:40:44.815104'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-14 10:40:44.824063'),(6,'contenttypes','0002_remove_content_type_name','2020-03-14 10:40:44.946728'),(7,'auth','0002_alter_permission_name_max_length','2020-03-14 10:40:45.247399'),(8,'auth','0003_alter_user_email_max_length','2020-03-14 10:40:45.278400'),(9,'auth','0004_alter_user_username_opts','2020-03-14 10:40:45.289329'),(10,'auth','0005_alter_user_last_login_null','2020-03-14 10:40:45.443912'),(11,'auth','0006_require_contenttypes_0002','2020-03-14 10:40:45.446949'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-14 10:40:45.456910'),(13,'auth','0008_alter_user_username_max_length','2020-03-14 10:40:45.511734'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-14 10:40:45.616491'),(15,'auth','0010_alter_group_name_max_length','2020-03-14 10:40:45.638397'),(16,'auth','0011_update_proxy_permissions','2020-03-14 10:40:45.649398'),(17,'sessions','0001_initial','2020-03-14 10:40:45.671346'),(18,'student_management_app','0001_initial','2020-03-14 10:40:46.311627');
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
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_adminhod`
--

DROP TABLE IF EXISTS `student_management_app_adminhod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_adminhod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_adminhod`
--

LOCK TABLES `student_management_app_adminhod` WRITE;
/*!40000 ALTER TABLE `student_management_app_adminhod` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_adminhod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_attendance`
--

DROP TABLE IF EXISTS `student_management_app_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_date` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `subject_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_subject_id_id_9ae82fd0_fk_student_m` (`subject_id_id`),
  CONSTRAINT `student_management_a_subject_id_id_9ae82fd0_fk_student_m` FOREIGN KEY (`subject_id_id`) REFERENCES `student_management_app_subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_attendance`
--

LOCK TABLES `student_management_app_attendance` WRITE;
/*!40000 ALTER TABLE `student_management_app_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_attendancereport`
--

DROP TABLE IF EXISTS `student_management_app_attendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_attendancereport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id_id` int(11) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_attendance_id_id_f765f2a1_fk_student_m` (`attendance_id_id`),
  KEY `student_management_a_student_id_id_5a58ceea_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_management_a_attendance_id_id_f765f2a1_fk_student_m` FOREIGN KEY (`attendance_id_id`) REFERENCES `student_management_app_attendance` (`id`),
  CONSTRAINT `student_management_a_student_id_id_5a58ceea_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_attendancereport`
--

LOCK TABLES `student_management_app_attendancereport` WRITE;
/*!40000 ALTER TABLE `student_management_app_attendancereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_attendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_courses`
--

DROP TABLE IF EXISTS `student_management_app_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_courses`
--

LOCK TABLES `student_management_app_courses` WRITE;
/*!40000 ALTER TABLE `student_management_app_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_feedbackstaffs`
--

DROP TABLE IF EXISTS `student_management_app_feedbackstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_feedbackstaffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_staff_id_id_6f22a616_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_management_a_staff_id_id_6f22a616_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_feedbackstaffs`
--

LOCK TABLES `student_management_app_feedbackstaffs` WRITE;
/*!40000 ALTER TABLE `student_management_app_feedbackstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_feedbackstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_feedbackstudent`
--

DROP TABLE IF EXISTS `student_management_app_feedbackstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_feedbackstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_student_id_id_099e23ad_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_management_a_student_id_id_099e23ad_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_feedbackstudent`
--

LOCK TABLES `student_management_app_feedbackstudent` WRITE;
/*!40000 ALTER TABLE `student_management_app_feedbackstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_feedbackstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_leavereportstaff`
--

DROP TABLE IF EXISTS `student_management_app_leavereportstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_leavereportstaff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_staff_id_id_c7710cd5_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_management_a_staff_id_id_c7710cd5_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_leavereportstaff`
--

LOCK TABLES `student_management_app_leavereportstaff` WRITE;
/*!40000 ALTER TABLE `student_management_app_leavereportstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_leavereportstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_leavereportstudent`
--

DROP TABLE IF EXISTS `student_management_app_leavereportstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_leavereportstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_student_id_id_9ea5372c_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_management_a_student_id_id_9ea5372c_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_leavereportstudent`
--

LOCK TABLES `student_management_app_leavereportstudent` WRITE;
/*!40000 ALTER TABLE `student_management_app_leavereportstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_leavereportstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_notificationstaffs`
--

DROP TABLE IF EXISTS `student_management_app_notificationstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_notificationstaffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_staff_id_id_2d336ab5_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_management_a_staff_id_id_2d336ab5_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_notificationstaffs`
--

LOCK TABLES `student_management_app_notificationstaffs` WRITE;
/*!40000 ALTER TABLE `student_management_app_notificationstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_notificationstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_notificationstudent`
--

DROP TABLE IF EXISTS `student_management_app_notificationstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_notificationstudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_student_id_id_f8c05ed7_fk_student_m` (`student_id_id`),
  CONSTRAINT `student_management_a_student_id_id_f8c05ed7_fk_student_m` FOREIGN KEY (`student_id_id`) REFERENCES `student_management_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_notificationstudent`
--

LOCK TABLES `student_management_app_notificationstudent` WRITE;
/*!40000 ALTER TABLE `student_management_app_notificationstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_notificationstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_staffs`
--

DROP TABLE IF EXISTS `student_management_app_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_staffs`
--

LOCK TABLES `student_management_app_staffs` WRITE;
/*!40000 ALTER TABLE `student_management_app_staffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_students`
--

DROP TABLE IF EXISTS `student_management_app_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_course_id_id_fcd09bed_fk_student_m` (`course_id_id`),
  CONSTRAINT `student_management_a_course_id_id_fcd09bed_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_management_app_courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_students`
--

LOCK TABLES `student_management_app_students` WRITE;
/*!40000 ALTER TABLE `student_management_app_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_management_app_subjects`
--

DROP TABLE IF EXISTS `student_management_app_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_management_app_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `staff_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_management_a_course_id_id_342668dd_fk_student_m` (`course_id_id`),
  KEY `student_management_a_staff_id_id_5f47119a_fk_student_m` (`staff_id_id`),
  CONSTRAINT `student_management_a_course_id_id_342668dd_fk_student_m` FOREIGN KEY (`course_id_id`) REFERENCES `student_management_app_courses` (`id`),
  CONSTRAINT `student_management_a_staff_id_id_5f47119a_fk_student_m` FOREIGN KEY (`staff_id_id`) REFERENCES `student_management_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_management_app_subjects`
--

LOCK TABLES `student_management_app_subjects` WRITE;
/*!40000 ALTER TABLE `student_management_app_subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_management_app_subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-14 17:06:31
