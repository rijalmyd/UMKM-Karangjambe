-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 02:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `umkmpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `slug` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`, `created_at`, `updated_at`) VALUES
(6, 'Makanan', '202310161013food-2-svgrepo-com.svg', 'makanan', '2023-10-16 03:13:11', '2023-10-16 03:13:11'),
(7, 'Minuman', '202310161014car-svgrepo-com.svg', 'minuman', '2023-10-16 03:14:02', '2023-10-16 03:14:02'),
(8, 'Fashion', '202310161014cloth-clothes-clothing-neck-shirt-svgrepo-com.svg', 'fashion', '2023-10-16 03:14:48', '2023-10-16 03:14:48'),
(9, 'Jasa', '202310161015hammer-work-construction-svgrepo-com.svg', 'jasa', '2023-10-16 03:15:16', '2023-10-16 03:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Banjarnegara', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(2, 'Banyumas', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(3, 'Batang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(4, 'Blora', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(5, 'Boyolali', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(6, 'Brebes', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(7, 'Cilacap', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(8, 'Demak', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(9, 'Grobogan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(10, 'Jepara', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(11, 'Karanganyar', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(12, 'Kebumen', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(13, 'Kendal', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(14, 'Klaten', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(15, 'Kudus', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(16, 'Magelang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(17, 'Pati', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(18, 'Pekalongan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(19, 'Pemalang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(20, 'Purbalingga', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(21, 'Purworejo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(22, 'Rembang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(23, 'Semarang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(24, 'Sragen', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(25, 'Sukoharjo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(26, 'Tegal', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(27, 'Temanggung', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(28, 'Wonogiri', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(29, 'Wonosobo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(30, 'Magelang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(31, 'Pekalongan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(32, 'Salatiga', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(33, 'Semarang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(34, 'Surakarta', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(35, 'Tegal', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(36, 'Bangkalan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(37, 'Banyuwangi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(38, 'Blitar', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(39, 'Bojonegoro', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(40, 'Bondowoso', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(41, 'Gresik', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(42, 'Jember', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(43, 'Jombang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(44, 'Kediri', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(45, 'Lamongan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(46, 'Lumajang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(47, 'Madiun', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(48, 'Magetan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(49, 'Malang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(50, 'Mojokerto', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(51, 'Nganjuk', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(52, 'Ngawi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(53, 'Pacitan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(54, 'Pamekasan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(55, 'Pasuruan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(56, 'Ponorogo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(57, 'Probolinggo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(58, 'Sampang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(59, 'Sidoarjo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(60, 'Situbondo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(61, 'Sumenep', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(62, 'Trenggalek', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(63, 'Tuban', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(64, 'Tulungagung', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(65, 'Batu', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(66, 'Blitar', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(67, 'Kediri', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(68, 'Madiun', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(69, 'Malang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(70, 'Mojokerto', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(71, 'Pasuruan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(72, 'Probolinggo', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(73, 'Surabaya', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(74, 'Bandung', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(75, 'Bandung Barat', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(76, 'Bekasi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(77, 'Bogor', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(78, 'Ciamis', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(79, 'Cianjur', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(80, 'Cirebon', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(81, 'Garut', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(82, 'Indramayu', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(83, 'Karawang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(84, 'Kuningan', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(85, 'Majalengka', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(86, 'Pangandaran', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(87, 'Purwakarta', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(88, 'Subang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(89, 'Sukabumi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(90, 'Sumedang', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(91, 'Tasikmalaya', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(92, 'Bandung', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(93, 'Banjar', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(94, 'Bekasi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(95, 'Bogor', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(96, 'Cimahi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(97, 'Cirebon', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(98, 'Depok', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(99, 'Sukabumi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(100, 'Tasikmalaya', '2023-10-15 23:09:59', '2023-10-15 23:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `code` varchar(20) NOT NULL,
  `discount` int(11) NOT NULL,
  `started_at` datetime NOT NULL,
  `finished_at` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_useds`
--

CREATE TABLE `coupon_useds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_used` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_25_075801_create_roles_table', 1),
(3, '2023_05_25_076145_create_provinces_table', 1),
(4, '2023_05_25_076245_create_cities_table', 1),
(5, '2023_05_25_076300_create_users_table', 1),
(6, '2023_05_25_076900_create_stores_table', 1),
(7, '2023_05_25_080103_create_categories_table', 1),
(8, '2023_05_25_080104_create_tags_table', 1),
(9, '2023_05_25_080124_create_products_table', 1),
(10, '2023_05_25_080348_create_coupons_table', 1),
(11, '2023_05_25_080444_create_coupon_useds_table', 1),
(12, '2023_05_25_080518_create_wishlists_table', 1),
(13, '2023_05_25_080536_create_carts_table', 1),
(14, '2023_05_25_080545_create_statuses_table', 1),
(15, '2023_05_25_080546_create_transactions_table', 1),
(16, '2023_05_25_080547_create_orders_table', 1),
(17, '2023_05_25_080547_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image`, `qty`, `price`, `discount`, `condition`, `category_id`, `tag_id`, `seller_id`, `created_at`, `updated_at`) VALUES
(13, 'Olahan Ikan Celili', 'olahan-ikan-celili', 'Ikan Celili merupakan UMKM yang menonjol di Desa Karangjambe, pasalnya banyak dari warganya yang mendirikan usaha ikan celili, untuk ikan celili sendiri merupakan ikan kecil yang ditangkap/diperoleh di bendungan waduk Mrica, untuk ikan celili sendiri tidak selalu tersedia atau boleh dibilang ikan musiman karena jika hujan maka air akan keruh dan celili akan sulit untuk didapat dan imbasnya produksi tidak akan berjalan, dan jika kemarau maka celili akan mudah didapat. Dan jika ada pertanyaan : \"Mengapa tidak membudidayakan ikan celili saja?\", jawabannya adalah tidak bisa karena ikan celili sangat bergantung pada alam dan tidak bisa dibudidayakan.', '202401220420jpg', 50, 50000, 20, 'Baru', 6, 5, 5, '2024-01-21 21:14:05', '2024-01-21 21:20:54'),
(14, 'Dawet Ayu Banjarnegara', 'dawet-ayu-banjarnegara', 'Dawet ayu adalah minuman khas dari Banjarnegara, Jawa Tengah. Minuman ini mudah ditemukan di pasar-pasar tradisional dan dipinggir-pinggir jalan. Es dawet ayu asli banjarnegara rasanya lezat dan segar,sehingga sangat cocok diminum ketika cuaca panas. Dawet ayu dapat diminum dalam keadaan biasa maupun dingin(dikasih es batu). Rasanya yang segar dan nikmat itulah yang merupakan keistimewaan dan keunikan tersendiri sebagai minuman tradisonal khas Banjarnegara.', '202401231312dawet.jpg', 35, 20000, 6, 'Baru', 7, 6, 5, '2024-01-23 06:12:33', '2024-01-23 06:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Jawa Tengah', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(2, 'Jawa Barat', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(3, 'Jawa Timur', '2023-10-15 23:09:59', '2023-10-15 23:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-10-15 23:09:58', '2023-10-15 23:09:58'),
(2, 'User', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(3, 'Seller', '2023-10-15 23:09:59', '2023-10-15 23:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Menunggu Verifikasi', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(2, 'Diproses', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(3, 'Diantar', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(4, 'Selesai', '2023-10-15 23:09:59', '2023-10-15 23:09:59'),
(5, 'Dibatalkan', '2023-10-15 23:09:59', '2023-10-15 23:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Makanan', 'makanan.jpg', 'makanan', '2023-10-16 03:17:39', '2023-10-16 03:17:39'),
(6, 'Minuman', 'susu.jpeg', 'minuman', '2023-10-16 03:18:27', '2023-10-16 03:18:27'),
(7, 'Jasa', '20231016101979.jpg', 'jasa', '2023-10-16 03:19:30', '2023-10-16 03:19:30'),
(8, 'Lainnya', '202310161021apple-laptop-lineup-20220825-3-medium.jpg', 'lainnya', '2023-10-16 03:21:13', '2023-10-16 03:21:13'),
(9, 'Makanan Siap Saji', '202310161026624729f498ad4.jpg', 'makanan-siap-saji', '2023-10-16 03:26:43', '2023-10-16 03:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subtotal` int(11) NOT NULL,
  `coupon_used_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `pay_image` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `role_id`, `gender`, `photo`, `province_id`, `city_id`, `address`, `postcode`, `phone`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Admin Karangjambe', 'admin', 'admin@karangjambe.com', '$2y$10$lB62mSB/Dzc93Humtp1v3.JIbTRN9MWhpjcQf7RFLKgHI114zP6ZS', 1, 'Laki-Laki', '202401220335ic_profile.png', 1, 1, 'Karangjambe, Wanadadi, Banjarnegara', '53461', '0812345678910', 1, '2024-01-21 20:35:15', '2024-01-21 20:35:15'),
(5, 'Mina Rasa', 'minarasa', 'minarasa@gmail.com', '$2y$10$lphTAJ1Cb.7pMcNmUhrujep3miSrHsHrlrsg0yw7oTHCqbR3ZJF8C', 3, 'Laki-Laki', 'default.png', 1, 1, 'Karangjambe, Wanadadi, Banjarnegara', '53461', '082313562485', 1, '2024-01-21 20:47:19', '2024-01-21 20:47:19'),
(6, 'Suprah Farm', 'suprahfarm', 'suprahfarm@gmail.com', '$2y$10$1JWtNN1FOjXsmhHC6utHt.DlYLiAYw8Vn8Pf/JnfSqVUv5mMD7iVK', 3, 'Laki-Laki', '202401220353ic_profile.png', 1, 1, 'Karangjambe, Wanadadi, Banjarnegara', '53461', '081326950947', 1, '2024-01-21 20:53:29', '2024-01-21 20:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_index` (`product_id`),
  ADD KEY `carts_user_id_index` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_useds_coupon_id_index` (`coupon_id`),
  ADD KEY `coupon_useds_user_id_index` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_transaction_id_index` (`transaction_id`),
  ADD KEY `orders_user_id_index` (`user_id`),
  ADD KEY `orders_product_id_index` (`product_id`),
  ADD KEY `orders_seller_id_index` (`seller_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_index` (`category_id`),
  ADD KEY `products_tag_id_index` (`tag_id`),
  ADD KEY `products_seller_id_index` (`seller_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_index` (`user_id`),
  ADD KEY `reviews_product_id_index` (`product_id`),
  ADD KEY `reviews_seller_id_index` (`seller_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_index` (`user_id`),
  ADD KEY `transactions_coupon_used_id_index` (`coupon_used_id`),
  ADD KEY `transactions_status_id_index` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`),
  ADD KEY `users_province_id_index` (`province_id`),
  ADD KEY `users_city_id_index` (`city_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_index` (`product_id`),
  ADD KEY `wishlists_user_id_index` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20231016105450;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupon_useds`
--
ALTER TABLE `coupon_useds`
  ADD CONSTRAINT `coupon_useds_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coupon_useds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `products_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_coupon_used_id_foreign` FOREIGN KEY (`coupon_used_id`) REFERENCES `coupon_useds` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
