-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 01:44 AM
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

--
-- Dumping data for table `driver_info`
--

INSERT INTO `driver_info` (`employee_id`, `catergory`) VALUES
('driv0001', 'full-time senior driver'),
('driv0002', 'full-time senior driver'),
('driv0003', 'part-time driver'),
('driv0004', 'full-time junior driver'),
('driv0005', 'part-time driver');

--
-- Dumping data for table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `first_name`, `surname`, `seniority (years)`) VALUES
('driv0001', 'robert', 'lewandoski', 1),
('driv0002', 'sergio', 'auguero', 8),
('driv0003', 'leroy', 'sane', 2),
('driv0004', 'theiry', 'henry', 10),
('driv0005', 'paul', 'scholes', 3),
('mech0001', 'sajid', 'ahmed', 10),
('mech0002', 'christiano', 'ronaldo', 7),
('mech0003', 'marcus', 'rashford', 2),
('mech0004', 'david', 'de gea', 1),
('mech0005', 'frank', 'lampard', 3),
('mech0006', 'matt', 'hummels', 8),
('mech0007', 'arjen', 'robben', 3);

--
-- Dumping data for table `mechanic_info`
--

INSERT INTO `mechanic_info` (`employee_id`, `brand`) VALUES
('mech0001', 'mercedes'),
('mech0002', 'mercedes'),
('mech0003', 'ford'),
('mech0005', 'bmw'),
('mech0004', 'bmw'),
('mech0006', 'toyota'),
('mech0007', 'toyota');

--
-- Dumping data for table `repair_info`
--

INSERT INTO `repair_info` (`repair_id`, `employee_id`, `first_name`, `truck_id`, `estimated time of repairs (days)`) VALUES
('rep0001', 'mech0001', 'sajid', 'truk0001', 30),
('rep0002', 'mech0002', 'christiano', 'truk0001', 30),
('rep0003', 'mech0005', 'frank', 'truk0005', 10),
('rep0004', 'mech0006', 'matt', 'truk0004', 150),
('rep0005', 'mech0007', 'arjen', 'truk0004', 150);

--
-- Dumping data for table `shipment_&_company_info`
--

INSERT INTO `shipment_&_company_info` (`company_id`, `company_name`, `company_address`, `company_phone_number`, `route`, `weight`, `value`) VALUES
('comp0001', 'Addidas', 'toronto ', '(666) 711-8888, (466) 711-8888', 'toronto to vancouver', 1000, 10500.5),
('comp0002', 'puma', 'new york', '(888) 888-8888, (888) 888-8887', 'new york to toronto', 2000, 8050.77),
('comp0003', 'nike', 'vancouver', '(766) 711-8888, (646) 711-8888', 'vancouver to toronto', 2500, 300.5),
('comp0004', 'bata', 'waterloo', '(666) 711-8844, (666) 711-8822', 'waterloo to new york', 40, 10000),
('comp0005', 'H&M', 'florida', '(666) 711-2244, (633) 711-2244', 'florida to texas', 4000, 3000.04),
('comp0006', 'APC', 'toronto', '(666) 711-2222,(666) 711-2644', 'toronto to waterloo', 3300, 2222),
('comp0007', 'Conestoga', 'hamilton', '(666) 711-1111, (666) 711-5555', 'hamilton to toronto', 10000, 300.5),
('comp0008', 'Gillete', 'manitoba', '(006) 711-2244, (606) 711-2244', 'manitoba to new york', 8000, 300.5),
('comp0009', 'Addidas', 'toroto', '(666) 711-8888, (466) 711-8888', 'toronto to texas', 4000, 10000);

--
-- Dumping data for table `trip_info`
--

INSERT INTO `trip_info` (`company_id`, `employee_id`, `participation of driver`, `route`, `shipment being transferred`) VALUES
('comp0001', 'driv0001', 2, 'toronto to vancouver', 4),
('comp0001', 'driv0002', 2, 'toronto to vancouver', 4),
('comp0003', 'driv0003', 1, 'vancouver to toronto', 1),
('comp0005', 'driv0004', 1, 'florida to texas', 10),
('comp0008', 'driv0005', 1, 'manitoba to new york', 30),
('comp0009', 'driv0004', 1, 'toronto to texas', 50);

--
-- Dumping data for table `truck_info`
--

INSERT INTO `truck_info` (`truck_id`, `brand`, `load (kg)`, `capacity`, `year`, `number of repairs`) VALUES
('truk0001', 'mercedes', 10000, 50, 1996, 7),
('truk0002', 'tata', 3000, 20, 2015, 0),
('truk0003', 'ford', 7500, 45, 2010, 1),
('truk0004', 'toyta', 7000, 60, 1980, 12),
('truk0005', 'bmw', 3000, 50, 2002, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
