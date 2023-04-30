-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2023 at 07:14 PM
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
-- Database: `bankmgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_details`
--

CREATE TABLE `acc_details` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `acc_type` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc_details`
--

INSERT INTO `acc_details` (`id`, `acc_id`, `customer_id`, `acc_type`, `balance`) VALUES
(6, 'AC001', 'CS001', 'Savings', 85801),
(7, 'AC002', 'CS002', 'Fix', 334553),
(8, 'AC003', 'CS003', 'Fix', 23432),
(9, 'AC004', 'CS004', 'Current', 45235),
(10, 'AC005', 'CS005', 'Savings', 235673),
(11, 'AC006', 'CS006', 'Current', 27929),
(12, 'AC007', 'CS008', 'Savings', 100000),
(13, 'AC008', 'CS009', 'Current', 6759),
(14, 'AC009', 'CS010', 'Savings', 34322),
(15, 'AC010', 'CS011', 'Current', 1111211);

-- --------------------------------------------------------

--
-- Table structure for table `Branch`
--

CREATE TABLE `Branch` (
  `id` int(11) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Branch`
--

INSERT INTO `Branch` (`id`, `branch`) VALUES
(1, 'Mumbai'),
(2, 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `phno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_id`, `fname`, `lname`, `street`, `city`, `branch`, `phno`) VALUES
(5, 'CS001', 'Aditi', 'Singh', 'Lavale', 'Pune', '2', 7584736),
(6, 'CS002', 'Aahan', 'Shah', 'Pashan', 'Pune', '2', 7428742),
(7, 'CS003', 'Anudeep', 'Goud', 'Sus', 'Pune', '2', 7363842),
(8, 'CS004', 'Pranay', 'Chauhan', 'Sus', 'Pune', '2', 7264827),
(9, 'CS005', 'Aarush', 'Jain', 'Pashan', 'Pune', '2', 4728472),
(14, 'CS007', 'Krishi', 'Shah', 'RDF', 'Mumbai', '1', 1234567890),
(15, 'CS008', 'Sadhana', 'Sharma', 'DFG', 'Pune', '2', 1234567890),
(16, 'CS009', 'Amit', 'kumar', 'sus', 'pune', '2', 987654321),
(17, 'CS010', 'Bhushan', 'Zope', 'KP', 'Pune', '2', 1234567890),
(18, 'CS011', 'Aditi', 'Singh', 'Sus', 'Pune', '2', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `acc_id`, `customer_id`, `date`, `balance`, `deposit`) VALUES
(1, 'AC001', 'CS001', '24/04/2023', 30000, 3400),
(2, 'AC001', 'CS001', '24/04/2023', 30000, 3400),
(3, 'AC002', 'CS002', '24/04/2023', 334553, 4567),
(4, 'AC002', 'CS002', '24/04/2023', 334553, 4567),
(5, 'AC002', 'CS002', '24/04/2023', 334553, 4567),
(6, 'AC006', 'CS006', '24/04/2023', 34683, 45685),
(7, 'AC006', 'CS006', '24/04/2023', 34683, 45685),
(8, 'AC007', 'CS008', '25/04/2023', 100000, 23456),
(9, 'AC007', 'CS008', '25/04/2023', 100000, 23456),
(10, 'AC007', 'CS008', '25/04/2023', 100000, 23456),
(11, 'AC008', 'CS009', '25/04/2023', 9, 1),
(12, 'AC010', 'CS011', '25/04/2023', -111011, 1234567);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` varchar(255) NOT NULL,
  `to_account` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`) VALUES
(1, 'AC007', 'AC001', 23456),
(2, 'AC007', 'AC001', 23456),
(3, 'AC006', 'AC008', 6754),
(4, 'AC010', 'AC001', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `acc_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdraw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `acc_id`, `customer_id`, `date`, `balance`, `withdraw`) VALUES
(1, 'AC002', 'CS002', '24/04/2023', 334553, 34553),
(2, 'AC002', 'CS002', '24/04/2023', 334553, 34553),
(3, 'AC007', 'CS008', '25/04/2023', 123456, 23456),
(4, 'AC001', 'CS001', '25/04/2023', 53456, 3456),
(5, 'AC008', 'CS009', '25/04/2023', 10, 5),
(6, 'AC009', 'CS010', '25/04/2023', 45678, 5678),
(7, 'AC009', 'CS010', '25/04/2023', 40000, 5678),
(8, 'AC010', 'CS011', '25/04/2023', 123445, 234456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_details`
--
ALTER TABLE `acc_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Branch`
--
ALTER TABLE `Branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_details`
--
ALTER TABLE `acc_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Branch`
--
ALTER TABLE `Branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
