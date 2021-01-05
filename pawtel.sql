-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2020 at 05:19 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawtel`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `locatenbook` longtext NOT NULL,
  `price` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Id`, `name`, `address`, `locatenbook`, `price`, `location`) VALUES
(1, 'Le Lodge', 'No45, Jalan Air Putih 2, Taman Sri Air Putih, Kuantan, MY 25300', 'https://www.bringfido.com/lodging/142715?map=on', '$14', 'Kuantan'),
(2, 'Ohana House 4', 'No 7011, Jalan Syed Abdul Aziz, Mahkota Hotel Melaka, Malacca, MY 75000', 'https://www.bringfido.com/lodging/288897?map=on', '', 'Malacca'),
(3, 'Muntri Mews', 'No77, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142730?map=on', '$82', 'Penang'),
(4, 'Tubotel Langkawi', 'Jetty Pelancongan Chenang, Kuala Cenang, Langkawi, MY 70000', 'https://www.bringfido.com/lodging/142719?map=on', '', 'Langkawi'),
(5, 'Noordin Street House', '71 & 73 Lebuh Noordin, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142734?map=on', '$59', 'Penang'),
(6, 'Muntri Mews', 'No77, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142730?map=on', '$85', 'Penang'),
(7, 'Muntri Grove', '127, 129, 131A - F, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142729?map=on', '$87', 'Penang'),
(8, 'Setiu Airbnb Rentals', 'Setiu, MY', 'https://www.bringfido.com/lodging/508438?map=on', '', 'Setiu'),
(9, 'Seri Kembangan Selangor Airbnb Rentals', 'Seri Kembangan Selangor, MY', 'https://www.bringfido.com/lodging/508437?map=on', '', 'Seri Kembangan'),
(10, 'Noordin Mews', '53, Noordin St, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142733?map=on', '$105', 'Penang'),
(11, 'Muntri Grove', '127, 129, 131A - F, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142729?map=on', '$78', 'Penang'),
(12, 'Century Bay Private Residences', '5, Lintang Pantai Jerjak, Sungai Nibong, Georgetown, Penang, MY 11700', 'https://www.bringfido.com/lodging/142727?map=on', '$66', 'Penang '),
(13, 'Cactus Inn', 'Jalan Pantai Tengah, (Opposite Holiday Villa), Langkawi, MY 7000', 'https://www.bringfido.com/lodging/142716?map=on', '$29', 'Langkawi'),
(14, 'Port Dickson Airbnb Rentals', 'Port Dickson, MY', 'https://www.bringfido.com/lodging/508423?map=on', '', 'Port Dickson'),
(15, 'Muntri Grove', '127, 129, 131A - F, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142729?map=on', '$77', 'Penang'),
(16, 'Muntri Grove', '127, 129, 131A - F, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142729?map=on', '$76', 'Penang'),
(17, 'Genting Highlands Airbnb Rentals', 'Genting Highlands, MY', 'https://www.bringfido.com/lodging/508383?map=on', '', 'Genting Highlands'),
(18, 'Merang Suria Resort', 'Lot 1841 Kampung Rhu Tapai, Setiu, MY 21010', 'https://www.bringfido.com/lodging/105866?map=on', '$28', 'Setiu'),
(19, 'Brinchang Airbnb Rentals', 'Brinchang, MY', 'https://www.bringfido.com/lodging/508376?map=on', '', 'Brinchang'),
(20, 'Noordin Street House', '71 & 73 Lebuh Noordin, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142734?map=on', '$41', 'Penang'),
(21, 'Bangi Airbnb Rentals', 'Bangi, MY', 'https://www.bringfido.com/lodging/508371?map=on', '', 'Bangi'),
(22, 'Merang Suria Resort', 'Lot 1841 Kampung Rhu Tapai, Setiu, MY 21010', 'https://www.bringfido.com/lodging/105866?map=on', '$24', 'Setiu'),
(23, 'Noordin Mews', '53, Noordin St, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142733?map=on', '$101', 'Penang'),
(24, 'Cactus Inn', 'Jalan Pantai Tengah, (Opposite Holiday Villa), Langkawi, MY 7000', 'https://www.bringfido.com/lodging/142716?map=on', '$36', 'Langkawi'),
(25, 'Muntri Mews', 'No77, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142730?map=on', '$76', 'Penang'),
(26, 'Ringlet Airbnb Rentals', 'Ringlet, MY', 'https://www.bringfido.com/lodging/508426?map=on', '', 'Ringlet'),
(27, 'Noordin Street House', '71 & 73 Lebuh Noordin, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142734?map=on', '$47', 'Penang'),
(28, 'Johor Bahru Airbnb Rentals', 'Johor Bahru, MY', 'https://www.bringfido.com/lodging/508389?map=on', '', 'Johor Bahru'),
(29, 'Cactus Inn', 'Jalan Pantai Tengah, (Opposite Holiday Villa), Langkawi, MY 7000', 'https://www.bringfido.com/lodging/142716?map=on', '$30', 'Langkawi'),
(30, 'Merang Suria Resort', 'Lot 1841 Kampung Rhu Tapai, Setiu, MY 21010', 'https://www.bringfido.com/lodging/105866?map=on', '$31', 'Setiu'),
(31, 'Ohana House', '53, Jalan Hang Kasturi,, Malacca, MY 75200', 'https://www.bringfido.com/lodging/142726?map=on', '$93', 'Malacca'),
(32, 'Century Bay Private Residences', '5, Lintang Pantai Jerjak, Sungai Nibong, Georgetown, Penang, MY 11700', 'https://www.bringfido.com/lodging/142727?map=on', '$46', 'Penang'),
(33, 'Noordin Street House', '71 & 73 Lebuh Noordin, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142734?map=on', '$47', 'Penang'),
(34, 'Muntri Mews', 'No77, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142730?map=on', '$95', 'Penang'),
(35, 'Century Bay Private Residences', '5, Lintang Pantai Jerjak, Sungai Nibong, Georgetown, Penang, MY 11700', 'https://www.bringfido.com/lodging/142727?map=on', '$78', 'Penang'),
(36, 'Cactus Inn', 'Jalan Pantai Tengah, (Opposite Holiday Villa), Langkawi, MY 7000', 'https://www.bringfido.com/lodging/142716?map=on', '$38', 'Langkawi'),
(37, 'Century Bay Private Residences', '5, Lintang Pantai Jerjak, Sungai Nibong, Georgetown, Penang, MY 11700', 'https://www.bringfido.com/lodging/142727?map=on', '$40', 'Penang'),
(38, 'Cameron Highlands Airbnb Rentals', 'Cameron Highlands, MY', 'https://www.bringfido.com/lodging/508378?map=on', '', 'Cameron Highlands'),
(39, 'Ohana House', '53, Jalan Hang Kasturi,, Malacca, MY 75200', 'https://www.bringfido.com/lodging/142726?map=on', '$92', 'Malacca'),
(40, 'Muntri Grove', '127, 129, 131A - F, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142729?map=on', '$95', 'Penang'),
(41, 'Melaka Airbnb Rentals', 'Melaka, MY', 'https://www.bringfido.com/lodging/508413?map=on', '', 'Malacca'),
(42, 'Merang Suria Resort', 'Lot 1841 Kampung Rhu Tapai, Setiu, MY 21010', 'https://www.bringfido.com/lodging/105866?map=on', '$18', 'Setiu'),
(43, 'Balada Hostel', 'Lot 20, Jalan Bandaran Berjaya 3, Kota Kinabalu, MY 88000', 'https://www.bringfido.com/lodging/142714?map=on', '$9', 'Kota Kinabalu'),
(44, 'Cactus Inn', 'Jalan Pantai Tengah, (Opposite Holiday Villa), Langkawi, MY 7000', 'https://www.bringfido.com/lodging/142716?map=on', '$29', 'Langkawi'),
(45, 'Ohana House 3', '15, Jalan Kampung Kuli, Malacca, MY 75000', 'https://www.bringfido.com/lodging/142725?map=on', '', 'Malacca'),
(46, 'Batu Ferringhi Airbnb Rentals', 'Batu Ferringhi, MY', 'https://www.bringfido.com/lodging/508372?map=on', '', 'Penang'),
(47, 'Century Bay Private Residences', '5, Lintang Pantai Jerjak, Sungai Nibong, Georgetown, Penang, MY 11700', 'https://www.bringfido.com/lodging/142727?map=on', '$40', 'Penang'),
(48, 'Noordin Street House', '71 & 73 Lebuh Noordin, Georgetown, Penang, MY 10300', 'https://www.bringfido.com/lodging/142734?map=on', '$47', 'Penang'),
(49, 'Le Lodge', 'No45, Jalan Air Putih 2, Taman Sri Air Putih, Kuantan, MY 25300', 'https://www.bringfido.com/lodging/142715?map=on', '$14', 'Kuantan '),
(50, 'Muntri Mews', 'No77, Lebuh Muntri, Georgetown, Penang, MY 10200', 'https://www.bringfido.com/lodging/142730?map=on', '$73', 'Penang'),
(51, 'Merang Suria Resort', 'Lot 1841 Kampung Rhu Tapai, Setiu, MY 21010', 'https://www.bringfido.com/lodging/105866?map=on', '$28', 'Setiu');

