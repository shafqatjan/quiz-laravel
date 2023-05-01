-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: machine-test
-- ------------------------------------------------------
-- Server version	5.5.5-10.7.6-MariaDB-1:10.7.6+maria~ubu2004

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_04_28_114504_create_question_categories_table',1),(6,'2023_04_28_114509_create_questions_table',1),(7,'2023_04_28_114955_create_options_table',1),(8,'2023_04_28_115141_add_correct_option_id_in_questions_table',1),(9,'2023_04_28_115616_create_user_question_answers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'A programming language for web development','2023-04-28 12:39:42','2023-04-28 12:39:42',1),(2,'A markup language for creating web pages','2023-04-28 12:39:42','2023-04-28 12:39:42',1),(3,'A database management system','2023-04-28 12:39:42','2023-04-28 12:39:42',1),(4,'A server-side scripting language for desktop applications','2023-04-28 12:39:42','2023-04-28 12:39:42',1),(5,'GET sends data as a URL parameter, while POST sends data in the HTTP request body','2023-04-28 12:39:42','2023-04-28 12:39:42',2),(6,'GET is more secure than POST','2023-04-28 12:39:42','2023-04-28 12:39:42',2),(7,'POST can be used for retrieving data, while GET can only be used for submitting data','2023-04-28 12:39:42','2023-04-28 12:39:42',2),(8,'There is no difference between GET and POST methods in PHP','2023-04-28 12:39:42','2023-04-28 12:39:42',2),(9,'Use the mysql_connect function','2023-04-28 12:39:42','2023-04-28 12:39:42',3),(10,'Use the PDO class','2023-04-28 12:39:42','2023-04-28 12:39:42',3),(11,'Use the mysql class','2023-04-28 12:39:42','2023-04-28 12:39:42',3),(12,'Use the mysqli_connect function','2023-04-28 12:39:42','2023-04-28 12:39:42',3),(13,'Hyper Text Markup Language','2023-04-28 12:39:42','2023-04-28 12:39:42',6),(14,'High Traffic Marking Language','2023-04-28 12:39:42','2023-04-28 12:39:42',6),(15,'Hyper Technical Marking Language','2023-04-28 12:39:42','2023-04-28 12:39:42',6),(16,'High Tech Markup Language','2023-04-28 12:39:42','2023-04-28 12:39:42',6),(17,'To display the main content of a web page','2023-04-28 12:39:42','2023-04-28 12:39:42',7),(18,'To provide metadata about the document','2023-04-28 12:39:42','2023-04-28 12:39:42',7),(19,'To format text and images','2023-04-28 12:39:42','2023-04-28 12:39:42',7),(20,'To create links to other web pages','2023-04-28 12:39:42','2023-04-28 12:39:42',7),(21,'<a>','2023-04-28 12:39:42','2023-04-28 12:39:42',8),(22,'<h1>','2023-04-28 12:39:42','2023-04-28 12:39:42',8),(23,'<p>','2023-04-28 12:39:42','2023-04-28 12:39:42',8),(24,'<div>','2023-04-28 12:39:42','2023-04-28 12:39:42',8),(25,'href','2023-04-28 12:39:42','2023-04-28 12:39:42',9),(26,'alt','2023-04-28 12:39:42','2023-04-28 12:39:42',9),(27,'src','2023-04-28 12:39:42','2023-04-28 12:39:42',9),(28,'target','2023-04-28 12:39:42','2023-04-28 12:39:42',9),(29,'<table>','2023-04-28 12:39:42','2023-04-28 12:39:42',10),(30,'<div>','2023-04-28 12:39:42','2023-04-28 12:39:42',10),(31,'<form>','2023-04-28 12:39:42','2023-04-28 12:39:42',10),(32,'<img>','2023-04-28 12:39:42','2023-04-28 12:39:42',10),(33,'Creative Style Sheets','2023-04-28 12:39:42','2023-04-28 12:39:42',11),(34,'Cascading Style Sheets\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',11),(35,'Computer Style Sheets\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',11),(36,'Control Style Sheets','2023-04-28 12:39:42','2023-04-28 12:39:42',11),(37,'Inline styles\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',12),(38,'Internal styles\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',12),(39,'External styles\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',12),(40,'Command line styles\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',12),(41,'font-weight\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',13),(42,'font-size\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',13),(43,'font-family\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',13),(44,'font-style\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',13),(45,'#class','2023-04-28 12:39:42','2023-04-28 12:39:42',14),(46,'.class','2023-04-28 12:39:42','2023-04-28 12:39:42',14),(47,'class','2023-04-28 12:39:42','2023-04-28 12:39:42',14),(48,' :class','2023-04-28 12:39:42','2023-04-28 12:39:42',14),(49,'background-color\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',15),(50,'color','2023-04-28 12:39:42','2023-04-28 12:39:42',15),(51,'border-color\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',15),(52,'font-color\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',15),(53,'$myVariable','2023-04-28 12:39:42','2023-04-28 12:39:42',5),(54,'$1stVariable','2023-04-28 12:39:42','2023-04-28 12:39:42',5),(55,'$my_variable','2023-04-28 12:39:42','2023-04-28 12:39:42',5),(56,'$MyVariable','2023-04-28 12:39:42','2023-04-28 12:39:42',5),(57,'print(\"Hello, World!\");','2023-04-28 12:39:42','2023-04-28 12:39:42',4),(58,' echo(\"Hello, World!\");','2023-04-28 12:39:42','2023-04-28 12:39:42',4),(59,'printf(\"Hello, World!\");','2023-04-28 12:39:42','2023-04-28 12:39:42',4),(60,'scanf(\"Hello, World!\");','2023-04-28 12:39:42','2023-04-28 12:39:42',4),(61,'A programming language','2023-04-28 12:39:42','2023-04-28 12:39:42',16),(62,'A markup language','2023-04-28 12:39:42','2023-04-28 12:39:42',16),(63,'A styling language','2023-04-28 12:39:42','2023-04-28 12:39:42',16),(64,'An operating system','2023-04-28 12:39:42','2023-04-28 12:39:42',16),(65,'//','2023-04-28 12:39:42','2023-04-28 12:39:42',18),(66,'--','2023-04-28 12:39:42','2023-04-28 12:39:42',18),(67,'/*','2023-04-28 12:39:42','2023-04-28 12:39:42',18),(68,'\\\\','2023-04-28 12:39:42','2023-04-28 12:39:42',18),(69,'2','2023-04-28 12:39:42','2023-04-28 12:39:42',19),(70,'3','2023-04-28 12:39:42','2023-04-28 12:39:42',19),(71,'5','2023-04-28 12:39:42','2023-04-28 12:39:42',19),(72,'8','2023-04-28 12:39:42','2023-04-28 12:39:42',19),(73,'=','2023-04-28 12:39:42','2023-04-28 12:39:42',20),(74,'==','2023-04-28 12:39:42','2023-04-28 12:39:42',20),(75,'===','2023-04-28 12:39:42','2023-04-28 12:39:42',20),(76,'<=>','2023-04-28 12:39:42','2023-04-28 12:39:42',20),(77,'var 1name = \"John\";','2023-04-28 12:39:42','2023-04-28 12:39:42',17),(78,'var $age = 25;','2023-04-28 12:39:42','2023-04-28 12:39:42',17),(79,'var #address = \"123 Main St.\";','2023-04-28 12:39:42','2023-04-28 12:39:42',17),(80,'var my name = \"Jane\";','2023-04-28 12:39:42','2023-04-28 12:39:42',17),(81,'My Structure Query Language','2023-04-28 12:39:42','2023-04-28 12:39:42',21),(82,'My Source Query Language\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',21),(83,'My Structured Query Language','2023-04-28 12:39:42','2023-04-28 12:39:42',21),(84,'My System Query Language','2023-04-28 12:39:42','2023-04-28 12:39:42',21),(85,'CREATE table myDatabase;','2023-04-28 12:39:42','2023-04-28 12:39:42',22),(86,'CREATE database myDatabase;','2023-04-28 12:39:42','2023-04-28 12:39:42',22),(87,'INSERT INTO myDatabase;','2023-04-28 12:39:42','2023-04-28 12:39:42',22),(88,'SELECT * FROM myDatabase;','2023-04-28 12:39:42','2023-04-28 12:39:42',22),(89,'SHOW DATABASES;','2023-04-28 12:39:42','2023-04-28 12:39:42',23),(90,'LIST DATABASES;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',23),(91,'DISPLAY DATABASES;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',23),(92,'ALL DATABASES','2023-04-28 12:39:42','2023-04-28 12:39:42',23),(93,'SELECT database myDatabase;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',24),(94,'USE myDatabase;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',24),(95,'SELECT myDatabase;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',24),(96,'USE DATABASE myDatabase;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',24),(97,'CREATE table myTable (name, age, address);\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',25),(98,'CREATE table myTable (name VARCHAR(50), age INT, address VARCHAR(100));\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',25),(99,'INSERT INTO myTable (name, age, address) VALUES (\'John\', 25, \'123 Main St.\');\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',25),(100,'SELECT * FROM myTable;\r\n','2023-04-28 12:39:42','2023-04-28 12:39:42',25);
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_categories`
--

DROP TABLE IF EXISTS `question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_categories`
--

LOCK TABLES `question_categories` WRITE;
/*!40000 ALTER TABLE `question_categories` DISABLE KEYS */;
INSERT INTO `question_categories` VALUES (1,'PHP','2023-04-28 12:39:42','2023-04-28 12:39:42'),(2,'HTML','2023-04-28 12:39:42','2023-04-28 12:39:42'),(3,'CSS','2023-04-28 12:39:42','2023-04-28 12:39:42'),(4,'Javascript','2023-04-28 12:39:42','2023-04-28 12:39:42'),(5,'MYSQL','2023-04-28 12:39:42','2023-04-28 12:39:42');
/*!40000 ALTER TABLE `question_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_category_id` bigint(20) unsigned NOT NULL,
  `correct_option_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_question_category_id_index` (`question_category_id`),
  KEY `questions_correct_option_id_index` (`correct_option_id`),
  CONSTRAINT `questions_correct_option_id_foreign` FOREIGN KEY (`correct_option_id`) REFERENCES `options` (`id`),
  CONSTRAINT `questions_question_category_id_foreign` FOREIGN KEY (`question_category_id`) REFERENCES `question_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'What is PHP?',1,2,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(2,'What is the difference between GET and POST methods in PHP?\r\n',1,5,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(3,'How do you connect to a MySQL database using PHP?\r\n',1,9,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(4,'How do you output \"Hello, World!\" in PHP?',1,58,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(5,'Which of the following is not a valid PHP variable name?',1,54,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(6,'What does HTML stand for?',2,13,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(7,'What is the purpose of the HTML <head> element?',2,18,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(8,'What is the correct HTML tag for creating a hyperlink?',2,21,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(9,'Which HTML attribute is used to specify the URL of an image?',2,27,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(10,'What is the correct HTML tag for creating a table?',2,29,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(11,'What does CSS stand for?\r\n',3,34,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(12,'Which of the following is NOT a valid way to apply CSS styles to an HTML element?\r\n',3,40,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(13,'Which CSS property is used to specify the font family for an element?\r\n',3,43,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(14,'What is the correct syntax for creating a CSS class selector?\r\n',3,46,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(15,'Which CSS property is used to change the background color of an element?\r\n',3,49,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(16,'What is JavaScript?',4,61,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(17,'Which symbol is used for single line comments in JavaScript?\r\n',4,65,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(18,'Which of the following is a correct variable declaration in JavaScript?\r\n',4,78,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(19,'What is the output of the following code:\r\njavascript \r\n<br>var x = 5;<br>\r\nvar y = 3;<br>\r\nvar z = x + y;<br>\r\nconsole.log(z);<br>',4,72,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(20,'Which operator is used to compare two values for equality in JavaScript?\r\n',4,74,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(21,'What does MySQL stand for?\r\n',5,83,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(22,'Which of the following is a correct way to create a database in MySQL?\r\n',5,86,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(23,'Which command is used to list all the databases in MySQL?\r\n',5,89,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(24,'Which command is used to select a database in MySQL?\r\n',5,94,'2023-04-28 12:39:42','2023-04-28 12:39:42'),(25,'Which of the following is a correct way to create a table in MySQL?\r\n',5,98,'2023-04-28 12:39:42','2023-04-28 12:39:42');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_question_answers`
--

DROP TABLE IF EXISTS `user_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_question_answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `question_id` bigint(20) unsigned NOT NULL,
  `option_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `result` enum('C','I','S') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_question_answers_user_id_index` (`user_id`),
  KEY `user_question_answers_option_id_index` (`option_id`),
  CONSTRAINT `user_question_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`),
  CONSTRAINT `user_question_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_question_answers`
--

LOCK TABLES `user_question_answers` WRITE;
/*!40000 ALTER TABLE `user_question_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_question_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'machine-test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 11:25:59
