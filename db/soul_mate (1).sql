-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2023 at 03:32 PM
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
  `active_flag` enum('Y','N') NOT NULL DEFAULT 'N',
  `created_by` varchar(50) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `md_rashi_pos`
--
ALTER TABLE `md_rashi_pos`
  ADD PRIMARY KEY (`position`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_document`
--
ALTER TABLE `md_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_education`
--
ALTER TABLE `md_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_edu_catg`
--
ALTER TABLE `md_edu_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_gothram`
--
ALTER TABLE `md_gothram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_income`
--
ALTER TABLE `md_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_jotok_chakra`
--
ALTER TABLE `md_jotok_chakra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_jotok_rashi`
--
ALTER TABLE `md_jotok_rashi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_language`
--
ALTER TABLE `md_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_occupation`
--
ALTER TABLE `md_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_occu_catg`
--
ALTER TABLE `md_occu_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_pos_nakhatra`
--
ALTER TABLE `md_pos_nakhatra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_rashi_pos`
--
ALTER TABLE `md_rashi_pos`
  MODIFY `position` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `md_user_login`
--
ALTER TABLE `md_user_login`
  MODIFY `id` bigint(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_education`
--
ALTER TABLE `td_user_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_hobbies_int`
--
ALTER TABLE `td_user_hobbies_int`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_hobbies_lang`
--
ALTER TABLE `td_user_hobbies_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_hobbies_movies`
--
ALTER TABLE `td_user_hobbies_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_hobbies_music`
--
ALTER TABLE `td_user_hobbies_music`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_hobbies_sports`
--
ALTER TABLE `td_user_hobbies_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_kyc_list`
--
ALTER TABLE `td_user_kyc_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_partner_pref`
--
ALTER TABLE `td_user_partner_pref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_profile`
--
ALTER TABLE `td_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `td_user_p_dtls`
--
ALTER TABLE `td_user_p_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
