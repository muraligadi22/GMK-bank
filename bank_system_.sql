-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 04:55 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--
CREATE DATABASE bank_system;
-- --------------------------------------------------------
USE bank_system;
--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `email`, `balance`) VALUES
(1, 'G.Murali krishna', 'miraclemurali@gmail.com', 346500),
(2, 'Y.Saiteja', 'steja7600@gmail.com', 456400),
(3, 'Ramesh', 'ramesh789@gmail.com', 45320),
(4, 'Anvesh kalwa', 'anveshkalwa@gmail.com', 14570),
(5, 'Thallapalli Vikas', 'vikas45@gmail.com', 124560),
(6, 'virat', 'virat999@gmail.com', 96840),
(7, 'Madhvesh Joshi', 'madveshjoshi@gmail.com',35770),
(8, 'Rakesh rockstar', 'rakeshrockstar@gmail.com', 956750),
(9, 'Bharath', 'bharth345@gmail.com', 23560),
(10, 'Vinay prince', 'vinayprince@gmail.com', 23530),
(11, 'Jamesbond', 'jamesbond888@gmail.com', 35780);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `his_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `reciever` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`his_id`, `sender`, `reciever`, `amount`) VALUES
(1, 'Ramesh', 'Vinay Prince', 2450),
(2, 'Jamesbond', 'Vikas victory', 3540),
(3, 'Anvesh kalwa', 'Madhvesh Joshi', 9890),
(4, 'Rishikesh', 'Rakeh rockstar', 2340),
(5, 'Bharath', 'Murali krishna', 9780),
(6, 'Murali krishna', 'Saiteja', 1340),
(7, 'Vikas victory', 'Rishikesh', 34670),
(8, 'Madhvesh Joshi', 'Rakesh rockstar', 3570);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`his_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;