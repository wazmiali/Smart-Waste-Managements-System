-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 08:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_waste`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `S.no` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` bigint(10) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`S.no`, `Name`, `Email`, `Contact`, `Message`) VALUES
(9, 'Manish ', 'manishkumar89@gmail.com', 8909786543, 'How to book this slot'),
(10, 'Om Sharma', 'omsharma90@gmail.com', 9078563412, 'Good working.'),
(11, 'Shamma Ali', 'shammaali78@gmail.com', 8989896756, 'How to book this..........');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `S.no` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` text NOT NULL,
  `Feedback` text NOT NULL,
  `Date` text NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`S.no`, `Name`, `Email`, `Feedback`, `Date`) VALUES
(4, 'Manish Kumar', 'manishkumar89@gmail.com', 'Good working.........', '2024-12-13'),
(5, 'Wazmi Ali', 'wazmiali86@gmail.com', 'Good looking', '2024-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `waste_collection`
--

CREATE TABLE `waste_collection` (
  `S.no` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Phone` bigint(13) NOT NULL,
  `Email` text NOT NULL,
  `Address` text NOT NULL,
  `Date` text NOT NULL DEFAULT current_timestamp(),
  `Message` varchar(50) NOT NULL,
  `Quantity` int(20) DEFAULT NULL,
  `Waste_Type` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waste_collection`
--

INSERT INTO `waste_collection` (`S.no`, `Name`, `Phone`, `Email`, `Address`, `Date`, `Message`, `Quantity`, `Waste_Type`) VALUES
(34, 'Wazmi Ali', 9089898909, 'wazmiali86@gmail.com', 'Knowledge Park III, Greater Noida, Uttar Pradesh ', '2024-12-13', 'We will collect your waste to ensure proper dispos', 2, 'Metel'),
(35, 'Wazmi Ali', 9089898909, 'wazmiali86@gmail.com', 'Knowledge Park III, Greater Noida, Uttar Pradesh ', '2024-12-13', 'We will collect your waste to ensure proper dispos', 2, 'Metel'),
(36, 'Wazmi Ali', 9089898909, 'wazmiali86@gmail.com', 'Knowledge Park III, Greater Noida, Uttar Pradesh ', '2024-12-13', 'We will collect your waste to ensure proper dispos', 2, 'Metel'),
(37, 'Manish Kumar', 7878787878, 'manishkumar90@gmail.com', 'Greater Noida ', '2024-12-13', 'How to collect my waste.', 3, 'Paper'),
(38, 'Kumar', 8987676789, 'manishkumar90@gmail.com', 'Noida ', '2024-12-13', 'How to collect my waste.', 0, 'Paper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`S.no`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`S.no`);

--
-- Indexes for table `waste_collection`
--
ALTER TABLE `waste_collection`
  ADD PRIMARY KEY (`S.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `S.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `S.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `waste_collection`
--
ALTER TABLE `waste_collection`
  MODIFY `S.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
