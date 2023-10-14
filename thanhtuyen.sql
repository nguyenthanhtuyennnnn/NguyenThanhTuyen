-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2023 at 07:44 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thanhtuyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

DROP TABLE IF EXISTS `db_brand`;
CREATE TABLE IF NOT EXISTS `db_brand` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(9, 'Hoa Cúc', 'hoa-cuc', 'hoa-cuc.png', 0, 'Cúc', 'Cúc', '2023-10-13 09:20:21', 1, '2023-10-13 09:20:21', NULL, 1),
(8, 'Hoa Tulip', 'hoa-tulip', 'hoa-tulip.png', 0, 'Hoa Tulip', 'Hoa Tulip', '2023-10-13 09:20:02', 1, '2023-10-13 09:20:02', NULL, 1),
(7, 'Hoa Hồng', 'hoa-hong', 'hoa-hong.png', 0, 'Hoa Hồng', 'Hoa Hồng', '2023-10-13 09:16:55', 1, '2023-10-13 09:16:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

DROP TABLE IF EXISTS `db_category`;
CREATE TABLE IF NOT EXISTS `db_category` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT '0',
  `sort_order` int UNSIGNED DEFAULT NULL,
  `metakey` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(28, 'Hoa Tulip', 'hoa-tulip', 'hoa-tulip.png', 0, 0, 'tulip', 'tulip', '2023-10-13 09:20:59', 1, '2023-10-13 09:20:59', NULL, 1),
(29, 'Hoa Cúc', 'hoa-cuc', 'hoa-cuc.png', 0, 0, 'Cúc', 'Cúc', '2023-10-13 09:21:16', 1, '2023-10-13 09:21:16', NULL, 1),
(27, 'Hoa Hồng', 'hoa-hong', 'hoa-hong.png', 0, 0, 'Hoa Hồng', 'Hoa Hồng', '2023-10-13 09:14:14', 1, '2023-10-13 09:14:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

DROP TABLE IF EXISTS `db_contact`;
CREATE TABLE IF NOT EXISTS `db_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `replay_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `user id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, NULL, 'ádsadf', 'sdafsaf', 'àdsafasf', NULL, NULL, NULL, '2023-06-08 23:23:24', '2023-06-09 00:12:52', 1, 1),
(2, NULL, 'd', 'd', '1', '1', '1', NULL, '2023-06-14 06:27:14', '2023-06-14 06:27:14', NULL, 1),
(3, NULL, 'd', 'd', '1', '1', '1', NULL, '2023-06-14 06:27:14', '2023-06-14 06:27:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

DROP TABLE IF EXISTS `db_menu`;
CREATE TABLE IF NOT EXISTS `db_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int UNSIGNED DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `name`, `link`, `table_id`, `type`, `position`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', '/', NULL, 'dsf', 'mainmenu', 0, '2023-06-09 00:23:20', 1, '2023-06-28 03:45:42', 1, 1),
(2, 'Sản phẩm', '/san-pham', NULL, 'sà', 'mainmenu', 0, '2023-06-09 00:24:27', 1, '2023-06-09 00:24:27', 1, 1),
(5, 'Liên hệ', '/lien-he', NULL, 'sà', 'mainmenu', 0, '2023-06-17 01:21:46', 1, '2023-06-09 00:24:27', 1, 1),
(6, 'Danh Mục Theo Loại', '/danh-muc-san-pham', NULL, 'sà', 'mainmenu', 0, '2023-06-17 03:35:28', 1, '2023-06-09 00:24:27', 1, 1),
(7, 'Ferrari', '/danh-muc-san-pham/ferrari', NULL, 'sà', 'mainmenu', 6, '2023-06-17 03:36:47', 1, '2023-06-09 00:24:27', 1, 1),
(8, 'Rolls-Royce', '/danh-muc-san-pham/rolls-royce', NULL, 'sà', 'mainmenu', 6, '2023-06-17 03:53:06', 1, '2023-06-09 00:24:27', 1, 1),
(9, 'Lamborghini', '/danh-muc-san-pham/lamborghini', NULL, 'sà', 'mainmenu', 6, '2023-06-17 04:00:56', 1, '2023-06-09 00:24:27', 1, 1),
(3, 'Giới thiệu', '/gioi-thieu', NULL, 'Giới thiệu', 'mainmenu', 0, '2023-09-28 03:26:15', 1, '2023-09-28 03:26:15', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

DROP TABLE IF EXISTS `db_order`;
CREATE TABLE IF NOT EXISTS `db_order` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `name`, `phone`, `email`, `address`, `note`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(6, 'sfsfsa', NULL, NULL, NULL, '23', '2023-06-14 07:27:56', '2023-06-14 07:28:18', 1, 1),
(7, 'fsadf', '1234', 'hiêu', 'sàgdfgh', '3243', '2023-06-14 07:28:39', '2023-06-14 07:28:39', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

DROP TABLE IF EXISTS `db_orderdetail`;
CREATE TABLE IF NOT EXISTS `db_orderdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `price` float NOT NULL,
  `qty` int UNSIGNED NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

DROP TABLE IF EXISTS `db_post`;
CREATE TABLE IF NOT EXISTS `db_post` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `topic_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_post`
--

INSERT INTO `db_post` (`id`, `topic_id`, `title`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(11, 16, 'Hoa hồng là một trong những loài hoa được ưa chuộng nhất trong tình yêu. Với vẻ đẹp tuyệt vời của mình, hoa hồng đã trở thành biểu tượng của tình yêu, sự lãng mạn và sự đam mê.', 'Hoa hồng', 'adsadafsssssssss.webp', 'afaf', 'Hoa hồng', 'a', '2023-10-13 09:28:16', 1, '2023-10-13 09:28:16', NULL, 1),
(12, 16, 'Tôi không cần loài hoa đẹp, chỉ cần hoa tỏa ngát hương thơm. Tôi yêu người không cần xinh đẹp chỉ cần người chung thủy bên tôi.', 'a', 'Tôi không cần loài hoa đẹp, chỉ cần hoa tỏa ngát hương thơm. Tôi yêu người không cần xinh đẹp chỉ cần người chung thủy bên tôi..jpg', 'a', 'a', 'a', '2023-10-13 09:30:27', 1, '2023-10-13 09:30:27', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

DROP TABLE IF EXISTS `db_product`;
CREATE TABLE IF NOT EXISTS `db_product` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float DEFAULT NULL,
  `pricesale` float DEFAULT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int UNSIGNED NOT NULL,
  `detail` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `pricesale`, `image`, `qty`, `detail`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(56, 28, 8, 'Băng phách', 'bang-phach', 788, 466, 'bang-phach.jpg', 5, 'Hoa tulip (cách gọi này xuất phát từ tiếng Pháp: Tulipe) xuất hiện đầu tiên ở Đế chế Ottoman, Thổ Nhĩ Kỳ ngày nay. Hoa tulip là tên gọi chung cho các loài thực vật tạo thành chi hoa tulip của những cây nở hoa lâu năm thuộc họ Liliaceae.', 'a', 'a', '2023-10-14 00:33:21', 1, '2023-10-14 00:33:21', NULL, 1),
(54, 28, 8, 'Tulip japan', 'tulip-japan', 789, 566, 'tulip-japan.jpg', 6, 'Hoa tulip (cách gọi này xuất phát từ tiếng Pháp: Tulipe) xuất hiện đầu tiên ở Đế chế Ottoman, Thổ Nhĩ Kỳ ngày nay. Hoa tulip là tên gọi chung cho các loài thực vật tạo thành chi hoa tulip của những cây nở hoa lâu năm thuộc họ Liliaceae.', 'â', 'a', '2023-10-14 00:31:12', 1, '2023-10-14 00:31:12', NULL, 1),
(55, 28, 8, 'Pink venom', 'pink-venom', 899, 544, 'pink-venom.jpg', 7, 'Hoa tulip (cách gọi này xuất phát từ tiếng Pháp: Tulipe) xuất hiện đầu tiên ở Đế chế Ottoman, Thổ Nhĩ Kỳ ngày nay. Hoa tulip là tên gọi chung cho các loài thực vật tạo thành chi hoa tulip của những cây nở hoa lâu năm thuộc họ Liliaceae.', 'a', 'a', '2023-10-14 00:32:44', 1, '2023-10-14 00:32:44', NULL, 1),
(53, 27, 7, 'Black & Red', 'black-red', 0, 999, 'black-red.jpg', 8, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:30:20', 1, '2023-10-14 00:30:20', NULL, 1),
(52, 29, 9, 'Cúc Russian', 'cuc-russian', 899, 799, 'cuc-russian.jpg', 5, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:29:19', 1, '2023-10-14 00:29:19', NULL, 1),
(50, 27, 7, 'Hồng hongkong', 'hong-hongkong', 789, 567, 'hong-hongkong.jpg', 7, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:27:31', 1, '2023-10-14 00:27:31', NULL, 1),
(51, 27, 7, 'Hồng Eland', 'hong-eland', 0, 999, 'hong-eland.jpg', 8, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:28:36', 1, '2023-10-14 00:28:36', NULL, 1),
(49, 29, 9, 'Ngọn cỏ ven đường', 'ngon-co-ven-duong', 799, 367, 'ngon-co-ven-duong.jpg', 7, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:26:42', 1, '2023-10-14 00:26:42', NULL, 1),
(47, 29, 9, 'Thanh lam', 'thanh-lam', 999, 1000, 'thanh-lam.jpg', 8, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:24:48', 1, '2023-10-14 00:24:48', NULL, 1),
(48, 27, 7, 'Hồng Đà lạt', 'hong-da-lat', 599, 399, 'hong-da-lat.jpg', 7, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:25:50', 1, '2023-10-14 00:25:50', NULL, 1),
(46, 29, 9, 'Cúc obito', 'cuc-obito', 954, 328, 'cuc-obito.jpg', 7, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:24:02', 1, '2023-10-14 00:24:02', NULL, 1),
(45, 27, 7, 'Hồng Americanon', 'hong-americanon', 967, 263, 'hong-americanon.jpg', 7, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:23:24', 1, '2023-10-14 00:23:24', NULL, 1),
(58, 27, 7, 'Black pink', 'black-pink', 788, 566, 'black-pink.jpg', 7, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 's', 's', '2023-10-14 00:37:46', 1, '2023-10-14 00:37:46', NULL, 1),
(44, 27, 7, 'Hồng Fance', 'hong-fance', 765, 345, 'hong-fance.jpg', 6, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:21:43', 1, '2023-10-14 00:21:43', NULL, 1),
(41, 28, 8, 'Tulip pháp', 'tulip-phap', 989, 777, 'tulip-phap.jpg', 5, 'Hoa tulip (cách gọi này xuất phát từ tiếng Pháp: Tulipe) xuất hiện đầu tiên ở Đế chế Ottoman, Thổ Nhĩ Kỳ ngày nay. Hoa tulip là tên gọi chung cho các loài thực vật tạo thành chi hoa tulip của những cây nở hoa lâu năm thuộc họ Liliaceae.', 'a', 'a', '2023-10-14 00:18:16', 1, '2023-10-14 00:18:16', NULL, 1),
(59, 29, 9, 'Cúc mario', 'cuc-mario', 766, 233, 'cuc-mario.jpg', 5, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:39:45', 1, '2023-10-14 00:39:45', NULL, 1),
(57, 27, 7, 'Hồng đặc biệt', 'hong-dac-biet', 999, 799, 'hong-dac-biet.jpg', 5, 'Hoa hồng là một loài hoa mang tới vẻ đẹp tinh tế qua hình dáng cùng hương thơm nổi bật. Hoa còn được coi là loài hoa đẹp trong các loài hoa. Nó cũng được mệnh danh là nữ hoàng hoa của thế giới hoa. Hoa hồng không chỉ vậy mà còn là hoa biểu trưng và được ưa chuộng nhiều nơi trong đó có nước ta', 'a', 'a', '2023-10-14 00:37:03', 1, '2023-10-14 00:37:03', NULL, 1),
(40, 29, 9, 'Cúc Tây ninh', 'cuc-tay-ninh', 987, 123, 'cuc-tay-ninh.jpg', 4, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:17:16', 1, '2023-10-14 00:17:16', NULL, 1),
(60, 29, 9, 'Cúc Minor', 'cuc-minor', 655, 223, 'cuc-minor.jpg', 5, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 'a', 'a', '2023-10-14 00:40:33', 1, '2023-10-14 00:40:33', NULL, 1),
(61, 29, 9, 'Cúc Pazza', 'cuc-pazza', 766, 333, 'cuc-pazza.jpg', 6, 'Hoa cúc là một loại hoa đẹp với nhiều màu sắc khác nhau. Đối với các nước trên thế giới cũng như Việt Nam thì hoa cúc luôn là loại hoa được lựa chọn nhiều. Hiện trên thế giới có 1500 giống hoa cúc nhưng tại Việt Nam không phải giống nào cũng phát triển mạnh và có hoa đẹp cho người chơi hoa.', 's', 's', '2023-10-14 00:41:00', 1, '2023-10-14 00:41:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

DROP TABLE IF EXISTS `db_slider`;
CREATE TABLE IF NOT EXISTS `db_slider` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `image`, `sort_order`, `position`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(12, 'afaf', 'afasd', 'afaf.png', 1, 'asfd', '2023-10-13 09:05:27', 1, '2023-10-13 09:05:27', NULL, 1),
(13, 'Silde3', 'Silde3', 'Silde3.png', 0, '3', '2023-10-13 09:09:16', 1, '2023-10-13 09:09:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

DROP TABLE IF EXISTS `db_topic`;
CREATE TABLE IF NOT EXISTS `db_topic` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int NOT NULL,
  `metakey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_topic`
--

INSERT INTO `db_topic` (`id`, `name`, `parent_id`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(16, 'Vườn thượng uyển', 0, 'a', 'a', '2023-10-13 09:23:25', 1, '2023-10-13 09:23:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

DROP TABLE IF EXISTS `db_user`;
CREATE TABLE IF NOT EXISTS `db_user` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(4, 'phanhieu', 'Hieuecquot39@gmail.com', '0349544297', 'phan đình hiếu', '123456', 'thủ đức', '.jpg', 'người dùng', '2023-09-28 05:46:29', 1, '2023-09-28 05:46:29', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
