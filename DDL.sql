-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 01:45 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `midterm_sajid_ahmed_8811230`
--

-- --------------------------------------------------------

--
-- Table structure for table `driver_info`
--

CREATE TABLE `driver_info` (
  `employee_id` varchar(10) NOT NULL,
  `catergory` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE `employee_info` (
  `employee_id` varchar(10) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `seniority (years)` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mechanic_info`
--

CREATE TABLE `mechanic_info` (
  `employee_id` varchar(10) NOT NULL,
  `brand` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `repair_info`
--

CREATE TABLE `repair_info` (
  `repair_id` varchar(10) NOT NULL,
  `employee_id` varchar(10) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `truck_id` varchar(10) NOT NULL,
  `estimated time of repairs (days)` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_&_company_info`
--

CREATE TABLE `shipment_&_company_info` (
  `company_id` varchar(10) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `company_address` varchar(250) NOT NULL,
  `company_phone_number` varchar(250) NOT NULL,
  `route` varchar(250) NOT NULL,
  `weight` double NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trip_info`
--

CREATE TABLE `trip_info` (
  `company_id` varchar(10) NOT NULL,
  `employee_id` varchar(10) NOT NULL,
  `participation of driver` int(10) NOT NULL,
  `route` varchar(250) NOT NULL,
  `shipment being transferred` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `truck_info`
--

CREATE TABLE `truck_info` (
  `truck_id` varchar(10) NOT NULL,
  `brand` varchar(250) NOT NULL,
  `load (kg)` int(100) NOT NULL,
  `capacity` double NOT NULL,
  `year` int(10) NOT NULL,
  `number of repairs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver_info`
--
ALTER TABLE `driver_info`
  ADD KEY `employee_id_fk` (`employee_id`);

--
-- Indexes for table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `mechanic_info`
--
ALTER TABLE `mechanic_info`
  ADD KEY `employe_id_fk` (`employee_id`);

--
-- Indexes for table `repair_info`
--
ALTER TABLE `repair_info`
  ADD PRIMARY KEY (`repair_id`),
  ADD KEY `employee_id_fk` (`employee_id`),
  ADD KEY `truck_id_fk` (`truck_id`);

--
-- Indexes for table `shipment_&_company_info`
--
ALTER TABLE `shipment_&_company_info`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `trip_info`
--
ALTER TABLE `trip_info`
  ADD KEY `company_id_fk` (`company_id`),
  ADD KEY `employee_id_fk` (`employee_id`);

--
-- Indexes for table `truck_info`
--
ALTER TABLE `truck_info`
  ADD PRIMARY KEY (`truck_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `driver_info`
--
ALTER TABLE `driver_info`
  ADD CONSTRAINT `driver_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`);

--
-- Constraints for table `mechanic_info`
--
ALTER TABLE `mechanic_info`
  ADD CONSTRAINT `mechanic_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`);

--
-- Constraints for table `repair_info`
--
ALTER TABLE `repair_info`
  ADD CONSTRAINT `repair_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`),
  ADD CONSTRAINT `repair_info_ibfk_2` FOREIGN KEY (`truck_id`) REFERENCES `truck_info` (`truck_id`);

--
-- Constraints for table `trip_info`
--
ALTER TABLE `trip_info`
  ADD CONSTRAINT `trip_info_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_info` (`employee_id`),
  ADD CONSTRAINT `trip_info_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `shipment_&_company_info` (`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
