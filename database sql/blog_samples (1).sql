-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 07:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_samples`
--

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `name` varchar(50) NOT NULL,
  `pnumber` varchar(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`name`, `pnumber`, `product_name`, `total`, `id`) VALUES
(' georgesyounes ', ' 71954236 ', ' Vichy89  Novalac2  Solgar D3    ', 1109, 47),
(' georgesyounes ', ' 71954236 ', ' Solgar D3  ', 300, 48),
(' georgesyounes ', ' 71954236 ', ' Vichy89   ', 800, 51),
(' salime ja3fare ', ' 76173123 ', ' Novalac1 Nursie 2   ', 22, 64);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Oreal Revital', 'Or01', 'images/product5.jpg', 233.00),
(2, 'Vichy89', 'Vich01', 'images/product6.jpg', 800.00),
(3, 'Solgar D3', 'SolD3', 'images/product7.jpg', 300.00),
(4, 'Solgar Colg', 'SolgarCol', 'images/product8.png', 666.00),
(5, 'Novalac1', 'milk01', 'images/product1.jpg', 9.00),
(6, 'Novalac2', 'milk02', 'images/product2.jpg', 9.00),
(7, 'Nursie1', 'milk03', 'images/product3.jpg', 31.00),
(8, 'Solgar GI', 'food45', 'images/product4.png', 156.00),
(9, 'Novalac It3', 'Nov3', 'images/product9.jpg', 24.00),
(10, 'Nan 2', 'Nan21', 'images/product10.jpg', 13.00),
(11, 'Nursie 2', 'Nursi', 'images/product11.jpg', 13.00),
(12, 'Solgar Lysine', 'Solgarlys', 'images/product12.jpg', 177.00),
(13, 'Solgar Biotin', 'Or02', 'images/product13.jpg', 255.00),
(14, 'Solgar Mel', 'solg31', 'images/product14.jpg', 323.00),
(15, 'Obagi', 'obag3', 'images/product15.jpg', 543.00),
(16, 'Maybeline Lash', 'maybel012', 'images/product16.jpg', 777.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
