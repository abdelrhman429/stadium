-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2021 at 09:58 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Fh2MuPZ0Od`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `numberofperson` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `date`, `start_time`, `end_time`, `full_name`, `email`, `phone`, `numberofperson`, `product_id`, `total`) VALUES
(1, '2021-04-07', '12:00PM', '01:00PM', 'eslam hani', 'eslam@gmail.com', '01110477821', 10, 1, '200'),
(2, '2021-04-07', '13:00', '14:00', 'Eslam Hany', 'eslam@gmail.com', '01110477821', 10, 1, '200'),
(4, '2021-04-16', '13:00', '14:00', 'Eslam Hany', 'eslamhani1990@yahoo.com', '01110477821', 9, 1, '200'),
(5, '2021-04-16', '13:00', '14:00', 'Eslam Hany', 'eslamhani1990@yahoo.com', '01110477821', 1, 1, '200'),
(6, '2021-04-08', '22:00', '23:00', 'Eslam Hany', 'eslam@gmail.com', '01110477821', 10, 1, '200'),
(7, '2021-04-09', '13:00', '14:00', 'Eslam Hany', 'eslam@gmail.com', '01110477821', 6, 1, '120'),
(8, '2021-04-10', '13:00', '15:00', 'Eslam Hany', 'eslam@gmail.com', '01110477821', 10, 1, '400'),
(9, '2021-04-22', '14:02', '16:02', 'Eslam Hany', 'eslamhani1990@yahoo.com', '01110477821', 6, 1, '240'),
(10, '2021-04-07', '14:00', '15:00', 'Eslam Hany', 'eslam@gmail.com', '01110477821', 5, 1, '100'),
(11, '2021-04-07', '15:00', '16:00', 'Eslam Hany', 'eslamhani1919@gmail.com', '01110477821', 5, 1, '100'),
(12, '2021-04-07', '15:00', '16:00', 'Eslam Hany', 'eslamhani1919@gmail.com', '01110477821', 5, 1, '100');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `regular_price` decimal(10,0) NOT NULL,
  `sale_price` decimal(10,0) DEFAULT NULL,
  `numberofperson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `image`, `regular_price`, `sale_price`, `numberofperson`) VALUES
(1, 'sentiago', 'santiago', 'This is first stadium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-1.jpg', '200', NULL, 10),
(2, 'Anfield', 'anfield', 'This is second stadium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-2.jpg', '300', NULL, 10),
(3, 'Arena', 'arena', 'This is third stadium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-3.jpg', '500', NULL, 10),
(4, 'Manchester', 'manchester', 'This is forth stadium', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-2.jpeg', '600', '200', 10),
(5, 'playground one', 'playgroundone', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-1.jpg', '300', NULL, 10),
(6, 'playground two', 'playgroundtwo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'slide-3.jpg', '500', NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `name`, `email`, `comment`, `user_id`) VALUES
(5, 1, 'Ahmed Hany', 'admin@admin.com', 'this is good stadium thank you and dkjhe ckdhgcd djcgdgcdug cdjgcjfc dfcjgfrycgr crjhgfr fcrgfcrhgf crjfgrgfrn frjfjrgf fjegjhfe fjehgfdyut3uyd3hdjfe fdejgfegfheghfeghjgfehgfr fbrhjgfrhjgfrhj', NULL),
(6, 5, 'Eslam Hany', 'eslamhani1919@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL),
(7, 6, 'Eslam Hany', 'eslamhani1919@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `username`, `password`, `email`) VALUES
(1, 'kulvvv', '$2y$10$Du5mNTE0Q69pZYZv.Rd1auvwMjyiUGKsCR.dr1nNA9gfnJJ7nVOAO', 'moreavao1@gmail.com'),
(2, 'Abdallah', '$2y$10$k7C5Ri2HrxFzPkXP2U5ak.kYUpyFeRYjrcB4bsUyQZtobMANiBrte', 'a.nabil2200@gmail.com'),
(3, 'eslam123ed', '$2y$10$MDYsmDMRo0oOy/C51mwUFuDyXyljQEDum/sXmtygESYLf54mkDc92', 'ekhairy719@gmail.com'),
(4, 'Mm', '$2y$10$3m0AeI7my6MK83nBhQo0J.Z1LwzDTIbXcMBBQrCGRLfBKIVn8TbIu', 'hsjjshdjj@gmail.com'),
(5, 'fgh', '$2y$10$JiQ7oDrZKP3uU9KntgFpge/leXoj6ZH.3R.i7SWAWsbjoBlL.0CZu', 'ggfd@drt'),
(6, 'alaa', '$2y$10$ob.YwnW1MknRzQjxPYgXZOZn82kVN2pccTKkOfAvDm60hZM6ZgDta', 'fhjk@fgh'),
(7, 'alaa', '$2y$10$VJWQnn17VfK/RIguwrKRfuGM3lxFU6eh0.qY0XRqfjCBfyrx/.uG.', 'fhjk@fgh'),
(8, 'salma', '$2y$10$i5dETrenu/mKTCZO3fnwAuF/bOk9m8WG4ZHeX2x36DQY1ZSJvsbMG', 'salmaalk44@gmail.com'),
(9, 'admin', '$2y$10$Whbegd7ifIBSdbEZtvKY1eRAHd48yNPBYGhpwsnNxR12MBzqJFNra', 'abdallahnabil505@gmail.com'),
(10, 'salmaalk444@gmail.com', '$2y$10$ubiMn1SwjtwwWKFKWazTceJgkTY3GcKU4S/gqDa2sRlm3T6rnuCE6', 'salmaalk444@gmail.com'),
(11, 'kuku', '$2y$10$v2kPLkzDHLXqix96rLdpiuBT0WU38VtKCuAh1..OFYEqLJFsQEKZC', 'kuku_12@gmail.com'),
(12, 'adskljfa;dlsfk', '$2y$10$GjopeioMhJg4NUkxgoUJB.Vr1b1zSuFL0.oqJbdHVUop7.SXnvT.6', 'test@gmail.com'),
(13, 'Adminn', '$2y$10$63MPFTtwMTvd/PWkUlF2neSO.uCoZy10t2fV76vWY4fDKL/HyrT2e', 'abdo.hablas@yahoo.com'),
(14, 'Abood', '$2y$10$RXV2/zNjRQVRGST.Tu7eeez5wmpK/Ivojxd/1fdAdJsifQFUNgo8i', 'ndndn@gmail.com'),
(15, 'salad@yahoo.com', '$2y$10$uRc24aAxUJXWeUuW..bosuw1r6saLXM7OTAwC.3dwa.RO0q5EGQoa', 'fhjk@fgh.comm'),
(16, 'boody', '$2y$10$6Ph7.8kLW8G/EVwpoaEnjuRmIzzxBMkfP.09K/LEC2ZdNNGCGV3SS', 'voody@yahoo.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BOOK-PRODUCT` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `REVIEW-PRODUCT` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `BOOK-PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `REVIEW-PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_member` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
