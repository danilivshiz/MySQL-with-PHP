-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2017 at 05:00 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `l40_computers`
--

CREATE TABLE `l40_computers` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `model` varchar(20) NOT NULL,
  `motherboard` varchar(20) NOT NULL,
  `hard_drive` varchar(20) NOT NULL,
  `ram` varchar(20) NOT NULL,
  `graphic_card` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l40_keyboards`
--

CREATE TABLE `l40_keyboards` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `model` varchar(20) NOT NULL,
  `isWired` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l40_manufacturer`
--

CREATE TABLE `l40_manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l40_mouses`
--

CREATE TABLE `l40_mouses` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `model` varchar(20) NOT NULL,
  `is_wired` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `l40_screens`
--

CREATE TABLE `l40_screens` (
  `id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `model` varchar(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `l40_computers`
--
ALTER TABLE `l40_computers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `l40_keyboards`
--
ALTER TABLE `l40_keyboards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `l40_manufacturer`
--
ALTER TABLE `l40_manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `l40_mouses`
--
ALTER TABLE `l40_mouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `l40_screens`
--
ALTER TABLE `l40_screens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manufacturer_id` (`manufacturer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `l40_computers`
--
ALTER TABLE `l40_computers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `l40_keyboards`
--
ALTER TABLE `l40_keyboards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `l40_manufacturer`
--
ALTER TABLE `l40_manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `l40_mouses`
--
ALTER TABLE `l40_mouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `l40_screens`
--
ALTER TABLE `l40_screens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `l40_computers`
--
ALTER TABLE `l40_computers`
  ADD CONSTRAINT `manufacturer` FOREIGN KEY (`manufacturer_id`) REFERENCES `l40_manufacturer` (`id`);

--
-- Constraints for table `l40_keyboards`
--
ALTER TABLE `l40_keyboards`
  ADD CONSTRAINT `manufacturer_keyboard` FOREIGN KEY (`manufacturer_id`) REFERENCES `l40_manufacturer` (`id`);

--
-- Constraints for table `l40_mouses`
--
ALTER TABLE `l40_mouses`
  ADD CONSTRAINT `manufacturer_mouse` FOREIGN KEY (`manufacturer_id`) REFERENCES `l40_manufacturer` (`id`);

--
-- Constraints for table `l40_screens`
--
ALTER TABLE `l40_screens`
  ADD CONSTRAINT `manufacturer_screens` FOREIGN KEY (`manufacturer_id`) REFERENCES `l40_manufacturer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
