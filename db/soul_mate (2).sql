-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2023 at 03:51 PM
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
-- Database: `soul_mate`
--

-- --------------------------------------------------------

--
-- Table structure for table `md_caste_list`
--

CREATE TABLE `md_caste_list` (
  `id` int(11) NOT NULL,
  `caste_name` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT 'admin@gmail.com',
  `created_dt` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_caste_list`
--

INSERT INTO `md_caste_list` (`id`, `caste_name`, `created_by`, `created_dt`) VALUES
(1, 'Aguri', 'admin@gmail.com', '2023-08-22 14:07:30'),
(2, 'Bagdi', 'admin@gmail.com', '2023-08-22 14:07:30'),
(3, 'Baidya', 'admin@gmail.com', '2023-08-22 14:07:30'),
(4, 'Baishnab', 'admin@gmail.com', '2023-08-22 14:07:30'),
(5, 'Baishya', 'admin@gmail.com', '2023-08-22 14:07:30'),
(6, 'Banik', 'admin@gmail.com', '2023-08-22 14:07:30'),
(7, 'Barujibi', 'admin@gmail.com', '2023-08-22 14:07:30'),
(8, 'Brahmin- Barendra', 'admin@gmail.com', '2023-08-22 14:07:30'),
(9, 'Brahmin- Kulin', 'admin@gmail.com', '2023-08-22 14:07:30'),
(10, 'Brahmin- Other', 'admin@gmail.com', '2023-08-22 14:07:30'),
(11, 'Brahmin- Rahri', 'admin@gmail.com', '2023-08-22 14:07:30'),
(12, 'Brahmin- Rudraj', 'admin@gmail.com', '2023-08-22 14:07:30'),
(13, 'Dhopa', 'admin@gmail.com', '2023-08-22 14:07:30'),
(14, 'Goala', 'admin@gmail.com', '2023-08-22 14:07:30'),
(15, 'Intercaste', 'admin@gmail.com', '2023-08-22 14:07:30'),
(16, 'Karan', 'admin@gmail.com', '2023-08-22 14:07:30'),
(17, 'Karmakar', 'admin@gmail.com', '2023-08-22 14:07:30'),
(18, 'Kayastha', 'admin@gmail.com', '2023-08-22 14:07:30'),
(19, 'Kshatriya', 'admin@gmail.com', '2023-08-22 14:07:30'),
(20, 'Kumbhakar', 'admin@gmail.com', '2023-08-22 14:07:30'),
(21, 'Kurmi- Kurmi Kshatriya', 'admin@gmail.com', '2023-08-22 14:07:30'),
(22, 'Mahishya', 'admin@gmail.com', '2023-08-22 14:07:30'),
(23, 'Malakar', 'admin@gmail.com', '2023-08-22 14:07:30'),
(24, 'Modak', 'admin@gmail.com', '2023-08-22 14:07:30'),
(25, 'Namasudra/ Namassej', 'admin@gmail.com', '2023-08-22 14:07:30'),
(26, 'Napit', 'admin@gmail.com', '2023-08-22 14:07:30'),
(27, 'Rajput', 'admin@gmail.com', '2023-08-22 14:07:30'),
(28, 'Sadgope', 'admin@gmail.com', '2023-08-22 14:07:30'),
(29, 'Saha', 'admin@gmail.com', '2023-08-22 14:07:30'),
(30, 'Satchashi', 'admin@gmail.com', '2023-08-22 14:07:30'),
(31, 'SC', 'admin@gmail.com', '2023-08-22 14:07:30'),
(32, 'Shuri', 'admin@gmail.com', '2023-08-22 14:07:30'),
(33, 'ST', 'admin@gmail.com', '2023-08-22 14:07:30'),
(34, 'Sutradhar', 'admin@gmail.com', '2023-08-22 14:07:30'),
(35, 'Tamboli', 'admin@gmail.com', '2023-08-22 14:07:30'),
(36, 'Tantubai', 'admin@gmail.com', '2023-08-22 14:07:30'),
(37, 'Tili', 'admin@gmail.com', '2023-08-22 14:07:30'),
(38, 'Vishwakarma', 'admin@gmail.com', '2023-08-22 14:07:30'),
(39, 'Yadav', 'admin@gmail.com', '2023-08-22 14:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `md_document`
--

CREATE TABLE `md_document` (
  `id` int(11) NOT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'admin@gmail.com',
  `created_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_document`
--

INSERT INTO `md_document` (`id`, `doc_type`, `created_by`, `created_dt`) VALUES
(1, 'Aadhaar Card', 'admin@gmail.com', NULL),
(2, 'Passport', 'admin@gmail.com', NULL),
(3, ' Voter ID card', 'admin@gmail.com', NULL),
(4, 'Driving Licence', 'admin@gmail.com', NULL),
(5, ' NREGA Card', 'admin@gmail.com', NULL),
(6, 'PAN card', 'admin@gmail.com', NULL),
(7, 'Photo ID Card', 'admin@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_education`
--

CREATE TABLE `md_education` (
  `id` int(11) NOT NULL,
  `edu_id` int(11) DEFAULT NULL,
  `edu_name` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_education`
--

INSERT INTO `md_education` (`id`, `edu_id`, `edu_name`, `created_by`, `created_dt`) VALUES
(1, 1, 'B.A', NULL, '2023-08-23 16:11:54'),
(2, 1, 'B.A (Hons.)', NULL, '2023-08-23 16:11:54'),
(3, 1, 'B.Com', NULL, '2023-08-23 16:11:54'),
(4, 1, 'B.Com (Hons.)', NULL, '2023-08-23 16:11:54'),
(5, 1, 'B.Sc', NULL, '2023-08-23 16:11:54'),
(6, 1, 'B.Sc (Hons.)', NULL, '2023-08-23 16:11:54'),
(7, 1, 'B.Ed', NULL, '2023-08-23 16:11:54'),
(8, 1, 'BFA', NULL, '2023-08-23 16:11:54'),
(9, 1, 'BFT', NULL, '2023-08-23 16:11:54'),
(10, 1, 'BLIS', NULL, '2023-08-23 16:11:54'),
(11, 1, 'BMM', NULL, '2023-08-23 16:11:54'),
(12, 1, 'BSW', NULL, '2023-08-23 16:11:54'),
(13, 1, 'B.Phil', NULL, '2023-08-23 16:11:54'),
(14, 1, 'B.Avn', NULL, '2023-08-23 16:11:54'),
(15, 1, 'Other Bachelors Degree in Arts/Science/Commerce', NULL, '2023-08-23 16:11:54'),
(16, 2, 'M.A', NULL, '2023-08-23 16:11:54'),
(17, 2, 'M.Com', NULL, '2023-08-23 16:11:54'),
(18, 2, 'M.Sc', NULL, '2023-08-23 16:11:54'),
(19, 2, 'M.Ed', NULL, '2023-08-23 16:11:54'),
(20, 2, 'MFA', NULL, '2023-08-23 16:11:54'),
(21, 2, 'MFT', NULL, '2023-08-23 16:11:54'),
(22, 2, 'MLIS', NULL, '2023-08-23 16:11:54'),
(23, 2, 'MMM', NULL, '2023-08-23 16:11:54'),
(24, 2, 'MSW', NULL, '2023-08-23 16:11:54'),
(25, 2, 'M.Phil', NULL, '2023-08-23 16:11:54'),
(26, 2, 'Other Masters Degree in Arts/Science/Commerce', NULL, '2023-08-23 16:11:54'),
(27, 3, 'Aeronautical Engineering', NULL, '2023-08-23 16:11:54'),
(28, 3, 'B.Arch', NULL, '2023-08-23 16:11:54'),
(29, 3, 'BCA', NULL, '2023-08-23 16:11:54'),
(30, 3, 'BE', NULL, '2023-08-23 16:11:54'),
(31, 3, 'B.PLAN', NULL, '2023-08-23 16:11:54'),
(32, 3, 'B.SC IT / Computer Science', NULL, '2023-08-23 16:11:54'),
(33, 3, 'B.Tech', NULL, '2023-08-23 16:11:54'),
(34, 3, 'Other Bachelors Degree in Engineering/Computers', NULL, '2023-08-23 16:11:54'),
(35, 4, 'M.Arch', NULL, '2023-08-23 16:11:54'),
(36, 4, 'MCA', NULL, '2023-08-23 16:11:54'),
(37, 4, 'ME', NULL, '2023-08-23 16:11:54'),
(38, 4, 'M.PLAN', NULL, '2023-08-23 16:11:54'),
(39, 4, 'M.Sc. IT/Computer Science', NULL, '2023-08-23 16:11:54'),
(40, 4, 'M.S.( Engg)', NULL, '2023-08-23 16:11:54'),
(41, 4, 'M.Tech', NULL, '2023-08-23 16:11:54'),
(42, 4, 'PGDCA', NULL, '2023-08-23 16:11:54'),
(43, 4, 'Other Masters Degree in Engineering/Computers', NULL, '2023-08-23 16:11:54'),
(44, 5, 'BBA', NULL, '2023-08-23 16:11:54'),
(45, 5, 'BFM (Financial Management)', NULL, '2023-08-23 16:11:54'),
(46, 5, 'BHM (Hotel Management)', NULL, '2023-08-23 16:11:54'),
(47, 5, 'BHRM (Human Resource Management)', NULL, '2023-08-23 16:11:54'),
(48, 5, 'Other Bachelors Degree in Management', NULL, '2023-08-23 16:11:54'),
(49, 6, 'MBA', NULL, '2023-08-23 16:11:54'),
(50, 6, 'MFM (Financial Management)', NULL, '2023-08-23 16:11:54'),
(51, 6, 'MHM (Hotel Management)', NULL, '2023-08-23 16:11:54'),
(52, 6, 'MHRM (Human Resource Management)', NULL, '2023-08-23 16:11:54'),
(53, 6, 'PGDM/PGDBM', NULL, '2023-08-23 16:11:54'),
(54, 6, 'Other Masters Degree in Management', NULL, '2023-08-23 16:11:54'),
(55, 7, 'MBBS', NULL, '2023-08-23 16:11:54'),
(56, 7, 'BDS', NULL, '2023-08-23 16:11:54'),
(57, 7, 'BOPT', NULL, '2023-08-23 16:11:54'),
(58, 7, 'BAMS', NULL, '2023-08-23 16:11:54'),
(59, 7, 'BHMS', NULL, '2023-08-23 16:11:54'),
(60, 7, 'BSMS', NULL, '2023-08-23 16:11:54'),
(61, 7, 'B.Pharm', NULL, '2023-08-23 16:11:54'),
(62, 7, 'BPT', NULL, '2023-08-23 16:11:54'),
(63, 7, 'BUMS', NULL, '2023-08-23 16:11:54'),
(64, 7, 'BVSc', NULL, '2023-08-23 16:11:54'),
(65, 7, 'B.Sc.Nursing', NULL, '2023-08-23 16:11:54'),
(66, 7, 'Other Bachelors Degree in Medicine', NULL, '2023-08-23 16:11:54'),
(67, 8, 'DNB', NULL, '2023-08-23 16:11:54'),
(68, 8, 'MD', NULL, '2023-08-23 16:11:54'),
(69, 8, 'MS', NULL, '2023-08-23 16:11:54'),
(70, 8, 'MDS', NULL, '2023-08-23 16:11:54'),
(71, 8, 'MAMS', NULL, '2023-08-23 16:11:54'),
(72, 8, 'MHMS', NULL, '2023-08-23 16:11:54'),
(73, 8, 'MSMS', NULL, '2023-08-23 16:11:54'),
(74, 8, 'M.Pharm', NULL, '2023-08-23 16:11:54'),
(75, 8, 'MPT', NULL, '2023-08-23 16:11:54'),
(76, 8, 'MUMS', NULL, '2023-08-23 16:11:54'),
(77, 8, 'MVSc', NULL, '2023-08-23 16:11:54'),
(78, 8, 'M.Sc.Nursing', NULL, '2023-08-23 16:11:54'),
(79, 8, 'Other Masters Degree in Medicine in General/Dental/Surgeon', NULL, '2023-08-23 16:11:54'),
(80, 9, 'BGL', NULL, '2023-08-23 16:11:54'),
(81, 9, 'B.L', NULL, '2023-08-23 16:11:54'),
(82, 9, 'LLB', NULL, '2023-08-23 16:11:54'),
(83, 9, 'Other Bachelors degree in Legal', NULL, '2023-08-23 16:11:54'),
(84, 10, 'M.L', NULL, '2023-08-23 16:11:54'),
(85, 10, 'LLM', NULL, '2023-08-23 16:11:54'),
(86, 10, 'Other Master degree in Legal', NULL, '2023-08-23 16:11:54'),
(87, 11, 'CA', NULL, '2023-08-23 16:11:54'),
(88, 11, 'CFA (Chartered  Financial Analyst)', NULL, '2023-08-23 16:11:54'),
(89, 11, 'CS', NULL, '2023-08-23 16:11:54'),
(90, 11, 'ICWA', NULL, '2023-08-23 16:11:54'),
(91, 11, 'Other Financial Qualifications', NULL, '2023-08-23 16:11:54'),
(92, 12, 'Ph.D.', NULL, '2023-08-23 16:11:54'),
(93, 12, 'Post Doctorate', NULL, '2023-08-23 16:11:54'),
(94, 13, 'Diploma', NULL, '2023-08-23 16:11:54'),
(95, 13, 'Polytechnic', NULL, '2023-08-23 16:11:54'),
(96, 13, 'Trade School', NULL, '2023-08-23 16:11:54'),
(97, 13, 'Others in Diploma', NULL, '2023-08-23 16:11:54'),
(98, 14, 'Higher Secondary School', NULL, '2023-08-23 16:11:54'),
(99, 14, 'Secondary School', NULL, '2023-08-23 16:11:54'),
(100, 14, 'High School', NULL, '2023-08-23 16:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `md_edu_catg`
--

CREATE TABLE `md_edu_catg` (
  `id` int(11) NOT NULL,
  `edu_catg` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_edu_catg`
--

INSERT INTO `md_edu_catg` (`id`, `edu_catg`, `created_by`, `created_dt`) VALUES
(1, '--- Any Bachelors in Arts/Science/Commerce', 'admin@gmail.com', '2023-08-23 15:51:17'),
(2, '--- Any Masters in Arts/Science/Commerce', 'admin@gmail.com', '2023-08-23 15:51:17'),
(3, '--- Any Bachelors Degree in Engineering/Computers', 'admin@gmail.com', '2023-08-23 15:51:17'),
(4, '--- Any Masters Degree in Engineering/Computers', 'admin@gmail.com', '2023-08-23 15:51:17'),
(5, '--- Any Bachelors in Management', 'admin@gmail.com', '2023-08-23 15:51:17'),
(6, '---  Any Masters in Management', 'admin@gmail.com', '2023-08-23 15:51:17'),
(7, '---  Any Bachelors in Medicine in General/Dental/Surgeon', 'admin@gmail.com', '2023-08-23 15:51:17'),
(8, '--- Any Masters in Medicine in General/Dental/Surgeon', 'admin@gmail.com', '2023-08-23 15:51:17'),
(9, '---  Any Bachelors in Legal', 'admin@gmail.com', '2023-08-23 15:51:17'),
(10, '---  Any Masters in Legal', 'admin@gmail.com', '2023-08-23 15:51:17'),
(11, '---  Any Financial Qualification ICWA/CA/CS/CFA', 'admin@gmail.com', '2023-08-23 15:51:17'),
(12, '--- Doctorate & Above', 'admin@gmail.com', '2023-08-23 15:51:17'),
(13, '---  Any Diploma Qualifications', 'admin@gmail.com', '2023-08-23 15:51:17'),
(14, '---  Higher Secondary/ Secondary', 'admin@gmail.com', '2023-08-23 15:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `md_frndsp_btwn_number`
--

CREATE TABLE `md_frndsp_btwn_number` (
  `id` int(11) NOT NULL,
  `frm_number` int(11) NOT NULL,
  `to_number` int(11) NOT NULL,
  `frnd_flag` enum('G','M','VA','MA') DEFAULT NULL,
  `created_by` varchar(50) DEFAULT 'Admin',
  `created_dt` datetime DEFAULT current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_frndsp_btwn_number`
--

INSERT INTO `md_frndsp_btwn_number` (`id`, `frm_number`, `to_number`, `frnd_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'G', 'Admin', '2023-09-19 11:31:18', NULL, NULL),
(2, 1, 10, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(3, 1, 19, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(4, 1, 28, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(5, 1, 2, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(6, 1, 11, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(7, 1, 20, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(8, 1, 29, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(9, 1, 4, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(10, 1, 13, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(11, 1, 22, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(12, 1, 31, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(13, 1, 7, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(14, 1, 16, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(15, 1, 25, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(16, 1, 5, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(17, 1, 14, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(18, 1, 23, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(19, 1, 8, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(20, 1, 17, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(21, 1, 26, 'M', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(22, 10, 1, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(23, 10, 10, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(24, 10, 19, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(25, 10, 28, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(26, 10, 2, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(27, 10, 11, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(28, 10, 20, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(29, 10, 29, 'G', 'Admin', '2023-09-19 11:31:19', NULL, NULL),
(30, 10, 4, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(31, 10, 13, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(32, 10, 22, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(33, 10, 31, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(34, 10, 7, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(35, 10, 16, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(36, 10, 25, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(37, 10, 5, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(38, 10, 14, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(39, 10, 23, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(40, 10, 8, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(41, 10, 17, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(42, 10, 26, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(43, 19, 1, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(44, 19, 10, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(45, 19, 19, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(46, 19, 28, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(47, 19, 2, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(48, 19, 11, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(49, 19, 20, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(50, 19, 29, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(51, 19, 4, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(52, 19, 13, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(53, 19, 22, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(54, 19, 31, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(55, 19, 7, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(56, 19, 16, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(57, 19, 25, 'G', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(58, 19, 5, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(59, 19, 14, 'M', 'Admin', '2023-09-19 11:31:20', NULL, NULL),
(60, 19, 23, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(61, 19, 8, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(62, 19, 17, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(63, 19, 26, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(64, 28, 1, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(65, 28, 10, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(66, 28, 19, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(67, 28, 28, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(68, 28, 2, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(69, 28, 11, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(70, 28, 20, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(71, 28, 29, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(72, 28, 4, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(73, 28, 13, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(74, 28, 22, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(75, 28, 31, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(76, 28, 7, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(77, 28, 16, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(78, 28, 25, 'G', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(79, 28, 5, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(80, 28, 14, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(81, 28, 23, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(82, 28, 8, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(83, 28, 17, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(84, 28, 26, 'M', 'Admin', '2023-09-19 11:31:21', NULL, NULL),
(85, 2, 1, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(86, 2, 10, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(87, 2, 19, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(88, 2, 28, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(89, 2, 2, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(90, 2, 11, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(91, 2, 20, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(92, 2, 29, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(93, 2, 4, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(94, 2, 13, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(95, 2, 22, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(96, 2, 31, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(97, 2, 5, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(98, 2, 14, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(99, 2, 23, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(100, 2, 7, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(101, 2, 16, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(102, 2, 25, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(103, 11, 1, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(104, 11, 10, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(105, 11, 19, 'G', 'Admin', '2023-09-19 11:33:33', NULL, NULL),
(106, 11, 28, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(107, 11, 2, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(108, 11, 11, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(109, 11, 20, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(110, 11, 29, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(111, 11, 4, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(112, 11, 13, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(113, 11, 22, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(114, 11, 31, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(115, 11, 5, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(116, 11, 14, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(117, 11, 23, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(118, 11, 7, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(119, 11, 16, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(120, 11, 25, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(121, 20, 1, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(122, 20, 10, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(123, 20, 19, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(124, 20, 28, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(125, 20, 2, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(126, 20, 11, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(127, 20, 20, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(128, 20, 29, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(129, 20, 4, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(130, 20, 13, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(131, 20, 22, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(132, 20, 31, 'G', 'Admin', '2023-09-19 11:33:34', NULL, NULL),
(133, 20, 5, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(134, 20, 14, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(135, 20, 23, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(136, 20, 7, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(137, 20, 16, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(138, 20, 25, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(139, 29, 1, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(140, 29, 10, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(141, 29, 19, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(142, 29, 28, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(143, 29, 2, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(144, 29, 11, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(145, 29, 20, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(146, 29, 29, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(147, 29, 4, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(148, 29, 13, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(149, 29, 22, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(150, 29, 31, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(151, 29, 5, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(152, 29, 14, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(153, 29, 23, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(154, 29, 7, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(155, 29, 16, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(156, 29, 25, 'G', 'Admin', '2023-09-19 11:33:35', NULL, NULL),
(157, 3, 3, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(158, 3, 12, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(159, 3, 21, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(160, 3, 30, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(161, 3, 6, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(162, 3, 15, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(163, 3, 24, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(164, 3, 9, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(165, 3, 18, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(166, 3, 27, 'G', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(167, 3, 5, 'M', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(168, 3, 14, 'M', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(169, 3, 23, 'M', 'Admin', '2023-09-19 11:35:32', NULL, NULL),
(170, 3, 8, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(171, 3, 17, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(172, 3, 26, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(173, 12, 3, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(174, 12, 12, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(175, 12, 21, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(176, 12, 30, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(177, 12, 6, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(178, 12, 15, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(179, 12, 24, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(180, 12, 9, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(181, 12, 18, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(182, 12, 27, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(183, 12, 5, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(184, 12, 14, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(185, 12, 23, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(186, 12, 8, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(187, 12, 17, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(188, 12, 26, 'M', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(189, 21, 3, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(190, 21, 12, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(191, 21, 21, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(192, 21, 30, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(193, 21, 6, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(194, 21, 15, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(195, 21, 24, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(196, 21, 9, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(197, 21, 18, 'G', 'Admin', '2023-09-19 11:35:33', NULL, NULL),
(198, 21, 27, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(199, 21, 5, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(200, 21, 14, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(201, 21, 23, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(202, 21, 8, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(203, 21, 17, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(204, 21, 26, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(205, 30, 3, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(206, 30, 12, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(207, 30, 21, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(208, 30, 30, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(209, 30, 6, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(210, 30, 15, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(211, 30, 24, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(212, 30, 9, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(213, 30, 18, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(214, 30, 27, 'G', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(215, 30, 5, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(216, 30, 14, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(217, 30, 23, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(218, 30, 8, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(219, 30, 17, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(220, 30, 26, 'M', 'Admin', '2023-09-19 11:35:34', NULL, NULL),
(221, 4, 1, 'G', 'Admin', '2023-09-19 11:38:28', NULL, NULL),
(222, 4, 10, 'G', 'Admin', '2023-09-19 11:38:28', NULL, NULL),
(223, 4, 19, 'G', 'Admin', '2023-09-19 11:38:28', NULL, NULL),
(224, 4, 28, 'G', 'Admin', '2023-09-19 11:38:28', NULL, NULL),
(225, 4, 2, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(226, 4, 11, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(227, 4, 20, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(228, 4, 29, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(229, 4, 7, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(230, 4, 16, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(231, 4, 25, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(232, 4, 6, 'M', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(233, 4, 15, 'M', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(234, 4, 24, 'M', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(235, 13, 1, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(236, 13, 10, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(237, 13, 19, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(238, 13, 28, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(239, 13, 2, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(240, 13, 11, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(241, 13, 20, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(242, 13, 29, 'G', 'Admin', '2023-09-19 11:38:29', NULL, NULL),
(243, 13, 7, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(244, 13, 16, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(245, 13, 25, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(246, 13, 6, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(247, 13, 15, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(248, 13, 24, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(249, 22, 1, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(250, 22, 10, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(251, 22, 19, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(252, 22, 28, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(253, 22, 2, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(254, 22, 11, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(255, 22, 20, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(256, 22, 29, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(257, 22, 7, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(258, 22, 16, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(259, 22, 25, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(260, 22, 6, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(261, 22, 15, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(262, 22, 24, 'M', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(263, 31, 1, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(264, 31, 10, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(265, 31, 19, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(266, 31, 28, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(267, 31, 2, 'G', 'Admin', '2023-09-19 11:38:30', NULL, NULL),
(268, 31, 11, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(269, 31, 20, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(270, 31, 29, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(271, 31, 7, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(272, 31, 16, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(273, 31, 25, 'G', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(274, 31, 6, 'M', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(275, 31, 15, 'M', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(276, 31, 24, 'M', 'Admin', '2023-09-19 11:38:31', NULL, NULL),
(277, 5, 8, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(278, 5, 17, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(279, 5, 26, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(280, 5, 5, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(281, 5, 14, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(282, 5, 23, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(283, 5, 3, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(284, 5, 12, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(285, 5, 21, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(286, 5, 30, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(287, 5, 6, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(288, 5, 15, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(289, 5, 24, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(290, 5, 2, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(291, 5, 11, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(292, 5, 20, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(293, 5, 29, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(294, 5, 7, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(295, 5, 16, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(296, 5, 25, 'G', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(297, 5, 1, 'M', 'Admin', '2023-09-19 11:51:20', NULL, NULL),
(298, 5, 10, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(299, 5, 19, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(300, 5, 28, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(301, 5, 4, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(302, 5, 13, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(303, 5, 22, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(304, 5, 31, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(305, 14, 8, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(306, 14, 17, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(307, 14, 26, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(308, 14, 5, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(309, 14, 14, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(310, 14, 23, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(311, 14, 3, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(312, 14, 12, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(313, 14, 21, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(314, 14, 30, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(315, 14, 6, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(316, 14, 15, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(317, 14, 24, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(318, 14, 2, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(319, 14, 11, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(320, 14, 20, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(321, 14, 29, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(322, 14, 7, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(323, 14, 16, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(324, 14, 25, 'G', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(325, 14, 1, 'M', 'Admin', '2023-09-19 11:51:21', NULL, NULL),
(326, 14, 10, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(327, 14, 19, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(328, 14, 28, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(329, 14, 4, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(330, 14, 13, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(331, 14, 22, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(332, 14, 31, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(333, 23, 8, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(334, 23, 17, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(335, 23, 26, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(336, 23, 5, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(337, 23, 14, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(338, 23, 23, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(339, 23, 3, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(340, 23, 12, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(341, 23, 21, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(342, 23, 30, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(343, 23, 6, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(344, 23, 15, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(345, 23, 24, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(346, 23, 2, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(347, 23, 11, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(348, 23, 20, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(349, 23, 29, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(350, 23, 7, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(351, 23, 16, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(352, 23, 25, 'G', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(353, 23, 1, 'M', 'Admin', '2023-09-19 11:51:22', NULL, NULL),
(354, 23, 10, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(355, 23, 19, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(356, 23, 28, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(357, 23, 4, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(358, 23, 13, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(359, 23, 22, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(360, 23, 31, 'M', 'Admin', '2023-09-19 11:51:23', NULL, NULL),
(361, 6, 3, 'G', 'Admin', '2023-09-19 11:55:13', NULL, NULL),
(362, 6, 12, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(363, 6, 21, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(364, 6, 30, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(365, 6, 6, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(366, 6, 15, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(367, 6, 24, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(368, 6, 9, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(369, 6, 18, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(370, 6, 27, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(371, 6, 5, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(372, 6, 14, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(373, 6, 23, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(374, 6, 8, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(375, 6, 17, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(376, 6, 26, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(377, 15, 3, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(378, 15, 12, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(379, 15, 21, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(380, 15, 30, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(381, 15, 6, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(382, 15, 15, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(383, 15, 24, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(384, 15, 9, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(385, 15, 18, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(386, 15, 27, 'G', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(387, 15, 5, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(388, 15, 14, 'M', 'Admin', '2023-09-19 11:55:14', NULL, NULL),
(389, 15, 23, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(390, 15, 8, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(391, 15, 17, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(392, 15, 26, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(393, 24, 3, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(394, 24, 12, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(395, 24, 21, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(396, 24, 30, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(397, 24, 6, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(398, 24, 15, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(399, 24, 24, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(400, 24, 9, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(401, 24, 18, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(402, 24, 27, 'G', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(403, 24, 5, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(404, 24, 14, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(405, 24, 23, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(406, 24, 8, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(407, 24, 17, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(408, 24, 26, 'M', 'Admin', '2023-09-19 11:55:15', NULL, NULL),
(409, 7, 1, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(410, 7, 10, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(411, 7, 19, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(412, 7, 28, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(413, 7, 2, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(414, 7, 11, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(415, 7, 20, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(416, 7, 29, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(417, 7, 4, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(418, 7, 13, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(419, 7, 22, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(420, 7, 31, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(421, 7, 5, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(422, 7, 14, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(423, 7, 23, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(424, 7, 7, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(425, 7, 16, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(426, 7, 25, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(427, 16, 1, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(428, 16, 10, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(429, 16, 19, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(430, 16, 28, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(431, 16, 2, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(432, 16, 11, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(433, 16, 20, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(434, 16, 29, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(435, 16, 4, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(436, 16, 13, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(437, 16, 22, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(438, 16, 31, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(439, 16, 5, 'G', 'Admin', '2023-09-19 11:59:46', NULL, NULL),
(440, 16, 14, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(441, 16, 23, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(442, 16, 7, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(443, 16, 16, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(444, 16, 25, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(445, 25, 1, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(446, 25, 10, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(447, 25, 19, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(448, 25, 28, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(449, 25, 2, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(450, 25, 11, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(451, 25, 20, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(452, 25, 29, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(453, 25, 4, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(454, 25, 13, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(455, 25, 22, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(456, 25, 31, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(457, 25, 5, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(458, 25, 14, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(459, 25, 23, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(460, 25, 7, 'G', 'Admin', '2023-09-19 11:59:47', NULL, NULL),
(461, 25, 16, 'G', 'Admin', '2023-09-19 11:59:48', NULL, NULL),
(462, 25, 25, 'G', 'Admin', '2023-09-19 11:59:48', NULL, NULL),
(463, 8, 5, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(464, 8, 14, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(465, 8, 23, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(466, 8, 1, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(467, 8, 10, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(468, 8, 19, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(469, 8, 28, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(470, 8, 3, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(471, 8, 12, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(472, 8, 21, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(473, 8, 30, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(474, 8, 6, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(475, 8, 15, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(476, 8, 24, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(477, 17, 5, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(478, 17, 14, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(479, 17, 23, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(480, 17, 1, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(481, 17, 10, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(482, 17, 19, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(483, 17, 28, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(484, 17, 3, 'G', 'Admin', '2023-09-19 12:01:42', NULL, NULL),
(485, 17, 12, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(486, 17, 21, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(487, 17, 30, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(488, 17, 6, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(489, 17, 15, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(490, 17, 24, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(491, 26, 5, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(492, 26, 14, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(493, 26, 23, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(494, 26, 1, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(495, 26, 10, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(496, 26, 19, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(497, 26, 28, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(498, 26, 3, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(499, 26, 12, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(500, 26, 21, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(501, 26, 30, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(502, 26, 6, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(503, 26, 15, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(504, 26, 24, 'G', 'Admin', '2023-09-19 12:01:43', NULL, NULL),
(505, 9, 3, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(506, 9, 12, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(507, 9, 21, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(508, 9, 30, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(509, 9, 6, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(510, 9, 15, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(511, 9, 24, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(512, 9, 9, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(513, 9, 18, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(514, 9, 27, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(515, 18, 3, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(516, 18, 12, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(517, 18, 21, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(518, 18, 30, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(519, 18, 6, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(520, 18, 15, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(521, 18, 24, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(522, 18, 9, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(523, 18, 18, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(524, 18, 27, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(525, 27, 3, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(526, 27, 12, 'G', 'Admin', '2023-09-19 12:09:10', NULL, NULL),
(527, 27, 21, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(528, 27, 30, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(529, 27, 6, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(530, 27, 15, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(531, 27, 24, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(532, 27, 9, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(533, 27, 18, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(534, 27, 27, 'G', 'Admin', '2023-09-19 12:09:11', NULL, NULL),
(535, 9, 3, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(536, 9, 12, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(537, 9, 21, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(538, 9, 30, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(539, 9, 6, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(540, 9, 15, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(541, 9, 24, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(542, 9, 9, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(543, 9, 18, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(544, 9, 27, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(545, 18, 3, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(546, 18, 12, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(547, 18, 21, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(548, 18, 30, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(549, 18, 6, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(550, 18, 15, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(551, 18, 24, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(552, 18, 9, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(553, 18, 18, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(554, 18, 27, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(555, 27, 3, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(556, 27, 12, 'G', 'Admin', '2023-09-19 12:43:12', NULL, NULL),
(557, 27, 21, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(558, 27, 30, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(559, 27, 6, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(560, 27, 15, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(561, 27, 24, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(562, 27, 9, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(563, 27, 18, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(564, 27, 27, 'G', 'Admin', '2023-09-19 12:43:13', NULL, NULL),
(565, 9, 3, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(566, 9, 12, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(567, 9, 21, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(568, 9, 30, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(569, 9, 6, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(570, 9, 15, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(571, 9, 24, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(572, 9, 9, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(573, 9, 18, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(574, 9, 27, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(575, 18, 3, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(576, 18, 12, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(577, 18, 21, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(578, 18, 30, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(579, 18, 6, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(580, 18, 15, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(581, 18, 24, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(582, 18, 9, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(583, 18, 18, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(584, 18, 27, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(585, 27, 3, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(586, 27, 12, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(587, 27, 21, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(588, 27, 30, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(589, 27, 6, 'G', 'Admin', '2023-09-19 12:52:43', NULL, NULL),
(590, 27, 15, 'G', 'Admin', '2023-09-19 12:52:44', NULL, NULL),
(591, 27, 24, 'G', 'Admin', '2023-09-19 12:52:44', NULL, NULL),
(592, 27, 9, 'G', 'Admin', '2023-09-19 12:52:44', NULL, NULL),
(593, 27, 18, 'G', 'Admin', '2023-09-19 12:52:44', NULL, NULL),
(594, 27, 27, 'G', 'Admin', '2023-09-19 12:52:44', NULL, NULL),
(595, 5, 9, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(596, 5, 18, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(597, 5, 27, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(598, 14, 9, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(599, 14, 18, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(600, 14, 27, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(601, 23, 9, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(602, 23, 18, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(603, 23, 27, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(604, 8, 9, 'VA', 'Admin', '2023-09-19 13:14:07', NULL, NULL),
(605, 8, 18, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(606, 8, 27, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(607, 17, 9, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(608, 17, 18, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(609, 17, 27, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(610, 26, 9, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(611, 26, 18, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(612, 26, 27, 'VA', 'Admin', '2023-09-19 13:14:08', NULL, NULL),
(613, 2, 8, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(614, 2, 17, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(615, 2, 26, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(616, 2, 9, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(617, 2, 18, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(618, 2, 27, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(619, 2, 3, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(620, 2, 12, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(621, 2, 21, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(622, 2, 30, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(623, 4, 8, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(624, 4, 17, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(625, 4, 26, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(626, 4, 9, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(627, 4, 18, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(628, 4, 27, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(629, 4, 3, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(630, 4, 12, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(631, 4, 21, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(632, 4, 30, 'MA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(633, 7, 8, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(634, 7, 17, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(635, 7, 26, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(636, 7, 9, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(637, 7, 18, 'VA', 'Admin', '2023-09-19 13:17:53', NULL, NULL),
(638, 7, 27, 'VA', 'Admin', '2023-09-19 13:17:54', NULL, NULL),
(639, 7, 3, 'MA', 'Admin', '2023-09-19 13:17:54', NULL, NULL),
(640, 7, 12, 'MA', 'Admin', '2023-09-19 13:17:54', NULL, NULL),
(641, 7, 21, 'MA', 'Admin', '2023-09-19 13:17:54', NULL, NULL),
(642, 7, 30, 'MA', 'Admin', '2023-09-19 13:17:54', NULL, NULL),
(643, 2, 8, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(644, 2, 17, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(645, 2, 26, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(646, 2, 9, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(647, 2, 18, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(648, 2, 27, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(649, 2, 3, 'MA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(650, 2, 12, 'MA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(651, 2, 21, 'MA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(652, 2, 30, 'MA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(653, 4, 8, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(654, 4, 17, 'VA', 'Admin', '2023-09-20 10:51:45', NULL, NULL),
(655, 4, 26, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(656, 4, 9, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(657, 4, 18, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(658, 4, 27, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(659, 4, 3, 'MA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(660, 4, 12, 'MA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(661, 4, 21, 'MA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(662, 4, 30, 'MA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(663, 7, 8, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(664, 7, 17, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(665, 7, 26, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(666, 7, 9, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(667, 7, 18, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(668, 7, 27, 'VA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(669, 7, 3, 'MA', 'Admin', '2023-09-20 10:51:46', NULL, NULL),
(670, 7, 12, 'MA', 'Admin', '2023-09-20 10:51:47', NULL, NULL),
(671, 7, 21, 'MA', 'Admin', '2023-09-20 10:51:47', NULL, NULL),
(672, 7, 30, 'MA', 'Admin', '2023-09-20 10:51:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_gothram`
--

CREATE TABLE `md_gothram` (
  `id` int(11) NOT NULL,
  `gothro_name` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_gothram`
--

INSERT INTO `md_gothram` (`id`, `gothro_name`, `created_by`, `created_dt`) VALUES
(1, 'Aamat', 'admin@gmail.com', '2023-08-22 15:24:55'),
(2, 'Aatreya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(3, 'Agastya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(4, 'Ahabhunasa / Abnavana', 'admin@gmail.com', '2023-08-22 15:24:55'),
(5, 'Ainakula', 'admin@gmail.com', '2023-08-22 15:24:55'),
(6, 'Akshinthala', 'admin@gmail.com', '2023-08-22 15:24:55'),
(7, 'Alambain', 'admin@gmail.com', '2023-08-22 15:24:55'),
(8, 'Angirasa', 'admin@gmail.com', '2023-08-22 15:24:55'),
(9, 'Atri', 'admin@gmail.com', '2023-08-22 15:24:55'),
(10, 'Audala', 'admin@gmail.com', '2023-08-22 15:24:55'),
(11, 'Bachchas', 'admin@gmail.com', '2023-08-22 15:24:55'),
(12, 'Baghwar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(13, 'Bajju Rajput', 'admin@gmail.com', '2023-08-22 15:24:55'),
(14, 'Basistha', 'admin@gmail.com', '2023-08-22 15:24:55'),
(15, 'Bharadwaj', 'admin@gmail.com', '2023-08-22 15:24:55'),
(16, 'Bhargava', 'admin@gmail.com', '2023-08-22 15:24:55'),
(17, 'Bhaskar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(18, 'Bhrigu', 'admin@gmail.com', '2023-08-22 15:24:55'),
(19, 'Brihadbala', 'admin@gmail.com', '2023-08-22 15:24:55'),
(20, 'Chandratre', 'admin@gmail.com', '2023-08-22 15:24:55'),
(21, 'Chelligara', 'admin@gmail.com', '2023-08-22 15:24:55'),
(22, 'Dammiwal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(23, 'Dhananjaya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(24, 'Dharnasya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(25, 'Dubey', 'admin@gmail.com', '2023-08-22 15:24:55'),
(26, 'Gangsahay', 'admin@gmail.com', '2023-08-22 15:24:55'),
(27, 'Garg Brahmin', 'admin@gmail.com', '2023-08-22 15:24:55'),
(28, 'Gaur', 'admin@gmail.com', '2023-08-22 15:24:55'),
(29, 'Gautam', 'admin@gmail.com', '2023-08-22 15:24:55'),
(30, 'Goyal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(31, 'Guntur (Ananataneni Harish)', 'admin@gmail.com', '2023-08-22 15:24:55'),
(32, 'Harinama', 'admin@gmail.com', '2023-08-22 15:24:55'),
(33, 'Haritasya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(34, 'Jadaun', 'admin@gmail.com', '2023-08-22 15:24:55'),
(35, 'Jamadagni', 'admin@gmail.com', '2023-08-22 15:24:55'),
(36, 'Jilakara', 'admin@gmail.com', '2023-08-22 15:24:55'),
(37, 'Kadam Pandit', 'admin@gmail.com', '2023-08-22 15:24:55'),
(38, 'Kadian', 'admin@gmail.com', '2023-08-22 15:24:55'),
(39, 'Kadiyan', 'admin@gmail.com', '2023-08-22 15:24:55'),
(40, 'Kaim', 'admin@gmail.com', '2023-08-22 15:24:55'),
(41, 'Kalhansh', 'admin@gmail.com', '2023-08-22 15:24:55'),
(42, 'Kapisa', 'admin@gmail.com', '2023-08-22 15:24:55'),
(43, 'Kashav', 'admin@gmail.com', '2023-08-22 15:24:55'),
(44, 'Kashyapa', 'admin@gmail.com', '2023-08-22 15:24:55'),
(45, 'Katyayan', 'admin@gmail.com', '2023-08-22 15:24:55'),
(46, 'Kaundinya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(47, 'Kaushal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(48, 'Kaushik', 'admin@gmail.com', '2023-08-22 15:24:55'),
(49, 'Khanagalu', 'admin@gmail.com', '2023-08-22 15:24:55'),
(50, 'Khilaivar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(51, 'Kini', 'admin@gmail.com', '2023-08-22 15:24:55'),
(52, 'Krishnatrey', 'admin@gmail.com', '2023-08-22 15:24:55'),
(53, 'Lohithyasa', 'admin@gmail.com', '2023-08-22 15:24:55'),
(54, 'Madhukalya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(55, 'Manu', 'admin@gmail.com', '2023-08-22 15:24:55'),
(56, 'Marichi', 'admin@gmail.com', '2023-08-22 15:24:55'),
(57, 'Mithunakula', 'admin@gmail.com', '2023-08-22 15:24:55'),
(58, 'Mudgal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(59, 'Nageswar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(60, 'Nanda', 'admin@gmail.com', '2023-08-22 15:24:55'),
(61, 'Narsingh', 'admin@gmail.com', '2023-08-22 15:24:55'),
(62, 'Neem', 'admin@gmail.com', '2023-08-22 15:24:55'),
(63, 'Pachori', 'admin@gmail.com', '2023-08-22 15:24:55'),
(64, 'Parasar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(65, 'Pikhur', 'admin@gmail.com', '2023-08-22 15:24:55'),
(66, 'Polisthya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(67, 'Rushipala Kapu caste', 'admin@gmail.com', '2023-08-22 15:24:55'),
(68, 'Sabarniya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(69, 'Sanakula', 'admin@gmail.com', '2023-08-22 15:24:55'),
(70, 'Sandilya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(71, 'Saroha', 'admin@gmail.com', '2023-08-22 15:24:55'),
(72, 'Shiva (Shiv-adi)', 'admin@gmail.com', '2023-08-22 15:24:55'),
(73, 'Shringi', 'admin@gmail.com', '2023-08-22 15:24:55'),
(74, 'Singhal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(75, 'Sisotiya(Yadav)', 'admin@gmail.com', '2023-08-22 15:24:55'),
(76, 'Siwal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(77, 'Soukalin', 'admin@gmail.com', '2023-08-22 15:24:55'),
(78, 'Srivatsa', 'admin@gmail.com', '2023-08-22 15:24:55'),
(79, 'Tayal', 'admin@gmail.com', '2023-08-22 15:24:55'),
(80, 'Thalluru', 'admin@gmail.com', '2023-08-22 15:24:55'),
(81, 'Toppo', 'admin@gmail.com', '2023-08-22 15:24:55'),
(82, 'Udityagautama', 'admin@gmail.com', '2023-08-22 15:24:55'),
(83, 'Upamanyu', 'admin@gmail.com', '2023-08-22 15:24:55'),
(84, 'Upreti', 'admin@gmail.com', '2023-08-22 15:24:55'),
(85, 'Uttam', 'admin@gmail.com', '2023-08-22 15:24:55'),
(86, 'Vaid', 'admin@gmail.com', '2023-08-22 15:24:55'),
(87, 'Vainya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(88, 'Vashista', 'admin@gmail.com', '2023-08-22 15:24:55'),
(89, 'Vats', 'admin@gmail.com', '2023-08-22 15:24:55'),
(90, 'Vishnu', 'admin@gmail.com', '2023-08-22 15:24:55'),
(91, 'Vishrava', 'admin@gmail.com', '2023-08-22 15:24:55'),
(92, 'Vishvamitra', 'admin@gmail.com', '2023-08-22 15:24:55'),
(93, 'Gothra No Bar', 'admin@gmail.com', '2023-08-22 15:24:55'),
(94, 'Dhanwantary', 'admin@gmail.com', '2023-08-22 15:24:55'),
(95, 'Moudgalya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(96, 'Vyas', 'admin@gmail.com', '2023-08-22 15:24:55'),
(97, 'Bhimrishi', 'admin@gmail.com', '2023-08-22 15:24:55'),
(98, 'Balakhya', 'admin@gmail.com', '2023-08-22 15:24:55'),
(99, 'Ghrito Kousika', 'admin@gmail.com', '2023-08-22 15:24:55'),
(100, 'Achyutananda', 'admin@gmail.com', '2023-08-22 15:24:55'),
(101, 'Aliman', 'admin@gmail.com', '2023-08-22 15:24:55'),
(102, 'Gargarishi', 'admin@gmail.com', '2023-08-22 15:24:55'),
(103, 'Shaktri', 'admin@gmail.com', '2023-08-22 15:24:55'),
(104, 'Shunak', 'admin@gmail.com', '2023-08-22 15:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `md_income`
--

CREATE TABLE `md_income` (
  `id` int(11) NOT NULL,
  `income` varchar(50) NOT NULL,
  `created_by` varchar(50) DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_income`
--

INSERT INTO `md_income` (`id`, `income`, `created_by`, `created_dt`) VALUES
(1, 'Not Working', 'admin@gmail.com', '2023-08-23 13:44:10'),
(2, 'Upto INR 2 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(3, 'INR 2 Lacs - 4 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(4, 'INR 4 Lacs - 6 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(5, 'INR 6 Lacs - 8 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(6, 'INR 8 Lacs - 10 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(7, 'INR 10 Lacs - 12 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(8, 'INR 12 Lacs - 15 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(9, 'INR 15 Lacs - 18 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(10, 'INR 18 Lacs - 20 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(11, 'INR 20 Lacs - 30 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(12, 'INR 30 Lacs - 40 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(13, 'INR 41 Lacs - 50 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(14, 'INR 51 Lacs - 60 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(15, 'INR 61 Lacs - 70 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(16, 'INR 71 Lacs - 80 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(17, 'INR 81 Lacs - 90 Lacs', 'admin@gmail.com', '2023-08-23 13:44:10'),
(18, 'INR 91 Lacs - 1 Crore', 'admin@gmail.com', '2023-08-23 13:44:10'),
(19, 'Above 1 Crore', 'admin@gmail.com', '2023-08-23 13:44:10'),
(20, 'Upto USD 45,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(21, 'USD 45,000 - 50,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(22, 'USD 50,000 - 55,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(23, 'USD 55,000 - 60,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(24, 'USD 60,000 - 70,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(25, 'USD 70,000 - 80,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(26, 'USD 80,000 - 90,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(27, 'USD 90,000 - 100,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(28, 'USD 100,000 and above', 'admin@gmail.com', '2023-08-23 13:44:10'),
(29, 'Upto GBP 25,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(30, 'GBP 25,000 - 30,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(31, 'GBP 30,000 - 35,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(32, 'GBP 35,000 - 40,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(33, 'GBP 40,000 - 45,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(34, 'GBP 45,000 - 50,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(35, 'GBP 50,000 - 60,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(36, 'GBP 60,000 - 70,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(37, 'GBP 70,000 - 80,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(38, 'GBP 80,000 and above', 'admin@gmail.com', '2023-08-23 13:44:10'),
(39, 'Upto EU 35,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(40, 'EU 35,000 - 40,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(41, 'EU 40,000 - 45,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(42, 'EU 45,000 - 50,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(43, 'EU 50,000 - 55,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(44, 'EU 55,000 - 60,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(45, 'EU 60,000 - 70,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(46, 'EU 70,000 - 80,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(47, 'EU 80,000 - 90,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(48, 'EU 90,000 - 100,000', 'admin@gmail.com', '2023-08-23 13:44:10'),
(49, 'EU 100,000 and above', 'admin@gmail.com', '2023-08-23 13:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `md_jotok_chakra`
--

CREATE TABLE `md_jotok_chakra` (
  `id` int(11) NOT NULL,
  `hus_jotok_rasi_id` int(11) NOT NULL COMMENT 'md_jotok_rashi -> id',
  `wife_jotok_rasi_id` int(11) NOT NULL COMMENT 'md_jotok_rashi -> id',
  `marks` int(11) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_jotok_chakra`
--

INSERT INTO `md_jotok_chakra` (`id`, `hus_jotok_rasi_id`, `wife_jotok_rasi_id`, `marks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(2, 2, 1, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(3, 3, 1, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(4, 4, 1, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(5, 5, 1, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(6, 6, 1, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(7, 7, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(8, 8, 1, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(9, 9, 1, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(10, 10, 1, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(11, 11, 1, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(12, 12, 1, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(13, 13, 1, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(14, 14, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(15, 15, 1, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(16, 16, 1, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(17, 17, 1, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(18, 18, 1, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(19, 19, 1, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(20, 20, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(21, 21, 1, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(22, 22, 1, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(23, 23, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(24, 24, 1, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(25, 25, 1, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(26, 26, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(27, 27, 1, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(28, 28, 1, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(29, 29, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(30, 30, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(31, 31, 1, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(32, 32, 1, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(33, 33, 1, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(34, 34, 1, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(35, 35, 1, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(36, 36, 1, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(37, 37, 1, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(38, 38, 1, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(39, 1, 2, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(40, 2, 2, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(41, 3, 2, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(42, 4, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(43, 5, 2, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(44, 6, 2, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(45, 7, 2, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(46, 8, 2, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(47, 9, 2, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(48, 10, 2, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(49, 11, 2, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(50, 12, 2, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(51, 13, 2, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(52, 14, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(53, 15, 2, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(54, 16, 2, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(55, 17, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(56, 18, 2, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(57, 19, 2, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(58, 20, 2, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(59, 21, 2, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(60, 22, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(61, 23, 2, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(62, 24, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(63, 25, 2, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(64, 26, 2, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(65, 27, 2, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(66, 28, 2, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(67, 29, 2, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(68, 30, 2, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(69, 31, 2, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(70, 32, 2, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(71, 33, 2, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(72, 34, 2, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(73, 35, 2, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(74, 36, 2, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(75, 37, 2, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(76, 38, 2, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(77, 1, 3, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(78, 2, 3, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(79, 3, 3, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(80, 4, 3, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(81, 5, 3, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(82, 6, 3, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(83, 7, 3, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(84, 8, 3, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(85, 9, 3, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(86, 10, 3, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(87, 11, 3, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(88, 12, 3, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(89, 13, 3, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(90, 14, 3, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(91, 15, 3, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(92, 16, 3, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(93, 17, 3, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(94, 18, 3, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(95, 19, 3, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(96, 20, 3, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(97, 21, 3, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(98, 22, 3, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(99, 23, 3, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(100, 24, 3, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(101, 25, 3, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(102, 26, 3, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(103, 27, 3, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(104, 28, 3, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(105, 29, 3, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(106, 30, 3, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(107, 31, 3, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(108, 32, 3, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(109, 33, 3, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(110, 34, 3, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(111, 35, 3, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(112, 36, 3, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(113, 37, 3, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(114, 38, 3, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(115, 1, 4, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(116, 2, 4, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(117, 3, 4, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(118, 4, 4, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(119, 5, 4, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(120, 6, 4, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(121, 7, 4, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(122, 8, 4, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(123, 9, 4, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(124, 10, 4, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(125, 11, 4, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(126, 12, 4, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(127, 13, 4, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(128, 14, 4, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(129, 15, 4, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(130, 16, 4, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(131, 17, 4, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(132, 18, 4, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(133, 19, 4, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(134, 20, 4, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(135, 21, 4, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(136, 22, 4, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(137, 23, 4, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(138, 24, 4, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(139, 25, 4, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(140, 26, 4, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(141, 27, 4, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(142, 28, 4, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(143, 29, 4, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(144, 30, 4, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(145, 31, 4, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(146, 32, 4, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(147, 33, 4, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(148, 34, 4, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(149, 35, 4, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(150, 36, 4, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(151, 37, 4, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(152, 38, 4, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(153, 1, 5, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(154, 2, 5, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(155, 3, 5, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(156, 4, 5, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(157, 5, 5, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(158, 6, 5, 36, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(159, 7, 5, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(160, 8, 5, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(161, 9, 5, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(162, 10, 5, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(163, 11, 5, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(164, 12, 5, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(165, 13, 5, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(166, 14, 5, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(167, 15, 5, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(168, 16, 5, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(169, 17, 5, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(170, 18, 5, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(171, 19, 5, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(172, 20, 5, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(173, 21, 5, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(174, 22, 5, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(175, 23, 5, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(176, 24, 5, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(177, 25, 5, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(178, 26, 5, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(179, 27, 5, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(180, 28, 5, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(181, 29, 5, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(182, 30, 5, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(183, 31, 5, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(184, 32, 5, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(185, 33, 5, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(186, 34, 5, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(187, 35, 5, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(188, 36, 5, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(189, 37, 5, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(190, 38, 5, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(191, 1, 6, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(192, 2, 6, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(193, 3, 6, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(194, 4, 6, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(195, 5, 6, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(196, 6, 6, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(197, 7, 6, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(198, 8, 6, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(199, 9, 6, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(200, 10, 6, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(201, 11, 6, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(202, 12, 6, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(203, 13, 6, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(204, 14, 6, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(205, 15, 6, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(206, 16, 6, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(207, 17, 6, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(208, 18, 6, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(209, 19, 6, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(210, 20, 6, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(211, 21, 6, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(212, 22, 6, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(213, 23, 6, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(214, 24, 6, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(215, 25, 6, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(216, 26, 6, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(217, 27, 6, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(218, 28, 6, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(219, 29, 6, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(220, 30, 6, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(221, 31, 6, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(222, 32, 6, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(223, 33, 6, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(224, 34, 6, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(225, 35, 6, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(226, 36, 6, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(227, 37, 6, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(228, 38, 6, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(229, 1, 7, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(230, 2, 7, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(231, 3, 7, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(232, 4, 7, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(233, 5, 7, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(234, 6, 7, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(235, 7, 7, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(236, 8, 7, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(237, 9, 7, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(238, 10, 7, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(239, 11, 7, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(240, 12, 7, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(241, 13, 7, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(242, 14, 7, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(243, 15, 7, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(244, 16, 7, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(245, 17, 7, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(246, 18, 7, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(247, 19, 7, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(248, 20, 7, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(249, 21, 7, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(250, 22, 7, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(251, 23, 7, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(252, 24, 7, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(253, 25, 7, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(254, 26, 7, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(255, 27, 7, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(256, 28, 7, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(257, 29, 7, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(258, 30, 7, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(259, 31, 7, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(260, 32, 7, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(261, 33, 7, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(262, 34, 7, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(263, 35, 7, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(264, 36, 7, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(265, 37, 7, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(266, 38, 7, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(267, 1, 8, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(268, 2, 8, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(269, 3, 8, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(270, 4, 8, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(271, 5, 8, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(272, 6, 8, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(273, 7, 8, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(274, 8, 8, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(275, 9, 8, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(276, 10, 8, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(277, 11, 8, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(278, 12, 8, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(279, 13, 8, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(280, 14, 8, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(281, 15, 8, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(282, 16, 8, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(283, 17, 8, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(284, 18, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(285, 19, 8, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(286, 20, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(287, 21, 8, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(288, 22, 8, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(289, 23, 8, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(290, 24, 8, 4, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(291, 25, 8, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(292, 26, 8, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(293, 27, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(294, 28, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(295, 29, 8, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(296, 30, 8, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(297, 31, 8, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(298, 32, 8, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(299, 33, 8, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(300, 34, 8, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(301, 35, 8, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(302, 36, 8, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(303, 37, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(304, 38, 8, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(305, 1, 9, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(306, 2, 9, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(307, 3, 9, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(308, 4, 9, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(309, 5, 9, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(310, 6, 9, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(311, 7, 9, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(312, 8, 9, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(313, 9, 9, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(314, 10, 9, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(315, 11, 9, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(316, 12, 9, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(317, 13, 9, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(318, 14, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(319, 15, 9, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(320, 16, 9, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(321, 17, 9, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(322, 18, 9, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(323, 19, 9, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(324, 20, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(325, 21, 9, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(326, 22, 9, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(327, 23, 9, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(328, 24, 9, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(329, 25, 9, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(330, 26, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(331, 27, 9, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(332, 28, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(333, 29, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(334, 30, 9, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(335, 31, 9, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(336, 32, 9, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(337, 33, 9, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(338, 34, 9, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(339, 35, 9, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(340, 36, 9, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(341, 37, 9, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(342, 38, 9, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(343, 1, 10, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(344, 2, 10, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(345, 3, 10, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(346, 4, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(347, 5, 10, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(348, 6, 10, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(349, 7, 10, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(350, 8, 10, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(351, 9, 10, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(352, 10, 10, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(353, 11, 10, 35, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(354, 12, 10, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(355, 13, 10, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(356, 14, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(357, 15, 10, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(358, 16, 10, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(359, 17, 10, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(360, 18, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(361, 19, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(362, 20, 10, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(363, 21, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(364, 22, 10, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(365, 23, 10, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(366, 24, 10, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(367, 25, 10, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(368, 26, 10, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(369, 27, 10, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(370, 28, 10, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(371, 29, 10, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(372, 30, 10, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(373, 31, 10, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(374, 32, 10, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(375, 33, 10, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(376, 34, 10, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(377, 35, 10, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(378, 36, 10, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(379, 37, 10, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(380, 38, 10, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(381, 1, 11, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(382, 2, 11, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(383, 3, 11, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(384, 4, 11, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(385, 5, 11, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(386, 6, 11, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(387, 7, 11, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(388, 8, 11, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(389, 9, 11, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(390, 10, 11, 35, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(391, 11, 11, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(392, 12, 11, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(393, 13, 11, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(394, 14, 11, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(395, 15, 11, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(396, 16, 11, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(397, 17, 11, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(398, 18, 11, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(399, 19, 11, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(400, 20, 11, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(401, 21, 11, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(402, 22, 11, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(403, 23, 11, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(404, 24, 11, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(405, 25, 11, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(406, 26, 11, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(407, 27, 11, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(408, 28, 11, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(409, 29, 11, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(410, 30, 11, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(411, 31, 11, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(412, 32, 11, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(413, 33, 11, 4, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(414, 34, 11, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(415, 35, 11, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(416, 36, 11, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(417, 37, 11, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(418, 38, 11, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(419, 1, 12, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(420, 2, 12, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(421, 3, 12, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(422, 4, 12, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(423, 5, 12, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(424, 6, 12, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(425, 7, 12, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(426, 8, 12, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(427, 9, 12, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(428, 10, 12, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(429, 11, 12, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(430, 12, 12, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(431, 13, 12, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(432, 14, 12, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(433, 15, 12, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(434, 16, 12, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(435, 17, 12, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(436, 18, 12, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(437, 19, 12, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(438, 20, 12, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(439, 21, 12, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(440, 22, 12, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(441, 23, 12, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(442, 24, 12, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(443, 25, 12, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(444, 26, 12, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(445, 27, 12, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(446, 28, 12, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(447, 29, 12, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(448, 30, 12, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(449, 31, 12, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(450, 32, 12, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(451, 33, 12, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(452, 34, 12, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(453, 35, 12, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(454, 36, 12, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(455, 37, 12, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(456, 38, 12, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(457, 1, 13, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(458, 2, 13, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(459, 3, 13, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(460, 4, 13, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(461, 5, 13, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(462, 6, 13, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(463, 7, 13, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(464, 8, 13, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(465, 9, 13, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(466, 10, 13, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(467, 11, 13, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(468, 12, 13, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(469, 13, 13, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(470, 14, 13, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(471, 15, 13, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(472, 16, 13, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(473, 17, 13, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(474, 18, 13, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(475, 19, 13, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(476, 20, 13, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(477, 21, 13, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(478, 22, 13, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(479, 23, 13, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(480, 24, 13, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(481, 25, 13, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(482, 26, 13, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(483, 27, 13, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(484, 28, 13, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(485, 29, 13, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(486, 30, 13, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(487, 31, 13, 4, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(488, 32, 13, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(489, 33, 13, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(490, 34, 13, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(491, 35, 13, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(492, 36, 13, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(493, 37, 13, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(494, 38, 13, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(495, 1, 14, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(496, 2, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(497, 3, 14, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(498, 4, 14, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(499, 5, 14, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(500, 6, 14, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(501, 7, 14, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(502, 8, 14, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(503, 9, 14, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(504, 10, 14, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(505, 11, 14, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(506, 12, 14, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(507, 13, 14, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(508, 14, 14, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(509, 15, 14, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(510, 16, 14, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(511, 17, 14, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(512, 18, 14, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(513, 19, 14, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(514, 20, 14, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(515, 21, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(516, 22, 14, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(517, 23, 14, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(518, 24, 14, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(519, 25, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(520, 26, 14, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(521, 27, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(522, 28, 14, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(523, 29, 14, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(524, 30, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(525, 31, 14, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(526, 32, 14, 4, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(527, 33, 14, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(528, 34, 14, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(529, 35, 14, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(530, 36, 14, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(531, 37, 14, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(532, 38, 14, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(533, 1, 15, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(534, 2, 15, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(535, 3, 15, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(536, 4, 15, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(537, 5, 15, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(538, 6, 15, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(539, 7, 15, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(540, 8, 15, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(541, 9, 15, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(542, 10, 15, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(543, 11, 15, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(544, 12, 15, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(545, 13, 15, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(546, 14, 15, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(547, 15, 15, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(548, 16, 15, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(549, 17, 15, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(550, 18, 15, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(551, 19, 15, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(552, 20, 15, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(553, 21, 15, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(554, 22, 15, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(555, 23, 15, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(556, 24, 15, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(557, 25, 15, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(558, 26, 15, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(559, 27, 15, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(560, 28, 15, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(561, 29, 15, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(562, 30, 15, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(563, 31, 15, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(564, 32, 15, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(565, 33, 15, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(566, 34, 15, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(567, 35, 15, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(568, 36, 15, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(569, 37, 15, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(570, 38, 15, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(571, 1, 16, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(572, 2, 16, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(573, 3, 16, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(574, 4, 16, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(575, 5, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(576, 6, 16, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(577, 7, 16, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(578, 8, 16, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(579, 9, 16, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(580, 10, 16, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(581, 11, 16, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(582, 12, 16, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(583, 13, 16, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(584, 14, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(585, 15, 16, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(586, 16, 16, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(587, 17, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(588, 18, 16, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(589, 19, 16, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(590, 20, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(591, 21, 16, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(592, 22, 16, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(593, 23, 16, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(594, 24, 16, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(595, 25, 16, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(596, 26, 16, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(597, 27, 16, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(598, 28, 16, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(599, 29, 16, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(600, 30, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(601, 31, 16, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(602, 32, 16, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(603, 33, 16, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(604, 34, 16, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(605, 35, 16, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(606, 36, 16, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(607, 37, 16, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(608, 38, 16, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(609, 1, 17, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(610, 2, 17, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(611, 3, 17, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(612, 4, 17, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(613, 5, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(614, 6, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(615, 7, 17, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(616, 8, 17, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(617, 9, 17, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(618, 10, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(619, 11, 17, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(620, 12, 17, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(621, 13, 17, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(622, 14, 17, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(623, 15, 17, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(624, 16, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(625, 17, 17, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(626, 18, 17, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(627, 19, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(628, 20, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(629, 21, 17, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(630, 22, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(631, 23, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(632, 24, 17, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(633, 25, 17, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(634, 26, 17, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(635, 27, 17, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(636, 28, 17, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(637, 29, 17, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(638, 30, 17, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(639, 31, 17, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(640, 32, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(641, 33, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(642, 34, 17, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(643, 35, 17, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(644, 36, 17, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(645, 37, 17, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(646, 38, 17, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(647, 1, 18, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(648, 2, 18, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(649, 3, 18, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(650, 4, 18, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(651, 5, 18, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(652, 6, 18, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(653, 7, 18, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(654, 8, 18, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(655, 9, 18, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(656, 10, 18, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(657, 11, 18, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(658, 12, 18, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(659, 13, 18, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(660, 14, 18, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(661, 15, 18, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(662, 16, 18, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(663, 17, 18, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(664, 18, 18, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(665, 19, 18, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(666, 20, 18, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(667, 21, 18, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(668, 22, 18, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(669, 23, 18, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(670, 24, 18, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(671, 25, 18, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(672, 26, 18, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(673, 27, 18, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(674, 28, 18, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(675, 29, 18, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(676, 30, 18, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(677, 31, 18, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(678, 32, 18, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(679, 33, 18, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(680, 34, 18, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(681, 35, 18, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(682, 36, 18, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(683, 37, 18, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(684, 38, 18, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(685, 1, 19, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(686, 2, 19, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(687, 3, 19, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(688, 4, 19, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(689, 5, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(690, 6, 19, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(691, 7, 19, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(692, 8, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(693, 9, 19, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(694, 10, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(695, 11, 19, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(696, 12, 19, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(697, 13, 19, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(698, 14, 19, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(699, 15, 19, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(700, 16, 19, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(701, 17, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(702, 18, 19, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(703, 19, 19, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(704, 20, 19, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(705, 21, 19, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(706, 22, 19, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(707, 23, 19, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(708, 24, 19, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(709, 25, 19, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(710, 26, 19, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(711, 27, 19, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL);
INSERT INTO `md_jotok_chakra` (`id`, `hus_jotok_rasi_id`, `wife_jotok_rasi_id`, `marks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(712, 28, 19, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(713, 29, 19, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(714, 30, 19, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(715, 31, 19, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(716, 32, 19, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(717, 33, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(718, 34, 19, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(719, 35, 19, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(720, 36, 19, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(721, 37, 19, 4, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(722, 38, 19, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(723, 1, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(724, 2, 20, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(725, 3, 20, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(726, 4, 20, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(727, 5, 20, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(728, 6, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(729, 7, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(730, 8, 20, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(731, 9, 20, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(732, 10, 20, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(733, 11, 20, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(734, 12, 20, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(735, 13, 20, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(736, 14, 20, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(737, 15, 20, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(738, 16, 20, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(739, 17, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(740, 18, 20, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(741, 19, 20, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(742, 20, 20, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(743, 21, 20, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(744, 22, 20, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(745, 23, 20, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(746, 24, 20, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(747, 25, 20, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(748, 26, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(749, 27, 20, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(750, 28, 20, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(751, 29, 20, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(752, 30, 20, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(753, 31, 20, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(754, 32, 20, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(755, 33, 20, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(756, 34, 20, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(757, 35, 20, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(758, 36, 20, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(759, 37, 20, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(760, 38, 20, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(761, 1, 21, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(762, 2, 21, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(763, 3, 21, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(764, 4, 21, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(765, 5, 21, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(766, 6, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(767, 7, 21, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(768, 8, 21, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(769, 9, 21, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(770, 10, 21, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(771, 11, 21, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(772, 12, 21, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(773, 13, 21, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(774, 14, 21, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(775, 15, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(776, 16, 21, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(777, 17, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(778, 18, 21, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(779, 19, 21, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(780, 20, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(781, 21, 21, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(782, 22, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(783, 23, 21, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(784, 24, 21, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(785, 25, 21, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(786, 26, 21, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(787, 27, 21, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(788, 28, 21, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(789, 29, 21, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(790, 30, 21, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(791, 31, 21, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(792, 32, 21, 38, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(793, 33, 21, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(794, 34, 21, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(795, 35, 21, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(796, 36, 21, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(797, 37, 21, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(798, 38, 21, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(799, 1, 22, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(800, 2, 22, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(801, 3, 22, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(802, 4, 22, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(803, 5, 22, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(804, 6, 22, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(805, 7, 22, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(806, 8, 22, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(807, 9, 22, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(808, 10, 22, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(809, 11, 22, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(810, 12, 22, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(811, 13, 22, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(812, 14, 22, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(813, 15, 22, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(814, 16, 22, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(815, 17, 22, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(816, 18, 22, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(817, 19, 22, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(818, 20, 22, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(819, 21, 22, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(820, 22, 22, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(821, 23, 22, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(822, 24, 22, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(823, 25, 22, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(824, 26, 22, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(825, 27, 22, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(826, 28, 22, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(827, 29, 22, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(828, 30, 22, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(829, 31, 22, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(830, 32, 22, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(831, 33, 22, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(832, 34, 22, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(833, 35, 22, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(834, 36, 22, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(835, 37, 22, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(836, 38, 22, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(837, 1, 23, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(838, 2, 23, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(839, 3, 23, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(840, 4, 23, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(841, 5, 23, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(842, 6, 23, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(843, 7, 23, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(844, 8, 23, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(845, 9, 23, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(846, 10, 23, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(847, 11, 23, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(848, 12, 23, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(849, 13, 23, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(850, 14, 23, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(851, 15, 23, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(852, 16, 23, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(853, 17, 23, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(854, 18, 23, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(855, 19, 23, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(856, 20, 23, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(857, 21, 23, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(858, 22, 23, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(859, 23, 23, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(860, 24, 23, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(861, 25, 23, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(862, 26, 23, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(863, 27, 23, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(864, 28, 23, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(865, 29, 23, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(866, 30, 23, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(867, 31, 23, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(868, 32, 23, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(869, 33, 23, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(870, 34, 23, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(871, 35, 23, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(872, 36, 23, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(873, 37, 23, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(874, 38, 23, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(875, 1, 24, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(876, 2, 24, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(877, 3, 24, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(878, 4, 24, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(879, 5, 24, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(880, 6, 24, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(881, 7, 24, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(882, 8, 24, 3, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(883, 9, 24, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(884, 10, 24, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(885, 11, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(886, 12, 24, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(887, 13, 24, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(888, 14, 24, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(889, 15, 24, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(890, 16, 24, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(891, 17, 24, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(892, 18, 24, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(893, 19, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(894, 20, 24, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(895, 21, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(896, 22, 24, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(897, 23, 24, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(898, 24, 24, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(899, 25, 24, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(900, 26, 24, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(901, 27, 24, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(902, 28, 24, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(903, 29, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(904, 30, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(905, 31, 24, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(906, 32, 24, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(907, 33, 24, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(908, 34, 24, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(909, 35, 24, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(910, 36, 24, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(911, 37, 24, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(912, 38, 24, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(913, 1, 25, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(914, 2, 25, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(915, 3, 25, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(916, 4, 25, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(917, 5, 25, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(918, 6, 25, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(919, 7, 25, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(920, 8, 25, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(921, 9, 25, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(922, 10, 25, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(923, 11, 25, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(924, 12, 25, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(925, 13, 25, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(926, 14, 25, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(927, 15, 25, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(928, 16, 25, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(929, 17, 25, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(930, 18, 25, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(931, 19, 25, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(932, 20, 25, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(933, 21, 25, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(934, 22, 25, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(935, 23, 25, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(936, 24, 25, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(937, 25, 25, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(938, 26, 25, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(939, 27, 25, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(940, 28, 25, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(941, 29, 25, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(942, 30, 25, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(943, 31, 25, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(944, 32, 25, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(945, 33, 25, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(946, 34, 25, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(947, 35, 25, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(948, 36, 25, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(949, 37, 25, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(950, 38, 25, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(951, 1, 26, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(952, 2, 26, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(953, 3, 26, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(954, 4, 26, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(955, 5, 26, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(956, 6, 26, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(957, 7, 26, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(958, 8, 26, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(959, 9, 26, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(960, 10, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(961, 11, 26, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(962, 12, 26, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(963, 13, 26, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(964, 14, 26, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(965, 15, 26, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(966, 16, 26, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(967, 17, 26, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(968, 18, 26, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(969, 19, 26, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(970, 20, 26, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(971, 21, 26, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(972, 22, 26, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(973, 23, 26, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(974, 24, 26, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(975, 25, 26, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(976, 26, 26, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(977, 27, 26, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(978, 28, 26, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(979, 29, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(980, 30, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(981, 31, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(982, 32, 26, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(983, 33, 26, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(984, 34, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(985, 35, 26, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(986, 36, 26, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(987, 37, 26, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(988, 38, 26, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(989, 1, 27, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(990, 2, 27, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(991, 3, 27, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(992, 4, 27, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(993, 5, 27, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(994, 6, 27, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(995, 7, 27, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(996, 8, 27, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(997, 9, 27, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(998, 10, 27, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(999, 11, 27, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1000, 12, 27, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1001, 13, 27, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1002, 14, 27, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1003, 15, 27, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1004, 16, 27, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1005, 17, 27, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1006, 18, 27, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1007, 19, 27, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1008, 20, 27, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1009, 21, 27, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1010, 22, 27, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1011, 23, 27, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1012, 24, 27, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1013, 25, 27, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1014, 26, 27, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1015, 27, 27, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1016, 28, 27, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1017, 29, 27, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1018, 30, 27, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1019, 31, 27, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1020, 32, 27, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1021, 33, 27, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1022, 34, 27, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1023, 35, 27, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1024, 36, 27, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1025, 37, 27, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1026, 38, 27, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1027, 1, 28, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1028, 2, 28, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1029, 3, 28, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1030, 4, 28, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1031, 5, 28, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1032, 6, 28, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1033, 7, 28, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1034, 8, 28, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1035, 9, 28, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1036, 10, 28, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1037, 11, 28, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1038, 12, 28, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1039, 13, 28, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1040, 14, 28, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1041, 15, 28, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1042, 16, 28, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1043, 17, 28, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1044, 18, 28, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1045, 19, 28, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1046, 20, 28, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1047, 21, 28, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1048, 22, 28, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1049, 23, 28, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1050, 24, 28, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1051, 25, 28, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1052, 26, 28, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1053, 27, 28, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1054, 28, 28, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1055, 29, 28, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1056, 30, 28, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1057, 31, 28, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1058, 32, 28, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1059, 33, 28, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1060, 34, 28, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1061, 35, 28, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1062, 36, 28, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1063, 37, 28, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1064, 38, 28, 0, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1065, 1, 29, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1066, 2, 29, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1067, 3, 29, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1068, 4, 29, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1069, 5, 29, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1070, 6, 29, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1071, 7, 29, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1072, 8, 29, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1073, 9, 29, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1074, 10, 29, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1075, 11, 29, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1076, 12, 29, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1077, 13, 29, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1078, 14, 29, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1079, 15, 29, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1080, 16, 29, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1081, 17, 29, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1082, 18, 29, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1083, 19, 29, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1084, 20, 29, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1085, 21, 29, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1086, 22, 29, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1087, 23, 29, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1088, 24, 29, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1089, 25, 29, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1090, 26, 29, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1091, 27, 29, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1092, 28, 29, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1093, 29, 29, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1094, 30, 29, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1095, 31, 29, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1096, 32, 29, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1097, 33, 29, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1098, 34, 29, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1099, 35, 29, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1100, 36, 29, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1101, 37, 29, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1102, 38, 29, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1103, 1, 30, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1104, 2, 30, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1105, 3, 30, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1106, 4, 30, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1107, 5, 30, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1108, 6, 30, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1109, 7, 30, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1110, 8, 30, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1111, 9, 30, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1112, 10, 30, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1113, 11, 30, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1114, 12, 30, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1115, 13, 30, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1116, 14, 30, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1117, 15, 30, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1118, 16, 30, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1119, 17, 30, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1120, 18, 30, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1121, 19, 30, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1122, 20, 30, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1123, 21, 30, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1124, 22, 30, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1125, 23, 30, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1126, 24, 30, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1127, 25, 30, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1128, 26, 30, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1129, 27, 30, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1130, 28, 30, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1131, 29, 30, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1132, 30, 30, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1133, 31, 30, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1134, 32, 30, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1135, 33, 30, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1136, 34, 30, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1137, 35, 30, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1138, 36, 30, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1139, 37, 30, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1140, 38, 30, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1141, 1, 31, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1142, 2, 31, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1143, 3, 31, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1144, 4, 31, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1145, 5, 31, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1146, 6, 31, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1147, 7, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1148, 8, 31, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1149, 9, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1150, 10, 31, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1151, 11, 31, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1152, 12, 31, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1153, 13, 31, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1154, 14, 31, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1155, 15, 31, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1156, 16, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1157, 17, 31, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1158, 18, 31, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1159, 19, 31, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1160, 20, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1161, 21, 31, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1162, 22, 31, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1163, 23, 31, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1164, 24, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1165, 25, 31, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1166, 26, 31, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1167, 27, 31, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1168, 28, 31, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1169, 29, 31, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1170, 30, 31, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1171, 31, 31, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1172, 32, 31, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1173, 33, 31, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1174, 34, 31, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1175, 35, 31, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1176, 36, 31, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1177, 37, 31, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1178, 38, 31, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1179, 1, 32, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1180, 2, 32, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1181, 3, 32, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1182, 4, 32, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1183, 5, 32, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1184, 6, 32, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1185, 7, 32, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1186, 8, 32, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1187, 9, 32, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1188, 10, 32, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1189, 11, 32, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1190, 12, 32, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1191, 13, 32, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1192, 14, 32, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1193, 15, 32, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1194, 16, 32, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1195, 17, 32, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1196, 18, 32, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1197, 19, 32, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1198, 20, 32, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1199, 21, 32, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1200, 22, 32, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1201, 23, 32, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1202, 24, 32, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1203, 25, 32, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1204, 26, 32, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1205, 27, 32, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1206, 28, 32, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1207, 29, 32, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1208, 30, 32, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1209, 31, 32, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1210, 32, 32, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1211, 33, 32, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1212, 34, 32, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1213, 35, 32, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1214, 36, 32, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1215, 37, 32, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1216, 38, 32, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1217, 1, 33, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1218, 2, 33, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1219, 3, 33, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1220, 4, 33, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1221, 5, 33, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1222, 6, 33, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1223, 7, 33, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1224, 8, 33, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1225, 9, 33, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1226, 10, 33, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1227, 11, 33, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1228, 12, 33, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1229, 13, 33, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1230, 14, 33, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1231, 15, 33, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1232, 16, 33, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1233, 17, 33, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1234, 18, 33, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1235, 19, 33, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1236, 20, 33, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1237, 21, 33, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1238, 22, 33, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1239, 23, 33, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1240, 24, 33, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1241, 25, 33, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1242, 26, 33, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1243, 27, 33, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1244, 28, 33, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1245, 29, 33, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1246, 30, 33, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1247, 31, 33, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1248, 32, 33, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1249, 33, 33, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1250, 34, 33, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1251, 35, 33, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1252, 36, 33, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1253, 37, 33, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1254, 38, 33, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1255, 1, 34, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1256, 2, 34, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1257, 3, 34, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1258, 4, 34, 32, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1259, 5, 34, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1260, 6, 34, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1261, 7, 34, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1262, 8, 34, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1263, 9, 34, 10, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1264, 10, 34, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1265, 11, 34, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1266, 12, 34, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1267, 13, 34, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1268, 14, 34, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1269, 15, 34, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1270, 16, 34, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1271, 17, 34, 8, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1272, 18, 34, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1273, 19, 34, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1274, 20, 34, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1275, 21, 34, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1276, 22, 34, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1277, 23, 34, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1278, 24, 34, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1279, 25, 34, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1280, 26, 34, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1281, 27, 34, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1282, 28, 34, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1283, 29, 34, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1284, 30, 34, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1285, 31, 34, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1286, 32, 34, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1287, 33, 34, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1288, 34, 34, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1289, 35, 34, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1290, 36, 34, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1291, 37, 34, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1292, 38, 34, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1293, 1, 35, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1294, 2, 35, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1295, 3, 35, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1296, 4, 35, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1297, 5, 35, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1298, 6, 35, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1299, 7, 35, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1300, 8, 35, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1301, 9, 35, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1302, 10, 35, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1303, 11, 35, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1304, 12, 35, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1305, 13, 35, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1306, 14, 35, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1307, 15, 35, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1308, 16, 35, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1309, 17, 35, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1310, 18, 35, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1311, 19, 35, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1312, 20, 35, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1313, 21, 35, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1314, 22, 35, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1315, 23, 35, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1316, 24, 35, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1317, 25, 35, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1318, 26, 35, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1319, 27, 35, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1320, 28, 35, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1321, 29, 35, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1322, 30, 35, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1323, 31, 35, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1324, 32, 35, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1325, 33, 35, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1326, 34, 35, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1327, 35, 35, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1328, 36, 35, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1329, 37, 35, 23, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1330, 38, 35, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1331, 1, 36, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1332, 2, 36, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1333, 3, 36, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1334, 4, 36, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1335, 5, 36, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1336, 6, 36, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1337, 7, 36, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1338, 8, 36, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1339, 9, 36, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1340, 10, 36, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1341, 11, 36, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1342, 12, 36, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1343, 13, 36, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1344, 14, 36, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1345, 15, 36, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1346, 16, 36, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1347, 17, 36, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1348, 18, 36, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1349, 19, 36, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1350, 20, 36, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1351, 21, 36, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1352, 22, 36, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1353, 23, 36, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1354, 24, 36, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1355, 25, 36, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1356, 26, 36, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1357, 27, 36, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1358, 28, 36, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1359, 29, 36, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1360, 30, 36, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1361, 31, 36, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1362, 32, 36, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1363, 33, 36, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1364, 34, 36, 7, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1365, 35, 36, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1366, 36, 36, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1367, 37, 36, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1368, 38, 36, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1369, 1, 37, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1370, 2, 37, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1371, 3, 37, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1372, 4, 37, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1373, 5, 37, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1374, 6, 37, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1375, 7, 37, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1376, 8, 37, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1377, 9, 37, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1378, 10, 37, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1379, 11, 37, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1380, 12, 37, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1381, 13, 37, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1382, 14, 37, 15, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1383, 15, 37, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1384, 16, 37, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1385, 17, 37, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1386, 18, 37, 9, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1387, 19, 37, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1388, 20, 37, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1389, 21, 37, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1390, 22, 37, 19, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1391, 23, 37, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1392, 24, 37, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1393, 25, 37, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1394, 26, 37, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1395, 27, 37, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1396, 28, 37, 31, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1397, 29, 37, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1398, 30, 37, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1399, 31, 37, 29, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1400, 32, 37, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1401, 33, 37, 6, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1402, 34, 37, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1403, 35, 37, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1404, 36, 37, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1405, 37, 37, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1406, 38, 37, 34, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1407, 1, 38, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1408, 2, 38, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1409, 3, 38, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1410, 4, 38, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL);
INSERT INTO `md_jotok_chakra` (`id`, `hus_jotok_rasi_id`, `wife_jotok_rasi_id`, `marks`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1411, 5, 38, 17, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1412, 6, 38, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1413, 7, 38, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1414, 8, 38, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1415, 9, 38, 25, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1416, 10, 38, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1417, 11, 38, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1418, 12, 38, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1419, 13, 38, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1420, 14, 38, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1421, 15, 38, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1422, 16, 38, 24, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1423, 17, 38, 26, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1424, 18, 38, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1425, 19, 38, 13, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1426, 20, 38, 11, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1427, 21, 38, 5, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1428, 22, 38, 12, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1429, 23, 38, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1430, 24, 38, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1431, 25, 38, 27, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1432, 26, 38, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1433, 27, 38, 30, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1434, 28, 38, 21, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1435, 29, 38, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1436, 30, 38, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1437, 31, 38, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1438, 32, 38, 22, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1439, 33, 38, 14, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1440, 34, 38, 16, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1441, 35, 38, 18, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1442, 36, 38, 20, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1443, 37, 38, 33, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL),
(1444, 38, 38, 28, 'admin@gmail.com', '2023-08-14 16:13:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_jotok_rashi`
--

CREATE TABLE `md_jotok_rashi` (
  `id` int(11) NOT NULL,
  `rashi_name_eng` varchar(50) DEFAULT NULL,
  `rashi_name` varchar(20) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_jotok_rashi`
--

INSERT INTO `md_jotok_rashi` (`id`, `rashi_name_eng`, `rashi_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'Mesha ashwini', 'মেষ অশ্বিনী', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(2, 'Mesha bharani', 'মেষ ভরণী', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(3, 'Mesha krittika 1 pa', 'মেষ কৃত্তিকা ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(4, 'Vrishabha krittika 3 pa', 'বৃষ কৃত্তিকা ৩ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(5, 'Vrishabha rohini', 'বৃষ রোহিণী', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(6, 'Vrishabha mrighasira 2 pa', 'বৃষ মৃগঃ ২ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(7, 'Mithuna mrighasira 1 pa', 'মিথুন মৃগঃ ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(8, 'Mithuna ardra', 'মিথুন আর্দ্রা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(9, 'Mithuna punarbasu 3 pa', 'মিথুন পুনঃ ৩ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(10, 'Karka punarbasu 1 pa', 'কর্কট পুনর্বসু ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(11, 'Karka pushya', 'কর্কট পুষ্যা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(12, 'Karka ashlesha', 'কর্কট অশ্লেষা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(13, 'Simha magha', 'সিংহ মঘা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(14, 'Simha purba phalguni', 'সিংহ পুঃ ফঃ', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(15, 'Simha uttar phalguni 1 pa', 'সিংহ উঃ ফঃ ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(16, 'Kanya uttar phalguni 3 pa', 'কন্যা উঃ ফঃ ৩ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(17, 'Kanya hasta', 'কন্যা হস্তা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(18, 'Kanya chitra 2 pa', 'কন্যা চিত্রা ২পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(19, 'Tula chitra 2 pa', 'তুলা চিত্রা ২ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(20, 'Tula swati', 'তুলা স্বাতী', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(21, 'Tula visakha 3 pa', 'তুলা বিশাখা ৩ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(22, 'Vrishchika visakha 1 pa', 'বৃশ্চিক বিশাখা ১পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(23, 'Vrishchika anuradha', 'বৃশ্চিক অনুরাধা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(24, 'Vrishchika jestha', 'বৃশ্চিক জোষ্ঠা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(25, 'Dhanu moola', 'ধনুঃ মূলা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(26, 'Dhanu purbasada half pa', 'ধনু পূর্বাষাঢ়া ½ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(27, 'Dhanu purbasada 3half pa', 'ধনু পূর্বাষাঢ়া ৩½ প', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(28, 'Dhanu uttarsada 1 pa', 'ধনু উত্তরাষাঢ়া ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(29, 'Makara uttarsada 3 pa', 'মকর উত্তরাষাঢ়া ৩ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(30, 'Makara sravana 1half pa', 'মকর শ্রবণা ১½ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(31, 'Makara sravana 2half pa', 'মকর শ্রবণা ২½ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(32, 'Makara dhanishta 2 pa', 'মকর ধনিষ্ঠা ২ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(33, 'Kumbha dhanishta 2 pa', 'কুম্ভ ধনিষ্ঠা ২পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(34, 'Kumbha shatabisha', 'কুম্ভ শতভিষা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(35, 'Kumbha purbabhadra 3 pa', 'কুম্ভ পূর্বভাদ্র ৩ প', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(36, 'Meena purbabhadra 1 pa', 'মীন পূঃ ভাদ্র ১ পা', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(37, 'Meena uttarbhadrapada', 'মীন উঃ ভাদ্রপদ', 'admin', '2023-08-14 00:00:00', NULL, NULL),
(38, 'Meena revati', 'মীন রেবতী', 'admin', '2023-08-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_language`
--

CREATE TABLE `md_language` (
  `id` int(11) NOT NULL,
  `lang_name` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_language`
--

INSERT INTO `md_language` (`id`, `lang_name`, `created_by`, `created_dt`) VALUES
(1, 'Bengali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(2, 'Marathi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(3, 'Hindi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(4, 'Marwari', 'admin@gmail.com', '2023-08-23 17:44:06'),
(5, 'Assamese', 'admin@gmail.com', '2023-08-23 17:44:06'),
(6, 'Oriya', 'admin@gmail.com', '2023-08-23 17:44:06'),
(7, 'Punjabi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(8, 'Tamil', 'admin@gmail.com', '2023-08-23 17:44:06'),
(9, 'English', 'admin@gmail.com', '2023-08-23 17:44:06'),
(10, 'Angika', 'admin@gmail.com', '2023-08-23 17:44:06'),
(11, 'Arunachali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(12, 'Awadhi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(13, 'Bhojpuri', 'admin@gmail.com', '2023-08-23 17:44:06'),
(14, 'Brij', 'admin@gmail.com', '2023-08-23 17:44:06'),
(15, 'Bihari', 'admin@gmail.com', '2023-08-23 17:44:06'),
(16, 'Badaga', 'admin@gmail.com', '2023-08-23 17:44:06'),
(17, 'Chhatisgarhi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(18, 'Dogri', 'admin@gmail.com', '2023-08-23 17:44:06'),
(19, 'French', 'admin@gmail.com', '2023-08-23 17:44:06'),
(20, 'Garhwali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(21, 'Garo', 'admin@gmail.com', '2023-08-23 17:44:06'),
(22, 'Gujarati', 'admin@gmail.com', '2023-08-23 17:44:06'),
(23, 'Haryanvi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(24, 'Himachali/Pahari', 'admin@gmail.com', '2023-08-23 17:44:06'),
(25, 'Kanauji', 'admin@gmail.com', '2023-08-23 17:44:06'),
(26, 'Kannada', 'admin@gmail.com', '2023-08-23 17:44:06'),
(27, 'Kashmiri', 'admin@gmail.com', '2023-08-23 17:44:06'),
(28, 'Khandesi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(29, 'Khasi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(30, 'Konkani', 'admin@gmail.com', '2023-08-23 17:44:06'),
(31, 'Koshali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(32, 'Kumoani', 'admin@gmail.com', '2023-08-23 17:44:06'),
(33, 'Kutchi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(34, 'Lepcha', 'admin@gmail.com', '2023-08-23 17:44:06'),
(35, 'Ladacki', 'admin@gmail.com', '2023-08-23 17:44:06'),
(36, 'Magahi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(37, 'Maithili', 'admin@gmail.com', '2023-08-23 17:44:06'),
(38, 'Malayalam', 'admin@gmail.com', '2023-08-23 17:44:06'),
(39, 'Manipuri', 'admin@gmail.com', '2023-08-23 17:44:06'),
(40, 'Miji', 'admin@gmail.com', '2023-08-23 17:44:06'),
(41, 'Mizo', 'admin@gmail.com', '2023-08-23 17:44:06'),
(42, 'Monpa', 'admin@gmail.com', '2023-08-23 17:44:06'),
(43, 'Nicobarese', 'admin@gmail.com', '2023-08-23 17:44:06'),
(44, 'Nepali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(45, 'Rajasthani', 'admin@gmail.com', '2023-08-23 17:44:06'),
(46, 'Sanskrit', 'admin@gmail.com', '2023-08-23 17:44:06'),
(47, 'Santhali', 'admin@gmail.com', '2023-08-23 17:44:06'),
(48, 'Sindhi', 'admin@gmail.com', '2023-08-23 17:44:06'),
(49, 'Sourashtra', 'admin@gmail.com', '2023-08-23 17:44:06'),
(50, 'Telugu', 'admin@gmail.com', '2023-08-23 17:44:06'),
(51, 'Tripuri', 'admin@gmail.com', '2023-08-23 17:44:06'),
(52, 'Tulu', 'admin@gmail.com', '2023-08-23 17:44:06'),
(53, 'Urdu', 'admin@gmail.com', '2023-08-23 17:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `md_nakhatra`
--

CREATE TABLE `md_nakhatra` (
  `nakhatra_id` int(11) NOT NULL,
  `nakhatra` varchar(155) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_nakhatra`
--

INSERT INTO `md_nakhatra` (`nakhatra_id`, `nakhatra`, `created_at`, `updated_at`) VALUES
(1, 'Ashwini', NULL, NULL),
(2, 'Bharani', NULL, NULL),
(3, 'krittika', NULL, NULL),
(4, 'Rohini', NULL, NULL),
(5, 'Mrighasira', NULL, NULL),
(6, 'Ardra', NULL, NULL),
(7, 'Punarbasu', NULL, NULL),
(8, 'Pushya', NULL, NULL),
(9, 'Ashlesha', NULL, NULL),
(10, 'Magha', NULL, NULL),
(11, 'Purba Phalguni', NULL, NULL),
(12, 'Uttar Phalguni', NULL, NULL),
(13, 'Hasta', NULL, NULL),
(14, 'Chitra', NULL, NULL),
(15, 'Swati', NULL, NULL),
(16, 'Visakha', NULL, NULL),
(17, 'Anuradha', NULL, NULL),
(18, 'Jestha', NULL, NULL),
(19, 'Moola', NULL, NULL),
(20, 'Purbasada', NULL, NULL),
(21, 'Uttar Phalguni', NULL, NULL),
(22, 'Sravana', NULL, NULL),
(23, 'Dhanishta', NULL, NULL),
(24, 'Shatabhisha', NULL, NULL),
(25, 'Purbabhadra', NULL, NULL),
(26, 'Uttarbhadrapada', NULL, NULL),
(27, 'Revati', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_occupation`
--

CREATE TABLE `md_occupation` (
  `id` int(11) NOT NULL,
  `occu_id` int(11) NOT NULL,
  `occu_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_occupation`
--

INSERT INTO `md_occupation` (`id`, `occu_id`, `occu_name`, `created_by`, `created_dt`) VALUES
(1, 1, 'Banking Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(2, 1, 'Chartered Accountant', 'admin@gmail.com', '2023-08-23 13:19:31'),
(3, 1, 'Company Secretary', 'admin@gmail.com', '2023-08-23 13:19:31'),
(4, 1, 'Finance Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(5, 1, 'Investment Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(6, 1, 'Accounting Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:31'),
(7, 2, 'Admin Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(8, 2, 'Human Resources Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(9, 3, 'Actor', 'admin@gmail.com', '2023-08-23 13:19:31'),
(10, 3, 'Advertising Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(11, 3, 'Entertainment Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(12, 3, 'Event Manager', 'admin@gmail.com', '2023-08-23 13:19:31'),
(13, 3, 'Journalist', 'admin@gmail.com', '2023-08-23 13:19:31'),
(14, 3, 'Media Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(15, 3, 'Public Relations Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(16, 4, 'Farming', 'admin@gmail.com', '2023-08-23 13:19:31'),
(17, 4, 'Horticulturist', 'admin@gmail.com', '2023-08-23 13:19:31'),
(18, 4, 'Agricultural Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:31'),
(19, 5, 'Air Hostess / Flight Attendant', 'admin@gmail.com', '2023-08-23 13:19:31'),
(20, 5, 'Pilot / Co-Pilot', 'admin@gmail.com', '2023-08-23 13:19:31'),
(21, 5, 'Other Airline Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(22, 6, 'Architect', 'admin@gmail.com', '2023-08-23 13:19:31'),
(23, 6, 'Interior Designer', 'admin@gmail.com', '2023-08-23 13:19:31'),
(24, 6, 'Landscape Architect', 'admin@gmail.com', '2023-08-23 13:19:31'),
(25, 7, 'Animator', 'admin@gmail.com', '2023-08-23 13:19:31'),
(26, 7, 'Commercial Artist', 'admin@gmail.com', '2023-08-23 13:19:31'),
(27, 7, 'Web / UX Designers', 'admin@gmail.com', '2023-08-23 13:19:31'),
(28, 7, 'Artist (Others)', 'admin@gmail.com', '2023-08-23 13:19:31'),
(29, 7, 'Arts & Craftsman', 'admin@gmail.com', '2023-08-23 13:19:31'),
(30, 7, 'Creative Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(31, 8, 'Beautician', 'admin@gmail.com', '2023-08-23 13:19:31'),
(32, 8, 'Fashion Designer', 'admin@gmail.com', '2023-08-23 13:19:31'),
(33, 8, 'Hairstylist', 'admin@gmail.com', '2023-08-23 13:19:31'),
(34, 8, 'Jewellery Designer', 'admin@gmail.com', '2023-08-23 13:19:31'),
(35, 8, 'Designer (Others)', 'admin@gmail.com', '2023-08-23 13:19:31'),
(36, 9, 'Customer Support / BPO / KPO Professional', 'admin@gmail.com', '2023-08-23 13:19:31'),
(37, 10, 'IAS', 'admin@gmail.com', '2023-08-23 13:19:31'),
(38, 10, 'IRS', 'admin@gmail.com', '2023-08-23 13:19:32'),
(39, 10, 'IES', 'admin@gmail.com', '2023-08-23 13:19:32'),
(40, 10, 'IFS', 'admin@gmail.com', '2023-08-23 13:19:32'),
(41, 10, 'IPS', 'admin@gmail.com', '2023-08-23 13:19:32'),
(42, 10, 'WBCS', 'admin@gmail.com', '2023-08-23 13:19:32'),
(43, 10, 'Law Enforcement Employee (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(44, 11, 'Airforce', 'admin@gmail.com', '2023-08-23 13:19:32'),
(45, 11, 'Army', 'admin@gmail.com', '2023-08-23 13:19:32'),
(46, 11, 'Navy', 'admin@gmail.com', '2023-08-23 13:19:32'),
(47, 11, 'Defense Services (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(48, 12, 'Lecturer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(49, 12, 'Professor', 'admin@gmail.com', '2023-08-23 13:19:32'),
(50, 12, 'Research Assistant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(51, 12, 'Research Scholar', 'admin@gmail.com', '2023-08-23 13:19:32'),
(52, 12, 'Teacher', 'admin@gmail.com', '2023-08-23 13:19:32'),
(53, 12, 'Training Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(54, 13, 'Civil Engineer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(55, 13, 'Electronics / Telecom Engineer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(56, 13, 'Mechanical / Production Engineer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(57, 13, 'Non IT Engineer (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(58, 14, 'Chef / Sommelier / Food Critic', 'admin@gmail.com', '2023-08-23 13:19:32'),
(59, 14, 'Catering Professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(60, 14, 'Hotel &amp; Hospitality Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(61, 15, 'Software Developer / Programmer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(62, 15, 'Software Consultant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(63, 15, 'Hardware &amp; Networking professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(64, 15, 'Software Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(65, 16, 'Lawyer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(66, 16, 'Legal Assistant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(67, 16, 'Legal Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(68, 17, 'Ambulance Driver', 'admin@gmail.com', '2023-08-23 13:19:32'),
(69, 17, 'Analytical Chemist (P.T.)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(70, 17, 'Anesthesiologist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(71, 17, 'Asst. Matron', 'admin@gmail.com', '2023-08-23 13:19:32'),
(72, 17, 'Clerk', 'admin@gmail.com', '2023-08-23 13:19:32'),
(73, 17, 'Clinical Registrar', 'admin@gmail.com', '2023-08-23 13:19:32'),
(74, 17, 'Dark Room Attendant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(75, 17, 'Dentist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(76, 17, 'Deputy Medical Superintendent', 'admin@gmail.com', '2023-08-23 13:19:32'),
(77, 17, 'Doctor', 'admin@gmail.com', '2023-08-23 13:19:32'),
(78, 17, 'Dresser', 'admin@gmail.com', '2023-08-23 13:19:32'),
(79, 17, 'Hospital Superintendent', 'admin@gmail.com', '2023-08-23 13:19:32'),
(80, 17, 'Medical Transcriptionist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(81, 17, 'Matron', 'admin@gmail.com', '2023-08-23 13:19:32'),
(82, 17, 'Medical Superintendent', 'admin@gmail.com', '2023-08-23 13:19:32'),
(83, 17, 'Nurse', 'admin@gmail.com', '2023-08-23 13:19:32'),
(84, 17, 'O.T. Attendant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(85, 17, 'Obs and Gynec', 'admin@gmail.com', '2023-08-23 13:19:32'),
(86, 17, 'Optometrist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(87, 17, 'Pathologist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(88, 17, 'Pharmacist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(89, 17, 'Pharmacist/Compounder', 'admin@gmail.com', '2023-08-23 13:19:32'),
(90, 17, 'Physician Assistant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(91, 17, 'Physiotherapist / Occupational Therapist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(92, 17, 'Psychologist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(93, 17, 'Radiologist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(94, 17, 'RMO/RSO/MO', 'admin@gmail.com', '2023-08-23 13:19:32'),
(95, 17, 'Senior Clerk', 'admin@gmail.com', '2023-08-23 13:19:32'),
(96, 17, 'Sr. Resident', 'admin@gmail.com', '2023-08-23 13:19:32'),
(97, 17, 'Store Keeper', 'admin@gmail.com', '2023-08-23 13:19:32'),
(98, 17, 'Surgeon', 'admin@gmail.com', '2023-08-23 13:19:32'),
(99, 17, 'Surgical Specialist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(100, 17, 'Veterinary Doctor', 'admin@gmail.com', '2023-08-23 13:19:32'),
(101, 17, 'Ward Boy /Ayah', 'admin@gmail.com', '2023-08-23 13:19:32'),
(102, 17, 'X­ray Tech./Radiograph.', 'admin@gmail.com', '2023-08-23 13:19:32'),
(103, 17, 'Therapist (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(104, 17, 'Medical / Healthcare Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(105, 18, 'Merchant Naval Officer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(106, 18, 'Mariner', 'admin@gmail.com', '2023-08-23 13:19:32'),
(107, 19, 'Marketing Professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(108, 19, 'Sales Professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(109, 20, 'Biologist / Botanist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(110, 20, 'Physicist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(111, 20, 'Science Professional (Others)', 'admin@gmail.com', '2023-08-23 13:19:32'),
(112, 20, 'Scientist', 'admin@gmail.com', '2023-08-23 13:19:32'),
(113, 21, 'CxO / Chairman / Director / President', 'admin@gmail.com', '2023-08-23 13:19:32'),
(114, 21, 'VP / AVP / GM / DGM', 'admin@gmail.com', '2023-08-23 13:19:32'),
(115, 21, 'Sr. Manager / Manager', 'admin@gmail.com', '2023-08-23 13:19:32'),
(116, 21, 'Consultant / Supervisor / Team Leads', 'admin@gmail.com', '2023-08-23 13:19:32'),
(117, 21, 'Team Member / Staff', 'admin@gmail.com', '2023-08-23 13:19:32'),
(118, 21, 'Officer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(119, 22, 'Agent / Broker / Trader / Contractor', 'admin@gmail.com', '2023-08-23 13:19:32'),
(120, 22, 'Business Owner / Entrepreneur', 'admin@gmail.com', '2023-08-23 13:19:32'),
(121, 22, 'Consultant', 'admin@gmail.com', '2023-08-23 13:19:32'),
(122, 22, 'Customer Care Professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(123, 22, 'Librarian', 'admin@gmail.com', '2023-08-23 13:19:32'),
(124, 22, 'Politician', 'admin@gmail.com', '2023-08-23 13:19:32'),
(125, 22, 'Social Worker / Volunteer / NGO', 'admin@gmail.com', '2023-08-23 13:19:32'),
(126, 22, 'Sportsman', 'admin@gmail.com', '2023-08-23 13:19:32'),
(127, 22, 'Technician', 'admin@gmail.com', '2023-08-23 13:19:32'),
(128, 22, 'Travel & Transport Professional', 'admin@gmail.com', '2023-08-23 13:19:32'),
(129, 22, 'Writer', 'admin@gmail.com', '2023-08-23 13:19:32'),
(130, 22, 'Others', 'admin@gmail.com', '2023-08-23 13:19:32'),
(131, 23, 'Student', 'admin@gmail.com', '2023-08-23 13:19:32'),
(132, 23, 'Retired', 'admin@gmail.com', '2023-08-23 13:19:32'),
(133, 23, 'Home-maker', 'admin@gmail.com', '2023-08-23 13:19:32'),
(134, 23, 'Not Working', 'admin@gmail.com', '2023-08-23 13:19:32');

-- --------------------------------------------------------

--
-- Table structure for table `md_occu_catg`
--

CREATE TABLE `md_occu_catg` (
  `id` int(11) NOT NULL,
  `catg_name` varchar(100) NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'admin@gmail.com',
  `created_dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_occu_catg`
--

INSERT INTO `md_occu_catg` (`id`, `catg_name`, `created_by`, `created_dt`) VALUES
(1, '---  Accounting, Banking & Finance', 'admin@gmail.com', '2023-08-23 12:51:43'),
(2, '---  Administration & HR', 'admin@gmail.com', '2023-08-23 12:51:43'),
(3, '---  Advertising, Media & Entertainment', 'admin@gmail.com', '2023-08-23 12:51:43'),
(4, '--- Agriculture', 'admin@gmail.com', '2023-08-23 12:51:43'),
(5, '--- Airline & Aviation', 'admin@gmail.com', '2023-08-23 12:51:43'),
(6, '--- Architecture & Design', 'admin@gmail.com', '2023-08-23 12:51:43'),
(7, '--- Artists, Animators & Web Designers', 'admin@gmail.com', '2023-08-23 12:51:43'),
(8, '--- Beauty, Fashion & Jewellery Designers', 'admin@gmail.com', '2023-08-23 12:51:43'),
(9, '--- BPO, KPO, &  Customer Support', 'admin@gmail.com', '2023-08-23 12:51:43'),
(10, '--- Civil Services / Law Enforcement', 'admin@gmail.com', '2023-08-23 12:51:43'),
(11, '--- Defense', 'admin@gmail.com', '2023-08-23 12:51:43'),
(12, '--- Education & Training', 'admin@gmail.com', '2023-08-23 12:51:43'),
(13, '--- Engineering', 'admin@gmail.com', '2023-08-23 12:51:43'),
(14, '--- Hotel & Hospitality', 'admin@gmail.com', '2023-08-23 12:51:43'),
(15, '--- IT & Software Engineering', 'admin@gmail.com', '2023-08-23 12:51:43'),
(16, '--- Legal', 'admin@gmail.com', '2023-08-23 12:51:43'),
(17, '--- Medical & Healthcare', 'admin@gmail.com', '2023-08-23 12:51:43'),
(18, '--- Merchant Navy', 'admin@gmail.com', '2023-08-23 12:51:43'),
(19, '--- Sales & Marketing', 'admin@gmail.com', '2023-08-23 12:51:43'),
(20, '--- Science', 'admin@gmail.com', '2023-08-23 12:51:43'),
(21, '--- Corporate Professionals', 'admin@gmail.com', '2023-08-23 12:51:43'),
(22, '--- Other Job Roles', 'admin@gmail.com', '2023-08-23 12:51:43'),
(23, '--- Non Working', 'admin@gmail.com', '2023-08-23 12:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `md_pos_nakhatra`
--

CREATE TABLE `md_pos_nakhatra` (
  `id` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `nakhatra_id` int(11) NOT NULL,
  `from_deg` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `to_deg` decimal(10,6) NOT NULL DEFAULT 0.000000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_pos_nakhatra`
--

INSERT INTO `md_pos_nakhatra` (`id`, `pos`, `nakhatra_id`, `from_deg`, `to_deg`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.000000, 13.200000, NULL, NULL),
(2, 1, 2, 13.200000, 26.400000, NULL, NULL),
(3, 1, 3, 26.400000, 30.000000, NULL, NULL),
(4, 2, 3, 0.000000, 10.000000, NULL, NULL),
(5, 2, 4, 10.000000, 23.200000, NULL, NULL),
(6, 2, 5, 23.200000, 30.000000, NULL, NULL),
(7, 3, 5, 0.000000, 6.400000, NULL, NULL),
(8, 3, 6, 6.400000, 20.000000, NULL, NULL),
(9, 3, 7, 20.000000, 30.000000, NULL, NULL),
(10, 4, 7, 0.000000, 3.200000, NULL, NULL),
(11, 4, 8, 3.200000, 16.400000, NULL, NULL),
(12, 4, 9, 16.400000, 30.000000, NULL, NULL),
(13, 5, 10, 0.000000, 13.200000, NULL, NULL),
(14, 5, 11, 13.200000, 26.400000, NULL, NULL),
(15, 5, 12, 26.400000, 30.000000, NULL, NULL),
(16, 6, 12, 0.000000, 10.000000, NULL, NULL),
(17, 6, 13, 10.000000, 23.200000, NULL, NULL),
(18, 6, 14, 23.200000, 30.000000, NULL, NULL),
(19, 7, 14, 0.000000, 6.400000, NULL, NULL),
(20, 7, 15, 6.400000, 20.000000, NULL, NULL),
(21, 7, 16, 20.000000, 30.000000, NULL, NULL),
(22, 8, 16, 0.000000, 3.200000, NULL, NULL),
(23, 8, 17, 3.200000, 16.400000, NULL, NULL),
(24, 8, 18, 16.400000, 30.000000, NULL, NULL),
(25, 9, 19, 0.000000, 13.200000, NULL, NULL),
(26, 9, 20, 13.200000, 26.400000, NULL, NULL),
(27, 9, 21, 26.400000, 30.000000, NULL, NULL),
(28, 10, 21, 0.000000, 10.000000, NULL, NULL),
(29, 10, 22, 10.000000, 23.200000, NULL, NULL),
(30, 10, 23, 23.200000, 30.000000, NULL, NULL),
(31, 11, 23, 0.000000, 6.400000, NULL, NULL),
(32, 11, 24, 6.400000, 20.000000, NULL, NULL),
(33, 11, 25, 20.000000, 30.000000, NULL, NULL),
(34, 12, 25, 0.000000, 3.200000, NULL, NULL),
(35, 12, 26, 3.200000, 16.400000, NULL, NULL),
(36, 12, 27, 16.400000, 30.000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_rashi_match_frndsp`
--

CREATE TABLE `md_rashi_match_frndsp` (
  `id` int(11) NOT NULL,
  `frm_rashi_id` int(11) NOT NULL,
  `to_rashi_id` int(11) NOT NULL,
  `match_flag` enum('G','M','VA') NOT NULL DEFAULT 'M',
  `created_by` varchar(50) NOT NULL DEFAULT 'admin',
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_rashi_match_frndsp`
--

INSERT INTO `md_rashi_match_frndsp` (`id`, `frm_rashi_id`, `to_rashi_id`, `match_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 1, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 1, 5, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(3, 1, 9, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(4, 1, 7, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(5, 1, 10, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(6, 2, 2, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(7, 2, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(8, 2, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(9, 2, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(10, 2, 8, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(11, 2, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(12, 2, 1, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(13, 2, 5, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(14, 2, 9, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(15, 2, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(16, 2, 7, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(17, 2, 11, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(18, 3, 3, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(19, 3, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(20, 3, 7, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(21, 3, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(22, 3, 11, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(23, 3, 9, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(24, 4, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(25, 4, 8, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(26, 4, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(27, 4, 2, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(28, 4, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(29, 4, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(30, 4, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(31, 5, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(32, 5, 5, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(33, 5, 9, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(34, 5, 10, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(35, 5, 11, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(36, 6, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(37, 6, 2, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(38, 6, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(39, 6, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(40, 6, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(41, 6, 7, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(42, 6, 11, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(43, 6, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(44, 6, 9, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(45, 6, 5, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(46, 7, 7, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(47, 7, 11, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(48, 7, 3, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(49, 7, 2, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(50, 7, 6, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(51, 7, 10, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(52, 7, 1, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(53, 8, 8, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(54, 8, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(55, 8, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(56, 8, 2, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(57, 9, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(58, 9, 9, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(59, 9, 1, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(60, 9, 5, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(61, 9, 7, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(62, 9, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(63, 9, 10, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(64, 10, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(65, 10, 2, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(66, 10, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(67, 10, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(68, 10, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(69, 10, 8, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(70, 10, 1, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(71, 10, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(72, 10, 5, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(73, 10, 7, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(74, 10, 9, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(75, 10, 11, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(76, 11, 1, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(77, 11, 3, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(78, 11, 7, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(79, 11, 5, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(80, 11, 6, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(81, 11, 2, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(82, 11, 8, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(83, 11, 12, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(84, 12, 12, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(85, 12, 4, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(86, 12, 8, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(87, 12, 2, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(88, 12, 6, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(89, 12, 10, 'G', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(90, 12, 3, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(91, 12, 11, 'M', 'admin', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(92, 1, 6, 'VA', 'admin', NULL, NULL, NULL),
(93, 1, 3, 'VA', 'admin', NULL, NULL, NULL),
(94, 8, 6, 'VA', 'admin', NULL, NULL, NULL),
(95, 8, 3, 'VA', 'admin', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_rashi_pos`
--

CREATE TABLE `md_rashi_pos` (
  `position` int(11) NOT NULL,
  `rashi` varchar(155) NOT NULL,
  `beng_rashi` varchar(155) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_rashi_pos`
--

INSERT INTO `md_rashi_pos` (`position`, `rashi`, `beng_rashi`, `created_at`, `updated_at`) VALUES
(1, 'Aries', 'মেষরাশি', NULL, NULL),
(2, 'Taurus', 'বৃষরাশি', NULL, NULL),
(3, 'Gemini', 'মিথুনরাশি', NULL, NULL),
(4, 'Cancer', 'কর্কটরাশি', NULL, NULL),
(5, 'Leo', 'সিংহরাশি', NULL, NULL),
(6, 'Virgo', 'কন্যারাশি', NULL, NULL),
(7, 'Libra', 'তুলারাশি', NULL, NULL),
(8, 'Scorpio', 'বৃশ্চিকরাশি', NULL, NULL),
(9, 'Sagittarius', 'ধনুরাশি', NULL, NULL),
(10, 'Capricorn', 'মকররাশি', NULL, NULL),
(11, 'Aquarius', 'কুম্ভরাশি', NULL, NULL),
(12, 'Pisces', 'মীনরাশি', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_sunshine_rashi`
--

CREATE TABLE `md_sunshine_rashi` (
  `id` int(11) NOT NULL,
  `rashi_id` int(11) NOT NULL,
  `frm_date` int(11) NOT NULL,
  `frm_month` int(11) NOT NULL,
  `to_date` int(11) NOT NULL,
  `to_month` int(11) NOT NULL,
  `created_by` varchar(50) DEFAULT 'admin',
  `created_dt` datetime DEFAULT '2023-09-18 17:00:00',
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_sunshine_rashi`
--

INSERT INTO `md_sunshine_rashi` (`id`, `rashi_id`, `frm_date`, `frm_month`, `to_date`, `to_month`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 20, 3, 19, 4, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(2, 2, 20, 4, 21, 5, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(3, 3, 22, 5, 23, 6, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(4, 4, 24, 6, 23, 7, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(5, 5, 24, 7, 22, 8, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(6, 6, 23, 8, 23, 9, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(7, 7, 24, 9, 24, 10, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(8, 8, 25, 10, 22, 11, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(9, 9, 23, 11, 21, 12, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(10, 10, 22, 12, 18, 1, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(11, 11, 19, 1, 20, 2, 'admin', '2023-09-18 17:00:00', NULL, NULL),
(12, 12, 21, 2, 19, 3, 'admin', '2023-09-18 17:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `md_user_login`
--

CREATE TABLE `md_user_login` (
  `id` bigint(22) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_id` bigint(22) NOT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `pay_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `last_login` datetime DEFAULT NULL,
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'Y',
  `created_by` varchar(50) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `md_user_login`
--

INSERT INTO `md_user_login` (`id`, `profile_id`, `user_name`, `user_id`, `email_id`, `password`, `pay_status`, `last_login`, `active_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 'Utsav', 9830966682, 'utsab@gmail.com', '$2b$10$7s8CQxSSccD1QoJ6aHshQO3h41JkWeVCPtW7WtPcygw8bmhBpEV0i', 'N', NULL, 'Y', 'undefined', '2023-08-25 15:52:18', NULL, NULL),
(15, 42, 'Sayantika Dhar', 8240404524, 'pagli@gmail.com', '$2b$10$w.PV1lKaF3iwMc/nSUW9Je9hO5RYB9JF1EtZPHi6iXBgcgv8hbCcW', 'N', NULL, 'Y', 'Sayantika Dhar', '2023-09-20 12:46:59', NULL, NULL),
(16, 43, 'Subham Samanta', 9051203118, 'pagol@gmail.com', '$2b$10$7Lg6InxfHRibVTDifALsY.sYcI6YaJ.ji.SQ0RDMUzy3ao/L4/X6G', 'N', NULL, 'Y', 'Subham Samanta', '2023-09-20 12:51:15', NULL, NULL),
(17, 44, 'Eshita Dey', 7980332264, 'eshita@gmail.com', '$2b$10$npP/p9phdKSad0LbiRHcGO64Lo2/o3WwGPK0paVhBoZZRyysJUlqC', 'N', NULL, 'Y', 'Eshita Dey', '2023-09-20 12:56:40', NULL, NULL),
(18, 55, 'Poulomi Nath', 8335976178, 'poulomi@gmail.com', '$2b$10$8w2Y2GF2923tUdnOvI/Tne/WYsPAy.8XVVcuQRv8mB64Jl/sHYH22', 'N', NULL, 'Y', 'Poulomi Nath', '2023-09-20 13:12:28', NULL, NULL),
(20, 58, 'Amit Mondal', 7890833920, 'amit@gmail.com', '$2b$10$w7y1LRTLBq90THtcQkX69.nhUkco.uX5JbIW75bYStDOa03DrlYuK', 'N', NULL, 'Y', 'Amit Mondal', '2023-09-20 13:38:45', NULL, NULL),
(21, 59, 'abcd', 1234567890, 'abc@gmail.com', '$2b$10$hL3J1ximJQBnnwnCkflqB.NJhxvCn/BYocrEZ1xusumETgwnBH0cS', 'N', NULL, 'Y', 'abcd', '2023-09-22 11:48:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_education`
--

CREATE TABLE `td_user_education` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `heigh_education` int(11) DEFAULT NULL,
  `emp_type` enum('G','P','B','D','S','N') DEFAULT NULL,
  `occup` int(11) DEFAULT NULL,
  `income` varchar(20) DEFAULT NULL,
  `work_location` int(11) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `ancis_org` int(11) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `citizen` varchar(50) DEFAULT NULL,
  `edu_in_dtls` text DEFAULT NULL,
  `collage` varchar(100) DEFAULT NULL,
  `occup_in_dtls` text DEFAULT NULL,
  `org_name` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_education`
--

INSERT INTO `td_user_education` (`id`, `user_id`, `heigh_education`, `emp_type`, `occup`, `income`, `work_location`, `state`, `city`, `ancis_org`, `country`, `citizen`, `edu_in_dtls`, `collage`, `occup_in_dtls`, `org_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(2, 12, 80, 'P', 6, '2', 0, 'Tamil Nadu', 'Chennai', 0, 'india', NULL, NULL, NULL, NULL, NULL, 'Goborgonesh', '2023-08-29 16:35:40', NULL, NULL),
(3, 13, 82, 'G', 6, '4', 0, 'Delhi', 'Delhi', 0, 'india', NULL, NULL, NULL, NULL, NULL, 'Test1', '2023-08-29 17:07:51', NULL, NULL),
(4, 13, 82, 'G', 6, '4', 0, 'Delhi', 'Delhi', 0, 'india', NULL, NULL, NULL, NULL, NULL, 'Test1', '2023-08-29 17:23:32', NULL, NULL),
(6, 5, 85, 'P', 0, '2', 1, 'West Bengal', 'Kolkata', 0, 'Kolkata', 'undefined', NULL, NULL, NULL, NULL, 'test6', '2023-09-04 11:25:59', 'undefined', '2023-09-04 11:31:37'),
(8, 6, 86, 'B', 5, '8', 2, 'Delhi', 'Delhi', 0, 'Delhi', 'undefined', NULL, NULL, NULL, NULL, 'test6', '2023-09-04 11:25:59', 'undefined', '2023-09-04 11:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `td_user_hobbies_int`
--

CREATE TABLE `td_user_hobbies_int` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hobbies_interest` varchar(100) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_hobbies_int`
--

INSERT INTO `td_user_hobbies_int` (`id`, `user_id`, `hobbies_interest`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 12, 'Acting', 'test', '2023-09-04 13:23:01', NULL, NULL),
(2, 12, 'Adventure sports', 'test', '2023-09-04 13:23:01', NULL, NULL),
(3, 12, 'Alternative healing / Medicine', 'test', '2023-09-04 13:23:01', NULL, NULL),
(4, 12, 'Art / Handicraft', 'test', '2023-09-04 13:23:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_hobbies_lang`
--

CREATE TABLE `td_user_hobbies_lang` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lang_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_hobbies_lang`
--

INSERT INTO `td_user_hobbies_lang` (`id`, `user_id`, `lang_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 12, 'Ben', 'test', '2023-09-04 13:23:01', NULL, NULL),
(2, 12, 'Eng', 'test', '2023-09-04 13:23:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_hobbies_movies`
--

CREATE TABLE `td_user_hobbies_movies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_hobbies_movies`
--

INSERT INTO `td_user_hobbies_movies` (`id`, `user_id`, `movie_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 12, 'Act', 'test', '2023-09-04 13:23:01', NULL, NULL),
(2, 12, 'Ani', 'test', '2023-09-04 13:23:01', NULL, NULL),
(3, 12, 'Cla', 'test', '2023-09-04 13:23:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_hobbies_music`
--

CREATE TABLE `td_user_hobbies_music` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `music_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_hobbies_music`
--

INSERT INTO `td_user_hobbies_music` (`id`, `user_id`, `music_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 12, 'Chris', 'test', '2023-09-04 13:23:01', NULL, NULL),
(2, 12, 'Clas', 'test', '2023-09-04 13:23:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_hobbies_sports`
--

CREATE TABLE `td_user_hobbies_sports` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sports_name` varchar(100) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_hobbies_sports`
--

INSERT INTO `td_user_hobbies_sports` (`id`, `user_id`, `sports_name`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 12, 'AmerFoot', 'test', '2023-09-04 13:23:01', NULL, NULL),
(2, 12, 'Arch', 'test', '2023-09-04 13:23:01', NULL, NULL),
(3, 12, 'Badm', 'test', '2023-09-04 13:23:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_kyc_list`
--

CREATE TABLE `td_user_kyc_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `doc_type` int(11) DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_kyc_list`
--

INSERT INTO `td_user_kyc_list` (`id`, `user_id`, `doc_type`, `file_path`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(2, 1, 1, '7.jpg', 'sayantika', '2023-09-13 16:43:09', 'sayantika', '2023-09-13 17:41:38');

-- --------------------------------------------------------

--
-- Table structure for table `td_user_partner_pref`
--

CREATE TABLE `td_user_partner_pref` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `age_frm` int(11) DEFAULT NULL,
  `age_to` int(11) DEFAULT NULL,
  `marital_status` enum('Y','N') DEFAULT NULL,
  `mother_tounge` int(11) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_partner_pref`
--

INSERT INTO `td_user_partner_pref` (`id`, `user_id`, `age_frm`, `age_to`, `marital_status`, `mother_tounge`, `religion`, `location`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 1, 16, 20, 'Y', 1, 'Hindu', 1, NULL, NULL, 'undefined', '2023-08-31 19:10:56'),
(9, 42, 18, 30, 'N', 1, 'Hindu', 7, 'Sayantika Dhar', '2023-09-20 13:21:14', 'Sayantika Dhar', '2023-09-20 13:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `td_user_profile`
--

CREATE TABLE `td_user_profile` (
  `id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `phone_no` bigint(22) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `location_id` int(11) DEFAULT NULL,
  `latt_long` varchar(200) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `ac_for` varchar(20) DEFAULT NULL,
  `mother_tong` varchar(50) DEFAULT NULL,
  `about_us` text DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `gender` enum('F','M','O') DEFAULT NULL,
  `caste_id` int(11) DEFAULT NULL,
  `oth_comm_marry_flag` enum('Y','N') NOT NULL,
  `phone_approved_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `email_approved_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `pay_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `plan_id` int(11) NOT NULL,
  `kundali_file_name` varchar(100) DEFAULT NULL,
  `rasi_id` int(11) DEFAULT NULL,
  `nakhatra_id` int(11) DEFAULT NULL,
  `jotok_rasi_id` int(11) DEFAULT NULL,
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_profile`
--

INSERT INTO `td_user_profile` (`id`, `u_name`, `phone_no`, `email_id`, `location_id`, `latt_long`, `dob`, `ac_for`, `mother_tong`, `about_us`, `religion`, `gender`, `caste_id`, `oth_comm_marry_flag`, `phone_approved_flag`, `email_approved_flag`, `pay_flag`, `plan_id`, `kundali_file_name`, `rasi_id`, `nakhatra_id`, `jotok_rasi_id`, `active_flag`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 'test1', 9830966682, 'utsab@gmail.com', 3, '18.975,72.825833', '2020-06-05 00:00:00', 'myself', '2', NULL, 'Muslim', 'F', 1, 'Y', 'N', 'N', 'N', 0, NULL, NULL, NULL, NULL, 'N', 'undefined', '2023-08-25 15:52:18', 'sayantika', '2023-09-01 18:28:04'),
(42, 'Sayantika Dhar', 8240404524, 'pagli@gmail.com', 7, '22.569722,88.369722', '1999-05-04 16:50:00', 'myself', '1', NULL, 'Hindu', 'F', NULL, 'Y', 'N', 'N', 'N', 0, '1-199-05-04T11-20-00.000Z.json', 9, 19, 25, 'N', 'undefined', '2023-09-20 12:46:59', NULL, NULL),
(43, 'Subham Samanta', 9051203118, 'pagol@gmail.com', 7, '22.569722,88.369722', '1996-05-29 07:30:00', 'myself', '1', NULL, 'Hindu', 'M', NULL, 'Y', 'N', 'N', 'N', 0, '43-1996-05-29T02-00-00.000Z.json', 6, 14, 18, 'N', 'undefined', '2023-09-20 12:51:15', NULL, NULL),
(44, 'Eshita Dey', 7980332264, 'eshita@gmail.com', 7, '22.569722,88.369722', '1999-04-13 17:20:00', 'myself', '1', NULL, 'Hindu', 'F', NULL, 'Y', 'N', 'N', 'N', 0, '44-1999-04-13T11-50-00.000Z.json', 11, 25, 35, 'N', 'undefined', '2023-09-20 12:56:40', NULL, NULL),
(55, 'Poulomi Nath', 8335976178, 'poulomi@gmail.com', 7, '22.569722,88.369722', '1999-08-15 22:30:00', 'myself', '1', NULL, 'Hindu', 'F', NULL, 'Y', 'N', 'N', 'N', 0, '55-1999-08-15T17-00-00.000Z.json', 6, 13, 17, 'N', 'undefined', '2023-09-20 13:12:28', NULL, NULL),
(58, 'Amit Mondal', 7890833920, 'amit@gmail.com', 7, '22.569722,88.369722', '1999-07-22 09:20:00', 'myself', '1', NULL, 'Hindu', 'M', NULL, 'Y', 'N', 'N', 'N', 0, '58-1999-07-22T03-50-00.000Z.json', 7, 16, 21, 'N', 'undefined', '2023-09-20 13:38:45', NULL, NULL),
(59, 'abcd', 1234567890, 'abc@gmail.com', 7, '22.569722,88.369722', '1998-04-05 17:06:00', 'M', '3', NULL, 'Hindu', 'F', NULL, 'Y', 'N', 'N', 'N', 0, '59-1998-04-05T11-36-00.000Z.json', 4, 8, 11, 'N', 'undefined', '2023-09-22 11:48:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `td_user_profile_image`
--

CREATE TABLE `td_user_profile_image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT 'admin@gmail.com',
  `created_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_profile_image`
--

INSERT INTO `td_user_profile_image` (`id`, `user_id`, `file_path`, `created_by`, `created_dt`) VALUES
(1, 2, '2_1.jpg', 'undefined', '2023-09-18 12:43:11'),
(2, 2, '2_2.jpg', 'undefined', '2023-09-18 12:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `td_user_p_dtls`
--

CREATE TABLE `td_user_p_dtls` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `marital_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `height` varchar(20) DEFAULT NULL,
  `weight` varchar(25) DEFAULT NULL,
  `family_status` enum('M','U','R','A') DEFAULT NULL COMMENT 'M-> Middle class\r\nU-> Upper middle class\r\nR-> Rich\r\nA-> Affluent',
  `family_type` enum('J','N') DEFAULT NULL,
  `family_values` enum('O','T','M','L') DEFAULT NULL,
  `disability_flag` enum('Y','N') DEFAULT NULL,
  `body_type` varchar(50) DEFAULT NULL,
  `drinking_habbits` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `eating_habbits` varchar(50) DEFAULT NULL,
  `smoking_habbits` varchar(50) DEFAULT NULL,
  `no_sister` int(11) DEFAULT NULL,
  `no_brother` int(11) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `family_location` varchar(100) DEFAULT NULL,
  `about_my_family` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `td_user_p_dtls`
--

INSERT INTO `td_user_p_dtls` (`id`, `user_id`, `marital_status`, `height`, `weight`, `family_status`, `family_type`, `family_values`, `disability_flag`, `body_type`, `drinking_habbits`, `age`, `eating_habbits`, `smoking_habbits`, `no_sister`, `no_brother`, `father_occupation`, `mother_occupation`, `family_location`, `about_my_family`, `created_by`, `created_dt`, `modified_by`, `modified_dt`) VALUES
(1, 11, 'N', '4-8', NULL, 'M', 'J', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Modni', '2023-08-29 16:15:13', NULL, NULL),
(7, 42, 'N', '4-6', NULL, 'M', 'J', 'O', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sayantika Dhar', '2023-09-20 13:28:26', NULL, NULL),
(8, 43, 'N', '4-6', NULL, 'M', 'J', 'O', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sayantika Dhar', '2023-09-20 13:29:06', NULL, NULL),
(9, 44, 'N', '4-6', NULL, 'M', 'J', 'O', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sayantika Dhar', '2023-09-20 13:29:16', NULL, NULL),
(10, 55, 'N', '4-6', NULL, 'M', 'J', 'O', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sayantika Dhar', '2023-09-20 13:29:29', NULL, NULL),
(11, 58, 'N', '4-6', NULL, 'M', 'J', 'O', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Amit Mondal', '2023-09-20 13:40:08', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `md_caste_list`
--
ALTER TABLE `md_caste_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_document`
--
ALTER TABLE `md_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_education`
--
ALTER TABLE `md_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_edu_catg`
--
ALTER TABLE `md_edu_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_frndsp_btwn_number`
--
ALTER TABLE `md_frndsp_btwn_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_gothram`
--
ALTER TABLE `md_gothram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_income`
--
ALTER TABLE `md_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_jotok_chakra`
--
ALTER TABLE `md_jotok_chakra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_jotok_rashi`
--
ALTER TABLE `md_jotok_rashi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_language`
--
ALTER TABLE `md_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_nakhatra`
--
ALTER TABLE `md_nakhatra`
  ADD PRIMARY KEY (`nakhatra_id`);

--
-- Indexes for table `md_occupation`
--
ALTER TABLE `md_occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_occu_catg`
--
ALTER TABLE `md_occu_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_pos_nakhatra`
--
ALTER TABLE `md_pos_nakhatra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_rashi_match_frndsp`
--
ALTER TABLE `md_rashi_match_frndsp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_rashi_pos`
--
ALTER TABLE `md_rashi_pos`
  ADD PRIMARY KEY (`position`);

--
-- Indexes for table `md_sunshine_rashi`
--
ALTER TABLE `md_sunshine_rashi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_user_login`
--
ALTER TABLE `md_user_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `profile_id_2` (`profile_id`,`user_id`,`email_id`);

--
-- Indexes for table `td_user_education`
--
ALTER TABLE `td_user_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_hobbies_int`
--
ALTER TABLE `td_user_hobbies_int`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_hobbies_lang`
--
ALTER TABLE `td_user_hobbies_lang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_hobbies_movies`
--
ALTER TABLE `td_user_hobbies_movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_hobbies_music`
--
ALTER TABLE `td_user_hobbies_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_hobbies_sports`
--
ALTER TABLE `td_user_hobbies_sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_kyc_list`
--
ALTER TABLE `td_user_kyc_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_partner_pref`
--
ALTER TABLE `td_user_partner_pref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_profile`
--
ALTER TABLE `td_user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_no_2` (`phone_no`,`email_id`);

--
-- Indexes for table `td_user_profile_image`
--
ALTER TABLE `td_user_profile_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `td_user_p_dtls`
--
ALTER TABLE `td_user_p_dtls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `md_caste_list`
--
ALTER TABLE `md_caste_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `md_document`
--
ALTER TABLE `md_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `md_education`
--
ALTER TABLE `md_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `md_edu_catg`
--
ALTER TABLE `md_edu_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `md_frndsp_btwn_number`
--
ALTER TABLE `md_frndsp_btwn_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=673;

--
-- AUTO_INCREMENT for table `md_gothram`
--
ALTER TABLE `md_gothram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `md_income`
--
ALTER TABLE `md_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `md_jotok_chakra`
--
ALTER TABLE `md_jotok_chakra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1445;

--
-- AUTO_INCREMENT for table `md_jotok_rashi`
--
ALTER TABLE `md_jotok_rashi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `md_language`
--
ALTER TABLE `md_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `md_occupation`
--
ALTER TABLE `md_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `md_occu_catg`
--
ALTER TABLE `md_occu_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `md_pos_nakhatra`
--
ALTER TABLE `md_pos_nakhatra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `md_rashi_match_frndsp`
--
ALTER TABLE `md_rashi_match_frndsp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `md_rashi_pos`
--
ALTER TABLE `md_rashi_pos`
  MODIFY `position` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `md_sunshine_rashi`
--
ALTER TABLE `md_sunshine_rashi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `md_user_login`
--
ALTER TABLE `md_user_login`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `td_user_education`
--
ALTER TABLE `td_user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `td_user_hobbies_int`
--
ALTER TABLE `td_user_hobbies_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `td_user_hobbies_lang`
--
ALTER TABLE `td_user_hobbies_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_user_hobbies_movies`
--
ALTER TABLE `td_user_hobbies_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `td_user_hobbies_music`
--
ALTER TABLE `td_user_hobbies_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_user_hobbies_sports`
--
ALTER TABLE `td_user_hobbies_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `td_user_kyc_list`
--
ALTER TABLE `td_user_kyc_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_user_partner_pref`
--
ALTER TABLE `td_user_partner_pref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `td_user_profile`
--
ALTER TABLE `td_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `td_user_profile_image`
--
ALTER TABLE `td_user_profile_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `td_user_p_dtls`
--
ALTER TABLE `td_user_p_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
