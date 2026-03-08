CREATE DATABASE  IF NOT EXISTS `art_objects_store2` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `art_objects_store2`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: art_objects_store2
-- ------------------------------------------------------
-- Server version	9.5.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '1c8f39f6-de83-11f0-ab9b-2c3b705c88b8:1-949';

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fio` varchar(255) DEFAULT NULL,
  `bio` text,
  `strana` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `year_of_birth` year DEFAULT NULL,
  `year_of_death` year DEFAULT NULL,
  `year_of_career_start` year DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `brief_introduction` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Дэмиен Херст','Английский художник-концептуалист, известный провокационными работами.','Великобритания','damien@example.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOoXZcf3rgiFfB5-QVlE77pPKRJ7ZIVFxbpA&s',1965,NULL,1985,'Концептуализм','Один из самых дорогих современных художников.'),(2,'Бэнкси','Анонимный уличный художник-граффитист, активист.','Великобритания','banksy@example.com','https://aif-s3.aif.ru/images/017/401/6823b414542b9654fd9d832f097ec09e.jpeg',1974,NULL,1990,'Стрит-арт','Самый загадочный художник современности.'),(3,'Марина Абрамович','Сербская художница перформанса, «бабушка перформанса».','Сербия','marina@example.com','https://upload.wikimedia.org/wikipedia/commons/e/e9/Glasto24_28_300624_%28130_of_545%29_%2853838092455%29_%28cropped%29.jpg',1946,NULL,1968,'Перформанс','Исследует границы тела и сознания.'),(4,'Маурицио Каттелан','Итальянский художник-самоучка, провокатор.','Италия','maurizio@example.com','https://cdn-static.artguide.com/storage/person/251/regular_photo.jpg',1960,NULL,1980,'Концептуализм','Знаменит скандальными работами.'),(5,'Баския','Американский художник, неоэкспрессионизм.','США','basquiat@example.com','https://cdn.vogue.ua/i/image_720x/uploads/article-inline/b52/79a/6ed/5c1e6ed79ab52.jpeg.webp',1960,NULL,1976,'Неоэкспрессионизм','Сочетал поэзию, рисунок и живопись.'),(6,'Дута Перман','Подробная биография Дуты Перманы (Fuyuki23) в основном сосредоточена на его профессиональном пути, так как художник предпочитает не афишировать детали личной жизни.\r\nРанние годы и начало пути\r\nПроисхождение: Дута родился в 1991 году в Индонезии.\r\nОбразование: Он увлекался рисованием с детства. Несмотря на то что о его формальном художественном образовании данных мало, он подчеркивал в советах начинающим, что успех художника определяет не диплом или галерея, а личное видение и страсть к делу. \r\nКарьерный взлет: «Начало после конца»\r\nСотрудничество с TurtleMe: В сентябре 2014 года Дута присоединился к проекту «Начало после конца» (The Beginning After the End) в качестве основного иллюстратора.\r\nМировое признание: За 9 лет работы он отрисовал 175 глав (5 сезонов), создав визуальный облик главных героев и мира Дикатена, который полюбился миллионам читателей по всему миру. Его стиль стал эталоном для многих современных фэнтези-вебтунов. \r\nKisai Entertainment и предпринимательство\r\nОснование студии: Дута является одним из ключевых лиц индонезийской студии Kisai Entertainment, основанной в 2017 году.\r\nМасштабирование: Под его влиянием студия выросла в крупнейший дом производства вебтунов в Юго-Восточной Азии, штат которой к 2021 году превысил 100 человек. Студия сотрудничает с заказчиками из США, Кореи и Японии. \r\nУход из главного проекта и новые горизонты\r\nРазрыв с Tapas (2023): В июне 2023 года Дута объявил об уходе из «Начала после конца». Причиной стало резкое изменение структуры оплаты платформой Tapas, которое он счел несправедливым и «обесценивающим» труд художников. Это решение он назвал «разбивающим сердце», так как проект был частью его жизни долгие годы.\r\nТекущие проекты: После ухода он сосредоточился на собственных и студийных работах:\r\nPsycho-Love Contract (сценарист и соавтор).\r\nRegression of the Close Combat Mage (главный художник).\r\nBetting on the Jackal (новый оригинальный проект Kisai Entertainment).','Индонезия','dut@example.com','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEsz56A-j5ERLGNlLOmDwpCU-yqnnM5iU--A&s',1991,NULL,2014,'современная эстетика вебтунов','Дута Пермана (Duta Permana), более известный под псевдонимом Fuyuki23 — индонезийский художник-иллюстратор, получивший мировую известность как основной создатель визуального стиля популярного веб-комикса «Начало после конца» (The Beginning After the End).');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `session_id` varchar(45) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `cart_items_users_idx` (`user_id`),
  KEY `cart_items_products_idx` (`product_id`),
  CONSTRAINT `cart_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (5,6,NULL,4,2,'2026-02-25 12:03:04'),(7,10,NULL,6,1,'2026-02-26 10:09:06'),(70,4,NULL,7,1,'2026-03-05 13:13:53'),(71,4,NULL,8,1,'2026-03-05 13:13:54');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `opisanie` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Флористическая скульптура','Полимерная флористика — искусство создания реалистичных цветов из самозастывающей полимерной глины.'),(3,'Искусство эпоксидной смолы','Уникальные художественные объекты из эпоксидной смолы.'),(4,'Панно','Декоративные настенные панно в различных стилях. В отличие от картин, панно часто обладает объемом, выполнено из разнообразных материалов (дерево, металл, текстиль, гипс, кожа) и плотнее интегрировано в дизайн помещения. Это элемент искусства, добавляющий текстуру и стиль.'),(5,'Статуэтка','Скульптура малых форм из гипса, керамики, дерева.'),(6,'Полигональные фигуры','Объемные арт-объекты или 3D-модели, состоящие из соединенных между собой плоских многоугольников (полигонов), образующих ребра и вершины. Используются в современном дизайне, декоре интерьеров и городском благоустройстве, создавая стильный футуристичный образ животных, людей или абстракций.'),(7,'картина','Визуальное произведениесозданное не только для эстетикино и для передачи уникальной идеи художникавызывающее эмоциональный отклик и осмысление. Это концептуальное искусствочасто использующее смешанные техникинестандартные материалы и выходящее за рамки классической живописипреображая пространство.'),(8,'Скульптурная инсталляция','Скульптурная инсталляция — это жанр современного искусства, представляющий собой не просто отдельный объект (статую), а целую пространственную композицию, в которую зритель может «войти» или которую он воспринимает как единую среду.');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites_artists`
