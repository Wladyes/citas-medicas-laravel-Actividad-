CREATE DATABASE  IF NOT EXISTS `citas_medicas_pro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `citas_medicas_pro`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: citas_medicas_pro
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `medico_id` bigint(20) unsigned NOT NULL,
  `paciente_id` bigint(20) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citas_medico_id_foreign` (`medico_id`),
  KEY `citas_paciente_id_foreign` (`paciente_id`),
  CONSTRAINT `citas_medico_id_foreign` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `citas_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,13,40,'2026-01-21','02:29:00','Aut harum enim temporibus accusamus dignissimos accusantium.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(2,98,84,'2026-08-02','04:34:00','Nesciunt dolores iusto est ut corporis non sed.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(3,2,79,'2025-12-26','15:27:00','Harum quaerat facilis odio odit consectetur.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(4,12,24,'2026-06-12','19:36:00','Neque consequatur reprehenderit iusto modi.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(5,61,51,'2025-12-02','18:56:00','Repellat pariatur molestiae nihil.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(6,87,64,'2025-12-28','00:59:00','Quisquam incidunt eius facere molestias.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(7,52,73,'2025-10-27','06:42:00','Porro in autem culpa cum error reprehenderit molestias.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(8,18,81,'2026-03-28','12:18:00','Ipsam dolorem in assumenda libero quo.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(9,79,51,'2026-01-10','06:04:00','Incidunt molestiae quia accusamus voluptas tempora eaque.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(10,22,39,'2025-12-20','07:56:00','Et quasi aspernatur qui.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(11,32,99,'2026-07-03','05:34:00','Cupiditate illo similique tenetur perspiciatis.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(12,91,28,'2026-02-25','20:52:00','Consequuntur laborum et suscipit dolores.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(13,18,12,'2026-05-08','23:47:00','Fugiat qui non animi quod vitae.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(14,47,89,'2026-03-31','04:04:00','Nam ea consequatur officiis rem voluptas facilis quod consequatur.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(15,69,5,'2025-11-22','07:33:00','Id eum rerum ducimus harum corporis modi quisquam.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(16,70,83,'2026-05-07','20:20:00','Iste et quae corporis et sequi.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(17,95,13,'2026-06-08','22:40:00','Dolor est alias ut exercitationem.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(18,39,52,'2026-01-09','08:12:00','Omnis similique sit nostrum magni ipsa sequi quia.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(19,44,89,'2026-08-05','12:04:00','Sit eveniet tenetur et quod eum sint.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(20,79,89,'2026-03-21','07:41:00','Quas autem perspiciatis commodi fuga eligendi voluptas itaque doloribus.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(21,3,52,'2026-03-25','16:34:00','Vel est est facilis.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(22,59,68,'2026-10-10','04:21:00','Sint voluptatem enim nihil doloribus et eaque nisi.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(23,34,27,'2026-06-19','10:02:00','Ut qui rerum accusantium sed.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(24,59,100,'2026-05-02','23:04:00','Consequatur velit nemo eum.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(25,100,7,'2026-03-22','23:37:00','Labore quia dolorum dolores iusto occaecati amet.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(26,97,36,'2026-02-10','00:45:00','Exercitationem possimus eveniet fuga.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(27,41,47,'2026-10-08','15:03:00','Adipisci et velit natus quia illo.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(28,8,88,'2026-05-27','03:29:00','Quae laudantium esse autem ratione est.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(29,27,42,'2025-12-18','22:36:00','Fugiat est eius esse.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(30,86,77,'2026-05-16','00:27:00','Repellat omnis provident ea aut.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(31,16,32,'2026-03-30','01:35:00','Sunt quia quae in quasi.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(32,82,52,'2025-11-07','08:23:00','Ratione consequuntur dolorem iure perferendis tempora omnis eligendi.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(33,6,57,'2026-10-20','13:41:00','Maxime et temporibus vel occaecati et rem possimus.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(34,91,71,'2026-03-05','03:18:00','Velit eligendi illum quis.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(35,46,6,'2026-08-01','07:23:00','Id rerum dolore commodi sed est est illum.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(36,36,69,'2026-04-26','18:42:00','Praesentium dolorem sapiente laboriosam.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(37,57,1,'2026-08-14','01:50:00','Qui ipsam nihil reiciendis nostrum illo dicta laboriosam.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(38,38,30,'2026-06-03','23:18:00','Iure magni qui harum quo consequuntur.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(39,83,59,'2026-04-12','02:06:00','Aut quisquam beatae qui est eius facere at.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(40,7,30,'2025-12-18','00:16:00','Quibusdam consectetur est voluptas laborum laborum qui.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(41,55,14,'2026-09-21','18:23:00','Quia voluptatem at aspernatur amet non voluptatum.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(42,90,75,'2026-01-03','17:08:00','Cupiditate quae qui quisquam.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(43,31,64,'2026-06-14','03:05:00','Voluptatum ea nesciunt perspiciatis sequi deleniti voluptas facere corrupti.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(44,17,61,'2025-11-23','22:21:00','Nostrum rerum aut qui eveniet exercitationem.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(45,74,43,'2026-04-30','23:09:00','Enim id quos architecto nostrum velit quasi atque.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(46,71,81,'2025-11-12','12:48:00','Qui voluptas quis ea consequatur voluptatem necessitatibus.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(47,53,40,'2025-11-23','04:07:00','Dolor repudiandae vitae vel modi tempora at officiis.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(48,42,72,'2026-07-24','16:42:00','Expedita iure dolore quia similique qui recusandae vero.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(49,9,14,'2026-05-05','15:12:00','Modi autem quis optio quasi repudiandae culpa.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(50,31,14,'2026-05-27','12:23:00','Dolor eaque officia vel.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(51,68,92,'2026-09-29','22:50:00','Est maiores illum deleniti optio sint unde dolorem.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(52,98,16,'2026-07-08','14:59:00','Ullam quia error consequatur fugit.','confirmada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(53,81,97,'2026-05-18','05:17:00','Rem quo commodi repellendus eius ducimus reprehenderit.','cancelada','2025-10-25 08:23:41','2025-10-25 08:23:41'),(54,16,48,'2025-11-03','12:26:00','Inventore dolore accusantium aspernatur voluptates qui praesentium eum.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(55,55,90,'2026-03-28','03:31:00','Sed fugit ea sit et nostrum enim suscipit.','pendiente','2025-10-25 08:23:41','2025-10-25 08:23:41'),(56,77,87,'2026-05-13','23:29:00','Deserunt dolorem ratione esse nobis.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(57,10,33,'2025-11-06','02:30:00','Est debitis sint ea dolores animi dolor omnis sunt.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(58,54,23,'2026-02-02','06:36:00','Sequi sed dolore quia magnam distinctio.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(59,35,50,'2026-09-24','09:19:00','Earum quia placeat eius repellat ea rem.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(60,6,4,'2025-12-16','06:57:00','Sit optio molestias rerum recusandae dolorem maxime.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(61,65,13,'2026-07-10','21:08:00','Molestias ea excepturi quis earum non.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(62,65,33,'2026-07-13','02:57:00','Officiis in perferendis exercitationem inventore saepe.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(63,52,36,'2026-09-19','04:56:00','Ducimus quos voluptate necessitatibus corporis sed reprehenderit voluptatem ut.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(64,32,50,'2026-10-10','12:57:00','Veniam tenetur natus est totam voluptatem.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(65,52,7,'2026-06-18','04:45:00','Non animi nulla esse.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(66,80,96,'2026-03-29','20:58:00','Est ex dolore quod dolorem debitis nam ab voluptatem.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(67,64,78,'2026-01-24','20:56:00','Facilis eos sed perspiciatis et voluptatibus a.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(68,43,59,'2025-11-24','21:15:00','Consequuntur voluptatem ipsa perferendis deleniti libero.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(69,54,17,'2026-02-10','11:27:00','Nobis dolor magni molestiae delectus optio mollitia doloribus unde.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(70,71,31,'2026-09-19','04:09:00','Odit magnam voluptatem et neque assumenda quia minima modi.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(71,77,46,'2026-08-15','11:27:00','Et nulla modi laboriosam reprehenderit deserunt qui.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(72,42,97,'2026-03-10','06:19:00','Sit earum nihil architecto iure assumenda.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(73,76,52,'2026-08-06','22:45:00','Velit quia ut saepe consequatur ad maxime dolorem.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(74,44,17,'2026-04-27','01:46:00','Nesciunt ex consequatur inventore sunt.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(75,96,100,'2026-05-29','20:49:00','Molestiae fugiat in eveniet qui ut.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(76,80,95,'2026-01-28','18:40:00','Et ab molestiae nostrum eius eius.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(77,63,34,'2026-01-08','16:12:00','Aspernatur rerum est et quis nemo pariatur tempora.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(78,85,34,'2025-11-09','18:42:00','Quia dolorum rerum ullam ipsam et.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(79,20,61,'2026-06-05','21:58:00','Ratione natus incidunt nemo nemo id qui.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(80,32,51,'2026-04-24','17:23:00','Odio tempore dolores quam facere.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(81,39,89,'2026-04-07','07:26:00','Deleniti ab eum ipsa quis.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(82,77,52,'2026-05-14','10:57:00','Quo laborum qui perferendis corporis.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(83,99,5,'2026-03-02','16:44:00','Libero eum rerum quibusdam repellat aliquam quas ullam.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(84,14,19,'2026-02-01','08:38:00','Nostrum repellendus iste tempore voluptate sed voluptatum consequatur.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(85,65,23,'2026-01-06','14:27:00','Accusantium eligendi sit magni sit est necessitatibus.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(86,88,68,'2026-02-12','02:01:00','Non repellat recusandae iste modi doloremque beatae illum laborum.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(87,59,36,'2026-07-13','08:45:00','Beatae architecto consequatur qui sequi aliquid.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(88,85,57,'2026-07-13','12:44:00','Distinctio voluptatibus corrupti voluptatem laudantium.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(89,63,4,'2026-10-02','18:15:00','Illo repudiandae ratione sit.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(90,92,46,'2026-03-03','17:58:00','Odio est et iste debitis temporibus id nesciunt.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(91,99,96,'2026-07-25','03:25:00','Nam sed est sed cumque omnis sapiente sit officiis.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(92,99,26,'2026-02-17','15:08:00','Ex nesciunt sunt fugiat ullam.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(93,3,43,'2025-11-16','12:54:00','Voluptatem laudantium id modi omnis aut.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(94,15,37,'2026-08-06','11:35:00','Consequatur assumenda est quo amet.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(95,22,79,'2026-09-05','01:51:00','Voluptates aut fugiat laborum impedit.','confirmada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(96,32,86,'2026-04-17','06:54:00','Distinctio eos odit quia perferendis facere cupiditate aut.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42'),(97,28,24,'2026-07-05','01:17:00','Eius debitis doloremque atque reprehenderit magni recusandae nemo.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(98,52,32,'2026-08-27','05:36:00','Et qui vel ab non velit dolor.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(99,80,85,'2026-02-08','23:03:00','Exercitationem at animi vel id sed maiores esse.','pendiente','2025-10-25 08:23:42','2025-10-25 08:23:42'),(100,85,59,'2026-02-14','08:41:00','Sint est est non quasi hic voluptas.','cancelada','2025-10-25 08:23:42','2025-10-25 08:23:42');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
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
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `medicos_correo_unique` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Meaghan Hodkiewicz','Neurología','theresa.auer@example.com','641.757.9523','2025-10-25 08:23:41','2025-10-25 08:23:41'),(2,'Otilia Fadel','Cardiología','hadley.abshire@example.net','1-618-317-2831','2025-10-25 08:23:41','2025-10-25 08:23:41'),(3,'Janie Treutel','Cardiología','arianna41@example.net','(712) 846-7000','2025-10-25 08:23:41','2025-10-25 08:23:41'),(4,'Prof. Tremaine Lynch','Cardiología','uhaag@example.net','(940) 220-3077','2025-10-25 08:23:41','2025-10-25 08:23:41'),(5,'Sheridan Wilkinson','Dermatología','katrine15@example.net','+14844580657','2025-10-25 08:23:41','2025-10-25 08:23:41'),(6,'Giovanni Waters','Cardiología','vchamplin@example.com','+1 (434) 246-0625','2025-10-25 08:23:41','2025-10-25 08:23:41'),(7,'Stan Lindgren','Dermatología','balistreri.alf@example.com','586-385-1728','2025-10-25 08:23:41','2025-10-25 08:23:41'),(8,'Santino Prohaska','Dermatología','walter58@example.net','+1-225-359-7510','2025-10-25 08:23:41','2025-10-25 08:23:41'),(9,'Lilly Trantow','Neurología','fahey.florida@example.net','(678) 642-7290','2025-10-25 08:23:41','2025-10-25 08:23:41'),(10,'Prof. Elmo Runolfsdottir I','Pediatría','tmosciski@example.org','310-537-3660','2025-10-25 08:23:41','2025-10-25 08:23:41'),(11,'Miss Abagail Abshire','Neurología','tblanda@example.com','+1.313.344.8332','2025-10-25 08:23:41','2025-10-25 08:23:41'),(12,'Minerva Hills','Pediatría','block.cordell@example.org','+14238681456','2025-10-25 08:23:41','2025-10-25 08:23:41'),(13,'Mr. Lorenz Lesch','Cardiología','iva33@example.com','+1-570-397-3938','2025-10-25 08:23:41','2025-10-25 08:23:41'),(14,'Lora Pollich','Neurología','karlie.waelchi@example.net','(336) 561-8227','2025-10-25 08:23:41','2025-10-25 08:23:41'),(15,'Mr. Darrel Runolfsdottir','Neurología','ikihn@example.net','+1-703-346-3980','2025-10-25 08:23:41','2025-10-25 08:23:41'),(16,'Glen Maggio','Dermatología','mohamed18@example.com','+13138463938','2025-10-25 08:23:41','2025-10-25 08:23:41'),(17,'Frederique Sawayn PhD','Dermatología','gina78@example.net','1-520-448-4339','2025-10-25 08:23:41','2025-10-25 08:23:41'),(18,'Miss Michelle Emard Sr.','Cardiología','sabryna.parker@example.org','1-615-578-7683','2025-10-25 08:23:41','2025-10-25 08:23:41'),(19,'Keegan Morissette','Neurología','monique89@example.com','+1 (706) 359-1430','2025-10-25 08:23:41','2025-10-25 08:23:41'),(20,'Arlie Hills','Neurología','agislason@example.org','1-564-489-5352','2025-10-25 08:23:41','2025-10-25 08:23:41'),(21,'Mckenna Treutel','Pediatría','marielle20@example.com','(551) 412-1043','2025-10-25 08:23:41','2025-10-25 08:23:41'),(22,'Prof. Stanton Swaniawski','Dermatología','bkunze@example.net','+1-951-609-1428','2025-10-25 08:23:41','2025-10-25 08:23:41'),(23,'Antonia Gottlieb DVM','Neurología','zackary46@example.net','+1-602-458-2920','2025-10-25 08:23:41','2025-10-25 08:23:41'),(24,'Zechariah Oberbrunner','Cardiología','violette96@example.org','+15137325119','2025-10-25 08:23:41','2025-10-25 08:23:41'),(25,'Ms. Meagan Thompson','Cardiología','gerhold.sarai@example.com','+1-325-722-9991','2025-10-25 08:23:41','2025-10-25 08:23:41'),(26,'Webster Greenfelder','Cardiología','tabbott@example.org','+1-831-529-8915','2025-10-25 08:23:41','2025-10-25 08:23:41'),(27,'Ms. Meaghan Lebsack Jr.','Cardiología','sabryna11@example.org','+1-478-320-2562','2025-10-25 08:23:41','2025-10-25 08:23:41'),(28,'Ethan Stark','Dermatología','alysson.heaney@example.net','+1-213-986-1269','2025-10-25 08:23:41','2025-10-25 08:23:41'),(29,'Curt Jenkins','Neurología','trey73@example.org','+1.772.822.4763','2025-10-25 08:23:41','2025-10-25 08:23:41'),(30,'Jeromy Miller','Cardiología','monica21@example.org','334.671.5125','2025-10-25 08:23:41','2025-10-25 08:23:41'),(31,'Romaine Hand','Dermatología','gtrantow@example.net','+16803417530','2025-10-25 08:23:41','2025-10-25 08:23:41'),(32,'Mrs. Callie Klocko','Pediatría','sawayn.cyril@example.com','(580) 240-1297','2025-10-25 08:23:41','2025-10-25 08:23:41'),(33,'Angelica Abbott III','Cardiología','rohan.leonora@example.org','+1.228.460.8849','2025-10-25 08:23:41','2025-10-25 08:23:41'),(34,'Kayley Hackett','Neurología','senger.jordon@example.org','1-956-216-1208','2025-10-25 08:23:41','2025-10-25 08:23:41'),(35,'Assunta Keeling','Dermatología','breitenberg.nickolas@example.com','+17869280506','2025-10-25 08:23:41','2025-10-25 08:23:41'),(36,'Mr. Dalton Reichel','Cardiología','kade.flatley@example.com','903-678-5976','2025-10-25 08:23:41','2025-10-25 08:23:41'),(37,'Donavon Murray','Pediatría','kurtis64@example.com','+1-682-820-1336','2025-10-25 08:23:41','2025-10-25 08:23:41'),(38,'Winona Schroeder','Cardiología','jordon.hilpert@example.net','+1.209.503.8503','2025-10-25 08:23:41','2025-10-25 08:23:41'),(39,'Dave Ferry','Pediatría','alisa18@example.com','(862) 260-8523','2025-10-25 08:23:41','2025-10-25 08:23:41'),(40,'Miss Ellen Mitchell I','Cardiología','fisher.marlee@example.org','908.304.7241','2025-10-25 08:23:41','2025-10-25 08:23:41'),(41,'Jess Medhurst','Pediatría','lemke.rahsaan@example.org','(971) 459-0590','2025-10-25 08:23:41','2025-10-25 08:23:41'),(42,'Everette Will','Pediatría','marquardt.valentine@example.net','+1-818-803-6137','2025-10-25 08:23:41','2025-10-25 08:23:41'),(43,'Ona Dibbert','Dermatología','rohan.cortney@example.com','+13609797242','2025-10-25 08:23:41','2025-10-25 08:23:41'),(44,'Mr. Zachery Prosacco Jr.','Dermatología','eloisa17@example.com','1-631-812-3078','2025-10-25 08:23:41','2025-10-25 08:23:41'),(45,'Tillman Gleichner','Neurología','vdurgan@example.net','+1-956-709-8367','2025-10-25 08:23:41','2025-10-25 08:23:41'),(46,'Mr. Harley Hackett V','Neurología','geichmann@example.net','520.221.5115','2025-10-25 08:23:41','2025-10-25 08:23:41'),(47,'Webster Morissette MD','Pediatría','torphy.jany@example.com','351-424-2393','2025-10-25 08:23:41','2025-10-25 08:23:41'),(48,'Dr. Jerry McCullough MD','Pediatría','monahan.linwood@example.com','+1 (747) 316-3052','2025-10-25 08:23:41','2025-10-25 08:23:41'),(49,'Karina Bruen','Dermatología','keshawn94@example.com','+1 (424) 221-0236','2025-10-25 08:23:41','2025-10-25 08:23:41'),(50,'Cassidy Franecki','Pediatría','djast@example.com','+1-828-730-5750','2025-10-25 08:23:41','2025-10-25 08:23:41'),(51,'Francesca Ferry PhD','Pediatría','deon73@example.org','+1.302.292.5713','2025-10-25 08:23:41','2025-10-25 08:23:41'),(52,'Helen Hammes','Pediatría','pauline03@example.net','(509) 879-9105','2025-10-25 08:23:41','2025-10-25 08:23:41'),(53,'Lionel Williamson','Cardiología','matteo16@example.com','+13238667201','2025-10-25 08:23:41','2025-10-25 08:23:41'),(54,'Mervin Jerde','Pediatría','ghansen@example.net','+1-910-207-5325','2025-10-25 08:23:41','2025-10-25 08:23:41'),(55,'Prof. Natalia Beahan','Cardiología','magdalen83@example.com','870-529-8980','2025-10-25 08:23:41','2025-10-25 08:23:41'),(56,'Guy Rowe','Pediatría','ijaskolski@example.net','1-561-987-5211','2025-10-25 08:23:41','2025-10-25 08:23:41'),(57,'Madelynn Volkman','Pediatría','sigrid.franecki@example.net','+1.314.683.3206','2025-10-25 08:23:41','2025-10-25 08:23:41'),(58,'Stan Maggio','Dermatología','mosinski@example.com','+1.458.276.3002','2025-10-25 08:23:41','2025-10-25 08:23:41'),(59,'Donato Schimmel','Dermatología','jimmie51@example.net','(831) 237-8101','2025-10-25 08:23:41','2025-10-25 08:23:41'),(60,'Westley Wisozk','Dermatología','barton46@example.org','1-754-341-4434','2025-10-25 08:23:41','2025-10-25 08:23:41'),(61,'Hobart Dach','Dermatología','vernon77@example.com','+1.463.982.8941','2025-10-25 08:23:41','2025-10-25 08:23:41'),(62,'Lorine Zieme','Neurología','kyra70@example.com','+15013990011','2025-10-25 08:23:41','2025-10-25 08:23:41'),(63,'Dr. Olin Jones Sr.','Dermatología','gdach@example.com','+1-985-989-6168','2025-10-25 08:23:41','2025-10-25 08:23:41'),(64,'Karolann Senger','Cardiología','kdaniel@example.org','+1 (352) 493-7985','2025-10-25 08:23:41','2025-10-25 08:23:41'),(65,'Dr. Joannie Emmerich','Cardiología','okey99@example.org','743.936.1250','2025-10-25 08:23:41','2025-10-25 08:23:41'),(66,'Mrs. Evangeline Kihn DDS','Dermatología','hodkiewicz.chauncey@example.com','385.729.7090','2025-10-25 08:23:41','2025-10-25 08:23:41'),(67,'Garland Rowe','Neurología','hbednar@example.org','971-268-5649','2025-10-25 08:23:41','2025-10-25 08:23:41'),(68,'Amaya Yundt','Dermatología','pschiller@example.com','(361) 900-7865','2025-10-25 08:23:41','2025-10-25 08:23:41'),(69,'Ophelia Grant','Pediatría','kathleen.okon@example.com','+16803521806','2025-10-25 08:23:41','2025-10-25 08:23:41'),(70,'Dr. Alda Kling','Dermatología','sdicki@example.net','+1 (430) 909-7254','2025-10-25 08:23:41','2025-10-25 08:23:41'),(71,'Natasha Hudson Sr.','Pediatría','vmarquardt@example.org','+1-217-371-0759','2025-10-25 08:23:41','2025-10-25 08:23:41'),(72,'Amya Turner','Neurología','yrempel@example.net','+1.820.440.2590','2025-10-25 08:23:41','2025-10-25 08:23:41'),(73,'Leslie Murray','Cardiología','powlowski.oda@example.org','458-912-2737','2025-10-25 08:23:41','2025-10-25 08:23:41'),(74,'Estrella Wuckert','Neurología','schulist.katelynn@example.org','458.443.0878','2025-10-25 08:23:41','2025-10-25 08:23:41'),(75,'Aleen Stroman','Neurología','romaguera.lexi@example.org','601-824-7538','2025-10-25 08:23:41','2025-10-25 08:23:41'),(76,'Dr. Harrison Fay','Neurología','swaniawski.sherman@example.net','+1-470-660-5154','2025-10-25 08:23:41','2025-10-25 08:23:41'),(77,'Ms. Mozell Kilback PhD','Dermatología','mara.vandervort@example.com','+1-430-225-8977','2025-10-25 08:23:41','2025-10-25 08:23:41'),(78,'Eldridge Spinka','Dermatología','bartell.kamren@example.org','207-606-7329','2025-10-25 08:23:41','2025-10-25 08:23:41'),(79,'Mr. Angel Gulgowski','Neurología','marge.howe@example.net','434-485-7076','2025-10-25 08:23:41','2025-10-25 08:23:41'),(80,'Ms. Pink Lehner','Cardiología','nicholaus47@example.com','925-878-9919','2025-10-25 08:23:41','2025-10-25 08:23:41'),(81,'Prof. Lisa Douglas II','Dermatología','noelia.zulauf@example.org','+1 (270) 549-5958','2025-10-25 08:23:41','2025-10-25 08:23:41'),(82,'Horacio Ryan','Pediatría','lacy77@example.org','(209) 764-9966','2025-10-25 08:23:41','2025-10-25 08:23:41'),(83,'Manley Sanford','Dermatología','johns.halle@example.org','+1 (972) 621-8802','2025-10-25 08:23:41','2025-10-25 08:23:41'),(84,'Milan Witting','Neurología','jbotsford@example.net','1-810-807-3547','2025-10-25 08:23:41','2025-10-25 08:23:41'),(85,'Mr. Ambrose Witting IV','Pediatría','uwill@example.com','(629) 380-6315','2025-10-25 08:23:41','2025-10-25 08:23:41'),(86,'Fabian Powlowski','Dermatología','koch.kaycee@example.org','646-400-8184','2025-10-25 08:23:41','2025-10-25 08:23:41'),(87,'Jadon Ruecker','Cardiología','joy40@example.net','+18307240882','2025-10-25 08:23:41','2025-10-25 08:23:41'),(88,'Tressa Feil','Cardiología','kieran22@example.net','267-844-4593','2025-10-25 08:23:41','2025-10-25 08:23:41'),(89,'Dr. Scottie Wyman','Cardiología','zreichert@example.net','+1 (413) 933-7480','2025-10-25 08:23:41','2025-10-25 08:23:41'),(90,'Dr. Imani Strosin','Pediatría','favian30@example.com','+16129712613','2025-10-25 08:23:41','2025-10-25 08:23:41'),(91,'Avis Gleason','Pediatría','lesch.maya@example.com','(334) 502-0555','2025-10-25 08:23:41','2025-10-25 08:23:41'),(92,'Walter Gutkowski','Cardiología','bogisich.tomasa@example.net','+1-763-660-4878','2025-10-25 08:23:41','2025-10-25 08:23:41'),(93,'Miss Luna Simonis','Neurología','toy.abner@example.net','339-851-1040','2025-10-25 08:23:41','2025-10-25 08:23:41'),(94,'Karlie Crona','Cardiología','shanel.bednar@example.net','+1.334.762.6674','2025-10-25 08:23:41','2025-10-25 08:23:41'),(95,'Prof. Bettie Friesen','Dermatología','mallory.cormier@example.com','205.304.4013','2025-10-25 08:23:41','2025-10-25 08:23:41'),(96,'Ofelia Quitzon DDS','Neurología','hills.marlon@example.net','786.618.2144','2025-10-25 08:23:41','2025-10-25 08:23:41'),(97,'Forest Jakubowski','Cardiología','rowe.junior@example.com','+1-559-213-9396','2025-10-25 08:23:41','2025-10-25 08:23:41'),(98,'Elnora Dickinson','Pediatría','ucollins@example.org','260-231-6594','2025-10-25 08:23:41','2025-10-25 08:23:41'),(99,'Prof. Brennon Pollich','Cardiología','pcummerata@example.net','1-828-614-8054','2025-10-25 08:23:41','2025-10-25 08:23:41'),(100,'Harry Lakin','Dermatología','john97@example.net','681.948.6213','2025-10-25 08:23:41','2025-10-25 08:23:41');
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_10_25_003503_create_medicos_table',1),(5,'2025_10_25_003657_create_pacientes_table',1),(6,'2025_10_25_003713_create_citas_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pacientes_correo_unique` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Alexys Dickinson','1983-01-23','dessie.leffler@example.org','+1.323.396.7807','2025-10-25 08:23:41','2025-10-25 08:23:41'),(2,'Mrs. Halie Conroy III','1989-07-08','bernard29@example.com','1-585-271-1565','2025-10-25 08:23:41','2025-10-25 08:23:41'),(3,'Prof. Korey Kerluke','1993-04-24','schulist.kian@example.net','+1 (534) 392-7993','2025-10-25 08:23:41','2025-10-25 08:23:41'),(4,'Matilda Kunze','1994-09-12','summer54@example.org','+1-480-437-4214','2025-10-25 08:23:41','2025-10-25 08:23:41'),(5,'Aletha Rohan','1983-08-08','delpha20@example.com','838.385.7733','2025-10-25 08:23:41','2025-10-25 08:23:41'),(6,'Dr. Ivy McLaughlin','1990-10-20','maybelle26@example.org','1-636-661-5411','2025-10-25 08:23:41','2025-10-25 08:23:41'),(7,'Prof. Lee McCullough','2004-09-07','zackary.pollich@example.net','+1-816-270-5660','2025-10-25 08:23:41','2025-10-25 08:23:41'),(8,'Audreanne Kozey I','1997-12-14','lou30@example.net','(430) 973-7523','2025-10-25 08:23:41','2025-10-25 08:23:41'),(9,'Mr. Zackery Metz II','1974-03-24','clay63@example.org','401-474-9708','2025-10-25 08:23:41','2025-10-25 08:23:41'),(10,'Alberta Jacobson IV','1990-09-02','jaime71@example.net','469.455.1797','2025-10-25 08:23:41','2025-10-25 08:23:41'),(11,'Miss Mariam Prohaska','1976-05-13','abbey.brekke@example.net','240.309.2377','2025-10-25 08:23:41','2025-10-25 08:23:41'),(12,'Neil Mohr','1993-03-22','okon.audie@example.com','+1-458-460-4370','2025-10-25 08:23:41','2025-10-25 08:23:41'),(13,'Timothy Braun','1981-04-14','elyse.breitenberg@example.com','(484) 749-0965','2025-10-25 08:23:41','2025-10-25 08:23:41'),(14,'Mariam Legros','1980-10-15','christiansen.carleton@example.com','360-879-8532','2025-10-25 08:23:41','2025-10-25 08:23:41'),(15,'Fredrick Wyman','1971-07-19','zbergstrom@example.org','1-678-907-6897','2025-10-25 08:23:41','2025-10-25 08:23:41'),(16,'Miss Mikayla Rodriguez','1994-02-28','deanna.pouros@example.net','1-218-594-9282','2025-10-25 08:23:41','2025-10-25 08:23:41'),(17,'Stephan McDermott','1972-06-26','mraz.mozelle@example.com','541-860-8349','2025-10-25 08:23:41','2025-10-25 08:23:41'),(18,'Zion Shields','1973-12-19','dovie38@example.net','636-668-1703','2025-10-25 08:23:41','2025-10-25 08:23:41'),(19,'Millie Block','1994-11-17','beer.nigel@example.org','+1.283.202.9944','2025-10-25 08:23:41','2025-10-25 08:23:41'),(20,'Corrine Harber','1984-07-10','nweimann@example.org','(559) 232-6338','2025-10-25 08:23:41','2025-10-25 08:23:41'),(21,'Tommie Lind','1982-06-28','matilda44@example.org','(248) 509-6644','2025-10-25 08:23:41','2025-10-25 08:23:41'),(22,'Kristofer Kozey DDS','1979-07-27','mayert.daphne@example.org','+1.820.592.6753','2025-10-25 08:23:41','2025-10-25 08:23:41'),(23,'Oliver Corwin','1994-12-29','freda84@example.org','+19548997845','2025-10-25 08:23:41','2025-10-25 08:23:41'),(24,'Carli Shanahan','2001-04-01','marlen74@example.com','(986) 364-1039','2025-10-25 08:23:41','2025-10-25 08:23:41'),(25,'Dr. Alisha Wolff','1993-07-13','eleanore13@example.org','512-685-6209','2025-10-25 08:23:41','2025-10-25 08:23:41'),(26,'Prof. Ramona Witting','1989-05-16','mwolff@example.com','+1-978-840-1457','2025-10-25 08:23:41','2025-10-25 08:23:41'),(27,'Mikel Rogahn','1998-01-04','white.nathanael@example.org','+16464406460','2025-10-25 08:23:41','2025-10-25 08:23:41'),(28,'Prof. Art Durgan III','1983-09-25','deanna.balistreri@example.org','+1-508-508-5325','2025-10-25 08:23:41','2025-10-25 08:23:41'),(29,'Serenity Green IV','1989-09-08','jakayla60@example.org','470-862-7789','2025-10-25 08:23:41','2025-10-25 08:23:41'),(30,'Russ Rohan','1976-01-10','wcorwin@example.com','+1-571-343-7415','2025-10-25 08:23:41','2025-10-25 08:23:41'),(31,'Jordyn Altenwerth','1995-04-18','elian19@example.net','+1 (419) 745-7393','2025-10-25 08:23:41','2025-10-25 08:23:41'),(32,'Ariane Ondricka DDS','2003-01-28','kessler.keaton@example.net','+1-517-658-8366','2025-10-25 08:23:41','2025-10-25 08:23:41'),(33,'Mrs. Precious Walker IV','2003-12-06','kobe.abshire@example.net','(614) 864-6550','2025-10-25 08:23:41','2025-10-25 08:23:41'),(34,'Prof. Avery Toy','1999-06-28','candelario.kautzer@example.org','+1.513.813.6760','2025-10-25 08:23:41','2025-10-25 08:23:41'),(35,'Julia Cronin','1990-06-17','uschowalter@example.com','832-219-3947','2025-10-25 08:23:41','2025-10-25 08:23:41'),(36,'Margarette Gulgowski','1979-08-30','schneider.autumn@example.com','361-440-0407','2025-10-25 08:23:41','2025-10-25 08:23:41'),(37,'Prof. Alysson Tromp PhD','2000-11-20','isaias.paucek@example.com','909-800-4051','2025-10-25 08:23:41','2025-10-25 08:23:41'),(38,'Rogers Wilkinson','1970-05-01','rossie.emmerich@example.org','1-224-951-2906','2025-10-25 08:23:41','2025-10-25 08:23:41'),(39,'Ms. Christelle Spinka','1985-06-23','rolfson.brody@example.com','+18045972197','2025-10-25 08:23:41','2025-10-25 08:23:41'),(40,'Jude Beatty','1983-09-18','lemmerich@example.com','+1.682.217.7328','2025-10-25 08:23:41','2025-10-25 08:23:41'),(41,'Katelynn Graham','1993-10-20','jziemann@example.com','952-200-8937','2025-10-25 08:23:41','2025-10-25 08:23:41'),(42,'Jacques Klocko','1988-01-07','haylee42@example.org','1-936-517-1450','2025-10-25 08:23:41','2025-10-25 08:23:41'),(43,'Prof. Jadyn Brakus','1994-04-08','amy.collins@example.net','+1-586-390-4236','2025-10-25 08:23:41','2025-10-25 08:23:41'),(44,'Keeley Nader PhD','1985-07-14','sheila.bode@example.net','701.984.2963','2025-10-25 08:23:41','2025-10-25 08:23:41'),(45,'Shanny Howell','2003-03-17','domenica.farrell@example.net','1-810-908-9212','2025-10-25 08:23:41','2025-10-25 08:23:41'),(46,'Ms. Danyka Bartoletti DVM','2002-04-25','maye71@example.com','1-458-224-0635','2025-10-25 08:23:41','2025-10-25 08:23:41'),(47,'Jerald Bergnaum MD','1979-10-29','zkiehn@example.net','+1 (386) 478-9137','2025-10-25 08:23:41','2025-10-25 08:23:41'),(48,'Zena Stokes','1999-01-27','jayme.bernier@example.net','+1.952.792.2577','2025-10-25 08:23:41','2025-10-25 08:23:41'),(49,'Mr. Bertrand Reinger I','1983-01-01','vschuppe@example.org','+1-626-739-5352','2025-10-25 08:23:41','2025-10-25 08:23:41'),(50,'Khalil Cole','1996-09-05','manuel35@example.org','1-618-807-7257','2025-10-25 08:23:41','2025-10-25 08:23:41'),(51,'Armand Legros MD','1981-11-01','harley.hermiston@example.com','+14698231363','2025-10-25 08:23:41','2025-10-25 08:23:41'),(52,'Prof. Braulio Morissette','1976-06-23','raphaelle11@example.net','+18585959234','2025-10-25 08:23:41','2025-10-25 08:23:41'),(53,'Prof. Deron Champlin','1984-01-10','sebastian.bergstrom@example.com','+1 (606) 865-5423','2025-10-25 08:23:41','2025-10-25 08:23:41'),(54,'Kian Lesch','1982-10-03','davis.adrienne@example.com','951-427-3478','2025-10-25 08:23:41','2025-10-25 08:23:41'),(55,'Obie O\'Hara','1999-08-01','jkilback@example.org','+1 (737) 848-4457','2025-10-25 08:23:41','2025-10-25 08:23:41'),(56,'Kirsten Keeling','1998-05-03','wilderman.lura@example.com','+1-573-328-5986','2025-10-25 08:23:41','2025-10-25 08:23:41'),(57,'Dr. Trent Morissette','1977-10-31','pfeffer.karina@example.com','+1-872-688-2904','2025-10-25 08:23:41','2025-10-25 08:23:41'),(58,'Margie Cormier','1996-06-23','gloria85@example.com','907.338.4372','2025-10-25 08:23:41','2025-10-25 08:23:41'),(59,'Mrs. Ally Hegmann III','1983-02-02','bpredovic@example.net','+1-848-260-9682','2025-10-25 08:23:41','2025-10-25 08:23:41'),(60,'Prof. Arlie Torphy','1998-05-27','willms.alvina@example.org','+1.272.995.7559','2025-10-25 08:23:41','2025-10-25 08:23:41'),(61,'Dr. Jarrell Kuhic IV','1981-06-03','wilkinson.hildegard@example.org','+1-509-420-6217','2025-10-25 08:23:41','2025-10-25 08:23:41'),(62,'Chelsie Denesik','2002-10-24','hbartell@example.com','+1 (231) 309-3966','2025-10-25 08:23:41','2025-10-25 08:23:41'),(63,'Meta Jenkins','1991-03-05','jayda62@example.com','1-704-763-9838','2025-10-25 08:23:41','2025-10-25 08:23:41'),(64,'Rodrigo Mayert','1974-03-03','germaine.connelly@example.com','(503) 968-3960','2025-10-25 08:23:41','2025-10-25 08:23:41'),(65,'Dr. Adella Ernser','1973-12-18','boyer.jeanie@example.com','+1-786-563-8965','2025-10-25 08:23:41','2025-10-25 08:23:41'),(66,'Patricia Raynor','1974-05-19','fermin09@example.com','(680) 568-8313','2025-10-25 08:23:41','2025-10-25 08:23:41'),(67,'Mr. Percy D\'Amore','1973-12-06','daugherty.marcia@example.org','(385) 538-4710','2025-10-25 08:23:41','2025-10-25 08:23:41'),(68,'Noemie Jakubowski','2005-07-22','lura.stroman@example.org','+18022181276','2025-10-25 08:23:41','2025-10-25 08:23:41'),(69,'Prof. Joshuah Dibbert','1992-12-22','vskiles@example.com','+18509493146','2025-10-25 08:23:41','2025-10-25 08:23:41'),(70,'Curt Deckow','1995-10-26','gwen.hamill@example.org','847-326-7100','2025-10-25 08:23:41','2025-10-25 08:23:41'),(71,'Candelario Robel II','1984-09-19','meggie94@example.net','209-991-6150','2025-10-25 08:23:41','2025-10-25 08:23:41'),(72,'Dr. Cielo Hills Sr.','2004-06-27','titus.goyette@example.org','980.417.3979','2025-10-25 08:23:41','2025-10-25 08:23:41'),(73,'Aleen Schroeder','2002-01-24','branson79@example.org','1-330-442-3187','2025-10-25 08:23:41','2025-10-25 08:23:41'),(74,'Magnus Kihn MD','2002-08-27','runte.vincenzo@example.org','(364) 691-4276','2025-10-25 08:23:41','2025-10-25 08:23:41'),(75,'Geoffrey Rowe','1999-09-26','prosacco.richie@example.net','936-819-4354','2025-10-25 08:23:41','2025-10-25 08:23:41'),(76,'Samson Skiles','2004-01-19','sjones@example.org','(865) 800-6271','2025-10-25 08:23:41','2025-10-25 08:23:41'),(77,'Ms. Sincere Raynor Sr.','2004-04-26','smcclure@example.org','+1-872-482-9153','2025-10-25 08:23:41','2025-10-25 08:23:41'),(78,'Gia Medhurst','1983-08-12','jalen.marquardt@example.net','+1-484-371-9404','2025-10-25 08:23:41','2025-10-25 08:23:41'),(79,'Vernie Towne','1997-02-05','johnston.shyanne@example.net','(231) 634-5367','2025-10-25 08:23:41','2025-10-25 08:23:41'),(80,'Miss Teagan O\'Hara MD','1991-06-08','mkozey@example.org','747.448.0445','2025-10-25 08:23:41','2025-10-25 08:23:41'),(81,'Mr. Tyler Hammes','1982-02-07','hrunolfsson@example.net','+1.516.325.0924','2025-10-25 08:23:41','2025-10-25 08:23:41'),(82,'Mr. Tristin Stehr','1985-05-27','ebailey@example.org','1-785-810-8289','2025-10-25 08:23:41','2025-10-25 08:23:41'),(83,'Prof. Rose Kirlin I','1986-08-04','kuhn.joanny@example.com','781.290.7264','2025-10-25 08:23:41','2025-10-25 08:23:41'),(84,'Jailyn Baumbach III','1989-05-01','torrey07@example.com','1-616-555-1678','2025-10-25 08:23:41','2025-10-25 08:23:41'),(85,'Genevieve Schmeler IV','1990-02-02','kohler.elouise@example.org','(774) 390-6107','2025-10-25 08:23:41','2025-10-25 08:23:41'),(86,'Abigail Harris','1971-10-17','hwaters@example.net','843-224-3272','2025-10-25 08:23:41','2025-10-25 08:23:41'),(87,'Webster Ullrich','1990-03-17','alberto73@example.com','(253) 780-2625','2025-10-25 08:23:41','2025-10-25 08:23:41'),(88,'Felicity Weber','2004-06-16','jeremy.schuppe@example.com','+1.501.513.6322','2025-10-25 08:23:41','2025-10-25 08:23:41'),(89,'Mr. Elijah Schuster II','1994-08-06','adela61@example.com','(507) 392-2996','2025-10-25 08:23:41','2025-10-25 08:23:41'),(90,'Shane Greenfelder','1983-12-19','bethany24@example.org','+16507085174','2025-10-25 08:23:41','2025-10-25 08:23:41'),(91,'Candice Pfannerstill','1972-06-01','xwilliamson@example.net','985.840.5427','2025-10-25 08:23:41','2025-10-25 08:23:41'),(92,'Susie Lemke II','1989-02-07','jeremie.thompson@example.org','445-264-7625','2025-10-25 08:23:41','2025-10-25 08:23:41'),(93,'Flavie Boyle','1974-12-03','hklocko@example.com','+1 (402) 273-3055','2025-10-25 08:23:41','2025-10-25 08:23:41'),(94,'Waldo Kihn','1995-05-04','armani86@example.com','+19517802595','2025-10-25 08:23:41','2025-10-25 08:23:41'),(95,'Kendra Lockman','1985-05-10','angie.schuster@example.net','+1 (463) 281-9128','2025-10-25 08:23:41','2025-10-25 08:23:41'),(96,'Brandt Hermiston DVM','1980-04-22','ebba.mertz@example.net','(972) 848-9954','2025-10-25 08:23:41','2025-10-25 08:23:41'),(97,'Ms. Lauren Becker','1975-09-19','chauck@example.com','1-385-586-6145','2025-10-25 08:23:41','2025-10-25 08:23:41'),(98,'Dr. Jeffrey Moen IV','1981-07-25','wiegand.danial@example.org','+12794743918','2025-10-25 08:23:41','2025-10-25 08:23:41'),(99,'Autumn Prosacco','1973-04-30','kjones@example.com','+1.830.768.9910','2025-10-25 08:23:41','2025-10-25 08:23:41'),(100,'Dr. Madisen Becker IV','1977-10-04','ruthe.dickinson@example.net','252-759-3169','2025-10-25 08:23:41','2025-10-25 08:23:41');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
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
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-25 14:05:42
