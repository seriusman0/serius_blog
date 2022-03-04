-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: serius_blog
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Web Programming','web-programming','2022-02-28 01:42:44','2022-02-28 01:42:44'),(2,'Web Design','web-design','2022-02-28 01:42:44','2022-02-28 01:42:44'),(3,'Personal','personal','2022-02-28 01:42:44','2022-02-28 01:42:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_02_01_230523_create_posts_table',1),(6,'2022_02_02_042413_create_categories_table',1),(7,'2022_03_01_002910_add_is_admin_to_users_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,3,2,'Nihil officia nihil.','est-nostrum-alias-suscipit-tempora-quos-sit-vitae',NULL,'Alias nam dicta et eum. Deserunt illo maiores soluta vero. Id nobis dicta excepturi temporibus commodi et culpa.','<p>Quos voluptas odit reiciendis ut ullam. Distinctio alias quo nobis aut magnam. Distinctio voluptatem omnis et. Maiores delectus quibusdam dignissimos tempora vel unde.</p><p>Et architecto illo nostrum rem commodi provident nisi. Commodi qui repudiandae dolore soluta. Quaerat ab aspernatur et ea illo quia.</p><p>Eligendi quia tenetur commodi illo. Esse excepturi error qui consectetur hic nisi illum. Nostrum facere accusantium at. Vel natus excepturi illum non debitis sed facilis. Est asperiores illo molestiae maiores quis.</p><p>Quo omnis explicabo est aliquid. Dolores eos eius atque eos. Saepe id accusantium aspernatur esse. Modi occaecati quasi natus quasi aliquam deleniti et.</p><p>Est enim dolor dolores provident. Et commodi qui quasi maxime. Amet voluptas quis atque impedit rerum debitis. Nobis perferendis ut ducimus deleniti et. Ipsa dolorem atque minima officiis numquam est dolores numquam.</p><p>Quae labore dolore quo officiis. Sit quis in est mollitia velit consequatur. Sunt sunt ea voluptatem sed molestiae quo.</p><p>Et ut sed quibusdam dolorem et. Aut necessitatibus iste veniam rem qui sed. Nostrum esse dolorem quasi nesciunt nulla dignissimos. Sequi alias assumenda est dolorum.</p><p>Beatae aut omnis reprehenderit saepe. Tenetur earum nihil expedita similique. Odio enim excepturi mollitia sint odio et.</p><p>Dolores odit eius exercitationem consequatur. Ea quis ipsa aut aut et. Enim ipsa nesciunt qui explicabo. Sint officia autem et hic harum fuga voluptatem.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(2,2,1,'Sint aliquid saepe voluptatibus inventore et iure ipsam.','quis-amet-ut-quaerat-in-ea',NULL,'Odit nihil quis et minus tempore. Qui eum harum sed et reprehenderit ut. Quia velit inventore ea amet est cupiditate est rerum. Ut cum voluptatum iure non. Veniam commodi architecto odio.','<p>Dolor et ipsam exercitationem similique. Et ab voluptate pariatur repellat molestiae fugit quibusdam. Consectetur autem quam soluta qui quia rem. Tenetur sint incidunt temporibus ex autem quibusdam et.</p><p>Quia perspiciatis placeat repellat magnam explicabo provident doloribus quo. Nesciunt maxime temporibus vitae similique illo maxime quis adipisci. Fuga libero sapiente totam esse. Est praesentium et est eum saepe in.</p><p>Nulla vel quis nostrum beatae sit. Debitis accusantium praesentium dignissimos et hic ratione. Qui possimus voluptate commodi deleniti repudiandae consequatur.</p><p>Vitae nemo corporis minus ex similique odit repellendus. Enim et nulla architecto et. Eligendi qui quia voluptas aut.</p><p>Labore unde earum odit qui soluta qui. Sunt sunt aut sapiente rerum debitis. Dolor dicta beatae quam sequi aut.</p><p>Id aut quis quibusdam soluta pariatur neque nobis expedita. Animi nihil et qui illo et nostrum amet. Odio enim animi assumenda odit maxime. Qui repellat qui molestiae temporibus corporis quos.</p><p>Autem a non corrupti minima hic quaerat. Veniam eaque quam dolores dolores voluptatem est aut. Qui ut nam fugiat eum molestias.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(3,3,3,'Sunt sint laborum rerum incidunt.','voluptatem-tenetur-consequatur-dolore-iusto-quia-aut-non',NULL,'Porro eveniet aperiam debitis debitis quasi. Quo cumque molestiae officia sint. Est nulla sed sunt sed. Ullam sint consequuntur facilis dolor tenetur dolor quia.','<p>Nihil quidem aut architecto quas mollitia. Doloribus blanditiis dolores amet eos nobis animi quia. Perferendis consectetur qui et consequatur at vitae laborum.</p><p>Officiis excepturi quidem dolores dolorem delectus doloremque. Placeat ut tempora temporibus molestiae aut aut. Veritatis sint soluta nesciunt consequuntur nisi.</p><p>Sed et sint odit quidem. Ea consequatur labore sint qui aut aut possimus. Mollitia earum ducimus quae quas laudantium.</p><p>Qui fuga recusandae labore necessitatibus reiciendis eos voluptatem. Commodi fugit illo et ut et. Dolorum ratione delectus consequatur totam molestiae et voluptatem.</p><p>Dolor molestias consequatur ea soluta. Mollitia vel repellat eos voluptatem aut molestiae quo. Et autem aliquam voluptatem assumenda architecto totam iusto reprehenderit.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(4,2,1,'Autem ut ea qui quo labore minima voluptatibus blanditiis dolor.','hic-aut-sit-voluptatem',NULL,'Culpa possimus officia sint quod voluptatem aliquid est. Sit mollitia aperiam dolorum perspiciatis incidunt porro. Temporibus non dolorem non inventore eveniet esse. Explicabo provident magnam voluptatem officiis consequuntur voluptate voluptatem.','<p>Commodi enim ut suscipit praesentium est. Sed inventore ipsa error excepturi aperiam.</p><p>Voluptas ea inventore a quia. Nihil est sunt fugit fuga quos. In dolorem quasi et vero aliquam. Quae eos quia quae magnam magni quas. Animi aut nulla iusto ullam labore ducimus.</p><p>Temporibus omnis cumque nam omnis. Quasi et minima sint deserunt. Iusto corrupti quia beatae facilis quos.</p><p>Fugiat dolore doloremque facere eius repellat. Et impedit quas et perferendis molestiae qui. Non sint magnam aut aliquid quis. Corporis et commodi ab praesentium.</p><p>Necessitatibus esse ut est assumenda ut enim. Libero unde quia quia. Esse ut asperiores officiis neque. In qui similique temporibus nobis rerum recusandae.</p><p>Autem dolor ab sit suscipit. Molestias sint voluptas eveniet alias sequi ut. Nam doloribus possimus accusamus sed laudantium.</p><p>Natus quo qui quo nihil minus aut. Ullam fugit asperiores eius sunt ea sed qui numquam. Minima perspiciatis minus praesentium excepturi ea eligendi enim et. Officiis voluptates cupiditate aut aliquid quod placeat.</p><p>Eum explicabo corrupti quam eveniet qui. Ut debitis corrupti ut non. Pariatur et sed ipsum aliquid ad.</p><p>Eos qui maxime odit a eveniet aut sit nobis. Eum dolor dolore animi at eos. A sunt quia quae sunt. Error perspiciatis quis quo ut. Doloremque et aut voluptas aut et laboriosam.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(5,1,1,'Officia nobis nihil rem.','non-maxime-quo-est-doloribus-rerum-ullam',NULL,'In qui ut minima voluptatibus. Labore expedita voluptatem pariatur laboriosam. Asperiores sed praesentium eaque ea ducimus et. Odio voluptatem maiores est excepturi odit.','<p>Magni et rerum voluptate. Debitis ut sint suscipit cupiditate aut. Laborum harum accusamus qui beatae.</p><p>Totam eius saepe dicta. A et distinctio rem ad ut. Vero tenetur ut fugit culpa quis quia.</p><p>Fugit tempore distinctio quia voluptatem. Vel atque excepturi placeat voluptatem modi debitis rem itaque. Est enim rerum ad porro iure dignissimos. Illo velit consectetur magni quia facilis.</p><p>Ut libero nam impedit vero optio nesciunt accusantium. Dolorum inventore corporis perferendis sequi vel quia adipisci. Illo dolores consequatur ut. Accusantium repudiandae cum est delectus iste reiciendis.</p><p>Quia non et ipsum et distinctio. Repudiandae expedita facere dolor nihil. Ratione quia repellat dolore. In est est ut est cupiditate nam pariatur.</p><p>Occaecati autem a exercitationem eum non excepturi. Nesciunt sed sunt ex sunt minus sunt. Maiores asperiores rerum quo quo voluptatum cum autem numquam. In illum quaerat voluptate aut consequuntur provident voluptas.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(6,1,1,'Amet reiciendis aut libero debitis corporis.','soluta-atque-debitis-voluptatem-voluptatibus-magnam-ut-sed',NULL,'Et quisquam laboriosam quia numquam consequatur autem praesentium. Quas qui reprehenderit ab sit aut. Sit impedit tenetur non fuga dolorem.','<p>Quidem et quia inventore iste. Qui et porro molestiae. At temporibus cumque eos quidem quasi et possimus. Aut ipsa illum dolor repudiandae autem est.</p><p>Voluptas impedit qui quia temporibus nemo. Fugit possimus tempora nam blanditiis rerum est nemo. Sed eum ut fugiat accusamus veritatis commodi aut. Pariatur repudiandae sunt et debitis quas mollitia magnam debitis. Mollitia temporibus adipisci necessitatibus nam atque dolor alias.</p><p>Corrupti doloremque modi aut non tenetur. Illo recusandae et soluta iure deserunt officiis placeat. Facilis sit eveniet quia itaque et accusantium inventore. Assumenda magni quisquam consequuntur.</p><p>Laborum possimus consequatur voluptates cupiditate voluptatum. Repellendus cupiditate dolor dignissimos nemo est animi. Ipsum qui fugit adipisci veritatis voluptatem illum sunt.</p><p>Quia vitae dolores tenetur officiis beatae aperiam ullam. Ducimus sed sed eveniet ab rerum dolores. Aut repudiandae aut nulla neque.</p><p>Numquam sed deleniti ducimus ullam reprehenderit sunt quis. Ad hic non neque enim libero quis sint est. Voluptatum quia eligendi minus sit.</p><p>Repellendus et quae omnis accusamus saepe omnis quod. Aut aut laudantium consequatur autem cumque. Impedit et nihil dolor aut quia neque modi. Non itaque dolorem consectetur perferendis quo dolor quibusdam itaque.</p><p>Aut possimus aliquid excepturi possimus. Voluptatum autem molestiae molestiae necessitatibus eum. Corrupti accusamus quasi a temporibus.</p><p>Voluptates ut aspernatur ut laboriosam enim et modi. Ea repellendus ab voluptas tempore molestiae provident doloribus. Porro eos soluta suscipit provident vel blanditiis. Culpa fugit excepturi hic quo. Inventore tempora inventore velit.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(7,1,3,'Dolores illum error ipsa.','accusantium-quia-alias-vero-voluptates-voluptatum-architecto',NULL,'Exercitationem ad assumenda et. Optio voluptatem nihil eligendi unde. Assumenda similique ipsam necessitatibus assumenda maiores accusantium corporis. Dolor earum sit inventore deleniti laudantium laudantium.','<p>Voluptas consequuntur voluptate omnis eum quis possimus ullam et. Totam quia voluptatem non perferendis non est. Est eius voluptatem aut.</p><p>Perferendis et aut sapiente et aut. Vel fuga sequi et. Officia tenetur molestiae consequatur rem earum ut quia.</p><p>Et ipsam ad doloribus minima. Vitae a nam animi mollitia et. Ut doloribus corporis beatae laudantium accusamus asperiores molestiae. Aspernatur ut magnam ipsum et. Debitis incidunt ipsa cumque aperiam.</p><p>Dicta suscipit porro veniam nam nam voluptates. Et saepe facere distinctio est dolorum officiis. Asperiores sapiente cumque eaque nihil. Qui impedit ab maiores quia quo assumenda quo.</p><p>Molestiae similique rerum corrupti necessitatibus deserunt et. Ut optio fugit et magnam inventore accusantium. Aut est iste aut officiis error. Similique odio in voluptas asperiores.</p><p>Quidem vitae corporis aut. Expedita distinctio quae eum inventore vel ipsum. Iusto illo eos quibusdam aliquam tenetur nobis incidunt. Et sed numquam eum illum error.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(8,2,2,'Molestiae nihil qui culpa aut.','voluptatum-exercitationem-nulla-delectus-voluptatibus-et-possimus',NULL,'Non et totam sunt et voluptatem expedita nihil. Consequatur porro aut iusto expedita veritatis nesciunt eaque. Saepe nemo esse modi voluptatem qui. Vel velit sunt rem velit.','<p>Similique et repudiandae ipsa aut corrupti reprehenderit et. Libero officiis voluptatem sunt eum laudantium voluptatibus. Expedita aut ut facere error. Ex minima id accusantium omnis.</p><p>Magnam odit natus sapiente. Occaecati et voluptas qui animi non porro. Cumque possimus inventore vero iusto voluptatem blanditiis est.</p><p>Eaque facilis non perspiciatis blanditiis est. In distinctio et at placeat optio culpa.</p><p>Eveniet quis aspernatur vitae molestiae ut. Ut qui et ut sed quia. Eos quo inventore exercitationem nihil quo error. Officiis enim aliquid non tempore in nihil et.</p><p>Dolores assumenda possimus rerum laboriosam. Explicabo ducimus reiciendis eum cupiditate atque eaque. Odio ipsa aut eveniet nisi deserunt ab recusandae ut. Laboriosam consequatur animi eligendi voluptatem. Vitae dolor dignissimos ab adipisci quo tempore.</p><p>Nulla doloribus ut consequatur velit repellat voluptatem. Omnis numquam ut autem deleniti. Minima labore ipsum soluta tempora quia.</p><p>Quod qui placeat nam. Id dicta cum modi id laudantium non. Dolorem quia cupiditate similique aut et rerum. Vitae cupiditate voluptas magni voluptate.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(9,2,3,'Reiciendis temporibus et impedit sapiente.','dolorem-repudiandae-a-nemo-molestiae-vel-impedit',NULL,'Laudantium qui nihil autem dicta rem soluta animi. Voluptas provident a non quibusdam. Id dolor occaecati maiores sunt dolorem ut.','<p>Esse impedit modi est omnis ut nihil. Est tenetur blanditiis consequatur molestiae pariatur at sit. Libero molestiae distinctio impedit a dolores suscipit est.</p><p>Minima voluptatem quos iure sit labore eos et. Itaque repellendus sint inventore blanditiis. Et inventore aut ullam. Voluptatibus ad ut delectus cumque earum fugiat quis.</p><p>Vel eligendi reiciendis minus velit quae beatae ut. Quisquam harum assumenda veritatis. Rerum numquam quam quo perferendis asperiores. Sapiente nam esse temporibus atque harum ipsam sapiente. Officia nobis voluptatibus doloremque dolores ut.</p><p>Quasi eum nesciunt sint voluptatem voluptatem quae quibusdam ipsa. Quaerat et ut et dolorem quidem. Quo atque officiis omnis non consequatur.</p><p>Aut eius error nobis. Voluptatem non omnis adipisci velit possimus quaerat aperiam. Consequatur at eaque voluptatem qui ut ipsum autem voluptas.</p><p>Quia non doloribus dolores totam necessitatibus illum. Et voluptatibus soluta iure ut voluptas. Omnis in quia incidunt ut itaque. Ut enim accusantium magnam et.</p><p>Fugit quia delectus sed molestias facere ex repellat. Atque qui id qui ut maiores unde est. Ut sint aliquam voluptas quam aspernatur dignissimos.</p><p>Odio optio voluptas numquam sunt. Non quibusdam id dolorum autem eum mollitia qui. Aut facere cumque doloremque quidem.</p><p>Quaerat et occaecati tempora aperiam beatae. Adipisci qui at sint tempore. Eligendi in repellat voluptates eaque. Iure consequatur consequatur quibusdam incidunt.</p><p>Numquam tenetur qui ut occaecati placeat. Sit asperiores molestias similique voluptas. Eos sapiente quisquam ut voluptate sint.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(10,2,2,'Ipsa et id id architecto nisi vel.','est-facilis-commodi-autem',NULL,'Repellat ad consectetur excepturi repellendus placeat eveniet maxime. Molestiae aut dolores enim unde. Ipsum in odit aut incidunt sequi repudiandae officia laboriosam.','<p>Voluptas nihil atque ut eveniet quasi. Fugit aut exercitationem qui saepe. Unde magni deserunt vel adipisci aut ipsa rem. Nemo voluptatem exercitationem itaque non.</p><p>Eius voluptatem est magni fugit dolorum pariatur. Aut ad earum veritatis aliquid non necessitatibus omnis. Dolore odio beatae laborum. Quam eligendi odit expedita voluptatem sapiente a rerum.</p><p>Aperiam molestiae eos reiciendis totam dolores dolorem officiis laboriosam. Pariatur et illum eveniet ex. Nesciunt et natus quibusdam aliquid veniam. Eos odit temporibus autem.</p><p>Voluptate sequi quas perferendis repellendus explicabo eveniet sint laborum. Non et nostrum laudantium animi in nesciunt.</p><p>Qui ut expedita qui commodi rerum vel. Illum qui rem eum consequatur nemo accusamus. Quasi architecto est vel quia ea. Aut excepturi doloribus eaque distinctio sequi est qui.</p><p>Et qui dolore nihil aut fugiat eaque est. Nostrum alias doloribus illo nulla. Numquam assumenda vel id sunt reiciendis sit. Voluptatem voluptatum eos ut sed delectus.</p><p>Qui fuga quas quod dolorem et quos quasi saepe. Accusantium autem ut doloribus quidem quia alias voluptas. Laborum reiciendis perferendis molestiae accusamus aut qui magnam.</p><p>Omnis molestiae quam illum omnis. Nihil autem est esse eius ut dolorum. Quis praesentium molestiae non cupiditate consequuntur laudantium dolore.</p><p>Ad inventore vel animi est numquam unde veniam. Maiores ea ex mollitia animi. Veniam vel voluptatem non.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(11,1,3,'Consequatur corrupti voluptas nostrum soluta recusandae.','earum-sapiente-ex-non-et-asperiores-amet',NULL,'Tempora voluptatem non enim qui. Nisi ut et eum sit minus veniam. Et rerum quidem a quia aut et. Eum veniam doloribus non explicabo eius quo quidem. At ipsum nihil rem facere.','<p>Blanditiis molestiae repudiandae ut labore omnis. Et ex totam quidem ullam sed repellat in. Nostrum dolor numquam nam quod. Doloremque odio sint ut.</p><p>Voluptatibus dolorem ut eveniet vitae ea perspiciatis voluptas. Fugit molestiae unde quaerat iusto repudiandae nam qui culpa. Cupiditate maxime sapiente sunt delectus omnis. Quo sed dolores ut ex et in corrupti.</p><p>Voluptates et sint cumque quo sint dolore explicabo rerum. Iure veniam et voluptas qui aut accusantium. Libero dolores sed ipsa ut recusandae nobis cupiditate.</p><p>Soluta ut nisi et cum quis et aut. Sed ut qui placeat assumenda expedita. Temporibus voluptatem occaecati sunt et ab voluptas nostrum.</p><p>Optio ut ut earum assumenda. Vel nisi magni optio. Sint labore ducimus libero id sapiente. Quos accusamus quis qui ipsam vel dolorum. Soluta quisquam id velit.</p><p>Laboriosam culpa perferendis occaecati quasi. Et porro ipsum itaque. Odio suscipit voluptatum voluptas quia iure.</p><p>Sunt dignissimos asperiores aut. Quidem consequatur vitae eius molestiae enim eius. Est eius tempora non soluta doloribus dolorem nostrum. Quidem et fugit adipisci consectetur dignissimos. Ut beatae sint tenetur.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(12,2,3,'Impedit est possimus.','porro-perferendis-rerum-minima-velit-voluptatum',NULL,'Nam error odit labore dolor facilis rem. Tenetur ea vel beatae sunt sunt praesentium recusandae id. Dolores qui recusandae officia facere quia qui.','<p>Doloremque ab vero quisquam autem veritatis. Pariatur minus ipsa iusto nam dignissimos et nisi. Eveniet aut est ut qui reiciendis. Occaecati quasi illum adipisci dolor dolorum ut consectetur fuga.</p><p>Aperiam repellendus quis ex molestiae. Provident laudantium at necessitatibus sit esse in. Est quia aspernatur occaecati consectetur amet.</p><p>Quibusdam qui reiciendis unde quam. Ea aut molestiae est. Omnis quia nam ea voluptate. Consequatur quia nisi excepturi enim est ducimus veniam.</p><p>Ad vitae asperiores qui earum incidunt. Vero vel optio qui et omnis. Officiis quas eos et. Eum adipisci facere accusamus doloribus nostrum et.</p><p>Quam sint et et dolorem ipsam cumque nulla. Sequi alias rem officiis deleniti vero sapiente. Quod dolorum nesciunt quia quia perferendis.</p><p>Qui aut perspiciatis non in non. Omnis maxime culpa aut aut. Quia ipsa voluptatem ducimus pariatur necessitatibus impedit delectus. Animi labore nobis mollitia et.</p><p>Sed iste aut vero aliquid numquam fuga. Et inventore minima quos eveniet.</p><p>Optio praesentium est magni dolorum soluta earum vitae. Voluptatem fugiat et explicabo odio. Et dolore quo vel nostrum quia enim. Distinctio suscipit est iste suscipit quisquam harum excepturi quia.</p><p>Quisquam culpa beatae ea cupiditate ducimus iure et. Laborum voluptas dolores at adipisci. Quasi omnis omnis cumque sit reiciendis ipsam ipsa. Repudiandae laudantium quam odit dignissimos explicabo.</p><p>Nemo et voluptas vero eveniet nostrum. Ut sit voluptatem eius eum quidem. Quod eius ea sunt voluptatem.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(13,1,3,'Sequi vero earum aut.','sunt-et-quae-et-ratione-ab-accusantium',NULL,'Id excepturi ea vel unde accusantium. Vero labore quo enim veniam repellat impedit sed. Ullam sed libero et rem minus rerum inventore. Id amet commodi dolor impedit nulla in.','<p>Mollitia quas saepe velit qui facere perferendis dicta pariatur. Eum rem maxime nisi. Delectus quis non aut. Dolores est optio quod amet sapiente.</p><p>Quae dolorem non voluptas sed neque libero impedit in. Dolorum nam ratione tempora ut mollitia. Quo nostrum aspernatur iusto enim aut. Maiores vitae blanditiis et ex sint.</p><p>Qui rerum velit ullam rem quidem recusandae. Quos porro sed autem eum sit ratione. Consequatur ipsum vitae quas necessitatibus velit quam.</p><p>Mollitia ut quis itaque sint. Adipisci et tenetur nulla minus consequatur delectus voluptatum exercitationem. Magni velit consequatur ipsam commodi.</p><p>Recusandae molestiae exercitationem eaque atque voluptatem consequatur. Impedit quia consequatur et eveniet. Autem et nihil veniam nostrum ut.</p><p>Quos quia atque tempora. Sit dicta et modi et facere. Eligendi aut autem omnis hic veniam voluptate accusantium.</p><p>Quia ipsam velit expedita quaerat sit eveniet. Autem omnis est aperiam hic harum. Sunt eum sed neque dolorem. Delectus ex et ut beatae.</p><p>Delectus fugiat quod architecto eius facere. Voluptatum quidem deleniti voluptas et ut. Temporibus voluptatum molestiae quaerat consequatur repellat omnis tenetur. Neque culpa voluptatem ipsa magni vero dolor et.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(14,2,3,'Sed quidem vel.','totam-nisi-eaque-rerum-unde',NULL,'Earum quae aut repellendus. Velit ea et et. Sed eius voluptate voluptate rerum minus.','<p>Eveniet temporibus rerum autem dolorem. Vel ad nisi tempore alias qui. Natus nostrum at architecto eligendi beatae quisquam est.</p><p>Ab culpa mollitia ipsa sit cumque. Aperiam et provident blanditiis ex placeat accusamus iure voluptate. Quo beatae in dolorem nesciunt alias. Adipisci autem eligendi error ut.</p><p>Voluptatem sunt cum alias aut laborum sed sint. Sit laudantium velit sed praesentium quia eos est dolor. Alias et et aut et quasi ut.</p><p>Et quo blanditiis quisquam quaerat fugit. Quis aut vel ea ut. Quis quam delectus consequatur rerum omnis cumque voluptas. Mollitia sit perferendis accusamus iusto sunt modi. Maiores est reprehenderit deserunt.</p><p>Eos voluptate nobis eaque. Enim dolor sequi praesentium quisquam eius eos ab. Quis architecto aut similique voluptatem qui ut. Est eum quia vel doloremque tempora.</p><p>Qui atque id dignissimos repellat rerum. Voluptates reprehenderit harum corporis autem sint possimus est.</p><p>At asperiores perspiciatis laboriosam et corrupti voluptatem rerum tenetur. Est et repellat nam labore ut. Recusandae aliquid et saepe soluta id aut. Labore maiores ut aliquam earum molestiae corporis vitae at.</p><p>Voluptate voluptates nobis quod voluptatem molestias voluptatem at qui. Odio dolores vel et delectus. Qui est reprehenderit consectetur ipsa. Quo id perspiciatis sit quia quam voluptatibus dolorum.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(15,3,3,'Sed qui voluptatibus praesentium eius doloribus id ipsum vel.','aliquam-ducimus-nobis-aliquid-sed-qui-natus',NULL,'Est vel aut odit consequuntur. Optio et officiis aut et quas. Molestiae ipsa corrupti aut nihil omnis perferendis voluptatibus.','<p>Impedit doloremque nihil fugiat fuga laboriosam exercitationem. A voluptatum perferendis deleniti. Consequatur cum facere officia. Rem et et hic enim in aliquam.</p><p>Accusantium ut et dolore voluptatibus eum. Autem eligendi delectus qui eius consequatur sit tenetur. Omnis aut ad officiis perferendis ipsa animi.</p><p>Tempora autem iste eum odit. Illum fugiat eos expedita nam. Dicta accusantium dignissimos dignissimos ut eum voluptates illo. Sunt officiis velit quidem possimus omnis occaecati rerum.</p><p>Non error nostrum quia placeat sunt. In ut ullam eum non nesciunt. Sequi nobis totam qui necessitatibus incidunt natus. Repellat et voluptatem aliquid.</p><p>Eos consequatur molestias ea dolor molestias aliquid praesentium. Vero delectus adipisci totam natus voluptatem repudiandae. Dolorem porro veniam et vitae cum.</p><p>Sunt quaerat rerum ut architecto dolorem. Suscipit quod dolorem fugiat necessitatibus. Assumenda dignissimos rerum itaque.</p><p>Quibusdam non quibusdam officia occaecati est molestias. Vero sunt laborum fugit facilis. Quos optio eos incidunt nisi.</p><p>Voluptatem est non vitae rerum sint ea consequatur sunt. Quo explicabo ea porro aut quod eos sed. Quo quis omnis est dolor qui rerum sint harum.</p><p>Et beatae est suscipit veritatis odit. Libero tempore ut quo. Dolorem velit odit optio voluptatem qui vel deserunt. Accusantium ex impedit mollitia debitis id unde consequatur.</p><p>Est sunt voluptate totam qui. Enim tenetur qui commodi recusandae. Quasi vel ea quis ad facilis totam.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(16,2,1,'Enim officiis exercitationem voluptate nihil voluptatum.','ipsa-deserunt-alias-assumenda-natus',NULL,'Neque ea exercitationem facere tempore. Ut rem iure est esse excepturi sequi dolorum laboriosam. Laborum ipsum at ut consectetur ut et. Ut debitis et sequi.','<p>Ipsa aut dicta est ea et quaerat. Laborum nemo ut quod sed voluptatum omnis. Aut commodi repudiandae ab nesciunt voluptas.</p><p>Doloremque omnis ex eum ad mollitia officiis earum. Voluptas rem eius sunt. Excepturi voluptas et qui saepe rerum omnis quia. Aut eaque debitis exercitationem eius temporibus omnis.</p><p>Quo rerum illum necessitatibus recusandae repellendus in nam. Illo dolor accusantium non et illo neque. Quasi sapiente alias porro dicta.</p><p>Suscipit eius voluptate eos quos. Architecto et dolorem consequatur totam dolorem eligendi aut. Ut saepe quos quos tenetur provident aut ipsam.</p><p>Ipsum et vel repellat neque. Saepe iusto omnis debitis at ea similique voluptatem. Et vero velit in laborum.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(17,2,3,'Maxime dolorem.','voluptas-velit-ut-quas-quam-rem-vero',NULL,'Qui saepe commodi adipisci placeat minus at sed enim. Officiis dolores ut animi animi ipsa. Porro ab vero autem aut vel. Non nulla amet dicta autem ullam praesentium.','<p>Distinctio distinctio corporis fuga laudantium non eos. Et optio enim molestias iusto error ea.</p><p>Libero et autem quasi. Ullam eos sequi voluptatem distinctio exercitationem. Ducimus cumque aut velit eos dolore laudantium quo itaque. Deleniti sequi dicta cupiditate illo qui molestiae molestias eos.</p><p>Soluta animi modi dolorem rem corrupti odio. Hic temporibus error eveniet repellendus ut odit et. Quaerat et ipsum magni dignissimos doloribus quia labore. Qui blanditiis vitae quod. Esse quia deserunt harum voluptas vel quam et voluptatem.</p><p>Et quia mollitia earum distinctio. Dolorum quis facilis cupiditate maiores et omnis voluptas.</p><p>Nesciunt beatae in sit adipisci consequatur. Ab et rerum quis totam. Quia dignissimos nam excepturi cupiditate quo repellat rerum.</p><p>Excepturi id rem est sunt architecto quis quod ea. Eos voluptates laudantium non ut ullam. Dicta nihil inventore qui dolor animi. Qui id a dolore vel enim in sed.</p><p>Eum eum impedit maiores nisi. Qui iusto odio qui. Alias ratione consequatur repudiandae quo sit eum molestiae.</p><p>Veritatis fuga et modi et ut. Cum maxime et error necessitatibus deleniti cumque reiciendis. Dolor deleniti temporibus qui est qui cumque.</p><p>Quia architecto et quas excepturi dolores saepe. Laudantium ex sunt at eaque inventore et modi. Et autem in nam quibusdam.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(18,1,2,'Id earum nostrum.','deserunt-voluptatem-molestiae-aspernatur-animi',NULL,'Quasi rerum consectetur sed repudiandae voluptates. At aut consequatur quia molestiae et libero et. Et nihil accusantium est laudantium adipisci asperiores. Quia dolor officiis fugit et sunt.','<p>Odit eveniet voluptas esse nisi quam porro et itaque. Est placeat nihil eveniet veniam voluptas non. Molestiae sit ducimus minus labore delectus cupiditate. Distinctio qui aut illum.</p><p>Id ratione hic hic illum sint iste. Facilis architecto officiis eos voluptas quo modi. Qui perspiciatis quo est beatae deleniti.</p><p>Molestias beatae ducimus facilis vero est vel. Et eaque qui voluptatem laboriosam qui quia dolor sit. Saepe et sed fugiat minus incidunt rem. Accusamus est dolore totam est.</p><p>Et est nihil eligendi dolores quisquam fugiat. Voluptate iusto maxime asperiores dicta. Illum incidunt et nam iste qui adipisci explicabo. Quibusdam architecto provident tempore quis.</p><p>Autem possimus quo minus amet quidem veniam. Beatae repellat beatae laudantium ut est eos. Est odio consequatur et. Porro repudiandae autem exercitationem earum.</p><p>Voluptatem aspernatur non corrupti voluptas error facere eos. Quibusdam omnis numquam fugiat atque.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(19,2,2,'Quia quo doloremque eos iste.','nisi-alias-quisquam-rem-rerum',NULL,'Vel eius quae consequatur dolorem. Iusto temporibus sint culpa qui sit. Quia ut a nesciunt quia.','<p>Aut repudiandae sit eius laboriosam est. Eius itaque illum aut. Dolores et sed pariatur ut eveniet accusamus ut.</p><p>Ipsa voluptatem voluptatem dolorum eum eum. Occaecati qui aspernatur aut enim. Deserunt veritatis veniam architecto voluptas deserunt.</p><p>Minima et non velit est. Quaerat eligendi odio ipsa voluptatem dicta dolor. Velit iure tenetur est tempora qui accusamus dolores. Asperiores aut aut quae mollitia perspiciatis qui aut.</p><p>Doloremque perspiciatis sit perferendis ipsam. Nemo veniam odit libero alias. Architecto expedita voluptatem molestiae inventore. Error minus sapiente explicabo. Consequuntur sit quis hic.</p><p>Suscipit error alias quidem est odio. Tempore minus veniam expedita eaque tempora quae cum. Consequatur quis velit velit facere nihil a. Qui atque impedit recusandae animi iste.</p><p>Fuga fuga molestias voluptatem omnis ut voluptas omnis cupiditate. Illo tempore est quidem corporis ea quos voluptate. Molestiae maiores earum eaque maxime ut.</p><p>Nam nisi eum sed error aut. Qui repellendus vitae facere et omnis alias delectus nihil. Itaque voluptatum est debitis ut quae.</p><p>Non pariatur asperiores omnis et fuga. Vero ea consequatur nostrum et sed. In qui et aut veritatis et. Itaque vitae nihil praesentium in tempore eum mollitia.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44'),(20,2,1,'Natus rerum saepe optio neque quia dolore.','reprehenderit-aut-consequatur-officia-repellat-quisquam',NULL,'Et laboriosam sed at similique iure. Non consequatur id voluptatum provident est incidunt ut. Ea quia nihil non nesciunt non. Odio qui voluptatibus dolorem dolores reiciendis qui dolor.','<p>Ratione id qui adipisci perspiciatis. Sed ad aperiam expedita. Deserunt sunt a ad eos dolor et et. Dolorem totam architecto ea rem numquam et non eos.</p><p>Impedit velit dolorem fugiat temporibus eos voluptatem. Recusandae aliquid soluta sint temporibus harum iure quia. Eveniet modi velit ipsum exercitationem temporibus qui aspernatur.</p><p>Consequatur explicabo et quia quibusdam et consequatur. Officiis quae aut omnis deserunt voluptas repellat. Nemo vero quis molestias provident.</p><p>Dolores voluptas velit minima impedit. Ipsam molestiae sit dolorum porro repellendus. Praesentium est ab magni in.</p><p>Quod molestiae nobis ipsa tempore. Accusamus ut dignissimos porro modi. Aut quis enim quas consequuntur consequatur iure laudantium. Quas asperiores quidem nobis est et.</p><p>Qui quam hic deleniti est praesentium ea. Dolorem ut illo et eveniet doloremque sit et sed. Eaque rerum laboriosam reiciendis architecto doloremque voluptate.</p>',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Seriusman Waruwu','seriusman','seriusman0@gmail.com',NULL,'$2y$10$OYcIcifkFlTR23nDhffv2u35qvzcdB6TrtkVxqrhx1A.4CUMgJI1G',NULL,'2022-02-28 01:42:44','2022-02-28 01:42:44',1),(2,'Kemba Kuswoyo','marbun.artawan','jais.pratama@example.com','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6ic5nY3I72Y5fgkmvydPR4NxE8bpt1txkp4994rHxRmnTvM5wbFKBbVDYuN5','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(3,'Fitriani Hassanah','jfirgantoro','nababan.hamzah@example.net','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9jLXbSt2kl','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(4,'Danuja Embuh Wahyudin S.Sos','jasmani.dabukke','asetiawan@example.com','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CTHa90IaV1','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(5,'Mahdi Kurnia Permadi S.H.','niyaga90','saiful97@example.com','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','wCyC8eZFPM','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(6,'Warta Budiyanto M.Ak','bakianto.uwais','utama.laras@example.net','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','pMDMsJmcGN','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(7,'Kanda Tamba','mardhiyah.luthfi','saragih.ira@example.com','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','lsd5wlDDUO','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(8,'Karimah Sudiati','qori.zulkarnain','cinthia.kusumo@example.com','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','UcgOooIw0m','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(9,'Harjasa Galiono Prasetyo S.H.','damar.wasita','michelle.nasyiah@example.net','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FYr13qcSI9','2022-02-28 01:42:44','2022-02-28 01:42:44',0),(10,'Harjaya Hakim','prayogo11','dinda.safitri@example.org','2022-02-28 01:42:44','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','VkbtC6Coxa','2022-02-28 01:42:44','2022-02-28 01:42:44',0);
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

-- Dump completed on 2022-03-01 10:11:11
