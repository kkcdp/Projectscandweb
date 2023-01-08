-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 08, 2023 at 03:32 PM
-- Server version: 8.0.27
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_products`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sku` (`sku`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`, `type_id`) VALUES
(37, 'SKU33', 'abba', '1.99', 1),
(41, 'abc01', 'Riga', '25.05', 1),
(42, 'abc02', 'vards', '3.33', 2),
(43, 'abc03', 'vards', '3.33', 2),
(61, 'abc06', 'vards', '5.55', 2),
(62, 'abc04', 'vards', '0.55', 3),
(63, 'abc05', 'pieci', '0.55', 3),
(66, 'abc07', 'sesi', '0.66', 1),
(67, 'abc08', 'astoni', '0.66', 1),
(68, 'abc09', 'devini', '0.66', 1),
(69, 'abc10', 'abc', '7.88', 1),
(70, 'abc11', 'abc', '6.99', 2),
(71, 'abc12', 'abc', '7.78', 3),
(72, 'abc13', 'aaa', '45.45', 1),
(73, 'abc14', 'abc', '66.77', 1),
(74, 'abc15', 'aaa', '4.44', 1),
(75, 'abc16', 'abc', '99.99', 1),
(76, 'abc17', 'abc', '6.98', 1),
(78, 'abc18', 'aaa', '67.67', 1),
(80, 'abc19', 'abc', '3.14', 1),
(81, 'abc20', 'abc', '3.15', 1),
(82, 'sku21', 'aaa', '1.22', 1),
(83, 'sku22', 'aaa', '7.88', 2),
(84, 'sku23', 'abc', '33.33', 2),
(86, 'sku24', 'fgg', '45.45', 2),
(88, 'abc25', 'xbx', '9.00', 2),
(89, 'abc27', 'asd', '4.54', 1),
(90, 'abc28', 'asd', '1.11', 1),
(91, 'abc29', 'dfdf', '55.55', 1),
(92, 'abc30', 'sdfsdf', '45.11', 1),
(94, 'abc31', 'wer', '66.66', 2),
(96, 'abc32', 'ddd', '45.45', 1),
(97, 'abc33', 'ddd', '4.56', 1),
(98, 'abc34', 'alakas', '2.15', 2),
(99, 'abc35', 'auto', '7.88', 2),
(100, 'abc36', 'ready', '4.44', 2),
(102, 'abc37', 'nameee', '4.14', 2),
(103, 'abc38', 'bbb', '6.66', 1),
(104, 'abc39', 'add', '4.44', 2),
(105, 'abc41', 'vvv', '6.69', 2),
(108, 'abc43', 'test', '9.87', 2),
(110, 'abc44', 'test', '1.23', 2),
(111, 'abc45', 'tu', '6.15', 2),
(112, 'abc46', 'test', '3.55', 2),
(113, 'abc47', 'kur', '9.65', 2),
(114, 'abc48', 'test', '5.15', 2),
(115, 'abc49', 'test', '5.15', 2),
(118, 'abc51', 'draugs', '8.00', 1),
(119, 'abc52', 'vards', '3.44', 1),
(120, 'abc53', 'ryna', '34.34', 2),
(121, 'abc54', 'atkal', '5.66', 2),
(123, 'abc56', 'rrr', '6.77', 2),
(126, 'abc59', 'optika', '4.44', 3),
(128, 'abc61', 'atributsdivi', '789.12', 2),
(129, 'abc62', 'atributstris', '100.10', 3),
(130, 'abc63', 'atributsviens', '1.22', 1),
(131, 'abc64', 'teest', '3.11', 1),
(132, 'abc65', 'abccccccc', '45.45', 2),
(133, 'abc66', 'var', '90.02', 1),
(134, 'abc67', 'sesdesmitseptini', '3.90', 1),
(135, 'abc68', 'sesdesmitastoni', '45.66', 2),
(136, 'abc69', 'mebele', '100.99', 3),
(137, 'abc70', 'abctessssssssssssssss', '44.44', 3),
(138, 'abc71', 'test', '33.25', 3),
(139, 'abc72', 'sestais', '44.44', 2),
(140, 'abc73', 'septinitresais', '10.88', 3),
(141, 'abc74', 'abols', '17.14', 3),
(143, 'abc75', 'bumbiers', '8.30', 3),
(144, 'abc76', 'bum', '1.11', 3),
(145, 'abc77', 'abb', '12.12', 3),
(146, 'abc78', 'abb', '13.13', 3),
(147, 'abc79', 'abb', '34.34', 3),
(148, 'abc80', 'test', '44.55', 3),
(149, 'abc81', 'kkk', '5.55', 3),
(150, 'abc82', 'nur', '7.77', 3),
(151, 'abc83', 'rrr', '5.55', 3),
(152, 'abc84', 'rrr', '6.66', 3),
(153, 'abc85', 'rrr', '5.55', 3),
(154, 'abc86', 'ttt', '4.44', 3),
(155, 'abc87', 'yyy', '5.55', 3),
(156, 'abc88', 'sss', '5.55', 3),
(157, 'abc89', 'xxx', '10.99', 3),
(158, 'abc90', 'rrr', '4.44', 3),
(159, 'abc91', 'www', '4.44', 3),
(160, 'abc92', 'ttt', '9.10', 3),
(161, 'abc93', 'uuu', '89.89', 3),
(162, 'abc94', 'tutut', '22.22', 3),
(163, 'abc95', 'ttt', '55.55', 3),
(164, 'abc96', 'fff', '33.33', 3),
(165, 'abc97', 'aaa', '1.11', 3),
(166, 'abc98', 'ttt', '4.44', 3),
(167, 'abc99', 'auto', '4.44', 3),
(168, 'abc100', 'disks', '4.44', 1),
(169, 'abc101', 'Gramata', '5.15', 2),
(172, 'abc104', 'testejam', '45.45', 3),
(180, 'abc110', 'gramata', '9.78', 2),
(181, 'qr1515', 'grmatapar', '4.32', 2),
(183, 'asko01', 'rrr', '2333.33', 1),
(184, 'abc114', 'yugo', '3.33', 1),
(185, 'abc120', 'kautkas', '11.11', 2),
(187, 'er100', 'numer', '67.67', 3),
(188, 're4', 'sdftestooooooo', '10.00', 2),
(189, 'abc121', 'mebele', '5.10', 3),
(190, 'abc122', 'riga', '4.77', 1),
(191, 'abc123', 'riga', '4.99', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_type_attributes`
--

DROP TABLE IF EXISTS `product_type_attributes`;
CREATE TABLE IF NOT EXISTS `product_type_attributes` (
  `prod_type_id` int NOT NULL,
  `attr_type_id` int NOT NULL,
  PRIMARY KEY (`prod_type_id`,`attr_type_id`),
  UNIQUE KEY `prod_type_id` (`prod_type_id`,`attr_type_id`),
  KEY `attr_type_id` (`attr_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type_attributes`
--

INSERT INTO `product_type_attributes` (`prod_type_id`, `attr_type_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_values`
--

DROP TABLE IF EXISTS `product_values`;
CREATE TABLE IF NOT EXISTS `product_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `attr_id` int NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_values`
--

INSERT INTO `product_values` (`id`, `product_id`, `attr_id`, `value`) VALUES
(31, 37, 1, 1),
(39, 123, 2, 90),
(43, 128, 2, 30),
(44, 129, 3, 10000),
(45, 129, 4, 20000),
(46, 129, 5, 30000),
(47, 130, 2, 1000),
(48, 131, 2, 1),
(49, 132, 2, 55555),
(50, 134, 1, 10),
(51, 135, 2, 22),
(52, 139, 2, 222),
(53, 167, 3, 1),
(54, 167, 3, 2),
(55, 167, 3, 1),
(56, 168, 1, 800),
(57, 169, 2, 1),
(64, 172, 3, 101),
(65, 172, 3, 201),
(66, 172, 3, 301),
(78, 180, 2, 66),
(79, 181, 2, 7),
(83, 183, 1, 800),
(84, 184, 1, 878),
(86, 187, 3, 12),
(87, 187, 3, 13),
(88, 187, 3, 14),
(89, 188, 2, 2),
(90, 189, 3, 100),
(91, 189, 3, 200),
(92, 189, 3, 30),
(93, 190, 1, 700),
(94, 191, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `prod_attributes`
--

DROP TABLE IF EXISTS `prod_attributes`;
CREATE TABLE IF NOT EXISTS `prod_attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attribute` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_attributes`
--

INSERT INTO `prod_attributes` (`id`, `attribute`) VALUES
(1, 'Size'),
(2, 'Weight'),
(3, 'Length'),
(6, 'Width'),
(7, 'Height');

-- --------------------------------------------------------

--
-- Table structure for table `prod_types`
--

DROP TABLE IF EXISTS `prod_types`;
CREATE TABLE IF NOT EXISTS `prod_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_val` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prod_types`
--

INSERT INTO `prod_types` (`id`, `type`, `type_name`, `type_val`) VALUES
(1, 'dvd', 'Size:', 'MB'),
(2, 'book', 'Weight:', 'KG'),
(3, 'furniture', 'Dimension:', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `product_type_attributes` (`prod_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_values`
--
ALTER TABLE `product_values`
  ADD CONSTRAINT `product_values_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_values_ibfk_2` FOREIGN KEY (`attr_id`) REFERENCES `product_type_attributes` (`attr_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
