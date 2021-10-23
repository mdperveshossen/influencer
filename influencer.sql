-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 03:47 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `influencer`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `bg`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', '2021-06-22 17:00:38', '2021-06-22 17:00:38'),
(2, '2.jpg', '2021-06-22 17:00:43', '2021-06-22 17:00:43'),
(3, '3.jpg', '2021-06-22 17:00:47', '2021-06-22 17:00:48'),
(4, '4.jpg', '2021-06-22 17:00:52', '2021-06-22 17:00:52');

-- --------------------------------------------------------

--
-- Table structure for table `banner_texts`
--

CREATE TABLE `banner_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_texts`
--

INSERT INTO `banner_texts` (`id`, `text_one`, `text_two`, `created_at`, `updated_at`) VALUES
(1, 'WE BUILD MEANINGFUL RELATIONSHIPS BETWEEN', 'BRANDS AND CREATORS', '2021-06-22 20:21:29', '2021-06-22 20:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `benifits`
--

CREATE TABLE `benifits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benifits`
--

INSERT INTO `benifits` (`id`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, '1.png', 'Influencer gain access to the most exclusive entertainment, relaxation, and dining experiences that the City has to offer.', '2021-06-04 19:39:56', '2021-06-04 19:39:56'),
(2, '2.png', 'You will be given VIP access to become one of the top tier members at the most unique events hosted by our partnered venues.', '2021-06-04 19:45:39', '2021-06-04 19:45:39'),
(3, '3.png', 'As one of our elite members, you have the key to a world of benefits and pleasures that are unavailable to the general public.', '2021-06-04 19:45:59', '2021-06-04 19:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `created_at`, `updated_at`) VALUES
(1, '1.jpg', '2021-06-03 17:51:20', '2021-06-23 18:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_03_234810_create_logos_table', 2),
(6, '2021_06_04_012842_create_partners_table', 4),
(7, '2021_06_04_012859_create_partner_headings_table', 4),
(8, '2021_06_05_003831_create_benifits_table', 5),
(9, '2021_06_05_003847_create_benifit_headings_table', 5),
(10, '2021_06_05_014645_create_socials_table', 6),
(11, '2021_06_05_021020_create_offers_table', 7),
(15, '2021_06_04_002516_create_banners_table', 1),
(21, '2021_06_23_021848_create_banner_texts_table', 12),
(22, '2014_10_12_000000_create_users_table', 13),
(23, '2021_06_06_001116_create_shops_details_table', 13),
(24, '2021_06_17_135647_create_orders_table', 14),
(25, '2021_10_21_235452_create_register_infos_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `heading`, `detail`, `bg`, `created_at`, `updated_at`) VALUES
(2, 'Experiences', 'An easy way to experiences', '2.jpg', '2021-06-04 20:32:19', '2021-06-04 20:38:20'),
(3, 'Dinner Out', 'An easy way to Dinner Out', '3.jpg', '2021-06-08 06:20:19', '2021-06-08 06:20:19'),
(4, 'Delivery', 'An easy way to Delivery', '4.jpg', '2021-06-08 06:21:15', '2021-06-08 06:21:15'),
(5, 'sdfsf', 'sdfsf', 'default.jpg', '2021-06-29 17:40:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `offer_activity` int(11) NOT NULL DEFAULT 1,
  `offer_complete` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `partner_logo`, `created_at`, `updated_at`) VALUES
(5, '5.png', '2021-06-08 05:31:34', '2021-06-08 05:31:34'),
(6, '6.png', '2021-06-08 05:31:46', '2021-06-08 05:31:46'),
(7, '7.png', '2021-06-08 05:33:54', '2021-06-08 05:33:54'),
(8, '8.png', '2021-06-08 05:34:04', '2021-06-08 05:34:04'),
(9, '9.png', '2021-06-08 05:34:20', '2021-06-08 05:34:20'),
(10, '10.png', '2021-06-08 05:34:32', '2021-06-08 05:34:33'),
(12, '12.png', '2021-06-08 05:35:35', '2021-06-08 05:35:35'),
(13, '13.png', '2021-06-08 05:38:08', '2021-06-08 05:38:08'),
(14, '14.png', '2021-06-08 05:38:20', '2021-06-08 05:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register_infos`
--

CREATE TABLE `register_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `secound_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secound_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register_infos`
--

INSERT INTO `register_infos` (`id`, `first_title`, `first_description`, `secound_title`, `secound_description`, `third_title`, `third_description`, `created_at`, `updated_at`) VALUES
(1, 'WHAT IS INFLUENCER', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt distinctio iste natus sapiente. Reprehenderit ex recusandae libero doloribus, iure nulla?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit libero praesentium esse autem, illum excepturi quia eaque commodi molestias inventore? Laborum repellendus eaque repellat quis dicta expedita eius alias, pariatur accusamus maxime animi recusandae. Dolores possimus rem similique nihil reprehenderit nobis hic, ex veritatis ullam molestias repellat sed velit in!</p>', 'WHAT IS INFLUENCER', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt distinctio iste natus sapiente. Reprehenderit ex recusandae libero doloribus, iure nulla?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Incidunt distinctio iste natus sapiente. Reprehenderit ex recusandae libero doloribus, iure nulla?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit libero praesentium esse autem, illum excepturi quia eaque commodi molestias inventore? Laborum repellendus eaque repellat quis dicta expedita eius alias, pariatur accusamus maxime animi recusandae. Dolores possimus rem similique nihil reprehenderit nobis hic, ex veritatis ullam molestias repellat sed velit in!</p>', 'sdfgsfdg', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Impedit quis voluptates animi. Temporibus nihil minus maxime at atque repellendus error?</p><ul><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, obcaecati?</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, obcaecati?</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, obcaecati?</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, obcaecati?</li></ul>', '2021-10-06 19:29:37', '2021-10-21 20:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `shops_details`
--

CREATE TABLE `shops_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_sidule` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `soldout_or_not` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dinner_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops_details`
--

INSERT INTO `shops_details` (`id`, `type`, `name`, `time_sidule`, `details`, `rules`, `soldout_or_not`, `dinner_start`, `thumbnail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(36, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '36.jpg', '2021-10-23 00:46:18', '2021-10-23 00:46:18', NULL),
(37, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '37.jpg', '2021-10-23 00:44:10', '2021-10-23 00:44:10', NULL),
(38, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '38.jpg', '2021-10-23 00:51:28', '2021-10-23 00:51:28', NULL),
(39, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '39.jpg', '2021-10-23 00:51:54', '2021-10-23 00:51:54', NULL),
(40, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '40.jpg', '2021-10-23 00:52:34', '2021-10-23 00:52:34', NULL),
(41, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '41.jpg', '2021-10-23 00:53:21', '2021-10-23 00:53:21', NULL),
(42, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '42.jpg', '2021-10-23 00:54:42', '2021-10-23 00:54:42', NULL),
(43, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '43.jpg', '2021-10-23 00:55:05', '2021-10-23 00:55:05', NULL),
(44, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '44.jpg', '2021-10-23 00:55:33', '2021-10-23 00:55:33', NULL),
(45, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '45.jpg', '2021-10-23 00:56:00', '2021-10-23 00:56:01', NULL),
(46, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '46.jpg', '2021-10-23 00:56:25', '2021-10-23 00:56:25', NULL),
(47, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '47.jpg', '2021-10-23 00:56:55', '2021-10-23 00:56:55', NULL),
(48, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Five Star', '48.jpg', '2021-10-23 01:22:37', '2021-10-23 01:22:37', NULL),
(49, 3, 'Soul Street', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Four Star', '49.jpg', '2021-10-23 01:23:35', '2021-10-23 01:23:36', NULL),
(50, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Three Star', '50.jpg', '2021-10-23 01:24:06', '2021-10-23 01:24:06', NULL),
(51, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Two Star', '51.jpg', '2021-10-23 01:24:51', '2021-10-23 01:24:51', NULL),
(52, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Five Star', '52.jpg', '2021-10-23 01:25:14', '2021-10-23 01:25:14', NULL),
(53, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Five Star', '53.jpg', '2021-10-23 01:25:45', '2021-10-23 01:26:36', '2021-10-23 01:26:36'),
(54, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Six Star', '54.jpg', '2021-10-23 01:27:03', '2021-10-23 01:27:03', NULL),
(55, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '55.jpg', '2021-10-23 01:33:19', '2021-10-23 01:33:19', NULL),
(56, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '56.jpg', '2021-10-23 01:35:06', '2021-10-23 01:35:06', NULL),
(57, 1, 'Hummus Brothers', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '57.jpg', '2021-10-23 01:35:27', '2021-10-23 01:35:27', NULL),
(58, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '58.jpg', '2021-10-23 01:36:27', '2021-10-23 01:36:27', NULL),
(59, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '59.jpg', '2021-10-23 01:36:55', '2021-10-23 01:36:55', NULL),
(60, 2, 'Outfit Exercise Gym', '4pm-7pm', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', 'Sold Out for Today', '--Select--', '60.jpg', '2021-10-23 01:37:23', '2021-10-23 01:37:23', NULL),
(61, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Four Star', '61.jpg', '2021-10-23 01:38:33', '2021-10-23 01:38:33', NULL),
(62, 3, 'Soul Street', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Five Star', '62.jpg', '2021-10-23 01:38:59', '2021-10-23 01:38:59', NULL);
INSERT INTO `shops_details` (`id`, `type`, `name`, `time_sidule`, `details`, `rules`, `soldout_or_not`, `dinner_start`, `thumbnail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(63, 3, 'Summer Place', NULL, '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium amet minima necessitatibus illum minus deleniti saepe, officiis enim recusandae voluptatum cupiditate explicabo praesentium nisi ex asperiores iusto alias? Modi magnam illo aut tempore ipsa, dolores fugit cum commodi. Aliquam doloremque dicta libero, ullam sunt tempore aut deleniti dolorem qui exercitationem!</p>', '<ul><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li><li>Eat fast Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, reiciendis?</li><li>Good behave sit amet consectetur adipisicing elit.</li><li>Lorem ipsum dolor sit amet consectetur adipisicing elit.</li></ul>', NULL, 'Six Star', '63.jpg', '2021-10-23 01:39:29', '2021-10-23 01:39:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `social_link`, `social_icon`, `created_at`, `updated_at`) VALUES
(2, '#', 'fab fa-instagram', '2021-06-04 20:06:56', '2021-06-22 17:10:28'),
(3, 'hh', 'fab fa-facebook-f', '2021-06-08 06:52:51', NULL),
(4, '#', 'fab fa-twitter', '2021-10-23 01:42:51', NULL),
(5, '#', 'fab fa-tiktok', '2021-10-23 01:43:14', NULL),
(6, '#', 'fab fa-youtube', '2021-10-23 01:43:30', NULL),
(7, '#', 'far fa-envelope', '2021-10-23 01:43:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `rules` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `birth`, `gender`, `state`, `email`, `whatsapp_number`, `instagram`, `nationality`, `email_verified_at`, `password`, `profile_photo`, `rules`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user2', '2021-06-06', 'Male', 'Abu Dhabi', 'mahadi@gmail.com', '456456132123', 'asdffd', 'BD', '2021-06-01 17:44:24', '$2y$10$jzvfDEiD1EIR9B2DfL0C5eX33pIwhxZzcHGb2E8BvKuSnZjpvTURq', '1.png', '2', NULL, '2021-06-27 17:44:11', '2021-06-27 17:44:12', NULL),
(3, 'admin', NULL, NULL, NULL, 'admin@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$FjqWeg.OBvvCa0Y47UAOSOqyWtWAZhIkBjN0m1YcownlxanQZ0uoa', 'default.jpg', '1', NULL, '2021-06-27 17:48:00', '2021-06-27 17:48:00', NULL),
(4, 'user', NULL, NULL, NULL, 'user@gmail.com', NULL, NULL, NULL, '2021-06-27 17:52:59', '$2y$10$u.ipzs68Gwwrxwg4vR7bqeDLzFh/NJerIXPtGNoUCGBEu38k57YH2', 'default.jpg', '2', NULL, '2021-06-27 17:52:33', '2021-06-27 17:57:36', NULL),
(5, 'parves', '2021-06-04', 'Male', 'Abu Dhabi', 'parves@gmail.com', '456456132123', 'asdffd', 'AT', '2021-06-29 17:16:33', '$2y$10$pnpm6yxlV7lkbQD0iMxUO.CNhv6S7TTjD3FZdsN2g6gpRrGaAYIZe', '5.jpg', '2', NULL, '2021-06-29 17:01:41', '2021-06-29 17:01:41', NULL),
(6, 'sohan', '2021-06-01', 'Male', 'Dubai', 'sohan@gmail.com', '12345678910', 'sohanthink', 'BD', '2021-06-29 18:08:46', '$2y$10$G8XJtDsruHcgHLu56D20devQo66Yq.Vxc7zeuV.1YnQE/PMtWpVsy', '6.png', '2', NULL, '2021-06-29 18:07:28', '2021-06-29 18:07:28', NULL),
(7, 'sohan2', '2021-10-22', 'Male', 'Dubai', 'sohan2@gmail.com', '123456789', 'sohan2', 'BS', '2021-10-21 07:33:15', '$2y$10$E8QB2kTk2aHKXxaMJxM9wems0o00U0sVxDsOQaPvSG4Zxo4q5YMle', '7.jpg', '2', NULL, '2021-10-21 06:52:40', '2021-10-21 07:33:15', NULL),
(8, 'sohan3', '2021-10-06', 'Male', 'Abu Dhabia', 'sohan3@gmail.com', '123456789', 'sohan3', 'BY', '2021-10-22 06:08:24', '$2y$10$88WWT/jzQTarbOoQyOvQaOrST3IA3GX9JroI6gWdiwNTi7LiFbomK', 'default.jpg', '2', NULL, '2021-10-21 13:45:36', '2021-10-22 06:08:24', NULL),
(9, 'mehedi', '2021-10-14', 'Male', 'Abu Dhabi', 'mehedi@gmail.com', '123456789', 'mehedi', 'BS', NULL, '$2y$10$lapRskJy9RjGdOSegDonH.3IMB.wGQnu.Ju3l623Ygreo9Un2ipUq', 'default.jpg', '2', NULL, '2021-10-22 08:19:03', NULL, NULL),
(10, 'mehedi2', '2021-10-09', 'Male', 'Abu Dhabi', 'mehedi2@gmail.com', '123456789', 'mehedi2', 'BH', NULL, '$2y$10$fC6F4M.ILehhE1RQkt02ZuPee/CWU3ILTe/AONTPLKRsmowJY3Wam', 'default.jpg', '2', NULL, '2021-10-22 09:15:27', NULL, NULL),
(11, 'mehedi3', '2021-10-15', 'Male', 'Abu Dhabi', 'mehedi3@gmail.com', '123456789', 'mehedi3', 'BB', NULL, '$2y$10$xu9P5Bm/VFhJcT/2lnjbb.i3oGxwPM9ADkklaIdDD7.OBRqFJRJ6C', 'default.jpg', '2', NULL, '2021-10-22 09:17:25', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_texts`
--
ALTER TABLE `banner_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benifits`
--
ALTER TABLE `benifits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `register_infos`
--
ALTER TABLE `register_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops_details`
--
ALTER TABLE `shops_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner_texts`
--
ALTER TABLE `banner_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `benifits`
--
ALTER TABLE `benifits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register_infos`
--
ALTER TABLE `register_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shops_details`
--
ALTER TABLE `shops_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