--

DROP TABLE IF EXISTS `favorites_artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites_artists` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `added_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `favorites_artists_users_idx` (`user_id`),
  KEY `favorites_artists_artists_idx` (`artist_id`),
  CONSTRAINT `favorites_artists_artists` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`),
  CONSTRAINT `favorites_artists_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites_artists`
--

LOCK TABLES `favorites_artists` WRITE;
/*!40000 ALTER TABLE `favorites_artists` DISABLE KEYS */;
INSERT INTO `favorites_artists` VALUES (1,5,2,'2026-02-25 12:00:23'),(2,6,1,'2026-02-25 12:00:23'),(3,7,3,'2026-02-25 12:00:23'),(13,11,5,'2026-02-27 00:15:35'),(21,13,2,'2026-02-28 21:57:15'),(24,13,5,'2026-03-01 00:05:54'),(25,11,2,'2026-03-02 09:26:57');
/*!40000 ALTER TABLE `favorites_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites_products`
--

DROP TABLE IF EXISTS `favorites_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites_products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `added_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorites_products_users_idx` (`user_id`),
  KEY `favorites_products_products_idx` (`product_id`),
  CONSTRAINT `favorites_products_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_products_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites_products`
--

LOCK TABLES `favorites_products` WRITE;
/*!40000 ALTER TABLE `favorites_products` DISABLE KEYS */;
INSERT INTO `favorites_products` VALUES (2,5,3,'2026-02-25 12:00:21'),(4,7,4,'2026-02-25 12:00:21'),(7,10,7,'2026-02-26 10:28:23'),(8,10,4,'2026-02-26 10:28:27'),(35,11,8,'2026-02-27 00:41:26'),(37,13,8,'2026-02-28 21:56:56'),(38,13,7,'2026-02-28 21:56:57'),(41,13,3,'2026-03-01 00:26:03'),(42,11,3,'2026-03-02 09:25:54'),(43,11,5,'2026-03-02 09:26:21'),(44,11,7,'2026-03-06 09:47:02'),(45,11,6,'2026-03-06 09:47:04');
/*!40000 ALTER TABLE `favorites_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_subscribers`
--

DROP TABLE IF EXISTS `newsletter_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletter_subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `subscribed_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_subscribers`
--

LOCK TABLES `newsletter_subscribers` WRITE;
/*!40000 ALTER TABLE `newsletter_subscribers` DISABLE KEYS */;
INSERT INTO `newsletter_subscribers` VALUES (2,'ksenijasavilo@gmail.com','2026-02-26 16:47:43',1),(3,'leni@gmail.com','2026-03-06 09:46:02',1),(4,'ksenijsavilo@gmail.com','2026-03-02 09:19:11',1);
/*!40000 ALTER TABLE `newsletter_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `order_items_orders_idx` (`order_id`),
  KEY `order_items_products_idx` (`product_id`),
  CONSTRAINT `order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (8,7,3,299.96,1),(9,8,4,111.26,1),(17,15,4,111.26,1),(18,16,8,95.00,3),(19,17,3,279.99,1),(20,17,4,111.26,1),(21,17,5,43.12,1),(22,18,5,43.12,3),(23,18,8,95.00,6),(24,19,6,45000.00,1),(25,19,7,141.00,1),(26,20,8,95.00,1),(27,21,3,279.99,2),(28,21,4,111.26,1),(29,21,5,43.12,1),(30,21,6,45000.00,2),(31,21,7,141.00,2),(32,21,8,95.00,5),(33,22,5,43.12,3),(34,22,8,95.00,6),(35,23,5,43.12,9),(36,23,8,95.00,18),(38,25,3,279.99,1),(39,25,7,141.00,2),(40,25,10,700.00,2),(41,26,10,700.00,1),(42,27,7,141.00,1),(43,27,10,700.00,1),(44,31,7,141.00,1),(45,34,6,45000.00,2),(46,34,7,141.00,1),(47,35,3,279.99,1),(48,35,5,43.12,1),(49,36,4,111.26,1),(50,37,3,279.99,5),(51,38,4,111.26,2),(52,39,5,43.12,1),(53,39,6,45000.00,1),(54,40,3,279.99,3),(55,41,4,111.26,1),(56,42,4,111.26,1),(57,42,5,43.12,1),(58,43,8,95.00,1),(59,44,3,279.99,1),(60,44,6,45000.00,1),(61,44,7,141.00,1),(62,45,7,141.00,2),(63,45,8,95.00,1),(64,46,4,111.26,1),(65,46,5,43.12,2),(66,46,8,95.00,7),(67,47,8,95.00,2),(68,48,5,43.12,2),(69,48,6,45000.00,3),(70,48,7,141.00,1),(71,49,7,141.00,4),(72,49,8,95.00,2);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `guest_email` varchar(255) DEFAULT NULL,
  `guest_phone` varchar(45) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `shipping_address` text,
  `updated_at` datetime DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `orders_users_idx` (`user_id`),
  CONSTRAINT `orders_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (7,5,NULL,NULL,'2025-03-17 09:45:00',111.00,'delivered','г. Брест, ул. Московская, 5-12','2026-02-25 11:52:28','card','paid'),(8,7,NULL,NULL,'2025-03-18 16:20:00',160.00,'cancelled','г. Минск, ул. Ленина, 10-5','2026-02-25 11:52:28','card','refunded'),(9,7,NULL,NULL,'2026-02-25 00:00:00',771.74,'delivered','г. Минск, ул. Ленина, 10-5','2026-02-25 19:41:30','card','paid'),(10,6,NULL,NULL,'2026-02-25 00:00:00',159.76,'processing','г. Гродно, ул. Советская, 15-20','2026-02-25 12:24:02','card','pending'),(11,7,NULL,NULL,'2026-02-25 00:00:00',299.96,'delivering','г. Брест, ул. Московская, 5-12','2026-02-25 20:44:27','cash','paid'),(15,11,NULL,NULL,'2026-02-27 23:46:43',151.26,'processing','Минск, ул. Ленина, 10-5','2026-02-27 23:46:43','card','pending'),(16,11,NULL,NULL,'2026-02-27 23:46:56',325.00,'delivered','Минск, ул. Ленина, 10-5','2026-02-27 23:47:31','cash','pending'),(17,11,NULL,NULL,'2026-02-28 00:01:35',474.37,'delivered','Минск, ул. Ленина, 10-5','2026-02-28 00:01:51','card','pending'),(18,13,NULL,NULL,'2026-02-28 00:14:19',699.36,'processing','Минск, ул. Советская, 10-6','2026-02-28 00:14:19','card','pending'),(19,13,NULL,NULL,'2026-02-28 00:30:58',45141.00,'delivered','Минск, ул. Ленина, 10-5','2026-02-28 01:03:59','card','pending'),(20,13,NULL,NULL,'2026-02-28 00:31:19',135.00,'cancelled','Минск, ул. Ленина, 10-5','2026-02-28 00:56:53','card','pending'),(21,13,NULL,NULL,'2026-02-28 01:03:01',91471.36,'processing','Минск, ул. Ленина, 10-5','2026-02-28 01:03:01','card','pending'),(22,13,NULL,NULL,'2026-02-28 01:09:00',699.36,'cancelled','Минск, ул. Ленина, 10-5','2026-02-28 01:09:51','card','pending'),(23,13,NULL,NULL,'2026-02-28 10:53:46',2098.08,'processing','Минск, ул. Ленина, 10-5','2026-02-28 10:53:46','card','pending'),(25,13,NULL,NULL,'2026-03-01 00:46:12',1961.99,'delivered','Минск, ул. Ленина, 10-5','2026-03-01 00:46:47','card','pending'),(26,13,NULL,NULL,'2026-03-01 01:08:24',700.00,'delivered','Минск, ул. Ленина, 10-5','2026-03-01 01:08:38','cash','pending'),(27,13,NULL,NULL,'2026-03-01 12:26:31',841.00,'cancelled','Минск, ул. Ленина, 10-5','2026-03-01 12:26:45','card','pending'),(31,11,NULL,NULL,'2026-03-01 15:42:59',151.00,'processing','Минск, ул. Ленина, 10-5','2026-03-01 15:42:59','card','pending'),(34,15,'ksenijasavilo@gmail.com',NULL,'2026-03-01 16:23:17',90141.00,'processing','Минск, ул. Ленина, 10-5','2026-03-01 16:23:17','card','pending'),(35,NULL,'ksenijasavilo@gmail.com',NULL,'2026-03-01 16:24:33',333.11,'delivered','Минск, ул. Ленина, 10-5','2026-03-01 16:30:39','cash','pending'),(36,NULL,'ksenijasavilo@gmail.com',NULL,'2026-03-01 16:35:36',121.26,'processing','Минск, ул. Ленина, 10-5','2026-03-01 16:35:36','cash','pending'),(37,11,'',NULL,'2026-03-01 16:43:20',1399.95,'delivered','Минск, ул. Ленина, 10-5','2026-03-01 16:43:33','bank','pending'),(38,11,'',NULL,'2026-03-01 18:36:02',232.52,'processing','Минск, ул. Ленина, 10-5','2026-03-01 18:36:02','card','pending'),(39,11,'',NULL,'2026-03-01 18:42:30',45043.12,'cancelled','Минск, ул. Ленина, 10-5','2026-03-02 09:39:51','cash','pending'),(40,11,'',NULL,'2026-03-02 09:35:55',839.97,'delivered','Минск, ул. Ленина, 10-5','2026-03-02 09:37:08','cash','pending'),(41,11,'',NULL,'2026-03-02 09:37:41',121.26,'delivered','Минск, ул. Ленина, 10-5','2026-03-02 09:37:50','card','pending'),(42,11,'',NULL,'2026-03-02 10:34:43',164.38,'processing','Минск, ул. Ленина, 10-5','2026-03-02 10:34:43','cash','pending'),(43,11,'',NULL,'2026-03-02 13:40:24',105.00,'processing','Минск, ул. Ленина, 10-5','2026-03-02 13:40:24','card','pending'),(44,11,'',NULL,'2026-03-03 11:55:52',45420.99,'processing','Минск, ул. Ленина, 10-5','2026-03-03 11:55:52','cash','pending'),(45,NULL,'ksenijasavilo@gmail.com',NULL,'2026-03-05 14:46:44',387.00,'processing','Минск, вфа','2026-03-05 14:46:44','card','pending'),(46,NULL,'ksenijasavilo@gmail.com',NULL,'2026-03-05 14:47:56',862.50,'processing','Минск, цаффа','2026-03-05 14:47:56','card','pending'),(47,11,'',NULL,'2026-03-05 15:12:26',200.00,'processing','Минск, ул. Ленина, 10-5','2026-03-05 15:12:26','card','pending'),(48,NULL,'ksenijasavilo@gmail.com',NULL,'2026-03-06 00:51:40',135227.24,'processing','Минск, ул. Ленина, 10-5','2026-03-06 00:51:40','cash','pending'),(49,11,'',NULL,'2026-03-06 09:50:28',754.00,'delivered','Минск, ул. Ленина, 10-5','2026-03-06 10:08:21','cash','pending');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `sort_order` int DEFAULT '0',
  `alt_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `product_image_product_idx` (`product_id`),
  CONSTRAINT `product_image_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (7,6,'/uploads/products/girl_1.jpg',1,1,'Девочка с шаром',NULL),(8,7,'https://i.pinimg.com/236x/38/54/a1/3854a11ff3c4a2ea54683079ff7caf7d.jpg',0,1,'кот на море','2026-02-25 19:11:37'),(9,7,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa87OQEq9EicpP47vvp_8YfRU04_XJhX047Q&s',0,2,'кот на море','2026-02-25 19:11:37'),(10,5,'https://goods-photos.static1-sima-land.com/items/8184888/3/700-nw.jpg',0,1,'Статуэтка Бог Семаргл','2026-02-25 19:12:56'),(12,3,'https://cs5.livemaster.ru/storage/6d/32/8b715085f29ccae782237cf816bz--kartiny-i-panno-panno-dlya-doma.jpg',0,3,'Панно настенное SHANTY','2026-02-25 19:34:55'),(14,10,'https://s.zagranitsa.com/images/articles/6948/870x486/88aaa4c9d8d9772005876ebfd2e589ec.jpg?1535445521',0,1,'Картина граффити \"Метатель цветов\" 1','2026-02-28 08:05:46'),(15,11,'https://live.staticflickr.com/7312/14167463412_05f97fb59f_b.jpg',0,1,'Bidibidobidiboo','2026-02-28 15:41:21');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_questions`
--

DROP TABLE IF EXISTS `product_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `question` text NOT NULL,
  `answer` text,
  `answered_at` datetime DEFAULT NULL,
  `answered_by` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` enum('pending','published','hidden') DEFAULT 'pending',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_status` (`status`),
  CONSTRAINT `fk_questions_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_questions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_questions`
--

LOCK TABLES `product_questions` WRITE;
/*!40000 ALTER TABLE `product_questions` DISABLE KEYS */;
INSERT INTO `product_questions` VALUES (1,3,11,'Из какого дерева выполнена работа?',NULL,NULL,NULL,'2026-03-01 17:25:31','published'),(2,3,11,'Кода планируется поступление товара?','В ближайшее время поступление не ожидается. Спасибо за интерес к нашему товару!','2026-03-01 17:32:41',4,'2026-03-01 17:26:41','published'),(3,3,11,'Есть ли доставка в Гомель?',NULL,NULL,NULL,'2026-03-01 17:34:26','published'),(4,3,11,'До какого числа действует скидка?',NULL,NULL,NULL,'2026-03-01 17:34:59','published');
/*!40000 ALTER TABLE `product_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `opisanie` text,
  `price` decimal(10,2) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `year_created` year DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `art_style` varchar(255) DEFAULT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `discount_percent` decimal(10,2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `categories_connection_idx` (`category_id`),
  KEY `artists_products_idx` (`artist_id`),
  CONSTRAINT `artists_products` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`),
  CONSTRAINT `categories_connection` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Панно настенное SHANTY','Этническое панно в этническом стиле.',299.96,'50×50 см',0.35,'массив дерева',2020,13,'https://cs1.livemaster.ru/storage/5c/2b/7a21f05df5c09955b6d9d1eb50dh--kartiny-i-panno-panno-nastennoe-shanty.jpg',4,3,'Этника',279.99,NULL,NULL),(4,'Часы из эпоксидной смолы','Авторские часы ручной работы.',111.26,'24×24 см',0.56,'эпоксидная смола',2025,5,'https://ir.ozone.ru/s3/multimedia-l/w500/6687946209.jpg',3,4,'Абстракция',NULL,NULL,NULL),(5,'Статуэтка Бог Семаргл','Славянский бог огня. Гипс, ручная работа.',43.12,'19×7 см',0.32,'гипс',2005,18,'https://goods-photos.static1-sima-land.com/items/8184888/0/700-nw.jpg',5,5,'Этно-реализм',NULL,NULL,NULL),(6,'Девочка с шаром','Известный принт Бэнкси.',45000.00,'70×50 см',0.20,'бумага',2020,0,'https://paint-up.ru/wp-content/uploads/2023/08/004-3.webp',3,2,'Стрит-арт',NULL,0.10,NULL),(7,'кот на море','Интерьерное панно из эпоксидной смолы «Кот и море» (Resin Art), ручная работа.\r\nСюжет: «Застывшее мгновение летнего дня: фигурка кота на берегу, выполненном из настоящего морского песка. Многослойная заливка смолой создает эффект живой волны с реалистичной белой пеной».\r\nВизуальный эффект: «Глянцевая поверхность зеркально отражает свет, придавая морю невероятную глубину и яркость, которые не тускнеют со временем». \r\nДом Мха MossArt\r\nДом Мха MossArt\r\n3. Технические характеристики:\r\nМатериалы: Высококачественная ювелирная эпоксидная смола (не желтеет), артборд (основа из МДФ/дерева), профессиональные пигменты.\r\nДекор: Натуральный песок, ракушки, возможна инкрустация камнями или мхом для объема.\r\nКрепление: Установлен надежный подвес; торцы картины залиты в цвет моря, что позволяет вешать её без рамы.',150.00,'100х100',0.20,'эпоксидная смола',2026,0,'https://i.pinimg.com/236x/f6/33/61/f63361f96b17e758262f6db521ecbe13.jpg',3,4,'Стрит-арт',141.00,NULL,NULL),(8,'Полигональная фигура сова','Полигональная сова — это концептуальный арт-объект, в котором природная грация лесной птицы переведена на язык цифровой геометрии. Вместо перьев и плавных линий здесь работают острые грани, четкие изломы и игра света на плоскостях.\r\nКлючевые характеристики образа:\r\nГеометрический минимализм: Фигура строится по принципу Low Poly (низко полигональная графика). Это создает эффект «выхода» виртуального объекта в реальный физический мир.\r\nДинамика света: Каждая грань расположена под своим углом, поэтому даже при статичном освещении объект выглядит по-разному в течение дня. Зеркальные поверхности «собирают» в себя окружение, а матовые — подчеркивают сложность формы глубокими тенями.\r\nСимволизм: Сова традиционно олицетворяет мудрость и проницательность. В полигональном исполнении этот символ становится современным, ассоциируясь с интеллектом, технологиями и архитектурным мышлением.',100.00,'50×50 см',1.00,'Нержавеющая сталь',2026,4,'https://zavod-decora.by/wp-content/uploads/2025/03/pf-47-2.jpg',6,5,'Лофт',95.00,5.00,NULL),(10,'Картина граффити \"Метатель цветов\" 1','Картина Бэнкси «Метатель цветов» (Flower Thrower) — культовый поп-арт постерсимволизирующий протестлюбовь и мир. Черно-белый силуэт бунтарябросающего букет вместо коктейля Молотовавыполнен в стиле трафаретного граффити. Стильный интерьерный декоротлично подходящий для современных квартир и офисовсимволизирующий «Создавайте мира не войну». \r\nОсновные характеристики товара:\r\nСюжет: ЧБ силуэт человека в маске и кепкебросающий яркие цветы.\r\nСтиль: Стрит-артпоп-арттрафаретсовременное искусство.\r\nИсполнение: Чаще всего предлагается как интерьерная картина на холстедоске или постер в раме.\r\nЦветовая палитра: Монохромная с яркими акцентами цветов (красный/желтый/синий).',700.00,'30х24',0.20,'Аэрозольная краска, ватман',2003,3,'https://ir.ozone.ru/s3/multimedia-1-g/c1000/7044442972.jpg',7,1,'Поп-арт',NULL,NULL,'2026-03-01 09:27:04'),(11,'Bidibidobidiboo','«Bidibidobidiboo» (1996) — провокационная скульптура Маурицио Каттелана изображающая чучело белки покончившей с собой на крошечной кухне. Работа вызывает чувство беспросветного уныния используя антропоморфную белку с пистолетом у лап чтобы показать трагедию серость и отчаяние в минималистичном интерьере символизируя глубокое одиночество. ',1000.00,'45 × 60 × 58',2.00,'Таксидермированная белка, дерево и Формика (пластик), керамика, сталь, краска',1996,5,'https://artchive.ru/res/media/img/oy800/work/d23/555215@2x.webp',8,4,'искусством провокации',NULL,NULL,'2026-02-28 15:43:23'),(12,'картина','',0.01,'',0.00,'',2026,0,'',7,5,'',NULL,NULL,'2026-03-01 21:07:45');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` tinyint DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_item_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `reviews_users_idx` (`user_id`),
  KEY `reviews_products_idx` (`product_id`),
  KEY `reviews_order_items_idx` (`order_item_id`),
  CONSTRAINT `reviews_order_items` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`),
  CONSTRAINT `reviews_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (4,3,5,5,'Шикарное панно, отлично смотрится на стене.','2025-03-23 09:20:00','published',NULL),(6,3,11,4,'Всё отлично. Но не ошлифовано по краю','2026-02-27 21:53:21','published',NULL),(8,8,11,5,'Шикарная сова','2026-02-27 23:48:00','published',NULL),(9,6,13,1,'Пришло поломанным','2026-02-28 09:13:13','published',NULL),(10,10,13,5,'Великолепная картина','2026-03-01 01:09:13','published',NULL),(11,4,11,5,'спасибо','2026-03-02 09:38:19','published',NULL);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `reset_token` varchar(128) DEFAULT NULL,
  `reset_token_expiry` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin@artobject.by','admin','$2y$12$IO2ZXgu1TkBUnZisTJvUmuq/XK9zQT/O8Fgm6KRHmBW9taUGhTlN.','admin','+375 (29) 123-45-67',1,'2026-02-25 11:12:05','Минск','ул. Центральная, 1','$2y$12$zt5MfhiYD91f8j1fANpN3eXS32AbsSWvPHcknwBaIsqSh2UQt5bE2','2026-03-01 16:21:56'),(5,'ivan@example.com','Иван Петров','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','buyer','+375 (29) 111-11-11',1,'2026-02-25 11:43:44','Минск','ул. Ленина, 10-5',NULL,NULL),(6,'anna@example.com','Анна Смирнова','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','buyer','+375 (33) 222-22-22',1,'2026-02-25 11:43:44','Гродно','ул. Советская, 15-20',NULL,NULL),(7,'pavel@example.com','Павел Козлов','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','buyer','+375 (29) 333-33-33',1,'2026-02-25 11:43:44','Брест','ул. Московская, 5-12',NULL,NULL),(10,'alija@gmail.com','Аля','$2y$12$7pwKXl.s0iZgeSj/Bz/atub5zdgMfTb4SNM0nZhMRxvH9pCWc2hE.','buyer','+375(29)749-36-80',0,'2026-02-26 10:08:54',NULL,NULL,'$2y$12$os80bLy.MlmFAbW3hIOObeqUc8BQp0ki/r2aPkivJuymFuBKJdwhS','2026-03-01 16:22:13'),(11,'leni@gmail.com','Ленни','$2y$12$0OnWw6.mEpe0oJ9U0TFN5u4DR8KPanTXWPyXws1TOs0Jz2Vith5U6','buyer','+375 (29) 444-11-11',0,'2026-02-26 13:00:30','Минск','ул. Ленина, 10-5','$2y$12$wb2G8qSs4a03RMTWzfMrMu9sQYKL0951ey9lVMdpOZslbb.wMV3qa','2026-03-06 11:07:37'),(12,'ksenijasavilo@gmail.com','Ккк','$2y$12$nV9EGi3xwc/8thOeIXek5emeMMr/IVtUnZY8orLE9ao1cQd.Vz8a.','buyer','+375(29)749-36-80',0,'2026-02-26 16:46:55',NULL,NULL,NULL,NULL),(13,'leo@gmail.com','Лео','$2y$12$vpCpte.128IZ98zGiRulCu5F1Uwd.YzDYi3dY0W7lfK96kP.cg6U2','buyer','+375 (29) 448-11-11',1,'2026-02-28 00:10:01',NULL,NULL,NULL,NULL),(14,'alija@gmail.com','Фуми','$2y$12$rlmqnKIoDpYRHpzM6wgvoe7RMNtZQ9I.RC3U4tbQJb8RUNGN6JIEK','buyer','+375 (29) 444-11-11',1,'2026-03-01 13:18:52',NULL,NULL,NULL,NULL),(15,'ksenijasavilo@gmail.com','Эрика','$2y$12$bC32okid8mFBwEBAcye9tuxQ/dbZCPgnC57.bJjCukqQj2K22n2tm','buyer','+375(29)749-36-80',0,'2026-03-01 15:48:19',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'art_objects_store2'
--

--
-- Dumping routines for database 'art_objects_store2'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-08 22:20:11
