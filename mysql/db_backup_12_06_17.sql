-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2017 at 04:28 PM
-- Server version: 5.5.55-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `applicant_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE IF NOT EXISTS `applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `id_number` bigint(20) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_applicants_on_email` (`email`) USING BTREE,
  UNIQUE KEY `index_applicants_on_reset_password_token` (`reset_password_token`) USING BTREE,
  UNIQUE KEY `index_applicants_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `username`, `id_number`, `confirmation_token`, `confirmed_at`, `confirmation_sent_at`) VALUES
(3, 'mawande@littlepig.cc', '$2a$11$D5cH7MIUT6DfFp6/hh5KgOErcYQSIFq.iQRU7YrFdEUIkb/lZLkrG', NULL, NULL, NULL, 1, '2017-05-29 10:49:35', '2017-05-29 10:49:35', '127.0.0.1', '127.0.0.1', '2017-05-29 10:49:35', '2017-05-29 10:49:35', 'mawande', 123, NULL, '2017-06-12 13:42:32', NULL),
(4, 'asavela@littlepig.cc', '$2a$11$iSE1OBwt7y24Mg5755e/huYO3Oh2w.JRnhCx8IH/MeOqGuxegEB4y', '6e5e95ca3c1a86078cfc45945cad857282dc7470bf0cc098a58032f06e2abf48', '2017-06-09 13:28:05', NULL, 2, '2017-06-09 13:29:45', '2017-06-06 09:31:12', '192.168.1.90', '192.168.1.90', '2017-06-06 09:31:12', '2017-06-09 13:29:45', 'Asavela', 9412030524084, NULL, '2017-06-12 13:42:32', NULL),
(5, 'monwabisi@littlepig.cc', '$2a$11$lvmABH2Nlz/nHE1/JLLIN.8TNYGJ5XEbd.XyrNS.UqTcO8FsEWxDK', NULL, NULL, NULL, 1, '2017-06-06 09:33:20', '2017-06-06 09:33:20', '192.168.1.101', '192.168.1.101', '2017-06-06 09:33:20', '2017-06-06 09:33:20', 'monwabisi', 8911156332087, NULL, '2017-06-12 13:42:32', NULL),
(30, 'seidlecalvin@gmail.com', '$2a$11$V1O.BEPPgYtqcAPUj4aVqeQoZkB3yyum1nMSBkvMAHJUeFRvAeUge', NULL, NULL, NULL, 1, '2017-06-12 13:40:56', '2017-06-12 13:40:56', '127.0.0.1', '127.0.0.1', '2017-06-12 11:46:07', '2017-06-12 13:40:56', 'Calvin1234', 9109015351081, 'SukDxUirUN5GAAsoVNos', '2017-06-12 13:38:12', '2017-06-12 11:46:07'),
(32, 'calvin@littlepig.cc', '$2a$11$4N1bjOax8/Nc2nIiBYgJbu7NixplDxE60zBdXwdN43dFzUlYNa55.', NULL, NULL, NULL, 1, '2017-06-12 13:50:16', '2017-06-12 13:50:16', '127.0.0.1', '127.0.0.1', '2017-06-12 13:48:52', '2017-06-12 13:50:16', 'Cal', 9109015351080, 'j1zVk7NopLyxspGM_LvJ', '2017-06-12 13:50:06', '2017-06-12 13:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_addresses`
--

CREATE TABLE IF NOT EXISTS `applicant_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Address_Line_1` varchar(255) DEFAULT NULL,
  `Address_Line_2` varchar(255) DEFAULT NULL,
  `Address_Line_3` varchar(255) DEFAULT NULL,
  `Postal_Code` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_pm_city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_addresses_on_applicant_id` (`applicant_id`) USING BTREE,
  KEY `index_applicant_addresses_on_applicant_pm_city_id` (`applicant_pm_city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `applicant_addresses`
--

INSERT INTO `applicant_addresses` (`id`, `Address_Line_1`, `Address_Line_2`, `Address_Line_3`, `Postal_Code`, `applicant_id`, `created_at`, `updated_at`, `applicant_pm_city_id`) VALUES
(14, 'Cuba', 'Cuba', 'Cuba', 4546, 5, '2017-06-06 09:49:33', '2017-06-06 09:49:33', 5);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_current_occupations`
--

CREATE TABLE IF NOT EXISTS `applicant_current_occupations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Current_Occupation` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_current_occupations`
--

INSERT INTO `applicant_current_occupations` (`id`, `Current_Occupation`, `created_at`, `updated_at`) VALUES
(1, 'Unemployed', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(2, 'Student', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(3, 'Employed', '2017-05-31 03:00:00', '2017-05-31 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_disabilities`
--

CREATE TABLE IF NOT EXISTS `applicant_disabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Disability` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `applicant_disabilities`
--

INSERT INTO `applicant_disabilities` (`id`, `Disability`, `created_at`, `updated_at`) VALUES
(1, 'No', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(2, 'Yes', '2017-05-31 02:00:00', '2017-05-31 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_disability_types`
--

CREATE TABLE IF NOT EXISTS `applicant_disability_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_disability_id` int(11) DEFAULT NULL,
  `Disability_Type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_disability_types_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_disability_types_on_applicant_disability_id` (`applicant_disability_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `applicant_disability_types`
--

INSERT INTO `applicant_disability_types` (`id`, `applicant_id`, `applicant_disability_id`, `Disability_Type`, `created_at`, `updated_at`) VALUES
(3, 4, 1, 'kkkkk', '2017-06-06 09:36:02', '2017-06-06 09:36:02'),
(4, 5, 1, 'Sick', '2017-06-06 09:46:57', '2017-06-06 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_employment_types`
--

CREATE TABLE IF NOT EXISTS `applicant_employment_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Employment_Type` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `applicant_employment_types`
--

INSERT INTO `applicant_employment_types` (`id`, `Employment_Type`, `created_at`, `updated_at`) VALUES
(1, 'Internship', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(2, 'Learnership', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(3, 'Work Place Skills Program', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(4, 'Part-Time', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(5, 'Permanent', '2017-05-31 03:00:00', '2017-05-31 03:00:00'),
(6, 'Fixed-Term', '2017-05-31 03:00:00', '2017-05-31 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_experiences`
--

CREATE TABLE IF NOT EXISTS `applicant_experiences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Job_Name` varchar(255) DEFAULT NULL,
  `Company_Name` varchar(255) DEFAULT NULL,
  `Duties` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_employment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_experiences_on_applicant_id` (`applicant_id`) USING BTREE,
  KEY `index_applicant_experiences_on_applicant_employment_type_id` (`applicant_employment_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `applicant_experiences`
--

INSERT INTO `applicant_experiences` (`id`, `Job_Name`, `Company_Name`, `Duties`, `Start_Date`, `End_Date`, `applicant_id`, `created_at`, `updated_at`, `applicant_employment_type_id`) VALUES
(5, 'Software Develeoper', 'Little Pig CC', 'Fixing existing programs/application. Installing softwares, and Hardware fixing', '2017-06-06', '2017-05-06', 5, '2017-06-06 10:00:28', '2017-06-06 10:00:28', 1),
(6, '1', '1', '1', '2017-06-06', '2017-06-06', 4, '2017-06-06 10:09:09', '2017-06-06 10:09:09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_field_of_interests`
--

CREATE TABLE IF NOT EXISTS `applicant_field_of_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Interest` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `applicant_field_of_interests`
--

INSERT INTO `applicant_field_of_interests` (`id`, `Field_Of_Interest`, `created_at`, `updated_at`) VALUES
(1, 'Software Development', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Support Services', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'System Analyst', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Software Tester', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'Database Administrator', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(6, 'Network Administrator ', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(7, 'Security Specialist  ', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(8, 'System Administrator', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_field_of_studies`
--

CREATE TABLE IF NOT EXISTS `applicant_field_of_studies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Field_Of_Study` varchar(255) DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_date` date DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_university_id` int(11) DEFAULT NULL,
  `applicant_qual_id` int(11) DEFAULT NULL,
  `applicant_qual_status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_field_of_studies_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_field_of_studies_on_applicant_university_id` (`applicant_university_id`),
  KEY `index_applicant_field_of_studies_on_applicant_qual_id` (`applicant_qual_id`),
  KEY `index_applicant_field_of_studies_on_applicant_qual_status_id` (`applicant_qual_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `applicant_field_of_studies`
--

INSERT INTO `applicant_field_of_studies` (`id`, `Field_Of_Study`, `Start_Date`, `End_date`, `applicant_id`, `applicant_university_id`, `applicant_qual_id`, `applicant_qual_status_id`, `created_at`, `updated_at`) VALUES
(5, 'lljkhj', '2013-02-05', '2016-04-20', 4, 23, 18, 2, '2017-06-06 09:46:08', '2017-06-06 09:46:21'),
(6, 'Software development', '2017-06-06', '2017-06-06', 5, 11, 9, 1, '2017-06-06 09:52:46', '2017-06-06 09:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_foi_programs`
--

CREATE TABLE IF NOT EXISTS `applicant_foi_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_program_interest_id` int(11) DEFAULT NULL,
  `applicant_field_of_interest_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_foi_programs_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_foi_programs_on_applicant_program_interest_id` (`applicant_program_interest_id`),
  KEY `index_applicant_foi_programs_on_applicant_field_of_interest_id` (`applicant_field_of_interest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `applicant_foi_programs`
--

INSERT INTO `applicant_foi_programs` (`id`, `applicant_id`, `applicant_program_interest_id`, `applicant_field_of_interest_id`, `created_at`, `updated_at`) VALUES
(13, 4, 3, 5, '2017-06-06 09:32:14', '2017-06-06 09:32:14'),
(14, 4, 2, 5, '2017-06-06 09:32:29', '2017-06-06 09:32:29'),
(15, 5, 3, 1, '2017-06-06 09:34:47', '2017-06-06 09:34:47'),
(20, 32, 1, 2, '2017-06-12 14:23:42', '2017-06-12 14:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_genders`
--

CREATE TABLE IF NOT EXISTS `applicant_genders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_genders`
--

INSERT INTO `applicant_genders` (`id`, `Gender`, `created_at`, `updated_at`) VALUES
(1, 'Female', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Male', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Unspecified', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_licenses`
--

CREATE TABLE IF NOT EXISTS `applicant_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_id` int(11) DEFAULT NULL,
  `applicant_license_code_id` int(11) DEFAULT NULL,
  `applicant_license_status_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_licenses_on_applicant_id` (`applicant_id`),
  KEY `index_applicant_licenses_on_applicant_license_code_id` (`applicant_license_code_id`),
  KEY `index_applicant_licenses_on_applicant_license_status_id` (`applicant_license_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `applicant_licenses`
--

INSERT INTO `applicant_licenses` (`id`, `applicant_id`, `applicant_license_code_id`, `applicant_license_status_id`, `created_at`, `updated_at`) VALUES
(8, 4, 9, 3, '2017-06-06 09:34:05', '2017-06-06 09:34:05'),
(9, 5, 9, 3, '2017-06-06 09:40:31', '2017-06-06 09:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_license_codes`
--

CREATE TABLE IF NOT EXISTS `applicant_license_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Drivers_License_Code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `applicant_license_codes`
--

INSERT INTO `applicant_license_codes` (`id`, `Drivers_License_Code`, `created_at`, `updated_at`) VALUES
(1, 'A', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(2, 'B', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(3, 'C1', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(4, 'C', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(5, 'EB', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(6, 'EC', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(7, 'A1', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(8, 'EC1', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(9, 'None', '2017-05-31 02:00:00', '2017-05-31 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_license_statuses`
--

CREATE TABLE IF NOT EXISTS `applicant_license_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Drivers_License_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_license_statuses`
--

INSERT INTO `applicant_license_statuses` (`id`, `Drivers_License_Status`, `created_at`, `updated_at`) VALUES
(1, 'Drivers License', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(2, 'Learners License', '2017-05-31 02:00:00', '2017-05-31 02:00:00'),
(3, 'None', '2017-05-31 02:00:00', '2017-05-31 02:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_marital_statuses`
--

CREATE TABLE IF NOT EXISTS `applicant_marital_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Marital_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `applicant_marital_statuses`
--

INSERT INTO `applicant_marital_statuses` (`id`, `Marital_Status`, `created_at`, `updated_at`) VALUES
(1, 'Single', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Married', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Divorced', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Widowed', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_nationalities`
--

CREATE TABLE IF NOT EXISTS `applicant_nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nationality` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `applicant_nationalities`
--

INSERT INTO `applicant_nationalities` (`id`, `Nationality`, `created_at`, `updated_at`) VALUES
(1, 'SA Citizen By Birth', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Permanent Resident', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Temporary Resident', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'SA Citizen By Descent', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'SA Citizen By Naturalization', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_personal_details`
--

CREATE TABLE IF NOT EXISTS `applicant_personal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(255) DEFAULT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Middle_Name` varchar(255) DEFAULT NULL,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Alt_Contact_Number` varchar(255) DEFAULT NULL,
  `Criminal_Record` int(11) DEFAULT NULL,
  `Skills` text,
  `Application_Status` int(11) DEFAULT NULL,
  `Number_Of_Dependancies` int(11) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `applicant_race_id` int(11) DEFAULT NULL,
  `applicant_gender_id` int(11) DEFAULT NULL,
  `applicant_marital_status_id` int(11) DEFAULT NULL,
  `applicant_nationality_id` int(11) DEFAULT NULL,
  `applicant_current_occupation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_personal_details_on_applicant_id` (`applicant_id`) USING BTREE,
  KEY `index_applicant_personal_details_on_applicant_race_id` (`applicant_race_id`),
  KEY `index_applicant_personal_details_on_applicant_gender_id` (`applicant_gender_id`),
  KEY `index_applicant_personal_details_on_applicant_marital_status_id` (`applicant_marital_status_id`),
  KEY `index_applicant_personal_details_on_applicant_nationality_id` (`applicant_nationality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `applicant_personal_details`
--

INSERT INTO `applicant_personal_details` (`id`, `Surname`, `First_Name`, `Middle_Name`, `Contact_Number`, `Alt_Contact_Number`, `Criminal_Record`, `Skills`, `Application_Status`, `Number_Of_Dependancies`, `applicant_id`, `created_at`, `updated_at`, `applicant_race_id`, `applicant_gender_id`, `applicant_marital_status_id`, `applicant_nationality_id`, `applicant_current_occupation_id`) VALUES
(12, 'Madolo', '', '', '', '', NULL, '', NULL, NULL, 3, '2017-05-29 10:51:06', '2017-05-29 10:59:56', NULL, NULL, NULL, NULL, NULL),
(13, 'j', 'j', 'j', '0835491760', '0734728043', 0, 'yhhgtyyyr', 1, 0, 4, '2017-06-06 09:33:40', '2017-06-06 09:33:40', 1, 1, 1, 1, 3),
(14, 'Xinwa', 'Monwabsisi', 'Tsotetsi', '0710678694', '0732435089', 0, 'C#,Vb.net, Java, Ruby on Rails,wordpress,Html,Css,Javascripts,ASP.NET', 1, 6, 5, '2017-06-06 09:39:32', '2017-06-06 09:39:32', 1, 1, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicant_pm_cities`
--

CREATE TABLE IF NOT EXISTS `applicant_pm_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_p_municipality_id` int(11) DEFAULT NULL,
  `City_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_pm_cities_on_applicant_p_municipality_id` (`applicant_p_municipality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=839 ;

--
-- Dumping data for table `applicant_pm_cities`
--

INSERT INTO `applicant_pm_cities` (`id`, `applicant_p_municipality_id`, `City_Name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Stutterheim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Somerset East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 'East London', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 'Graaf-Reinet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 'Maclear', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 'Lady Frere', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 'Ngcobo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 'Komga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 'Flagstaff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 'Cofimvaba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 'Cradock', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 'Mthatha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 'Kareedouw', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 'Jeffreys Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 'Grahamstwon ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 'Matatiele', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 'Dutywa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 'Bizana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 'Qumbu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 'Gcuwa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 'Port Alfred', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 22, 'Port Elizabeth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 23, 'Peddie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 24, 'Ntabankulu ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 25, 'Libode', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 26, 'Port St Johns', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 27, 'Alice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 28, 'Cala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 29, 'Lady Grey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 30, 'Kirkwood', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 31, 'Mount Frere', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 32, 'Burgersdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 33, 'Queenstown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 34, 'Bethlehem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 35, 'Trompsburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 36, 'Koffiefontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 37, 'Frankfort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 38, 'Phuthaditjhaba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 39, 'Bloemfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 40, 'Ladybrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 41, 'Theunissen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 42, 'Welkom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 43, 'Sasolburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 44, 'Zastron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 45, 'Kroonstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 46, 'Bothaville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 47, 'Parys', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 48, 'Reitz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 49, 'Vrede', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 50, 'Ficksburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 51, 'Boshof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 52, 'Bultfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 1, 'Keiskammahoek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 1, 'Cathcart', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 1, 'Kei Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 2, 'Petersburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 2, 'Pearston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 2, 'Cookhouse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 3, 'Dimbaza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 3, 'Bisho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 3, 'Mdantsane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 3, 'Kidd''s Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 3, 'King William''s Town', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 3, 'Phakamisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 3, 'Zwelitsha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 4, 'Jansenville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 4, 'Adendorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 4, 'Aberdeen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, 'Rietbron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, 'Nieu-Bethesda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 4, 'Klipplaat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, 'Kendrew', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 4, 'Waterford', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 4, 'Steytlerville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 4, 'Willowmore', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 5, 'Ugie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 5, 'Mount Fletcher', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 6, 'Indwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 6, 'Dordrecht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 8, 'Amatola Coastal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 8, 'Kei Mouth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 8, 'Morgan Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 9, 'Lusikisiki', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 10, 'Tsomo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 11, 'Middelburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 11, 'Mount Zebra National Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 12, 'Mqanduli', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 12, 'Mthatha ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 13, 'Cape St Francis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 13, 'Hankey', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 13, 'Humansdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 13, 'Jeffreys Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 13, 'Loerie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 13, 'Oyster Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 13, 'Patensie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 13, 'St Francis Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 13, 'Thornhill', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 15, 'Alicedale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 15, 'Grahamstown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 15, 'Riebeek East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 15, 'Sidbury', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 14, 'Clarkson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 14, 'Joubertina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 14, 'Krakeel River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 14, 'Louterwater', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 14, 'Misgund', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 14, 'Nompumelelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 14, 'Sanddrif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 14, 'Storms River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 14, 'Woodlands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 16, 'Cedarville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 17, 'Elliotdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 19, 'Tsolo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 20, 'Butterworth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 20, 'Kentani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 20, 'Ngqamakhwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 21, 'Alexandria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 21, 'Bathurst', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 21, 'Boknes/Cannon Rocks', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 21, 'Bushmans River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 21, 'Kenton-on-Sea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 21, 'Seafield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 17, 'Willowvale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 22, 'Bethelsdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 22, 'Bloemendal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 22, 'Blue Horizon Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 22, 'Clarendon Marine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 22, 'Despatch', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 22, 'KwaNobuhle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 22, 'Motherwell', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 22, 'Uitenhage', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 23, 'Hamburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 25, 'Ngqeleni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 27, 'Adelaide', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 27, 'Bedford', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 27, 'Fort Beaufort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 27, 'Hogsback', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 27, 'Middeldrift', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 27, 'Seymore', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 28, 'Elliot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 29, 'Barkly East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 29, 'Rhodes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 29, 'Rossouw', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 29, ' Sterkspruit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 30, 'Addo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 30, 'Paterson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 31, 'EMaxesibeni(Mount Ayliff)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 33, 'Hofmeyr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 33, 'Molteno', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 33, 'Sada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 33, 'Sterkstroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 33, 'Tarkastad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 33, 'Whittlesea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 34, 'Clarens', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 34, 'Fouriesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 34, 'Paul Roux', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 34, 'Rosendal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 35, 'Bethulie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 35, 'Edenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 35, 'Fauresmith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 35, 'Gariep Dam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 35, 'Jagersfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 35, 'Philippolis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 35, 'Reddersburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 35, 'Springfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 35, 'Waterkloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 36, 'Jacobsdal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 36, 'Luckhoff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 36, 'Oppermansgronde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 36, 'Petrusburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 37, 'Cornelia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 37, 'Tweeling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 37, 'Villiers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 38, 'Harrismith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 38, 'Kestell', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 40, 'Excelsior', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 40, 'Hobhouse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 40, 'Thaba Patchoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 40, 'Tweespruit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 41, 'Brandfort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 41, 'Soutpan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 41, 'Verkeerdevlei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 41, 'Winburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 42, 'Allanridge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 42, 'Hennenman', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 42, 'Odendaalsrus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 42, 'Ventersburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 42, 'Virginia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 43, 'Deneysville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 43, 'Kragbron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 43, 'Oranjeville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 44, 'Rouxville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 44, 'Smithfield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 45, 'Renovaal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 45, 'Steynsrus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 45, 'Vierfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 45, 'Viljoenskroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 46, 'Wesselsbron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 48, 'Arlington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 48, 'Lindley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 48, 'Petrus Steyn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 49, 'Memel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 49, 'Warden', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 50, 'Clocolan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 50, 'Marquard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 50, 'Senekal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 51, 'Dealesville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 51, 'Hertzogville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 52, 'Hoopstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 47, 'Edenville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 47, 'Heilbron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 47, 'Koppies', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 47, 'Vredefort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 39, 'Botshabelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 39, 'Dewetsdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 39, 'Mangaung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 39, 'Thaba Nchu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 39, 'Van Stadensrus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 39, 'Wepener', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 53, 'Alberton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 53, 'Bedfordview', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 53, 'Benoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 53, 'Boksburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 53, 'Brakpan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 53, 'Edenvale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 53, 'Germiston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 53, 'Katlehong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 53, 'Kempton Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 53, 'Nigel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 53, 'Olifantsfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 53, 'Springs', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 53, 'Tembisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 53, 'Tokoza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 53, 'Vosloorus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 54, 'Alexandra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 54, 'Diepkloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 54, 'Diepsloot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 54, 'Ennerdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 54, 'Johannesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 54, 'Johannesburg South', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 54, 'Lawley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 54, 'Lenasia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 54, 'Lenasia South', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 54, 'Meadowlands East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 54, 'Meadowlands West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 54, 'Midrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 54, 'Orange Farm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 54, 'Pimville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 54, 'Randburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 54, 'Roodepoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 54, 'Sandton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 54, 'Soweto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 55, 'Akasia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 55, 'Bronkhorstspruit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 55, 'Centurion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 55, 'Cullinan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 55, 'Ekangala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 55, 'Ga-Rankuwa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 55, 'Hammanskraal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 55, 'Kudube', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 55, 'Mabopane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 55, 'Pretoria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 55, 'Rayton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 55, 'Refilwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 55, 'Roodeplaat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 55, 'Soshanguve', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 55, 'Temba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 55, 'Winterveldt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 56, 'Evaton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 56, 'Sebokeng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 56, 'Vaal Oewer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 56, 'Vanderbijlpark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 56, 'Vereeniging', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 57, 'Devon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 57, 'Heidelberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 57, 'Nigel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 57, 'Vischkuil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 58, 'Carletonville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 58, 'Fochville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 58, 'Wedela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 59, 'De Deur/Walkerville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 59, 'Eikenhof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 59, 'Meyerton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 59, 'Vaal Marina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 60, 'Krugersdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 60, 'Magaliesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 60, 'Muldersdrift', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 61, 'Randfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 61, 'Westonaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 62, 'Louwsburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 62, 'Vryheid', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 63, 'Colenso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 63, 'Ladysmith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 63, 'Van Reenen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 64, 'Hlabisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 64, 'Hluhluwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 65, 'Empangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 65, 'Richards Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 66, 'Dannhauser', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 66, 'Hattingspruit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 67, 'Creighton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 67, 'Himeville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 67, 'Underberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 68, 'Paulpietersburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 69, 'Utrecht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 70, 'Dundee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 70, 'Glencoe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 71, 'Amalanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 71, 'Amanzimtoti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 71, 'Amaotana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 71, 'Berea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 71, 'Blackburn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 71, 'Bluff', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 71, 'Cato Ridge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 71, 'Cele/Vumengazi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 71, 'Chatsworth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 71, 'Cibane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 71, 'Clermont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 71, 'Clifton Canyon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 71, 'Craigieburn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 71, 'Dassenhoek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 71, 'Desainager', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 71, 'Durban', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 71, 'Durban International Airport', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 71, 'Durban North', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 71, 'Durban South', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 71, 'Emalangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 71, 'Embo/Nksa Isimahla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 71, 'Emona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 71, 'Ethekwini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 71, 'Everton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 71, 'Ezembeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 71, 'Folweni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 71, 'Gcumisa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 71, 'Genazzano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 71, 'Gillitts', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 71, 'Golokodo-Ensimbini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 71, 'Hambanathi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 71, 'Hillcrest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 71, 'Ilanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 71, 'Ilfracombe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 71, 'Illovo North', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 71, 'Illovo South', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 71, 'Inanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 71, 'Inchanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 71, 'Iqadi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 71, 'Isipingo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 71, 'Isipingo Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 71, 'Kingsburgh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 71, 'Klaarwater', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 71, 'Kloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 71, 'KwaDabeka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 71, 'KwaMashu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 71, 'KwaNdengezi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 71, 'La Mercy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 71, 'Lotus Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 71, 'Luganda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 71, 'Luthuli/Umnini Trust', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 71, 'Magabeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 71, 'Malagazi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 71, 'Mangangeni/Vumazonke', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 71, 'Maphephetha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 71, 'Mawotana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 71, 'Mawothi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 71, 'Molweni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 71, 'Mount Edgecombe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 71, 'Mount Moreland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 71, 'Mpolo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 71, 'Mpumalanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 71, 'New Germany', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 71, 'Newlands East', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 71, 'Newlands West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 71, 'Ngcolosi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 71, 'Ngqungqulu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 71, 'Ntuzuma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 71, 'Oceans', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 71, 'Outer West Durban', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 71, 'Phoenix', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 71, 'Pinetown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 71, 'Prospecton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 71, 'Qadi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 71, 'Qiniselani Manyuswa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 71, 'Queensburgh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 71, 'Redcliffe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 71, 'Roseneath', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 71, 'Sapref', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 71, 'Shallcross', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 71, 'Sobonakhona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 71, 'Thoyana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 71, 'Tongaat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 71, 'Tongaat Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 71, 'Tshelimnyama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 71, 'Umbumbulu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 71, 'Umdloti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 71, 'Umgababa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 71, 'Umhlanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 71, 'Umkomaas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 71, 'Umlazi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 71, 'Verulam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 71, 'Waterfall', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 71, 'Westbrook', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 71, 'Westville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 71, 'Ximba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 72, 'Kokstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 73, 'Impendle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 74, 'Estcourt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 74, 'Weenen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 75, 'Ingwavuma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 75, 'Jozini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 75, 'Mkuze', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 76, 'Dolphin Coast/Ballito', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 76, 'KwaDukuza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 76, 'Nkwazi/Zinkwazi Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 77, 'Isithebe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 77, 'Mandeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 79, 'Camperdown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 80, 'Mooi River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 81, 'Pomeroy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 82, 'Ashburton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 82, 'Pietermaritzburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 83, 'Melmoth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 83, 'Ntambanana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 84, 'Mtubatuba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 84, 'St Lucia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 85, 'Ndwedwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 86, 'Charlestown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 86, 'Newcastle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 87, 'Nkandla', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 88, 'Nongoma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 89, 'Nquthu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 90, 'Bergville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 90, 'Cathkin Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 90, 'Winterton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 91, 'Hibberdene', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 91, 'Margate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 91, 'Port Edward', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 91, ' Port Shepstone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 91, 'Southbroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 92, 'Richmond', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 93, 'Ixopo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 94, 'Ulundi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 95, 'Pennington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 95, 'Scottburgh/Umzinto North', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 96, 'KwaMbonambi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 97, 'Mbazwana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 98, 'Eshowe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 98, 'KwaGingindlovu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 98, 'Mtunzini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 99, 'Hilton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 99, 'Howick', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 100, 'Cool Air', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 100, 'Dalton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 100, 'New Hanover', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 100, 'Wartburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 101, 'Harding', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 102, 'Greytown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 102, 'Kranskop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 103, 'Eshowe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 103, 'KwaGingindlovu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 103, 'Mtunzini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 104, 'Eshowe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 104, 'KwaGingindlovu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 104, 'Mtunzini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 105, 'Eshowe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 105, 'KwaGingindlovu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 105, 'Mtunzini', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 106, 'Gravelotte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 106, 'Leydsdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 107, 'Bela-Bela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 107, 'Pienaarsrivier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 108, 'Alldays', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 109, 'Malamulele', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 110, 'Groblersdal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 110, 'Roossenekal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 111, 'Marble Hall', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 111, 'Schuinsdraai Nature Reserve', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 112, 'Burgersfort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 112, 'Ohrigstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 112, 'Steelpoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 113, 'Giyani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 114, 'Modjadjiskloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 115, 'Haenertsburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 115, 'Tzaneen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 116, 'Zebediela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 117, 'Lephalale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 118, 'Modimolle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 118, 'Mookgophong(Naboomspruit)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 118, 'Vaalwater', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 119, 'Makhado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 121, 'Hoedspruit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 122, 'Mokopane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 123, 'Dendron', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 123, 'Morebeng(Soekmekaar)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 124, 'Musina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 125, 'Polokwane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 126, 'Amandelbult Mine Town', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 126, 'Thabazimbi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 127, 'Thohoyandou', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 128, 'Sabie Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 129, 'Barberton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 129, 'Emoyeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 129, 'Entokozweni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 129, 'Hazyview', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 129, 'Kaapschehoop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 129, 'Kabokweni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 129, 'Kanyamazane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 129, 'Luphisi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 129, 'Matsulu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 129, 'Mbombela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 129, 'Mpakeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 129, 'Msogwaba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 129, 'Ngodwana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 129, 'Skukuza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 129, 'Tekwane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 129, 'White River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 130, 'Komatipoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 130, 'Malalane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 130, 'Marloth Park', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 131, 'Graskop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 131, 'Lydenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 131, 'Mashishing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 131, 'Pilgrim''s Rest', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 131, 'Sabie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 132, 'Carolina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 132, 'Ekulindeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 132, 'Empuluzi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 132, 'eManzana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 133, 'Balfour', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 133, 'Greylingstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 133, 'Grootvlei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 134, 'Amersfoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 134, 'Perdekop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 134, 'Volksrust', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 134, 'Wakkerstroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 135, 'Bethal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 135, 'Charl Cilliers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 135, 'Embalenhle', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 135, 'Evander', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 135, 'Kinross', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 135, 'Leandra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 135, 'Secunda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 135, 'Trichardt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 136, 'Morgenzon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 136, 'Standerton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 137, 'Amsterdam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 137, 'eMkhondo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 138, 'Breyten', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 138, 'Chrissiesmeer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 138, 'Davel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 138, 'Ermelo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 138, 'Lothair', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 139, 'Mdala Nature Reserve', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 140, 'Dullstroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 140, 'Emgwenya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 140, 'eMakhazeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 140, 'eNtokozweni ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 141, 'Kriel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 141, 'Ogies', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 141, 'Phola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 141, 'eMalahleni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 142, 'Hendrina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 142, 'Middelburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 142, 'Pullens Hope', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 142, 'Rietkuil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 143, 'KwaMhlanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 144, 'Delmas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 145, 'Brandboom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 145, 'Groblershoop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 146, 'Mier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 146, 'Rieftfontien', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 146, 'Upington', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 147, 'Barkley West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 147, 'Delportshoop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 147, 'Windsorton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 148, 'Britstown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 148, 'Burgerville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 148, 'De Aar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 148, 'Griensenkraal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 148, 'Hanover', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 149, 'Deben', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 149, 'Kathu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 149, 'Olifantshoek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 150, 'Bankhara-Bodulong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 150, 'Kuruman', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 150, 'Mothisbistad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 151, 'Brandvlei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 151, 'Calvinia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 151, 'Loeriesfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 151, 'Middelpos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 151, 'Nieuwoudtville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 151, 'Onderste Doorns', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 152, 'Hotazel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 152, 'Santoy', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 152, 'Van Zylsrus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 153, 'Eksteenskuil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 153, 'Kakamas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 153, 'Keimoes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 153, 'Kenhardt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 154, 'Garies', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 154, 'Hondeklip Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 154, 'Kamieskroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 154, 'Koingnaas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 154, 'Leliefontein/Kamiesberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 155, 'Carnarvon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 155, 'Vanwyksvlei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 155, 'Vosburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 156, 'Frasersburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 156, 'Sutherland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 156, 'Williston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 157, 'Danielskuil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 157, 'Lime Acres', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 158, 'Aggeneys', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 158, 'Pella', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 158, 'Pofadder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 159, 'Warrenton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 160, 'Bulletrap', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 160, 'Carolusberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 160, 'Concordia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 160, 'Kleinzee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 160, 'Komaggas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 160, 'Nababeep', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 160, 'O''Kiep', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 160, 'Springbok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 160, 'Steinkopf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 161, 'Hartswater', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 161, 'Jan Kempdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 161, 'Pampierstat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 162, 'Petrusville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 162, 'Philipstwon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 162, 'Van der Kloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 163, 'Alexander Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 163, 'Eksteensfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 163, 'Kuboes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 163, 'Port Nolloth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 163, 'Richtersveld', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 163, 'Sanddrift', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 164, 'Campbell', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 164, 'Douglass', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 164, 'Griekwasted', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 164, 'Reit River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 164, 'Schmidtsdrif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 165, 'Copperton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 165, 'Marydale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 165, 'Niekerkshoop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 165, 'Prieska', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 166, 'Kimberly', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 166, 'Ritchie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 167, 'Hopetown', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 167, 'Strydenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 168, 'Beeshoek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 168, 'Postmasburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 169, 'Hutchinson', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 169, 'Loxton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 169, 'Richmond', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 169, 'Victoria West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 170, 'Colesberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 170, 'Norvalspont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 170, 'Noupoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 171, 'Hartbeesfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 171, 'Klerksdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 171, 'Orkney', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 171, 'Stilfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 172, 'Biesiesvlei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 172, 'Coligny', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 172, 'Lichtenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 173, 'Pudimoe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 173, 'Reivilo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 173, 'Taung', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 174, 'Piet Plessis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 174, 'Pomfret', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 175, 'Bloemhof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 175, 'Christiana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 176, 'Brits', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 176, 'Hartbeespoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 176, 'Marikana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 176, 'Mooinooi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 177, 'Mahikeng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 177, 'Mmabatho', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 177, 'Ottoshoop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 178, 'Amalia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 178, 'Schweizer-Reneke', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 179, 'Leeudoringstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 179, 'Makwassie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 179, 'Witpoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 179, 'Wolmaransstad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 180, 'Madikwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 182, 'Stella', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 182, 'Vryburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 183, 'Groot Marico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 183, 'Zeerust', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 184, 'Disaneng', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 184, 'Kraaipan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 184, 'Madibogo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 184, 'Setlagole', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 185, 'Hartbeesfontein-A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 185, 'Phatsima', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 185, 'Rustenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 185, 'Tlhabane', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 186, 'Delareyville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 186, 'Ottosdal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 186, 'Sannieshof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 187, 'Potchefstroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 187, 'Ventersdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 189, 'Beaufort West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 189, 'Merweville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 189, 'Murraysburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 189, 'Nelspoot', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 190, 'Aurora', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 190, 'Eendekuil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 190, 'Piketberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 190, 'Porterville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 190, 'Redelinghuys', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 190, 'Velddrif', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 191, 'Kuerboomstrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 191, 'Krantshoek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 191, 'Kurland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 191, 'Kwanokuthula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 191, 'Nature''s Valley', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 191, 'Plettenberg Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 191, 'Wittedrift', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 192, 'Agulhas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 192, 'Arniston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 192, 'Bredasdrop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 192, 'Elim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 192, 'Klipdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 192, 'Napier', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `applicant_pm_cities` (`id`, `applicant_p_municipality_id`, `City_Name`, `created_at`, `updated_at`) VALUES
(728, 192, 'Protem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 192, 'Struis Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 192, 'Suiderstrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 193, 'Citrusdal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 193, 'Clanwilliam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 193, 'Elands Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 193, 'Graafwater', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 193, 'Lamberts Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 193, 'Leipoldtville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 193, 'Wupperthal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 194, 'George', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 194, 'Haarlem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 194, 'Herolds Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 194, 'Uniondale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 194, 'Victoria Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 194, 'Wilderness', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 195, 'Albertinia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 195, 'Gouritz', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 195, 'Heidelberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 195, 'Jongensfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 195, 'Riversdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 195, 'Slangrivier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 195, 'Still Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 195, 'Witsand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 196, 'Calitzdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 196, 'Ladismith', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 196, 'Vanwyksdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 196, 'Zoar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 197, 'Brenton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 197, 'Brenton-on-Sea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 197, 'Buffels Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 197, 'Knoetzie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 197, 'Knysna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 197, 'Rheenendal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 197, 'Sedgefield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 198, 'Laingsburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 198, 'Matjiesfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 199, 'Bitterfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 199, 'Doring Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 199, 'Ebenhaezer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 199, 'Klawer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 199, 'Lutzville', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 199, 'Nuwerus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 199, 'Rietpoort', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 199, 'Strandfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 199, 'Vanrhynsdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 199, 'Vredendal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 200, 'Boggoms Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 200, 'Brandwacht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 200, 'Friemersheim', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 200, 'Groot Brakrivier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 200, 'Herbertsdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 200, 'Mossel Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 200, 'Vlees Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 201, 'De Rust', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 201, 'Dysselsdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 201, 'Oudtshoorn', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 202, 'Betty''s Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 202, 'Birkenhead', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 202, 'De Kelders', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 202, 'Fishershaven', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 202, 'Franskraal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 202, 'Gans Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 202, 'Hawston', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 202, 'Hermanus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 202, 'Kleinmond', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 202, 'Onrus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 202, 'Pearly Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 202, 'Pringle Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 202, 'Rooi-Els', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 202, 'Sand Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 202, 'Stanford', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 202, 'Van Dyks Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 202, 'Vermont', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 203, 'Klaarstroom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 203, 'Leeu Gamka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 203, 'Prince Albert', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 203, 'Welgemoed', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 204, 'Hopefield', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 204, 'Jacobs Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 204, 'Langebaan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 204, 'Paternoster', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 204, 'Saldanha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 204, 'St Helena Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 204, 'Vredenburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 205, 'Abbotsdale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 205, 'Chatsworth', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 205, 'Darling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 205, 'Grotto Bay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 205, 'Kalbaskraal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 205, 'Koringberg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 205, 'Malmesbury', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 205, 'Moorreesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 205, 'Riebeeck Kasteel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 205, 'Riebeeck West', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 205, 'Riverlands', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 205, 'Yzerfontein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 206, 'Barrydale', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 206, 'Buffeljagsrivier', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 206, 'Infanta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 206, 'Malagas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 206, 'Suurbraak', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 206, 'Swellendam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 207, 'Bot River', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 207, 'Caledon/Myddleton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 207, 'Genadendal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 207, 'Grabouw', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 207, 'Greyton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 207, 'Riviersonderend', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 207, 'Theewaterskloof', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 207, 'Villiersdorp', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_program_interests`
--

CREATE TABLE IF NOT EXISTS `applicant_program_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Program` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_program_interests`
--

INSERT INTO `applicant_program_interests` (`id`, `Program`, `created_at`, `updated_at`) VALUES
(1, 'Internship', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Learnership', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Bursary', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_provinces`
--

CREATE TABLE IF NOT EXISTS `applicant_provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Province_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `applicant_provinces`
--

INSERT INTO `applicant_provinces` (`id`, `Province_Name`, `created_at`, `updated_at`) VALUES
(1, 'Eastern Cape', '2017-05-23 13:57:10', '2017-05-23 13:57:10'),
(2, 'Free State', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Gauteng', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'KwaZulu-Natal', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'Limpopo', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(6, 'Mpumalanga', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(7, 'Northern Cape', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(8, 'North West', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(9, 'Western Cape', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_p_municipalities`
--

CREATE TABLE IF NOT EXISTS `applicant_p_municipalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant_province_id` int(11) DEFAULT NULL,
  `Municipality_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_p_municipalities_on_applicant_province_id` (`applicant_province_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=208 ;

--
-- Dumping data for table `applicant_p_municipalities`
--

INSERT INTO `applicant_p_municipalities` (`id`, `applicant_province_id`, `Municipality_Name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Amahlathi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Blue Crane Route Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Buffalo City Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Dr Beyers Naud Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Elundini Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Emalahleni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'Engcobo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Great Kei Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Ingquza Hill Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'Intsika Yethu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'Inxuba Yethemba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'King Sabata Dalindyebo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'Kouga Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'Kou-kamma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'Makana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 'Matatiele Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 'Mbhashe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 'Mbizana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 'Mhlontlo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 'Mnquma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 'Ndlambe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'Nelson Mandela Bay Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'Ngqushwa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 'Ntabankulu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 'Nyandeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 'Port St Johns Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 1, 'Raymond Mhlaba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 'Sakhisizwe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1, 'Senqu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, 'Sundays River Valley Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, 'Umzimvubu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 1, 'Walter Sisulu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 'Enoch Mgijima Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 2, 'Dihlabeng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 2, 'Kopanong Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 2, 'Letsemeng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 2, 'Mafube Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 2, 'Maluti-a-phofung Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 2, 'Mangaung Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 2, 'Mantsopa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 2, 'Masilonyana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 2, 'Matjhabeng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 2, 'Metsimaholo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 2, 'Mohokare Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 2, 'Moqhaka Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 2, 'Nala Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 2, 'Ngwathe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 2, 'Nketoana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 2, 'Phumelela Local municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 2, 'Setsoto Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 2, 'Tokologo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 2, 'Tswelopele Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 3, 'City Of Ekurhuleni Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 3, 'City Of Johannesburg Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 3, 'City Of Tshwane Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 3, 'Emfuleni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 3, 'Lesedi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 3, 'Merafong City Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 3, 'Midvaal Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 3, 'Mogale City Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 3, 'Rand West City Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 4, 'Abaqulusi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 4, 'Alfred Duma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 4, 'Big 5 Hlabisa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 4, 'City Of Umhlathuze Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 4, 'Dannhauser Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 4, 'Dr Nkosazana Dlamini Zuma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 4, 'Edumbe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 4, 'Emadlangeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 4, 'Endumeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 4, 'Ethekwini Metropolitan Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 4, 'Greater Kokstad Local Municipalty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 4, 'Impendle Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 4, 'Inkosi Langalibalele Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 4, 'Jozini Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 4, 'Kwadukuza Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 4, 'Mandeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 4, 'Maphumulo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 4, 'Mkhambathini Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 4, 'Mpofana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 4, 'Msinga Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 4, 'Msunduzi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 4, 'Mthonjaneni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 4, 'Mtubatuba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 4, 'Ndwedwe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 4, 'Newcastle Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 4, 'Nkandla Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 4, 'Nongoma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 4, 'Nquthu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 4, 'Okhahlamba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 4, 'Ray Nkonyeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 4, 'Richmond Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 4, 'Ubuhlebezwe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 4, 'Ulundi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 4, 'Umdoni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 4, 'Umfolozi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 4, 'Umhlabuyalingana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 4, 'Umlalazi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 4, 'Umngeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 4, 'Umshwathi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 4, 'Umuziwabantu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 4, 'Umvoti Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 4, 'Umzimkhulu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 4, 'Umzumbe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 4, 'Uphongolo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 5, 'Ba-phalaborwa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 5, 'Bela-bela Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 5, 'Blouberg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 5, 'Collins Chabane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 5, 'Elias Motsoaledi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 5, 'Ephraim Mogale Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 5, 'Fetakgomo Greater Tubatse Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 5, 'Greater Giyani Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 5, 'Greater Letaba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 5, 'Greater Tzaneen Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 5, 'Lepelle-nkumpi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 5, 'Lephalale Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 5, 'Lim 368 Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 5, 'Makhado Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 5, 'Makhuduthamaga Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 5, 'Maruleng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 5, 'Mogalakwena Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 5, 'Molemole Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 5, 'Musina Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 5, 'Polokwane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 5, 'Thabazimbi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 5, 'Thulamela Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 6, 'Bushbuckridge Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 6, 'City Of Mbombela Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 6, 'Nkomazi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 6, 'Thaba Chweu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 6, 'Chief Albert Luthuli Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 6, 'Dipaleseng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 6, 'Dr Pixley Ka Isaka Seme Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 6, 'Govan Mbeki Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 6, 'Lekwa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 6, 'Mkhondo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 6, 'Msukaligwa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 6, 'Dr Js Moroka Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 6, 'Emakhazeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 6, 'Emalahleni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 6, 'Steve Tshwete Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 6, 'Thembisile Hani Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 6, 'Victor Khanye Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 7, '!kheis Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 7, 'Dawid kruiper Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 7, 'Dikgatlong Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 7, 'Emthanjeni Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 7, 'Gamagara Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 7, 'Ga-segonyana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 7, 'Hantam Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 7, 'Joe Morolong Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 7, 'Kai !garib Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 7, 'Kamiesberg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 7, 'Kareeberg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 7, 'Karoo Hoogland Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 7, 'Kgatelopele Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 7, 'Khai-ma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 7, 'Magareng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 7, 'Nama Khoi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 7, 'Phokwane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 7, 'Renosterberg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 7, 'Richtersveld Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 7, 'Siyancuma Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 7, 'Siyathemba Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 7, 'Sol Plaatje Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 7, 'Thembelihle Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 7, 'Tsantsabane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 7, 'Ubuntu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 7, 'Umsobomvu Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 8, 'City Of Maltlosana Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 8, 'Ditsobotla Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 8, 'Greater Taung Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 8, 'Kagisano-molopo Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 8, 'Kgetlengrivier Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 8, 'Lekwa-teemane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 8, 'Madibeng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 8, 'Mahikeng Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 8, 'Mamusa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 8, 'Maquassi Hills Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 8, 'Moretele Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 8, 'Moses kotane Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 8, 'Naledi Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 8, 'Ramotshere Moiloa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 8, 'Ratlou Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 8, 'Rustenburg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 8, 'Tswaing Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 8, 'Ventersdorp/Tlokwe Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 9, 'Beaufort West Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 9, 'Bergrivier Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 9, 'Bitou Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 9, 'Cape Agulhas Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 9, 'Cederberg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 9, 'George Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 9, 'Hessequa Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 9, 'Kannaland Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 9, 'Knysna Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 9, 'Laingsburg Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 9, 'Matzikama Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 9, 'Mossel Bay Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 9, 'Oudtshoorn Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 9, 'Overstrand Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 9, 'Prince Albert Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 9, 'Saldanha Bay Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 9, 'Swartland Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 9, 'Swellendam Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 9, 'Theewaterskloof Local Municipality', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_quals`
--

CREATE TABLE IF NOT EXISTS `applicant_quals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `applicant_quals`
--

INSERT INTO `applicant_quals` (`id`, `Qualification_Name`, `created_at`, `updated_at`) VALUES
(1, 'Advanced Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Advanced Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'B-Tech', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Bachelors Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Certificate(HEQCIS)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Diploma(Min 240)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Diploma(Min 360)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Elementary Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Further Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'General Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Foundational Learning Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Higher Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Intermediate Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Matric Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Masters Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'National N Certificate', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'National Certificate Vocation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'National Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Industry Certification', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'National First Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'National First Degree (Min 480)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Post Dip Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Post Basic Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Postgraduate Diploma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Professional Qualification', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Professional Registration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Honours Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Doctoral Degree', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_qual_statuses`
--

CREATE TABLE IF NOT EXISTS `applicant_qual_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Qualification_Status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `applicant_qual_statuses`
--

INSERT INTO `applicant_qual_statuses` (`id`, `Qualification_Status`, `created_at`, `updated_at`) VALUES
(1, 'Complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Not-Complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'In-Progress', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_races`
--

CREATE TABLE IF NOT EXISTS `applicant_races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `applicant_races`
--

INSERT INTO `applicant_races` (`id`, `Race`, `created_at`, `updated_at`) VALUES
(1, 'Black African', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(2, 'Coloured', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(3, 'Indian', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(4, 'Asian', '2017-05-15 10:13:48', '2017-05-15 10:13:48'),
(5, 'White', '2017-05-15 10:13:48', '2017-05-15 10:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_references`
--

CREATE TABLE IF NOT EXISTS `applicant_references` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Contact_Number` varchar(255) DEFAULT NULL,
  `Reference_Name` varchar(255) DEFAULT NULL,
  `Email_address` varchar(255) DEFAULT NULL,
  `Relationship` varchar(255) DEFAULT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_applicant_references_on_applicant_id` (`applicant_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `applicant_references`
--

INSERT INTO `applicant_references` (`id`, `Contact_Number`, `Reference_Name`, `Email_address`, `Relationship`, `applicant_id`, `created_at`, `updated_at`) VALUES
(8, '0842532586', 'Siviwe', 'siviwe@littlepig.cc', 'Manager', 4, '2017-06-06 09:50:17', '2017-06-06 09:50:17'),
(9, '0737654065', 'Mxolisi', 'mxolisi@littlepig.cc', 'Manager', 5, '2017-06-06 10:07:07', '2017-06-06 10:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_universities`
--

CREATE TABLE IF NOT EXISTS `applicant_universities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `University_Name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `applicant_universities`
--

INSERT INTO `applicant_universities` (`id`, `University_Name`, `created_at`, `updated_at`) VALUES
(1, 'Cape Peninsula University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Central University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Mangosuthu University of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Durban University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Nelson Mandela Metropolitan University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Rhodes University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'University Of Cape Town', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'University Of Fort Hare', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'University Of Johannesburg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'University Of KwaZulu-Natal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'University Of Limpopo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'University Of Mpumalanga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'University Of Pretoria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'University Of South Africa (UNISA)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'University Of Stellenbosch', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'University Of The Free State', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'University Of The Western Cape', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'University Of The Witwatersrand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'University Of Venda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'University Of Zululand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Walter Sisulu University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tshwane University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'North-West University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Sefako Makgatho Health Sciences University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Sol Plaatje University', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Vaal University Of Technology', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ar_internal_metadata`
--

CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2017-05-23 13:38:31', '2017-06-12 11:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20170522102144'),
('20170522103034'),
('20170522111811'),
('20170522121503'),
('20170523132228'),
('20170523132250'),
('20170524123829'),
('20170524124109'),
('20170524134321'),
('20170524142257'),
('20170525064711'),
('20170525064743'),
('20170525070345'),
('20170525070556'),
('20170525084623'),
('20170525084705'),
('20170525084731'),
('20170525092255'),
('20170525092353'),
('20170525092454'),
('20170525092600'),
('20170525125633'),
('20170525125736'),
('20170525130141'),
('20170525130614'),
('20170526085843'),
('20170526104417'),
('20170526104446'),
('20170526104621'),
('20170531064912'),
('20170531065047'),
('20170531070118'),
('20170531070137'),
('20170531070210'),
('20170531085206'),
('20170531085351'),
('20170531094054'),
('20170531094218'),
('20170531100126'),
('20170531102805'),
('20170612113715');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicant_addresses`
--
ALTER TABLE `applicant_addresses`
  ADD CONSTRAINT `fk_rails_5d99b78ee3` FOREIGN KEY (`applicant_pm_city_id`) REFERENCES `applicant_pm_cities` (`id`),
  ADD CONSTRAINT `fk_rails_a6c3a6add4` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `applicant_disability_types`
--
ALTER TABLE `applicant_disability_types`
  ADD CONSTRAINT `fk_rails_1dd53ed81b` FOREIGN KEY (`applicant_disability_id`) REFERENCES `applicant_disabilities` (`id`),
  ADD CONSTRAINT `fk_rails_90a79a687c` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

--
-- Constraints for table `applicant_experiences`
--
ALTER TABLE `applicant_experiences`
  ADD CONSTRAINT `fk_rails_088bf27032` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_ddd95e0027` FOREIGN KEY (`applicant_employment_type_id`) REFERENCES `applicant_employment_types` (`id`);

--
-- Constraints for table `applicant_field_of_studies`
--
ALTER TABLE `applicant_field_of_studies`
  ADD CONSTRAINT `fk_rails_32e54702ae` FOREIGN KEY (`applicant_qual_id`) REFERENCES `applicant_quals` (`id`),
  ADD CONSTRAINT `fk_rails_4fd5490b20` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_5367c39a2e` FOREIGN KEY (`applicant_university_id`) REFERENCES `applicant_universities` (`id`),
  ADD CONSTRAINT `fk_rails_af256f49c0` FOREIGN KEY (`applicant_qual_status_id`) REFERENCES `applicant_qual_statuses` (`id`);

--
-- Constraints for table `applicant_foi_programs`
--
ALTER TABLE `applicant_foi_programs`
  ADD CONSTRAINT `fk_rails_84d3533413` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_b9e4ec69fc` FOREIGN KEY (`applicant_program_interest_id`) REFERENCES `applicant_program_interests` (`id`),
  ADD CONSTRAINT `fk_rails_c744fc2e80` FOREIGN KEY (`applicant_field_of_interest_id`) REFERENCES `applicant_field_of_interests` (`id`);

--
-- Constraints for table `applicant_licenses`
--
ALTER TABLE `applicant_licenses`
  ADD CONSTRAINT `fk_rails_21fcb77145` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_94c07d7c26` FOREIGN KEY (`applicant_license_status_id`) REFERENCES `applicant_license_statuses` (`id`),
  ADD CONSTRAINT `fk_rails_efb79c515a` FOREIGN KEY (`applicant_license_code_id`) REFERENCES `applicant_license_codes` (`id`);

--
-- Constraints for table `applicant_personal_details`
--
ALTER TABLE `applicant_personal_details`
  ADD CONSTRAINT `fk_rails_1bd22cdfcf` FOREIGN KEY (`applicant_nationality_id`) REFERENCES `applicant_nationalities` (`id`),
  ADD CONSTRAINT `fk_rails_2f45c984b0` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`),
  ADD CONSTRAINT `fk_rails_a90cf1c022` FOREIGN KEY (`applicant_race_id`) REFERENCES `applicant_races` (`id`),
  ADD CONSTRAINT `fk_rails_beb9586562` FOREIGN KEY (`applicant_marital_status_id`) REFERENCES `applicant_marital_statuses` (`id`),
  ADD CONSTRAINT `fk_rails_da42a17f1a` FOREIGN KEY (`applicant_gender_id`) REFERENCES `applicant_genders` (`id`);

--
-- Constraints for table `applicant_pm_cities`
--
ALTER TABLE `applicant_pm_cities`
  ADD CONSTRAINT `fk_rails_b90720e729` FOREIGN KEY (`applicant_p_municipality_id`) REFERENCES `applicant_p_municipalities` (`id`);

--
-- Constraints for table `applicant_p_municipalities`
--
ALTER TABLE `applicant_p_municipalities`
  ADD CONSTRAINT `fk_rails_6dde94a996` FOREIGN KEY (`applicant_province_id`) REFERENCES `applicant_provinces` (`id`);

--
-- Constraints for table `applicant_references`
--
ALTER TABLE `applicant_references`
  ADD CONSTRAINT `fk_rails_d6a3397dbf` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
