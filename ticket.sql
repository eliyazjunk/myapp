-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2023 at 05:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `national_id` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `request_number` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pdf1` varchar(255) DEFAULT NULL,
  `pdf2` varchar(255) DEFAULT NULL,
  `pdf3` varchar(255) DEFAULT NULL,
  `match_flag` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Open',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `full_name`, `national_id`, `phone_number`, `request_number`, `description`, `pdf1`, `pdf2`, `pdf3`, `match_flag`, `status`, `created_at`) VALUES
(1, 'test name', 123, 1, '', 'test dec', 'loca1', 'loca2', 'loca3', 'ok', 'Closed', '2023-03-15'),
(1000, 'test2', 22, 333, '', 'de', 'pdf', 'pdf', 'pdf', 'No', 'Closed', '2023-03-15'),
(1001, '', 1, 1, '1', '1', '', NULL, NULL, NULL, 'Open', '2023-03-15'),
(1002, '', 2, 2, '2', '2', 'aadhar.pdf', NULL, NULL, NULL, 'Open', '2023-03-15'),
(1003, '', 123, 321, 'q1', 'com', 'aadhar missba.pdf', NULL, NULL, NULL, 'Open', '2023-03-16'),
(1004, '', 12, 234, '12', 'comt', 'aadhar missba.pdf', NULL, NULL, NULL, 'Open', '2023-03-16'),
(1005, 'name', 122, 12, '123', 'comt', 'aadhar missba.pdf', NULL, NULL, NULL, 'Open', '2023-03-16'),
(1006, 'f', 1, 1, '1', 'cm', 'aadhar missba.pdf', NULL, NULL, NULL, 'Open', '2023-03-16'),
(1007, 'c', 1, 1, '1', '1', 'aadhar missba.pdf', NULL, NULL, NULL, 'Open', '2023-03-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
