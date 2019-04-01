-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 24, 2019 at 03:46 PM
-- Server version: 8.0.15
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libraryapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `author`, `stock`, `price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'quis consequatur necessitatibus', 'Esse laudantium rerum quidem aliquam aut ipsam. Asperiores dolorum suscipit est provident accusantium adipisci quo assumenda. Aut placeat nihil laboriosam molestias et. Consectetur et quia ad quis commodi dolores expedita quos. Quasi dolor omnis sint quidem.', 'Mrs. Michele Ebert V', 11, 687, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(2, 'odio odio sed', 'Voluptas molestiae qui laboriosam sed. Aut neque molestias repellat cumque sint dicta at. Eos cumque consequatur cum expedita saepe earum qui. Ea est atque aliquam inventore dolore velit dolor quibusdam.', 'Dr. Willis Hessel IV', 52, 953, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(3, 'inventore perferendis alias', 'Eos maiores qui dolorum. Error facere eaque nisi. Aut modi qui error explicabo et officia. Quae accusamus excepturi recusandae ea non.', 'Emmy Nicolas', 23, 636, 2, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(4, 'quis et harum', 'Laborum vel autem adipisci et est. In distinctio iure necessitatibus voluptates consequatur provident dolorem. Sint perferendis sit nulla non. Amet aut qui delectus illum quo et excepturi. Sequi non pariatur aspernatur sint architecto.', 'Ms. Cleta Swaniawski DDS', 17, 342, 2, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(5, 'earum facilis qui', 'Porro omnis ipsa similique necessitatibus distinctio dolorem. Quos nobis commodi nostrum facilis. Ea quasi alias sit et qui explicabo voluptatem.', 'Lindsay Dickinson', 79, 218, 3, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(6, 'sequi qui in', 'Quisquam quae ad voluptas molestiae. Officia ut et illo modi est non nobis eum. Ut facere voluptate unde unde omnis. Eos ut voluptatem fuga culpa labore voluptatibus.', 'Victor Dooley', 11, 810, 3, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(7, 'ad doloribus eos', 'Adipisci est est rerum iste eum ipsa. Quia aut soluta consequatur maxime ratione consectetur qui. Enim possimus ut sit reprehenderit qui atque magnam.', 'Mrs. Veronica McKenzie', 54, 986, 4, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(8, 'officia quas et', 'Vel tenetur in voluptatem fuga qui. Voluptatibus dolore est eligendi ad minus et. Voluptas sit eum adipisci velit quo. Fuga adipisci occaecati libero aut.', 'Roscoe Abshire', 65, 181, 4, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(9, 'consequatur incidunt nisi', 'Aut qui eaque magnam quam facere unde quia. Quia quibusdam dolor quo. Minima sequi et aut quae voluptatem qui. Quo ea placeat molestiae corrupti totam magnam.', 'Adalberto Jerde', 18, 239, 5, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(10, 'ducimus quo voluptatum', 'Sunt voluptatem tempore dolor ut magnam non quibusdam quo. Hic qui maiores sunt et. At odio at impedit dicta.', 'Allison Parker', 74, 303, 5, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(11, 'est sit nemo', 'Qui et non ut aspernatur. Earum ut inventore ipsam velit architecto fugiat est sint. Odio nihil ad eos repellendus molestias in iure. Quis perspiciatis aliquid corporis dolorum delectus qui.', 'Prof. Bernhard Buckridge', 30, 842, 6, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(12, 'provident aut eligendi', 'Aut dolorem nostrum aliquam. Molestiae ratione eius occaecati. Nesciunt maiores explicabo similique non.', 'Miss Alaina Schinner', 10, 324, 6, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(13, 'enim ad voluptatem', 'Sit omnis quo ducimus. Ut animi voluptas a vitae. Optio molestiae rerum est optio rerum. Beatae est sint quia minus ea quasi.', 'Dr. Donato Ward', 15, 630, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(14, 'nihil fuga nobis', 'Occaecati ea dolore culpa rerum. Nostrum quia aut similique fugit. Cupiditate et nesciunt voluptatem et facilis voluptatibus. Adipisci quos sequi magnam nostrum.', 'Estel Hudson', 36, 373, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(15, 'laudantium labore voluptas', 'Ut recusandae dolorem optio nobis maxime repellat. Quisquam est laborum ea voluptate. Explicabo accusamus vel sit aliquid qui.', 'Jacquelyn Emard', 68, 561, 8, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(16, 'esse quos quisquam', 'Hic explicabo recusandae et veritatis. Ab blanditiis cupiditate omnis tempore non. Commodi sapiente reiciendis ipsam architecto sapiente ut. Et ut enim suscipit quis molestias dignissimos et.', 'Cordell Lakin', 36, 152, 8, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(17, 'libero eius non', 'Ipsum omnis ducimus et et sit animi non. Ratione voluptatibus veritatis et impedit. Repudiandae voluptatem amet numquam repellat iure. Sed fuga odio libero cupiditate praesentium.', 'Abdullah Konopelski', 36, 600, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(18, 'voluptatum perspiciatis illum', 'Sit eos voluptatem omnis nisi. Est voluptas odit reprehenderit consequatur. Debitis et impedit est enim. Nemo et consequatur quia deleniti dolores.', 'Fletcher Hand', 65, 871, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(19, 'deleniti iure labore', 'Commodi ut dolores ad et ut molestias veritatis. Atque expedita autem cupiditate est praesentium cumque perferendis.', 'Estrella Strosin', 74, 530, 10, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(20, 'cupiditate ut aliquam', 'Officiis omnis nostrum eaque maiores et ea. Assumenda iusto qui odio. Est impedit quae explicabo beatae.', 'Dr. Meghan Flatley IV', 42, 720, 10, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(21, 'book222', 'some description', 'amr diab', 11, 1111, 11, '2019-03-24 01:05:32', '2019-03-24 01:05:32'),
(23, 'book222', 'some description', 'amr diab', 11, 1111, 11, '2019-03-24 01:13:09', '2019-03-24 01:13:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(139, '2014_10_12_000000_create_users_table', 1),
(140, '2014_10_12_100000_create_password_resets_table', 1),
(141, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(142, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(143, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(144, '2016_06_01_000004_create_oauth_clients_table', 1),
(145, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(146, '2019_03_21_032709_create_books_table', 1),
(147, '2019_03_21_032739_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('48c3680d46d076999db3371ee121c3b94ea204df9703ef919417f440f40b04861029771186ef8b97', 11, 1, 'myApp', '[]', 0, '2019-03-22 04:14:20', '2019-03-22 04:14:20', '2020-03-22 06:14:20'),
('21897b0e3f1c031e88ccf7f30b93dfb58405f41a2df279922489ae5468179df42c220c92c0463c79', 11, 1, 'myApp', '[]', 1, '2019-03-22 04:17:48', '2019-03-22 04:17:48', '2020-03-22 06:17:48'),
('2f405117bcb32ed7e21991128066feb24e554d7e85b339611f46d6a4ef16cecb903b199aacd9ad1f', 11, 1, 'myApp', '[]', 1, '2019-03-22 04:46:27', '2019-03-22 04:46:27', '2020-03-22 06:46:27'),
('4c5e23c87f3903f80d277b269d5aa2ee0d540d3eaf68ebc2651d0689946e520d59888c7c4dadb26a', 11, 1, 'myApp', '[]', 0, '2019-03-24 01:03:47', '2019-03-24 01:03:47', '2020-03-24 03:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'V2hwPVoBJLn6WNzMIdw3m4kXERUrKVs8y0Z59eHa', 'http://localhost', 1, 0, 0, '2019-03-22 03:10:54', '2019-03-22 03:10:54'),
(2, NULL, 'Laravel Password Grant Client', 'wnpoctEtzUJaVF7Cl3ZEPzihLCurVXbTId461Kuk', 'http://localhost', 0, 1, 0, '2019-03-22 03:10:54', '2019-03-22 03:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-03-22 03:10:54', '2019-03-22 03:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_book_id_foreign` (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rating`, `user_id`, `book_id`, `created_at`, `updated_at`) VALUES
(1, 'Voluptatibus voluptatem minima non molestias. Voluptatem provident exercitationem natus autem unde dicta quas. Autem voluptatum qui qui voluptas consectetur aut placeat. Cumque sit non aperiam voluptatum magni.', 4, 4, 16, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(2, 'Qui et cum aut eveniet adipisci nobis praesentium. Asperiores animi rem autem eveniet sequi quaerat. Nemo consequatur voluptatum dolores est fugiat recusandae. Quia eveniet tempora aspernatur beatae maiores.', 2, 8, 2, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(3, 'Voluptatem quisquam quos dolorum corporis. Nemo tempora et quia. Odit vitae tempora perspiciatis repudiandae ad et.', 0, 1, 16, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(4, 'Fugiat quisquam non blanditiis fugiat voluptas consequatur voluptatem. Explicabo provident cupiditate accusantium sint quo. Sint minus qui labore ducimus. Odit ut repellat est totam culpa modi.', 3, 3, 19, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(5, 'Voluptatem odio maiores officia est quia dolore. Nobis aut sit tenetur sunt est. Ipsam nobis vero odio nisi consequatur iste. In tempora dolor ut sunt.', 4, 7, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(6, 'Facere doloribus consequuntur repudiandae et nulla. Provident et commodi voluptatibus exercitationem iure et deleniti. Eos recusandae rerum natus dolorem.', 2, 8, 3, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(7, 'Explicabo velit et ad. Nobis est veniam aut eveniet et omnis. Ut voluptatem doloremque eos et labore animi ab voluptatibus. Eaque amet labore totam officiis odit.', 0, 8, 18, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(8, 'Et occaecati voluptatem et ut atque earum itaque. Est ullam modi corporis exercitationem. Fugit iure vel omnis tempore praesentium. Mollitia aliquam eos magni et quasi.', 1, 2, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(9, 'Dignissimos voluptatum corporis neque praesentium. Nihil omnis in perspiciatis non a id nesciunt. Maxime enim eaque aspernatur id doloribus qui. Sit id quibusdam illum atque ratione quasi.', 5, 9, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(10, 'Rem dolores incidunt vitae corporis iusto natus quo ipsam. Molestias aut cum est dolor. Amet fugit excepturi suscipit est. Ut dolores non dolores voluptatibus et impedit necessitatibus quis.', 0, 5, 17, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(11, 'Non dolorem aut saepe rerum. Sunt ex reiciendis velit at dolorem error aliquam libero. Id dolore illo possimus occaecati. Libero adipisci vel accusantium et et nobis minus incidunt. Aliquid quia eum neque quia dolorem.', 4, 10, 20, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(12, 'Voluptas aut voluptatem ducimus error expedita similique temporibus. Et voluptatem mollitia quaerat atque sed quo reprehenderit. Optio ullam amet ut quos corrupti voluptatibus officia.', 1, 6, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(13, 'Enim ipsum cupiditate porro placeat quo est. Provident in accusamus distinctio fuga similique. Consequuntur autem inventore dolorem. Nesciunt minima similique iste.', 1, 8, 13, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(14, 'Dolor ut dolore voluptas eos doloribus aut eos. Ullam sunt sed laboriosam. Recusandae ad sequi aut non alias ut.', 4, 9, 20, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(15, 'Magni quam amet facere nesciunt modi nihil id et. Culpa pariatur porro ut aliquam nihil hic. Qui sed excepturi dicta illum.', 3, 1, 10, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(16, 'Saepe non aspernatur tempore natus vel minus eaque. Eum voluptas sit fuga pariatur dolore non. Voluptas architecto quasi mollitia labore saepe iure.', 5, 3, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(17, 'Esse sit aliquid ratione. Necessitatibus consectetur laboriosam sunt necessitatibus distinctio. Qui aut quos ullam distinctio beatae.', 4, 4, 19, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(18, 'Ipsum pariatur eligendi quia voluptatem odit. Soluta sit vitae atque blanditiis omnis. Delectus nobis earum officiis in fuga sunt non dolore.', 5, 10, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(19, 'Placeat similique sequi corrupti non rerum voluptatem consectetur blanditiis. Ducimus similique ea explicabo.', 2, 4, 11, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(20, 'Beatae in illo et voluptates illo. Quo excepturi necessitatibus deleniti quis maiores qui. Iure accusamus delectus assumenda placeat reprehenderit unde. Voluptatem rerum libero dolorem occaecati et et eos modi.', 0, 8, 8, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(21, 'Sint explicabo modi et adipisci ipsa. Rem praesentium corporis non deserunt nihil odit.', 0, 6, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(22, 'Est quos enim facilis magni. Aut voluptatem sint natus incidunt nulla voluptas doloribus. Enim maiores ratione itaque delectus illum vel hic autem.', 3, 4, 11, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(23, 'In sequi in autem sed rerum et. Quasi ratione eum enim aut quasi magni. Necessitatibus incidunt voluptatum magnam aliquid error nisi consequatur saepe. Harum placeat nam consectetur dolorem quis dignissimos.', 4, 6, 5, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(24, 'Eius id aut deserunt. Assumenda ut consequatur quidem voluptatum. Voluptatem ipsa quibusdam quo adipisci.', 3, 1, 19, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(25, 'Eos molestias soluta odit tempore rerum sed. Consectetur consequatur numquam quisquam itaque officia.', 3, 6, 15, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(26, 'Est veniam nulla assumenda sunt est optio. Sit sed molestiae consequuntur ratione praesentium libero officia autem. Numquam aut tempora consectetur consequuntur.', 2, 6, 17, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(27, 'Quod molestiae dicta eum occaecati alias velit porro. Error reiciendis doloribus consequatur modi. Commodi quas velit vel qui et reiciendis. Adipisci cumque quia deleniti quo aliquid in tempore.', 5, 5, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(28, 'Atque omnis fugit ut enim quisquam dolor quas mollitia. Natus aliquam explicabo ipsam non quod quia non. Similique sint nemo occaecati cum commodi fugit. Quos veritatis numquam dolorem unde.', 5, 8, 18, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(29, 'Nihil sed quaerat tempora beatae adipisci exercitationem dolor. Assumenda illum voluptatem voluptate consectetur est a id quas. Occaecati cupiditate quam ducimus ullam molestiae cum.', 1, 9, 10, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(30, 'Eum quidem molestias qui ipsum ut illum voluptatem. Fugiat est deserunt iste voluptatibus ratione repellendus. Ab soluta est nemo nisi ducimus.', 1, 6, 8, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(31, 'Quidem occaecati saepe ab a minima. Ducimus ipsa dolorem eaque quidem nihil impedit. Possimus esse doloremque maxime perferendis itaque laudantium.', 5, 10, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(32, 'Rem voluptas atque vitae libero iusto ipsam assumenda excepturi. Non ut et consequuntur eos quis ut. Impedit aut quis accusamus natus velit optio qui minus.', 5, 3, 11, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(33, 'Cum sunt recusandae labore eaque animi qui. Libero eligendi aperiam nihil omnis rerum. Consectetur enim eaque qui. Quis illo occaecati praesentium voluptatem provident ipsam ratione.', 3, 10, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(34, 'Quaerat omnis a voluptatem aut nihil reprehenderit excepturi. Vero provident eligendi at omnis consequuntur. Ut quo sit aut voluptas atque adipisci quasi.', 4, 3, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(35, 'Eos laboriosam quae et reiciendis. Quo veniam quo voluptas eos. Maxime magnam excepturi animi sed sit est illum ut. Eos sed qui pariatur optio possimus nihil.', 2, 3, 17, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(36, 'Officiis repellat consequatur pariatur est. Reiciendis officia ab delectus nihil nam. Nihil molestiae distinctio possimus odio et exercitationem sed.', 2, 7, 15, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(37, 'Quos repudiandae perspiciatis id repellat ratione eligendi et. Aut voluptas cumque occaecati. Consequatur est nesciunt voluptates magni dolores in similique. Facere et magni porro ex.', 0, 10, 4, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(38, 'Veniam velit molestiae eos quasi. Nesciunt provident impedit exercitationem occaecati recusandae quos illo. Eligendi incidunt eaque quis esse beatae. In possimus perferendis velit perspiciatis vitae corrupti.', 5, 5, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(39, 'Aut modi ipsum numquam ea et. Iste voluptatibus voluptatibus rerum. Qui asperiores iusto accusantium quos aut qui rerum et.', 1, 2, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(40, 'Sed exercitationem est id temporibus eos nihil. Est quidem distinctio voluptas qui. Labore voluptatibus est nemo enim. Eveniet vitae quae qui qui maxime aliquam delectus autem.', 5, 2, 1, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(41, 'Quaerat eveniet optio necessitatibus voluptas atque sint facere. Et dolorem odio doloribus. Iusto sunt dolor dolores.', 1, 5, 15, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(42, 'Eveniet ab sed non qui. Eum hic enim excepturi perferendis. Totam animi voluptatem eaque et et.', 1, 5, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(43, 'Quas officia fugit maiores consectetur sunt. Est odio ut ratione at. Architecto molestiae asperiores accusantium et. Sed enim eaque suscipit alias.', 3, 9, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(44, 'Quia aperiam deleniti est unde dolorem consectetur nobis. Ut pariatur voluptatem earum similique voluptatum aliquam. Deleniti at consequatur id esse illum. Nam perspiciatis laudantium deleniti sit sapiente omnis quis. Repellendus et porro quibusdam sit.', 5, 4, 5, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(45, 'Ut unde eos iure eum. Doloremque dolore rerum rem et. Perferendis optio accusamus quis est ut quia.', 0, 7, 2, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(46, 'Ut nam dicta id nihil repellat harum. Dolor aperiam temporibus quos vitae et neque dolorem nisi. Fuga molestiae ex et unde repellat.', 5, 3, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(47, 'Qui minima repudiandae cupiditate corrupti voluptate eum et libero. Numquam aliquid nisi voluptates et dolor quisquam veritatis. Dolorum fuga voluptas et laudantium rerum officia.', 1, 10, 7, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(48, 'Rerum saepe placeat deleniti qui quidem. Nobis voluptatum quia minima. Ut amet qui qui reprehenderit. Sed omnis eaque sit.', 2, 8, 19, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(49, 'Molestiae nisi sit incidunt voluptatem omnis et doloremque. Laborum sit sit voluptas cumque molestias. Labore iure nulla nesciunt molestias provident. At et debitis dolorum rerum.', 1, 1, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(50, 'Aspernatur suscipit nulla neque dolorem. Similique facilis dolor omnis est consequuntur saepe deleniti similique. Veritatis dicta quo consequatur qui et molestiae. Rerum non et velit.', 4, 9, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(51, 'Nam saepe qui ut non debitis suscipit. Consectetur at consequatur velit est voluptatem itaque voluptas. Quisquam sint quo fuga. Illum officiis ducimus cumque.', 5, 1, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(52, 'Accusantium omnis repellat veniam. Ut omnis culpa sed odit eius commodi ut. Sit cum sed aperiam saepe beatae molestiae.', 4, 4, 17, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(53, 'Inventore est et aperiam atque. Et voluptas vel provident et ut. Ea molestiae accusamus sequi harum maiores in. Ratione hic inventore a.', 2, 8, 15, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(54, 'Et accusantium quidem cumque dolores suscipit ipsum error. Earum repellendus praesentium quibusdam excepturi. Nihil aut et ea vitae. Eligendi quae temporibus laborum perspiciatis non.', 2, 8, 3, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(55, 'Maiores fuga dicta delectus illum. Non eligendi quis nihil voluptas. Nihil molestias modi quia sunt.', 2, 10, 19, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(56, 'Quo qui minima id aliquam sit dolor suscipit illum. Molestiae est consequatur facere voluptas. Aut doloremque excepturi aliquid aut.', 0, 1, 9, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(57, 'Qui voluptates molestiae voluptas a. Et labore quod rerum sed odit saepe. Minus soluta quia aperiam facilis a labore.', 4, 3, 5, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(58, 'Tenetur perferendis corporis ut est facilis. Nisi mollitia cumque corrupti ratione unde voluptatum inventore. Ratione suscipit consequatur commodi ducimus et sint. Ducimus nam hic omnis rerum.', 5, 6, 17, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(59, 'Quia ut quia a quaerat. Delectus dolorem assumenda tempore sit quae doloribus cumque. Et exercitationem ratione nihil laborum placeat suscipit minus error.', 3, 10, 3, '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(60, 'Est veritatis ut nulla optio. Beatae libero ut veniam explicabo enim ipsum.', 4, 1, 12, '2019-03-22 03:10:42', '2019-03-22 03:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'subscriber', '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(2, 'admin', '2019-03-21 22:59:03', '2019-03-21 22:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(2, 1, 2, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(3, 1, 3, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(4, 1, 4, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(5, 1, 5, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(6, 1, 6, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(7, 1, 7, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(8, 1, 8, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(9, 1, 9, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(10, 1, 10, '2019-03-21 22:59:03', '2019-03-21 22:59:03'),
(11, 2, 11, '2019-03-21 22:59:04', '2019-03-21 22:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_phone_unique` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `verification`, `is_verified`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Yazmin Casper', 'pfarrell@example.net', '01221947691', '2019-03-22 03:10:41', '$2y$10$i5PN/qwP/3cdkjIAw/TwXuA62jzh5BicM2.vcBtkqtxodEfg3o/oS', 'verified', 1, 'nrC23Jh4qA', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(2, 'Mr. Arturo Kunze', 'monserrate.mueller@example.com', '01247149355', '2019-03-22 03:10:41', '$2y$10$zxUeXsO7/6ASBLH5pH0F2.nmZZHTeYf0yBif9LAmJJXKd.OUbpVyG', 'verified', 1, '6aPIIXVsKa', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(3, 'Lawson Kub', 'nicolas44@example.org', '01162922891', '2019-03-22 03:10:41', '$2y$10$1/pJ8cIVhii9jDDQZSJNnumMu1lB2uVz5SThMuD4hsgq0ueAEBYsa', 'verified', 1, 'bHxHydB4Aj', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(4, 'Prof. Georgette Cummings DDS', 'dillan.rohan@example.net', '01131896715', '2019-03-22 03:10:41', '$2y$10$EXT.vX2mnvhrs9MX431m.uc/rr3/TKvSWbnXOXPv12weM71//URgq', 'verified', 1, '8XZv1BavC9', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(5, 'Branson Gorczany', 'anika.cummerata@example.com', '01284042693', '2019-03-22 03:10:41', '$2y$10$oam7b/cLpdhF2jHQPfR/1.UMInemYdOQ0Td9E2XyDD.R/osdfhk7m', 'verified', 1, 'YDj42ye8tX', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(6, 'Prof. Deshawn Von PhD', 'breanne64@example.com', '01088006223', '2019-03-22 03:10:41', '$2y$10$WUkqfgQ.NRHZvh6unIOgr.cqdgkVz15158DhjBa8uR2mEJsIQBAm.', 'verified', 1, 'u4GoWh6twv', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(7, 'Rafael Kuvalis IV', 'murphy.herminio@example.com', '01294105116', '2019-03-22 03:10:41', '$2y$10$nOzelSFXTQJLwTA44RfpsO.Fogf8SraNWF.oVufZwoIO10z11W3Xi', 'verified', 1, '57VoifLedV', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(8, 'Mrs. Amy Huels MD', 'aaron33@example.net', '01156861489', '2019-03-22 03:10:42', '$2y$10$1MlzaC16AmTXezQ0592jS.MOGebqGvX5Du6INRQTaM60WpZpmlheC', 'verified', 1, 'xNGTdB9ITr', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(9, 'Candice Padberg', 'mack50@example.org', '01241561861', '2019-03-22 03:10:42', '$2y$10$iLpNCcewJJgjuT73rSq7Meuyafe.OYt/XAXOOzwQAnUbnMp4nIm7i', 'verified', 1, 'zPl2KosFOl', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(10, 'Prof. Watson Klein MD', 'umorar@example.com', '01188944422', '2019-03-22 03:10:42', '$2y$10$0V7sE.cEB5cRGll6vSJuMuihj2viUdxdW520wtQzWX8o4Lk.NVeb6', 'verified', 1, 'X4fhv8KsU6', '2019-03-22 03:10:42', '2019-03-22 03:10:42'),
(11, 'amroo', 'amr@amr.com', '01004044658', NULL, '$2y$10$CpN7PEFhhEHHe4tqbdMGcubeAg.OOc2NA1Rm8Z/p.SzGFZ5EBWuhK', 'verified', 1, NULL, '2019-03-22 04:14:19', '2019-03-22 04:32:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