-- --------------------------------------------------------

--
-- Table structure for table `temp_class`
--

CREATE TABLE `temp_class` (
  `id` int(11) NOT NULL,
  `names` text NOT NULL,
  `locations` text NOT NULL,
  `prices` text NOT NULL,
  `imageSRCs` text NOT NULL,
  `details` text NOT NULL,
  `booklinks` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp_class`
--

INSERT INTO `temp_class` (`id`, `names`, `locations`, `prices`, `imageSRCs`, `details`, `booklinks`) VALUES
(1, 'Genting Highlands Airbnb Rentals ', ' Genting Highlands ', ' $24 ', 'https://photos.bringfido.com/lodging/3/8/3/508383/508383_13405613.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', 'https://www.bringfido.com/lodging/508383?map=on'),
(4, 'Balada Hostel ', ' Kota Kinabalu ', ' $9 ', 'https://photos.bringfido.com/lodging/4/1/7/142714/142714_7257082.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', NULL),
(7, 'Noordin Street House ', ' Penang ', ' $53 ', 'https://photos.bringfido.com/lodging/4/3/7/142734/142734_7028361.jpg?size=tile&amp;density=2x', ' One Pet Max ', 'https://www.bringfido.com/lodging/142733?map=on'),
(10, 'Century Bay Private Residences ', ' Penang ', ' $161 ', 'https://photos.bringfido.com/lodging/7/2/7/142727/142727_6607704.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed  ', 'https://www.bringfido.com/lodging/142727?map=on'),
(16, 'Crystal Hill R ', ' Ranau ', ' $116 ', 'https://photos.bringfido.com/lodging/7/3/7/142737/142737_7220895.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', NULL),
(19, 'LANG HOOSE ', ' Penang ', ' $28 ', 'https://photos.bringfido.com/lodging/8/2/7/142728/142728_7191270.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', NULL),
(22, 'Noordin Mews ', ' Penang ', ' $120 ', 'https://photos.bringfido.com/lodging/3/3/7/142733/142733_6642308.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', 'https://www.bringfido.com/lodging/142733?map=on'),
(40, 'Century Bay Private Residences Pet Policy ', ' Penang ', ' $53 ', 'https://photos.bringfido.com/lodging/4/3/7/142734/142734_7028361.jpg?size=tile&amp;density=2x', ' One Pet Max ', 'https://www.bringfido.com/lodging/142727?map=on'),
(85, 'Muntri Mews ', ' Penang ', ' $97 ', 'https://photos.bringfido.com/lodging/0/3/7/142730/142730_7235674.jpg?size=tile&amp;density=2x', ' 2+ Pets Allowed ', ' 10200\r\nhttps://www.bringfido.com/lodging/142730?map=on'),
(94, 'Muntri Grove ', ' Penang ', ' $97 ', 'https://photos.bringfido.com/lodging/9/2/7/142729/142729_7235799.jpg?size=tile&amp;density=2x', ' One Pet Max ', 'https://www.bringfido.com/lodging/142729?map=on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `temp_class`
--
ALTER TABLE `temp_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `names` (`names`(100));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `temp_class`
--
ALTER TABLE `temp_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
