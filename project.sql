-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 04:30 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyback`
--

CREATE TABLE `buyback` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `aadhar` varchar(50) NOT NULL,
  `mobileno` varchar(12) NOT NULL,
  `loan_amount` int(25) NOT NULL,
  `amount` int(25) NOT NULL,
  `receipt` varchar(255) NOT NULL,
  `reloanamount` int(25) NOT NULL,
  `disbursed_amount` int(25) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyback`
--

INSERT INTO `buyback` (`id`, `name`, `aadhar`, `mobileno`, `loan_amount`, `amount`, `receipt`, `reloanamount`, `disbursed_amount`) VALUES
(3, 'Adarsh Ashok Naik', '542653415243', '5254126413', 0, 90000, 'documents/63a31a1b26c7c.jpg', 10000, 0),
(4, 'roshana', '2541563415216', '2541563241', 0, 50000, 'documents/63a31aef8e632.jpg', 50000, 0),
(5, 'roshana', '2541563415216', '2541563241', 50000, 2540, 'documents/63a31b6508be5.jpg', 47460, 0),
(6, 'roshana', '2541563415216', '2541563241', 47460, 250000, 'documents/63a51e79d0418.jpg', 0, 202540),
(7, 'Adarsh Ashok Naik', '542653415243', '5254126413', 10000, 5000, 'documents/63a51ed249648.jpg', 5000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `name` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `taluka` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `faddress` varchar(255) NOT NULL,
  `fvillage` varchar(255) NOT NULL,
  `ftaluka` varchar(255) NOT NULL,
  `fdistrict` varchar(255) NOT NULL,
  `fpincode` varchar(255) NOT NULL,
  `surveyno` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `holdername` varchar(255) NOT NULL,
  `bankname` varchar(255) NOT NULL,
  `accountno` varchar(255) NOT NULL,
  `ifsc` varchar(255) NOT NULL,
  `paadhar` varchar(255) NOT NULL,
  `plandrecord` varchar(255) NOT NULL,
  `pphoto` varchar(255) NOT NULL,
  `balance` int(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`name`, `aadhar`, `mobileno`, `address`, `village`, `taluka`, `district`, `pincode`, `faddress`, `fvillage`, `ftaluka`, `fdistrict`, `fpincode`, `surveyno`, `area`, `holdername`, `bankname`, `accountno`, `ifsc`, `paadhar`, `plandrecord`, `pphoto`, `balance`) VALUES
('Roshan Pralhad Tajane', '387155379049', '8830394531', 'sawwalkhe lay out', 'Bhosa', 'Yavatmal', 'Yavatmal', '445001', 'yevati shiwar', 'Bhosa', 'Yavatmal', '--Select District--', '445001', '70/2', '7', 'RAOSHAN PRALHAD TAJANE', 'STATE BANK OF INDIA', '33124156432', 'SBIN0000506', 'documents/63725bb5c9f8b.jpeg', 'documents/63725bb5cac97.jpg', 'documents/63725bb5cb474.jpeg', 0),
('Adarsh Ashok Naik', '542653415243', '5254126413', 'sawwalkhe lay out', 'Gankhaira', 'Goregaon', 'Gondia', '445001', 'sawwalkhe lay out', 'Gankhaira', 'Goregaon', 'Gondia', '445001', '21/2', '522', 'ADARSH ASHOK NAIK', 'STATE BANK OF INDIA', '324145642365', 'SBIN0000506', 'documents/6372f4d08c689.jpg', 'documents/6372f4d08d145.jpg', 'documents/6372f4d08e26c.jpeg', 5000),
('Roshan Pralhad Tajne', '874653415246', '5413874654', 'sawwalkhe lay out', 'Gankhaira', 'Yavatmal', 'Latur', '445001', 'sawwalkhe lay out', 'Warud', 'Yavatmal', 'Mumbai', '445001', '70/2', '45', 'RAOSHAN PRALHAD TAJANE', 'STATE BANK OF INDIA', '566454565348', 'SBIN0000506', 'documents/63a3302a5a6fd.png', 'documents/63a3302a5b750.jpg', 'documents/63a3302a5c755.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `mobileno` varchar(255) NOT NULL,
  `total_price` float(10,2) NOT NULL DEFAULT 0.00,
  `order_status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `aadhar`, `mobileno`, `total_price`, `order_status`, `created_at`, `updated_at`) VALUES
(25, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 7290.00, 'confirmed', '2022-11-22 20:02:59', '2022-11-22 20:02:59'),
(26, 'roshana', '2541563415216', '2541563241', 24.00, 'confirmed', '2022-11-22 20:06:23', '2022-11-22 20:06:23'),
(27, 'roshana', '2541563415216', '2541563241', 1620.00, 'confirmed', '2022-11-22 20:07:32', '2022-11-22 20:07:32'),
(28, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 9999.99, 'confirmed', '2022-11-22 20:09:51', '2022-11-22 20:09:51'),
(29, 'roshana', '2541563415255', '2541563241', 24324.00, 'confirmed', '2022-11-22 20:12:48', '2022-11-22 20:12:48'),
(32, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 2430.00, 'confirmed', '2022-11-25 19:50:16', '2022-11-25 19:50:16'),
(33, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-25 20:32:31', '2022-11-25 20:32:31'),
(34, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-25 20:35:30', '2022-11-25 20:35:30'),
(35, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 5670.00, 'confirmed', '2022-11-25 20:39:45', '2022-11-25 20:39:45'),
(36, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-25 20:58:27', '2022-11-25 20:58:27'),
(37, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 11:55:29', '2022-11-28 11:55:29'),
(38, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-11-28 12:19:59', '2022-11-28 12:19:59'),
(39, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:20:47', '2022-11-28 12:20:47'),
(40, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-11-28 12:21:00', '2022-11-28 12:21:00'),
(41, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:25:35', '2022-11-28 12:25:35'),
(42, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:26:29', '2022-11-28 12:26:29'),
(43, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:28:05', '2022-11-28 12:28:05'),
(44, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:28:30', '2022-11-28 12:28:30'),
(45, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:28:35', '2022-11-28 12:28:35'),
(46, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:28:59', '2022-11-28 12:28:59'),
(47, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:29:35', '2022-11-28 12:29:35'),
(48, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 12:30:23', '2022-11-28 12:30:23'),
(49, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-11-28 12:55:51', '2022-11-28 12:55:51'),
(50, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 13:02:28', '2022-11-28 13:02:28'),
(51, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 13:03:36', '2022-11-28 13:03:36'),
(52, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 13:04:46', '2022-11-28 13:04:46'),
(53, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:49:52', '2022-11-28 22:49:52'),
(54, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:50:48', '2022-11-28 22:50:48'),
(55, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:52:17', '2022-11-28 22:52:17'),
(56, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:53:20', '2022-11-28 22:53:20'),
(57, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:13', '2022-11-28 22:54:13'),
(58, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:17', '2022-11-28 22:54:17'),
(59, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:20', '2022-11-28 22:54:20'),
(60, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:26', '2022-11-28 22:54:26'),
(61, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:27', '2022-11-28 22:54:27'),
(62, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:29', '2022-11-28 22:54:29'),
(63, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:31', '2022-11-28 22:54:31'),
(64, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:34', '2022-11-28 22:54:34'),
(65, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-11-28 22:54:41', '2022-11-28 22:54:41'),
(66, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-28 22:56:24', '2022-11-28 22:56:24'),
(67, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 3240.00, 'confirmed', '2022-11-28 22:59:29', '2022-11-28 22:59:29'),
(68, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-11-28 23:00:46', '2022-11-28 23:00:46'),
(69, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 5670.00, 'confirmed', '2022-11-29 13:56:04', '2022-11-29 13:56:04'),
(70, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:01:04', '2022-11-30 19:01:04'),
(71, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:01:16', '2022-11-30 19:01:16'),
(72, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:01:17', '2022-11-30 19:01:17'),
(73, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:01:18', '2022-11-30 19:01:18'),
(74, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:01:19', '2022-11-30 19:01:19'),
(75, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:02:00', '2022-11-30 19:02:00'),
(76, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:06:00', '2022-11-30 19:06:00'),
(77, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 19:09:04', '2022-11-30 19:09:04'),
(78, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:41:10', '2022-11-30 20:41:10'),
(79, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:41:26', '2022-11-30 20:41:26'),
(80, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:44:41', '2022-11-30 20:44:41'),
(81, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:46:12', '2022-11-30 20:46:12'),
(82, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:46:25', '2022-11-30 20:46:25'),
(83, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-11-30 20:47:30', '2022-11-30 20:47:30'),
(84, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:47:47', '2022-11-30 20:47:47'),
(85, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-11-30 20:53:31', '2022-11-30 20:53:31'),
(86, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-11-30 20:53:50', '2022-11-30 20:53:50'),
(87, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:54:15', '2022-11-30 20:54:15'),
(88, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:55:20', '2022-11-30 20:55:20'),
(89, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:55:55', '2022-11-30 20:55:55'),
(90, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:56:00', '2022-11-30 20:56:00'),
(91, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-11-30 20:56:02', '2022-11-30 20:56:02'),
(92, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-01 11:52:43', '2022-12-01 11:52:43'),
(93, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 2430.00, 'confirmed', '2022-12-02 13:44:01', '2022-12-02 13:44:01'),
(94, 'roshana', '2541563415216', '2541563241', 0.00, 'confirmed', '2022-12-02 13:44:23', '2022-12-02 13:44:23'),
(95, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 5670.00, 'confirmed', '2022-12-02 14:39:21', '2022-12-02 14:39:21'),
(96, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-12-02 14:53:30', '2022-12-02 14:53:30'),
(97, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-12-02 14:55:21', '2022-12-02 14:55:21'),
(98, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-02 14:56:15', '2022-12-02 14:56:15'),
(99, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-12-02 15:02:43', '2022-12-02 15:02:43'),
(100, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-12-02 15:08:06', '2022-12-02 15:08:06'),
(101, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-02 15:36:14', '2022-12-02 15:36:14'),
(102, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-02 15:37:42', '2022-12-02 15:37:42'),
(103, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-02 15:42:03', '2022-12-02 15:42:03'),
(104, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 1620.00, 'confirmed', '2022-12-02 21:08:14', '2022-12-02 21:08:14'),
(105, 'Roshan Pralhad Tajne', '387155379049', '8830394531', 0.00, 'confirmed', '2022-12-03 07:13:59', '2022-12-03 07:13:59'),
(106, 'roshana', '2545863485246', '2541563241', 810.00, 'confirmed', '2022-12-03 07:14:42', '2022-12-03 07:14:42'),
(107, 'roshana', '2545863485246', '2541563241', 810.00, 'confirmed', '2022-12-03 07:20:10', '2022-12-03 07:20:10'),
(108, 'roshana', '2545863485246', '2541563241', 810.00, 'confirmed', '2022-12-03 07:27:32', '2022-12-03 07:27:32'),
(109, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-03 07:40:46', '2022-12-03 07:40:46'),
(110, 'roshana', '2545863485246', '2541563241', 3240.00, 'confirmed', '2022-12-03 07:41:15', '2022-12-03 07:41:15'),
(111, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-03 07:45:21', '2022-12-03 07:45:21'),
(112, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-03 07:45:44', '2022-12-03 07:45:44'),
(113, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-03 07:45:53', '2022-12-03 07:45:53'),
(114, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-03 07:47:50', '2022-12-03 07:47:50'),
(115, 'Roshan Pralhad Tajane', '387155379049', '8830394531', 0.00, 'confirmed', '2022-12-15 16:07:25', '2022-12-15 16:07:25'),
(116, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-15 16:10:09', '2022-12-15 16:10:09'),
(117, 'roshana', '2545863485246', '2541563241', 1620.00, 'confirmed', '2022-12-15 16:21:52', '2022-12-15 16:21:52'),
(118, 'Roshan Pralhad Tajane', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-15 16:22:52', '2022-12-15 16:22:52'),
(119, 'Roshan Pralhad Tajane', '387155379049', '8830394531', 0.00, 'confirmed', '2022-12-18 15:15:03', '2022-12-18 15:15:03'),
(120, 'Roshan Pralhad Tajane', '387155379049', '8830394531', 0.00, 'confirmed', '2022-12-18 16:36:11', '2022-12-18 16:36:11'),
(121, 'Roshan Pralhad Tajane', '387155379049', '8830394531', 810.00, 'confirmed', '2022-12-20 09:13:30', '2022-12-20 09:13:30'),
(122, 'roshan naik', '2545863488246', '2541563241', 810.00, 'confirmed', '2022-12-21 16:12:05', '2022-12-21 16:12:05'),
(123, 'roshana', '2541563415216', '2541563241', 810.00, 'confirmed', '2022-12-21 16:16:42', '2022-12-21 16:16:42'),
(124, 'roshana', '2541563415216', '2541563241', 1620.00, 'confirmed', '2022-12-21 16:31:21', '2022-12-21 16:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float(10,2) NOT NULL DEFAULT 0.00,
  `qty` int(11) NOT NULL,
  `total_price` double(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `qty`, `total_price`) VALUES
(19, 25, 2, 'RCH 659 BG II COTTON', 810.00, 1, 810.00),
(20, 25, 3, 'RCH-602 BG II cotton', 810.00, 2, 1620.00),
(21, 25, 5, 'RCH-776 BG II cotton', 810.00, 3, 4860.00),
(22, 26, 3, 'RCH-602 BG II cotton', 810.00, 8, 6.00),
(23, 26, 2, 'RCH 659 BG II COTTON', 810.00, 8, 6.00),
(24, 26, 5, 'RCH-776 BG II cotton', 810.00, 15, 12.00),
(25, 27, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(26, 27, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(27, 28, 2, 'RCH 659 BG II COTTON', 810.00, 2, 1620.00),
(28, 28, 3, 'RCH-602 BG II cotton', 810.00, 3, 4860.00),
(29, 28, 5, 'RCH-776 BG II cotton', 810.00, 4, 9999.99),
(30, 29, 3, 'RCH-602 BG II cotton', 810.00, 3, 4860.00),
(31, 29, 1, 'ISOGASHI', 1700.00, 4, 24.00),
(32, 29, 2, 'RCH 659 BG II COTTON', 810.00, 4, 9999.99),
(33, 30, 2, 'RCH 659 BG II COTTON', 810.00, 2, 1620.00),
(35, 31, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(37, 32, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(38, 32, 5, 'RCH-776 BG II cotton', 810.00, 2, 1620.00),
(39, 33, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(40, 33, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(41, 34, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(42, 34, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(45, 36, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(46, 36, 5, 'RCH-776 BG II cotton', 810.00, 2, 1620.00),
(47, 37, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(48, 37, 5, 'RCH-776 BG II cotton', 810.00, 2, 1620.00),
(49, 37, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(50, 38, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(51, 39, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(52, 40, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(53, 41, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(54, 41, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(55, 42, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(56, 42, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(57, 43, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(58, 44, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(59, 45, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(60, 46, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(61, 47, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(62, 48, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(63, 48, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(64, 49, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(65, 50, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(66, 50, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(67, 51, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(68, 51, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(69, 52, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(70, 52, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(71, 53, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(72, 53, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(73, 54, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(74, 54, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(75, 55, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(76, 55, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(77, 56, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(78, 56, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(79, 57, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(80, 57, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(81, 58, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(82, 58, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(83, 59, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(84, 59, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(85, 60, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(86, 60, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(87, 61, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(88, 61, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(89, 62, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(90, 62, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(91, 63, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(92, 63, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(93, 64, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(94, 64, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(95, 65, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(96, 65, 6, 'RCH-779 BG II cotton', 810.00, 2, 1620.00),
(97, 66, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(98, 66, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(99, 66, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(100, 67, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(101, 67, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(102, 67, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(103, 67, 8, 'RCH-super-773', 810.00, 1, 810.00),
(104, 68, 2, 'RCH 659 BG II COTTON', 810.00, 1, 810.00),
(105, 68, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(106, 69, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(107, 69, 5, 'RCH-776 BG II cotton', 810.00, 2, 1620.00),
(108, 69, 3, 'RCH-602 BG II cotton', 810.00, 2, 1620.00),
(109, 69, 7, 'RCH-926 BG II cotton', 810.00, 2, 1620.00),
(110, 70, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(111, 71, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(112, 72, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(113, 73, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(114, 74, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(115, 75, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(116, 76, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(117, 77, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(118, 78, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(119, 79, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(120, 80, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(121, 81, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(122, 82, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(123, 83, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(124, 83, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(125, 84, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(126, 84, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(127, 85, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(128, 85, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(129, 86, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(130, 86, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(131, 87, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(132, 87, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(133, 88, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(134, 88, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(135, 89, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(136, 89, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(137, 90, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(138, 90, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(139, 91, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(140, 91, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(141, 92, 2, 'RCH 659 BG II COTTON', 810.00, 1, 810.00),
(142, 93, 3, 'RCH-602 BG II cotton', 810.00, 2, 1620.00),
(143, 93, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(144, 94, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(145, 95, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(146, 95, 5, 'RCH-776 BG II cotton', 810.00, 3, 4860.00),
(147, 96, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(148, 96, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(149, 97, 5, 'RCH-776 BG II cotton', 810.00, 3, 34992000.00),
(150, 97, 7, 'RCH-926 BG II cotton', 810.00, 1, 810.00),
(151, 98, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(152, 99, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(153, 99, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(154, 100, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(155, 100, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(156, 101, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(157, 102, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(158, 103, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(159, 104, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(160, 104, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(161, 105, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(162, 105, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(163, 106, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(164, 107, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(165, 108, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(166, 109, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(167, 109, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(168, 110, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(169, 110, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(170, 110, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(171, 110, 2, 'RCH 659 BG II COTTON', 810.00, 1, 810.00),
(172, 111, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(173, 111, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(174, 112, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(175, 112, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(176, 113, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(177, 113, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(178, 114, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(179, 114, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(180, 115, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(181, 115, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(182, 116, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(183, 116, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(184, 117, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(185, 117, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(186, 118, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(187, 119, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(188, 120, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(189, 120, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(190, 121, 6, 'RCH-779 BG II cotton', 810.00, 1, 810.00),
(191, 122, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(192, 123, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00),
(193, 124, 3, 'RCH-602 BG II cotton', 810.00, 1, 810.00),
(194, 124, 5, 'RCH-776 BG II cotton', 810.00, 1, 810.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `type`, `price`, `description`, `image`) VALUES
(2, 'RCH 659 BG II COTTON', 'SEEDS', 810, '', 'RCH-659.jpg'),
(3, 'RCH-602 BG II cotton', 'SEEDS', 810, '', 'RCH-602.jpg'),
(5, 'RCH-776 BG II cotton', 'SEEDS', 810, '', 'RCH-776.jpg'),
(6, 'RCH-779 BG II cotton', 'SEEDS', 810, '', 'RCH-779.jpg'),
(7, 'RCH-926 BG II cotton', 'SEEDS', 810, '', 'RCH-926.jpg'),
(8, 'RCH-super-773', 'SEEDS', 810, '', 'RCH-super-773.jpg'),
(9, 'KAITAKU ACETAMIPRID 20%SP (1 lit)', 'Insecticides', 660, '', 'KAITAKU.png\r\n'),
(10, 'KAGUYA CARBENDAZIM 12% + MANCOZEB 63% WP (1kg)', 'Fungicides', 600, '', 'KAGUYA.png'),
(11, 'EGAO EMAMECTIN BENZOATE 5% SL (1 lit.)', 'Insecticides', 680, '', 'EGAO.png'),
(12, 'FIPRONIL 5% SC (1 lit.)', 'Insecticides', 900, '', 'FIPRONIL.png'),
(13, 'Isogashi imidacloprid1 7.8% (1 lit.)', 'insecticides', 1700, '', 'Isogashi_imidacloprid1_7.8_1700litr.png'),
(14, 'YURI LAMBDA CYHALOTHRIN 4.9% CS (1 lit.)', 'Insecticides', 550, '', 'YURI.png'),
(15, 'KABUTO PARAQUAT DICHLORIDE 24% SL (1 lit.)', 'Herbicides ', 445, '', 'KABUTO.png'),
(16, 'ZAKIYAMA PENDIMETHALIN 30% EC (1 lit.)', 'Herbicides', 600, '', 'ZAKIYAMA.png'),
(17, 'HIMAWARI PROFENOPHOS 40% + CYPERMETHRIN 4% EC (1 lit.)', 'Insecticides', 760, '', 'HIMAWARI.png'),
(18, 'TEBURA TEBUCONAZOLE 25.9% EC (1 lit.)', 'Fungicides', 1500, '', 'TEBURA.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyback`
--
ALTER TABLE `buyback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyback`
--
ALTER TABLE `buyback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
