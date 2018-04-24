-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2018 at 05:25 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testmalay`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(3, 'Bags and Travel', NULL, '2018-04-23 10:40:58', '2018-04-23 10:40:58'),
(4, 'Bedding & Bath', NULL, '2018-04-23 10:40:58', '2018-04-23 10:40:58'),
(5, 'Cameras', NULL, '2018-04-23 10:40:58', '2018-04-23 10:40:58'),
(6, 'Computers & Laptops', NULL, '2018-04-23 10:40:58', '2018-04-23 10:40:58'),
(7, 'Digital Goods', NULL, '2018-04-23 10:40:59', '2018-04-23 10:40:59'),
(8, 'Kids Bags', 3, '2018-04-23 10:45:01', '2018-04-23 10:45:01'),
(9, 'Men Bags', 3, '2018-04-23 10:45:01', '2018-04-23 10:45:01'),
(10, 'Women Bags', 3, '2018-04-23 10:45:01', '2018-04-23 10:45:01'),
(11, 'Travel', 3, '2018-04-23 10:45:01', '2018-04-23 10:45:01'),
(12, 'Girls', 8, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(13, 'Boys', 8, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(14, 'Backpacks', 9, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(15, 'Business Bags', 9, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(16, 'Crossbody Bags', 9, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(17, 'Messenger Bags', 9, '2018-04-23 10:57:42', '2018-04-23 10:57:42'),
(18, 'Laptop Bags', 11, '2018-04-23 11:03:49', '2018-04-23 11:03:49'),
(19, 'Luggage', 11, '2018-04-23 11:03:49', '2018-04-23 11:03:49'),
(20, 'Travel Accessories', 11, '2018-04-23 11:03:49', '2018-04-23 11:03:49'),
(21, 'Travel Bags', 11, '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(22, 'Backpacks', 10, '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(23, 'Wristlets', 10, '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(24, 'Cross Body & Shoulder Bags', 10, '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(25, 'Sling Bags', 10, '2018-04-23 11:03:50', '2018-04-23 11:03:50'),
(26, 'Accessories', 12, '2018-04-23 11:05:45', '2018-04-23 11:05:45'),
(27, 'Backpacks', 13, '2018-04-23 11:05:45', '2018-04-23 11:05:45'),
(28, 'Fashion backpacks', 14, '2018-04-23 11:05:45', '2018-04-23 11:05:45'),
(29, 'Leather', 16, '2018-04-23 11:05:45', '2018-04-23 11:05:45'),
(30, 'Others', 17, '2018-04-23 11:05:45', '2018-04-23 11:05:45'),
(31, 'Othere', 26, '2018-04-23 17:00:00', '2018-04-23 17:00:00');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
