-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 31, 2019 at 04:29 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `MyHolidaysDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Holidays`
--

CREATE TABLE `Holidays` (
  `hid` tinyint(1) NOT NULL,
  `month` varchar(12) NOT NULL,
  `day` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Holidays`
--

INSERT INTO `Holidays` (`hid`, `month`, `day`, `year`, `description`) VALUES
(1, 'February', '17th', '2019', 'President Day'),
(2, 'February', '5th', '2019', 'Chinese New Year'),
(3, 'November', '28th', '2019', 'Thanksgiving');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Holidays`
--
ALTER TABLE `Holidays`
  ADD PRIMARY KEY (`hid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Holidays`
--
ALTER TABLE `Holidays`
  MODIFY `hid` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
  
  