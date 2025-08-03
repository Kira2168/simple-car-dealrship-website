-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2025 at 06:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` int(30) NOT NULL,
  `inquiry` varchar(50) NOT NULL,
  `message` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `phone`, `inquiry`, `message`) VALUES
(1, 'kura adi', 'kirubeladisu655@gmail.com', 923231537, 'financing', 'etyuuio'),
(2, 'gete', 'gete123@gmail.com', 91234456, 'general', 'its wonderful'),
(3, 'sfd', 'wre@gmail.com', 9844443, 'sales', 'nvcv');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(50) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `username`, `email`, `password`) VALUES
(1, '', '', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'kirubel', 'akirubel339@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(3, 'woinshet', 'woi1234@gmail.com', '8ce87b8ec346ff4c80635f667d1592ae'),
(4, 'chala', 'chala32@gmail.com', 'ed2b1f468c5f915f3f1cf75d7068baae'),
(5, 'girma', 'girma231@gmail.com', '69a9dc1da83c4c3e58a5ecb7c9de78fa'),
(6, 'dedefo', 'dede123@gmail.com', 'c69b1c6efc585384d5f789d0d9204508'),
(7, 'sari', 'sari123@gmail.com', '60f1dfbef36ae87491ee992ca80645e4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
