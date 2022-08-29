-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 07:21 PM
-- Server version: 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hrmis`
--
CREATE DATABASE IF NOT EXISTS `hrmis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hrmis`;

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE IF NOT EXISTS `about_me` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `about_me` varchar(500) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `email`, `about_me`, `date_created`, `time_recorded`) VALUES
(4, 'pitarcheizin@gmail.com', 'Resource Person', '25-Nov-2020', '2020-11-25 13:41:10'),
(5, 'pitarcheizin@gmail.com', 'Resource Person', '25-Nov-2020', '2020-11-25 13:41:11'),
(6, 'cma@gmail.com', 'Regulator', '30-Nov-2020', '2020-11-30 15:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `action_reference` varchar(3000) NOT NULL,
  `action_icon` varchar(100) DEFAULT NULL,
  `page_id` varchar(100) NOT NULL,
  `time_recorded` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`email`),
  KEY `page_id` (`page_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=474 ;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `email`, `action_name`, `action_reference`, `action_icon`, `page_id`, `time_recorded`) VALUES
(415, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added About me Resource person', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/25 16:30:22'),
(416, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added About me Resource person', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/25 16:30:22'),
(417, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added About me fdsffffffffff', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/25 16:34:09'),
(418, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added About me Resource Person', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/25 16:41:10'),
(419, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added About me Resource Person', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/25 16:41:11'),
(420, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/25 17:58:03'),
(421, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added WOrk History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 20:43:52'),
(422, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added WOrk History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 20:43:52'),
(423, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added WOrk History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 21:21:28'),
(424, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added WOrk History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 21:35:53'),
(425, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History Meru University', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 22:55:54'),
(426, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History Meru University', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 22:55:55'),
(427, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History Meru University', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 22:57:50'),
(428, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History UON', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 22:59:00'),
(429, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History DFSAFS', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 23:00:54'),
(430, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Education History fdfgfdg', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/25 23:03:32'),
(431, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Awards History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/26 15:25:07'),
(432, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added Awards History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/26 15:28:19'),
(433, 'pitarcheizin@gmail.com', 'Personal Information Creation', 'Added WOrk History fdsf', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/27 12:51:15'),
(434, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 15:38:15'),
(435, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 15:57:17'),
(436, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 15:57:56'),
(437, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 17:23:00'),
(438, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 17:24:17'),
(439, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 17:27:24'),
(440, '', 'Company Information Creation', 'Added Company Details CMA', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/11/27 18:37:00'),
(441, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/27 18:38:12'),
(442, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/28 21:39:58'),
(443, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/28 21:40:57'),
(444, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/28 21:41:35'),
(445, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:02:57'),
(446, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:08:54'),
(447, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:09:23'),
(448, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:12:40'),
(449, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:13:28'),
(450, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:15:34'),
(451, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:26:02'),
(452, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:28:08'),
(453, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:32:53'),
(454, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:48:29'),
(455, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:50:10'),
(456, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:51:37'),
(457, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:57:04'),
(458, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 16:59:00'),
(459, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 17:05:18'),
(460, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 17:08:30'),
(461, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 17:11:39'),
(462, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 17:29:03'),
(463, 'cma@gmail.com', 'Personal Information Creation', 'Added About me Regulator', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/11/30 18:15:55'),
(464, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 19:18:51'),
(465, '', 'Logged out', 'Logged out of the system', 'far fa-sign-out text-danger', 'log-out-link', '2020/11/30 19:25:29'),
(466, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 19:54:16'),
(467, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 20:09:59'),
(468, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/11/30 20:28:30'),
(469, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/01 12:50:13'),
(470, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/01 12:55:09'),
(471, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/01 13:17:03'),
(472, 'cma@gmail.com', 'Job Information Creation', 'Posted Job ', 'far fa-project-diagram text-success', 'Posting job Details', '2020/12/01 13:37:21'),
(473, 'cma@gmail.com', 'Job Information Creation', 'Posted Job Software developer', 'far fa-project-diagram text-success', 'Posting job Details', '2020/12/01 14:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `all_evidence_document`
--

CREATE TABLE IF NOT EXISTS `all_evidence_document` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(100) DEFAULT NULL,
  `delivery_note_doc` varchar(100) DEFAULT NULL,
  `purchase_order_doc` varchar(100) DEFAULT NULL,
  `invoice_doc` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `year_received` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `email`, `award_name`, `institution`, `type`, `year_received`, `date_created`, `time_recorded`) VALUES
(1, 'pitarcheizin@gmail.com', 'IT security', 'Cyber roam', 'Certificate', '11-Feb-2020', '26-Nov-2020', '2020-11-26 12:25:07'),
(2, 'pitarcheizin@gmail.com', 'IT Audit', 'ISACA', 'Award', '18-Nov-2020', '26-Nov-2020', '2020-11-26 12:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `award_type`
--

CREATE TABLE IF NOT EXISTS `award_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `award_type`
--

INSERT INTO `award_type` (`id`, `type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Award', '2020-11-26 12:04:46', 'PETER KARIUKI'),
(2, 'Certificate', '2020-11-26 12:04:46', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `company_type`
--

CREATE TABLE IF NOT EXISTS `company_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `com_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `company_type`
--

INSERT INTO `company_type` (`id`, `com_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Direct Employment', '2020-12-01 07:34:41', 'PETER KARIUKI'),
(2, 'Recruitment Agency', '2020-12-01 07:34:41', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `sector` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_name`, `contact`, `email`, `status`, `sector`, `time_recorded`, `recorded_by`) VALUES
(14, 'Kenchic Ltd', '00', '0@gmail.com', 'Active', '3', '2020-08-14 12:35:17', 'BENCO MBUGUA'),
(15, 'Customer-Window', '0712456', 'customer@gmail.com', 'Active', '2', '2020-09-17 06:55:42', 'BENCO MBUGUA'),
(16, 'Customer _ Roofing', '0722', 'customer@gmail.com', 'Active', '8', '2020-09-17 06:56:16', 'BENCO MBUGUA'),
(17, 'Customer_ Trucking', '0700000', 'Samuel@gmail.com', 'Active', '8', '2020-10-27 09:32:27', 'BENCO MBUGUA'),
(18, 'Bata Shoe Company', '0722280280', 'jane.nganga@bata.com', 'Active', '6', '2020-10-27 09:34:13', 'BENCO MBUGUA'),
(19, 'Afrimac Engineering Ltd', '0710823407', 'engineering@afrimac.co.ke', 'Active', '6', '2020-10-27 09:35:26', 'BENCO MBUGUA');

-- --------------------------------------------------------

--
-- Table structure for table `customer_end_delivery`
--

CREATE TABLE IF NOT EXISTS `customer_end_delivery` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `end_product_ref` varchar(100) DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `qtt` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `invoice_issued_id` varchar(100) DEFAULT NULL,
  `stock_remaining` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending_approval',
  `document` varchar(100) DEFAULT NULL,
  `delivery_note_doc` varchar(100) DEFAULT NULL,
  `purchase_order_doc` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_sector`
--

CREATE TABLE IF NOT EXISTS `customer_sector` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `sector_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer_sector`
--

INSERT INTO `customer_sector` (`id`, `sector_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Education', '2020-05-19 12:08:58', 'PETER KARIUKI'),
(2, 'Farming', '2020-05-19 12:08:58', 'PETER KARIUKI'),
(3, 'Poultry', '2020-05-19 12:09:28', 'PETER KARIUKI'),
(4, 'Government', '2020-05-19 12:09:28', 'PETER KARIUKI'),
(5, 'Media', '2020-05-19 12:09:50', NULL),
(6, 'Manufacturing', '2020-05-19 12:09:50', 'PETER KARIUKI'),
(7, 'Transport', '2020-05-19 12:10:12', 'PETER KARIUKI'),
(8, 'Construction', '2020-05-19 12:10:12', NULL),
(9, 'Electricals', '2020-07-15 10:43:55', 'PETER CHEGE KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_approvers`
--

CREATE TABLE IF NOT EXISTS `delivery_approvers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `delivery_approver` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `delivery_approvers`
--

INSERT INTO `delivery_approvers` (`id`, `delivery_approver`, `product_id`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(9, 'inventory@panoramaengineering.com', '6', '22-Jul-2020', '2020-07-22 10:40:24', 'PETER CHEGE KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `department_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directorate_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_recorded` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`department_id`),
  KEY `directorate_id` (`directorate_id`),
  KEY `manager_id` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`, `department_status`, `directorate_id`, `manager_id`, `created_by`, `time_recorded`) VALUES
('DO', 'Director', 'previous', 'CES OFFICE', 'CMA0168', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm'),
('FA', 'Finance and Administration', 'previous', 'DCS', 'CMA0179', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm'),
('ICT', 'Information Communication Technology', 'previous', 'DCS', 'CMA0154', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm'),
('LO', 'Logistics', 'previous', 'DMO', 'CMA0106', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm'),
('PRO', 'Production & Manufacturing', 'previous', 'DCS', 'CMA0123', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm'),
('PROC', 'Procurement', 'previous', 'DCS', 'CMA0239', 'MARO JILLO ABDALLA', '04/15/2019 03:17:27pm');

-- --------------------------------------------------------

--
-- Table structure for table `education_history`
--

CREATE TABLE IF NOT EXISTS `education_history` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `qualification_name` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `education_history`
--

INSERT INTO `education_history` (`id`, `email`, `school_name`, `qualification`, `qualification_name`, `start_date`, `end_date`, `duration`, `description`, `date_recorded`, `time_recorded`) VALUES
(3, 'pitarcheizin@gmail.com', 'Meru University', 'Degree', 'Bsc IT', '02-Nov-2020', '30-Nov-2020', '600', 'Bsc IT', '25-Nov-2020', '2020-11-25 19:57:50'),
(4, 'pitarcheizin@gmail.com', 'UON', 'Masters', 'Msc ITM', '12-Oct-2020', '30-Nov-2020', '450', 'msc ITM', '25-Nov-2020', '2020-11-25 19:59:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_no`
--

CREATE TABLE IF NOT EXISTS `employee_no` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `emp_no` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employee_no`
--

INSERT INTO `employee_no` (`id`, `emp_no`, `time_recorded`, `recorded_by`) VALUES
(1, '1-4', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, '5-10', '2020-06-19 11:52:05', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE IF NOT EXISTS `employment_history` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `comp_name` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `job_level` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `monthly_salary` varchar(100) DEFAULT NULL,
  `work_type` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `job_responsibilities` varchar(600) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`id`, `email`, `comp_name`, `industry`, `job_title`, `job_level`, `country`, `monthly_salary`, `work_type`, `start_date`, `end_date`, `duration`, `job_responsibilities`, `date_recorded`, `time_recorded`) VALUES
(3, 'pitarcheizin@gmail.com', 'CAPITAL MARKETS AUTHORITY', 'Goverment', 'Web Developer', 'Mid Level', 'Kenya', '150000', 'COntract', '26-Nov-2020', '04-Dec-2020', '8', 'Create Database\r\nNormalization of Tables\r\nIT Framework', '25-Nov-2020', '2020-11-25 18:21:28'),
(4, 'pitarcheizin@gmail.com', 'ICEA LION LIFE', 'Energy', 'DATA Admin', 'Entry Level', 'Kenya', '50000', 'Internship', '02-Mar-2020', '24-Jun-2020', '114', 'Database creation\r\nEDMS ILMS Integration', '25-Nov-2020', '2020-11-25 18:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `employment_type`
--

CREATE TABLE IF NOT EXISTS `employment_type` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `emp_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employment_type`
--

INSERT INTO `employment_type` (`id`, `emp_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Contract', '2020-12-01 08:24:24', 'PETER KARIUKI'),
(2, 'Permanent', '2020-12-01 08:24:24', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `end_product`
--

CREATE TABLE IF NOT EXISTS `end_product` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `qtt` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `customer_id` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `end_product`
--

INSERT INTO `end_product` (`id`, `product_name`, `unit_price`, `qtt`, `total`, `customer_id`, `start_date`, `end_date`, `duration`, `date_recorded`, `time_recorded`, `recorded_by`, `image`) VALUES
(7, 'GI cover [cone] for duct', '4731', '1', '4731.00', '14', '14-Aug-2020', '15-Aug-2020', '1', '14-Aug-2020', '2020-08-14 12:36:53', 'BENCO MBUGUA', NULL),
(8, 'Window', '8835', '12', '106020.00', '15', '10-Sep-2020', '30-Sep-2020', '20', '17-Sep-2020', '2020-09-17 06:58:21', 'BENCO MBUGUA', NULL),
(9, 'Roofing', '321979', '1', '321979.00', '16', '14-Sep-2020', '19-Sep-2020', '5', '17-Sep-2020', '2020-09-17 07:14:19', 'BENCO MBUGUA', NULL),
(10, 'Trucking 150mm', '1750', '130', '227500.00', '17', '26-Oct-2020', '31-Oct-2020', '5', '27-Oct-2020', '2020-10-27 09:36:18', 'BENCO MBUGUA', NULL),
(11, 'Shanks Size  115', '7', '10000', '70000.00', '18', '24-Oct-2020', '31-Oct-2020', '7', '27-Oct-2020', '2020-10-27 09:38:26', 'BENCO MBUGUA', NULL),
(12, 'SS Storange Tank', '213625', '11', '2349875.00', '19', '26-Oct-2020', '26-Dec-2020', '61', '27-Oct-2020', '2020-10-27 09:43:18', 'BENCO MBUGUA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_level`
--

CREATE TABLE IF NOT EXISTS `experience_level` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `exp_level` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `experience_level`
--

INSERT INTO `experience_level` (`id`, `exp_level`, `time_recorded`, `recorded_by`) VALUES
(1, 'Entry', '2020-12-01 07:55:12', 'PETER KARIUKI'),
(2, 'Mid_Level', '2020-12-01 07:55:12', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `general_comments`
--

CREATE TABLE IF NOT EXISTS `general_comments` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(250) NOT NULL,
  `general_comments` varchar(500) NOT NULL,
  `commentor` varchar(250) NOT NULL,
  `email_of_commentor` varchar(250) NOT NULL,
  `date_commented` varchar(250) NOT NULL,
  `changed` varchar(10) NOT NULL DEFAULT 'no',
  `time_commented` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `general_comments`
--

INSERT INTO `general_comments` (`id`, `reference_no`, `general_comments`, `commentor`, `email_of_commentor`, `date_commented`, `changed`, `time_commented`) VALUES
(14, 'SPU/R/1', ' this is a general comment', 'MARO JILLO ABDALLA', 'mabdalla@cma.or.ke', '01/02/2019', 'no', '09:08:48am'),
(15, 'SPU/R/2', ' tty', 'Test User SPU', 'spu@testuser.com', '01/09/2019', 'no', '11:41:00am'),
(16, 'SPU/R/1', 'HEllo this is a comment', 'Test User SPU', 'spu@testuser.com', '01/09/2019', 'no', '11:41:51am'),
(17, 'SPU/R/1', 'men', 'MARO JILLO ABDALLA', 'mabdalla@cma.or.ke', '02/08/2019', 'no', '04:12:22pm'),
(18, 'FIN/R/2', ' N.T - National Treasury', 'PETER LEMAIYAN SAIGILU', 'PSaigilu@cma.or.ke', '04/02/2019', 'no', '03:10:02pm');

-- --------------------------------------------------------

--
-- Table structure for table `hear_about_us`
--

CREATE TABLE IF NOT EXISTS `hear_about_us` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `about_us_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hear_about_us`
--

INSERT INTO `hear_about_us` (`id`, `about_us_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Online Search', '2020-11-27 15:34:36', 'PETER KARIUKI'),
(2, 'Online Advert', '2020-11-27 15:34:36', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE IF NOT EXISTS `industry` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `industry_name` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `industry_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Construction', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Energy', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'IT & Telecoms', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(4, 'Government', '2020-06-19 11:52:05', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `job_level`
--

CREATE TABLE IF NOT EXISTS `job_level` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `job_level` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `job_level`
--

INSERT INTO `job_level` (`id`, `job_level`, `time_recorded`, `recorded_by`) VALUES
(1, 'Entry Level', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Mid Level', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'Senior Level', '2020-06-19 11:52:06', 'PETER KARIUKI'),
(4, 'Management Level', '2020-06-19 11:52:07', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `job_posting`
--

CREATE TABLE IF NOT EXISTS `job_posting` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `com_type` varchar(100) DEFAULT NULL,
  `expLength` varchar(100) DEFAULT NULL,
  `emp_type` varchar(100) DEFAULT NULL,
  `rank_name` varchar(255) DEFAULT NULL,
  `exp_level` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `job_location` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `deadline` varchar(100) DEFAULT NULL,
  `job_description` varchar(1000) DEFAULT NULL,
  `responsibility` varchar(1000) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `DepartmentCode` (`exp_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `job_posting`
--

INSERT INTO `job_posting` (`id`, `email`, `job_title`, `com_type`, `expLength`, `emp_type`, `rank_name`, `exp_level`, `status`, `job_location`, `country`, `deadline`, `job_description`, `responsibility`, `experience`, `date_recorded`, `time_recorded`) VALUES
(1, 'cma@gmail.com', 'Finance Manager', 'Direct Employment', '4 years', 'Permanent', 'Phd', 'Mid_Level', 'active', 'Nairobi', 'Kenya', '23-Dec-2020', 'Balance sheet\r\nTrial Balance', 'Payroll \r\nReconciliatiob', NULL, '01-Dec-2020', '2020-12-01 10:37:21'),
(2, 'cma@gmail.com', 'Software developer', 'Direct Employment', '4 years', 'Permanent', 'Masters', 'Mid_Level', 'active', 'Mombasa', 'Kenya', '31-Dec-2020', 'Description 1\r\nDescription 2', 'Duties 1\r\nDuties 2', NULL, '01-Dec-2020', '2020-12-01 11:42:11');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE IF NOT EXISTS `job_skills` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `skill_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `job_skills`
--

INSERT INTO `job_skills` (`id`, `skill_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'PHP', '2020-11-26 12:42:33', 'PETER KARIUKI'),
(2, 'MYSQL', '2020-11-26 12:42:33', 'KARIUKI'),
(4, 'Accounts', '2020-11-26 13:02:03', 'PETER KARIUKI'),
(5, 'Procurement', '2020-11-26 13:02:03', 'PETER KARIUKI'),
(7, 'Development', '2020-11-26 19:41:56', 'PETER KARIUKI'),
(8, 'Economics', '2020-11-26 19:41:56', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE IF NOT EXISTS `mpesa_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TransactionType` varchar(200) DEFAULT NULL,
  `TransID` varchar(200) DEFAULT NULL,
  `TransTime` varchar(200) DEFAULT NULL,
  `TransAmount` varchar(200) DEFAULT NULL,
  `BusinessShortCode` varchar(200) DEFAULT NULL,
  `BillRefNumber` varchar(200) DEFAULT NULL,
  `InvoiceNumber` varchar(200) DEFAULT NULL,
  `MSISDN` varchar(200) DEFAULT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `MiddleName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `OrgAccountBalance` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `page_requests`
--

CREATE TABLE IF NOT EXISTS `page_requests` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(500) DEFAULT NULL,
  `page_name` varchar(500) NOT NULL,
  `requested_by` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'default',
  `time_requested` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`),
  KEY `requested_by` (`requested_by`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1546 ;

--
-- Dumping data for table `page_requests`
--

INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(686, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-15 10:28:27.081722'),
(687, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:28:27.851345'),
(688, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-15 10:34:37.131249'),
(689, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:34:39.389083'),
(690, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:36:40.839742'),
(691, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:36:45.996428'),
(692, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:37:18.902710'),
(693, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:44:01.277768'),
(694, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:45:27.615392'),
(695, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:48:33.568373'),
(696, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:48:40.762232'),
(697, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 10:52:08.747845'),
(698, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:00:39.956678'),
(699, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:02:40.299249'),
(700, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:06:22.346083'),
(701, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:07:20.535898'),
(702, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-15 11:24:32.582242'),
(703, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:24:35.070619'),
(704, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:25:49.567489'),
(705, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:26:42.327617'),
(706, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:22.200511'),
(707, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:30.405377'),
(708, 'stock-management-link', '\n                      \n                      Item List\n                    7 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:35.477484'),
(709, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:37.207749'),
(710, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:45.920468'),
(711, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:47.145974'),
(712, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:35:49.846199'),
(713, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-15 11:42:21.188375'),
(714, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-07-15 11:51:35.455227'),
(715, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:22:29.701238'),
(716, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:25:07.958685'),
(717, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:25:09.548076'),
(718, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:25:16.638033'),
(719, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:25:28.145513'),
(720, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-07-15 12:27:14.066026'),
(721, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:11.730448'),
(722, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:12.447453'),
(723, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:21.210580'),
(724, 'open-total-projects-modal', 'Dashboard Total Stocks', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:33.583591'),
(725, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:38.677725'),
(726, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'mbugua@panoramaengineering.com', '', '2020-07-15 12:39:46.822184'),
(727, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:40:18.920020'),
(728, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:40:21.705499'),
(729, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:42:26.275809'),
(730, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:42:28.467233'),
(731, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:42:33.176532'),
(732, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:49:05.494031'),
(733, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:49:07.502698'),
(734, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:49:19.590257'),
(735, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:49:27.495734'),
(736, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:49:38.745561'),
(737, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:50:32.914942'),
(738, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:50:35.003710'),
(739, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:51:44.012408'),
(740, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:51:45.793538'),
(741, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:52:16.634836'),
(742, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:52:26.624440'),
(743, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:52:30.998536'),
(744, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:52:53.327210'),
(745, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:52:56.259188'),
(746, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:53:03.895322'),
(747, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:53:19.994105'),
(748, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:53:25.550924'),
(749, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:53:59.632407'),
(750, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:54:31.216533'),
(751, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-15 12:55:05.491562'),
(752, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:55:12.379112'),
(753, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:57:38.068380'),
(754, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:57:47.937690'),
(755, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 12:57:49.458051'),
(756, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:59:05.504160'),
(757, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 12:59:10.562953'),
(758, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 13:00:01.271452'),
(759, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 13:00:07.449871'),
(760, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-07-15 13:01:09.062767'),
(761, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-15 13:01:10.310757'),
(762, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 13:01:13.099993'),
(763, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-15 13:02:11.915130'),
(764, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-15 13:02:21.075167'),
(765, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-16 07:23:34.928839'),
(766, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 07:23:35.578538'),
(767, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 07:24:12.012452'),
(768, 'mail_logs_tab', 'Mail Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 07:24:27.200024'),
(769, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-16 08:20:08.570259'),
(770, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 08:20:09.247072'),
(771, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 08:20:16.116512'),
(772, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-16 17:37:13.089985'),
(773, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-16 17:37:15.201045'),
(774, 'Inventory-management-module', 'Inventory Management Module', 'osino@panoramaengineering.com', '', '2020-07-17 12:43:31.030776'),
(775, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'osino@panoramaengineering.com', '', '2020-07-17 12:43:31.786132'),
(776, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'osino@panoramaengineering.com', '', '2020-07-17 12:44:46.845056'),
(777, 'end-product-resource-link', '\n                     \n                     Resource Planning\n                   ', 'osino@panoramaengineering.com', '', '2020-07-17 12:44:52.635889'),
(778, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'osino@panoramaengineering.com', '', '2020-07-17 12:44:59.402220'),
(779, 'reports-link', 'Reports all_profit_loss', 'osino@panoramaengineering.com', '', '2020-07-17 12:45:03.941788'),
(780, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'osino@panoramaengineering.com', '', '2020-07-17 12:45:08.254762'),
(781, 'customer-ledger-management-link', '\n                      \n                      Customer Ledger\n                    ', 'osino@panoramaengineering.com', '', '2020-07-17 12:45:58.378650'),
(782, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'osino@panoramaengineering.com', '', '2020-07-17 12:46:03.853390'),
(783, 'user-profile-link', 'User Profile', 'osino@panoramaengineering.com', '', '2020-07-17 12:46:36.933351'),
(784, 'Inventory-management-module', 'Inventory Management Module', 'osino@panoramaengineering.com', '', '2020-07-17 12:52:41.186022'),
(785, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'osino@panoramaengineering.com', '', '2020-07-17 12:52:42.228200'),
(786, 'stock-management-link', '\n                      \n                      Item List\n                    1 | PANORAMA ', 'osino@panoramaengineering.com', '', '2020-07-17 13:01:43.634956'),
(787, 'stock-list-payments-tab', '\n             Payments\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:01:44.584154'),
(788, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:08.281775'),
(789, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:10.700055'),
(790, 'stock-list-payments-tab', '\n             Payments\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:17.938572'),
(791, 'end-product-tab', '\n            Stocks Request\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:23.319168'),
(792, 'stock-list-payments-tab', '\n             Payments\n        ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:29.388930'),
(793, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:38.332362'),
(794, 'Inventory-management-module', 'Inventory Management Module', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:50.587349'),
(795, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'osino@panoramaengineering.com', '', '2020-07-17 13:02:52.843772'),
(796, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'osino@panoramaengineering.com', '', '2020-07-17 13:03:02.263002'),
(797, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'osino@panoramaengineering.com', '', '2020-07-17 13:03:42.838752'),
(798, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-17 16:53:36.401789'),
(799, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-17 16:53:43.994497'),
(800, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-17 16:59:57.105352'),
(801, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-17 17:00:04.706420'),
(802, 'page_logs_tab', 'Page Logs', 'inventory@panoramaengineering.com', '', '2020-07-17 17:00:47.341353'),
(803, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-17 17:01:39.959110'),
(804, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-07-17 17:01:57.101722'),
(805, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'inventory@panoramaengineering.com', '', '2020-07-17 17:02:51.726929'),
(806, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-17 17:02:57.906149'),
(807, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-17 17:04:06.206457'),
(808, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:06.590973'),
(809, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:26.852603'),
(810, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:28.815456'),
(811, 'stock-management-link', '\n                      \n                      Item List\n                    7 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:44.105426'),
(812, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:44.674607'),
(813, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:00:59.721253'),
(814, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:01:01.096154'),
(815, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:01:05.001908'),
(816, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:01:07.135247'),
(817, 'invoice-received-management-link', '\n                  \n                  Invoice Received\n                ', 'inventory@panoramaengineering.com', '', '2020-07-19 15:01:15.899070'),
(818, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-20 10:34:11.833792'),
(819, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-20 10:34:14.011627'),
(820, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-07-20 10:34:24.410973'),
(821, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:05.504644'),
(822, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:06.301317'),
(823, 'page_logs_tab', 'Page Logs', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:11.543526'),
(824, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:15.031533'),
(825, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:29.196907'),
(826, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:30.146415'),
(827, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:42.568269'),
(828, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:16:51.582302'),
(829, 'stock-management-link', '\n                      \n                      Item List\n                    5 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:19:20.083270'),
(830, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:19:20.699854'),
(831, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 09:19:27.888783'),
(832, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-22 10:32:16.228573'),
(833, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:32:17.142279'),
(834, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:32:22.577296'),
(835, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:37:48.495515'),
(836, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:38:27.735996'),
(837, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:39:06.401099'),
(838, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:39:34.101716'),
(839, 'end-product-management-link', '\n                     \n                     End Product List\n                   6 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:39:43.045166'),
(840, 'stocks-used-tab', '\n            Stocks Used\n        ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:39:43.966219'),
(841, 'product-delivery-tab', '\n            Product Deliveries\n        ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:40:00.247952'),
(842, 'product-delivery-tab', '\n            Product Deliveries\n        ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:40:25.926541'),
(843, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:40:33.136174'),
(844, 'open-dashboard-project-payments-modal', 'Dashboard Deliveries ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:40:37.509294'),
(845, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:41:12.219388'),
(846, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:43:47.540280'),
(847, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:43:57.548931'),
(848, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:44:04.084148'),
(849, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:44:28.260225'),
(850, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-22 10:55:39.513328'),
(851, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-22 10:55:40.239575'),
(852, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-07-22 10:55:48.004062'),
(853, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:34.211692'),
(854, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:35.884113'),
(855, 'stock-management-link', '\n                      \n                      Item List\n                    7 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:43.387716'),
(856, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:44.458940'),
(857, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:50.322222'),
(858, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:54.674454'),
(859, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:22:57.834153'),
(860, 'end-product-resource-link', '\n                     \n                     Resource Planning\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:23:26.406540'),
(861, 'end-product-resource-link', '\n                     \n                     Resource Planning\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:23:35.435789'),
(862, 'admin-user-management-link', '\n                     \n                     Resource Sheet\n                   ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:23:39.292045'),
(863, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-07-23 11:33:12.861138'),
(864, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-07-23 11:33:18.729604'),
(865, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-03 11:53:35.933111'),
(866, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-03 11:53:36.816895'),
(867, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-08-03 11:53:45.755179'),
(868, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-04 12:26:40.548661'),
(869, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:26:42.604487'),
(870, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-04 12:26:56.277271'),
(871, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:26:56.955208'),
(872, 'stock-management-link', '\n                      \n                      Item List\n                    7 | PANORAMA ', 'danson@panoramaengineering.com', '', '2020-08-04 12:27:07.437732'),
(873, 'stock-list-payments-tab', '\n             Payments\n        ', 'danson@panoramaengineering.com', '', '2020-08-04 12:27:08.039917'),
(874, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'danson@panoramaengineering.com', '', '2020-08-04 12:27:16.799209'),
(875, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:27:31.552486'),
(876, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:27:42.644088'),
(877, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-04 12:28:04.432156'),
(878, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-04 12:28:07.858321'),
(879, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-04 12:28:26.789047'),
(880, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-04 12:28:31.378166'),
(881, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:28:55.198547'),
(882, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-04 12:29:07.940118'),
(883, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-04 12:29:10.544463'),
(884, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:34:53.467522'),
(885, 'stock-management-link', '\n                      \n                      Item List\n                    7 | PANORAMA ', 'danson@panoramaengineering.com', '', '2020-08-04 12:34:55.930095'),
(886, 'stock-list-payments-tab', '\n             Payments\n        ', 'danson@panoramaengineering.com', '', '2020-08-04 12:34:56.276100'),
(887, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-04 12:37:18.482260'),
(888, 'reports-link', 'Reports all_profit_loss', 'danson@panoramaengineering.com', '', '2020-08-04 12:37:27.112868'),
(889, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-04 12:37:52.943256'),
(890, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-04 12:40:20.196155'),
(891, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:43:04.184192'),
(892, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:44:22.157651'),
(893, 'stock-category-management-link', '\n                      \n                      Category\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:44:39.281529'),
(894, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-04 12:44:47.870229'),
(895, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'danson@panoramaengineering.com', '', '2020-08-04 12:45:25.343800'),
(896, 'activity_logs_tab', 'Activity Logs', 'danson@panoramaengineering.com', '', '2020-08-04 12:45:25.694879'),
(897, 'sign_in_logs_tab', 'Sign in Logs', 'danson@panoramaengineering.com', '', '2020-08-04 12:45:34.277398'),
(898, 'user-profile-link', 'User Profile', 'danson@panoramaengineering.com', '', '2020-08-04 12:46:03.167244'),
(899, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'danson@panoramaengineering.com', '', '2020-08-04 12:47:52.060411'),
(900, 'activity_logs_tab', 'Activity Logs', 'danson@panoramaengineering.com', '', '2020-08-04 12:47:52.386924'),
(901, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-04 12:48:37.492275'),
(902, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'danson@panoramaengineering.com', '', '2020-08-04 12:48:42.575315'),
(903, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'danson@panoramaengineering.com', '', '2020-08-04 12:48:52.126151'),
(904, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-04 12:50:12.572928'),
(905, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Termination Kits                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:26:39\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-04 12:50:13.384123'),
(906, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-04 12:50:14.607173'),
(907, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:50:28.406157'),
(908, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:50:28.855576'),
(909, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-04 12:54:52.191195'),
(910, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Termination Kits                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:26:39\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-04 12:54:53.111853'),
(911, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-04 12:54:55.497924'),
(912, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:13.920050'),
(913, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:36.382636'),
(914, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:36.969453'),
(915, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:37.175567'),
(916, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:37.527006'),
(917, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:38.279515'),
(918, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-04 12:55:38.387101'),
(919, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-06 13:10:45.984381'),
(920, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:10:47.217043'),
(921, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-06 13:12:03.292438'),
(922, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-06 13:13:22.363558'),
(923, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-06 13:14:20.075349'),
(924, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-06 13:14:41.394527'),
(925, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-06 13:16:43.753033'),
(926, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-06 13:17:01.608931'),
(927, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-06 13:18:41.450737'),
(928, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Termination Kits                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:25:47\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-06 13:18:41.881078'),
(929, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-06 13:18:42.819923'),
(930, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:18:49.546799'),
(931, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:18:49.661004'),
(932, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-06 13:19:05.348026'),
(933, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:12.607065'),
(934, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:12.807696'),
(935, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:13.365249'),
(936, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:13.560912'),
(937, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:13.687807');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(938, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:13.704624'),
(939, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:20.956407'),
(940, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:33.344755'),
(941, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:33.389938'),
(942, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:33.405045'),
(943, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:02:38\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:34.028108'),
(944, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:02:38\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:34.584027'),
(945, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:02:38\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:34.598943'),
(946, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:35.462811'),
(947, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:40.298995'),
(948, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:40.435477'),
(949, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-06 13:20:51.068697'),
(950, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:22:21.341077'),
(951, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:22:21.790104'),
(952, 'supplier-ledger-management-link', '\n                     \n                     Supplier Ledger\n                   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:23:31.388240'),
(953, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:23:54.387224'),
(954, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 04:52:07\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:23:55.156468'),
(955, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:23:56.631949'),
(956, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:24:10.802028'),
(957, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:24:10.808377'),
(958, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-10 08:29:08.918018'),
(959, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:01.296451'),
(960, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:01.567160'),
(961, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:01.789125'),
(962, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:01.870981'),
(963, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:01.984653'),
(964, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:02.118914'),
(965, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:14.770394'),
(966, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:14.809708'),
(967, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:14.829258'),
(968, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug  compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:00:37\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:15.403380'),
(969, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug  compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:00:37\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:15.480020'),
(970, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Copper lug  compress                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:00:37\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:15.524152'),
(971, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:15.925445'),
(972, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:19.394462'),
(973, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:19.421783'),
(974, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.668405'),
(975, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.675772'),
(976, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.683321'),
(977, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.690310'),
(978, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.805169'),
(979, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:34.992775'),
(980, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:35.139243'),
(981, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:35.298857'),
(982, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:35.318753'),
(983, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:35.392836'),
(984, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:36.532479'),
(985, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:51.954762'),
(986, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:52.337113'),
(987, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:52.472040'),
(988, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:52.482800'),
(989, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:30:56.251230'),
(990, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:02.925418'),
(991, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Expulsion Fuse-cut-out                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:06:20\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:03.753512'),
(992, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:04.334786'),
(993, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:15.214526'),
(994, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:29.949340'),
(995, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:30.136295'),
(996, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:30.263962'),
(997, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:30.298761'),
(998, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:30.319612'),
(999, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:30.337893'),
(1000, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:39.565953'),
(1001, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:39.626733'),
(1002, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:39.633293'),
(1003, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Expulsion Fuse-cut-out                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:06:20\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:40.156061'),
(1004, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Expulsion Fuse-cut-out                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:06:20\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:40.214119'),
(1005, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                            Expulsion Fuse-cut-out                          \n                          \n                        \n                                    PETER CHEGE KARIUKI\n                                     2020-07-15 05:06:20\n                      \n                    \n                  ', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:40.325249'),
(1006, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:40.634722'),
(1007, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:40.912150'),
(1008, 'pending_approval_tab', ' New Stocks Pending Approval', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:45.935410'),
(1009, 'approved_stocks_tab', 'Approved Stocks', 'danson@panoramaengineering.com', '', '2020-08-10 08:31:52.129725'),
(1010, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:17.571274'),
(1011, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.007713'),
(1012, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.133093'),
(1013, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.156092'),
(1014, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.170416'),
(1015, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.177481'),
(1016, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.308527'),
(1017, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.444831'),
(1018, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.476276'),
(1019, 'pending_approval_tab', '\n\n\n  \n  \n  Panorama | Inventory \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n    \n  \n  \n    \n  \n  \n  \n  \n  \n  \n  \n\n  \n\n  \n  \n  \n\n  \n  \n  \n  \n\n\n\n\n  \n  \n    \n    \n      \n        \n      \n      \n         Home\n      \n\n      \n        \n        \n      \n    \n    \n    \n  \n  \n\n  \n  \n    \n    \n      \n      Panorama Inventory\n    \n\n    \n    \n        \n      \n      \n        \n                      \n            \n        \n        \n          DANSON KARIUKI\n        \n      \n\n      \n   ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.488690'),
(1020, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.511072'),
(1021, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.543185'),
(1022, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.549144'),
(1023, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:18.571303'),
(1024, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.084762'),
(1025, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.091449'),
(1026, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.427083'),
(1027, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.447126'),
(1028, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.610136'),
(1029, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.814524'),
(1030, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'danson@panoramaengineering.com', '', '2020-08-10 08:32:29.833782'),
(1031, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-12 09:38:32.706323'),
(1032, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-12 09:38:33.819437'),
(1033, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-12 09:39:33.540137'),
(1034, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-12 09:39:35.537785'),
(1035, 'admin-user-management-link', '\n                  \n                  User Management\n                ', 'inventory@panoramaengineering.com', '', '2020-08-12 12:11:12.191093'),
(1036, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-12 12:12:46.510672'),
(1037, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-12 12:12:47.577644'),
(1038, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-13 09:11:16.947466'),
(1039, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-13 09:11:17.893013'),
(1040, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-13 09:50:23.442214'),
(1041, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-13 09:50:24.106457'),
(1042, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-08-13 09:55:21.100716'),
(1043, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-13 09:55:28.492052'),
(1044, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-13 09:55:29.089212'),
(1045, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-14 07:00:15.758357'),
(1046, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-14 07:00:22.183816'),
(1047, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-14 07:00:28.860215'),
(1048, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-14 07:00:29.478529'),
(1049, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-14 11:09:44.352977'),
(1050, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 11:09:48.452445'),
(1051, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 11:09:54.760093'),
(1052, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:30:00.131743'),
(1053, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:30:02.314922'),
(1054, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:30:12.026042'),
(1055, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:31:22.352518'),
(1056, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:31:31.080456'),
(1057, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:32:54.313518'),
(1058, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:33:39.748697'),
(1059, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:33:57.804251'),
(1060, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:33:58.788253'),
(1061, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:34:19.759047'),
(1062, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:34:41.408742'),
(1063, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:35:19.261217'),
(1064, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:35:36.196074'),
(1065, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:36:55.558499'),
(1066, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:37:18.509688'),
(1067, 'stock-management-link', '\n                      \n                      Item List\n                    8 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:37:24.257708'),
(1068, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:37:25.137042'),
(1069, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:37:30.135241'),
(1070, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:37:50.751410'),
(1071, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:38:14.969545'),
(1072, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-14 12:38:39.602956'),
(1073, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:06:46.897686'),
(1074, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:06:48.069639'),
(1075, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:07:00.119163'),
(1076, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:07:19.746457'),
(1077, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:07:32.566790'),
(1078, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:07:44.268724'),
(1079, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:07:54.268389'),
(1080, 'reports-link', 'Reports all_products_in_production', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:08:03.331388'),
(1081, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:20:15.079923'),
(1082, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 06:20:16.250085'),
(1083, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-15 08:08:02.812684'),
(1084, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 08:08:07.217743'),
(1085, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-15 09:17:55.993681'),
(1086, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-15 09:17:57.123973'),
(1087, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-18 08:38:48.237127'),
(1088, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-18 08:38:49.250299'),
(1089, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-18 08:39:01.181383'),
(1090, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-18 08:39:01.852175'),
(1091, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-18 11:29:14.018244'),
(1092, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-18 11:29:15.034053'),
(1093, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-08-18 11:29:21.940206'),
(1094, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-08-18 11:29:39.967899'),
(1095, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-08-18 11:29:52.796517'),
(1096, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-20 07:46:19.714433'),
(1097, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-20 07:46:20.564369'),
(1098, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-20 10:42:56.946691');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(1099, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:42:58.130011'),
(1100, 'stock-management-link', '\n                      \n                      Item List\n                    8 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:43:17.873427'),
(1101, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:43:18.585898'),
(1102, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:43:21.091067'),
(1103, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:43:23.642078'),
(1104, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-08-20 10:43:30.999256'),
(1105, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-24 12:44:12.351692'),
(1106, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-24 12:44:14.045172'),
(1107, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-08-24 12:44:15.495842'),
(1108, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-24 12:44:22.164399'),
(1109, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-25 06:33:56.592816'),
(1110, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 06:33:58.449702'),
(1111, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:21:55.700949'),
(1112, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:21:58.056654'),
(1113, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:22:31.550944'),
(1114, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:23:53.412342'),
(1115, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:24:47.414168'),
(1116, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:24:55.089192'),
(1117, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:27:39.732113'),
(1118, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:28:49.587347'),
(1119, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:30:40.821881'),
(1120, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:31:39.628382'),
(1121, 'supplier-ledger-management-link', '\n                     \n                     Supplier Ledger\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:33:30.086851'),
(1122, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:33:34.734039'),
(1123, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:33:41.985992'),
(1124, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:35:53.101222'),
(1125, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:39:12.519700'),
(1126, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:39:32.258071'),
(1127, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:41:01.835148'),
(1128, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:41:09.324729'),
(1129, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:42:54.838533'),
(1130, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:44:24.331294'),
(1131, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:45:30.339948'),
(1132, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:46:26.516232'),
(1133, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:47:31.896161'),
(1134, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:48:58.137777'),
(1135, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-25 09:55:12.519449'),
(1136, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-25 10:12:47.428311'),
(1137, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:12:48.279326'),
(1138, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:13:29.098023'),
(1139, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-08-25 10:13:33.049136'),
(1140, 'open-dashboard-project-payments-modal', 'Dashboard Stocks Payments', 'inventory@panoramaengineering.com', '', '2020-08-25 10:13:46.551785'),
(1141, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:13:59.797026'),
(1142, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:07.632431'),
(1143, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:08.700154'),
(1144, 'stock-management-link', '\n                      \n                      Item List\n                    19 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:11.111304'),
(1145, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:11.661230'),
(1146, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:24.553708'),
(1147, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:26.634195'),
(1148, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:30.156368'),
(1149, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:37.829177'),
(1150, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:14:59.100568'),
(1151, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-25 10:21:50.419423'),
(1152, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:21:51.359936'),
(1153, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-25 10:27:46.458147'),
(1154, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:27:47.203273'),
(1155, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:27:53.343701'),
(1156, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-08-25 10:27:53.964706'),
(1157, 'page_logs_tab', 'Page Logs', 'inventory@panoramaengineering.com', '', '2020-08-25 10:27:59.842952'),
(1158, 'supplier-ledger-management-link', '\n                     \n                     Supplier Ledger\n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 10:28:26.915242'),
(1159, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-25 12:20:19.250074'),
(1160, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 12:20:20.368041'),
(1161, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-08-25 12:20:29.572275'),
(1162, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-26 06:59:47.230365'),
(1163, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-26 06:59:48.062946'),
(1164, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'inventory@panoramaengineering.com', '', '2020-08-26 07:00:05.053286'),
(1165, 'reports-link', 'Reports all_stock_items', 'inventory@panoramaengineering.com', '', '2020-08-26 07:00:09.399358'),
(1166, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-08-26 11:42:34.678775'),
(1167, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-08-26 11:42:35.502123'),
(1168, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:46:14.099332'),
(1169, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:46:15.724171'),
(1170, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:46:28.324065'),
(1171, 'stock-management-link', '\n                      \n                      Item List\n                    17 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:46:56.328943'),
(1172, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:46:59.231352'),
(1173, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:47:29.177198'),
(1174, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:47:31.336763'),
(1175, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:49:16.739180'),
(1176, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:50:10.323358'),
(1177, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:50:50.295101'),
(1178, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:51:35.231787'),
(1179, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:51:56.771129'),
(1180, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:52:54.081904'),
(1181, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:53:02.963984'),
(1182, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:54:26.238271'),
(1183, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:56:06.525240'),
(1184, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:57:29.433279'),
(1185, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:57:34.062256'),
(1186, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 08:59:08.076789'),
(1187, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-08-28 10:57:59.386802'),
(1188, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 10:58:04.637531'),
(1189, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:02:48.471655'),
(1190, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:03:52.571240'),
(1191, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:03:56.976536'),
(1192, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:04:40.430841'),
(1193, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:04:59.855406'),
(1194, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:05:58.615481'),
(1195, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:06:54.239700'),
(1196, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:09:02.473950'),
(1197, '', '', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:09:54.825362'),
(1198, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:15:00.967242'),
(1199, 'reports-link', 'Reports all_stock_items', 'mbugua@panoramaengineering.com', '', '2020-08-28 11:15:10.731425'),
(1200, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-02 06:42:03.605488'),
(1201, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-02 06:42:06.455853'),
(1202, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-02 11:43:04.537804'),
(1203, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-02 11:43:06.462325'),
(1204, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-09-03 12:20:31.803680'),
(1205, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-09-03 12:20:32.731998'),
(1206, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-09-03 12:22:15.616028'),
(1207, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-09-08 13:03:55.799742'),
(1208, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-09-08 13:03:57.645471'),
(1209, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-09-08 14:56:55.773147'),
(1210, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-09-08 14:56:57.078234'),
(1211, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-09-08 14:57:45.001534'),
(1212, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-09-08 14:57:45.278616'),
(1213, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-09-16 12:44:42.420404'),
(1214, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-09-16 12:44:43.588114'),
(1215, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-09-16 12:44:54.318937'),
(1216, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:20:35.137975'),
(1217, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:20:36.542830'),
(1218, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:20:42.323355'),
(1219, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:22:13.665930'),
(1220, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:23:49.262332'),
(1221, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:24:35.585722'),
(1222, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:26:07.120334'),
(1223, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:34:04.037163'),
(1224, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:35:03.252182'),
(1225, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:35:54.387187'),
(1226, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:37:22.951568'),
(1227, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:54:27.315118'),
(1228, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:54:43.003747'),
(1229, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:55:43.712909'),
(1230, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:56:17.970348'),
(1231, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:56:23.120823'),
(1232, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:58:23.755720'),
(1233, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:58:40.434385'),
(1234, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:59:03.024074'),
(1235, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:59:03.925741'),
(1236, 'stock-management-link', '\n                      \n                      Item List\n                    35 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:59:44.108027'),
(1237, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:59:45.251382'),
(1238, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 06:59:50.606729'),
(1239, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:00:15.745482'),
(1240, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:00:35.468232'),
(1241, 'stock-management-link', '\n                      \n                      Item List\n                    30 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:00:47.893401'),
(1242, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:00:48.543930'),
(1243, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:00:50.051115'),
(1244, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:01:09.436276'),
(1245, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:01:18.329293'),
(1246, 'stock-management-link', '\n                      \n                      Item List\n                    34 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:01:21.797899'),
(1247, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:01:22.097077'),
(1248, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:01:23.932045'),
(1249, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:02:28.446813'),
(1250, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:03:31.799544'),
(1251, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:05:25.420442'),
(1252, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:06:20.879126'),
(1253, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:07:15.398657'),
(1254, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:07:26.924751'),
(1255, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:08:16.425500'),
(1256, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:09:22.756456'),
(1257, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:10:22.611268'),
(1258, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:11:10.751239'),
(1259, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:11:48.076521'),
(1260, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:12:26.383200'),
(1261, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:12:40.617104'),
(1262, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:14:21.849168'),
(1263, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:14:46.201527'),
(1264, 'stock-management-link', '\n                      \n                      Item List\n                    38 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:00.786539'),
(1265, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:01.170105'),
(1266, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:13.368890'),
(1267, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:35.462580'),
(1268, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:45.506205'),
(1269, 'stock-management-link', '\n                      \n                      Item List\n                    37 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:48.612304'),
(1270, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:49.117151'),
(1271, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:15:53.463428'),
(1272, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:16.199866'),
(1273, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:20.521339'),
(1274, 'stock-management-link', '\n                      \n                      Item List\n                    39 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:29.092903'),
(1275, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:29.713409'),
(1276, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:33.933209'),
(1277, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:48.612952'),
(1278, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:16:52.883227'),
(1279, 'stock-management-link', '\n                      \n                      Item List\n                    34 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:00.100679'),
(1280, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:01.125132'),
(1281, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:05.289788'),
(1282, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:18.268480'),
(1283, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:22.056663'),
(1284, 'stock-management-link', '\n                      \n                      Item List\n                    33 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:37.601961'),
(1285, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:38.274875'),
(1286, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:40.890825'),
(1287, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:51.271247'),
(1288, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:17:59.496943'),
(1289, 'stock-management-link', '\n                      \n                      Item List\n                    36 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:10.691771'),
(1290, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:12.039683'),
(1291, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:15.224315'),
(1292, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:26.393392'),
(1293, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:35.375971'),
(1294, 'stock-management-link', '\n                      \n                      Item List\n                    32 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:47.726046'),
(1295, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:48.494877'),
(1296, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:19:52.175365'),
(1297, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:00.852511'),
(1298, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:05.059956'),
(1299, 'stock-management-link', '\n                      \n                      Item List\n                    31 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:39.018320'),
(1300, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:39.868524'),
(1301, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:41.537936'),
(1302, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:20:52.854043'),
(1303, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:21:33.630243'),
(1304, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:22:30.807916'),
(1305, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:22:33.545321'),
(1306, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:23:17.007975'),
(1307, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:23:55.526766'),
(1308, 'stock-management-link', '\n                      \n                      Item List\n                    42 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:15.321755'),
(1309, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:16.069309'),
(1310, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:28.133146'),
(1311, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:30.380427'),
(1312, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:40.837873'),
(1313, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:24:48.242940'),
(1314, 'stock-management-link', '\n                      \n                      Item List\n                    43 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:25:02.042223'),
(1315, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:25:02.400951'),
(1316, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:25:04.977726'),
(1317, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:25:15.372307'),
(1318, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-17 07:25:25.354355'),
(1319, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-09-17 07:42:28.419687'),
(1320, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-09-17 07:42:29.621341'),
(1321, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:08:18.428867'),
(1322, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:08:20.280531'),
(1323, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:08:27.082427'),
(1324, 'end-product-management-link', '\n                     \n                     End Product List\n                   9 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:09:15.845275'),
(1325, 'stocks-used-tab', '\n            Stocks Used\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:09:16.183386'),
(1326, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:09:40.757143'),
(1327, 'stock-management-link', '\n                      \n                      Item List\n                    35 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:10:29.032840'),
(1328, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:10:29.712243'),
(1329, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:10:32.933604'),
(1330, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:12.618888'),
(1331, 'stock-management-link', '\n                      \n                      Item List\n                    30 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:25.015683'),
(1332, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:25.376721'),
(1333, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:29.720178'),
(1334, 'stock-management-link', '\n                      \n                      Item List\n                    29 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:44.011867'),
(1335, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:44.702434'),
(1336, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:11:48.620062'),
(1337, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:01.236748'),
(1338, 'stock-management-link', '\n                      \n                      Item List\n                    29 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:09.167481'),
(1339, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:09.488000'),
(1340, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:22.898127'),
(1341, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:28.820543'),
(1342, 'end-product-management-link', '\n                     \n                     End Product List\n                   8 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:51.935038'),
(1343, 'stocks-used-tab', '\n            Stocks Used\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:12:52.554296'),
(1344, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:13:08.501269'),
(1345, 'stock-management-link', '\n                      \n                      Item List\n                    29 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:13:19.739096'),
(1346, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:13:20.960360'),
(1347, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:13:32.507301'),
(1348, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:14:01.809443'),
(1349, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:14:13.693306'),
(1350, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:14:48.071247'),
(1351, 'stock-management-link', '\n                      \n                      Item List\n                    41 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:14:51.279936'),
(1352, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:14:51.652361'),
(1353, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:15:04.631877'),
(1354, 'stock-management-link', '\n                      \n                      Item List\n                    29 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:15:15.498935'),
(1355, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:15:16.135920'),
(1356, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:15:30.594937'),
(1357, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:15:52.406505'),
(1358, 'stock-management-link', '\n                      \n                      Item List\n                    26 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:03.797069'),
(1359, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:04.453828'),
(1360, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:09.797131'),
(1361, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:27.869360'),
(1362, 'end-product-management-link', '\n                     \n                     End Product List\n                   8 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:33.825959'),
(1363, 'stocks-used-tab', '\n            Stocks Used\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 08:16:34.144221'),
(1364, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-09-18 11:44:21.477685'),
(1365, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 11:44:24.591482'),
(1366, 'stock-category-management-link', '\n                      \n                      Category\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:19:18.813040'),
(1367, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:19:28.403975'),
(1368, 'stock-management-link', '\n                      \n                      Item List\n                    29 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:19:47.022330'),
(1369, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:19:47.877652'),
(1370, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:20:03.540775');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(1371, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:20:29.546241'),
(1372, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:20:38.196825'),
(1373, 'stock-management-link', '\n                      \n                      Item List\n                    27 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:20:56.926116'),
(1374, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:20:57.783317'),
(1375, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:06.255114'),
(1376, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:21.567475'),
(1377, 'stock-management-link', '\n                      \n                      Item List\n                    28 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:30.688537'),
(1378, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:31.527232'),
(1379, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:36.865136'),
(1380, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-09-18 12:21:54.783021'),
(1381, 'user-profile-link', 'User Profile', 'inventory@panoramaengineering.com', '', '2020-10-07 06:30:53.309000'),
(1382, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-10-07 07:17:53.192570'),
(1383, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:17:54.153979'),
(1384, 'stock-management-link', '\n                      \n                      Item List\n                    43 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:18:03.798534'),
(1385, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:18:04.524984'),
(1386, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:18:07.181070'),
(1387, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:18:09.417521'),
(1388, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:18:11.143251'),
(1389, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:30:56.364737'),
(1390, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:30:58.058180'),
(1391, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:36:59.909311'),
(1392, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:38:02.733476'),
(1393, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:38:57.674218'),
(1394, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:40:08.809297'),
(1395, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:41:07.731686'),
(1396, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:43:22.346772'),
(1397, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:43:24.495994'),
(1398, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:44:14.577920'),
(1399, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:46:13.976750'),
(1400, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:47:45.132474'),
(1401, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:50:24.323973'),
(1402, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:51:13.312447'),
(1403, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:51:17.324654'),
(1404, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:52:07.386520'),
(1405, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:52:57.328211'),
(1406, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:53:36.595901'),
(1407, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-07 07:54:18.543778'),
(1408, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:55:56.615399'),
(1409, 'stock-management-link', '\n                      \n                      Item List\n                    53 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:56:39.688341'),
(1410, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:56:40.254708'),
(1411, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:56:41.950750'),
(1412, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'inventory@panoramaengineering.com', '', '2020-10-07 07:56:45.074748'),
(1413, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:46:52.151985'),
(1414, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:46:53.900159'),
(1415, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:48:06.087319'),
(1416, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:49:03.256031'),
(1417, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:49:08.581519'),
(1418, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:49:10.244490'),
(1419, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:54:32.929624'),
(1420, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:55:37.070916'),
(1421, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:56:23.353484'),
(1422, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:57:16.499888'),
(1423, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-21 11:57:54.185957'),
(1424, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:19:55.290187'),
(1425, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:20:00.633060'),
(1426, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:28:55.324414'),
(1427, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:29:51.017598'),
(1428, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:30:06.638929'),
(1429, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:31:36.713149'),
(1430, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:32:30.362260'),
(1431, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:34:16.031051'),
(1432, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:35:28.983462'),
(1433, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:35:42.129542'),
(1434, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:36:25.278969'),
(1435, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:38:29.159882'),
(1436, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:39:09.632252'),
(1437, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:40:45.058948'),
(1438, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:43:23.431591'),
(1439, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:43:53.123217'),
(1440, 'stock-management-link', '\n                      \n                      Item List\n                    54 | PANORAMA ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:44:13.014705'),
(1441, 'stock-list-payments-tab', '\n             Payments\n        ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:44:14.574131'),
(1442, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:44:27.640779'),
(1443, 'end-product-tab', '\n            Stocks Request\n        ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:44:58.122203'),
(1444, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-27 09:45:38.705491'),
(1445, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-10-27 11:57:03.834913'),
(1446, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-10-27 11:57:07.406245'),
(1447, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'danson@panoramaengineering.com', '', '2020-10-27 11:59:41.745323'),
(1448, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-10-27 12:00:46.197728'),
(1449, 'reports-link', 'Reports all_profit_loss', 'danson@panoramaengineering.com', '', '2020-10-27 12:01:05.352678'),
(1450, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-10-27 12:02:14.238054'),
(1451, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-10-27 12:02:22.104478'),
(1452, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'danson@panoramaengineering.com', '', '2020-10-27 12:02:48.748387'),
(1453, 'Inventory-management-module', 'Inventory Management Module', 'danson@panoramaengineering.com', '', '2020-10-27 12:05:37.731237'),
(1454, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'danson@panoramaengineering.com', '', '2020-10-27 12:05:45.602050'),
(1455, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-10-27 12:06:48.184224'),
(1456, 'reports-link', 'Reports all_stock_items', 'danson@panoramaengineering.com', '', '2020-10-27 12:07:05.586431'),
(1457, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'danson@panoramaengineering.com', '', '2020-10-27 12:08:51.866711'),
(1458, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:35:03.670154'),
(1459, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:35:06.800486'),
(1460, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:39:05.714972'),
(1461, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:40:23.830573'),
(1462, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:41:42.690030'),
(1463, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:42:42.305144'),
(1464, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:44:08.474673'),
(1465, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:45:03.182721'),
(1466, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:45:07.502215'),
(1467, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-28 08:47:16.613187'),
(1468, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:40:59.196749'),
(1469, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:41:01.949067'),
(1470, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:41:17.086941'),
(1471, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:42:22.129120'),
(1472, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:42:34.613408'),
(1473, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:43:22.771711'),
(1474, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:44:19.082359'),
(1475, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:44:23.682985'),
(1476, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:44:28.761653'),
(1477, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:44:32.456424'),
(1478, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:46:09.272341'),
(1479, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-10-29 06:47:29.156497'),
(1480, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:04:21.359231'),
(1481, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:04:23.549007'),
(1482, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:05:20.511662'),
(1483, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:06:59.667560'),
(1484, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:08:50.934720'),
(1485, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:11:04.426442'),
(1486, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:12:12.939243'),
(1487, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:13:17.893209'),
(1488, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:14:04.507260'),
(1489, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:15:17.018499'),
(1490, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:15:28.303203'),
(1491, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:16:44.579147'),
(1492, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:17:33.615126'),
(1493, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:18:34.765987'),
(1494, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:18:50.813172'),
(1495, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:19:37.133218'),
(1496, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:19:40.546076'),
(1497, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:24:38.488966'),
(1498, 'Inventory-management-module', 'Inventory Management Module', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:42:41.076303'),
(1499, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:42:44.248426'),
(1500, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'mbugua@panoramaengineering.com', '', '2020-11-04 09:43:56.061247'),
(1501, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-11-06 08:53:52.700293'),
(1502, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:53:54.908113'),
(1503, 'end-product-management-link', '\n                     \n                     End Product List\n                   ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:54:15.484085'),
(1504, 'customer-management-link', '\n                      \n                      Customer List\n                    ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:54:35.269785'),
(1505, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:54:48.776134'),
(1506, 'invoice-received-management-link', '\n                  \n                  Invoice Received\n                ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:55:09.596735'),
(1507, 'supplier-ledger-management-link', '\n                     \n                     Supplier Ledger\n                   ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:55:35.877581'),
(1508, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:55:58.505132'),
(1509, 'stock-management-link', '\n                      \n                      Item List\n                    ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:15.685523'),
(1510, 'stock-management-link', '\n                      \n                      Item List\n                    81 | PANORAMA ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:18.507429'),
(1511, 'stock-list-payments-tab', '\n             Payments\n        ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:19.083345'),
(1512, 'end-product-tab', '\n            Stocks Request\n        ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:21.061432'),
(1513, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:25.074701'),
(1514, 'open-total-projects-modal', 'Dashboard Total Stocks', 'inventory@panoramaengineering.com', '', '2020-11-06 08:56:59.763109'),
(1515, 'open-dashboard-project-payments-modal', 'Dashboard Total Profits ', 'inventory@panoramaengineering.com', '', '2020-11-06 08:57:13.804920'),
(1516, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'inventory@panoramaengineering.com', '', '2020-11-15 14:22:57.344278'),
(1517, 'activity_logs_tab', 'Activity Logs', 'inventory@panoramaengineering.com', '', '2020-11-15 14:23:00.114584'),
(1518, 'sign_in_logs_tab', 'Sign in Logs', 'inventory@panoramaengineering.com', '', '2020-11-15 14:24:01.168676'),
(1519, 'system-info-link', '\n                  \n                  System Information\n                ', 'inventory@panoramaengineering.com', '', '2020-11-15 14:24:11.578893'),
(1520, 'Inventory-management-module', 'Inventory Management Module', 'inventory@panoramaengineering.com', '', '2020-11-23 13:12:58.150829'),
(1521, 'stock-management-link', '\n                    \n                        \n                          INVENTORY MANAGEMENT  \n                        \n                        \n                          MANAGE STOCKS\n                        \n                      \n                   ', 'inventory@panoramaengineering.com', '', '2020-11-23 13:13:04.866681'),
(1522, 'supplier-management-link', '\n                     \n                     Supplier List\n                   ', 'inventory@panoramaengineering.com', '', '2020-11-23 13:13:20.609290'),
(1523, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-24 10:04:10.079756'),
(1524, 'stock-management-link', '\n                    \n                        \n                          Recruitment MANAGEMENT  \n                        \n                        \n                          Manage Recruitment\n                        \n                      \n                   ', 'pitarcheizin@gmail.com', '', '2020-11-24 10:04:11.961339'),
(1525, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2020-11-24 17:27:30.025409'),
(1526, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2020-11-24 17:27:57.733159'),
(1527, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2020-11-24 17:27:58.492854'),
(1528, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2020-11-27 11:08:14.035017'),
(1529, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'pitarcheizin@gmail.com', '', '2020-11-27 11:31:36.174418'),
(1530, 'stock-management-link', '\n                      \n                      Vaccancies Available\n                    ', 'pitarcheizin@gmail.com', '', '2020-11-27 11:31:42.511288'),
(1531, 'stock-category-management-link', '\n                      \n                      Jobs Applied\n                    ', 'pitarcheizin@gmail.com', '', '2020-11-27 11:31:54.036911'),
(1532, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:27:47.046871'),
(1533, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:37:01.062542'),
(1534, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:41:02.020885'),
(1535, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:56:49.672232'),
(1536, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:57:28.286895'),
(1537, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 12:58:05.021502'),
(1538, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 13:12:26.490883'),
(1539, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 13:12:46.582678'),
(1540, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 13:13:10.114402'),
(1541, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 13:13:39.231383'),
(1542, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-27 14:27:31.996060'),
(1543, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-28 18:40:23.086537'),
(1544, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-28 18:41:05.834407'),
(1545, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-11-30 13:03:11.901286');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE IF NOT EXISTS `payment_gateway` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `payment_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Mpesa', '2020-05-07 17:07:49', 'PETER KARIUKI'),
(2, 'Bank', '2020-05-07 17:07:49', 'PETER KARIUKI'),
(3, 'Cash', '2020-05-07 17:08:30', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Furniture', '2020-06-19 11:52:04', 'PETER CHEGE KARIUKI'),
(2, 'Engineering', '2020-06-19 11:52:32', 'PETER CHEGE KARIUKI'),
(3, 'Powder Coating', '2020-06-19 11:54:22', 'PETER CHEGE KARIUKI'),
(4, 'consumables', '2020-07-09 11:34:49', 'DANSON KARIUKI'),
(5, 'Repairs and Maintenance of machinery', '2020-07-09 11:35:31', 'DANSON KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`id`, `rank_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Phd', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Masters', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'Degree', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(4, 'Diploma', '2020-06-19 11:52:05', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `selected_job_skills`
--

CREATE TABLE IF NOT EXISTS `selected_job_skills` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `selected_job_skills`
--

INSERT INTO `selected_job_skills` (`id`, `email`, `skill_name`, `time_recorded`) VALUES
(27, 'pitarcheizin@gmail.com', 'Procurement', '2020-11-26 19:56:09'),
(28, 'pitarcheizin@gmail.com', 'Economics', '2020-11-26 19:56:09'),
(29, 'pitarcheizin@gmail.com', 'MYSQL', '2020-11-26 19:56:29'),
(30, 'pitarcheizin@gmail.com', 'Development', '2020-11-27 10:05:34'),
(31, 'pitarcheizin@gmail.com', 'MYSQL', '2020-11-27 12:10:16'),
(32, 'pitarcheizin@gmail.com', 'PHP', '2020-11-27 12:23:11'),
(33, 'carol@gmail.com', 'MYSQL', '2020-11-30 13:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `sign_in_logs`
--

CREATE TABLE IF NOT EXISTS `sign_in_logs` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'default',
  `time_signed_in` varchar(50) DEFAULT NULL,
  `time_signed_out` varchar(50) DEFAULT NULL,
  `date_recorded` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=176 ;

--
-- Dumping data for table `sign_in_logs`
--

INSERT INTO `sign_in_logs` (`id`, `email`, `name`, `ip_address`, `user_type`, `time_signed_in`, `time_signed_out`, `date_recorded`) VALUES
(56, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/07/15 13:27:41', '2020/07/15 14:13:21', '2020/07/15'),
(57, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/07/15 14:24:12', '2020/07/15 15:14:02', '2020/07/15'),
(58, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/07/15 15:22:17', '2020/07/15 15:25:18', '2020/07/15'),
(59, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/07/15 15:25:23', '2020/07/15 15:38:03', '2020/07/15'),
(60, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/07/15 15:38:57', '2020/07/15 15:39:54', '2020/07/15'),
(61, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/07/15 15:40:07', NULL, '2020/07/15'),
(62, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.230', 'default', '2020/07/16 10:21:53', NULL, '2020/07/16'),
(63, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.230', 'default', '2020/07/16 20:37:01', '2020/07/16 22:19:08', '2020/07/16'),
(64, 'osino@panoramaengineering.com', 'RUTH OSINO', '197.254.121.226', 'default', '2020/07/17 15:42:37', NULL, '2020/07/17'),
(65, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.230', 'default', '2020/07/17 19:23:02', NULL, '2020/07/17'),
(66, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.230', 'default', '2020/07/17 19:56:37', NULL, '2020/07/17'),
(67, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.141', 'default', '2020/07/19 17:58:38', NULL, '2020/07/19'),
(68, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.141', 'default', '2020/07/20 13:31:05', NULL, '2020/07/20'),
(69, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.98.181', 'default', '2020/07/22 12:15:47', '2020/07/22 13:32:04', '2020/07/22'),
(70, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.98.181', 'default', '2020/07/22 13:32:12', '2020/07/22 13:47:16', '2020/07/22'),
(71, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.98.181', 'default', '2020/07/22 13:49:54', NULL, '2020/07/22'),
(72, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.72.209.53', 'default', '2020/07/23 14:22:09', '2020/07/23 15:00:08', '2020/07/23'),
(73, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.80.96.9', 'default', '2020/08/03 14:52:56', NULL, '2020/08/03'),
(74, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/08/04 09:05:53', '2020/08/04 09:06:07', '2020/08/04'),
(75, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/08/04 15:26:26', NULL, '2020/08/04'),
(76, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/08/06 16:10:17', NULL, '2020/08/06'),
(77, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '197.254.121.226', 'default', '2020/08/10 11:22:07', '2020/08/10 14:36:44', '2020/08/10'),
(78, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '196.201.218.76', 'default', '2020/08/12 12:38:12', NULL, '2020/08/12'),
(79, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/08/12 15:10:55', '2020/08/12 15:11:21', '2020/08/12'),
(80, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/12 15:12:32', '2020/08/12 16:01:38', '2020/08/12'),
(81, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/13 12:11:06', NULL, '2020/08/13'),
(82, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/13 12:21:37', NULL, '2020/08/13'),
(83, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/14 09:43:40', '2020/08/14 11:45:39', '2020/08/14'),
(84, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/08/14 10:00:10', NULL, '2020/08/14'),
(85, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/14 14:09:08', '2020/08/14 15:25:54', '2020/08/14'),
(86, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/14 15:29:44', '2020/08/14 15:53:50', '2020/08/14'),
(87, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/15 09:06:24', '2020/08/15 11:06:24', '2020/08/15'),
(88, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/15 11:06:42', '2020/08/15 12:16:21', '2020/08/15'),
(89, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/15 12:16:50', NULL, '2020/08/15'),
(90, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/17 09:32:57', '2020/08/17 13:00:10', '2020/08/17'),
(91, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '41.90.7.80', 'default', '2020/08/18 11:38:30', NULL, '2020/08/18'),
(92, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/18 14:02:25', NULL, '2020/08/18'),
(93, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/18 14:29:08', NULL, '2020/08/18'),
(94, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/18 16:33:19', NULL, '2020/08/18'),
(95, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/20 10:42:22', NULL, '2020/08/20'),
(96, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/20 13:42:32', NULL, '2020/08/20'),
(97, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/21 09:36:45', '2020/08/21 14:23:21', '2020/08/21'),
(98, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/24 15:32:58', '2020/08/24 16:00:12', '2020/08/24'),
(99, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/08/24 15:43:57', NULL, '2020/08/24'),
(100, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/25 08:58:43', '2020/08/25 12:21:16', '2020/08/25'),
(101, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/25 12:21:47', '2020/08/25 14:22:39', '2020/08/25'),
(102, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/25 13:12:41', NULL, '2020/08/25'),
(103, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/26 09:59:37', NULL, '2020/08/26'),
(104, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/26 14:41:45', NULL, '2020/08/26'),
(105, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/08/28 11:25:36', NULL, '2020/08/28'),
(106, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/28 11:31:07', NULL, '2020/08/28'),
(107, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/08/28 13:40:44', '2020/08/28 16:00:26', '2020/08/28'),
(108, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/09/02 09:41:53', '2020/09/02 12:03:14', '2020/09/02'),
(109, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/09/02 14:42:50', '2020/09/02 15:57:55', '2020/09/02'),
(110, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/09/03 15:20:26', NULL, '2020/09/03'),
(111, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '197.254.121.226', 'default', '2020/09/04 15:41:34', NULL, '2020/09/04'),
(112, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/09/08 15:09:10', NULL, '2020/09/08'),
(113, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/09/08 17:56:07', NULL, '2020/09/08'),
(114, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '197.254.121.226', 'default', '2020/09/11 10:02:53', NULL, '2020/09/11'),
(115, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '62.24.124.215', 'default', '2020/09/16 15:34:46', NULL, '2020/09/16'),
(116, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '62.24.124.215', 'default', '2020/09/17 09:20:11', '2020/09/17 16:04:33', '2020/09/17'),
(117, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '62.24.124.215', 'default', '2020/09/17 10:42:24', NULL, '2020/09/17'),
(118, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/09/18 11:07:58', '2020/09/18 13:58:51', '2020/09/18'),
(119, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/09/18 14:43:59', '2020/09/18 16:02:09', '2020/09/18'),
(120, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '102.68.77.126', 'default', '2020/10/01 16:22:44', '2020/10/01 16:26:11', '2020/10/01'),
(121, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '102.68.77.126', 'default', '2020/10/01 16:29:05', NULL, '2020/10/01'),
(122, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/10/07 09:30:45', NULL, '2020/10/07'),
(123, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/10/07 10:29:53', '2020/10/07 11:53:48', '2020/10/07'),
(124, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/10/09 09:25:16', NULL, '2020/10/09'),
(125, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/10/21 14:46:33', '2020/10/21 15:57:04', '2020/10/21'),
(126, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/10/27 12:19:46', '2020/10/27 14:54:52', '2020/10/27'),
(127, 'danson@panoramaengineering.com', 'DANSON KARIUKI', '102.68.77.126', 'default', '2020/10/27 14:30:22', NULL, '2020/10/27'),
(128, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/10/28 11:27:57', '2020/10/28 15:29:23', '2020/10/28'),
(129, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/10/29 09:40:31', NULL, '2020/10/29'),
(130, 'mbugua@panoramaengineering.com', 'BENCO MBUGUA', '102.68.77.126', 'default', '2020/11/04 12:04:03', '2020/11/04 15:25:32', '2020/11/04'),
(131, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/11/06 11:53:45', NULL, '2020/11/06'),
(132, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '102.68.77.126', 'default', '2020/11/15 17:22:40', NULL, '2020/11/15'),
(133, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '::1', 'default', '2020/11/23 11:04:44', '2020/11/23 11:05:00', '2020/11/23'),
(134, 'inventory@panoramaengineering.com', 'PETER CHEGE KARIUKI', '::1', 'default', '2020/11/23 16:12:46', '2020/11/23 16:14:43', '2020/11/23'),
(135, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/24 12:13:08', '2020/11/24 12:29:47', '2020/11/24'),
(136, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/24 13:00:27', '2020/11/24 13:19:20', '2020/11/24'),
(137, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/24 13:20:35', '2020/11/24 13:21:07', '2020/11/24'),
(138, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/24 13:21:18', '2020/11/24 13:21:26', '2020/11/24'),
(139, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/24 20:21:53', '2020/11/25 17:57:47', '2020/11/24'),
(140, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/25 17:58:03', '2020/11/27 15:37:54', '2020/11/25'),
(141, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/27 15:38:15', '2020/11/27 15:56:54', '2020/11/27'),
(142, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/27 15:57:17', '2020/11/27 15:57:41', '2020/11/27'),
(143, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/27 15:57:56', '2020/11/27 17:22:34', '2020/11/27'),
(144, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/27 17:23:00', '2020/11/27 17:23:52', '2020/11/27'),
(145, 'carol@gmail.com', '', '::1', 'default', '2020/11/27 17:24:17', '2020/11/27 17:26:54', '2020/11/27'),
(146, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/27 17:27:24', '2020/11/27 17:29:50', '2020/11/27'),
(147, 'cma@gmail.com', '', '::1', 'default', '2020/11/27 18:38:12', '2020/11/28 21:39:31', '2020/11/27'),
(148, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/28 21:39:58', '2020/11/28 21:40:43', '2020/11/28'),
(149, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/28 21:40:57', '2020/11/28 21:41:16', '2020/11/28'),
(150, 'carol@gmail.com', '', '::1', 'default', '2020/11/28 21:41:35', '2020/11/28 21:41:52', '2020/11/28'),
(151, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:02:57', '2020/11/30 16:08:07', '2020/11/30'),
(152, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:08:54', '2020/11/30 16:09:11', '2020/11/30'),
(153, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:09:23', '2020/11/30 16:12:28', '2020/11/30'),
(154, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:12:40', '2020/11/30 16:12:57', '2020/11/30'),
(155, 'cma@gmail.com', '', '::1', 'default', '2020/11/30 16:13:28', '2020/11/30 16:15:21', '2020/11/30'),
(156, 'cma@gmail.com', '', '::1', 'default', '2020/11/30 16:15:34', '2020/11/30 16:25:21', '2020/11/30'),
(157, 'carol@gmail.com', '', '::1', 'default', '2020/11/30 16:26:02', '2020/11/30 16:26:29', '2020/11/30'),
(158, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:28:08', '2020/11/30 16:32:21', '2020/11/30'),
(159, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:32:53', '2020/11/30 16:47:24', '2020/11/30'),
(160, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:48:29', '2020/11/30 16:49:25', '2020/11/30'),
(161, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:50:10', '2020/11/30 16:51:07', '2020/11/30'),
(162, 'carol@gmail.com', '', '::1', 'default', '2020/11/30 16:51:37', '2020/11/30 16:52:58', '2020/11/30'),
(163, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:57:04', '2020/11/30 16:57:35', '2020/11/30'),
(164, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 16:59:00', '2020/11/30 17:04:47', '2020/11/30'),
(165, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 17:05:18', '2020/11/30 17:07:59', '2020/11/30'),
(166, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 17:08:30', '2020/11/30 17:09:56', '2020/11/30'),
(167, 'cma@gmail.com', '', '::1', 'default', '2020/11/30 17:11:39', '2020/11/30 17:27:21', '2020/11/30'),
(168, 'cma@gmail.com', '', '::1', 'default', '2020/11/30 17:29:03', '2020/11/30 19:18:37', '2020/11/30'),
(169, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 19:18:51', '2020/11/30 19:24:58', '2020/11/30'),
(170, 'carol@gmail.com', '', '::1', 'default', '2020/11/30 19:54:16', '2020/11/30 19:57:29', '2020/11/30'),
(171, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/11/30 20:09:59', '2020/11/30 20:27:52', '2020/11/30'),
(172, 'cma@gmail.com', '', '::1', 'default', '2020/11/30 20:28:30', '2020/12/01 12:48:20', '2020/11/30'),
(173, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/01 12:50:13', '2020/12/01 12:51:51', '2020/12/01'),
(174, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/01 12:55:09', '2020/12/01 13:16:25', '2020/12/01'),
(175, 'cma@gmail.com', '', '::1', 'default', '2020/12/01 13:17:03', NULL, '2020/12/01');

-- --------------------------------------------------------

--
-- Table structure for table `single_product`
--

CREATE TABLE IF NOT EXISTS `single_product` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `end_product_ref` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `qtt` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `order_total` varchar(100) DEFAULT NULL,
  `stock_remaining` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_recorded` varchar(100) DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `single_product`
--

INSERT INTO `single_product` (`id`, `end_product_ref`, `product_name`, `unit_price`, `qtt`, `total`, `order_total`, `stock_remaining`, `time_recorded`, `date_recorded`, `recorded_by`) VALUES
(10, '8', '7', '3200', '1', '3200.00', NULL, '0', '2020-08-14 12:37:49', '14-Aug-2020', 'BENCO MBUGUA'),
(11, '35', '8', '684', '10', '6840.00', NULL, '0', '2020-09-17 07:00:14', '17-Sep-2020', 'BENCO MBUGUA'),
(12, '30', '8', '250', '11', '2750.00', NULL, '0', '2020-09-17 07:01:07', '17-Sep-2020', 'BENCO MBUGUA'),
(13, '38', '9', '3', '150', '450.00', NULL, '0', '2020-09-17 07:15:32', '17-Sep-2020', 'BENCO MBUGUA'),
(14, '37', '9', '300', '1', '300.00', NULL, '0', '2020-09-17 07:16:13', '17-Sep-2020', 'BENCO MBUGUA'),
(15, '39', '9', '80', '50', '4000.00', NULL, '0', '2020-09-17 07:16:46', '17-Sep-2020', 'BENCO MBUGUA'),
(16, '34', '9', '2385', '12', '28620.00', NULL, '0', '2020-09-17 07:17:16', '17-Sep-2020', 'BENCO MBUGUA'),
(17, '33', '9', '770', '2', '1540.00', NULL, '0', '2020-09-17 07:17:49', '17-Sep-2020', 'BENCO MBUGUA'),
(18, '36', '9', '1450', '14', '20300.00', NULL, '0', '2020-09-17 07:19:23', '17-Sep-2020', 'BENCO MBUGUA'),
(19, '32', '9', '4045', '3', '12135.00', NULL, '0', '2020-09-17 07:19:59', '17-Sep-2020', 'BENCO MBUGUA'),
(20, '31', '9', '13305', '3', '39915.00', NULL, '0', '2020-09-17 07:20:51', '17-Sep-2020', 'BENCO MBUGUA'),
(21, '42', '9', '1600', '2', '3200.00', NULL, '0', '2020-09-17 07:24:39', '17-Sep-2020', 'BENCO MBUGUA'),
(22, '43', '9', '600', '2', '1200.00', NULL, '0', '2020-09-17 07:25:13', '17-Sep-2020', 'BENCO MBUGUA'),
(25, '29', '8', '370', '15', '5550.00', NULL, '0', '2020-09-18 12:20:27', '18-Sep-2020', 'BENCO MBUGUA'),
(26, '54', '12', '16000', '3', '48000.00', NULL, '0', '2020-10-27 09:44:55', '27-Oct-2020', 'BENCO MBUGUA');

-- --------------------------------------------------------

--
-- Table structure for table `staff_users`
--

CREATE TABLE IF NOT EXISTS `staff_users` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `fName` varchar(100) DEFAULT NULL,
  `lName` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `access_level` varchar(50) NOT NULL DEFAULT 'standard',
  `contact` varchar(100) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `highestQualification` varchar(100) DEFAULT NULL,
  `currentPosition` varchar(100) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `emp_photo` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `password` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `DepartmentCode` (`location`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7243 ;

--
-- Dumping data for table `staff_users`
--

INSERT INTO `staff_users` (`id`, `fName`, `lName`, `dob`, `gender`, `Email`, `location`, `status`, `access_level`, `contact`, `nationality`, `highestQualification`, `currentPosition`, `companyName`, `experience`, `emp_photo`, `password`, `date_recorded`, `time_recorded`) VALUES
(7240, 'PETER', 'KARIUKI', '29-Feb-1992', 'Male', 'pitarcheizin@gmail.com', 'Juja', 'active', 'job_seeker', '0710257750', 'Kenyan', 'Masters', 'Software Developer', 'CMA', '3 Years', 'J7SN23R.jpg', 'f0b76267fbe12b936bd65e203dc675c1', '24-Nov-2020', '2020-11-24 09:12:45'),
(7241, 'Caroline', 'Njoroge', '16-Apr-1992', 'Female', 'carol@gmail.com', 'Nairobi', 'active', 'admin', '071025789', 'Kenyan', 'Degree', 'Finance', 'Potential Staffing', '5 years', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '24-Nov-2020', '2020-11-24 09:33:21'),
(7242, 'CMA', 'Energy', '16-Nov-2020', '', 'cma@gmail.com', 'upperhill', 'active', 'recruiter', '07102589', 'Kenya', '5-10', '', '', 'https://cma.or.ke', 'cmalogo', 'f0b76267fbe12b936bd65e203dc675c1', '27-Nov-2020', '2020-11-27 15:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `stock_approvers`
--

CREATE TABLE IF NOT EXISTS `stock_approvers` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `stock_approver` varchar(100) DEFAULT NULL,
  `stock_id` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `stock_approvers`
--

INSERT INTO `stock_approvers` (`id`, `stock_approver`, `stock_id`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(14, 'danson@panoramaengineering.com', '1', '15-Jul-2020', '2020-07-15 10:52:07', 'PETER CHEGE KARIUKI'),
(15, 'danson@panoramaengineering.com', '2', '15-Jul-2020', '2020-07-15 11:00:37', 'PETER CHEGE KARIUKI'),
(16, 'danson@panoramaengineering.com', '3', '15-Jul-2020', '2020-07-15 11:02:38', 'PETER CHEGE KARIUKI'),
(17, 'danson@panoramaengineering.com', '4', '15-Jul-2020', '2020-07-15 11:06:20', 'PETER CHEGE KARIUKI'),
(18, 'danson@panoramaengineering.com', '5', '15-Jul-2020', '2020-07-15 11:07:19', 'PETER CHEGE KARIUKI'),
(19, 'danson@panoramaengineering.com', '6', '15-Jul-2020', '2020-07-15 11:25:47', 'PETER CHEGE KARIUKI'),
(20, 'danson@panoramaengineering.com', '7', '15-Jul-2020', '2020-07-15 11:26:39', 'PETER CHEGE KARIUKI'),
(21, 'moffat1@panoramaengineering.com', '8', '14-Aug-2020', '2020-08-14 12:32:52', 'BENCO MBUGUA'),
(22, 'danson@panoramaengineering.com', '9', '25-Aug-2020', '2020-08-25 09:27:36', 'BENCO MBUGUA'),
(23, 'danson@panoramaengineering.com', '10', '25-Aug-2020', '2020-08-25 09:28:46', 'BENCO MBUGUA'),
(24, 'danson@panoramaengineering.com', '11', '25-Aug-2020', '2020-08-25 09:30:37', 'BENCO MBUGUA'),
(25, 'danson@panoramaengineering.com', '12', '25-Aug-2020', '2020-08-25 09:35:50', 'BENCO MBUGUA'),
(26, 'danson@panoramaengineering.com', '13', '25-Aug-2020', '2020-08-25 09:39:10', 'BENCO MBUGUA'),
(27, 'danson@panoramaengineering.com', '14', '25-Aug-2020', '2020-08-25 09:42:52', 'BENCO MBUGUA'),
(28, 'danson@panoramaengineering.com', '15', '25-Aug-2020', '2020-08-25 09:44:20', 'BENCO MBUGUA'),
(29, 'danson@panoramaengineering.com', '16', '25-Aug-2020', '2020-08-25 09:45:26', 'BENCO MBUGUA'),
(30, 'danson@panoramaengineering.com', '17', '25-Aug-2020', '2020-08-25 09:46:24', 'BENCO MBUGUA'),
(31, 'danson@panoramaengineering.com', '18', '25-Aug-2020', '2020-08-25 09:47:29', 'BENCO MBUGUA'),
(32, 'danson@panoramaengineering.com', '19', '25-Aug-2020', '2020-08-25 09:48:53', 'BENCO MBUGUA'),
(33, 'danson@panoramaengineering.com', '20', '28-Aug-2020', '2020-08-28 08:49:12', 'BENCO MBUGUA'),
(34, 'danson@panoramaengineering.com', '21', '28-Aug-2020', '2020-08-28 08:50:07', 'BENCO MBUGUA'),
(35, 'danson@panoramaengineering.com', '22', '28-Aug-2020', '2020-08-28 08:50:47', 'BENCO MBUGUA'),
(36, 'danson@panoramaengineering.com', '23', '28-Aug-2020', '2020-08-28 08:51:32', 'BENCO MBUGUA'),
(37, 'danson@panoramaengineering.com', '24', '28-Aug-2020', '2020-08-28 08:54:23', 'BENCO MBUGUA'),
(38, 'danson@panoramaengineering.com', '25', '28-Aug-2020', '2020-08-28 08:59:04', 'BENCO MBUGUA'),
(39, 'danson@panoramaengineering.com', '26', '28-Aug-2020', '2020-08-28 11:04:37', 'BENCO MBUGUA'),
(40, 'danson@panoramaengineering.com', '27', '28-Aug-2020', '2020-08-28 11:08:58', 'BENCO MBUGUA'),
(41, 'danson@panoramaengineering.com', '28', '17-Sep-2020', '2020-09-17 06:22:09', 'BENCO MBUGUA'),
(42, 'danson@panoramaengineering.com', '29', '17-Sep-2020', '2020-09-17 06:23:46', 'BENCO MBUGUA'),
(43, 'danson@panoramaengineering.com', '30', '17-Sep-2020', '2020-09-17 06:24:33', 'BENCO MBUGUA'),
(44, 'danson@panoramaengineering.com', '31', '17-Sep-2020', '2020-09-17 06:26:05', 'BENCO MBUGUA'),
(45, 'danson@panoramaengineering.com', '32', '17-Sep-2020', '2020-09-17 06:34:00', 'BENCO MBUGUA'),
(46, 'danson@panoramaengineering.com', '33', '17-Sep-2020', '2020-09-17 06:35:00', 'BENCO MBUGUA'),
(47, 'danson@panoramaengineering.com', '34', '17-Sep-2020', '2020-09-17 06:35:51', 'BENCO MBUGUA'),
(48, 'danson@panoramaengineering.com', '35', '17-Sep-2020', '2020-09-17 06:37:20', 'BENCO MBUGUA'),
(49, 'danson@panoramaengineering.com', '36', '17-Sep-2020', '2020-09-17 07:03:29', 'BENCO MBUGUA'),
(50, 'danson@panoramaengineering.com', '37', '17-Sep-2020', '2020-09-17 07:08:13', 'BENCO MBUGUA'),
(51, 'danson@panoramaengineering.com', '38', '17-Sep-2020', '2020-09-17 07:09:20', 'BENCO MBUGUA'),
(52, 'danson@panoramaengineering.com', '39', '17-Sep-2020', '2020-09-17 07:10:20', 'BENCO MBUGUA'),
(53, 'danson@panoramaengineering.com', '40', '17-Sep-2020', '2020-09-17 07:11:07', 'BENCO MBUGUA'),
(54, 'danson@panoramaengineering.com', '41', '17-Sep-2020', '2020-09-17 07:11:45', 'BENCO MBUGUA'),
(55, 'danson@panoramaengineering.com', '42', '17-Sep-2020', '2020-09-17 07:23:13', 'BENCO MBUGUA'),
(56, 'danson@panoramaengineering.com', '43', '17-Sep-2020', '2020-09-17 07:23:53', 'BENCO MBUGUA'),
(57, 'danson@panoramaengineering.com', '44', '07-Oct-2020', '2020-10-07 07:37:59', 'BENCO MBUGUA'),
(58, 'danson@panoramaengineering.com', '45', '07-Oct-2020', '2020-10-07 07:38:55', 'BENCO MBUGUA'),
(59, 'danson@panoramaengineering.com', '46', '07-Oct-2020', '2020-10-07 07:40:06', 'BENCO MBUGUA'),
(60, 'danson@panoramaengineering.com', '47', '07-Oct-2020', '2020-10-07 07:44:11', 'BENCO MBUGUA'),
(61, 'danson@panoramaengineering.com', '48', '07-Oct-2020', '2020-10-07 07:46:11', 'BENCO MBUGUA'),
(62, 'danson@panoramaengineering.com', '49', '07-Oct-2020', '2020-10-07 07:47:41', 'BENCO MBUGUA'),
(63, 'danson@panoramaengineering.com', '50', '07-Oct-2020', '2020-10-07 07:52:05', 'BENCO MBUGUA'),
(64, 'danson@panoramaengineering.com', '51', '07-Oct-2020', '2020-10-07 07:52:54', 'BENCO MBUGUA'),
(65, 'danson@panoramaengineering.com', '52', '07-Oct-2020', '2020-10-07 07:53:33', 'BENCO MBUGUA'),
(66, 'danson@panoramaengineering.com', '53', '07-Oct-2020', '2020-10-07 07:54:15', 'BENCO MBUGUA'),
(67, 'danson@panoramaengineering.com', '54', '21-Oct-2020', '2020-10-21 11:54:30', 'BENCO MBUGUA'),
(68, 'danson@panoramaengineering.com', '55', '21-Oct-2020', '2020-10-21 11:55:34', 'BENCO MBUGUA'),
(69, 'danson@panoramaengineering.com', '56', '21-Oct-2020', '2020-10-21 11:56:20', 'BENCO MBUGUA'),
(70, 'danson@panoramaengineering.com', '57', '21-Oct-2020', '2020-10-21 11:57:13', 'BENCO MBUGUA'),
(71, 'danson@panoramaengineering.com', '58', '21-Oct-2020', '2020-10-21 11:57:51', 'BENCO MBUGUA'),
(72, 'danson@panoramaengineering.com', '59', '27-Oct-2020', '2020-10-27 09:28:51', 'BENCO MBUGUA'),
(73, 'danson@panoramaengineering.com', '60', '27-Oct-2020', '2020-10-27 09:29:46', 'BENCO MBUGUA'),
(74, 'danson@panoramaengineering.com', '61', '28-Oct-2020', '2020-10-28 08:39:02', 'BENCO MBUGUA'),
(75, 'danson@panoramaengineering.com', '62', '28-Oct-2020', '2020-10-28 08:40:21', 'BENCO MBUGUA'),
(76, 'danson@panoramaengineering.com', '63', '28-Oct-2020', '2020-10-28 08:41:39', 'BENCO MBUGUA'),
(77, 'danson@panoramaengineering.com', '64', '28-Oct-2020', '2020-10-28 08:42:38', 'BENCO MBUGUA'),
(78, 'danson@panoramaengineering.com', '65', '28-Oct-2020', '2020-10-28 08:47:14', 'BENCO MBUGUA'),
(79, 'danson@panoramaengineering.com', '66', '29-Oct-2020', '2020-10-29 06:43:12', 'BENCO MBUGUA'),
(80, 'danson@panoramaengineering.com', '67', '29-Oct-2020', '2020-10-29 06:43:56', 'BENCO MBUGUA'),
(81, 'danson@panoramaengineering.com', '67', '29-Oct-2020', '2020-10-29 06:44:08', 'BENCO MBUGUA'),
(82, 'danson@panoramaengineering.com', '67', '29-Oct-2020', '2020-10-29 06:44:12', 'BENCO MBUGUA'),
(83, 'danson@panoramaengineering.com', '67', '29-Oct-2020', '2020-10-29 06:44:12', 'BENCO MBUGUA'),
(84, 'danson@panoramaengineering.com', '68', '29-Oct-2020', '2020-10-29 06:45:23', 'BENCO MBUGUA'),
(85, 'danson@panoramaengineering.com', '69', '29-Oct-2020', '2020-10-29 06:47:08', 'BENCO MBUGUA'),
(86, 'danson@panoramaengineering.com', '70', '04-Nov-2020', '2020-11-04 09:05:17', 'BENCO MBUGUA'),
(87, 'danson@panoramaengineering.com', '71', '04-Nov-2020', '2020-11-04 09:06:56', 'BENCO MBUGUA'),
(88, 'danson@panoramaengineering.com', '72', '04-Nov-2020', '2020-11-04 09:08:48', 'BENCO MBUGUA'),
(89, 'danson@panoramaengineering.com', '73', '04-Nov-2020', '2020-11-04 09:11:01', 'BENCO MBUGUA'),
(90, 'danson@panoramaengineering.com', '74', '04-Nov-2020', '2020-11-04 09:12:08', 'BENCO MBUGUA'),
(91, 'danson@panoramaengineering.com', '75', '04-Nov-2020', '2020-11-04 09:13:13', 'BENCO MBUGUA'),
(92, 'danson@panoramaengineering.com', '76', '04-Nov-2020', '2020-11-04 09:14:01', 'BENCO MBUGUA'),
(93, 'danson@panoramaengineering.com', '77', '04-Nov-2020', '2020-11-04 09:16:40', 'BENCO MBUGUA'),
(94, 'danson@panoramaengineering.com', '78', '04-Nov-2020', '2020-11-04 09:17:29', 'BENCO MBUGUA'),
(95, 'danson@panoramaengineering.com', '79', '04-Nov-2020', '2020-11-04 09:18:24', 'BENCO MBUGUA'),
(96, 'danson@panoramaengineering.com', '80', '04-Nov-2020', '2020-11-04 09:24:35', 'BENCO MBUGUA'),
(97, 'danson@panoramaengineering.com', '81', '04-Nov-2020', '2020-11-04 09:43:53', 'BENCO MBUGUA');

-- --------------------------------------------------------

--
-- Table structure for table `stock_item`
--

CREATE TABLE IF NOT EXISTS `stock_item` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `reference_no` int(11) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_description` varchar(100) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `supplier_id` varchar(100) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending_approval',
  `image` varchar(100) DEFAULT NULL,
  `end_product_id` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `stock_item`
--

INSERT INTO `stock_item` (`id`, `reference_no`, `item_name`, `item_description`, `category_id`, `supplier_id`, `status`, `image`, `end_product_id`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(14, 1, 'Copper lug compress', '120 sqmm', 'Engineering', 'ZHEJIANG YOMIN ELECTRIC LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 10:52:07', 'PETER CHEGE KARIUKI'),
(15, 2, 'Copper lug  compress', '70sqmm', 'Engineering', 'ZHEJIANG YOMIN ELECTRIC LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:00:37', 'PETER CHEGE KARIUKI'),
(16, 3, 'Copper lug compress', '630sqmm', 'Engineering', 'ZHEJIANG YOMIN ELECTRIC LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:02:38', 'PETER CHEGE KARIUKI'),
(17, 4, 'Expulsion Fuse-cut-out', '11Kv', 'Engineering', 'CHUANG XIONG GROUP TECHNOLOGY LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:06:20', 'PETER CHEGE KARIUKI'),
(18, 5, 'Expulsion Fuse-cut-out', '33Kv', 'Engineering', 'CHUANG XIONG GROUP TECHNOLOGY LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:07:19', 'PETER CHEGE KARIUKI'),
(19, 6, 'Termination Kits', '11Kv', 'Engineering', 'CHUANG XIONG GROUP TECHNOLOGY LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:25:47', 'PETER CHEGE KARIUKI'),
(20, 7, 'Termination Kits', '33Kv', 'Engineering', 'CHUANG XIONG GROUP TECHNOLOGY LTD', 'approved', NULL, NULL, '15-Jul-2020', '2020-07-15 11:26:39', 'PETER CHEGE KARIUKI'),
(21, 8, 'GI Sheet ', '8x4x1.00mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '14-Aug-2020', '2020-08-14 12:32:52', 'BENCO MBUGUA'),
(22, 9, 'MS Tee', ' 25x25x3', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:27:36', 'BENCO MBUGUA'),
(23, 10, 'flat Bar ', '  3/4''''x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:28:46', 'BENCO MBUGUA'),
(24, 11, 'GI Sheet', '8x4x1mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:30:37', 'BENCO MBUGUA'),
(25, 12, 'MIld steel Dia', '3/8''''', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:35:50', 'BENCO MBUGUA'),
(26, 13, 'Stainless steel Rod', 'Dia 8mm G304', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:39:10', 'BENCO MBUGUA'),
(27, 14, 'Werods', 'N3 E6013 3.2mm', 'Engineering', 'P&L Above Heights Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:42:52', 'BENCO MBUGUA'),
(28, 15, 'Zed Angle', '25x25x3mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:44:20', 'BENCO MBUGUA'),
(29, 16, 'SHS', '40x40x1.2mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:45:26', 'BENCO MBUGUA'),
(30, 17, 'SHS', '50x50x1.5mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:46:24', 'BENCO MBUGUA'),
(31, 18, 'Hinges', 'Window Hinges', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:47:29', 'BENCO MBUGUA'),
(32, 19, 'Flat Bar', '25x3mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:48:53', 'BENCO MBUGUA'),
(33, 20, 'SHS', '50x50x1.5mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:49:12', 'BENCO MBUGUA'),
(34, 21, 'SHS', '40x40x1.5mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:50:07', 'BENCO MBUGUA'),
(35, 22, 'SHS', '20x20x1.2mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:50:47', 'BENCO MBUGUA'),
(36, 23, 'MS Plate', '8x4x1.5mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:51:32', 'BENCO MBUGUA'),
(37, 24, 'GAS', 'Oxygen', 'Engineering', 'Noble Gases', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:54:23', 'BENCO MBUGUA'),
(38, 25, 'Powder Coating Paint', 'PP STR KEN RAL', 'Engineering', 'Kansai Paint', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 08:59:04', 'BENCO MBUGUA'),
(39, 26, 'Flat Bar', '1''''x3mm', 'Engineering', 'Maisha Steel  Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 11:04:37', 'BENCO MBUGUA'),
(40, 27, 'Expanded Mesh', 'Expanded Mesh', 'Engineering', 'Clerb Enterprises Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 11:08:58', 'BENCO MBUGUA'),
(41, 28, 'MS Plate', '8x4x1.2mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:22:09', 'BENCO MBUGUA'),
(42, 29, 'Flat Bar', '1x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:23:46', 'BENCO MBUGUA'),
(43, 30, 'Flat Bar', '3/4x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:24:33', 'BENCO MBUGUA'),
(44, 31, 'SHS', '150x150x4mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:26:05', 'BENCO MBUGUA'),
(45, 32, 'RHS', '100X50X3MM', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:34:00', 'BENCO MBUGUA'),
(46, 33, 'Round Bar', '16mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:35:00', 'BENCO MBUGUA'),
(47, 34, 'Z Purlin', '5x2x2mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:35:51', 'BENCO MBUGUA'),
(48, 35, 'Tee', '1''''', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:37:20', 'BENCO MBUGUA'),
(49, 36, 'Angleline', '50x50x3mm', 'Engineering', 'Maisha Steel  Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:03:29', 'BENCO MBUGUA'),
(50, 37, 'Bolt & Nuts', '8mmx1''''', 'Engineering', 'Orbital Fastner', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:08:13', 'BENCO MBUGUA'),
(51, 38, 'Screws', 'Roofing 1''''', 'Engineering', 'P carlos hardware', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:09:20', 'BENCO MBUGUA'),
(52, 39, 'Rawl Bolt', '12mm Dia x100', 'Engineering', 'P carlos hardware', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:10:20', 'BENCO MBUGUA'),
(53, 40, 'Down Stoppers', 'Stopper', 'Engineering', 'P carlos hardware', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:11:07', 'BENCO MBUGUA'),
(54, 41, 'Hidges', 'Window Hidges', 'Engineering', 'P carlos hardware', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:11:45', 'BENCO MBUGUA'),
(55, 42, 'Paint', 'NC Primer Grey', 'Engineering', 'GYM  Car Auto Paints', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:23:13', 'BENCO MBUGUA'),
(56, 43, 'Thinner', 'STD Thinner', 'Engineering', 'GYM  Car Auto Paints', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:23:53', 'BENCO MBUGUA'),
(57, 44, 'Mild steel', '8x4x1mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:37:59', 'BENCO MBUGUA'),
(58, 45, 'Gas', 'Argon High Purity Gas', 'Engineering', 'Noble Gases', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:38:55', 'BENCO MBUGUA'),
(59, 46, 'SHS', '40x40x1.2', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:40:06', 'BENCO MBUGUA'),
(60, 47, 'Powder coating Paint', 'Red textures', 'Engineering', 'Akzonobel', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:44:11', 'BENCO MBUGUA'),
(61, 48, 'SS Rod', 'POM C Rod 25mm Dia', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:46:11', 'BENCO MBUGUA'),
(62, 49, 'Mild Steel', 'Mild steel 5/8mm dia', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:47:41', 'BENCO MBUGUA'),
(63, 50, 'SHS', '2x2x16G', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:52:05', 'BENCO MBUGUA'),
(64, 51, 'Agnleline ', '2''''X3/16', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:52:54', 'BENCO MBUGUA'),
(65, 52, 'Flat bar', '11/2x1/8', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:53:33', 'BENCO MBUGUA'),
(66, 53, 'Zed bar', '1''''', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:54:15', 'BENCO MBUGUA'),
(67, 54, 'SS plate', '8x4x2mm Grade 304', 'Engineering', 'APEX STEEL LTD', 'pending_approval', NULL, NULL, '21-Oct-2020', '2020-10-21 11:54:30', 'BENCO MBUGUA'),
(68, 55, 'SS Plate', '8x4x4mm Grade 304', 'Engineering', 'APEX STEEL LTD', 'pending_approval', NULL, NULL, '21-Oct-2020', '2020-10-21 11:55:34', 'BENCO MBUGUA'),
(69, 56, 'Mild Steel Plate', '8x4x3.8mm', 'Engineering', 'APEX STEEL LTD', 'pending_approval', NULL, NULL, '21-Oct-2020', '2020-10-21 11:56:20', 'BENCO MBUGUA'),
(70, 57, 'Mild steel Plate', '8x4x5.8mm', 'Engineering', 'APEX STEEL LTD', 'pending_approval', NULL, NULL, '21-Oct-2020', '2020-10-21 11:57:13', 'BENCO MBUGUA'),
(71, 58, 'Mild Steel Plate', '8x4x1.2mm', 'Engineering', 'APEX STEEL LTD', 'pending_approval', NULL, NULL, '21-Oct-2020', '2020-10-21 11:57:51', 'BENCO MBUGUA'),
(72, 59, 'MS Plate', '8x4x1mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '27-Oct-2020', '2020-10-27 09:28:51', 'BENCO MBUGUA'),
(73, 60, 'MS Plate', '8x4x3mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '27-Oct-2020', '2020-10-27 09:29:46', 'BENCO MBUGUA'),
(74, 61, 'Shaft', 'EN9 35mmx300mm', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '28-Oct-2020', '2020-10-28 08:39:02', 'BENCO MBUGUA'),
(75, 62, 'SS Sheet', '8x4x3mm G304', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '28-Oct-2020', '2020-10-28 08:40:21', 'BENCO MBUGUA'),
(76, 63, 'SS Round tube', '1/2x1.5x5.8mm', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '28-Oct-2020', '2020-10-28 08:41:39', 'BENCO MBUGUA'),
(77, 64, 'SS Bend', '11/2 G304', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '28-Oct-2020', '2020-10-28 08:42:38', 'BENCO MBUGUA'),
(78, 65, 'Powder Coating Paint', 'Glossy RAL013', 'Powder Coating', 'Nasib Industries Ltd', 'pending_approval', NULL, NULL, '28-Oct-2020', '2020-10-28 08:47:14', 'BENCO MBUGUA'),
(79, 66, 'Filler Wire', '2.4', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:43:12', 'BENCO MBUGUA'),
(80, 67, 'Filler wire', '1.60', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:43:56', 'BENCO MBUGUA'),
(81, 67, 'Filler wire', '1.60', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:44:08', 'BENCO MBUGUA'),
(82, 67, 'Filler wire', '1.60', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:44:12', 'BENCO MBUGUA'),
(83, 67, 'Filler wire', '1.60', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:44:12', 'BENCO MBUGUA'),
(84, 68, 'Slit Cutter', '7''''', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:45:23', 'BENCO MBUGUA'),
(85, 69, 'Pure Copper Rod', '25mmx1ft', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:47:08', 'BENCO MBUGUA'),
(86, 70, 'SS Pipe G304', '50x1.5mm', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:05:17', 'BENCO MBUGUA'),
(87, 71, 'MS Plate', '8x4x1', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:06:56', 'BENCO MBUGUA'),
(88, 72, 'Gas', 'Argon High Purity', 'Engineering', 'Noble Gases', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:08:48', 'BENCO MBUGUA'),
(89, 73, 'SS Bend', 'G304 2''''', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:11:01', 'BENCO MBUGUA'),
(90, 74, 'SS Round Tube', 'Dia 1.5x1.5mmx5.8m G304', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:12:08', 'BENCO MBUGUA'),
(91, 75, 'SS Rosette cover', 'Cover 1.5 CC04', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:13:13', 'BENCO MBUGUA'),
(92, 76, 'SS Glass clamp', 'GC01', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:14:01', 'BENCO MBUGUA'),
(93, 77, 'Wax Bar', 'Wax Bar', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:16:40', 'BENCO MBUGUA'),
(94, 78, 'Flap Disc', '120 & 80', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:17:29', 'BENCO MBUGUA'),
(95, 79, 'Slit cutter', 'Makita  4''''', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:18:24', 'BENCO MBUGUA'),
(96, 80, 'Flap wheel', '120 &80', 'Engineering', 'Jumbo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:24:35', 'BENCO MBUGUA'),
(97, 81, 'Sisal Cloth Disc', 'HD 7''''', 'Engineering', 'Jumbo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:43:53', 'BENCO MBUGUA');

-- --------------------------------------------------------

--
-- Table structure for table `work_type`
--

CREATE TABLE IF NOT EXISTS `work_type` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `work_type` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `work_type`
--

INSERT INTO `work_type` (`id`, `work_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Contract', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Permanent', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'Internship', '2020-06-19 11:52:06', 'PETER KARIUKI'),
(4, 'Graduate', '2020-06-19 11:52:07', 'PETER KARIUKI');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
