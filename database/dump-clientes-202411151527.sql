-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: clientes
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `nome` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empresa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefone_comercial` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_user_id_foreign` (`user_id`),
  CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,32,'John John','johnjohn@uol.com.br','9199384634','Microsoft','9838476543','2024-11-14 14:45:10','2024-11-14 14:45:10'),(2,33,'J J Benitez','jjbenitez@terra.com.br','99239429339','Apple','99234234524','2024-11-14 14:49:52','2024-11-14 14:49:52'),(3,33,'www','eremitaio79@gmail.com','9199384634','Xerox','9838476543','2024-11-14 15:32:18','2024-11-14 15:32:18'),(4,33,'qweqwerqwer','jjbenitez@terra.com.br','9199384634','Microsoft','9838476543','2024-11-14 15:34:38','2024-11-14 15:34:38');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_11_13_152437_create_clientes_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('pauloeremita@gmail.com','$2y$12$268/czDEWoMWc1C.ECQyR.bB7fuQrEDTtJuuywkEe08ewBLx3Fe5y','2024-11-13 17:48:31');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Gennaro Lockman','bednar.kitty@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','4wyy1Qjohj','2024-11-13 10:30:30','2024-11-13 10:30:30'),(2,'Keenan Harvey','daron95@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','TynUJXAavN','2024-11-13 10:30:30','2024-11-13 10:30:30'),(3,'Dr. Phoebe Will DVM','fritsch.jude@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','5FZZSTG10m','2024-11-13 10:30:30','2024-11-13 10:30:30'),(4,'Marcia Cremin','bbeer@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','IPTKgu5fRs','2024-11-13 10:30:30','2024-11-13 10:30:30'),(5,'Moises Reinger Sr.','fletcher.hand@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','W3bR0XRpPE','2024-11-13 10:30:30','2024-11-13 10:30:30'),(6,'Marisa Lueilwitz','lane54@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','W69Wj0PnJ1','2024-11-13 10:30:30','2024-11-13 10:30:30'),(7,'Fernando Kub','luettgen.hester@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','IWsd2dnDJr','2024-11-13 10:30:30','2024-11-13 10:30:30'),(8,'Garrison Ferry MD','trenton.lehner@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','FFV5IadSTl','2024-11-13 10:30:30','2024-11-13 10:30:30'),(9,'Mekhi Stokes','zulauf.odie@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','WSQYk9gzg3','2024-11-13 10:30:30','2024-11-13 10:30:30'),(10,'Junior Lubowitz','dwuckert@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','kpyh7gUOY2','2024-11-13 10:30:30','2024-11-13 10:30:30'),(11,'Jarred Harvey','sydnie44@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','Czklg8MhKN','2024-11-13 10:30:30','2024-11-13 10:30:30'),(12,'Sherwood Kovacek','minerva08@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','fK7b8z5I05','2024-11-13 10:30:30','2024-11-13 10:30:30'),(13,'Elda Schaden','braun.pinkie@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','QySwvoHLb9','2024-11-13 10:30:30','2024-11-13 10:30:30'),(14,'Nakia Dare DVM','randi40@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','XflD3Kps3B','2024-11-13 10:30:30','2024-11-13 10:30:30'),(15,'Jorge Ernser','laila38@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','u4mz4u2XcY','2024-11-13 10:30:30','2024-11-13 10:30:30'),(16,'Marlon Glover','simonis.colton@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','JHiEVhhFA1','2024-11-13 10:30:30','2024-11-13 10:30:30'),(17,'Kailey Macejkovic','savanah75@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','JqsMl7EjDF','2024-11-13 10:30:30','2024-11-13 10:30:30'),(18,'Myrl Ortiz','morton.hauck@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','WovbLBf6aY','2024-11-13 10:30:30','2024-11-13 10:30:30'),(19,'Yoshiko Blanda','konopelski.donnie@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','iM4DVrvpCc','2024-11-13 10:30:30','2024-11-13 10:30:30'),(20,'Mrs. Maxie Predovic','roberts.izaiah@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','jpJez2pJF0','2024-11-13 10:30:30','2024-11-13 10:30:30'),(21,'Russell Mohr III','habernathy@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','EoNHsBtLax','2024-11-13 10:30:30','2024-11-13 10:30:30'),(22,'Elva Hessel PhD','earnest.ledner@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','cjUNd1JF4X','2024-11-13 10:30:30','2024-11-13 10:30:30'),(23,'Mr. Adrain Nikolaus Jr.','schumm.annamarie@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','L0q9s9uelF','2024-11-13 10:30:30','2024-11-13 10:30:30'),(24,'Mrs. Sibyl Emmerich V','xkub@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','5Ms4ez3xxx','2024-11-13 10:30:30','2024-11-13 10:30:30'),(25,'Carlie Thompson IV','hammes.ismael@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','1BwWGCvSOD','2024-11-13 10:30:30','2024-11-13 10:30:30'),(26,'Keeley Parisian','buford.kerluke@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','q3jurr6GNg','2024-11-13 10:30:31','2024-11-13 10:30:31'),(27,'Rubye Kovacek','rosie.schultz@example.com','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','WwPhKIqAxO','2024-11-13 10:30:31','2024-11-13 10:30:31'),(28,'Verner Huels','kozey.lucious@example.org','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','ImO6J3o97C','2024-11-13 10:30:31','2024-11-13 10:30:31'),(29,'Mrs. Maryse Heaney','darrick50@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','WSW3yFTasI','2024-11-13 10:30:31','2024-11-13 10:30:31'),(30,'Brenna Kris Sr.','hirthe.jermey@example.net','2024-11-13 10:30:30','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','NghhYSUmK4','2024-11-13 10:30:31','2024-11-13 10:30:31'),(31,'Test User','test@example.com','2024-11-13 10:30:31','$2y$12$kjF44lBenvdEmHSPaBnWye8hXq445lZInWC7ik3pD83n0eb2Y/t12','user','cmN293zYBi','2024-11-13 10:30:31','2024-11-13 10:30:31'),(32,'Paulo Eremita','pauloeremita@gmail.com',NULL,'$2y$12$ex9O/xbCIEVDexBSLSMQxu47eUgnJvw0G1Qzq4UihdVC5tu80lqgW','admin','TZqmEfGCbAvt5M7vnZTn8psEcwxXddI6jwbW4MJZR9FYC6OKZd9qtM1zPc0s','2024-11-13 10:35:26','2024-11-13 16:49:18'),(33,'Jobervaldo Pereira','jober@gmail.com',NULL,'$2y$12$2bPkWC5IRZ98Y2nkSRMKH.cMBluXS80fvwGw7QA.fGE0qEmE9ixu6','user',NULL,'2024-11-13 16:59:12','2024-11-14 18:25:45'),(34,'Hubert Moen','sawayn.samantha@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','bCkygfMNF9','2024-11-13 19:37:45','2024-11-13 19:37:45'),(35,'Paul Emmerich','leuschke.hardy@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','Pe7yQxVZtp','2024-11-13 19:37:45','2024-11-13 19:37:45'),(36,'Prof. Kirstin Stracke','tobin.kemmer@example.net','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','6LRSfqn4pl','2024-11-13 19:37:45','2024-11-13 19:37:45'),(37,'Lupe Lakin','nborer@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','LMgGUqJAK0','2024-11-13 19:37:45','2024-11-13 19:37:45'),(38,'Miss Ima Keebler','djacobson@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','WMkzG5tf6h','2024-11-13 19:37:45','2024-11-13 19:37:45'),(39,'Camryn Rohan','quentin.erdman@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','TrRRVPdYbP','2024-11-13 19:37:45','2024-11-13 19:37:45'),(40,'Alberta Reynolds','nschulist@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','wro0KD1PRv','2024-11-13 19:37:45','2024-11-13 19:37:45'),(41,'Titus Lind','casper.geo@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','5kFkeFUTgx','2024-11-13 19:37:45','2024-11-13 19:37:45'),(42,'Ines Ziemann','bernita45@example.net','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','ubNzTDiPYs','2024-11-13 19:37:45','2024-11-13 19:37:45'),(43,'Miss Marielle Dietrich','gleichner.dashawn@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','KIYIqsywvx','2024-11-13 19:37:45','2024-11-13 19:37:45'),(44,'Mr. Ismael King II','rodriguez.edna@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','6Ywo9Tnoyl','2024-11-13 19:37:45','2024-11-13 19:37:45'),(45,'Jaleel Zemlak','wilderman.prince@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','Bhvh8caCDX','2024-11-13 19:37:45','2024-11-13 19:37:45'),(46,'Aryanna Larson','kassandra.hauck@example.net','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','7tMSUEyiOT','2024-11-13 19:37:45','2024-11-13 19:37:45'),(47,'Bobbie Hodkiewicz III','maybelle93@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','OpM5iLtFZb','2024-11-13 19:37:45','2024-11-13 19:37:45'),(48,'Monserrate Keebler','howell04@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','MNwhveb0C8','2024-11-13 19:37:45','2024-11-13 19:37:45'),(49,'Jacynthe Treutel III','lehner.kiel@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','pl33TrzWcZ','2024-11-13 19:37:45','2024-11-13 19:37:45'),(50,'Prof. Dimitri Kutch','harmon87@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','daHxAlDEa6','2024-11-13 19:37:45','2024-11-13 19:37:45'),(51,'Mr. Emile Bailey II','edgardo.johns@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','YID1FWZBKJ','2024-11-13 19:37:45','2024-11-13 19:37:45'),(52,'Anahi Roob','nannie.lynch@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','wk3aibSQRU','2024-11-13 19:37:45','2024-11-13 19:37:45'),(53,'Ernestine Pouros','franecki.dusty@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','vgypX6p2TU','2024-11-13 19:37:45','2024-11-13 19:37:45'),(54,'Eveline Hudson DVM','donnell96@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','dJcjLP1g7o','2024-11-13 19:37:45','2024-11-13 19:37:45'),(55,'Modesto Deckow','rowena.carroll@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','chvqI0Vc7B','2024-11-13 19:37:45','2024-11-13 19:37:45'),(56,'Delmer Monahan','braun.terrell@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','vEI2a3sOJ2','2024-11-13 19:37:45','2024-11-13 19:37:45'),(57,'Prof. Robyn Gislason V','mjacobs@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','bi0UdA1HMo','2024-11-13 19:37:45','2024-11-13 19:37:45'),(58,'Payton Hermann','anastacio89@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','yEUvjWTFs7','2024-11-13 19:37:45','2024-11-13 19:37:45'),(59,'Prof. Daija Carter I','randy.quitzon@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','musWWeFyHA','2024-11-13 19:37:45','2024-11-13 19:37:45'),(60,'Mrs. Kenya McLaughlin DVM','xsanford@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','0oQqy9pGxZ','2024-11-13 19:37:45','2024-11-13 19:37:45'),(61,'Abel Hilpert','iebert@example.com','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','7KqxzDQONx','2024-11-13 19:37:45','2024-11-13 19:37:45'),(62,'Miller Mraz','dkunze@example.org','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','G3OrivEeO1','2024-11-13 19:37:45','2024-11-13 19:37:45'),(63,'Prof. Katelynn Wintheiser Jr.','bell.runolfsson@example.net','2024-11-13 19:37:45','$2y$12$Zusa2tVestvR9n5liMGdFuoZvJjNHpISDgrvITkIRmCn1L8/ZyenW','user','T5jOeeHDTo','2024-11-13 19:37:45','2024-11-13 19:37:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'clientes'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 15:27:31
