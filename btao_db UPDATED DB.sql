-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 01:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btao.db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Id` tinyint(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL,
  `firstName` varchar(150) DEFAULT NULL,
  `lastName` varchar(150) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Inactive',
  `role` varchar(20) DEFAULT NULL,
  `dateAdded` date DEFAULT NULL,
  `officerBadge` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Id`, `username`, `password`, `firstName`, `lastName`, `status`, `role`, `dateAdded`, `officerBadge`) VALUES
(3, 'admin', '12', 'Admin', 'Rics', 'Active', 'Admin', NULL, ''),
(13, 'Michael_Somes', 'admin123', 'John Michael ', 'Somes', 'Active', 'Admin', NULL, ''),
(14, 'Johnny_Butnande', 'admin123', 'Johnny Alfred', 'Butnande', 'Active', 'Admin', NULL, ''),
(15, 'Kenneth_Estander', 'admin123', 'Kenneth', 'Estander', 'Active', 'Admin', NULL, ''),
(16, 'Rics_Rojas', 'staff123', 'Rics', 'Rojas', 'Active', 'Staff', NULL, ''),
(18, 'Officer_Gallego', 'officer123', 'Anthony', 'Gallego', 'Active', 'Officer', NULL, '#023123'),
(19, 'Officer_Dizon', 'officer123', 'Giselle', 'Dizon', 'Active', 'Officer', NULL, '#023112'),
(20, 'Officer_Paul', 'officer123', 'Paul', 'Montano', 'Active', 'Officer', NULL, '#213412');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `middleInitial` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `licenseNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Id`, `firstName`, `lastName`, `middleInitial`, `address`, `birthday`, `licenseNumber`) VALUES
(49, 'Charmaine', 'Barrios', 'Y', 'Brgy 1', '1997-02-13', 'F01-00-707007'),
(50, 'Theo', 'Carlos', 'L', 'Taculing', '2000-02-12', 'F01-30-303023'),
(51, 'Landis', 'Roque', 'G', 'Mandalagan', '1990-03-15', 'F01-00-002322'),
(52, 'Vin', 'Manansala', 'O', 'Brgy 10', '1994-10-09', 'F01-29-103231'),
(53, 'Kenneth', 'Villar', 'O', 'Sum ag', '1959-01-23', 'F01-00-232211'),
(54, 'Ricardo', 'Domino', 'S', 'Bata', '2000-02-28', 'F01-00-404023'),
(55, 'Angelica', 'Uy', 'P', 'Brgy 21', '1992-05-31', 'F01-00-101232'),
(56, 'Dranreb', 'Bustamante', 'R', 'Granada', '1972-01-20', 'F01-00-404444'),
(57, 'Christian Michael', 'Park', 'E', 'Alijis', '1997-09-23', 'F01-00-707232'),
(58, 'Charlene', 'Espino', 'K', 'Brgy 27', '1994-04-30', 'F01-25-103255'),
(59, 'Nathalie', 'Ditching', 'L', 'Brgy 27', '1999-10-23', 'F01-00-324423'),
(60, 'Janua', 'R', 'Dinglasan', 'Cabug', '1998-1-13', 'F01-23-541211'),
(61, 'Ricardo', 'M', 'Dalisay', 'Brgy 2', '1998-12-18', 'F01-65-239907'),
(64, 'Paul', 'S', 'Soriani', 'Cabug', '2000-12-19', 'F01-67-322212'),
(65, 'Paul John', 'M', 'Montano', 'Brgy Estefania', '1970-10-27', 'D16-95-114931');

-- --------------------------------------------------------

--
-- Table structure for table `driver_penalty`
--

