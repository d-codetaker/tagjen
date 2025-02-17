-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2025 at 04:20 AM
-- Server version: 8.0.40-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technosy_massets`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint UNSIGNED NOT NULL,
  `supplierid` int NOT NULL,
  `typeid` int NOT NULL,
  `brandid` int NOT NULL,
  `assettag` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchasedate` date NOT NULL,
  `cost` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locationid` int NOT NULL,
  `checkstatus` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `supplierid`, `typeid`, `brandid`, `assettag`, `name`, `serial`, `quantity`, `purchasedate`, `cost`, `warranty`, `status`, `picture`, `description`, `created_at`, `updated_at`, `locationid`, `checkstatus`) VALUES
(2, 1, 1, 1, 'AST2409121', 'HP Laptop', '54654432342saf', 'undefined', '2024-09-12', '654', '12', '1', '0912202413110866e2e86cb1a94hp-laptop-min.png', NULL, '2024-09-12 18:11:08', '2024-10-25 12:09:48', 2, 2),
(7, 2, 1, 2, 'AST2410132', 'Dell Laptop', '12312398839', 'undefined', '2024-10-14', '45000', '12', '1', '10132024204122670c3072e0f3edell.png', NULL, '2024-10-14 01:41:22', '2025-01-24 14:55:24', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `asset_history`
--

CREATE TABLE `asset_history` (
  `id` bigint UNSIGNED NOT NULL,
  `assetid` bigint UNSIGNED NOT NULL,
  `employeeid` int NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_history`
--

INSERT INTO `asset_history` (`id`, `assetid`, `employeeid`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 7, '2024-09-26', '1', '2024-09-12 23:17:54', '2024-09-12 23:17:54'),
(2, 2, 2, '2024-09-12', '1', '2024-09-12 23:22:30', '2024-09-12 23:22:30'),
(3, 2, 7, '2024-09-10', '1', '2024-09-12 23:23:48', '2024-09-12 23:23:48'),
(4, 2, 5, '2024-09-13', '1', '2024-09-13 15:01:05', '2024-09-13 15:01:05'),
(5, 2, 3, '2024-09-20', '1', '2024-09-20 12:43:06', '2024-09-20 12:43:06'),
(6, 2, 7, '2024-10-06', '1', '2024-10-07 07:42:26', '2024-10-07 07:42:26'),
(9, 2, 8, '2024-10-09', '1', '2024-10-07 12:47:30', '2024-10-07 12:47:30'),
(10, 2, 8, '2024-10-25', '1', '2024-10-25 12:09:48', '2024-10-25 12:09:48'),
(11, 7, 11, '2025-01-24', '1', '2025-01-24 14:55:24', '2025-01-24 14:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `asset_type`
--

CREATE TABLE `asset_type` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_type`
--

INSERT INTO `asset_type` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', NULL, '2024-09-12 18:00:15', '2024-09-12 18:00:15'),
(2, 'Single Board Computer', 'Just like raspberry pi, dell metengo etc', '2024-09-13 14:59:28', '2024-09-20 12:50:05'),
(3, 'Mobile', NULL, '2024-10-14 01:44:28', '2024-10-14 01:44:28'),
(4, 'Tablet', NULL, '2024-10-14 01:44:44', '2024-10-14 01:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'HP', NULL, '2024-09-12 17:59:43', '2024-09-12 17:59:43'),
(2, 'Dell', NULL, '2024-10-14 01:40:31', '2024-10-14 01:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE `component` (
  `id` bigint UNSIGNED NOT NULL,
  `supplierid` int NOT NULL,
  `typeid` int NOT NULL,
  `brandid` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchasedate` date NOT NULL,
  `cost` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warranty` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locationid` int NOT NULL,
  `checkstatus` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `supplierid`, `typeid`, `brandid`, `name`, `serial`, `quantity`, `purchasedate`, `cost`, `warranty`, `status`, `picture`, `description`, `created_at`, `updated_at`, `locationid`, `checkstatus`) VALUES
