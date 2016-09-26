-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: marmitex
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: marmitex
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: marmitex_unb
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'quam','2016-09-25 21:01:07','2016-09-25 21:01:07'),(2,'id','2016-09-25 21:01:07','2016-09-25 21:01:07'),(3,'placeat','2016-09-25 21:01:07','2016-09-25 21:01:07'),(4,'labore','2016-09-25 21:01:07','2016-09-25 21:01:07'),(5,'est','2016-09-25 21:01:07','2016-09-25 21:01:07'),(6,'est','2016-09-25 21:01:07','2016-09-25 21:01:07'),(7,'repellat','2016-09-25 21:01:07','2016-09-25 21:01:07'),(8,'et','2016-09-25 21:01:07','2016-09-25 21:01:07'),(9,'eos','2016-09-25 21:01:07','2016-09-25 21:01:07'),(10,'sequi','2016-09-25 21:01:07','2016-09-25 21:01:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clients_user_id_foreign` (`user_id`),
  CONSTRAINT `clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,1,'393-737-4460 x27784','1804 Schowalter Mills\nSouth Donny, AK 53865-4934','Salvatoreville','22479 Roberts Drive','33371','2016-09-25 21:01:06','2016-09-25 21:01:06'),(2,2,'541.781.3948 x915','6087 Labadie Bridge\nLoweberg, WV 03651-1689','Richardhaven','113 Margret Ports','15127-5618','2016-09-25 21:01:06','2016-09-25 21:01:06'),(3,3,'+15096325226','22515 Hessel Island\nRolandoburgh, AK 39031','East Shayneville','8469 Schinner Junctions Suite 053','25430','2016-09-25 21:01:06','2016-09-25 21:01:06'),(4,4,'+1-979-533-8784','236 Price Mountain Suite 856\nJohnstonton, VT 41527','Irwinhaven','7962 Paucek Village Suite 681','67937','2016-09-25 21:01:07','2016-09-25 21:01:07'),(5,5,'(463) 855-5824 x928','6320 Barney Course Apt. 641\nGeorgiannatown, TN 66189','Eichmannstad','900 Dibbert Curve','51623-1685','2016-09-25 21:01:07','2016-09-25 21:01:07'),(6,6,'815.365.6285','80554 Wilkinson Creek Apt. 068\nEast Myrnaburgh, AL 25651','West Harmonyborough','48668 Ramona Mall','73266','2016-09-25 21:01:07','2016-09-25 21:01:07'),(7,7,'1-525-713-8795 x57577','97704 Schumm Fall Apt. 978\nNew Chauncey, RI 59075-6689','Elwyntown','803 Jabari Track','41438-2590','2016-09-25 21:01:07','2016-09-25 21:01:07'),(8,8,'+1 (290) 242-9061','957 Rhea Spring Apt. 283\nWest Lowellfurt, NM 29256-1619','Carsonmouth','655 Prohaska Highway','46118','2016-09-25 21:01:07','2016-09-25 21:01:07'),(9,9,'920.645.7066','86442 Doyle Shoals Apt. 531\nEast Heberfort, NH 31154-1805','West Elza','33834 Gusikowski Bypass Suite 978','93545','2016-09-25 21:01:07','2016-09-25 21:01:07'),(10,10,'+1.639.735.5837','2134 Myah Drives\nLake Andreanehaven, DE 23030-1090','Spinkaborough','617 Kilback Mountain','05799-7322','2016-09-25 21:01:07','2016-09-25 21:01:07');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_18_010143_create_categories_table',1),('2016_09_18_150234_create_products_table',1),('2016_09_24_173403_create_clients_table',1),('2016_09_24_180237_create_orders_table',1),('2016_09_24_180304_create_order_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,4,1,28.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(2,5,1,28.00,1,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(3,4,1,53.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(4,2,1,69.00,2,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(5,5,1,99.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(6,5,2,30.00,2,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(7,2,2,49.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(8,4,2,95.00,1,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(9,3,2,47.00,2,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(10,4,2,62.00,2,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(11,5,3,39.00,2,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(12,3,3,39.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(13,5,3,95.00,1,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(14,3,3,31.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(15,1,3,30.00,3,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(16,1,4,22.00,3,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(17,3,4,40.00,1,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(18,2,4,90.00,1,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(19,3,4,41.00,2,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(20,5,4,92.00,3,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(21,3,5,80.00,1,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(22,1,5,47.00,2,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(23,4,5,35.00,2,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(24,5,5,83.00,2,'2016-09-25 21:01:12','2016-09-25 21:01:12'),(25,3,5,94.00,3,'2016-09-25 21:01:12','2016-09-25 21:01:12');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `deliveryman_id` int(10) unsigned DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_client_id_foreign` (`client_id`),
  KEY `orders_deliveryman_id_foreign` (`deliveryman_id`),
  CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_deliveryman_id_foreign` FOREIGN KEY (`deliveryman_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,NULL,9.00,0,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(2,2,NULL,30.00,0,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(3,1,NULL,85.00,1,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(4,1,NULL,95.00,0,'2016-09-25 21:01:11','2016-09-25 21:01:11'),(5,5,NULL,55.00,0,'2016-09-25 21:01:11','2016-09-25 21:01:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,'dolore','Neque nobis rerum temporibus similique sed. Laborum minus molestiae dolorem asperiores neque. Explicabo sit numquam eos voluptas aperiam occaecati.',26.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(2,1,'est','Est earum eveniet fugiat ipsum aspernatur. Ullam nihil quia nihil pariatur. Veniam enim ut deleniti totam suscipit ab.',28.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(3,1,'quia','Ipsam molestias ipsam aut repudiandae et ut modi. Quo consequatur et accusamus. Voluptatem et nobis quis necessitatibus sequi.',35.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(4,1,'culpa','Voluptatem saepe qui exercitationem sint. Ipsa assumenda impedit debitis est a nostrum modi. Soluta fugiat cum necessitatibus quisquam laborum sint dolor.',2.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(5,1,'corporis','Eius illum aut quis quos exercitationem quo. Nihil amet corrupti in incidunt delectus quae nulla. Velit laudantium delectus ut ipsa qui. Dolorem tempora ut est sit et quasi.',42.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(6,2,'et','Dolorum et sint est recusandae libero exercitationem maiores architecto. Debitis consectetur error accusamus minus beatae odit omnis. Modi ipsam libero expedita et magnam laudantium.',12.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(7,2,'aut','Non autem delectus minima dolores est natus reiciendis totam. Illum dolore numquam dolore impedit culpa id voluptas.',31.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(8,2,'minus','Sit quo et itaque occaecati vel eos dolores at. Doloribus et repellat vitae possimus dolorum modi mollitia repellat. Sunt voluptatem quis qui deleniti consectetur voluptatem.',49.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(9,2,'odit','Deleniti quia id ea eum asperiores earum. In eum laboriosam ab accusantium nam dicta. Cupiditate sit cumque totam veritatis. Sed quisquam ipsam vitae qui in veritatis.',21.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(10,2,'cum','Incidunt quidem fuga vel ea eos velit maiores. Odit facilis qui soluta officiis in temporibus. Sit rerum et ut impedit laborum. Qui vel consequuntur beatae qui nemo eligendi.',35.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(11,3,'suscipit','Debitis aut nobis laudantium velit quam. Possimus voluptas et cumque natus. Minima facilis dolore quam nihil. Minus sit in omnis cumque recusandae hic.',44.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(12,3,'harum','Aut voluptas ullam minus dolorem dolores. Aut aspernatur esse maiores totam amet vel molestiae. Explicabo dolores natus hic iste fugit molestiae. Animi laborum iusto animi nostrum.',46.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(13,3,'accusantium','Qui rem est soluta quia dolore saepe commodi. Quia voluptatem et incidunt ut. Similique asperiores repudiandae repellendus. Esse ipsa dignissimos ab ducimus excepturi.',27.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(14,3,'non','Qui officiis velit nobis perspiciatis fuga. Enim enim dolor sed cumque ipsam et. Maiores et consequatur dolorem veritatis. In vel unde consequatur laborum.',29.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(15,3,'eos','Rerum non aut sed blanditiis in id. Est odit dolorum aut. Officia est aut perspiciatis hic et aspernatur.',9.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(16,4,'totam','Rerum consequatur rerum doloribus doloribus consequatur facilis et. Vel omnis iusto qui veniam eligendi. Sequi a molestiae ut. Temporibus et velit et possimus consequatur officiis illum.',7.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(17,4,'molestiae','Est repudiandae sed dolores ullam velit et. Nesciunt natus asperiores a. Ipsum ut odit voluptas. Et at repellat qui iure corporis.',16.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(18,4,'perferendis','Omnis dolores quidem impedit et dolorem rerum incidunt. Doloremque omnis assumenda quis sit quos. Cupiditate possimus veritatis qui ea repudiandae. Repudiandae sint qui magnam unde et.',11.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(19,4,'dolores','Aspernatur dicta at nostrum voluptatem quis quidem. Nisi cupiditate itaque modi eius quasi repellat quia. Sapiente mollitia tenetur atque laboriosam ipsum amet ipsa nemo.',40.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(20,4,'itaque','Illo qui consequuntur fuga nemo officia ducimus. Inventore in modi fugiat recusandae molestiae corrupti. Eum natus eius quas labore necessitatibus dignissimos.',28.00,'2016-09-25 21:01:08','2016-09-25 21:01:08'),(21,5,'fugiat','Quos soluta reprehenderit dolorem quisquam eum. Quis et porro esse maxime fugit est nisi. Qui consequatur enim possimus corporis.',20.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(22,5,'error','Odio dolore maxime quos omnis ut. Inventore velit laboriosam magni possimus ea voluptatem. Ut possimus magni quasi consectetur. Saepe ducimus quo possimus facere.',22.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(23,5,'neque','Atque autem dolorum modi provident a aspernatur molestias. Repellendus sapiente sed quo fugit asperiores et. Et dolore architecto qui optio.',18.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(24,5,'vel','Et eos ut et totam nobis non. Aut in eius facilis quia quas quia quis. Et sapiente inventore incidunt similique. Rerum deserunt sint officiis laborum sint.',3.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(25,5,'temporibus','Aspernatur delectus tempore numquam quis enim aut illo. Aut consequatur laborum temporibus quod. Est esse et voluptate est. Molestiae velit adipisci omnis deserunt dolorem.',47.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(26,6,'nostrum','Non aliquam ex incidunt minima. Veniam est natus exercitationem quia qui placeat beatae optio. Veritatis ut veritatis consequatur labore. Neque aperiam quia corporis dicta.',4.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(27,6,'ducimus','Sunt reprehenderit aut ducimus et quo. Quae quas et quibusdam aut. Pariatur et sit veritatis accusantium. Animi sit asperiores quos. Provident cum ut aspernatur.',12.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(28,6,'rem','Magni soluta et numquam. Voluptas voluptate occaecati et at accusantium. Deleniti quos nostrum dolorum provident.',1.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(29,6,'nihil','Atque qui vel qui perferendis ab occaecati dignissimos. Deserunt corporis vel dolorem eum. Distinctio et eius ipsa. Quidem aliquid suscipit odit. Et corporis dolores id.',6.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(30,6,'officiis','Eos et eum eos nostrum. Sit mollitia ab eos qui est voluptatem. Eius ipsa et quo qui rerum.',0.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(31,7,'possimus','Impedit voluptatem assumenda est quas nostrum ut. Rerum qui nesciunt autem rem facilis impedit. Placeat voluptatibus et qui excepturi cupiditate sint rerum quia.',28.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(32,7,'earum','Quia est eum nostrum. Harum quia aut qui ut aut illum in.',48.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(33,7,'est','Quia aliquam rem illo eos corporis. Repellendus porro quae beatae voluptatem ipsa. Impedit voluptatum quia non quae ad hic officia.',28.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(34,7,'quis','Mollitia quaerat voluptatem voluptatem ipsam dolor quaerat consequatur. In vel est quas quis deleniti. Vitae perferendis sint et molestias laborum facilis.',49.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(35,7,'quod','Neque enim aut ducimus culpa aut itaque eum. In corrupti est est ex.',2.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(36,8,'aperiam','Consectetur repudiandae voluptatibus est quasi ea minus. Et eligendi nihil et harum. Qui soluta ullam quo.',8.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(37,8,'quo','Similique consequatur quod atque odit culpa. Delectus velit dolor ut quaerat rem et aspernatur. Consequatur expedita amet qui ea aut eos. Exercitationem ipsam ut maiores ipsa et adipisci.',20.00,'2016-09-25 21:01:09','2016-09-25 21:01:09'),(38,8,'voluptatibus','Nihil enim eum deleniti necessitatibus. Et iure ratione magnam nesciunt dignissimos autem. Non aut voluptas accusantium reprehenderit.',24.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(39,8,'nesciunt','Quia vel eos excepturi accusamus atque similique. Assumenda laborum voluptates rerum voluptatem. Est impedit quia ut et eaque. Tempora et qui temporibus porro. Officia unde quae aut nostrum.',9.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(40,8,'dignissimos','Accusamus impedit cum aut id. Commodi et tempore quia repellat eos ab. Omnis unde voluptatem delectus aliquid. Error cumque nisi occaecati aut distinctio corporis sed sed.',12.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(41,9,'veniam','Facilis sed explicabo aut ex numquam laboriosam. Exercitationem est excepturi laborum aut. Autem a molestiae earum excepturi enim.',37.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(42,9,'quo','Sunt rerum enim et a quia minima inventore. Atque eum qui provident et ut quisquam ea. Beatae ut accusantium ab aspernatur nobis labore rerum quis. Libero nesciunt deleniti nobis quae minima et.',28.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(43,9,'neque','Aliquam voluptas repellat eveniet architecto dolorem. Deleniti natus provident dolorem illo voluptatem qui ab ut. Voluptas iusto et quidem molestiae corporis.',22.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(44,9,'ipsa','Ut aut rerum eos neque ullam. Itaque vitae id rerum molestiae.',30.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(45,9,'repudiandae','Aperiam numquam quo sunt non. Alias omnis ut dolor eos quod. Aperiam qui ut quisquam dolorum.',0.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(46,10,'nulla','Magnam quisquam quia quidem aliquid dolorem. Id officia rerum vel soluta fugit tempora quidem. Molestiae corrupti animi quia nam et. Aliquid sit est sit porro beatae quia.',8.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(47,10,'sint','Eaque eum excepturi tempora deserunt. Rerum dolor qui cupiditate qui mollitia. Ducimus perspiciatis sint consequatur accusamus.',18.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(48,10,'aperiam','Nobis molestias modi magnam harum cum consectetur atque fuga. Labore provident velit laborum consequuntur itaque. Aperiam vero omnis distinctio possimus sequi dicta.',22.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(49,10,'pariatur','Perferendis esse doloribus voluptates eveniet officia. Quas facilis ut laborum sequi occaecati ut consequatur ab. Iure blanditiis deserunt deserunt sint. Itaque ut est illum voluptas nostrum iure.',36.00,'2016-09-25 21:01:10','2016-09-25 21:01:10'),(50,10,'quis','Quidem voluptatem velit deleniti est odit alias sit. Ut incidunt ipsam quasi libero. Rerum deserunt quia nobis sequi ipsum officia quidem. Culpa est quia at quisquam quidem voluptatum.',10.00,'2016-09-25 21:01:10','2016-09-25 21:01:10');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'client',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dr. Alexzander Stracke','luisclaudiomjr@gmail.com','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','admin','lPiQVSNqTKkKjZ7S7jVGZDsptAmdagUaex23IqjJXyxdmzER1fwNGAZAunk0','2016-09-25 21:01:06','2016-09-26 17:52:45'),(2,'Dr. Alfred Weber','sigrid.gaylord@example.com','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','eL41JW5Yvl','2016-09-25 21:01:06','2016-09-25 21:01:06'),(3,'Santiago O\'Reilly II','hartmann.newell@example.net','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','y6IXqaBK4O','2016-09-25 21:01:06','2016-09-25 21:01:06'),(4,'Maybell Stark II','magdalena.stark@example.org','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','1kc95tLtqo','2016-09-25 21:01:06','2016-09-25 21:01:06'),(5,'Albert Heathcote','xlangosh@example.com','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','lVQCCTDlmu','2016-09-25 21:01:06','2016-09-25 21:01:06'),(6,'Murphy Ledner','chaim.shanahan@example.org','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','KfRWAKOPIR','2016-09-25 21:01:06','2016-09-25 21:01:06'),(7,'Dudley Harvey','corwin.josefina@example.com','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','1EvjqpuE68','2016-09-25 21:01:06','2016-09-25 21:01:06'),(8,'Gregorio Wilderman','dskiles@example.org','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','iyx6Yqmeqt','2016-09-25 21:01:06','2016-09-25 21:01:06'),(9,'Tony Kirlin','pschiller@example.org','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','Iial390jaX','2016-09-25 21:01:06','2016-09-25 21:01:06'),(10,'Mr. Ward Grant','gislason.marco@example.net','$2y$10$jCB0Sxssz9yRrxmDmlNEauhkPEcw0DGzVDTfKd9Q4NpK481Cu2bPq','client','Z1QteH3mJF','2016-09-25 21:01:06','2016-09-25 21:01:06');
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

-- Dump completed on 2016-09-26 16:38:36