CREATE TABLE `driver_penalty` (
  `Id` int(11) NOT NULL,
  `dateAdded` date DEFAULT NULL,
  `officerId` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  `zoneId` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `referenceId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `driver_penalty`
--

INSERT INTO `driver_penalty` (`Id`, `dateAdded`, `officerId`, `status`, `zoneId`, `type`, `referenceId`) VALUES
(42, '2023-12-18', 18, 'Paid', 9, 'Driver', 49),
(43, '2023-12-18', 18, 'Pending', 10, 'Driver', 50),
(44, '2023-12-18', 18, 'Pending', 11, 'Driver', 51),
(45, '2023-12-18', 19, 'Pending', 10, 'Driver', 52),
(46, '2023-12-18', 19, 'Pending', 12, 'Driver', 53),
(47, '2023-12-18', 19, 'Pending', 12, 'Driver', 54),
(48, '2023-12-18', 20, 'Pending', 12, 'Driver', 55),
(49, '2023-12-18', 20, 'Pending', 9, 'Driver', 56),
(50, '2023-12-18', 20, 'Pending', 10, 'Driver', 57),
(51, '2023-12-18', 18, 'Paid', 10, 'Driver', 58),
(54, '2023-12-18', 18, 'Pending', 11, 'Vehicle', 7),
(55, '2023-12-18', 19, 'Pending', 12, 'Driver', 59),
(56, '2023-12-18', 18, 'Pending', 14, 'Driver', 57),
(57, '2023-12-18', 18, 'Paid', 15, 'Driver', 60),
(58, '2023-12-18', 19, 'Pending', 11, 'Driver', 61),
(61, '2023-12-19', 18, 'Pending', 11, 'Driver', 53),
(62, '2023-12-19', 18, 'Pending', 11, 'Driver', 59),
(63, '2023-12-19', 18, 'Pending', 11, 'Vehicle', 10),
(64, '2023-12-19', 18, 'Pending', 12, 'Driver', 64),
(65, '2023-12-19', 18, 'Paid', 9, 'Driver', 65),
(66, '2023-12-19', 18, 'Pending', 16, 'Driver', 65),
(67, '2023-12-19', 18, 'Pending', 16, 'Driver', 65);

-- --------------------------------------------------------

--
-- Table structure for table `penalty_item`
--

CREATE TABLE `penalty_item` (
  `Id` int(11) NOT NULL,
  `violationId` int(11) DEFAULT NULL,
  `driverPenaltyId` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `dateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penalty_item`
--

INSERT INTO `penalty_item` (`Id`, `violationId`, `driverPenaltyId`, `amount`, `dateAdded`) VALUES
(75, 17, 42, NULL, '2023-12-12'),
(76, 21, 42, NULL, '2023-12-07'),
(77, 25, 43, NULL, '2023-12-01'),
(78, 30, 44, NULL, '2023-12-05'),
(79, 29, 45, NULL, '2023-12-03'),
(80, 31, 45, NULL, '2023-12-18'),
(81, 16, 46, NULL, '2023-12-18'),
(82, 18, 46, NULL, '2023-12-18'),
(83, 25, 47, NULL, '2023-12-18'),
(84, 28, 47, NULL, '2023-12-18'),
(85, 12, 48, NULL, '2023-12-18'),
(86, 14, 48, NULL, '2023-12-18'),
(87, 15, 49, NULL, '2023-12-18'),
(88, 22, 49, NULL, '2023-12-18'),
(89, 13, 50, NULL, '2023-12-18'),
(90, 25, 50, NULL, '2023-12-10'),
(91, 26, 51, NULL, '2023-12-17'),
(92, 28, 51, NULL, '2023-12-18'),
(96, 12, 54, NULL, '2023-12-10'),
(97, 25, 55, NULL, '2023-12-15'),
(98, 27, 55, NULL, '2023-12-05'),
(99, 28, 55, NULL, '2023-12-19'),
(100, 12, 56, NULL, '2023-12-18'),
(101, 19, 56, NULL, '2023-12-18'),
(102, 14, 57, NULL, '2023-12-18'),
(103, 15, 57, NULL, '2023-12-18'),
(104, 23, 58, NULL, '2023-12-18'),
(105, 24, 58, NULL, '2023-12-18'),
(106, 32, 58, NULL, '2023-12-18'),
(114, 12, 62, NULL, '2023-12-19'),
(117, 15, 62, NULL, '2023-12-19'),
(118, 17, 62, NULL, '2023-12-19'),
(119, 12, 63, NULL, '2023-12-19'),
(120, 14, 63, NULL, '2023-12-19'),
(121, 12, 64, NULL, '2023-12-19'),
(122, 19, 65, NULL, '2023-12-19'),
(123, 12, 65, NULL, '2023-12-19'),
(124, 13, 65, NULL, '2023-12-19'),
(125, 15, 65, NULL, '2023-12-19'),
(127, 16, 66, NULL, '2023-12-19'),
(128, 18, 66, NULL, '2023-12-19'),
(129, 22, 67, NULL, '2023-12-19'),
(130, 27, 67, NULL, '2023-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Id` int(11) NOT NULL,
  `plateNumber` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Id`, `plateNumber`, `color`, `brand`, `model`) VALUES
(7, 'TRY 123', 'White', 'Toyota', 'Fortuner'),
(9, 'JKT 324', 'Red', 'Toyota', 'Vios'),
(10, 'AXA4838', 'Midnight Blue', 'TOYOTA', 'Wigo');

-- --------------------------------------------------------

--
-- Table structure for table `violation`
--

CREATE TABLE `violation` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `violation`
--

INSERT INTO `violation` (`Id`, `name`, `amount`) VALUES
(12, 'ILLEGAL PARKING', 500),
(13, 'DISREGARDING TRAFFIC LIGHTS/SIGNS', 300),
(14, 'ARROGANT / DISCOURATEOUS DRIVER', 500),
(15, 'RECKLESS DRIVING', 1000),
(16, 'WEARING SLIPPER / SANDO', 200),
(17, 'OUT OF LINE / ROUTE', 500),
(18, 'ESTABLISHING TERMINAL', 1200),
(19, 'OBSTRUCTION', 700),
(21, 'TRIP CUTTING', 1000),
(22, 'SMOKING WHILE DRIVING PUJ', 200),
(23, 'NO CITY STICKERS', 150),
(24, 'NO BODY NUMBER', 150),
(25, 'NO CRASH HELMET (DRIVER)', 500),
(26, 'NO CRASH HELMET (RIDER)', 500),
(27, 'NO OR/CR CARRIED', 1500),
(28, 'NO DRIVER LICENSE', 1500),
(29, 'OVERLOADING', 600),
(30, 'REFUSAL TO CONVEY PASSENGER', 500),
(31, 'TRUCK BAN', 1500),
(32, 'NO MTOP/BUS. PERMIT', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `zone`
--

CREATE TABLE `zone` (
  `Id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `zone`
--

INSERT INTO `zone` (`Id`, `name`) VALUES
(8, 'La Salle'),
(9, 'San Agustin'),
(10, 'River Side'),
(11, 'West Negros'),
(12, 'Magsaysay'),
(13, 'Mandalagan'),
(14, 'Estefania'),
(15, 'Lacson'),
(16, 'Bata');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `driver_penalty`
--
ALTER TABLE `driver_penalty`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `penalty_item`
--
ALTER TABLE `penalty_item`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `violation`
--
ALTER TABLE `violation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `zone`
--
ALTER TABLE `zone`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Id` tinyint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `driver_penalty`
--
ALTER TABLE `driver_penalty`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `penalty_item`
--
ALTER TABLE `penalty_item`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `violation`
--
ALTER TABLE `violation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `zone`
--
ALTER TABLE `zone`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