(1, 1, 1, 1, 'Samsung T7', '2342384798sdfasdf', '1', '2024-09-24', '35100', '6', '2', '0913202409430166e409258b540A1sHjPpz6fL._SX679_.jpg', NULL, '2024-09-13 14:43:01', '2024-09-13 14:43:01', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `component_assets`
--

CREATE TABLE `component_assets` (
  `id` bigint UNSIGNED NOT NULL,
  `assetid` bigint UNSIGNED NOT NULL,
  `componentid` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Network Operations Center (NOC)', 'Monitors, manages, and secures the network infrastructure to ensure smooth operations.', '2024-09-12 16:38:50', '2024-09-12 16:38:50'),
(2, 'Customer Service', 'Handles customer inquiries, complaints, and provides technical support to resolve issues.', '2024-09-12 16:39:11', '2024-09-12 16:39:11'),
(3, 'Sales and Marketing', 'Focuses on promoting services, acquiring new customers, and retaining existing ones.', '2024-09-12 16:39:38', '2024-09-12 16:39:38'),
(4, 'Engineering', 'Responsible for network design, implementation, and maintenance of infrastructure.', '2024-09-12 16:40:19', '2024-09-12 16:41:47'),
(5, 'Regulatory Compliance', 'Ensures the company adheres to legal requirements and industry standards.', '2024-09-12 16:40:40', '2024-09-12 16:40:40'),
(6, 'Finance and Accounting', 'Manages budgeting, financial forecasting, and reporting to maintain financial health.', '2024-09-12 16:42:04', '2024-09-12 16:42:04'),
(7, 'Human Resources (HR)', 'Oversees recruitment, employee training, benefits, and employee relations.', '2024-09-12 16:42:33', '2024-09-12 16:42:33'),
(8, 'Legal', 'Provides legal advice, reviews contracts, and handles dispute resolution.', '2024-09-12 16:42:57', '2024-09-12 16:42:57'),
(9, 'Research & Development', 'Innovates and develops new technologies and solutions to improve services and expand offerings.', '2024-09-12 16:44:25', '2024-09-12 16:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `depreciation`
--

CREATE TABLE `depreciation` (
  `id` bigint UNSIGNED NOT NULL,
  `assetid` int DEFAULT NULL,
  `componentid` int DEFAULT NULL,
  `period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assetvalue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `depreciation`
--

INSERT INTO `depreciation` (`id`, `assetid`, `componentid`, `period`, `assetvalue`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '2', '200', '2024-10-07 09:14:27', '2024-10-07 09:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `departmentid` int NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobrole` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `departmentid`, `fullname`, `email`, `jobrole`, `city`, `country`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nitinesh Singh', 'nitineshsingh@gmail.com', 'Network Administrator', 'Ankleshwar', 'India', NULL, '2024-09-12 16:54:43', '2024-09-12 16:54:43'),
(2, 7, 'Renu Yadav', 'renuyadav@gmail.com', 'Manager', 'Ankleshwar', 'India', NULL, '2024-09-12 16:55:59', '2024-09-12 16:55:59'),
(3, 6, 'Anjali Vasava', 'vasavaanjali@gmail.com', 'Accountant', 'Ankleshwar', 'India', NULL, '2024-09-12 16:57:16', '2024-09-12 16:57:16'),
(4, 3, 'Sameer Barawala', 'sameerbarawala@gmail.com', 'Sales Executive', 'Ankleshwar', 'India', NULL, '2024-09-12 16:58:36', '2024-09-12 17:09:43'),
(5, 4, 'Faisal Gangat', 'faisalgangat@gmail.com', 'Fiber Engineer', 'Ankleshwar', 'India', NULL, '2024-09-12 16:59:47', '2024-09-12 16:59:47'),
(6, 1, 'Chirag Pawar', 'chiragpawar4321@gmail.com', 'Network Administrator', 'Ankleshwar', 'India', NULL, '2024-09-12 17:00:09', '2024-09-12 17:00:09'),
(7, 6, 'Payal Yadav', 'payalyadav@gmail.com', 'Finance Advisor', 'Ankleshwar', 'India', NULL, '2024-09-12 17:01:29', '2024-09-12 17:01:29'),
(8, 4, 'Aakash Maurya', 'aakash@gmail.com', 'Fiber Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:03:06', '2024-09-12 17:03:06'),
(9, 4, 'Satish Prajapati', 'satishprajapati@gmail.com', 'Fiber Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:04:14', '2024-09-12 17:04:14'),
(10, 4, 'Vikash Pal', 'vikashpal@gmail.com', 'Fiber Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:05:28', '2024-09-12 17:05:28'),
(11, 4, 'Himanshu Tendel', 'himanshutendel@gmail.com', 'Fiber Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:06:06', '2024-09-12 17:06:06'),
(12, 4, 'Akram Shaikh', 'akram@gmail.com', 'Fiber Engineer', 'Ankleshwar', 'India', NULL, '2024-09-12 17:07:13', '2024-09-12 17:07:13'),
(13, 4, 'Rehan Khan', 'rehankhan@gmail.com', 'Computer Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:08:11', '2024-09-12 17:08:11'),
(14, 4, 'Sahid Mohomad', 'sahidm@gmail.com', 'Wireless Engineer', 'Ankleshwar', 'India', NULL, '2024-09-12 17:09:11', '2024-09-12 17:09:11'),
(15, 3, 'Damini Patil', 'daminipatil@gmail.com', 'Sales Executive', 'Ankleshwar', 'India', NULL, '2024-09-12 17:10:32', '2024-09-12 17:10:32'),
(16, 4, 'Soyab Thakor', 'thakorsoyab@gmail.com', 'Sales Executive', 'Ankleshwar', 'India', NULL, '2024-09-12 17:11:16', '2024-09-12 17:11:16'),
(17, 4, 'Ajay Machhi', 'ajaymachhi4620@gmail.com', 'Wireless Engineer', 'Ankleshwar', 'India', NULL, '2024-09-12 17:11:45', '2024-09-12 17:11:45'),
(18, 4, 'Dinesh Kushwaha', 'dineshk@gmail.com', 'Fiber Technician', 'Ankleshwar', 'India', NULL, '2024-09-12 17:12:33', '2024-09-12 17:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` bigint UNSIGNED NOT NULL,
  `assetid` int DEFAULT NULL,
  `componentid` int DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `assetid`, `componentid`, `name`, `filename`, `created_at`, `updated_at`) VALUES
(1, 7, NULL, 'Test', '10132024205056670c32b0d6944_Screenshot from 2024-10-14 02-20-25.png', '2024-10-14 01:50:56', '2024-10-14 01:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Main Office', '315, Golden Square, Ankleshwar – Valia Rd, near Valia, Ankleshwar GIDC, Ankleshwar, Gujarat 393002', '2024-09-12 16:18:55', '2024-09-12 16:20:10'),
(2, 'Second Branch', 'C-18/19 Amardeep Complex, Rajpipla Road, Ankleshwar, Bharuch, Gujarat - 393001', '2024-09-12 16:21:10', '2024-09-12 17:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `id` bigint UNSIGNED NOT NULL,
  `assetid` int NOT NULL,
  `supplierid` int NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id`, `assetid`, `supplierid`, `startdate`, `enddate`, `type`, `created_at`, `updated_at`) VALUES
(2, 7, 2, '2024-10-15', '2024-10-16', 'Repair', '2024-10-14 01:41:52', '2024-10-14 01:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `company` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `formatdate` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `email`, `phonenumber`, `country`, `logo`, `formatdate`, `created_at`, `updated_at`, `currency`, `language`) VALUES
(1, 'Technosys', 'Ankleshwar', 'hi@chiragpawar.space', '6352732279', 'India', 'a-logo.png', 'd-m-Y', '2020-09-09 17:00:00', '2020-09-09 17:00:00', '₹', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `city`, `country`, `zip`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'POOJA ELECTRONICS', 'vijaycpl@rediffmail.com', 'DELHI', 'India', '395002', '9374539566', 'TG-34, BELGIUM TOWER, DELHI GATE, RING ROAD, SURAT', '2024-09-12 17:46:59', '2024-09-13 04:43:55'),
(2, 'NEW CITY COMPUTERS', 'newcitycomputers@gmail.com', 'Ankleshwar', 'India', '393003', '6352485579', 'SHOP NO. 877, 878, OLD N.H.NO.08,OPP. HOTEL LORDS PLAZA', '2024-09-12 17:48:44', '2024-09-13 04:44:24'),
(3, 'ALPINE TECHNOLOGIES', 'alpinerack@gmail.com', 'Ankleshwar', 'India', '38241', '9375589900', 'C/4, GIDC TOWNSHIP, RADHE KRISHNA METAL LANE,', '2024-09-12 17:58:46', '2024-09-12 17:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`, `status`, `city`, `phone`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'hi@chiragpawar.space', '$2y$10$u8bJejIqMUaWCVdIIWrmDuSdzxtNaJU8fGdxVqCqeJAAhwlx7RVeW', '1', 'Ankleshwar', '07043537045', '1', '2020-09-13 00:10:45', '2024-09-12 16:17:26'),
(2, 'Chirag Pawar', 'chiragpawar4321@gmail.com', '$2y$10$YhZrNDXhAMqC0PwqdN1zVetzeyMWEaO8fs46QYSRuXZmj.9SA4Qnu', '1', 'Ankleshwar', '06352732279', '2', '2024-09-12 16:05:42', '2024-09-12 16:17:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_history`
--
ALTER TABLE `asset_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_history_assetid_foreign` (`assetid`);

--
-- Indexes for table `asset_type`
--
ALTER TABLE `asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_assets`
--
ALTER TABLE `component_assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `component_assets_assetid_foreign` (`assetid`),
  ADD KEY `component_assets_componentid_foreign` (`componentid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `depreciation`
--
ALTER TABLE `depreciation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `asset_history`
--
ALTER TABLE `asset_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `asset_type`
--
ALTER TABLE `asset_type`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `component`
--
ALTER TABLE `component`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `component_assets`
--
ALTER TABLE `component_assets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `depreciation`
--
ALTER TABLE `depreciation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset_history`
--
ALTER TABLE `asset_history`
  ADD CONSTRAINT `asset_history_assetid_foreign` FOREIGN KEY (`assetid`) REFERENCES `assets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `component_assets`
--
ALTER TABLE `component_assets`
  ADD CONSTRAINT `component_assets_assetid_foreign` FOREIGN KEY (`assetid`) REFERENCES `assets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `component_assets_componentid_foreign` FOREIGN KEY (`componentid`) REFERENCES `component` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
