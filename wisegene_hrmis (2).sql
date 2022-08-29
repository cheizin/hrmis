-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2022 at 08:58 AM
-- Server version: 5.7.36
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisegene_hrmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `about_me` varchar(500) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `email`, `about_me`, `date_created`, `time_recorded`) VALUES
(4, 'pitarcheizin@gmail.com', 'Resource Person', '25-Nov-2020', '2020-11-25 13:41:10'),
(5, 'pitarcheizin@gmail.com', 'Resource Person', '25-Nov-2020', '2020-11-25 13:41:11'),
(6, 'cma@gmail.com', 'Regulator', '30-Nov-2020', '2020-11-30 15:15:55'),
(7, 'rose@gmail.com', 'About Me ', '04-Dec-2020', '2020-12-04 11:09:11'),
(8, 'caro88njoroge@gmail.com', 'Resourceful person', '13-Dec-2020', '2020-12-13 17:21:41'),
(9, 'bonface@gmail.com', 'About myself info', '22-Feb-2121', '2021-02-22 08:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `action_reference` varchar(3000) NOT NULL,
  `action_icon` varchar(100) DEFAULT NULL,
  `page_id` varchar(100) NOT NULL,
  `time_recorded` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `email`, `action_name`, `action_reference`, `action_icon`, `page_id`, `time_recorded`) VALUES
(779, '', 'Company Information Creation', 'Added Company Details Potential Staffing', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/12 21:46:15'),
(780, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/12 21:55:10'),
(781, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/12 23:49:12'),
(782, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 11:58:37'),
(783, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 11:58:49'),
(784, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 11:59:03'),
(785, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 12:01:53'),
(786, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 12:03:16'),
(787, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 17:03:46'),
(788, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 17:24:48'),
(789, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 17:44:39'),
(790, '', 'Personal Information Creation', 'Added Personal Details PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/13 18:22:29'),
(791, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 18:24:45'),
(792, 'info@potentialstaffing.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:12:38'),
(793, 'info@potentialstaffing.com', 'Job Information Creation', 'Posted Job Finance manager', 'far fa-project-diagram text-success', 'Posting job Details', '2020/12/13 20:14:18'),
(794, '', 'Personal Information Creation', 'Added Personal Details Njoroge', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/13 20:17:24'),
(795, 'caro88njoroge@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:20:34'),
(796, 'caro88njoroge@gmail.com', 'Personal Information Creation', 'Added About me Resourceful person', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:21:42'),
(797, 'caro88njoroge@gmail.com', 'Job Application', 'Applied for the job 7', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/13 20:26:40'),
(798, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:27:59'),
(799, 'carol@gmail.com', 'Job title Creation', 'Added Job Title Finance', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:29:13'),
(800, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsbalanc sheet', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:29:40'),
(801, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is trial balance', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:29:57'),
(802, 'carol@gmail.com', 'Job TeST Assignment', 'Assigned Job test for Finance manager', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:30:35'),
(803, 'caro88njoroge@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:31:09'),
(804, 'info@potentialstaffing.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:32:21'),
(805, 'info@potentialstaffing.com', 'Job Application status', 'Change application status toTesting', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:33:52'),
(806, 'caro88njoroge@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:34:11'),
(807, 'caro88njoroge@gmail.com', 'Answered Test', 'Answered the test HDASHDH\r\n\r\nD\r\nDSA', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/13 20:35:05'),
(808, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:35:41'),
(809, 'carol@gmail.com', 'Answered Test', 'Response for the test HDASHDH\r\n\r\nD\r\nDSA\r\n\r\nhdhsahd', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/13 20:36:38'),
(810, 'caro88njoroge@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:37:13'),
(811, 'caro88njoroge@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:38:56'),
(812, 'info@potentialstaffing.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:39:40'),
(813, 'info@potentialstaffing.com', 'Job APPLICATION request', 'Requested Job APPLICATION FOR', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/13 20:42:00'),
(814, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:42:24'),
(815, 'pitarcheizin@gmail.com', 'Job Application', 'Applied for the job 7', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/13 20:43:14'),
(816, 'info@potentialstaffing.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/13 20:44:30'),
(817, '', 'Company Information Creation', 'Added Company Details CMA', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/14 10:36:15'),
(818, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:36:25'),
(819, 'cma@gmail.com', 'Job Information Creation', 'Posted Job System Security', 'far fa-project-diagram text-success', 'Posting job Details', '2020/12/14 10:39:21'),
(820, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:39:34'),
(821, 'pitarcheizin@gmail.com', 'Job Application', 'Applied for the job 8', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/14 10:39:51'),
(822, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:40:04'),
(823, 'cma@gmail.com', 'Job Application status', 'Change application status toTesting', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/14 10:40:20'),
(824, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:40:35'),
(825, 'carol@gmail.com', 'Job title Creation', 'Added Job Title System security systems', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/14 10:40:53'),
(826, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is security', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/14 10:41:04'),
(827, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is cyber ', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/14 10:41:11'),
(828, 'carol@gmail.com', 'Job TeST Assignment', 'Assigned Job test for System Security', 'far fa-project-diagram text-success', 'About Me personal Details', '2020/12/14 10:41:18'),
(829, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:41:33'),
(830, 'pitarcheizin@gmail.com', 'Answered Test', 'Answered the test Answer 2\r\n\r\nanswer 3', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/14 10:41:50'),
(831, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:42:08'),
(832, 'carol@gmail.com', 'Answered Test', 'Response for the test Answer 2\r\n\r\nanswer 3\r\n\r\nAnswer 4', 'far fa-project-diagram text-success', 'Job Application Details', '2020/12/14 10:42:26'),
(833, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/14 10:42:47'),
(834, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/15 08:11:38'),
(835, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/16 12:43:29'),
(836, 'carol@gmail.com', 'Module Sale', 'Sold a module to wisegen', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/16 12:54:57'),
(837, 'carol@gmail.com', 'Module Sale', 'Sold a module to wisegen', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/16 12:56:59'),
(838, 'recruitment@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/16 13:03:42'),
(839, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/16 14:14:16'),
(840, 'carol@gmail.com', 'Module Sale', 'Sold a module to potential', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 08:18:19'),
(841, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/17 08:19:58'),
(842, 'personell@gmail.com', 'Employee Information Creation', 'Added Employee potential', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 09:28:43'),
(843, 'personell@gmail.com', 'Employee Information Creation', 'Added Employee Pits', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 09:45:29'),
(844, 'personell@gmail.com', 'Employee Information Creation', 'Added Employee pits', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 10:06:54'),
(845, 'personell@gmail.com', 'Employee Information Creation', 'Added Employee pETRE CHGE', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 10:09:21'),
(846, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/17 10:19:30'),
(847, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/17 10:25:05'),
(848, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/17 10:26:35'),
(849, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/17 10:30:04'),
(850, 'personell@gmail.com', 'Employee Information Creation', 'Added Employee rightd', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/17 13:23:25'),
(851, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 08:47:32'),
(852, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 09:05:26'),
(853, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 09:06:17'),
(854, 'personell@gmail.com', 'Bank Information Creation', 'Added Bank DetailsFamily Bank', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/21 10:13:15'),
(855, 'personell@gmail.com', 'Stautory Information Creation', 'Added Statutory Details for 7253', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/21 11:00:59'),
(856, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 12:57:23'),
(857, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 12:57:39'),
(858, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 12:59:05'),
(859, 'personell@gmail.com', 'Employment Information Creation', 'Added Employment terms for 7253', 'far fa-project-diagram text-success', ' Application Details', '2020/12/21 13:01:34'),
(860, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/21 17:08:51'),
(861, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/22 09:40:17'),
(862, 'personell@gmail.com', 'Dependants Information Creation', 'Added Dependant for 7253', 'far fa-project-diagram text-success', ' Application Details', '2020/12/22 09:47:18'),
(863, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/22 09:48:47'),
(864, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/22 10:08:48'),
(865, 'personell@gmail.com', 'Personal Information Creation', 'Added WOrk History CMA', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/22 10:10:00'),
(866, 'personell@gmail.com', 'Personal Information Creation', 'Added WOrk History CMA', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/22 10:14:01'),
(867, 'personell@gmail.com', 'Academic Information Creation', 'Added Academic History UON', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/22 10:29:44'),
(868, 'personell@gmail.com', 'Awards Information Creation', 'Added Awards History 7253', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/22 10:46:12'),
(869, 'personell@gmail.com', 'Awards Information Creation', 'Added Awards History 7253', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/22 11:02:51'),
(870, 'personell@gmail.com', 'Documents Attachments', 'Attached Evidence Documents for the reference 7253', 'far fa-project-diagram text-success', 'stock-management-link', '2020/12/22 11:06:00'),
(871, 'personell@gmail.com', 'Employment Information Creation', 'Added Employment terms for 7253', 'far fa-project-diagram text-success', ' Application Details', '2020/12/23 09:29:56'),
(872, 'personell@gmail.com', 'Bank Information Creation', 'Added Bank DetailsEquity Bank', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/23 09:31:06'),
(873, 'personell@gmail.com', 'Dependants Information Creation', 'Added Dependant for 7253', 'far fa-project-diagram text-success', ' Application Details', '2020/12/23 09:32:11'),
(874, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7254 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/23 11:10:34'),
(875, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7254 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/23 11:12:04'),
(876, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7254 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/23 11:12:08'),
(877, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/30 13:13:02'),
(878, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:44:00'),
(879, 'carol@gmail.com', 'Module Sale', 'Sold a module to Training', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/31 07:45:34'),
(880, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:45:53'),
(881, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:46:12'),
(882, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:55:46'),
(883, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:56:01'),
(884, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:56:22'),
(885, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 07:56:50'),
(886, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 08:10:29'),
(887, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 09:43:54'),
(888, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2020/12/31 13:34:40'),
(889, 'training@gmail.com', 'Employee Information Creation', 'Added Employee tran', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/31 17:06:54'),
(890, 'training@gmail.com', 'Trainee Information Creation', 'Added Trainee Trainee', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/31 19:02:14'),
(891, 'training@gmail.com', 'User Status Change', 'Changed the status of the user with id 7257 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/31 19:07:33'),
(892, 'training@gmail.com', 'User Status Change', 'Changed the status of the user with id 7257 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/31 19:29:59'),
(893, 'training@gmail.com', 'Course Information Creation', 'Added Course Details', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/31 20:35:15'),
(894, 'training@gmail.com', 'Course Information Creation', 'Added Course Details', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2020/12/31 20:37:59'),
(895, 'training@gmail.com', 'Course Status Change', 'Changed the status of the course with id 2 to completed', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/31 20:38:07'),
(896, 'training@gmail.com', 'Course Status Change', 'Changed the status of the course with id 2 to ongoing', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/31 20:38:14'),
(897, 'training@gmail.com', 'Course Status Change', 'Changed the status of the course with id 2 to completed', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2020/12/31 20:38:18'),
(898, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/01 18:30:40'),
(899, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/01 18:32:08'),
(900, 'training@gmail.com', 'Trainee Information Creation', 'Added Trainee PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/01 20:19:46'),
(901, 'trainer@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/01 20:21:17'),
(902, 'trainer@gmail.com', 'Documents Attachments', 'Attached E-MATERIALS for the reference trainer@gmail.com', 'far fa-project-diagram text-success', 'stock-management-link', '2021/01/01 21:43:42'),
(903, 'trainer@gmail.com', 'Documents Attachments', 'Attached E-MATERIALS for the reference trainer@gmail.com', 'far fa-project-diagram text-success', 'stock-management-link', '2021/01/01 21:48:25'),
(904, 'trainer@gmail.com', 'Documents Attachments', 'Attached E-MATERIALS for the reference ', 'far fa-project-diagram text-success', 'stock-management-link', '2021/01/01 21:49:14'),
(905, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 11:35:40'),
(906, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 16:32:46'),
(907, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 17:19:24'),
(908, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 17:38:01'),
(909, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:19:47'),
(910, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:23:33'),
(911, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:24:30'),
(912, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:27:48'),
(913, 'carol@gmail.com', 'User Status Change', 'Changed the status of the user with id 7253 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/04 20:31:02'),
(914, 'carol@gmail.com', 'User Status Change', 'Changed the status of the user with id 7253 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/04 20:31:12'),
(915, 'carol@gmail.com', 'User Status Change', 'Changed the status of the user with id 7253 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/04 20:33:29'),
(916, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:33:56'),
(917, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7253 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/04 20:34:00'),
(918, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7253 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/04 20:34:06'),
(919, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 20:37:24'),
(920, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 21:23:22'),
(921, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/04 21:24:33'),
(922, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 11:17:18'),
(923, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 12:19:08'),
(924, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 12:45:52'),
(925, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 13:37:01'),
(926, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is submit button', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/08 13:38:02'),
(927, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 13:40:06'),
(928, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 13:46:24'),
(929, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/08 13:57:30'),
(930, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTraining', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:12:10'),
(931, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTraining', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:26:42'),
(932, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTrainee', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:33:47'),
(933, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTraining', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:35:07'),
(934, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTraining', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:36:36'),
(935, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTraining', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:37:00'),
(936, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeTrainee', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 14:37:11'),
(937, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forCyber security', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 20:39:14'),
(938, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forFinancial Management', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 20:42:29'),
(939, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forFinancial Management', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 20:43:02'),
(940, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forFinancial Management', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 20:45:22'),
(941, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:03:29'),
(942, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:05:35'),
(943, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:13:48'),
(944, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTrainee', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:14:03'),
(945, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forCyber security', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/08 22:18:18'),
(946, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:18:30'),
(947, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTrainee', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/08 22:18:44'),
(948, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/09 11:12:42'),
(949, 'personell@gmail.com', 'User Status Change', 'Changed the status of the user with id 7254 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/09 11:13:19'),
(950, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/09 11:14:54'),
(951, 'trainer@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/09 11:16:15'),
(952, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/09 11:17:08'),
(953, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/09 12:12:53'),
(954, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/11 10:26:26'),
(955, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/11 10:34:47'),
(956, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/11 10:40:47'),
(957, 'training@gmail.com', 'Budget Information Creation', 'Added budget amount forCCNA Networking', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/11 10:59:49'),
(958, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/11 11:00:08'),
(959, 'training@gmail.com', 'Trainee Information Creation', 'Added Trainee Dan', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/11 12:21:19'),
(960, 'training@gmail.com', 'Course assignment Information Creation', 'Assigned course to a traineeDan', 'far fa-project-diagram text-success', 'Course assignment Application Details', '2021/01/11 12:22:09'),
(961, 'training@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetDan', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/11 12:23:37'),
(962, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/11 14:10:00'),
(963, 'carol@gmail.com', 'Job title Creation', 'Added Job Title Database ADMINISTRATOR', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/11 14:19:56'),
(964, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/11 21:24:27'),
(965, 'carol@gmail.com', 'Job TeST Assignment', 'Assigned Job test for ', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:05:35'),
(966, 'carol@gmail.com', 'Quiz Assignment', 'Assigned Course to CCNA Networking', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:18:43'),
(967, 'carol@gmail.com', 'Quiz Assignment', 'Assigned Course to CCNA Networking', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:20:54'),
(968, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsQuiz name q', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:29:53'),
(969, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is CCNA', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:30:57'),
(970, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is routing', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:31:13'),
(971, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is finance?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:46:15'),
(972, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is a trial balance?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:46:31'),
(973, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is Balance sheet?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:46:49'),
(974, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is finance', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:47:45'),
(975, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is FM?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:47:54'),
(976, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is systems security?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:48:19'),
(977, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is a system', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:48:28'),
(978, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 09:52:35'),
(979, 'pitarcheizin@gmail.com', 'Job Application', 'Applied for the job 7', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 09:55:08'),
(980, 'cma@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 09:56:06'),
(981, 'cma@gmail.com', 'Job Application status', 'Change application status toTesting', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 09:56:36'),
(982, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 09:57:00'),
(983, 'training@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 10:04:55'),
(984, 'training@gmail.com', 'Answered Test', 'Answered the Quiz ccnp', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 10:35:12'),
(985, 'dan@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 11:27:17'),
(986, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/12 11:27:33'),
(987, 'carol@gmail.com', 'Answered Test', 'Answered the Quiz CCNP ANSWER FOR ALL', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 11:28:54'),
(988, 'carol@gmail.com', 'Answered Test', 'Answered the Quiz Answer for ccnp all', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 11:32:36'),
(989, 'carol@gmail.com', 'Answered Test', 'Answered the Quiz ANSWER FOR CCNP ALL', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 11:47:09'),
(990, 'carol@gmail.com', 'Answered Test', 'Response for the test ANSWER FOR CCNP ALL', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 11:48:24'),
(991, 'carol@gmail.com', 'Answered Test', 'Answered the Quiz Finance answer\r\nTrial balance answer\r\nbalance sheet answer', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 12:19:59'),
(992, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is cyber security?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 12:35:32'),
(993, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is Roamin services', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 12:35:45'),
(994, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is Management?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 12:37:30'),
(995, 'carol@gmail.com', 'quiz APPLICATION request', 'Added a quiz with detailsWhat is FA?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/01/12 12:37:39'),
(996, 'carol@gmail.com', 'Answered Test', 'Answered the Quiz Answer cyber security', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 12:38:50'),
(997, 'carol@gmail.com', 'Answered Test', 'Response for the QUIZ Answer cyber security gfhhgf', 'far fa-project-diagram text-success', 'Job Application Details', '2021/01/12 13:04:10'),
(998, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/22 08:38:53'),
(999, 'carol@gmail.com', 'Leave Information Creation', 'Added Leave Maternity Leave', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/22 10:16:17'),
(1000, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/25 10:41:32'),
(1001, 'pitarcheizin@gmail.com', 'Leave Information Creation', 'Added Leave Maternity Leave', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/25 10:51:06'),
(1002, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/27 09:41:03'),
(1003, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/01/27 09:41:30'),
(1004, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to approved', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 12:48:12'),
(1005, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to pending_approval', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 12:49:54'),
(1006, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to approved', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 12:50:32'),
(1007, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to pending_approval', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 12:52:30'),
(1008, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to approved', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 12:52:44'),
(1009, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to deactivated', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 13:06:34'),
(1010, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 2 to active', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 13:06:41'),
(1011, 'carol@gmail.com', 'Leave Status Change', 'Approved the leave with id 1 to approved', 'fal fa-exclamation-square text-info', 'project-issue-logs-tab', '2021/01/27 13:07:21'),
(1012, 'carol@gmail.com', 'Leave class Information Creation', 'Added Leave Class Details', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/27 14:20:28'),
(1013, 'carol@gmail.com', 'Leave class Information Creation', 'Added Leave Class Details', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/01/27 14:23:12'),
(1014, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/01 09:17:52'),
(1015, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/01 09:18:16'),
(1016, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/01 13:37:37'),
(1017, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/01 16:02:24'),
(1018, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/01 17:20:32'),
(1019, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/02 21:30:48'),
(1024, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/03 11:23:20'),
(1025, '', 'Logged out', 'Logged out of the system', 'far fa-sign-out text-danger', 'log-out-link', '2021/02/03 11:23:28'),
(1026, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/03 11:23:37'),
(1027, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/03 15:56:18'),
(1028, 'pitarcheizin456@gmail.com', 'Personal Information Creation', 'Added Personal Details PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/04 10:41:04'),
(1029, '', 'Personal Information Creation', 'Added Personal Details rewr', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/04 10:41:20'),
(1030, 'pitarcheizin4343@gmail.com', 'Personal Information Creation', 'Added Personal Details PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/04 11:00:03'),
(1031, 'pitarcheizin12321@gmail.com', 'Personal Information Creation', 'Added Personal Details PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/04 11:29:34'),
(1032, 'wisegenpitarcheizin@gmail.com', 'Company Information Creation', 'Added Company Details wisegen', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/04 11:42:00'),
(1033, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 12:02:35'),
(1034, 'personell@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 20:57:31'),
(1035, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 20:58:47'),
(1036, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 21:37:49'),
(1037, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 21:40:26'),
(1038, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:22:52'),
(1039, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:26:59'),
(1040, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:27:49'),
(1041, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:41:55'),
(1042, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:42:09'),
(1043, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:43:13'),
(1044, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:43:27'),
(1045, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:44:28'),
(1046, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:44:41'),
(1047, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:46:10'),
(1048, 'carol@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:46:18'),
(1049, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:46:47'),
(1050, 'pitarcheizin@gmail.com', 'User Modification', 'Modified user information  ', 'fal fa-user-alt', 'admin-user-management-link', '2021/02/04 22:47:15'),
(1051, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/04 22:47:54'),
(1052, 'carol@gmail.com', 'Job Information Creation', 'Posted Job Job TEST title', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/04 23:06:22'),
(1053, 'carol@gmail.com', 'Job Information Creation', 'Posted Job Job test', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/04 23:21:50'),
(1054, 'carol@gmail.com', 'Job Information Creation', 'Posted Job rere', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/05 09:23:56'),
(1055, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/05 10:28:15'),
(1056, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/05 10:40:34'),
(1057, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/05 10:58:12'),
(1058, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/05 11:00:17'),
(1059, 'carol@gmail.com', 'Job Application status', 'Change application status toTesting', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/05 11:04:20'),
(1060, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/05 11:49:59'),
(1061, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/06 18:31:39'),
(1062, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 08:21:35'),
(1063, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 08:22:03'),
(1064, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 08:30:51'),
(1065, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 08:31:37'),
(1066, 'pkariuki@cma.or.ke', 'Personal Information Creation', 'Added Personal Details ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/15 11:09:41'),
(1067, 'pkariuki@cma.or.ke', 'Company Information Creation', 'Added Company Details ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/15 11:12:35'),
(1068, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 11:47:29'),
(1069, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 11:56:09'),
(1070, 'pkariuki@cma.or.ke', 'Personal Information Creation', 'Added Personal Details PETER', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/15 13:00:17'),
(1071, 'pkariukii@cma.or.ke', 'Personal Information Creation', 'Added Personal Details ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/15 14:19:53'),
(1072, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 14:47:32'),
(1073, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 14:55:07'),
(1074, '', 'Logged out', 'Logged out of the system', 'far fa-sign-out text-danger', 'log-out-link', '2021/02/15 15:07:35'),
(1075, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 15:41:29'),
(1076, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 15:41:33'),
(1077, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 17:21:59'),
(1078, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/15 17:34:25'),
(1079, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 11:12:32'),
(1080, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 11:45:32'),
(1081, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 11:49:26'),
(1082, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 11:58:16'),
(1083, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 12:08:47'),
(1084, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 12:14:54'),
(1085, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 12:31:01'),
(1086, 'dan@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 12:41:56'),
(1087, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/16 12:42:24'),
(1088, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/17 17:35:46'),
(1089, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/17 21:15:34'),
(1090, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/17 21:22:31'),
(1091, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 00:24:00'),
(1092, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 00:54:04'),
(1093, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 01:03:53'),
(1094, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 08:47:32');
INSERT INTO `activity_logs` (`id`, `email`, `action_name`, `action_reference`, `action_icon`, `page_id`, `time_recorded`) VALUES
(1095, 'info@potentialstaffing.com', 'Company Information Creation', 'Added Company Details Potential staffing', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/18 09:10:05'),
(1096, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job das', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 09:25:45'),
(1097, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job developer', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 09:29:31'),
(1098, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Senior Marketer', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 09:34:06'),
(1099, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job dasdsa', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 09:42:41'),
(1100, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job rewr', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:00:00'),
(1101, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job dsa', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:06:40'),
(1102, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Senior Marketer', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:11:45'),
(1103, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job dsa', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:14:36'),
(1104, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Senior Marketer', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:17:26'),
(1105, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job fe', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:18:08'),
(1106, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job gf', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:21:44'),
(1107, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job fds', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:33:19'),
(1108, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job vdf', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:39:42'),
(1109, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job das', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:43:19'),
(1110, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Senior Marketer', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 10:54:38'),
(1111, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Senior ADVOCATE', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/18 12:21:09'),
(1112, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:05:36'),
(1113, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:17:51'),
(1114, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:23:58'),
(1115, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:36:23'),
(1116, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:39:00'),
(1117, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 13:59:24'),
(1118, 'pkariuki@cma.or.ke', 'Job Application', 'Applied for the job 27', 'far fa-project-diagram text-success', 'Job Application Details', '2021/02/18 14:13:57'),
(1119, 'pkariuki@cma.or.ke', 'Job Application', 'Applied for the job 26', 'far fa-project-diagram text-success', 'Job Application Details', '2021/02/18 15:38:13'),
(1120, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 17:43:23'),
(1121, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 17:46:57'),
(1122, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 17:54:50'),
(1123, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 18:14:17'),
(1124, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 19:21:15'),
(1125, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 19:36:59'),
(1126, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 21:56:13'),
(1127, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 22:07:20'),
(1128, 'pitarcheizin@gmail.com', 'Job Application', 'Applied for the job 7', 'far fa-project-diagram text-success', 'Job Application Details', '2021/02/18 22:16:50'),
(1129, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/18 22:20:44'),
(1130, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/19 22:18:14'),
(1131, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/19 22:19:53'),
(1132, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 09:04:25'),
(1133, '', 'Logged out', 'Logged out of the system', 'far fa-sign-out text-danger', 'log-out-link', '2021/02/22 09:05:46'),
(1134, 'p3@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 09:06:12'),
(1135, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 09:08:15'),
(1136, 'bonface@gmail.com', 'Personal Information Creation', 'Added Personal Details Kariuki', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/22 11:08:20'),
(1137, 'bonface@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 11:08:55'),
(1138, 'bonface@gmail.com', 'Personal Information Creation', 'Added About me About myself info', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 11:09:11'),
(1139, 'bonface@gmail.com', 'Personal Information Creation', 'Added WOrk History Joy millers', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/22 11:13:12'),
(1140, 'bonface@gmail.com', 'Personal Information Creation', 'Added Education History Jkuat', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/22 11:13:58'),
(1141, 'bonface@gmail.com', 'Personal Information Creation', 'Added Awards History ', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/02/22 11:14:37'),
(1142, 'bonface@gmail.com', 'Documents Attachments', 'Attached Evidence Documents for the reference bonface@gmail.com', 'far fa-project-diagram text-success', 'stock-management-link', '2021/02/22 11:36:11'),
(1143, 'bonface@gmail.com', 'Job Application status', 'Change application status toScreening', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 11:48:40'),
(1144, 'bonface@gmail.com', 'Job Application status', 'Change application status toTesting', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 11:50:34'),
(1145, 'bonface@gmail.com', 'Job Application status', 'Change application status toSuccessful', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 11:53:51'),
(1146, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 12:20:16'),
(1147, 'carol@gmail.com', 'Job title Creation', 'Added Job Title Senior Advocate', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 12:20:56'),
(1148, 'carol@gmail.com', 'Job TeST Assignment', 'Assigned Job test for Senior ADVOCATE', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 12:21:12'),
(1149, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is Law?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 12:21:20'),
(1150, 'carol@gmail.com', 'JTest APPLICATION request', 'Addedd a Test with detailsWhat is Legal Agreement?', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 12:21:33'),
(1151, 'bonface@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 12:21:51'),
(1152, 'carol@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 13:57:27'),
(1153, 'carol@gmail.com', 'Job TeST Assignment', 'Assigned Job test for Senior ADVOCATE', 'far fa-project-diagram text-success', 'About Me personal Details', '2021/02/22 14:06:10'),
(1154, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 21:12:44'),
(1155, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 21:33:55'),
(1156, 'bonface@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/22 21:34:39'),
(1157, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/23 12:10:17'),
(1158, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Driver', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/23 12:11:21'),
(1159, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Driver', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/23 12:14:02'),
(1160, 'pitarcheizin@gmail.com', 'Job Information Creation', 'Posted Job Driver', 'far fa-project-diagram text-success', 'Posting job Details', '2021/02/23 12:16:22'),
(1161, 'pkariuki@cma.or.ke', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/02/23 20:36:45'),
(1162, 'lucasoduor97@GMAIL.COM', 'Personal Information Creation', 'Added Personal Details ODONGO', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2021/04/09 18:33:18'),
(1163, 'lucasoduor97@GMAIL.COM', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/04/09 18:33:43'),
(1164, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2021/07/09 14:26:09'),
(1165, 'pitarcheizin@gmail.com', 'Logged in', 'Logged into the system', 'far fa-sign-in text-success', 'login-link', '2022/08/29 08:56:54'),
(1166, 'pitarcheizin@gmail.com', 'Trainee Budget Information Creation', 'Added Budget for traineetTraining', 'far fa-project-diagram text-success', 'Job Seeker Application Details', '2022/08/29 08:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `all_evidence_document`
--

CREATE TABLE `all_evidence_document` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `college_doc` varchar(100) DEFAULT NULL,
  `kcse_doc` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_evidence_document`
--

INSERT INTO `all_evidence_document` (`id`, `reference_no`, `cv`, `college_doc`, `kcse_doc`, `time_recorded`, `recorded_by`) VALUES
(1, 'cma@gmail.com', 'ENGLAND PREMIER LEAGUE NEW SEASON.docx', 'ENGLAND PREMIER LEAGUE NEW SEASON (3) (2).docx', 'Compassionate Pentecostal gospel fellowship Authorisation.docx', '2020-12-11 22:30:38', 'CMA'),
(2, 'pitarcheizin@gmail.com', 'Doc1.docx', 'Compassionate Pentecostal gospel fellowship Authorisation.docx', 'ENGLAND PREMIER LEAGUE NEW SEASON (2).docx', '2020-12-11 22:36:35', 'PETER'),
(3, 'personell@gmail.com', 'ENGLAND PREMIER LEAGUE NEW SEASON (8).docx', 'Valuation - draft 4.docx', 'ENGLAND PREMIER LEAGUE NEW SEASON (7).docx', '2020-12-22 08:06:00', 'potential'),
(4, 'bonface@gmail.com', 'ENGLAND PREMIER LEAGUE NEW SEASON (3) (2).docx', 'CCMP DISCUSSION JAMES KIVUVA.docx', 'RISKSYS Kenya Revenue Authority.docx', '2021-02-22 08:36:11', 'Kariuki');

-- --------------------------------------------------------

--
-- Table structure for table `answered_response_test`
--

CREATE TABLE `answered_response_test` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `response_name` varchar(100) DEFAULT NULL,
  `marks` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answered_response_test`
--

INSERT INTO `answered_response_test` (`id`, `reference_no`, `email`, `response_name`, `marks`, `remarks`, `time_recorded`) VALUES
(9, '15', 'caro88njoroge@gmail.com', 'HDASHDH\r\n\r\nD\r\nDSA\r\n\r\nhdhsahd', '80', 'Pass', '2020-12-13 17:36:38'),
(10, '16', 'pitarcheizin@gmail.com', 'Answer 2\r\n\r\nanswer 3\r\n\r\nAnswer 4', '90', 'Pass', '2020-12-14 07:42:26'),
(11, '1', 'dan@gmail.com', 'ANSWER FOR CCNP ALL', '45', 'Average ', '2021-01-12 08:48:24'),
(12, '3', 't@gmail.com', 'Answer cyber security gfhhgf', '70', 'Failed', '2021-01-12 10:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `answered_test`
--

CREATE TABLE `answered_test` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `answer_name` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT 'On Review',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answered_test`
--

INSERT INTO `answered_test` (`id`, `reference_no`, `email`, `answer_name`, `remarks`, `time_recorded`) VALUES
(15, '8', 'caro88njoroge@gmail.com', 'HDASHDH\r\n\r\nD\r\nDSA', 'On Review', '2020-12-13 17:35:05'),
(16, '9', 'pitarcheizin@gmail.com', 'Answer 2\r\n\r\nanswer 3', 'On Review', '2020-12-14 07:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `answered_test2`
--

CREATE TABLE `answered_test2` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `answer_name` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT 'On Review',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answered_test2`
--

INSERT INTO `answered_test2` (`id`, `reference_no`, `email`, `answer_name`, `remarks`, `time_recorded`) VALUES
(1, '12', 'dan@gmail.com', 'ANSWER FOR CCNP ALL', 'On Review', '2021-01-12 08:47:09'),
(2, '11', 'training@gmail.com', 'Finance answer\r\nTrial balance answer\r\nbalance sheet answer', 'On Review', '2021-01-12 09:19:59'),
(3, '9', 't@gmail.com', 'Answer cyber security', 'On Review', '2021-01-12 09:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `application_status`
--

CREATE TABLE `application_status` (
  `id` int(6) NOT NULL,
  `status_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_status`
--

INSERT INTO `application_status` (`id`, `status_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Screening', '2020-12-09 09:44:23', 'PETER KARIUKI'),
(2, 'Testing', '2020-12-09 09:44:23', 'PETER KARIUKI'),
(3, 'Shortlisted', '2020-12-09 09:44:50', 'PETER KARIUKI'),
(4, 'Successful', '2020-12-09 09:44:50', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `application_status_details`
--

CREATE TABLE `application_status_details` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application_status_details`
--

INSERT INTO `application_status_details` (`id`, `reference_no`, `email`, `status_name`, `time_recorded`, `recorded_by`) VALUES
(14, '13', 'caro88njoroge@gmail.com', 'Testing', '2020-12-13 17:33:52', 'Potential Staffing'),
(15, '15', 'pitarcheizin@gmail.com', 'Testing', '2020-12-14 07:40:20', 'CMA'),
(16, '15', 'pitarcheizin@gmail.com', 'Testing', '2021-01-12 06:56:36', 'CMA'),
(17, '15', 'pitarcheizin@gmail.com', 'Testing', '2021-02-05 08:04:20', 'Caroline'),
(18, '17', 'pkariuki@cma.or.ke', 'Screening', '2021-02-22 08:48:40', 'Kariuki'),
(19, '18', 'bonface@gmail.com', 'Testing', '2021-02-22 08:50:34', 'Kariuki'),
(20, '17', 'pkariuki@cma.or.ke', 'Successful', '2021-02-22 08:53:51', 'Kariuki');

-- --------------------------------------------------------

--
-- Table structure for table `applied_jobs`
--

CREATE TABLE `applied_jobs` (
  `id` int(6) NOT NULL,
  `job_posting_id` varchar(100) DEFAULT NULL,
  `applicant_email` varchar(100) DEFAULT NULL,
  `cover_letter` varchar(1000) DEFAULT NULL,
  `job_status` varchar(100) NOT NULL DEFAULT 'Applied',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applied_jobs`
--

INSERT INTO `applied_jobs` (`id`, `job_posting_id`, `applicant_email`, `cover_letter`, `job_status`, `time_recorded`, `recorded_by`) VALUES
(17, '27', 'pkariuki@cma.or.ke', 'covehdsajdjsdjs\r\ndshdshadhsd\r\n\r\ndsjjdsa\r\n\r\ndsadshdshd', 'Applied', '2021-02-18 11:13:57', NULL),
(18, '27', 'bonface@gmail.com', 'Cover letter 234', 'Applied', '2021-02-18 12:38:13', NULL),
(19, '7', 'pitarcheizin@gmail.com', 'Finance Manager Cover letter', 'Applied', '2021-02-18 19:16:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_test`
--

CREATE TABLE `assigned_test` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `posted_job` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_test`
--

INSERT INTO `assigned_test` (`id`, `reference_no`, `posted_job`, `time_recorded`, `recorded_by`) VALUES
(8, '15', 'Finance manager', '2020-12-13 17:30:34', 'Caroline'),
(9, '16', 'System Security', '2020-12-14 07:41:18', 'Caroline'),
(14, '18', 'Senior ADVOCATE', '2021-02-22 11:06:10', 'Caroline');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `award_name` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `year_received` varchar(100) DEFAULT NULL,
  `date_created` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `reference_no`, `email`, `award_name`, `institution`, `type`, `year_received`, `date_created`, `time_recorded`) VALUES
(1, NULL, 'pitarcheizin@gmail.com', 'IT security', 'Cyber roam', 'Certificate', '11-Feb-2020', '26-Nov-2020', '2020-11-26 12:25:07'),
(2, NULL, 'pitarcheizin@gmail.com', 'IT Audit', 'ISACA', 'Award', '18-Nov-2020', '26-Nov-2020', '2020-11-26 12:28:19'),
(3, NULL, 'rose@gmail.com', 'COmp', 'KICT', 'Award', '08-Dec-2020', '04-Dec-2020', '2020-12-04 11:15:44'),
(4, '7253', 'p3@gmail.com', 'ICT', 'KCA', 'Certificate', '21-Dec-2020', '22-Dec-2020', '2020-12-22 07:46:12'),
(5, '7253', 'p3@gmail.com', '', '', '', '', '22-Dec-2020', '2020-12-22 08:02:51'),
(6, NULL, 'bonface@gmail.com', 'ICT Suport', 'IAT', 'Certificate', '15-Jul-2015', '22-Feb-2121', '2021-02-22 08:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `award_type`
--

CREATE TABLE `award_type` (
  `id` int(6) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award_type`
--

INSERT INTO `award_type` (`id`, `type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Award', '2020-11-26 12:04:46', 'PETER KARIUKI'),
(2, 'Certificate', '2020-11-26 12:04:46', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `bank_branch` varchar(100) DEFAULT NULL,
  `account_no` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `reference_no`, `bank_name`, `bank_branch`, `account_no`, `status`, `time_recorded`) VALUES
(17, '7253', 'Family Bank', 'Kenyatta Avenue', '1234567', 'Active', '2020-12-21 07:13:15'),
(18, '7253', 'Equity Bank', 'Moi Avenue', '12321312', 'Active', '2020-12-23 06:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `cal_calendars`
--

CREATE TABLE `cal_calendars` (
  `cid` int(11) UNSIGNED NOT NULL,
  `hours_24` tinyint(1) NOT NULL DEFAULT '0',
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `week_start` tinyint(1) NOT NULL DEFAULT '0',
  `subject_max` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `events_max` tinyint(4) UNSIGNED NOT NULL DEFAULT '8',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PHP-Calendar',
  `anon_permission` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_calendars`
--

INSERT INTO `cal_calendars` (`cid`, `hours_24`, `date_format`, `week_start`, `subject_max`, `events_max`, `title`, `anon_permission`, `timezone`, `language`, `theme`) VALUES
(1, 0, 0, 0, 50, 8, 'HRMIS', 1, '', '', 'cupertino');

-- --------------------------------------------------------

--
-- Table structure for table `cal_categories`
--

CREATE TABLE `cal_categories` (
  `catid` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `gid` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bg_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cal_events`
--

CREATE TABLE `cal_events` (
  `eid` int(11) UNSIGNED NOT NULL,
  `cid` int(11) UNSIGNED NOT NULL,
  `owner` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `catid` int(11) UNSIGNED DEFAULT NULL,
  `ctime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mtime` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_events`
--

INSERT INTO `cal_events` (`eid`, `cid`, `owner`, `subject`, `description`, `readonly`, `catid`, `ctime`, `mtime`) VALUES
(12, 1, 1, 'CCNA Networking', 'KCA', 0, NULL, '2021-01-11 07:45:56', '2021-01-11 08:27:16'),
(11, 1, 1, 'Financial Management', 'UON', 0, NULL, '2021-01-08 08:18:42', '2021-01-11 08:26:50'),
(13, 1, 1, 'Plaza beach Training', 'Plaza beach Training', 0, NULL, '2021-01-27 07:04:21', NULL),
(9, 1, 1, 'Cyber security', 'JKUAT', 0, NULL, '2021-01-04 16:25:36', '2021-01-11 08:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `cal_groups`
--

CREATE TABLE `cal_groups` (
  `gid` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cal_logins`
--

CREATE TABLE `cal_logins` (
  `uid` int(11) UNSIGNED NOT NULL,
  `series` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `token` char(43) COLLATE utf8_unicode_ci NOT NULL,
  `atime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_logins`
--

INSERT INTO `cal_logins` (`uid`, `series`, `token`, `atime`) VALUES
(1, '3U3suP-jj_HFlq4ikwCCQbpTud5BOk4tzFZGhElNIxc', 'Uuukj1ZHsH1CrOzzIuUNnTGpKYGscvEhlLcyNDbE_0E', '2021-02-01 06:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `cal_occurrences`
--

CREATE TABLE `cal_occurrences` (
  `oid` int(11) UNSIGNED NOT NULL,
  `eid` int(11) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_ts` timestamp NULL DEFAULT NULL,
  `end_ts` timestamp NULL DEFAULT NULL,
  `time_type` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_occurrences`
--

INSERT INTO `cal_occurrences` (`oid`, `eid`, `start_date`, `end_date`, `start_ts`, `end_ts`, `time_type`) VALUES
(12, 12, NULL, NULL, '2021-01-09 14:00:00', '2021-01-09 15:00:00', 0),
(11, 11, NULL, NULL, '2021-01-08 14:00:00', '2021-01-08 15:00:00', 0),
(13, 13, NULL, NULL, '2021-01-07 14:00:00', '2021-01-07 15:00:00', 0),
(9, 9, NULL, NULL, '2021-01-07 16:00:00', '2021-01-07 17:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cal_permissions`
--

CREATE TABLE `cal_permissions` (
  `cid` int(11) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `read` tinyint(1) NOT NULL,
  `write` tinyint(1) NOT NULL,
  `readonly` tinyint(1) NOT NULL,
  `modify` tinyint(1) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cal_users`
--

CREATE TABLE `cal_users` (
  `uid` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `password_editable` tinyint(1) NOT NULL DEFAULT '1',
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_users`
--

INSERT INTO `cal_users` (`uid`, `username`, `password`, `admin`, `password_editable`, `timezone`, `language`, `gid`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 'Africa/Nairobi', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cal_user_groups`
--

CREATE TABLE `cal_user_groups` (
  `gid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cal_version`
--

CREATE TABLE `cal_version` (
  `version` smallint(5) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cal_version`
--

INSERT INTO `cal_version` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `company_type`
--

CREATE TABLE `company_type` (
  `id` int(6) NOT NULL,
  `com_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_type`
--

INSERT INTO `company_type` (`id`, `com_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Direct Employment', '2020-12-01 07:34:41', 'PETER KARIUKI'),
(2, 'Recruitment Agency', '2020-12-01 07:34:41', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `course_materials`
--

CREATE TABLE `course_materials` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `material_name` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_materials`
--

INSERT INTO `course_materials` (`id`, `reference_no`, `course_name`, `material_name`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(3, '', 'MSC ITM', 'PETER CHEGE PIN (2).pdf', NULL, NULL, 'PETER');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `id` int(6) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `subject`, `student_name`, `date_recorded`, `time_recorded`) VALUES
(6, 'Financial Management', 'Training', '08-Jan-2121', '0000-00-00 00:00:00'),
(7, 'Cyber security', 'Trainee', '08-Jan-2121', '0000-00-00 00:00:00'),
(8, 'CCNA Networking', 'Dan', '11-Jan-2121', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(6) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `sector` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `customer_end_delivery` (
  `id` int(6) NOT NULL,
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
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_sector`
--

CREATE TABLE `customer_sector` (
  `id` int(6) NOT NULL,
  `sector_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `delivery_approvers` (
  `id` int(6) NOT NULL,
  `delivery_approver` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_approvers`
--

INSERT INTO `delivery_approvers` (`id`, `delivery_approver`, `product_id`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(9, 'inventory@panoramaengineering.com', '6', '22-Jul-2020', '2020-07-22 10:40:24', 'PETER CHEGE KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `directorate_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_recorded` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- Table structure for table `departments_module`
--

CREATE TABLE `departments_module` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments_module`
--

INSERT INTO `departments_module` (`id`, `reference_no`, `department_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'potential', 'Finance', '2020-12-21 08:15:07', 'PETER KARIUKI'),
(2, 'potential', 'Information Technology', '2020-12-21 08:15:07', 'PETER KARIUKI'),
(3, 'potential', 'procurement', '2020-12-21 08:16:47', 'PETER KARIUKI'),
(4, 'potential', 'Human Resource', '2020-12-21 08:16:47', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `dependants_details`
--

CREATE TABLE `dependants_details` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `dependant_name` varchar(100) DEFAULT NULL,
  `relationship` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependants_details`
--

INSERT INTO `dependants_details` (`id`, `reference_no`, `dependant_name`, `relationship`, `gender`, `dob`, `contact`, `date_recorded`, `time_recorded`) VALUES
(1, '7253', 'DK', 's', 'Male', '08-Dec-2020', '342423', '22-Dec-2020', '2020-12-22 06:47:18'),
(2, '7253', 'PN', '4234', 'Male', '23-Dec-2020', '4234', '23-Dec-2020', '2020-12-23 06:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `education_history`
--

CREATE TABLE `education_history` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `school_name` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `qualification_name` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `description` varchar(600) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education_history`
--

INSERT INTO `education_history` (`id`, `reference_no`, `email`, `school_name`, `qualification`, `qualification_name`, `start_date`, `end_date`, `duration`, `description`, `date_recorded`, `time_recorded`) VALUES
(3, NULL, 'pitarcheizin@gmail.com', 'Meru University', 'Degree', 'Bsc IT', '02-Nov-2020', '30-Nov-2020', '600', 'Bsc IT', '25-Nov-2020', '2020-11-25 19:57:50'),
(4, NULL, 'pitarcheizin@gmail.com', 'UON', 'Masters', 'Msc ITM', '12-Oct-2020', '30-Nov-2020', '450', 'msc ITM', '25-Nov-2020', '2020-11-25 19:59:00'),
(5, NULL, 'rose@gmail.com', 'UON', 'Masters', 'Graphics', '03-Dec-2020', '14-Dec-2020', 'NaN', 'Graphics', '04-Dec-2020', '2020-12-04 11:12:50'),
(7, '7253', 'p3@gmail.com', 'UON', 'Masters', 'Msc ITM', '22-Dec-2020', '23-Dec-2020', '1', 'sAS', '22-Dec-2020', '2020-12-22 07:29:44'),
(8, NULL, 'bonface@gmail.com', 'Jkuat', 'Degree', 'Bsc Computer Science', '23-Feb-2010', '27-Nov-2014', 'NaN', 'Degree ', '22-Feb-2121', '2021-02-22 08:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `employee_no`
--

CREATE TABLE `employee_no` (
  `id` int(100) NOT NULL,
  `emp_no` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_no`
--

INSERT INTO `employee_no` (`id`, `emp_no`, `time_recorded`, `recorded_by`) VALUES
(1, '1-4', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, '5-10', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, '11-25', '2019-10-04 08:56:48', 'PETER KARIUKI'),
(4, '26-50', '2019-10-04 08:57:29', 'PETER KARIUKI'),
(5, '51-100', '2019-10-04 08:56:48', 'PETER KARIUKI'),
(6, '101-200', '2019-10-04 08:57:29', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `employment_details_module`
--

CREATE TABLE `employment_details_module` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `employment_type` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `supervisor` varchar(100) DEFAULT NULL,
  `job_grade` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `job_responsibilities` varchar(600) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_details_module`
--

INSERT INTO `employment_details_module` (`id`, `reference_no`, `department`, `employment_type`, `job_title`, `supervisor`, `job_grade`, `start_date`, `end_date`, `duration`, `job_responsibilities`, `date_recorded`, `time_recorded`) VALUES
(1, '7253', 'Information Technology', 'Permanent', 'ict', 'pits', '1', '15-Dec-2020', '23-Dec-2020', '8', 'dasdsa', '21-Dec-2020', '2020-12-21 10:01:34'),
(2, '7253', 'procurement', 'Contract', 'Test Title', 'rightd', '2', '21-Dec-2020', '24-Dec-2020', '3', 'dsadd\r\ndsa\r\nds\r\nad\r\nasda', '23-Dec-2020', '2020-12-23 06:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
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
  `time_recorded` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`id`, `reference_no`, `email`, `comp_name`, `industry`, `job_title`, `job_level`, `country`, `monthly_salary`, `work_type`, `start_date`, `end_date`, `duration`, `job_responsibilities`, `date_recorded`, `time_recorded`) VALUES
(3, NULL, 'pitarcheizin@gmail.com', 'CAPITAL MARKETS AUTHORITY', 'Goverment', 'Web Developer', 'Mid Level', 'Kenya', '150000', 'COntract', '26-Nov-2020', '04-Dec-2020', '8', 'Create Database\r\nNormalization of Tables\r\nIT Framework', '25-Nov-2020', '2020-11-25 18:21:28'),
(4, NULL, 'pitarcheizin@gmail.com', 'ICEA LION LIFE', 'Energy', 'DATA Admin', 'Entry Level', 'Kenya', '50000', 'Internship', '02-Mar-2020', '24-Jun-2020', '114', 'Database creation\r\nEDMS ILMS Integration', '25-Nov-2020', '2020-11-25 18:35:53'),
(5, NULL, 'rose@gmail.com', 'Wisegen', 'Government', 'Designer', 'Management Level', 'Kenya', '40000', 'Graduate', '08-Dec-2020', '14-Dec-2020', '6', 'Dstv Management\r\nPs management', '04-Dec-2020', '2020-12-04 11:12:21'),
(7, '7253', '', 'CMA', 'Construction', 'DEVE', 'Management Level', 'ke', '56000', 'Graduate', '14-Dec-2020', '24-Dec-2020', '10', 'erwrewrwerew', '22-Dec-2020', '2020-12-22 07:14:01'),
(8, NULL, 'bonface@gmail.com', 'Joy millers', 'Construction', 'ICT SUPPORT', 'Mid Level', 'Kenya', '25000', 'Permanent', '04-Feb-2020', '15-May-2023', '1196', 'CCtv installation\r\nComp Maintenenace\r\n', '22-Feb-2121', '2021-02-22 08:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `employment_type`
--

CREATE TABLE `employment_type` (
  `id` int(6) NOT NULL,
  `emp_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employment_type`
--

INSERT INTO `employment_type` (`id`, `emp_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Contract', '2020-12-01 08:24:24', 'PETER KARIUKI'),
(2, 'Permanent', '2020-12-01 08:24:24', 'PETER KARIUKI'),
(3, 'Casual', '2020-12-21 08:03:07', 'PETER KARIUKI'),
(4, 'Internship', '2021-02-15 06:23:24', 'Peter Kariuki');

-- --------------------------------------------------------

--
-- Table structure for table `end_product`
--

CREATE TABLE `end_product` (
  `id` int(6) NOT NULL,
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
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `experience_level` (
  `id` int(6) NOT NULL,
  `exp_level` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience_level`
--

INSERT INTO `experience_level` (`id`, `exp_level`, `time_recorded`, `recorded_by`) VALUES
(1, 'Entry', '2020-12-01 07:55:12', 'PETER KARIUKI'),
(2, 'Mid_Level', '2020-12-01 07:55:12', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Undefined');

-- --------------------------------------------------------

--
-- Table structure for table `general_comments`
--

CREATE TABLE `general_comments` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(250) NOT NULL,
  `general_comments` varchar(500) NOT NULL,
  `commentor` varchar(250) NOT NULL,
  `email_of_commentor` varchar(250) NOT NULL,
  `date_commented` varchar(250) NOT NULL,
  `changed` varchar(10) NOT NULL DEFAULT 'no',
  `time_commented` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `hear_about_us` (
  `id` int(6) NOT NULL,
  `about_us_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hear_about_us`
--

INSERT INTO `hear_about_us` (`id`, `about_us_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Online Search', '2020-11-27 15:34:36', 'PETER KARIUKI'),
(2, 'Online Advert', '2020-11-27 15:34:36', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `individual_budget`
--

CREATE TABLE `individual_budget` (
  `id` int(6) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `trainee_name` varchar(100) DEFAULT NULL,
  `budget_amount` varchar(100) DEFAULT NULL,
  `allocated_amount` varchar(100) DEFAULT NULL,
  `remaining_amount` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `individual_budget`
--

INSERT INTO `individual_budget` (`id`, `subject`, `trainee_name`, `budget_amount`, `allocated_amount`, `remaining_amount`, `date_recorded`, `time_recorded`) VALUES
(7, 'Financial Management', 'Training', '90000', '20000', '70000', '08-Jan-2121', '2021-01-08 19:13:48'),
(9, 'Cyber security', 'Training', '120000', '1000', '119000', '08-Jan-2121', '2021-01-08 19:18:30'),
(10, 'Cyber security', 'Trainee', '120000', '30000', '89000', '08-Jan-2121', '2021-01-08 19:18:44'),
(11, 'CCNA Networking', 'Training', '70000', '10000', '60000', '11-Jan-2121', '2021-01-11 08:00:08'),
(12, 'CCNA Networking', 'Dan', '70000', '15000', '45000', '11-Jan-2121', '2021-01-11 09:23:37'),
(13, 'CCNA Networking', 'Training', '70000', '10000', '35000', '29-Aug-2222', '2022-08-29 05:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(100) NOT NULL,
  `industry_name` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT 'icon-briefcase',
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `industry_name`, `class`, `time_recorded`, `recorded_by`) VALUES
(1, 'Construction', 'icon-bargraph', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Energy', 'icon-tools', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'IT & Telecoms', 'ti-briefcase', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(4, 'Government', 'ti-ruler-pencil', '2020-06-19 11:52:05', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `job_grade`
--

CREATE TABLE `job_grade` (
  `id` int(6) NOT NULL,
  `grade_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_grade`
--

INSERT INTO `job_grade` (`id`, `grade_name`, `time_recorded`, `recorded_by`) VALUES
(1, '1', '2020-12-21 10:01:01', 'PETER KARIUKI'),
(2, '2', '2020-12-21 10:01:01', 'personell@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `job_level`
--

CREATE TABLE `job_level` (
  `id` int(100) NOT NULL,
  `job_level` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `job_posting` (
  `id` int(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `job_title` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
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
  `skills` varchar(1000) DEFAULT NULL,
  `no_vaccancy` varchar(100) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_posting`
--

INSERT INTO `job_posting` (`id`, `email`, `job_title`, `company_name`, `com_type`, `expLength`, `emp_type`, `rank_name`, `exp_level`, `status`, `job_location`, `country`, `deadline`, `job_description`, `responsibility`, `skills`, `no_vaccancy`, `image`, `date_recorded`, `time_recorded`) VALUES
(7, 'info@potentialstaffing.com', 'Finance manager', 'Potential Staffing', 'Direct Employment', '6', 'Contract', 'Degree', 'Entry', 'active', 'Juja', 'Kenya', '15-Dec-2020', 'Job Desc', 'Respo', 'Skills 1\r\nSkills 2', '3', NULL, '13-Dec-2020', '2020-12-13 17:14:18'),
(8, 'cma@gmail.com', 'System Security', 'CMA', 'Direct Employment', '3', 'Permanent', 'Degree', 'Entry', 'active', 'Upperhill', 'Kenya', '22-Dec-2020', 'Job Desc', 'Respo', 'Skills 3\r\nSkills 4', '2', NULL, '14-Dec-2020', '2020-12-14 07:39:21'),
(26, 'pitarcheizin@gmail.com', 'Senior Marketer', 'ICEA LION', 'Direct Employment', '2', 'Permanent', 'Degree', 'Entry', 'active', 'Westlands', 'Kenya', '02-Mar-2021', 'Job desc 1\r\nJob desc 2', 'Job Res 1\r\nJob Res 2', 'Skills 5\r\nSkills 6', '4', NULL, '18-Feb-2121', '2021-02-18 07:54:38'),
(27, 'pitarcheizin@gmail.com', 'Senior ADVOCATE', 'Chris Maina', 'Direct Employment', '2', 'Permanent', 'Masters', 'Mid_Level', 'active', 'Juja', 'Kenya', '31-Mar-2021', 'Job desc 2\r\nJob desc 3', 'Job Respo 2\r\nJob respo 3', 'Skills 8\r\nSkills 9', '3', NULL, '18-Feb-2121', '2021-02-18 09:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `job_skills`
--

CREATE TABLE `job_skills` (
  `id` int(6) NOT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `job_test`
--

CREATE TABLE `job_test` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `test_name` varchar(5000) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_test`
--

INSERT INTO `job_test` (`id`, `reference_no`, `test_name`, `time_recorded`, `recorded_by`) VALUES
(44, '12', 'What is CCNA', '2021-01-12 06:30:57', 'Caroline'),
(45, '12', 'What is routing', '2021-01-12 06:31:12', 'Caroline'),
(46, '7', 'What is finance?', '2021-01-12 06:46:15', 'Caroline'),
(47, '7', 'What is a trial balance?', '2021-01-12 06:46:31', 'Caroline'),
(48, '7', 'What is Balance sheet?', '2021-01-12 06:46:49', 'Caroline'),
(49, '15', 'What is finance', '2021-01-12 06:47:45', 'Caroline'),
(50, '15', 'What is FM?', '2021-01-12 06:47:54', 'Caroline'),
(51, '16', 'What is systems security?', '2021-01-12 06:48:19', 'Caroline'),
(52, '16', 'What is a system', '2021-01-12 06:48:28', 'Caroline'),
(53, '9', 'What is cyber security?', '2021-01-12 09:35:32', 'Caroline'),
(54, '9', 'What is Roaming services', '2021-01-12 09:35:45', 'Caroline'),
(55, '11', 'What is Management?', '2021-01-12 09:37:30', 'Caroline'),
(56, '11', 'What is FA?', '2021-01-12 09:37:39', 'Caroline'),
(57, '18', 'What is Law?', '2021-02-22 09:21:20', 'Caroline'),
(58, '18', 'What is Legal Agreement?', '2021-02-22 09:21:33', 'Caroline');

-- --------------------------------------------------------

--
-- Table structure for table `job_titles`
--

CREATE TABLE `job_titles` (
  `id` int(6) NOT NULL,
  `title_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_titles`
--

INSERT INTO `job_titles` (`id`, `title_name`, `time_recorded`, `recorded_by`) VALUES
(15, 'Finance', '2020-12-13 17:29:13', 'Njoroge'),
(16, 'System security systems', '2020-12-14 07:40:53', 'Njoroge'),
(17, 'Database ADMINISTRATOR', '2021-01-11 11:19:55', 'Njoroge'),
(18, 'Senior Advocate', '2021-02-22 09:20:56', 'Njoroge');

-- --------------------------------------------------------

--
-- Table structure for table `leave_details`
--

CREATE TABLE `leave_details` (
  `id` int(6) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `leave_name` varchar(100) DEFAULT NULL,
  `reliever` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `entitled_days` varchar(100) DEFAULT NULL,
  `remaining_days` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending_approval',
  `reason` varchar(800) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_details`
--

INSERT INTO `leave_details` (`id`, `email`, `leave_name`, `reliever`, `start_date`, `end_date`, `duration`, `entitled_days`, `remaining_days`, `status`, `reason`, `date_recorded`, `time_recorded`, `recorded_by`) VALUES
(1, 'carol@gmail.com', 'Maternity Leave', 'PETER', '12-Jan-2021', '26-Jan-2021', '14', '30', NULL, 'approved', 'Maternal', '22-Jan-2121', '2021-01-22 07:16:17', NULL),
(2, 'pitarcheizin@gmail.com', 'Maternity Leave', 'pETRE CHGE', '11-Jan-2021', '27-Jan-2021', '16', '10', NULL, 'active', 'Maternal', '25-Jan-2121', '2021-01-25 07:51:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(6) NOT NULL,
  `leave_name` varchar(100) DEFAULT NULL,
  `entitled_days` varchar(50) DEFAULT NULL,
  `gender` varchar(100) NOT NULL DEFAULT 'male',
  `status` varchar(50) NOT NULL DEFAULT 'Active',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_type`
--

INSERT INTO `leave_type` (`id`, `leave_name`, `entitled_days`, `gender`, `status`, `time_recorded`, `recorded_by`) VALUES
(5, 'Maternity', '90', 'Female', 'Active', '2021-01-27 11:20:28', NULL),
(6, 'Annual Leave', '21', 'Undefined', 'Active', '2021-01-27 11:23:12', 'carol@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_payments`
--

CREATE TABLE `mpesa_payments` (
  `id` int(11) NOT NULL,
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
  `OrgAccountBalance` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_requests`
--

CREATE TABLE `page_requests` (
  `id` int(6) NOT NULL,
  `page_id` varchar(500) DEFAULT NULL,
  `page_name` varchar(500) NOT NULL,
  `requested_by` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'default',
  `time_requested` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_requests`
--

INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(2800, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-12-12 13:00:49.537515'),
(2801, 'delivery-approvals-link', '\n                \n                                  \n                                    \n                  \n                    \n                      \n\n                  Position:                          \n                      \n                      \n\n                    Status: Testing                   \n\n\n\n                      \n                    \n                                CMA\n                                 2020-12-12 10:52:24\n                  \n                \n              ', 'pitarcheizin@gmail.com', '', '2020-12-12 13:00:49.891625'),
(2802, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-12-12 13:00:53.977276'),
(2803, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                         Software developer                          \n                          \n                          \n\n                         Apply for the post below                       \n\n\n\n                          \n                        \n                                    CMA\n                                     2020-12', 'pitarcheizin@gmail.com', '', '2020-12-12 13:00:54.453439'),
(2804, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-12 18:55:40.647719'),
(2805, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-12 18:56:40.697432'),
(2806, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-12 18:57:18.184946'),
(2807, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'carol@gmail.com', '', '2020-12-12 20:49:31.304292'),
(2808, 'activity_logs_tab', 'Activity Logs', 'carol@gmail.com', '', '2020-12-12 20:49:31.803945'),
(2809, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-13 15:24:49.603206'),
(2810, 'admin-logs-link', '\n                  \n                  Logs\n                ', 'carol@gmail.com', '', '2020-12-13 15:24:58.634112'),
(2811, 'activity_logs_tab', 'Activity Logs', 'carol@gmail.com', '', '2020-12-13 15:24:58.862684'),
(2812, 'page_logs_tab', 'Page Logs', 'carol@gmail.com', '', '2020-12-13 15:25:01.116338'),
(2813, 'sign_in_logs_tab', 'Sign in Logs', 'carol@gmail.com', '', '2020-12-13 15:25:03.041723'),
(2814, 'mail_logs_tab', 'Mail Logs', 'carol@gmail.com', '', '2020-12-13 15:25:08.807281'),
(2815, 'user-feedback-link', '\n                  \n                  User Feedback\n                ', 'carol@gmail.com', '', '2020-12-13 15:25:11.788937'),
(2816, 'all-post-vaccancy-link', '\n                                          \n                                          My Job Post\n                                        7 | HRMIS ', 'info@potentialstaffing.com', '', '2020-12-13 17:14:33.814558'),
(2817, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:26:10.549410'),
(2818, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:26:52.999471'),
(2819, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-13 17:28:16.941377'),
(2820, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2020-12-13 17:29:19.894873'),
(2821, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-13 17:29:20.055693'),
(2822, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2020-12-13 17:29:27.615814'),
(2823, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-13 17:29:27.854004'),
(2824, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-13 17:29:43.628216'),
(2825, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-13 17:30:02.095809'),
(2826, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-13 17:30:43.284563'),
(2827, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:31:29.076069'),
(2828, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:31:51.857715'),
(2829, 'all-post-vaccancy-link', '\n                                          \n                                          My Job Post\n                                        7 | HRMIS ', 'info@potentialstaffing.com', '', '2020-12-13 17:32:38.737685'),
(2830, 'all-post-vaccancy-link', '13 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:34:41.396893'),
(2831, 'job-details-tab', '\n           Exam Details\n        ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:34:41.637446'),
(2832, 'job-details-tab', '\n           Exam Details\n        ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:35:13.418466'),
(2833, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:38:07.793364'),
(2834, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'caro88njoroge@gmail.com', '', '2020-12-13 17:38:13.010726'),
(2835, 'Inventory-management-module', 'Inventory Management Module', 'pitarcheizin@gmail.com', '', '2020-12-13 17:42:47.653847'),
(2836, 'stock-approvals-link', '\n                    \n                                                                \n                      \n                        \n                          \n\n                         Finance manager                          \n                          \n                          \n\n                         Apply for the post                       \n\n\n\n                          \n                        \n                                    Potential Staffing\n                                     2', 'pitarcheizin@gmail.com', '', '2020-12-13 17:42:48.089973'),
(2837, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-13 17:42:58.711615'),
(2838, 'all-post-vaccancy-link', '\n                                          \n                                          My Job Post\n                                        7 | HRMIS ', 'info@potentialstaffing.com', '', '2020-12-13 17:44:41.571425'),
(2839, 'reports-link', '\n                                  \n                                  \n                                    Reports\n                                  \n                                ', 'info@potentialstaffing.com', '', '2020-12-13 17:45:25.233350'),
(2840, 'reports-link', 'Reports job_posted', 'info@potentialstaffing.com', '', '2020-12-13 17:45:30.751941'),
(2841, 'reports-link', '\n                                  \n                                  \n                                    Reports\n                                  \n                                ', 'info@potentialstaffing.com', '', '2020-12-13 17:46:12.035543'),
(2842, 'reports-link', '\n                                  \n                                  \n                                    Reports\n                                  \n                                ', 'info@potentialstaffing.com', '', '2020-12-13 17:46:12.912150'),
(2843, 'end-product-management-link', '\n                                         \n                                         Academic Documents\n                                       ', 'info@potentialstaffing.com', '', '2020-12-13 17:47:03.760341'),
(2844, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:39:42.128751'),
(2845, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:39:56.252708'),
(2846, 'all-post-vaccancy-link', '\n                                          \n                                          My Job Post\n                                        8 | HRMIS ', 'cma@gmail.com', '', '2020-12-14 07:40:13.002109'),
(2847, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2020-12-14 07:40:56.433279'),
(2848, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-14 07:40:56.494419'),
(2849, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-14 07:41:06.316397'),
(2850, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-14 07:41:14.206928'),
(2851, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-14 07:41:20.977129'),
(2852, 'all-post-vaccancy-link', '15 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:41:37.338011'),
(2853, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:41:38.070459'),
(2854, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:41:52.990812'),
(2855, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:42:55.270679'),
(2856, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 07:46:19.420052'),
(2857, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 08:05:56.719523'),
(2858, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 08:06:06.851991'),
(2859, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2020-12-14 08:06:53.915762'),
(2860, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 10:03:17.162687'),
(2861, 'Inventory-management-module', 'Inventory Management Module', 'recruitment@gmail.com', '', '2020-12-16 10:03:51.189648'),
(2862, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 11:36:02.350045'),
(2863, 'stock-list-payments-tab', '\n             Payments\n        ', 'carol@gmail.com', '', '2020-12-16 11:36:05.540987'),
(2864, 'end-product-tab', '\n            Stocks Request\n        ', 'carol@gmail.com', '', '2020-12-16 11:36:06.491858'),
(2865, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'carol@gmail.com', '', '2020-12-16 11:36:07.381738'),
(2866, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'carol@gmail.com', '', '2020-12-16 11:36:08.197220'),
(2867, 'stock-list-payments-tab', '\n             Payments\n        ', 'carol@gmail.com', '', '2020-12-16 11:37:34.609866'),
(2868, 'end-product-tab', '\n            Stocks Request\n        ', 'carol@gmail.com', '', '2020-12-16 11:37:35.995563'),
(2869, 'evidence-doc-tab', '\n            Evidence Documents\n        ', 'carol@gmail.com', '', '2020-12-16 11:37:37.340530'),
(2870, 'stocks-returns-tab', '\n            Stocks Returns\n        ', 'carol@gmail.com', '', '2020-12-16 11:37:39.884371'),
(2871, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 11:48:50.818223'),
(2872, 'stock-management-link', '81 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 11:48:53.710231'),
(2873, 'stock-list-payments-tab', '\n             Payments\n        ', 'carol@gmail.com', '', '2020-12-16 11:48:53.807939'),
(2874, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 11:49:16.700559'),
(2875, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 12:06:45.567176'),
(2876, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:06:26.224900'),
(2877, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:07:44.936983'),
(2878, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:09:57.259552'),
(2879, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:13:02.927845'),
(2880, 'stock-management-link', '7250 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:13:05.590059'),
(2881, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:14:45.774615'),
(2882, 'stock-management-link', '7250 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:14:48.552723'),
(2883, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:14:54.057204'),
(2884, 'stock-management-link', '7240 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:14:57.316200'),
(2885, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:34:04.210258'),
(2886, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:35:20.733156'),
(2887, 'stock-management-link', '7241 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:35:27.011400'),
(2888, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:55:52.117856'),
(2889, 'stock-management-link', '7240 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:55:58.022107'),
(2890, 'stock-list-payments-tab', '\n            Personal Details\n        ', 'carol@gmail.com', '', '2020-12-16 13:55:58.083477'),
(2891, 'stock-list-payments-tab', '\n            Personal Details\n        ', 'carol@gmail.com', '', '2020-12-16 13:56:08.098125'),
(2892, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 13:58:49.254539'),
(2893, 'stock-management-link', '7240 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 13:58:55.952628'),
(2894, 'stock-list-payments-tab', '\n            Personal Details\n        ', 'carol@gmail.com', '', '2020-12-16 13:58:56.126686'),
(2895, 'end-product-tab', '\n            Next of Kin\n        ', 'carol@gmail.com', '', '2020-12-16 13:59:01.744595'),
(2896, 'stock-list-payments-tab', '\n            Personal Details\n        ', 'carol@gmail.com', '', '2020-12-16 13:59:02.961466'),
(2897, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-16 14:00:51.311586'),
(2898, 'stock-management-link', '7240 | HRMIS ', 'carol@gmail.com', '', '2020-12-16 14:00:56.228688'),
(2899, 'personal-details-tab', '\n            Personal Details\n        ', 'carol@gmail.com', '', '2020-12-16 14:00:56.373179'),
(2900, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:21:01.687044'),
(2901, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:32:03.533310'),
(2902, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:33:11.564095'),
(2903, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:34:28.980075'),
(2904, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:37:12.724089'),
(2905, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:40:15.262039'),
(2906, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 04:41:14.889747'),
(2907, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 05:15:20.959737'),
(2908, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-17 05:16:18.981223'),
(2909, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 05:20:03.943694'),
(2910, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:17:23.286821'),
(2911, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:35:29.674396'),
(2912, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:44:42.755812'),
(2913, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:45:42.109382'),
(2914, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:46:12.900977'),
(2915, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:47:08.263491'),
(2916, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 06:48:51.697560'),
(2917, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:04:39.058965'),
(2918, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:06:18.539144'),
(2919, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:07:12.874080'),
(2920, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:08:43.942398'),
(2921, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:09:32.629271'),
(2922, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:10:04.309517'),
(2923, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:10:25.644416'),
(2924, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 07:10:41.601542'),
(2925, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 07:10:42.004739'),
(2926, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:10:51.230586'),
(2927, 'stock-management-link', '7252 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 07:10:53.951855'),
(2928, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 07:10:54.067566'),
(2929, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:11:01.044717'),
(2930, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:11:08.415782'),
(2931, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2020-12-17 07:19:42.181282'),
(2932, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-17 07:19:42.304345'),
(2933, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2020-12-17 07:19:46.851858'),
(2934, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2020-12-17 07:19:46.918169'),
(2935, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 07:30:07.583195'),
(2936, 'stock-management-link', '7252 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:02:09.687327'),
(2937, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:02:09.744619'),
(2938, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:02:14.421958'),
(2939, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:02:14.476200'),
(2940, 'end-product-tab', '\n            Next of Kin\n        ', 'personell@gmail.com', '', '2020-12-17 08:02:44.104048'),
(2941, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:02:44.789840'),
(2942, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:04:51.691711'),
(2943, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:04:51.765332'),
(2944, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:05:09.420867'),
(2945, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:05:09.465148'),
(2946, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:05:32.626995'),
(2947, 'personal-details-tab', '\n            Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:05:32.704908'),
(2948, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 08:06:36.806666'),
(2949, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 08:06:36.910872'),
(2950, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 09:09:28.087577'),
(2951, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 09:09:30.912033'),
(2952, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 09:09:31.012786'),
(2953, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 09:12:01.713334'),
(2954, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 09:12:01.758604'),
(2955, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 09:12:17.318638'),
(2956, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 09:12:17.397401'),
(2957, 'stock-management-link', '7252 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 09:12:21.158392'),
(2958, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 09:12:21.231992'),
(2959, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 09:13:37.458219'),
(2960, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 09:13:37.536477'),
(2961, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 10:22:40.118418'),
(2962, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 10:23:53.570533'),
(2963, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:23:53.629929'),
(2964, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:25:06.986309'),
(2965, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:28:24.586898'),
(2966, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-17 10:28:28.626756'),
(2967, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 10:28:44.730276'),
(2968, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:28:44.823733'),
(2969, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 10:30:44.947784'),
(2970, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:30:45.005247'),
(2971, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:32:29.403848'),
(2972, 'end-product-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:32:30.728245'),
(2973, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:32:33.563330'),
(2974, 'end-product-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 10:32:41.582148'),
(2975, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 11:10:39.371892'),
(2976, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:10:39.471624'),
(2977, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 11:11:11.143931'),
(2978, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:11:11.191764'),
(2979, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 11:12:23.856943'),
(2980, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:23.972458'),
(2981, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:26.615440'),
(2982, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:27.658939'),
(2983, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:28.803766'),
(2984, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:29.459388'),
(2985, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:30.421704'),
(2986, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:31.816443'),
(2987, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:32.801925'),
(2988, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:43.781245'),
(2989, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:12:45.326933'),
(2990, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-17 11:24:55.916729'),
(2991, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:24:55.978579'),
(2992, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-17 11:24:57.093074'),
(2993, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-21 06:05:29.939005'),
(2994, 'stock-management-link', '7252 | HRMIS ', 'carol@gmail.com', '', '2020-12-21 06:05:35.242750'),
(2995, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2020-12-21 06:05:35.324970'),
(2996, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2020-12-21 06:05:37.245148'),
(2997, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2020-12-21 06:05:38.428848'),
(2998, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 06:06:29.682103'),
(2999, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 06:06:33.913977'),
(3000, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:33.984963'),
(3001, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:35.468794'),
(3002, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:36.607796'),
(3003, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:37.375347'),
(3004, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:38.436665'),
(3005, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:06:39.922694'),
(3006, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 06:09:15.709271'),
(3007, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:09:17.193735'),
(3008, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:21:46.522858'),
(3009, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:22:31.824951'),
(3010, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:22:34.888853'),
(3011, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:22:35.809261'),
(3012, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 06:55:09.464126'),
(3013, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:55:10.107777'),
(3014, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:55:10.517942'),
(3015, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:55:42.918528'),
(3016, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:56:04.252775'),
(3017, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:56:20.173777'),
(3018, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 06:58:01.903689'),
(3019, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 07:12:16.861302'),
(3020, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 07:12:20.216398'),
(3021, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 07:12:20.289976'),
(3022, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 07:12:25.240039'),
(3023, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 07:13:17.928186'),
(3024, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 08:00:05.386140'),
(3025, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 08:00:22.975657'),
(3026, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:00:23.093088'),
(3027, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:00:24.557763'),
(3028, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:00:25.801571'),
(3029, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 08:00:43.691862'),
(3030, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 08:00:45.413713'),
(3031, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:00:45.503983'),
(3032, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:00:46.302342'),
(3033, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:01:02.112671'),
(3034, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 08:01:10.193421'),
(3035, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 08:01:11.456557'),
(3036, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-21 09:57:50.553647'),
(3037, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2020-12-21 09:58:05.150993'),
(3038, 'stock-management-link', '7252 | HRMIS ', 'carol@gmail.com', '', '2020-12-21 09:58:45.194044'),
(3039, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2020-12-21 09:58:45.804235'),
(3040, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2020-12-21 09:58:47.923166'),
(3041, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 09:59:13.129163'),
(3042, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 09:59:13.253589'),
(3043, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 09:59:15.299978'),
(3044, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 09:59:17.528006'),
(3045, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 09:59:18.766067'),
(3046, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 09:59:47.229466'),
(3047, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 10:00:08.275609'),
(3048, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 10:01:10.429979'),
(3049, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 10:01:36.933072'),
(3050, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 14:08:56.927991'),
(3051, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 14:08:59.979363'),
(3052, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:00.195487'),
(3053, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:04.611285'),
(3054, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:06.141396'),
(3055, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:08.238681'),
(3056, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:14.437242'),
(3057, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 14:09:15.636140'),
(3058, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-21 17:17:19.793358'),
(3059, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-21 17:17:27.187242'),
(3060, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-21 17:17:27.232593'),
(3061, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-21 17:17:53.606802'),
(3062, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-21 17:17:54.935870'),
(3063, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-21 17:18:00.851765'),
(3064, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 17:18:02.228464'),
(3065, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-21 17:18:04.298585'),
(3066, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-21 17:18:06.892568'),
(3067, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-21 17:18:28.401453'),
(3068, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 06:40:50.514588'),
(3069, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 06:40:57.884055'),
(3070, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 06:40:58.071193'),
(3071, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 06:41:33.977687'),
(3072, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 06:45:09.806496'),
(3073, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 06:46:58.264314'),
(3074, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 06:47:01.194698'),
(3075, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 06:47:01.257470'),
(3076, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 06:47:02.625037'),
(3077, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 06:47:21.441731'),
(3078, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 06:47:26.898757'),
(3079, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 06:47:27.936888'),
(3080, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:09:19.437908'),
(3081, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:09:22.972425'),
(3082, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:09:23.094970'),
(3083, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:09:27.078859'),
(3084, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:10:03.434610'),
(3085, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:10:06.353139'),
(3086, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:13:34.100534'),
(3087, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:14:03.677066'),
(3088, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:19.031093'),
(3089, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:34.296021'),
(3090, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:35.221815'),
(3091, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:36.250611'),
(3092, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:37.170121'),
(3093, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:38.115607'),
(3094, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:39.414716'),
(3095, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:16:40.907171'),
(3096, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:29:12.780579'),
(3097, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:29:15.246533'),
(3098, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:29:15.392097'),
(3099, 'academic-details-tab', '\n           Academic Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:29:16.137986'),
(3100, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:31:10.730430'),
(3101, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:31:12.804519'),
(3102, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:31:12.846554'),
(3103, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 07:31:15.138889'),
(3104, 'academic-details-tab', '\n           Academic Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:31:16.343870'),
(3105, 'academic-details-tab', '\n           Academic Qualification\n        ', 'personell@gmail.com', '', '2020-12-22 07:32:02.861557'),
(3106, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:42:21.122799'),
(3107, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:42:23.626601'),
(3108, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:42:23.764621'),
(3109, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 07:42:25.175188'),
(3110, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:45:51.401794'),
(3111, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:45:55.008264'),
(3112, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:45:55.059233'),
(3113, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 07:45:56.814896'),
(3114, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 07:46:14.746776'),
(3115, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 07:59:18.745391'),
(3116, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 07:59:21.219124'),
(3117, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:21.333403'),
(3118, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:22.601587'),
(3119, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:28.408833'),
(3120, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:29.612220'),
(3121, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:31.959792'),
(3122, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 07:59:32.853077'),
(3123, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-22 08:00:42.167340'),
(3124, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 08:00:44.296681'),
(3125, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 08:00:44.398719'),
(3126, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:00:45.311932'),
(3127, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:00:51.586265'),
(3128, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:01:42.132858'),
(3129, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-22 08:01:46.338406'),
(3130, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-22 08:01:46.399384'),
(3131, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:01:47.223996'),
(3132, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:02:19.395897'),
(3133, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:02:53.730356'),
(3134, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:02:54.959756'),
(3135, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:05:38.395604'),
(3136, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-22 08:05:40.037040'),
(3137, 'documents-details-tab', '\n           Scanned Documents\n        ', 'personell@gmail.com', '', '2020-12-22 08:05:40.901121'),
(3138, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-23 05:49:35.221754'),
(3139, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-23 05:49:37.736575'),
(3140, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 05:49:38.277221'),
(3141, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-23 05:51:42.216059'),
(3142, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 05:51:43.095380'),
(3143, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-23 06:30:36.396828'),
(3144, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:30:36.554258'),
(3145, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:30:37.703220'),
(3146, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-23 06:30:38.700762'),
(3147, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:30:39.254638'),
(3148, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:30:43.513502'),
(3149, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:31:08.325802'),
(3150, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:31:08.557205'),
(3151, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-23 06:31:58.681949'),
(3152, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-23 06:31:59.641833'),
(3153, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-23 06:32:13.552379'),
(3154, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-23 06:32:13.792394'),
(3155, 'academic-details-tab', '\n           Academic Qualification\n        ', 'personell@gmail.com', '', '2020-12-23 06:32:15.817163'),
(3156, 'certificate-details-tab', '\n           Certificate and awards\n        ', 'personell@gmail.com', '', '2020-12-23 06:32:17.846273'),
(3157, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-23 06:41:17.223091'),
(3158, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:41:18.622058'),
(3159, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:41:21.054175'),
(3160, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:41:23.666068'),
(3161, 'dependants-details-tab', '\n           Dependants\n        ', 'personell@gmail.com', '', '2020-12-23 06:41:28.847749'),
(3162, 'professional-details-tab', '\n           Professional Qualification\n        ', 'personell@gmail.com', '', '2020-12-23 06:42:04.523957'),
(3163, 'academic-details-tab', '\n           Academic Qualification\n        ', 'personell@gmail.com', '', '2020-12-23 06:42:28.617152'),
(3164, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:46:54.238453'),
(3165, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:46:55.957183'),
(3166, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:46:56.919305'),
(3167, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-23 06:47:00.422660'),
(3168, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 06:56:06.656264'),
(3169, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 07:02:00.686717'),
(3170, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 07:10:37.872287'),
(3171, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-23 07:10:53.627134'),
(3172, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-23 07:20:57.555110'),
(3173, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-23 07:41:53.795324'),
(3174, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-23 07:42:19.721090'),
(3175, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-23 08:10:09.111528');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(3176, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-30 10:01:27.204545'),
(3177, 'user-profile-link', 'User Profile', 'personell@gmail.com', '', '2020-12-30 10:02:34.196844'),
(3178, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-30 10:04:54.600674'),
(3179, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-31 04:46:45.328262'),
(3180, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-31 04:46:45.431904'),
(3181, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-31 04:56:04.995431'),
(3182, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2020-12-31 05:10:31.828889'),
(3183, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-31 05:48:28.795046'),
(3184, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-31 05:48:28.893519'),
(3185, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-31 05:48:30.590877'),
(3186, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-31 05:48:32.932411'),
(3187, 'employment-details-tab', '\n           Employement Terms\n        ', 'personell@gmail.com', '', '2020-12-31 05:48:34.441597'),
(3188, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:11:34.177366'),
(3189, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2020-12-31 06:31:26.332528'),
(3190, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:31:26.403415'),
(3191, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:31:27.568429'),
(3192, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:31:29.243644'),
(3193, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2020-12-31 06:31:33.713173'),
(3194, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:31:33.769661'),
(3195, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2020-12-31 06:31:34.800668'),
(3196, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 06:51:56.599374'),
(3197, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 06:52:15.582420'),
(3198, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 06:55:38.302750'),
(3199, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 06:56:08.613453'),
(3200, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 07:02:18.853638'),
(3201, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 07:06:02.046765'),
(3202, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 07:07:04.595848'),
(3203, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 10:34:24.028524'),
(3204, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 10:34:43.206112'),
(3205, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 10:35:43.245113'),
(3206, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 14:02:33.346912'),
(3207, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 14:04:20.095603'),
(3208, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 14:05:59.930191'),
(3209, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                  Trainer List\n                 \n               \n                 \n                 \n                  Planning\n                 \n               \n                 \n                 \n                Budget\n                 \n               7256 | HRMIS ', 'training@gmail.com', '', '2020-12-31 14:07:23.091965'),
(3210, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 14:07:23.193488'),
(3211, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2020-12-31 14:07:26.393320'),
(3212, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 14:07:27.612391'),
(3213, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 14:07:29.652586'),
(3214, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 16:00:14.267397'),
(3215, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 16:00:28.183127'),
(3216, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                  Trainer List\n                 \n               \n                 \n                 \n                  Planning\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2020-12-31 16:06:46.732263'),
(3217, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 16:06:47.114757'),
(3218, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 16:26:02.786806'),
(3219, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 16:26:30.350249'),
(3220, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 16:29:54.296355'),
(3221, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                  Trainer List\n                 \n               \n                 \n                 \n                  Planning\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2020-12-31 16:30:05.208049'),
(3222, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 16:30:05.318390'),
(3223, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2020-12-31 17:34:47.046008'),
(3224, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                  Trainer List\n                 \n               \n                 \n                 \n                  Planning\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2020-12-31 17:34:50.577774'),
(3225, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:34:50.691758'),
(3226, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:35:17.985282'),
(3227, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:36:49.189868'),
(3228, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:36:58.697856'),
(3229, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:38:01.959009'),
(3230, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:38:07.306548'),
(3231, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:38:14.330798'),
(3232, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:38:18.450500'),
(3233, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                  Trainer List\n                 \n               \n                 \n                 \n                  Planning\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2020-12-31 17:42:42.746804'),
(3234, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:42:43.035993'),
(3235, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:42:48.368327'),
(3236, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 17:50:53.743102'),
(3237, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:50:55.029884'),
(3238, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:50:56.655801'),
(3239, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:51:26.430262'),
(3240, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:51:27.448508'),
(3241, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:52:46.830842'),
(3242, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:52:47.938739'),
(3243, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:52:48.547452'),
(3244, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:52:49.936668'),
(3245, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:54:11.776205'),
(3246, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:54:59.015179'),
(3247, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2020-12-31 17:55:50.130172'),
(3248, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2020-12-31 18:06:25.884306'),
(3249, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2020-12-31 18:06:28.100092'),
(3250, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 15:06:56.361502'),
(3251, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 15:09:02.847957'),
(3252, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:25:19.561692'),
(3253, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:03.401895'),
(3254, 'training-link', '7257 | HRMIS ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:11.432404'),
(3255, 'course-details-tab', '\n           Course Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:11.520634'),
(3256, 'trainers-details-tab', '\n    Trainers\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:14.121306'),
(3257, 'trainee-details-tab', '\n        Trainees\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:15.346644'),
(3258, 'course-details-tab', '\n           Course Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:21.770667'),
(3259, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:28.567387'),
(3260, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:33.986458'),
(3261, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:26:43.337345'),
(3262, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:28:56.583719'),
(3263, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:19.635957'),
(3264, 'stock-management-link', '7251 | HRMIS ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:28.494463'),
(3265, 'personal-details-tab', '\n           Personal Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:28.591126'),
(3266, 'bank-details-tab', '\n      Bank Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:30.636737'),
(3267, 'statutory-details-tab', '\n           Statutory Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:31.439408'),
(3268, 'employment-details-tab', '\n           Employement Terms\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:32.117385'),
(3269, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:38.419422'),
(3270, 'stock-management-link', '7241 | HRMIS ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:49.281728'),
(3271, 'personal-details-tab', '\n           Personal Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:49.348306'),
(3272, 'bank-details-tab', '\n      Bank Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:51.240124'),
(3273, 'statutory-details-tab', '\n           Statutory Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:51.868967'),
(3274, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:29:57.606539'),
(3275, 'stock-management-link', '7253 | HRMIS ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:01.384997'),
(3276, 'personal-details-tab', '\n           Personal Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:01.530588'),
(3277, 'bank-details-tab', '\n      Bank Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:02.564286'),
(3278, 'statutory-details-tab', '\n           Statutory Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:03.360562'),
(3279, 'employment-details-tab', '\n           Employement Terms\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:04.062827'),
(3280, 'dependants-details-tab', '\n           Dependants\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:05.163925'),
(3281, 'professional-details-tab', '\n           Professional Qualification\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:06.103192'),
(3282, 'Inventory-management-module', 'Inventory Management Module', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:14.087696'),
(3283, 'training-link', '7257 | HRMIS ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:19.030942'),
(3284, 'course-details-tab', '\n           Course Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:19.180046'),
(3285, 'trainers-details-tab', '\n    Trainers\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:21.034977'),
(3286, 'trainee-details-tab', '\n        Trainees\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:22.020894'),
(3287, 'course-details-tab', '\n           Course Details\n        ', 'Pkariuki@cma.or.ke', '', '2021-01-01 15:30:24.695807'),
(3288, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2021-01-01 15:31:39.006801'),
(3289, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 15:32:11.930756'),
(3290, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 15:58:08.601689'),
(3291, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-01 15:58:11.483774'),
(3292, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-01 15:58:11.625268'),
(3293, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 16:26:08.557051'),
(3294, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-01 16:26:09.746160'),
(3295, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:10:30.048240'),
(3296, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:11:11.329720'),
(3297, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:11:29.120202'),
(3298, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 17:13:10.424170'),
(3299, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-01 17:13:12.485677'),
(3300, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-01 17:13:12.612533'),
(3301, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:13:13.529846'),
(3302, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:13:15.613940'),
(3303, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-01 17:14:11.888935'),
(3304, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                Budget\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-01 17:16:02.419710'),
(3305, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-01 17:16:02.541503'),
(3306, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:16:03.622379'),
(3307, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:19:52.945566'),
(3308, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-01 17:20:56.282669'),
(3309, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:21:25.556333'),
(3310, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:21:36.702845'),
(3311, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:23:39.314716'),
(3312, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:26:02.161285'),
(3313, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:26:25.300739'),
(3314, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:26:41.578668'),
(3315, 'training-link', '7258 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 17:26:44.228065'),
(3316, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 17:26:44.741906'),
(3317, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:27:14.040630'),
(3318, 'training-link', '7258 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 17:27:17.164455'),
(3319, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 17:27:17.272979'),
(3320, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 17:30:05.362327'),
(3321, 'training-link', '7257 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 17:30:09.577109'),
(3322, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:09.698138'),
(3323, 'trainers-details-tab', '\n    Trainers\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:10.967391'),
(3324, 'trainee-details-tab', '\n        Trainees\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:14.164618'),
(3325, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:18.648515'),
(3326, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:20.579937'),
(3327, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:21.924057'),
(3328, 'trainee-details-tab', '\n        Trainees\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:22.927229'),
(3329, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:27.969706'),
(3330, 'trainers-details-tab', '\n    Trainers\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:35.627243'),
(3331, 'trainee-details-tab', '\n        Trainees\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:42.880715'),
(3332, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:50.109323'),
(3333, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 17:30:56.828336'),
(3334, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 18:25:02.140883'),
(3335, 'training-link', '7257 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 18:25:04.620819'),
(3336, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 18:25:04.716989'),
(3337, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:25:06.247256'),
(3338, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 18:40:02.499039'),
(3339, 'training-link', '7257 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 18:40:21.361890'),
(3340, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 18:40:21.501358'),
(3341, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:40:23.640813'),
(3342, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:41:35.545211'),
(3343, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:43:01.037961'),
(3344, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:43:45.632669'),
(3345, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-01 18:47:27.201538'),
(3346, 'training-link', '7257 | HRMIS ', 'trainer@gmail.com', '', '2021-01-01 18:47:28.967465'),
(3347, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 18:47:29.167295'),
(3348, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:47:31.796763'),
(3349, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:48:10.303307'),
(3350, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:48:27.893636'),
(3351, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:48:29.709621'),
(3352, 'materials-details-tab', '\n           E-Materials\n        ', 'trainer@gmail.com', '', '2021-01-01 18:49:03.181908'),
(3353, 'trainee-details-tab', '\n        Trainees\n        ', 'trainer@gmail.com', '', '2021-01-01 18:50:16.223635'),
(3354, 'trainers-details-tab', '\n    Trainers\n        ', 'trainer@gmail.com', '', '2021-01-01 18:50:17.644026'),
(3355, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-01 18:50:18.699112'),
(3356, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-04 13:54:40.579621'),
(3357, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-04 14:44:09.130161'),
(3358, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-04 14:45:29.012346'),
(3359, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-04 14:49:29.915206'),
(3360, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-04 16:19:27.490451'),
(3361, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                Budget\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-04 16:31:24.120526'),
(3362, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-04 16:31:24.296355'),
(3363, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2021-01-04 17:19:56.197633'),
(3364, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2021-01-04 17:19:56.494114'),
(3365, 'stock-management-link', '7253 | HRMIS ', 'personell@gmail.com', '', '2021-01-04 17:20:26.532569'),
(3366, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2021-01-04 17:20:27.000751'),
(3367, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2021-01-04 17:23:24.835037'),
(3368, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:23:35.697901'),
(3369, 'stock-management-link', '7253 | HRMIS ', 'carol@gmail.com', '', '2021-01-04 17:23:44.040202'),
(3370, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:44.377236'),
(3371, 'documents-details-tab', '\n           Scanned Documents\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:45.447070'),
(3372, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:46.928713'),
(3373, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:23:50.223138'),
(3374, 'stock-management-link', '7253 | HRMIS ', 'carol@gmail.com', '', '2021-01-04 17:23:52.850015'),
(3375, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:52.901459'),
(3376, 'statutory-details-tab', '\n           Statutory Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:53.762337'),
(3377, 'employment-details-tab', '\n           Employement Terms\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:54.702591'),
(3378, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:23:57.008624'),
(3379, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:24:04.894617'),
(3380, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2021-01-04 17:24:33.321559'),
(3381, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:27:51.137352'),
(3382, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:30:43.886212'),
(3383, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:31:09.088430'),
(3384, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:31:16.680954'),
(3385, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:32:25.837794'),
(3386, 'stock-management-link', '7253 | HRMIS ', 'carol@gmail.com', '', '2021-01-04 17:33:15.720827'),
(3387, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:33:15.801023'),
(3388, 'employment-details-tab', '\n           Employement Terms\n        ', 'carol@gmail.com', '', '2021-01-04 17:33:17.941245'),
(3389, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:33:22.151842'),
(3390, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:33:47.552712'),
(3391, 'Inventory-management-module', 'Inventory Management Module', 'personell@gmail.com', '', '2021-01-04 17:33:58.401083'),
(3392, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:37:27.338854'),
(3393, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:55:18.056500'),
(3394, 'training-link', '7257 | HRMIS ', 'carol@gmail.com', '', '2021-01-04 17:55:23.840792'),
(3395, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-04 17:55:23.985932'),
(3396, 'trainers-details-tab', '\n    Trainers\n        ', 'carol@gmail.com', '', '2021-01-04 17:55:26.210671'),
(3397, 'trainee-details-tab', '\n        Trainees\n        ', 'carol@gmail.com', '', '2021-01-04 17:55:28.050926'),
(3398, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'carol@gmail.com', '', '2021-01-04 17:55:29.199833'),
(3399, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-04 17:55:55.671823'),
(3400, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-04 18:22:15.657578'),
(3401, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-04 18:23:01.158627'),
(3402, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-04 18:23:28.551664'),
(3403, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-04 18:24:03.501132'),
(3404, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-04 18:25:40.251793'),
(3405, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 08:21:59.635951'),
(3406, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 08:26:17.973464'),
(3407, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:19:26.626365'),
(3408, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:20:08.999995'),
(3409, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:20:12.291377'),
(3410, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:21:14.850613'),
(3411, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:21:45.442777'),
(3412, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:21:48.750733'),
(3413, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:21:53.692536'),
(3414, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:22:29.108651'),
(3415, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:22:36.837664'),
(3416, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-08 09:29:49.192443'),
(3417, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 09:46:45.424497'),
(3418, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:46:53.131585'),
(3419, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:48:40.215531'),
(3420, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:48:43.907570'),
(3421, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:48:54.477701'),
(3422, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:49:15.423215'),
(3423, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:51:13.220062'),
(3424, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:52:25.454808'),
(3425, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:52:28.236583'),
(3426, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:54:35.842938'),
(3427, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:54:38.495177'),
(3428, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 09:55:58.836923'),
(3429, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 10:31:12.749054'),
(3430, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:31:18.393266'),
(3431, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:31:24.776567'),
(3432, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 10:34:01.046742'),
(3433, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:34:07.430439'),
(3434, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 10:35:29.825991'),
(3435, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:35:33.420852'),
(3436, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:36:10.041973'),
(3437, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:36:49.159052'),
(3438, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2021-01-08 10:37:37.779678'),
(3439, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-08 10:37:37.868449'),
(3440, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-08 10:38:05.859337'),
(3441, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2021-01-08 10:38:18.844618'),
(3442, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-08 10:38:18.929006'),
(3443, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 10:44:48.479764'),
(3444, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:44:53.482636'),
(3445, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 10:57:35.808320'),
(3446, 'stock-management-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:57:40.750150'),
(3447, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:57:40.834319'),
(3448, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:57:47.342071'),
(3449, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:57:47.460993'),
(3450, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:57:48.522602'),
(3451, 'stock-management-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 10:58:51.316096'),
(3452, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:58:51.414750'),
(3453, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:59:12.623425'),
(3454, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:59:13.794030'),
(3455, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:59:14.984519'),
(3456, 'course-details2-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 10:59:22.947755'),
(3457, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:09:03.960078'),
(3458, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:09:04.127341'),
(3459, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:12:04.076652'),
(3460, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:12:04.158229'),
(3461, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:18:21.690759'),
(3462, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:18:21.784576'),
(3463, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:26:06.732440'),
(3464, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:26:06.814114'),
(3465, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:26:38.000490'),
(3466, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:26:38.070489'),
(3467, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:26:54.187952'),
(3468, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:29:45.180392'),
(3469, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:33:38.150467'),
(3470, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:33:50.142950'),
(3471, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 11:34:55.263795'),
(3472, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:35:03.216527'),
(3473, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:35:03.269501'),
(3474, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:35:11.224804'),
(3475, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:36:33.051188'),
(3476, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:36:33.108041'),
(3477, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 11:36:51.586174'),
(3478, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:36:57.639252'),
(3479, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:36:57.736132'),
(3480, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:37:03.190666'),
(3481, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:37:06.874051'),
(3482, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:37:06.931859'),
(3483, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:37:13.469701'),
(3484, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:38:13.584606'),
(3485, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 11:38:13.695179'),
(3486, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               \n                 \n                 \n                Budget\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-08 11:39:00.510733'),
(3487, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-08 11:39:00.581948'),
(3488, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-08 11:39:01.747225'),
(3489, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-08 11:39:02.572864'),
(3490, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-08 11:39:04.335157'),
(3491, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-08 11:39:05.732586'),
(3492, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-08 11:39:06.950830'),
(3493, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 16:56:08.636026'),
(3494, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 17:19:09.409321'),
(3495, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-08 17:19:09.647498'),
(3496, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 17:36:24.503630'),
(3497, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 17:36:29.391349'),
(3498, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:36:29.457011'),
(3499, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 17:37:49.750232'),
(3500, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:37:49.820797'),
(3501, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:39:03.796956'),
(3502, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:39:17.246700'),
(3503, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:39:23.619690'),
(3504, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:41:25.027097'),
(3505, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:42:18.519941'),
(3506, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 17:42:21.634601'),
(3507, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:42:21.721056'),
(3508, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:42:32.432737'),
(3509, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:42:56.164996'),
(3510, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:43:04.250343'),
(3511, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:43:04.390408'),
(3512, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:44:03.614210'),
(3513, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 17:44:06.382007'),
(3514, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:44:06.468443'),
(3515, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:45:13.906814'),
(3516, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 17:45:24.280640'),
(3517, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 18:06:27.530669'),
(3518, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 18:06:32.552221'),
(3519, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:06:32.622451'),
(3520, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 18:06:38.148583'),
(3521, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:06:38.219487'),
(3522, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:07:12.969738'),
(3523, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:07:28.284127'),
(3524, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:09:08.125861'),
(3525, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:09:50.109342'),
(3526, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:11:58.067539'),
(3527, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 18:20:40.326597'),
(3528, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 18:20:45.897830'),
(3529, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:20:45.958754'),
(3530, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:26:13.714082'),
(3531, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-08 18:48:08.612592'),
(3532, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 18:48:12.394379'),
(3533, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:48:12.483020'),
(3534, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 18:59:53.884979'),
(3535, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 18:59:53.951028'),
(3536, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:01:42.245738'),
(3537, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:02:22.326874'),
(3538, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:03:20.665396'),
(3539, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:05:27.781081'),
(3540, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:10:10.684565'),
(3541, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:10:33.485985'),
(3542, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:13:24.528721'),
(3543, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:13:39.562958'),
(3544, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:13:50.586678'),
(3545, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:14:06.011940'),
(3546, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:00.994076'),
(3547, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-08 19:18:06.692230'),
(3548, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:06.756732'),
(3549, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:20.944920'),
(3550, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:32.322598'),
(3551, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:46.818066'),
(3552, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:18:50.933138'),
(3553, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-08 19:21:23.602219'),
(3554, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-08 19:21:23.686495'),
(3555, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 07:52:37.385724'),
(3556, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 07:52:37.978575'),
(3557, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 07:52:53.485554'),
(3558, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 07:52:53.550367'),
(3559, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 07:58:48.344925'),
(3560, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 07:58:48.412454'),
(3561, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 07:59:09.768111'),
(3562, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 07:59:09.876380'),
(3563, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:00:16.029244'),
(3564, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 08:00:16.095561'),
(3565, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:00:39.841162'),
(3566, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 08:00:39.905464'),
(3567, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:04:44.185737'),
(3568, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 08:04:44.257884'),
(3569, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:04:52.379034'),
(3570, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-09 08:04:52.488421');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(3571, 'project-management-module', 'Project Management Module', 'personell@gmail.com', '', '2021-01-09 08:12:48.815226'),
(3572, 'stock-management-link', '7254 | HRMIS ', 'personell@gmail.com', '', '2021-01-09 08:12:55.477594'),
(3573, 'personal-details-tab', '\n           Personal Details\n        ', 'personell@gmail.com', '', '2021-01-09 08:12:55.533163'),
(3574, 'bank-details-tab', '\n      Bank Details\n        ', 'personell@gmail.com', '', '2021-01-09 08:12:57.900053'),
(3575, 'statutory-details-tab', '\n           Statutory Details\n        ', 'personell@gmail.com', '', '2021-01-09 08:12:59.831029'),
(3576, 'project-management-module', 'Project Management Module', 'personell@gmail.com', '', '2021-01-09 08:13:14.579441'),
(3577, 'Inventory-management-module', 'Inventory Management Module', 'training@gmail.com', '', '2021-01-09 08:14:57.756409'),
(3578, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:15:01.910147'),
(3579, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-09 08:15:01.962528'),
(3580, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-09 08:15:10.882201'),
(3581, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-09 08:15:15.605969'),
(3582, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-09 08:15:21.618541'),
(3583, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-09 08:15:26.462399'),
(3584, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-09 08:15:27.586266'),
(3585, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-09 08:15:29.807304'),
(3586, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-09 08:15:55.902874'),
(3587, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-09 08:15:56.023468'),
(3588, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-09 08:15:57.579014'),
(3589, 'Inventory-management-module', 'Inventory Management Module', 'trainer@gmail.com', '', '2021-01-09 08:16:19.075523'),
(3590, 'training-link', '7257 | HRMIS ', 'trainer@gmail.com', '', '2021-01-09 08:16:23.291068'),
(3591, 'course-details-tab', '\n           Course Details\n        ', 'trainer@gmail.com', '', '2021-01-09 08:16:23.358244'),
(3592, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'trainer@gmail.com', '', '2021-01-09 08:16:33.469246'),
(3593, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-09 09:12:56.460743'),
(3594, 'Inventory-management-module', 'Inventory Management Module', 'carol@gmail.com', '', '2021-01-11 07:07:44.522550'),
(3595, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:26:30.057355'),
(3596, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:26:37.944230'),
(3597, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:34:52.361340'),
(3598, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:36:45.540193'),
(3599, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:36:58.587025'),
(3600, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:40:03.498655'),
(3601, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:40:03.579105'),
(3602, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 07:40:10.967059'),
(3603, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 07:40:18.288902'),
(3604, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-11 07:40:18.402529'),
(3605, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 07:40:51.480591'),
(3606, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:41:02.918984'),
(3607, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:41:02.996780'),
(3608, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:43:44.859466'),
(3609, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:44:27.910322'),
(3610, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:44:58.124450'),
(3611, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:45:24.165351'),
(3612, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:45:30.311755'),
(3613, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:45:30.687554'),
(3614, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:46:07.632605'),
(3615, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 07:46:07.758750'),
(3616, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:46:19.446657'),
(3617, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:46:19.531008'),
(3618, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:46:40.570040'),
(3619, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:46:40.648627'),
(3620, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:48:59.459852'),
(3621, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:49:02.106178'),
(3622, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:49:02.217296'),
(3623, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:49:19.336716'),
(3624, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:49:25.094025'),
(3625, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:49:25.211620'),
(3626, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:49:30.916946'),
(3627, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:49:31.013279'),
(3628, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:49:55.710614'),
(3629, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:49:55.766211'),
(3630, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 07:59:33.488551'),
(3631, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:59:33.553195'),
(3632, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 07:59:52.284730'),
(3633, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:00:00.438719'),
(3634, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:00:00.515332'),
(3635, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:00:10.765864'),
(3636, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:00:54.814217'),
(3637, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:00:54.882888'),
(3638, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:02:18.194320'),
(3639, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:02:18.261825'),
(3640, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 08:02:21.003090'),
(3641, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:02:37.538579'),
(3642, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 08:02:38.824781'),
(3643, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 08:04:45.990552'),
(3644, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-11 08:04:47.181943'),
(3645, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:04:53.401419'),
(3646, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:04:53.461501'),
(3647, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:19:46.783509'),
(3648, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:19:46.834040'),
(3649, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:19:55.089552'),
(3650, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:19:55.156553'),
(3651, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 08:19:56.632087'),
(3652, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-11 08:19:58.368421'),
(3653, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 08:20:01.784317'),
(3654, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:20:21.912071'),
(3655, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:20:41.738444'),
(3656, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:20:41.808693'),
(3657, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:20:55.646419'),
(3658, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:20:55.720088'),
(3659, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:21:01.680627'),
(3660, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:21:01.759531'),
(3661, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 08:21:13.261382'),
(3662, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:21:23.306802'),
(3663, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:21:23.420996'),
(3664, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:21:35.923151'),
(3665, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:21:35.994123'),
(3666, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:28:13.152576'),
(3667, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:28:13.667907'),
(3668, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:28:23.686154'),
(3669, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:28:23.783151'),
(3670, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:28:28.442568'),
(3671, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:28:28.498810'),
(3672, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:36:11.542004'),
(3673, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:36:11.608993'),
(3674, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:36:20.693342'),
(3675, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:36:20.805525'),
(3676, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:37:19.015891'),
(3677, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:37:19.106648'),
(3678, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:37:38.892273'),
(3679, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:37:39.005911'),
(3680, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:38:48.403973'),
(3681, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 08:38:48.501672'),
(3682, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:55:06.156470'),
(3683, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:56:47.144935'),
(3684, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 08:56:47.239340'),
(3685, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 08:57:05.107793'),
(3686, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:11.802162'),
(3687, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:11.901429'),
(3688, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:15.708965'),
(3689, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:15.854077'),
(3690, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:20.304471'),
(3691, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:20.387178'),
(3692, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:24.743024'),
(3693, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:24.866617'),
(3694, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:27.080818'),
(3695, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:27.145330'),
(3696, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:29.172875'),
(3697, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:29.266755'),
(3698, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:32.248559'),
(3699, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:32.669433'),
(3700, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:03:35.923930'),
(3701, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:03:35.987871'),
(3702, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:04:48.902195'),
(3703, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:04:48.971989'),
(3704, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:04:50.925881'),
(3705, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:05:10.207384'),
(3706, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:05:53.851203'),
(3707, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:06:04.218047'),
(3708, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:06:04.287890'),
(3709, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:10:48.560311'),
(3710, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:10:48.642772'),
(3711, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:10:53.327690'),
(3712, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:10:53.420997'),
(3713, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:10:59.804480'),
(3714, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:10:59.885841'),
(3715, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:11:08.811635'),
(3716, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:11:08.913742'),
(3717, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:11:12.348096'),
(3718, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:11:12.423071'),
(3719, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:13:34.142107'),
(3720, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:13:34.225082'),
(3721, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:13:35.378205'),
(3722, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:15:33.004308'),
(3723, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:16:00.996479'),
(3724, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:16:55.767551'),
(3725, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:16:55.847335'),
(3726, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:16:57.011519'),
(3727, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:17:24.965355'),
(3728, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:17:51.249274'),
(3729, 'all-post-vaccancy-link', '11 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:17:54.892623'),
(3730, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:17:54.968995'),
(3731, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:17:57.364422'),
(3732, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:17:57.424859'),
(3733, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:18:01.385476'),
(3734, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:18:01.453263'),
(3735, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:19:06.205968'),
(3736, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:19:13.065063'),
(3737, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:19:13.340858'),
(3738, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:20:07.323277'),
(3739, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:20:17.246337'),
(3740, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 09:20:18.156831'),
(3741, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:20:18.902713'),
(3742, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:21:25.224618'),
(3743, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:21:25.341653'),
(3744, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:21:46.051934'),
(3745, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 09:21:46.983115'),
(3746, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-11 09:21:47.976578'),
(3747, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 09:21:48.646196'),
(3748, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-11 09:21:49.648335'),
(3749, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:21:52.100582'),
(3750, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:04.826299'),
(3751, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:04.912015'),
(3752, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:11.841972'),
(3753, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:20.035094'),
(3754, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:22:20.102108'),
(3755, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:29.046558'),
(3756, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:29.201327'),
(3757, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:38.750162'),
(3758, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:38.816059'),
(3759, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:46.640894'),
(3760, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:46.715214'),
(3761, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:22:56.455486'),
(3762, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:22:56.549022'),
(3763, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:23:39.611442'),
(3764, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:23:42.602704'),
(3765, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:23:42.761705'),
(3766, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:23:46.407187'),
(3767, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:23:50.368228'),
(3768, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:23:50.463281'),
(3769, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:23:55.455689'),
(3770, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:23:55.542314'),
(3771, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 09:24:19.170335'),
(3772, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:24:21.422436'),
(3773, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:24:21.498141'),
(3774, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 09:25:58.095172'),
(3775, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:26:45.115062'),
(3776, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:26:45.183554'),
(3777, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:26:51.360798'),
(3778, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:26:51.437306'),
(3779, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 09:26:53.164154'),
(3780, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:27:29.217380'),
(3781, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:27:29.364833'),
(3782, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 09:27:46.846034'),
(3783, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:27:54.339735'),
(3784, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:27:54.511785'),
(3785, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:27:58.308279'),
(3786, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:27:58.387802'),
(3787, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:28:23.852889'),
(3788, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:28:24.053120'),
(3789, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:29:36.862955'),
(3790, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:30:43.050103'),
(3791, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 09:30:43.124365'),
(3792, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 09:30:44.094585'),
(3793, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:33:38.667368'),
(3794, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:33:38.818583'),
(3795, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:33:43.465680'),
(3796, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:33:43.537170'),
(3797, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:34:03.907337'),
(3798, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:34:04.006622'),
(3799, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:35:04.854177'),
(3800, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:35:32.566356'),
(3801, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:41:32.947367'),
(3802, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:42:03.133913'),
(3803, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:42:39.575648'),
(3804, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:43:26.017584'),
(3805, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:43:40.000347'),
(3806, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:44:12.459115'),
(3807, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:44:57.009682'),
(3808, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:46:12.331345'),
(3809, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:46:40.293155'),
(3810, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:47:02.023063'),
(3811, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:47:17.199072'),
(3812, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 09:47:40.785693'),
(3813, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 09:47:48.275188'),
(3814, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:47:56.964883'),
(3815, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:47:57.083227'),
(3816, 'all-post-vaccancy-link', '9 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:48:20.561580'),
(3817, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:48:20.620610'),
(3818, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:48:42.810315'),
(3819, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:48:42.949496'),
(3820, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:49:16.700843'),
(3821, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:49:16.886058'),
(3822, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:49:32.519640'),
(3823, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:49:32.601027'),
(3824, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:52:18.386172'),
(3825, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:52:18.592905'),
(3826, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:52:33.831566'),
(3827, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:52:57.205090'),
(3828, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:53:45.721957'),
(3829, 'course-tab', '\n           Budget List\n        ', 'training@gmail.com', '', '2021-01-11 09:53:45.790833'),
(3830, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:53:54.197413'),
(3831, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:53:54.267107'),
(3832, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 09:54:04.034384'),
(3833, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:54:04.323979'),
(3834, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:54:51.136084'),
(3835, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:54:52.417824'),
(3836, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:57:39.299768'),
(3837, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:57:47.625151'),
(3838, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:58:10.554721'),
(3839, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 09:58:52.311231'),
(3840, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 10:00:42.169070'),
(3841, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:00:50.799843'),
(3842, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:00:50.882335'),
(3843, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:03:44.043922'),
(3844, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:03:44.121021'),
(3845, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:07:05.924584'),
(3846, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:07:06.017729'),
(3847, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:07:14.898212'),
(3848, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:07:14.988432'),
(3849, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:07:29.708022'),
(3850, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:07:30.784857'),
(3851, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:08:09.954579'),
(3852, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:08:10.041135'),
(3853, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:08:24.064758'),
(3854, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:08:24.139982'),
(3855, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:41:46.644645'),
(3856, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:41:48.058206'),
(3857, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:41:54.256537'),
(3858, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:41:54.333838'),
(3859, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:42:09.226924'),
(3860, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:42:09.300803'),
(3861, 'trainee-details-tab', '\n        Trainees\n        ', 'training@gmail.com', '', '2021-01-11 10:42:28.041668'),
(3862, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:42:36.537024'),
(3863, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-11 10:42:38.383465'),
(3864, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:44:44.611245'),
(3865, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:44:44.695718'),
(3866, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:44:50.236835'),
(3867, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:46:01.717142'),
(3868, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:46:03.145221'),
(3869, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:46:10.229812'),
(3870, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:46:36.123595'),
(3871, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:46:36.198152'),
(3872, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:46:43.518152'),
(3873, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:46:43.598241'),
(3874, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:46:45.769766'),
(3875, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:46:47.144107'),
(3876, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:46:55.141603'),
(3877, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:46:56.471456'),
(3878, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:47:01.507874'),
(3879, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:47:02.746347'),
(3880, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:47:05.294120'),
(3881, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:47:54.064258'),
(3882, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:47:54.133715'),
(3883, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:47:55.844978'),
(3884, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:47:57.598247'),
(3885, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:47:58.680712'),
(3886, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:48:00.292410'),
(3887, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:48:01.375186'),
(3888, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:48:10.411500'),
(3889, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:48:11.861411'),
(3890, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 10:48:28.695259'),
(3891, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:48:32.776583'),
(3892, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:48:32.945451'),
(3893, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:48:34.312945'),
(3894, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 10:49:25.196416'),
(3895, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:49:27.373804'),
(3896, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:49:27.521570'),
(3897, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:49:28.686514'),
(3898, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:49:34.421598'),
(3899, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:49:35.819308'),
(3900, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:49:37.255922'),
(3901, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:49:38.956354'),
(3902, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:49:45.124141'),
(3903, 'evaluation-details-tab', '\n          Course Evaluation\n        ', 'training@gmail.com', '', '2021-01-11 10:49:47.461424'),
(3904, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 10:50:09.815173'),
(3905, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:50:22.205244'),
(3906, 'course-tab', '\n           Course List\n        ', 'training@gmail.com', '', '2021-01-11 10:50:22.272662'),
(3907, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:51:02.842614'),
(3908, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:51:03.102841'),
(3909, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-11 10:51:29.556523'),
(3910, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-11 10:51:29.786068'),
(3911, 'materials-details-tab', '\n           E-Materials\n        ', 'training@gmail.com', '', '2021-01-11 10:51:31.703315'),
(3912, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 10:56:11.240649'),
(3913, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 11:04:05.750934'),
(3914, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 11:05:43.373352'),
(3915, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 11:06:07.575921'),
(3916, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 11:06:21.639485'),
(3917, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-11 11:08:32.270050'),
(3918, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:10:06.773069'),
(3919, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:10:27.724118'),
(3920, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:10:28.287614'),
(3921, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:11:05.164303'),
(3922, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:16:17.951854'),
(3923, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:16:18.032173'),
(3924, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:18:20.760332'),
(3925, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:18:20.830451'),
(3926, 'all-post-vaccancy-link', '17 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:20:04.230305'),
(3927, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:20:04.448100'),
(3928, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:20:17.081917'),
(3929, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:26:40.054768'),
(3930, 'course-tab', '\n           Course List\n        ', 'carol@gmail.com', '', '2021-01-11 11:26:40.129485'),
(3931, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:29:12.505560'),
(3932, 'all-post-vaccancy-link', ' | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:29:23.177179'),
(3933, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:29:23.253161'),
(3934, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:29:50.122136'),
(3935, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:30:03.189233'),
(3936, 'all-post-vaccancy-link', ' | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:30:15.450151'),
(3937, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:30:15.508501'),
(3938, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:45:22.956739'),
(3939, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:45:28.445493'),
(3940, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:45:37.711708'),
(3941, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:45:41.323363'),
(3942, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:47:11.180655'),
(3943, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:47:14.625702'),
(3944, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:47:14.682178'),
(3945, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:47:59.281765'),
(3946, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:47:59.392547'),
(3947, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:48:03.388192'),
(3948, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:48:03.472026'),
(3949, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:48:06.544413'),
(3950, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:48:06.602964'),
(3951, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:49:11.525566'),
(3952, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:49:15.741512'),
(3953, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:49:15.800069'),
(3954, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 11:50:33.512125'),
(3955, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:50:33.605089'),
(3956, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 11:51:03.978730'),
(3957, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:51:40.156272'),
(3958, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:51:52.539990'),
(3959, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:03.563768'),
(3960, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:03.659831'),
(3961, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:08.597119'),
(3962, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:15.587577'),
(3963, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:30.284425'),
(3964, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:52:35.975553'),
(3965, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:53:16.914625'),
(3966, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:53:17.206447'),
(3967, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 11:53:20.712261'),
(3968, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 12:01:06.109139'),
(3969, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 12:01:06.202342'),
(3970, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 12:01:13.151912'),
(3971, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:24:31.431117');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(3972, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:33:06.683280'),
(3973, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:33:06.781332'),
(3974, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:36:24.096361'),
(3975, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:36:24.263730'),
(3976, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:36:31.288429'),
(3977, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-11 18:37:53.103559'),
(3978, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 18:38:04.453077'),
(3979, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 18:38:04.501770'),
(3980, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 18:38:23.612985'),
(3981, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 18:38:23.672008'),
(3982, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-11 18:38:26.787874'),
(3983, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-11 18:38:26.848676'),
(3984, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 05:53:59.007953'),
(3985, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 05:54:06.533476'),
(3986, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 05:54:06.871327'),
(3987, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 05:57:48.312801'),
(3988, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 05:57:48.373405'),
(3989, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:00:43.982352'),
(3990, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:00:49.254710'),
(3991, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:00:49.309644'),
(3992, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:00:58.405373'),
(3993, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:00:58.573869'),
(3994, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:01:14.061702'),
(3995, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:01:14.263165'),
(3996, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:04:58.886911'),
(3997, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:04:59.019089'),
(3998, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:05:44.520351'),
(3999, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:05:46.731083'),
(4000, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:15:11.350502'),
(4001, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:15:16.939902'),
(4002, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:15:17.037061'),
(4003, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:16:00.187427'),
(4004, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:16:11.137105'),
(4005, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:16:11.203160'),
(4006, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:18:30.951383'),
(4007, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:18:35.006825'),
(4008, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:18:35.084657'),
(4009, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:18:45.534115'),
(4010, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:20:44.381846'),
(4011, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:20:49.915135'),
(4012, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:20:50.005819'),
(4013, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:20:56.792145'),
(4014, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:21:46.560878'),
(4015, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:21:46.645924'),
(4016, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:22:28.866046'),
(4017, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:22:28.948802'),
(4018, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:22:55.567730'),
(4019, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:22:55.651291'),
(4020, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:24:11.860947'),
(4021, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:29:33.544546'),
(4022, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:29:45.189198'),
(4023, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:29:45.334962'),
(4024, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:29:55.944935'),
(4025, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:30:42.231638'),
(4026, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:30:51.006414'),
(4027, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:30:51.069779'),
(4028, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:30:59.673088'),
(4029, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:31:15.229315'),
(4030, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:31:18.272704'),
(4031, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:31:18.402201'),
(4032, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:41:54.570597'),
(4033, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:46:05.154914'),
(4034, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:46:05.288578'),
(4035, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:46:18.199108'),
(4036, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:46:34.136986'),
(4037, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:46:38.692796'),
(4038, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:46:38.790841'),
(4039, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:46:51.949765'),
(4040, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:47:09.131477'),
(4041, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:47:09.221333'),
(4042, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:47:31.254478'),
(4043, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:47:31.390009'),
(4044, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:47:47.462774'),
(4045, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:47:56.634318'),
(4046, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:48:06.643440'),
(4047, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:48:06.737309'),
(4048, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:48:22.030973'),
(4049, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:48:30.609152'),
(4050, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:49:07.160826'),
(4051, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:50:08.201803'),
(4052, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 06:50:55.627819'),
(4053, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 06:51:01.613107'),
(4054, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 06:51:01.737669'),
(4055, 'all-post-vaccancy-link', '15 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:52:42.001629'),
(4056, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:52:42.169802'),
(4057, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:55:01.957419'),
(4058, 'all-post-vaccancy-link', '15 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:55:15.848481'),
(4059, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:55:16.100887'),
(4060, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   7 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:55:34.448337'),
(4061, 'all-post-vaccancy-link', '\n                                          \n                                          My Job Post\n                                        8 | HRMIS ', 'cma@gmail.com', '', '2021-01-12 06:56:22.719103'),
(4062, 'all-post-vaccancy-link', '15 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:57:56.850800'),
(4063, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2021-01-12 06:57:56.959273'),
(4064, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 07:04:58.503923'),
(4065, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:05:01.009003'),
(4066, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:05:01.112924'),
(4067, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 07:12:51.900436'),
(4068, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:12:53.663459'),
(4069, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:12:53.799804'),
(4070, 'trainers-details-tab', '\n    Trainers\n        ', 'training@gmail.com', '', '2021-01-12 07:12:54.842333'),
(4071, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:13:12.710547'),
(4072, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:13:44.026773'),
(4073, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:13:44.097916'),
(4074, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:13:47.037701'),
(4075, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:14:15.233310'),
(4076, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:14:15.302953'),
(4077, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 07:18:51.438251'),
(4078, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:18:53.287712'),
(4079, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:18:53.401801'),
(4080, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:18:54.263063'),
(4081, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:19:04.013629'),
(4082, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:24:43.013761'),
(4083, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:25:06.016076'),
(4084, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:25:06.805607'),
(4085, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:25:48.562718'),
(4086, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:25:57.679056'),
(4087, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:25:58.964942'),
(4088, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 07:34:54.924235'),
(4089, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:35:01.842465'),
(4090, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:01.952322'),
(4091, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:03.693916'),
(4092, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:14.843885'),
(4093, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:16.493976'),
(4094, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:35:55.208871'),
(4095, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:55.328998'),
(4096, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:35:56.016050'),
(4097, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:23.165951'),
(4098, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:28.754895'),
(4099, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 07:37:38.271808'),
(4100, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:37:40.737993'),
(4101, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:40.880121'),
(4102, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:42.337482'),
(4103, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:49.099633'),
(4104, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:37:50.238642'),
(4105, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:43:03.613017'),
(4106, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:43:04.551704'),
(4107, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:43:57.486820'),
(4108, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:16.705088'),
(4109, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:18.872276'),
(4110, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:19.817763'),
(4111, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:44:23.043989'),
(4112, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:23.179077'),
(4113, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:24.225908'),
(4114, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:26.122881'),
(4115, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:44:27.736948'),
(4116, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:04.394108'),
(4117, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:45:11.258601'),
(4118, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:11.336125'),
(4119, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:12.319410'),
(4120, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:14.028366'),
(4121, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:15.591648'),
(4122, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 07:45:19.197394'),
(4123, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:19.301908'),
(4124, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 07:45:20.666514'),
(4125, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 08:03:43.667106'),
(4126, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 08:04:09.666417'),
(4127, 'all-post-vaccancy-link', '12 | HRMIS ', 'training@gmail.com', '', '2021-01-12 08:07:38.616820'),
(4128, 'job-details-tab', '\n           Course Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 08:07:38.715200'),
(4129, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 08:08:22.162147'),
(4130, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 08:08:22.293560'),
(4131, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 08:08:22.943653'),
(4132, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 08:09:20.980272'),
(4133, 'project-management-module', 'Project Management Module', 'training@gmail.com', '', '2021-01-12 08:24:26.235139'),
(4134, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 08:24:28.227424'),
(4135, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 08:24:28.380139'),
(4136, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 08:24:29.162659'),
(4137, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'training@gmail.com', '', '2021-01-12 08:26:58.301121'),
(4138, 'course-details-tab', '\n           Course Details\n        ', 'training@gmail.com', '', '2021-01-12 08:26:58.385129'),
(4139, 'trainers-details-tab', '\n    Quiz Details\n        ', 'training@gmail.com', '', '2021-01-12 08:26:59.656890'),
(4140, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 08:28:41.169703'),
(4141, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 08:28:44.130631'),
(4142, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:28:44.250070'),
(4143, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:28:45.266479'),
(4144, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:28:57.234807'),
(4145, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:30:14.993122'),
(4146, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 08:32:25.802657'),
(4147, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:32:25.972476'),
(4148, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:32:26.831420'),
(4149, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:32:38.922758'),
(4150, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 08:47:01.020060'),
(4151, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:47:01.106068'),
(4152, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:47:01.918537'),
(4153, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:47:12.085628'),
(4154, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:48:01.757501'),
(4155, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 08:55:01.510756'),
(4156, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:55:01.652363'),
(4157, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:55:02.407218'),
(4158, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 08:55:25.416546'),
(4159, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:55:25.505462'),
(4160, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 08:55:26.609459'),
(4161, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 08:55:41.212764'),
(4162, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:09:38.030736'),
(4163, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:09:46.601247'),
(4164, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:10:19.795203'),
(4165, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:16:54.929820'),
(4166, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:18:15.231185'),
(4167, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:18:34.962346'),
(4168, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:18:35.057437'),
(4169, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:18:36.087592'),
(4170, 'materials-details-tab', '\n           E-Materials\n        ', 'carol@gmail.com', '', '2021-01-12 09:18:38.448007'),
(4171, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:18:40.103674'),
(4172, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 09:18:46.922883'),
(4173, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:19:05.788052'),
(4174, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:19:05.858410'),
(4175, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7255 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:19:18.956409'),
(4176, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:19:19.034704'),
(4177, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:19:20.598450'),
(4178, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:19:23.200957'),
(4179, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:19:24.766209'),
(4180, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:20:02.114448'),
(4181, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:20:11.748402'),
(4182, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:25:07.720634'),
(4183, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:25:07.830786'),
(4184, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7255 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:25:25.188012'),
(4185, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:25:25.342553'),
(4186, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:25:26.546551'),
(4187, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:33:11.437056'),
(4188, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:33:11.577547'),
(4189, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:35:21.149746'),
(4190, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:35:21.200510'),
(4191, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:35:34.560169'),
(4192, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:35:47.786395'),
(4193, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:35:56.263558'),
(4194, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:35:56.328561'),
(4195, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7255 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:36:11.448694'),
(4196, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:36:11.573536'),
(4197, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:36:12.663456'),
(4198, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:37:07.379049'),
(4199, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:07.444960'),
(4200, 'all-post-vaccancy-link', '12 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:37:14.449712'),
(4201, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:14.506913'),
(4202, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:37:17.344999'),
(4203, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:17.433448'),
(4204, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:32.822375'),
(4205, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:41.339973'),
(4206, 'all-post-vaccancy-link', '11 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:37:49.208595'),
(4207, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:37:49.330980'),
(4208, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:37:59.913115'),
(4209, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:00.066736'),
(4210, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:02.270796'),
(4211, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:04.202658'),
(4212, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:38:10.112248'),
(4213, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:10.195610'),
(4214, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:38:24.490146'),
(4215, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:24.553107'),
(4216, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:38:28.618448'),
(4217, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:28.692003'),
(4218, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 09:38:39.887861'),
(4219, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:39.953912'),
(4220, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:41.529662'),
(4221, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 09:38:52.725846'),
(4222, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 09:53:44.508704'),
(4223, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 10:01:16.081820'),
(4224, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:01:36.850649'),
(4225, 'job-details-tab', '\n           Course Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:01:36.921786'),
(4226, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 10:03:07.703963'),
(4227, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 10:03:07.888768'),
(4228, 'stock-management-link', '7251 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:03:11.452841'),
(4229, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:11.587840'),
(4230, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:13.136580'),
(4231, 'all-post-vaccancy-link', '8 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:03:20.612070'),
(4232, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 10:03:27.749848'),
(4233, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:03:38.314388'),
(4234, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:38.380956'),
(4235, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:39.570083'),
(4236, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:40.874756'),
(4237, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:03:46.534393'),
(4238, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:46.682555'),
(4239, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:03:47.576654'),
(4240, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7255 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:04:21.006936'),
(4241, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:21.133561'),
(4242, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:22.361211'),
(4243, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:27.900995'),
(4244, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:28.579032'),
(4245, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7258 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:04:33.179782'),
(4246, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:33.244221'),
(4247, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:33.991088'),
(4248, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:35.412454'),
(4249, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7257 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 10:04:40.735838'),
(4250, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:40.795090'),
(4251, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:41.885457'),
(4252, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:04:59.208903'),
(4253, 'trainers-details-tab', '\n    Quiz Details\n        ', 'carol@gmail.com', '', '2021-01-12 10:05:01.434041'),
(4254, 'materials-details-tab', '\n           E-Materials\n        ', 'carol@gmail.com', '', '2021-01-12 10:05:02.452256'),
(4255, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-12 13:03:50.298269'),
(4256, 'all-post-vaccancy-link', '9 | HRMIS ', 'carol@gmail.com', '', '2021-01-12 13:04:07.437208'),
(4257, 'course-tab', '\n           Budget List\n        ', 'carol@gmail.com', '', '2021-01-12 13:04:07.914597'),
(4258, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 05:39:00.181621'),
(4259, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 05:43:47.642061'),
(4260, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:04:15.388122'),
(4261, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:04:24.512972'),
(4262, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-22 06:09:41.702755'),
(4263, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-22 06:09:42.466079'),
(4264, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:09:53.497414'),
(4265, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:09:53.578078'),
(4266, 'all-post-vaccancy-link', '8 | HRMIS ', 'carol@gmail.com', '', '2021-01-22 06:10:24.335480'),
(4267, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:10:31.845866'),
(4268, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:10:31.908927'),
(4269, 'stock-management-link', '7254 | HRMIS ', 'carol@gmail.com', '', '2021-01-22 06:10:37.139656'),
(4270, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-22 06:10:37.202237'),
(4271, 'statutory-details-tab', '\n           Statutory Details\n        ', 'carol@gmail.com', '', '2021-01-22 06:10:49.383432'),
(4272, 'employment-details-tab', '\n           Employement Terms\n        ', 'carol@gmail.com', '', '2021-01-22 06:10:52.073566'),
(4273, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 06:13:12.205187'),
(4274, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:15:16.492915'),
(4275, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:15:57.556480'),
(4276, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:16:41.735999'),
(4277, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:16:47.151002'),
(4278, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'carol@gmail.com', '', '2021-01-22 07:16:48.720938'),
(4279, 'course-details-tab', '\n           Course Details\n        ', 'carol@gmail.com', '', '2021-01-22 07:16:48.812953'),
(4280, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:16:52.587291'),
(4281, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:16:52.685006'),
(4282, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-22 07:18:56.437374'),
(4283, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-25 07:32:33.265861'),
(4284, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-25 07:34:00.744910'),
(4285, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-25 07:34:00.807481'),
(4286, 'stock-management-link', '7254 | HRMIS ', 'carol@gmail.com', '', '2021-01-25 07:34:10.153075'),
(4287, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-25 07:34:10.277139'),
(4288, 'employment-details-tab', '\n           Employement Terms\n        ', 'carol@gmail.com', '', '2021-01-25 07:34:14.411632'),
(4289, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-25 07:38:54.830828'),
(4290, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-01-25 07:41:37.962587'),
(4291, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-01-25 07:50:35.219451'),
(4292, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-01-25 07:59:02.307780'),
(4293, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-01-25 07:59:02.428782'),
(4294, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 06:46:24.445756'),
(4295, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 07:03:46.394362'),
(4296, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 07:03:46.522743'),
(4297, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 07:03:52.330854'),
(4298, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 07:06:24.058087'),
(4299, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 08:28:08.392732'),
(4300, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 08:51:48.838575'),
(4301, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:03:35.320988'),
(4302, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:05:21.780080'),
(4303, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:05:21.934696'),
(4304, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:05:49.941710'),
(4305, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:06:41.657928'),
(4306, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:06:41.701155'),
(4307, 'stock-management-link', '7254 | HRMIS ', 'carol@gmail.com', '', '2021-01-27 09:06:55.617808'),
(4308, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-27 09:06:55.668739'),
(4309, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2021-01-27 09:06:58.014285'),
(4310, 'statutory-details-tab', '\n           Statutory Details\n        ', 'carol@gmail.com', '', '2021-01-27 09:06:59.381835'),
(4311, 'employment-details-tab', '\n           Employement Terms\n        ', 'carol@gmail.com', '', '2021-01-27 09:07:00.890046'),
(4312, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-27 09:07:02.505332'),
(4313, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:07:13.039854'),
(4314, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:07:38.877474'),
(4315, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:07:38.935415'),
(4316, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:18:16.779928'),
(4317, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:23:20.747947'),
(4318, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:25:26.462342'),
(4319, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:25:30.105230'),
(4320, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:25:30.172043'),
(4321, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:47:40.153293'),
(4322, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:49:39.715967'),
(4323, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:52:23.824964'),
(4324, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 09:54:38.658724'),
(4325, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:06:26.879787'),
(4326, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:07:11.976021'),
(4327, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:37:58.461427'),
(4328, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:39:43.396871'),
(4329, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:39:49.825613'),
(4330, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:39:49.905497'),
(4331, 'stock-management-link', '7254 | HRMIS ', 'carol@gmail.com', '', '2021-01-27 10:39:53.028389'),
(4332, 'personal-details-tab', '\n           Personal Details\n        ', 'carol@gmail.com', '', '2021-01-27 10:39:53.077587'),
(4333, 'bank-details-tab', '\n      Bank Details\n        ', 'carol@gmail.com', '', '2021-01-27 10:39:55.262185'),
(4334, 'all-post-vaccancy-link', '8 | HRMIS ', 'carol@gmail.com', '', '2021-01-27 10:40:04.900707'),
(4335, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 10:40:28.069399'),
(4336, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 11:15:22.381456'),
(4337, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 11:17:44.574998'),
(4338, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 11:41:50.092272'),
(4339, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 11:43:15.668123'),
(4340, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-01-27 11:44:02.478624'),
(4341, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-01 06:18:20.690262'),
(4342, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-01 06:18:48.797271'),
(4343, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-01 06:19:22.764442'),
(4344, 'all-post-vaccancy-link', '15 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-01 10:37:47.591564'),
(4345, 'job-details-tab', '\n           Exam Details\n        ', 'pitarcheizin@gmail.com', '', '2021-02-01 10:37:47.729332'),
(4346, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-01 13:15:52.103844'),
(4347, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-02-02 18:31:02.477675'),
(4348, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-02 18:31:02.688741'),
(4349, 'user-profile-link', 'User Profile', 'carol@gmail.com', '', '2021-02-02 18:31:06.912419'),
(4350, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:08:28.303885'),
(4351, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:13:57.697786'),
(4352, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:14:02.566032'),
(4353, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:16:35.334767'),
(4354, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:19:06.770688'),
(4355, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:19:45.513314'),
(4356, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 09:20:29.487491'),
(4357, 'user-profile-link', 'User Profile', 'carol@gmail.com', '', '2021-02-04 12:30:30.253873'),
(4358, 'user-profile-link', 'User Profile', 'carol@gmail.com', '', '2021-02-04 17:35:43.007581'),
(4359, 'user-profile-link', 'User Profile', 'carol@gmail.com', '', '2021-02-04 17:37:11.405007'),
(4360, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:37:23.183627'),
(4361, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:51:02.537183'),
(4362, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:51:56.960621'),
(4363, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:56:39.167074'),
(4364, 'project-management-module', 'Project Management Module', 'personell@gmail.com', '', '2021-02-04 17:57:46.861273'),
(4365, 'project-management-module', 'Project Management Module', 'personell@gmail.com', '', '2021-02-04 17:57:47.076856'),
(4366, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:58:55.312329'),
(4367, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 17:59:49.585517'),
(4368, 'user-profile-link', 'User Profile', 'carol@gmail.com', '', '2021-02-04 18:01:02.015490'),
(4369, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 18:37:55.634507'),
(4370, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 18:39:15.029159'),
(4371, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 18:39:41.441649'),
(4372, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 18:39:54.708734');
INSERT INTO `page_requests` (`id`, `page_id`, `page_name`, `requested_by`, `user_type`, `time_requested`) VALUES
(4373, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:40:30.909108'),
(4374, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:44:20.461949'),
(4375, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:44:42.236992'),
(4376, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:45:21.631451'),
(4377, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:46:08.775655'),
(4378, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:57:15.014692'),
(4379, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:57:49.145416'),
(4380, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:58:12.527330'),
(4381, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:58:13.543484'),
(4382, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:58:32.467860'),
(4383, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:59:31.735730'),
(4384, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 18:59:52.838887'),
(4385, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:00:49.794546'),
(4386, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:01:20.610280'),
(4387, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:02:32.651831'),
(4388, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:03:46.722318'),
(4389, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:04:43.973186'),
(4390, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:05:08.777331'),
(4391, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:06:14.867207'),
(4392, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:06:33.026391'),
(4393, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:07:26.101898'),
(4394, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:13:33.597525'),
(4395, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:22:38.280001'),
(4396, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:22:52.815046'),
(4397, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:24:48.495277'),
(4398, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:26:31.757233'),
(4399, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:26:59.770544'),
(4400, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:27:39.464870'),
(4401, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:27:50.203664'),
(4402, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:42:16.238821'),
(4403, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:43:20.279673'),
(4404, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:43:27.935026'),
(4405, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:44:34.146606'),
(4406, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:44:42.312574'),
(4407, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:45:48.515878'),
(4408, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:46:11.074207'),
(4409, 'admin-user-management-link', '\n    \n    User Management\n  ', 'carol@gmail.com', '', '2021-02-04 19:46:19.037244'),
(4410, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 19:46:55.140135'),
(4411, 'admin-user-management-link', '\n    \n    User Management\n  ', 'pitarcheizin@gmail.com', '', '2021-02-04 19:47:08.808793'),
(4412, 'admin-user-management-link', '\n    \n    User Management\n  ', 'pitarcheizin@gmail.com', '', '2021-02-04 19:47:16.122162'),
(4413, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-04 19:47:22.993057'),
(4414, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 19:47:57.980227'),
(4415, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 19:47:58.044445'),
(4416, 'all-post-vaccancy-link', '8 | HRMIS ', 'carol@gmail.com', '', '2021-02-04 19:48:50.319000'),
(4417, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 20:13:07.741077'),
(4418, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 20:13:17.763042'),
(4419, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 20:14:42.012017'),
(4420, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-04 20:14:42.075573'),
(4421, 'all-post-vaccancy-link', '10 | HRMIS ', 'carol@gmail.com', '', '2021-02-04 20:22:33.059228'),
(4422, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:12:05.329414'),
(4423, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:12:05.689181'),
(4424, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:12:29.862485'),
(4425, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:12:29.964233'),
(4426, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:22:22.120940'),
(4427, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:22:27.744270'),
(4428, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:23:18.834318'),
(4429, 'project-management-module', 'Project Management Module', 'carol@gmail.com', '', '2021-02-05 06:24:59.019783'),
(4430, 'all-post-vaccancy-link', '8 | HRMIS ', 'carol@gmail.com', '', '2021-02-05 08:03:03.369945'),
(4431, 'all-post-vaccancy-link', '16 | HRMIS ', 'carol@gmail.com', '', '2021-02-05 08:04:50.094815'),
(4432, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-05 08:04:50.203316'),
(4433, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-02-06 15:32:01.714934'),
(4434, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-06 15:32:01.866208'),
(4435, 'all-post-vaccancy-link', '15 | HRMIS ', 'carol@gmail.com', '', '2021-02-06 15:32:23.686286'),
(4436, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-06 15:32:23.760940'),
(4437, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-16 09:18:05.461259'),
(4438, 'all-post-vaccancy-link', '8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-16 09:49:50.687917'),
(4439, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-17 18:14:49.478423'),
(4440, 'admin-user-management-link', '\n    \n    User Management\n  ', 'pitarcheizin@gmail.com', '', '2021-02-17 18:15:07.393151'),
(4441, 'end-product-management-link', '\n                     \n                     Academic Documents\n                   ', 'pkariuki@cma.or.ke', '', '2021-02-17 18:15:44.685297'),
(4442, 'admin-user-management-link', '\n    \n    User Management\n  ', 'pitarcheizin@gmail.com', '', '2021-02-17 21:24:12.401591'),
(4443, 'all-post-vaccancy-link', '26 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-18 08:05:25.300626'),
(4444, 'all-post-vaccancy-link', '26 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-18 08:23:34.779860'),
(4445, 'all-post-vaccancy-link', '8 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-18 08:24:14.586242'),
(4446, 'all-post-vaccancy-link', '26 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-18 08:40:13.520710'),
(4447, 'all-post-vaccancy-link', '26 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-18 08:50:18.186002'),
(4448, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'p3@gmail.com', '', '2021-02-18 10:06:25.134014'),
(4449, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'p3@gmail.com', '', '2021-02-18 10:48:02.838571'),
(4450, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'pkariuki@cma.or.ke', '', '2021-02-18 11:01:35.151671'),
(4451, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'pkariuki@cma.or.ke', '', '2021-02-18 11:27:38.798448'),
(4452, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'pkariuki@cma.or.ke', '', '2021-02-18 11:56:11.276101'),
(4453, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'pkariuki@cma.or.ke', '', '2021-02-18 11:56:17.222063'),
(4454, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-02-18 14:54:32.376582'),
(4455, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-18 16:01:09.715372'),
(4456, 'user-profile-link', 'User Profile', 'pitarcheizin@gmail.com', '', '2021-02-18 18:56:01.504962'),
(4457, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-19 16:29:23.587725'),
(4458, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-19 19:44:31.065529'),
(4459, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-19 19:45:35.121152'),
(4460, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-19 20:43:54.862595'),
(4461, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-22 05:41:17.901619'),
(4462, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-22 06:45:31.866299'),
(4463, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-02-22 06:45:37.166543'),
(4464, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-02-22 06:45:44.794742'),
(4465, 'stock-management-link', '7254 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-22 06:45:46.792611'),
(4466, 'personal-details-tab', '\n           Personal Details\n        ', 'pitarcheizin@gmail.com', '', '2021-02-22 06:45:46.866377'),
(4467, 'all-post-vaccancy-link', '27 | HRMIS ', 'pitarcheizin@gmail.com', '', '2021-02-22 07:48:20.962582'),
(4468, 'end-product-management-link', '\n                     \n                     Academic Documents\n                   ', 'bonface@gmail.com', '', '2021-02-22 08:14:45.918371'),
(4469, 'end-product-management-link', '\n                     \n                     Academic Documents\n                   ', 'bonface@gmail.com', '', '2021-02-22 08:15:10.290409'),
(4470, 'end-product-management-link', '\n                     \n                     Academic Documents\n                   ', 'bonface@gmail.com', '', '2021-02-22 08:20:08.456256'),
(4471, 'all-post-vaccancy-link', '18 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:19:43.112276'),
(4472, 'job-details-tab', '\n           Exam Details\n        ', 'bonface@gmail.com', '', '2021-02-22 09:19:43.225458'),
(4473, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:19:53.682292'),
(4474, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:19:59.549272'),
(4475, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 09:21:07.465705'),
(4476, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 09:21:07.538011'),
(4477, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 09:21:14.344772'),
(4478, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 09:21:23.137229'),
(4479, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 09:21:35.512890'),
(4480, 'all-post-vaccancy-link', '18 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:21:56.545529'),
(4481, 'job-details-tab', '\n           Exam Details\n        ', 'bonface@gmail.com', '', '2021-02-22 09:21:56.602703'),
(4482, 'stock-management-link', '\n                     \n                     Vaccancies Available\n                   27 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:26:55.675983'),
(4483, 'all-post-vaccancy-link', '18 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 09:51:47.916431'),
(4484, 'job-details-tab', '\n           Exam Details\n        ', 'bonface@gmail.com', '', '2021-02-22 09:51:48.061892'),
(4485, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 10:57:35.226633'),
(4486, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 10:57:35.282434'),
(4487, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 10:58:13.078300'),
(4488, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 10:58:13.192133'),
(4489, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 10:58:23.479358'),
(4490, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 10:58:23.677991'),
(4491, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 10:59:25.212024'),
(4492, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 10:59:25.399540'),
(4493, 'all-post-vaccancy-link', '18 | HRMIS ', 'carol@gmail.com', '', '2021-02-22 11:06:05.487583'),
(4494, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 11:06:05.785861'),
(4495, 'job-details-tab', '\n           Job Test Details\n        ', 'carol@gmail.com', '', '2021-02-22 11:06:12.666296'),
(4496, 'all-post-vaccancy-link', '18 | HRMIS ', 'bonface@gmail.com', '', '2021-02-22 18:35:17.707373'),
(4497, 'job-details-tab', '\n           Exam Details\n        ', 'bonface@gmail.com', '', '2021-02-22 18:35:17.767846'),
(4498, 'all-post-vaccancy-link', '18 | HRMIS ', 'bonface@gmail.com', '', '2021-02-23 07:27:43.305793'),
(4499, 'job-details-tab', '\n           Exam Details\n        ', 'bonface@gmail.com', '', '2021-02-23 07:27:43.661221'),
(4500, 'superuser-dashboard-link', '\n                   \n                   \n                     Dashboard\n                   \n                 ', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:34:09.512599'),
(4501, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:35:22.321986'),
(4502, 'reports-link', 'Reports all_requests', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:35:27.589791'),
(4503, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:35:50.369017'),
(4504, 'reports-link', 'Reports pending_test', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:35:53.820082'),
(4505, 'reports-link', '\n              \n              \n                Reports\n              \n            ', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:36:09.261588'),
(4506, 'reports-link', 'Reports personal_info', 'lucasoduor97@GMAIL.COM', '', '2021-04-09 15:36:12.170124'),
(4507, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-07-09 11:26:16.453094'),
(4508, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2021-07-09 11:27:42.761378'),
(4509, 'project-management-module', 'Project Management Module', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:03.097493'),
(4510, 'training-link', '\n                 \n                 \n                  Trainee List\n                 \n               7259 | HRMIS ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:10.520318'),
(4511, 'course-details-tab', '\n           Course Details\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:10.799209'),
(4512, 'trainers-details-tab', '\n    Quiz Details\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:16.151826'),
(4513, 'materials-details-tab', '\n           E-Materials\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:18.906704'),
(4514, 'course-details-tab', '\n           Course Details\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:20.947007'),
(4515, 'all-post-vaccancy-link', '12 | HRMIS ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:37.297884'),
(4516, 'course-tab', '\n           Budget List\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:37.586578'),
(4517, 'course-tab', '\n           Budget List\n        ', 'pitarcheizin@gmail.com', '', '2022-08-29 05:57:59.708091');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` int(6) NOT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `payment_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Mpesa', '2020-05-07 17:07:49', 'PETER KARIUKI'),
(2, 'Bank', '2020-05-07 17:07:49', 'PETER KARIUKI'),
(3, 'Cash', '2020-05-07 17:08:30', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(6) NOT NULL,
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
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(6) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `qualification` (
  `id` int(100) NOT NULL,
  `rank_name` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `request_application`
--

CREATE TABLE `request_application` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `post_name` varchar(100) DEFAULT NULL,
  `special_info` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'sent',
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_application`
--

INSERT INTO `request_application` (`id`, `reference_no`, `post_name`, `special_info`, `status`, `time_recorded`, `recorded_by`) VALUES
(22, '7240', 'Finance manager', 'Apply for the post', 'sent', '2020-12-13 17:42:00', 'Potential Staffing');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_rating`
--

CREATE TABLE `scheme_rating` (
  `id` int(6) NOT NULL,
  `scheme_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme_rating`
--

INSERT INTO `scheme_rating` (`id`, `scheme_name`, `time_recorded`, `recorded_by`) VALUES
(1, 'Pass', '2020-12-12 10:23:46', 'PETER KARIUKI'),
(2, 'Average ', '2020-12-12 10:23:46', 'PETER KARIUKI'),
(3, 'Failed', '2020-12-12 10:24:02', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `selected_job_skills`
--

CREATE TABLE `selected_job_skills` (
  `id` int(6) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `skill_name` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selected_job_skills`
--

INSERT INTO `selected_job_skills` (`id`, `email`, `skill_name`, `time_recorded`) VALUES
(36, 'pitarcheizin@gmail.com', 'PHP', '2020-12-12 13:28:46'),
(37, 'pkariuki@cma.or.ke', 'Development', '2021-02-18 18:56:46'),
(38, 'bonface@gmail.com', 'MYSQL', '2021-02-22 08:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `sell_module`
--

CREATE TABLE `sell_module` (
  `id` int(6) NOT NULL,
  `module_name` varchar(500) DEFAULT NULL,
  `access_level` varchar(500) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell_module`
--

INSERT INTO `sell_module` (`id`, `module_name`, `access_level`, `time_recorded`, `recorded_by`) VALUES
(1, 'RECRUITMENT MANAGEMENT', 'RECRUITMENT_MANAGEMENT', '2020-12-16 09:06:10', 'PETER KARIUKI'),
(2, 'PERSONELL MANAGEMENT', 'PERSONELL_MANAGEMENT', '2020-12-16 09:06:10', 'PETER KARUKI'),
(3, 'TRAINING MANAGEMENT', 'TRAINING_MANAGEMENT', '2020-12-16 09:07:29', 'PETER KARIUKI'),
(4, 'LEAVE MANAGEMENT ', 'LEAVE_MANAGEMENT ', '2020-12-16 09:07:29', 'PETER KARIUKI'),
(5, 'PERFORMANCE MANAGEMENT', 'PERFORMANCE_MANAGEMENT', '2020-12-16 09:09:02', 'PETER KARIUKI'),
(6, 'PAYROLL MANAGEMENT', 'PAYROLL_MANAGEMENT', '2020-12-16 09:09:02', 'PETER KARIUKI');

-- --------------------------------------------------------

--
-- Table structure for table `sign_in_logs`
--

CREATE TABLE `sign_in_logs` (
  `id` int(6) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) NOT NULL DEFAULT 'default',
  `time_signed_in` varchar(50) DEFAULT NULL,
  `time_signed_out` varchar(50) DEFAULT NULL,
  `date_recorded` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_in_logs`
--

INSERT INTO `sign_in_logs` (`id`, `email`, `name`, `ip_address`, `user_type`, `time_signed_in`, `time_signed_out`, `date_recorded`) VALUES
(329, 'carol@gmail.com', '', '::1', 'default', '2020/12/12 15:24:18', '2020/12/12 15:24:24', '2020/12/12'),
(330, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/12 15:26:24', '2020/12/12 15:29:26', '2020/12/12'),
(331, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/12 15:26:24', '2020/12/12 15:29:26', '2020/12/12'),
(332, 'carol@gmail.com', '', '::1', 'default', '2020/12/12 15:30:42', '2020/12/12 15:31:44', '2020/12/12'),
(333, 'carol@gmail.com', '', '::1', 'default', '2020/12/12 15:32:03', NULL, '2020/12/12'),
(334, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/12 16:00:21', '2020/12/12 16:00:56', '2020/12/12'),
(335, 'pitarcheizin@gmail.com', '', '196.201.218.83', 'default', '2020/12/12 16:25:56', '2020/12/12 16:26:05', '2020/12/12'),
(336, 'carol@gmail.com', '', '196.201.218.83', 'default', '2020/12/12 16:26:24', '2020/12/12 16:28:34', '2020/12/12'),
(337, 'pitarcheizin@gmail.com', '', '196.201.218.83', 'default', '2020/12/12 16:28:39', NULL, '2020/12/12'),
(338, 'carol@gmail.com', '', '41.90.7.20', 'default', '2020/12/12 21:55:10', NULL, '2020/12/12'),
(339, 'carol@gmail.com', '', '102.68.77.126', 'default', '2020/12/12 23:49:12', NULL, '2020/12/12'),
(340, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 11:58:37', '2020/12/13 11:58:45', '2020/12/13'),
(341, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 11:58:49', '2020/12/13 11:58:56', '2020/12/13'),
(342, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 11:59:03', '2020/12/13 12:01:08', '2020/12/13'),
(343, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 12:01:53', '2020/12/13 12:03:03', '2020/12/13'),
(344, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 12:03:16', '2020/12/13 12:03:31', '2020/12/13'),
(345, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 17:03:46', NULL, '2020/12/13'),
(346, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 17:24:48', '2020/12/13 17:31:27', '2020/12/13'),
(347, 'pitarcheizin@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 17:44:39', '2020/12/13 17:54:31', '2020/12/13'),
(348, 'carol@gmail.com', '', '102.68.77.126', 'default', '2020/12/13 18:24:45', NULL, '2020/12/13'),
(349, 'info@potentialstaffing.com', '', '196.201.218.136', 'default', '2020/12/13 20:12:38', '2020/12/13 20:15:01', '2020/12/13'),
(350, 'caro88njoroge@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:20:34', '2020/12/13 20:27:44', '2020/12/13'),
(351, 'carol@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:27:59', '2020/12/13 20:30:54', '2020/12/13'),
(352, 'caro88njoroge@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:31:09', '2020/12/13 20:32:05', '2020/12/13'),
(353, 'info@potentialstaffing.com', '', '196.201.218.136', 'default', '2020/12/13 20:32:21', '2020/12/13 20:33:58', '2020/12/13'),
(354, 'caro88njoroge@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:34:11', '2020/12/13 20:35:29', '2020/12/13'),
(355, 'carol@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:35:41', '2020/12/13 20:36:53', '2020/12/13'),
(356, 'caro88njoroge@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:37:13', '2020/12/13 20:38:30', '2020/12/13'),
(357, 'caro88njoroge@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:38:56', '2020/12/13 20:39:24', '2020/12/13'),
(358, 'info@potentialstaffing.com', '', '196.201.218.136', 'default', '2020/12/13 20:39:40', '2020/12/13 20:42:10', '2020/12/13'),
(359, 'pitarcheizin@gmail.com', '', '196.201.218.136', 'default', '2020/12/13 20:42:24', '2020/12/13 20:44:16', '2020/12/13'),
(360, 'info@potentialstaffing.com', '', '196.201.218.136', 'default', '2020/12/13 20:44:30', NULL, '2020/12/13'),
(361, 'cma@gmail.com', '', '::1', 'default', '2020/12/14 10:36:25', '2020/12/14 10:39:26', '2020/12/14'),
(362, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/14 10:39:34', '2020/12/14 10:39:59', '2020/12/14'),
(363, 'cma@gmail.com', '', '::1', 'default', '2020/12/14 10:40:04', '2020/12/14 10:40:26', '2020/12/14'),
(364, 'carol@gmail.com', '', '::1', 'default', '2020/12/14 10:40:35', '2020/12/14 10:41:24', '2020/12/14'),
(365, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/14 10:41:33', '2020/12/14 10:41:55', '2020/12/14'),
(366, 'carol@gmail.com', '', '::1', 'default', '2020/12/14 10:42:08', '2020/12/14 10:42:37', '2020/12/14'),
(367, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/14 10:42:47', '2020/12/15 08:10:57', '2020/12/14'),
(368, 'carol@gmail.com', '', '::1', 'default', '2020/12/15 08:11:38', '2020/12/16 11:48:23', '2020/12/15'),
(369, 'carol@gmail.com', '', '::1', 'default', '2020/12/16 12:43:29', '2020/12/16 13:03:21', '2020/12/16'),
(370, 'recruitment@gmail.com', '', '::1', 'default', '2020/12/16 13:03:42', '2020/12/16 13:04:17', '2020/12/16'),
(371, 'carol@gmail.com', '', '::1', 'default', '2020/12/16 14:14:16', '2020/12/17 08:18:33', '2020/12/16'),
(372, 'personell@gmail.com', '', '::1', 'default', '2020/12/17 08:19:58', '2020/12/17 10:19:18', '2020/12/17'),
(373, 'carol@gmail.com', '', '::1', 'default', '2020/12/17 10:19:30', '2020/12/17 10:24:59', '2020/12/17'),
(374, 'personell@gmail.com', '', '::1', 'default', '2020/12/17 10:25:05', '2020/12/17 10:26:24', '2020/12/17'),
(375, 'p3@gmail.com', '', '::1', 'default', '2020/12/17 10:26:35', '2020/12/17 10:29:52', '2020/12/17'),
(376, 'personell@gmail.com', '', '::1', 'default', '2020/12/17 10:30:04', '2020/12/17 16:10:32', '2020/12/17'),
(377, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/21 08:47:32', '2020/12/21 09:05:16', '2020/12/21'),
(378, 'carol@gmail.com', '', '::1', 'default', '2020/12/21 09:05:26', '2020/12/21 09:06:01', '2020/12/21'),
(379, 'personell@gmail.com', '', '::1', 'default', '2020/12/21 09:06:17', '2020/12/21 12:18:08', '2020/12/21'),
(380, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/21 12:57:23', '2020/12/21 12:57:31', '2020/12/21'),
(381, 'carol@gmail.com', '', '::1', 'default', '2020/12/21 12:57:39', '2020/12/21 12:59:00', '2020/12/21'),
(382, 'personell@gmail.com', '', '::1', 'default', '2020/12/21 12:59:05', '2020/12/21 17:00:45', '2020/12/21'),
(383, 'personell@gmail.com', '', '::1', 'default', '2020/12/21 17:08:51', '2020/12/22 09:26:47', '2020/12/21'),
(384, 'personell@gmail.com', '', '::1', 'default', '2020/12/22 09:40:17', '2020/12/22 09:48:38', '2020/12/22'),
(385, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/22 09:48:47', '2020/12/22 10:08:38', '2020/12/22'),
(386, 'personell@gmail.com', '', '::1', 'default', '2020/12/22 10:08:48', '2020/12/30 13:12:23', '2020/12/22'),
(387, 'pitarcheizin@gmail.com', '', '::1', 'default', '2020/12/30 13:13:02', '2020/12/31 07:43:19', '2020/12/30'),
(388, 'carol@gmail.com', '', '::1', 'default', '2020/12/31 07:44:00', '2020/12/31 07:45:43', '2020/12/31'),
(389, 'training@gmail.com', '', '::1', 'default', '2020/12/31 07:45:53', '2020/12/31 07:46:04', '2020/12/31'),
(390, 'personell@gmail.com', '', '::1', 'default', '2020/12/31 07:46:12', '2020/12/31 07:55:32', '2020/12/31'),
(391, 'training@gmail.com', '', '::1', 'default', '2020/12/31 07:55:46', '2020/12/31 07:55:52', '2020/12/31'),
(392, 'personell@gmail.com', '', '::1', 'default', '2020/12/31 07:56:01', '2020/12/31 07:56:16', '2020/12/31'),
(393, 'p3@gmail.com', '', '::1', 'default', '2020/12/31 07:56:22', '2020/12/31 07:56:38', '2020/12/31'),
(394, 'training@gmail.com', '', '::1', 'default', '2020/12/31 07:56:50', '2020/12/31 08:10:20', '2020/12/31'),
(395, 'personell@gmail.com', '', '::1', 'default', '2020/12/31 08:10:29', '2020/12/31 09:43:36', '2020/12/31'),
(396, 'training@gmail.com', '', '::1', 'default', '2020/12/31 09:43:54', '2020/12/31 13:34:31', '2020/12/31'),
(397, 'training@gmail.com', '', '::1', 'default', '2020/12/31 13:34:40', NULL, '2020/12/31'),
(398, 'personell@gmail.com', '', '::1', 'default', '2021/01/01 18:30:40', '2021/01/01 18:31:57', '2021/01/01'),
(399, 'training@gmail.com', '', '::1', 'default', '2021/01/01 18:32:08', '2021/01/01 20:21:03', '2021/01/01'),
(400, 'trainer@gmail.com', '', '::1', 'default', '2021/01/01 20:21:17', '2021/01/04 11:11:10', '2021/01/01'),
(401, 'training@gmail.com', '', '::1', 'default', '2021/01/04 11:35:40', NULL, '2021/01/04'),
(402, 'training@gmail.com', '', '::1', 'default', '2021/01/04 16:32:46', NULL, '2021/01/04'),
(403, 'training@gmail.com', '', '::1', 'default', '2021/01/04 17:19:24', NULL, '2021/01/04'),
(404, 'training@gmail.com', '', '::1', 'default', '2021/01/04 17:38:01', '2021/01/04 20:19:36', '2021/01/04'),
(405, 'personell@gmail.com', '', '::1', 'default', '2021/01/04 20:19:47', '2021/01/04 20:23:26', '2021/01/04'),
(406, 'carol@gmail.com', '', '::1', 'default', '2021/01/04 20:23:33', '2021/01/04 20:24:23', '2021/01/04'),
(407, 'personell@gmail.com', '', '::1', 'default', '2021/01/04 20:24:30', '2021/01/04 20:27:41', '2021/01/04'),
(408, 'carol@gmail.com', '', '::1', 'default', '2021/01/04 20:27:48', '2021/01/04 20:33:49', '2021/01/04'),
(409, 'personell@gmail.com', '', '::1', 'default', '2021/01/04 20:33:56', '2021/01/04 20:37:17', '2021/01/04'),
(410, 'carol@gmail.com', '', '::1', 'default', '2021/01/04 20:37:24', '2021/01/04 21:23:08', '2021/01/04'),
(411, 'carol@gmail.com', '', '::1', 'default', '2021/01/04 21:23:22', '2021/01/04 21:24:05', '2021/01/04'),
(412, 'carol@gmail.com', '', '::1', 'default', '2021/01/04 21:24:33', '2021/01/05 00:54:19', '2021/01/04'),
(413, 'training@gmail.com', '', '::1', 'default', '2021/01/08 11:17:18', '2021/01/08 12:18:54', '2021/01/08'),
(414, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/01/08 12:19:08', '2021/01/08 12:45:41', '2021/01/08'),
(415, 'training@gmail.com', '', '::1', 'default', '2021/01/08 12:45:52', '2021/01/08 13:36:52', '2021/01/08'),
(416, 'carol@gmail.com', '', '::1', 'default', '2021/01/08 13:37:01', '2021/01/08 13:39:59', '2021/01/08'),
(417, 'training@gmail.com', '', '::1', 'default', '2021/01/08 13:40:06', '2021/01/08 13:46:15', '2021/01/08'),
(418, 'carol@gmail.com', '', '::1', 'default', '2021/01/08 13:46:24', '2021/01/08 13:57:20', '2021/01/08'),
(419, 'training@gmail.com', '', '::1', 'default', '2021/01/08 13:57:30', '2021/01/09 11:12:28', '2021/01/08'),
(420, 'personell@gmail.com', '', '::1', 'default', '2021/01/09 11:12:42', '2021/01/09 11:14:43', '2021/01/09'),
(421, 'training@gmail.com', '', '::1', 'default', '2021/01/09 11:14:54', '2021/01/09 11:16:06', '2021/01/09'),
(422, 'trainer@gmail.com', '', '::1', 'default', '2021/01/09 11:16:15', '2021/01/09 11:16:52', '2021/01/09'),
(423, 'training@gmail.com', '', '::1', 'default', '2021/01/09 11:17:08', '2021/01/09 12:12:44', '2021/01/09'),
(424, 'carol@gmail.com', '', '::1', 'default', '2021/01/09 12:12:53', '2021/01/11 10:26:16', '2021/01/09'),
(425, 'carol@gmail.com', '', '::1', 'default', '2021/01/11 10:26:26', '2021/01/11 10:34:36', '2021/01/11'),
(426, 'carol@gmail.com', '', '::1', 'default', '2021/01/11 10:34:47', '2021/01/11 10:40:37', '2021/01/11'),
(427, 'training@gmail.com', '', '::1', 'default', '2021/01/11 10:40:47', '2021/01/11 14:09:28', '2021/01/11'),
(428, 'carol@gmail.com', '', '::1', 'default', '2021/01/11 14:10:00', NULL, '2021/01/11'),
(429, 'carol@gmail.com', '', '::1', 'default', '2021/01/11 21:24:27', '2021/01/12 09:52:19', '2021/01/11'),
(430, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/01/12 09:52:35', '2021/01/12 09:55:56', '2021/01/12'),
(431, 'cma@gmail.com', '', '::1', 'default', '2021/01/12 09:56:06', '2021/01/12 09:56:46', '2021/01/12'),
(432, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/01/12 09:57:00', '2021/01/12 10:04:41', '2021/01/12'),
(433, 'training@gmail.com', '', '::1', 'default', '2021/01/12 10:04:55', '2021/01/12 11:27:04', '2021/01/12'),
(434, 'dan@gmail.com', '', '::1', 'default', '2021/01/12 11:27:17', '2021/01/12 11:27:25', '2021/01/12'),
(435, 'carol@gmail.com', '', '::1', 'default', '2021/01/12 11:27:33', NULL, '2021/01/12'),
(436, 'carol@gmail.com', '', '::1', 'default', '2021/01/22 08:38:53', '2021/01/25 10:41:15', '2021/01/22'),
(437, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/01/25 10:41:32', NULL, '2021/01/25'),
(438, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/01/27 09:41:03', '2021/01/27 09:41:20', '2021/01/27'),
(439, 'carol@gmail.com', '', '::1', 'default', '2021/01/27 09:41:30', '2021/01/29 08:40:27', '2021/01/27'),
(440, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/01 09:17:52', '2021/02/01 09:18:05', '2021/02/01'),
(441, 'carol@gmail.com', '', '::1', 'default', '2021/02/01 09:18:16', '2021/02/01 10:21:05', '2021/02/01'),
(442, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/01 13:37:37', '2021/02/01 13:37:52', '2021/02/01'),
(443, 'carol@gmail.com', '', '::1', 'default', '2021/02/01 16:02:24', '2021/02/01 16:17:30', '2021/02/01'),
(444, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/01 17:20:32', '2021/02/01 17:20:39', '2021/02/01'),
(445, 'carol@gmail.com', '', '::1', 'default', '2021/02/02 21:30:48', '2021/02/02 21:31:11', '2021/02/02'),
(446, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/03 11:23:20', NULL, '2021/02/03'),
(447, 'carol@gmail.com', '', '::1', 'default', '2021/02/03 11:23:37', '2021/02/03 11:34:48', '2021/02/03'),
(448, 'carol@gmail.com', '', '::1', 'default', '2021/02/03 15:56:18', '2021/02/04 09:19:27', '2021/02/03'),
(449, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 12:02:35', '2021/02/04 20:57:23', '2021/02/04'),
(450, 'personell@gmail.com', '', '::1', 'default', '2021/02/04 20:57:31', '2021/02/04 20:58:26', '2021/02/04'),
(451, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 20:58:47', '2021/02/04 21:34:23', '2021/02/04'),
(452, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/04 21:37:49', '2021/02/04 21:40:14', '2021/02/04'),
(453, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 21:40:26', '2021/02/04 22:41:35', '2021/02/04'),
(454, 'p3@gmail.com', '', '::1', 'default', '2021/02/04 22:41:55', '2021/02/04 22:42:00', '2021/02/04'),
(455, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 22:42:09', '2021/02/04 22:42:20', '2021/02/04'),
(456, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 22:43:13', '2021/02/04 22:43:32', '2021/02/04'),
(457, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 22:44:28', '2021/02/04 22:46:32', '2021/02/04'),
(458, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/04 22:46:47', '2021/02/04 22:47:46', '2021/02/04'),
(459, 'carol@gmail.com', '', '::1', 'default', '2021/02/04 22:47:54', '2021/02/05 10:15:27', '2021/02/04'),
(460, 'carol@gmail.com', '', '::1', 'default', '2021/02/05 10:28:15', '2021/02/05 10:37:30', '2021/02/05'),
(461, 'carol@gmail.com', '', '::1', 'default', '2021/02/05 10:40:34', '2021/02/05 10:42:53', '2021/02/05'),
(462, 'carol@gmail.com', '', '::1', 'default', '2021/02/05 10:58:12', '2021/02/05 10:58:20', '2021/02/05'),
(463, 'carol@gmail.com', '', '::1', 'default', '2021/02/05 11:00:17', '2021/02/05 11:16:33', '2021/02/05'),
(464, 'carol@gmail.com', '', '::1', 'default', '2021/02/05 11:49:59', '2021/02/06 18:02:50', '2021/02/05'),
(465, 'carol@gmail.com', '', '::1', 'default', '2021/02/06 18:31:39', NULL, '2021/02/06'),
(466, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 08:21:35', '2021/02/15 08:21:55', '2021/02/15'),
(467, 'carol@gmail.com', '', '::1', 'default', '2021/02/15 08:22:03', '2021/02/15 08:30:39', '2021/02/15'),
(468, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 08:30:51', '2021/02/15 08:31:23', '2021/02/15'),
(469, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 08:31:37', '2021/02/15 11:46:26', '2021/02/15'),
(470, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 11:47:29', '2021/02/15 11:52:48', '2021/02/15'),
(471, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 11:56:09', '2021/02/15 12:01:47', '2021/02/15'),
(472, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 14:47:32', '2021/02/15 14:49:57', '2021/02/15'),
(473, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 14:55:07', NULL, '2021/02/15'),
(474, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 15:41:29', NULL, '2021/02/15'),
(475, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 15:41:33', NULL, '2021/02/15'),
(476, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 17:21:59', '2021/02/15 17:25:59', '2021/02/15'),
(477, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/15 17:34:25', NULL, '2021/02/15'),
(478, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 11:12:32', NULL, '2021/02/16'),
(479, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 11:45:32', '2021/02/16 11:48:14', '2021/02/16'),
(480, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 11:49:26', '2021/02/16 11:57:45', '2021/02/16'),
(481, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 11:58:16', NULL, '2021/02/16'),
(482, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 12:08:47', NULL, '2021/02/16'),
(483, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 12:14:54', NULL, '2021/02/16'),
(484, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 12:31:01', '2021/02/16 12:41:37', '2021/02/16'),
(485, 'dan@gmail.com', '', '::1', 'default', '2021/02/16 12:41:56', '2021/02/16 12:42:13', '2021/02/16'),
(486, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/16 12:42:24', '2021/02/17 17:01:31', '2021/02/16'),
(487, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/17 17:35:46', '2021/02/17 21:15:24', '2021/02/17'),
(488, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/17 21:15:34', '2021/02/17 21:22:23', '2021/02/17'),
(489, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/17 21:22:31', '2021/02/18 00:13:30', '2021/02/17'),
(490, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 00:24:00', '2021/02/18 00:35:32', '2021/02/18'),
(491, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 00:54:04', NULL, '2021/02/18'),
(492, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 01:03:53', '2021/02/18 01:08:04', '2021/02/18'),
(493, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 08:47:32', '2021/02/18 13:04:52', '2021/02/18'),
(494, 'p3@gmail.com', '', '::1', 'default', '2021/02/18 13:05:36', '2021/02/18 13:15:29', '2021/02/18'),
(495, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 13:17:51', '2021/02/18 13:19:03', '2021/02/18'),
(496, 'p3@gmail.com', '', '::1', 'default', '2021/02/18 13:23:58', '2021/02/18 13:29:14', '2021/02/18'),
(497, 'p3@gmail.com', '', '::1', 'default', '2021/02/18 13:36:23', '2021/02/18 13:38:24', '2021/02/18'),
(498, 'p3@gmail.com', '', '::1', 'default', '2021/02/18 13:39:00', '2021/02/18 13:59:01', '2021/02/18'),
(499, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/18 13:59:24', NULL, '2021/02/18'),
(500, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/18 17:43:23', NULL, '2021/02/18'),
(501, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 17:46:57', '2021/02/18 17:54:42', '2021/02/18'),
(502, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/18 17:54:50', '2021/02/18 18:14:07', '2021/02/18'),
(503, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 18:14:17', '2021/02/18 19:20:55', '2021/02/18'),
(504, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/18 19:21:15', '2021/02/18 19:35:59', '2021/02/18'),
(505, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 19:36:59', '2021/02/18 21:56:05', '2021/02/18'),
(506, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/18 21:56:13', '2021/02/18 22:07:08', '2021/02/18'),
(507, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 22:07:20', '2021/02/18 22:18:16', '2021/02/18'),
(508, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/18 22:20:44', '2021/02/19 22:16:00', '2021/02/18'),
(509, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/19 22:18:14', '2021/02/19 22:19:37', '2021/02/19'),
(510, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/19 22:19:53', '2021/02/22 09:04:15', '2021/02/19'),
(511, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/22 09:04:25', NULL, '2021/02/22'),
(512, 'p3@gmail.com', '', '::1', 'default', '2021/02/22 09:06:12', '2021/02/22 09:08:05', '2021/02/22'),
(513, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/22 09:08:15', '2021/02/22 11:06:50', '2021/02/22'),
(514, 'bonface@gmail.com', '', '::1', 'default', '2021/02/22 11:08:55', '2021/02/22 12:20:08', '2021/02/22'),
(515, 'carol@gmail.com', '', '::1', 'default', '2021/02/22 12:20:16', '2021/02/22 12:21:41', '2021/02/22'),
(516, 'bonface@gmail.com', '', '::1', 'default', '2021/02/22 12:21:51', '2021/02/22 13:57:14', '2021/02/22'),
(517, 'carol@gmail.com', '', '::1', 'default', '2021/02/22 13:57:27', '2021/02/22 21:12:29', '2021/02/22'),
(518, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/22 21:12:44', NULL, '2021/02/22'),
(519, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/22 21:33:55', '2021/02/22 21:34:33', '2021/02/22'),
(520, 'bonface@gmail.com', '', '::1', 'default', '2021/02/22 21:34:39', NULL, '2021/02/22'),
(521, 'pitarcheizin@gmail.com', '', '::1', 'default', '2021/02/23 12:10:17', '2021/02/23 12:56:51', '2021/02/23'),
(522, 'pkariuki@cma.or.ke', '', '::1', 'default', '2021/02/23 20:36:45', NULL, '2021/02/23'),
(523, 'lucasoduor97@GMAIL.COM', '', '102.167.249.119', 'default', '2021/04/09 18:33:43', NULL, '2021/04/09'),
(524, 'pitarcheizin@gmail.com', '', '41.139.160.21', 'default', '2021/07/09 14:26:09', NULL, '2021/07/09'),
(525, 'pitarcheizin@gmail.com', '', '41.203.222.101', 'default', '2022/08/29 08:56:54', NULL, '2022/08/29');

-- --------------------------------------------------------

--
-- Table structure for table `single_product`
--

CREATE TABLE `single_product` (
  `id` int(6) NOT NULL,
  `end_product_ref` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `unit_price` varchar(100) DEFAULT NULL,
  `qtt` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `order_total` varchar(100) DEFAULT NULL,
  `stock_remaining` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_recorded` varchar(100) DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `staff_users` (
  `id` int(100) NOT NULL,
  `fName` varchar(100) DEFAULT NULL,
  `auth_service` varchar(50) DEFAULT NULL,
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
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_users`
--

INSERT INTO `staff_users` (`id`, `fName`, `auth_service`, `lName`, `dob`, `gender`, `Email`, `location`, `status`, `access_level`, `contact`, `nationality`, `highestQualification`, `currentPosition`, `companyName`, `experience`, `emp_photo`, `password`, `date_recorded`, `time_recorded`) VALUES
(7240, 'PETER', NULL, 'KARIUKI', '29-Feb-1992', 'Male', 'pitarcheizin@gmail.com', 'Juja', 'active', 'admin', '0710257750', 'Kenyan', 'Masters', 'Software Developer', 'CMA', '3 Years', 'J7SN23R.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '24-Nov-2020', '2020-11-24 09:12:45'),
(7241, 'Caroline', NULL, 'Njoroge', '16-Apr-1992', 'Female', 'carol@gmail.com', 'Nairobi', 'active', 'admin', '071025789', 'Kenyan', 'Degree', 'Finance', 'Potential Staffing', '5 years', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '24-Nov-2020', '2020-11-24 09:33:21'),
(7247, 'Njoroge', NULL, 'Caroline', '09-Dec-2020', 'Select type', 'caro88njoroge@gmail.com', 'Nairobi', 'active', 'job-seeker', '0706429377', 'Kenyan', 'Degree', 'Accountant', 'Fairmount', '4', 'user.jpg', '827ccb0eea8a706c4c34a16891f84e7b', '13-Dec-2020', '2020-12-13 17:17:24'),
(7248, 'CMA', NULL, 'Energy', '25-Dec-2020', '', 'cma@gmail.com', 'Upperhill', 'active', 'recruiter', '0710257750', 'Kenya', '51-100', 'Direct Employment', 'Online Search', 'https://cma.or.ke', 'user.jpg', '7ea4e7fcdc6aff2777bd594a3754e02a', '14-Dec-2020', '2020-12-14 07:36:15'),
(7250, 'wisegen', NULL, 'Energy', '23-Dec-2020', '', 'recruitment@gmail.com', 'juja', 'active', 'RECRUITMENT_MANAGEMENT', '534543', 'Kenya', '26-50', 'Direct Employment', 'Online Search', '534543', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '16-Dec-2020', '2020-12-16 09:56:59'),
(7251, 'potential', NULL, 'IT & Telecoms', '15-Dec-2020', '', 'personell@gmail.com', 'Nairobi', 'active', 'PERSONELL_MANAGEMENT', '07931239213', 'Kenya', '26-50', 'Direct Employment', 'Online Search', 'https:dsadjjd.com', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 05:18:19'),
(7252, 'pits', NULL, 'Kar', '22-Dec-2020', 'Male', 'p2@gmail.com', 'juja', 'deactivated', 'employee', '09789879', 'KENYA', NULL, NULL, 'potential', NULL, 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 07:06:54'),
(7253, 'Petre ', NULL, 'CHEGE', '14-Dec-2020', 'Male', 'p3@gmail.com', 'juja', 'active', 'job-seeker', '4324234', 'Kenya', NULL, NULL, 'potential', NULL, 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 07:09:21'),
(7254, 'rightd', NULL, 'persona', '15-Dec-2020', 'Female', 'p4@gmail.com', 'nbi', 'active', 'employee', '08312312', 'kenya', 'Christian', 'Kiambu', 'potential', 'Kikuyu', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 10:23:25'),
(7255, 'Training', NULL, 'Energy', '30-Dec-2020', '', 'training@gmail.com', 'nbi', 'active', 'TRAINING_MANAGEMENT', '0710235432', 'Kenya', '26-50', 'Direct Employment', 'Online Search', 'ffdsf', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '31-Dec-2020', '2020-12-31 04:45:34'),
(7257, 'Trainee', NULL, 'train', '23-Dec-2020', 'Male', 't@gmail.com', 'ke', 'active', 'trainee', '07123213312', 'ke', 'christian', 'kenya', 'Training', 'kikuyu', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '31-Dec-2020', '2020-12-31 16:02:14'),
(7258, 'PETER', NULL, 'KARIUKI', '27-Jan-2021', 'Select type', 'trainer@gmail.com', 'ke', 'active', 'trainer', '4354354', 'jkh', 'chr', 'nbi', 'Training', 'kik', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '01-Jan-2121', '2021-01-01 17:19:46'),
(7259, 'Dan', NULL, 'Kar', '19-Jan-2021', 'Male', 'dan@gmail.com', 'Thika', 'active', 'trainee', '074564324', 'Kenyan', 'Christian', 'Kenya', 'Training', 'Kikuyu', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '11-Jan-2121', '2021-01-11 09:21:19'),
(7266, 'PETER', NULL, 'KARIUKI', '04-Feb-2021', 'Male', 'pitarcheizin4343@gmail.com', 'wer', 'active', 'admin', 'werre', 'Kenya', 'rewr', 'wer', 'rew', 'rwe', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '04-Feb-2121', '2021-02-04 08:00:03'),
(7271, 'PETER', NULL, 'KARIUKI', '12-Feb-2020', '', 'pkariuki@cma.or.ke', 'juja', 'active', 'job-seeker', '079856756', 'Tanzania', 'Masters', 'Dev', 'wisegen', '5 yrs', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '15-Feb-2121', '2021-02-15 10:00:17'),
(7273, 'Potential staffing', NULL, '', '24-Feb-2021', '', 'info@potentialstaffing.com', 'Westlands', 'active', 'recruiter', '0706234567', 'Kenya', '', '', '', 'https://potentialstffing.com', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '18-Feb-2121', '2021-02-18 06:10:05'),
(7274, 'Kariuki', NULL, 'Boniface', '16-May-1988', 'Male', 'bonface@gmail.com', 'Kerugoya', 'active', 'job-seeker', '0714347524', 'Kenyan', 'Degree', 'ICT Support', 'Joy Millers', '2 Years', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '22-Feb-2121', '2021-02-22 08:08:20'),
(7275, 'ODONGO', NULL, 'LUCAS ODUOR', '05/09/1997', 'Male', 'lucasoduor97@GMAIL.COM', 'Nairobi', 'active', 'job-seeker', '0707071230', 'Kenyan', 'Diploma', 'Seeking for a Job', 'N/A', 'N/A', 'user.jpg', 'e98ca8528a996c9b8d05747996e8255e', '09-Apr-2121', '2021-04-09 15:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `staff_users2`
--

CREATE TABLE `staff_users2` (
  `id` int(100) NOT NULL,
  `cName` varchar(100) DEFAULT NULL,
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
  `emp_photo` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `password` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_users2`
--

INSERT INTO `staff_users2` (`id`, `cName`, `fName`, `lName`, `dob`, `gender`, `Email`, `location`, `status`, `access_level`, `contact`, `nationality`, `emp_photo`, `password`, `date_recorded`, `time_recorded`) VALUES
(7251, 'potential', 'potential', 'personell', '15-Dec-2020', 'Male', 'p2@gmail.com', 'juja', 'active', 'employee', '355345', 'kenya', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 06:28:43'),
(7252, 'potential', 'Pits', 'Kars', '18-Dec-2020', 'Male', 'p3@gmail.com', 'NBI', 'active', 'employee', 'RWEREW', 'kENYA', 'user.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '17-Dec-2020', '2020-12-17 06:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `statutory_details`
--

CREATE TABLE `statutory_details` (
  `id` int(6) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `id_number` varchar(100) DEFAULT NULL,
  `pin_number` varchar(100) DEFAULT NULL,
  `nhif_number` varchar(100) DEFAULT NULL,
  `nssf_number` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statutory_details`
--

INSERT INTO `statutory_details` (`id`, `reference_no`, `id_number`, `pin_number`, `nhif_number`, `nssf_number`, `time_recorded`) VALUES
(1, '7253', '29575809', '4324324', '432424234', '4234324', '2020-12-21 08:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `stock_approvers`
--

CREATE TABLE `stock_approvers` (
  `id` int(6) NOT NULL,
  `stock_approver` varchar(100) DEFAULT NULL,
  `stock_id` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `stock_item` (
  `id` int(6) NOT NULL,
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
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(23, 10, 'flat Bar ', '  3/4\'\'x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:28:46', 'BENCO MBUGUA'),
(24, 11, 'GI Sheet', '8x4x1mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:30:37', 'BENCO MBUGUA'),
(25, 12, 'MIld steel Dia', '3/8\'\'', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '25-Aug-2020', '2020-08-25 09:35:50', 'BENCO MBUGUA'),
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
(39, 26, 'Flat Bar', '1\'\'x3mm', 'Engineering', 'Maisha Steel  Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 11:04:37', 'BENCO MBUGUA'),
(40, 27, 'Expanded Mesh', 'Expanded Mesh', 'Engineering', 'Clerb Enterprises Ltd', 'pending_approval', NULL, NULL, '28-Aug-2020', '2020-08-28 11:08:58', 'BENCO MBUGUA'),
(41, 28, 'MS Plate', '8x4x1.2mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:22:09', 'BENCO MBUGUA'),
(42, 29, 'Flat Bar', '1x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:23:46', 'BENCO MBUGUA'),
(43, 30, 'Flat Bar', '3/4x3mm', 'Engineering', 'Nail N Steels Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:24:33', 'BENCO MBUGUA'),
(44, 31, 'SHS', '150x150x4mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:26:05', 'BENCO MBUGUA'),
(45, 32, 'RHS', '100X50X3MM', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:34:00', 'BENCO MBUGUA'),
(46, 33, 'Round Bar', '16mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:35:00', 'BENCO MBUGUA'),
(47, 34, 'Z Purlin', '5x2x2mm', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:35:51', 'BENCO MBUGUA'),
(48, 35, 'Tee', '1\'\'', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 06:37:20', 'BENCO MBUGUA'),
(49, 36, 'Angleline', '50x50x3mm', 'Engineering', 'Maisha Steel  Ltd', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:03:29', 'BENCO MBUGUA'),
(50, 37, 'Bolt & Nuts', '8mmx1\'\'', 'Engineering', 'Orbital Fastner', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:08:13', 'BENCO MBUGUA'),
(51, 38, 'Screws', 'Roofing 1\'\'', 'Engineering', 'P carlos hardware', 'pending_approval', NULL, NULL, '17-Sep-2020', '2020-09-17 07:09:20', 'BENCO MBUGUA'),
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
(64, 51, 'Agnleline ', '2\'\'X3/16', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:52:54', 'BENCO MBUGUA'),
(65, 52, 'Flat bar', '11/2x1/8', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:53:33', 'BENCO MBUGUA'),
(66, 53, 'Zed bar', '1\'\'', 'Engineering', 'Monross Hardware', 'pending_approval', NULL, NULL, '07-Oct-2020', '2020-10-07 07:54:15', 'BENCO MBUGUA'),
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
(84, 68, 'Slit Cutter', '7\'\'', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:45:23', 'BENCO MBUGUA'),
(85, 69, 'Pure Copper Rod', '25mmx1ft', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '29-Oct-2020', '2020-10-29 06:47:08', 'BENCO MBUGUA'),
(86, 70, 'SS Pipe G304', '50x1.5mm', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:05:17', 'BENCO MBUGUA'),
(87, 71, 'MS Plate', '8x4x1', 'Engineering', 'Central Auto & Hardware Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:06:56', 'BENCO MBUGUA'),
(88, 72, 'Gas', 'Argon High Purity', 'Engineering', 'Noble Gases', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:08:48', 'BENCO MBUGUA'),
(89, 73, 'SS Bend', 'G304 2\'\'', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:11:01', 'BENCO MBUGUA'),
(90, 74, 'SS Round Tube', 'Dia 1.5x1.5mmx5.8m G304', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:12:08', 'BENCO MBUGUA'),
(91, 75, 'SS Rosette cover', 'Cover 1.5 CC04', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:13:13', 'BENCO MBUGUA'),
(92, 76, 'SS Glass clamp', 'GC01', 'Engineering', 'Kens Metal Industries Ltd', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:14:01', 'BENCO MBUGUA'),
(93, 77, 'Wax Bar', 'Wax Bar', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:16:40', 'BENCO MBUGUA'),
(94, 78, 'Flap Disc', '120 & 80', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:17:29', 'BENCO MBUGUA'),
(95, 79, 'Slit cutter', 'Makita  4\'\'', 'Engineering', 'Fujjo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:18:24', 'BENCO MBUGUA'),
(96, 80, 'Flap wheel', '120 &80', 'Engineering', 'Jumbo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:24:35', 'BENCO MBUGUA'),
(97, 81, 'Sisal Cloth Disc', 'HD 7\'\'', 'Engineering', 'Jumbo Hardware', 'pending_approval', NULL, NULL, '04-Nov-2020', '2020-11-04 09:43:53', 'BENCO MBUGUA');

-- --------------------------------------------------------

--
-- Table structure for table `training_course_details`
--

CREATE TABLE `training_course_details` (
  `id` int(100) NOT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'ongoing',
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_course_details`
--

INSERT INTO `training_course_details` (`id`, `reference_no`, `institution`, `course_name`, `start_date`, `end_date`, `duration`, `description`, `status`, `date_recorded`, `time_recorded`) VALUES
(2, '7257', 'UON', 'MSC ITM', '28-Sep-2018', '30-Dec-2020', '824', 'Masters degree', 'completed', '31-Dec-2020', '2020-12-31 17:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `update_views`
--

CREATE TABLE `update_views` (
  `id` int(6) NOT NULL,
  `job_id` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `recorded_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_service` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `time_recorded` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `name`, `auth_service`, `role`, `time_recorded`) VALUES
(1, 'marojillo@gmail.com', 'Abdalla Maro', 'Google', 'admin', '2021-01-07 14:46:26.988867'),
(2, 'pitarcheizin@gmail.com', 'Peter Chege', 'Google', 'admin', '2021-01-07 18:48:26.620919'),
(4, 'pchege@students.uonbi.ac.ke', 'KARIUKI PETER CHEGE', 'Google', 'user', '2021-01-11 06:59:25.310504'),
(5, 'cmmpkenya@gmail.com', 'cmmp kenya', 'Google', 'user', '2021-01-28 05:21:46.801969');

-- --------------------------------------------------------

--
-- Table structure for table `whole_budget`
--

CREATE TABLE `whole_budget` (
  `id` int(6) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `budget_amount` varchar(100) DEFAULT NULL,
  `date_recorded` varchar(100) DEFAULT NULL,
  `time_recorded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `whole_budget`
--

INSERT INTO `whole_budget` (`id`, `subject`, `budget_amount`, `date_recorded`, `time_recorded`) VALUES
(2, 'Financial Management', '50000', '08-Jan-2121', '0000-00-00 00:00:00'),
(3, 'Financial Management', '70000', '08-Jan-2121', '0000-00-00 00:00:00'),
(4, 'Financial Management', '90000', '08-Jan-2121', '0000-00-00 00:00:00'),
(5, 'Cyber security', '120000', '08-Jan-2121', '0000-00-00 00:00:00'),
(6, 'CCNA Networking', '70000', '11-Jan-2121', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `work_type`
--

CREATE TABLE `work_type` (
  `id` int(100) NOT NULL,
  `work_type` varchar(50) DEFAULT NULL,
  `time_recorded` timestamp NULL DEFAULT NULL,
  `recorded_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_type`
--

INSERT INTO `work_type` (`id`, `work_type`, `time_recorded`, `recorded_by`) VALUES
(1, 'Contract', '2020-06-19 11:52:04', 'PETER KARIUKI'),
(2, 'Permanent', '2020-06-19 11:52:05', 'PETER KARIUKI'),
(3, 'Internship', '2020-06-19 11:52:06', 'PETER KARIUKI'),
(4, 'Graduate', '2020-06-19 11:52:07', 'PETER KARIUKI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`email`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `all_evidence_document`
--
ALTER TABLE `all_evidence_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answered_response_test`
--
ALTER TABLE `answered_response_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answered_test`
--
ALTER TABLE `answered_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answered_test2`
--
ALTER TABLE `answered_test2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_status`
--
ALTER TABLE `application_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_status_details`
--
ALTER TABLE `application_status_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_test`
--
ALTER TABLE `assigned_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `award_type`
--
ALTER TABLE `award_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cal_calendars`
--
ALTER TABLE `cal_calendars`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cal_categories`
--
ALTER TABLE `cal_categories`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `cal_events`
--
ALTER TABLE `cal_events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `cal_groups`
--
ALTER TABLE `cal_groups`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `cal_logins`
--
ALTER TABLE `cal_logins`
  ADD PRIMARY KEY (`uid`,`series`);

--
-- Indexes for table `cal_occurrences`
--
ALTER TABLE `cal_occurrences`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `eid` (`eid`);

--
-- Indexes for table `cal_permissions`
--
ALTER TABLE `cal_permissions`
  ADD UNIQUE KEY `cid` (`cid`,`uid`);

--
-- Indexes for table `cal_users`
--
ALTER TABLE `cal_users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `company_type`
--
ALTER TABLE `company_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_materials`
--
ALTER TABLE `course_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_end_delivery`
--
ALTER TABLE `customer_end_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_sector`
--
ALTER TABLE `customer_sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_approvers`
--
ALTER TABLE `delivery_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `directorate_id` (`directorate_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `departments_module`
--
ALTER TABLE `departments_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dependants_details`
--
ALTER TABLE `dependants_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education_history`
--
ALTER TABLE `education_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_no`
--
ALTER TABLE `employee_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_details_module`
--
ALTER TABLE `employment_details_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_type`
--
ALTER TABLE `employment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `end_product`
--
ALTER TABLE `end_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_level`
--
ALTER TABLE `experience_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_comments`
--
ALTER TABLE `general_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hear_about_us`
--
ALTER TABLE `hear_about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `individual_budget`
--
ALTER TABLE `individual_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_grade`
--
ALTER TABLE `job_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_level`
--
ALTER TABLE `job_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posting`
--
ALTER TABLE `job_posting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DepartmentCode` (`exp_level`);

--
-- Indexes for table `job_skills`
--
ALTER TABLE `job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_test`
--
ALTER TABLE `job_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_titles`
--
ALTER TABLE `job_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_details`
--
ALTER TABLE `leave_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_requests`
--
ALTER TABLE `page_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requested_by` (`requested_by`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualification`
--
ALTER TABLE `qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_application`
--
ALTER TABLE `request_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme_rating`
--
ALTER TABLE `scheme_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_job_skills`
--
ALTER TABLE `selected_job_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_module`
--
ALTER TABLE `sell_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_in_logs`
--
ALTER TABLE `sign_in_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `single_product`
--
ALTER TABLE `single_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_users`
--
ALTER TABLE `staff_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DepartmentCode` (`location`);

--
-- Indexes for table `staff_users2`
--
ALTER TABLE `staff_users2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DepartmentCode` (`location`);

--
-- Indexes for table `statutory_details`
--
ALTER TABLE `statutory_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_approvers`
--
ALTER TABLE `stock_approvers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_item`
--
ALTER TABLE `stock_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_course_details`
--
ALTER TABLE `training_course_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_views`
--
ALTER TABLE `update_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `whole_budget`
--
ALTER TABLE `whole_budget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_type`
--
ALTER TABLE `work_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1167;

--
-- AUTO_INCREMENT for table `all_evidence_document`
--
ALTER TABLE `all_evidence_document`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `answered_response_test`
--
ALTER TABLE `answered_response_test`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `answered_test`
--
ALTER TABLE `answered_test`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `answered_test2`
--
ALTER TABLE `answered_test2`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_status`
--
ALTER TABLE `application_status`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `application_status_details`
--
ALTER TABLE `application_status_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `applied_jobs`
--
ALTER TABLE `applied_jobs`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `assigned_test`
--
ALTER TABLE `assigned_test`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `award_type`
--
ALTER TABLE `award_type`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cal_calendars`
--
ALTER TABLE `cal_calendars`
  MODIFY `cid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cal_categories`
--
ALTER TABLE `cal_categories`
  MODIFY `catid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cal_events`
--
ALTER TABLE `cal_events`
  MODIFY `eid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cal_groups`
--
ALTER TABLE `cal_groups`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cal_occurrences`
--
ALTER TABLE `cal_occurrences`
  MODIFY `oid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cal_users`
--
ALTER TABLE `cal_users`
  MODIFY `uid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_type`
--
ALTER TABLE `company_type`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course_materials`
--
ALTER TABLE `course_materials`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer_end_delivery`
--
ALTER TABLE `customer_end_delivery`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_sector`
--
ALTER TABLE `customer_sector`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `delivery_approvers`
--
ALTER TABLE `delivery_approvers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `departments_module`
--
ALTER TABLE `departments_module`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dependants_details`
--
ALTER TABLE `dependants_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `education_history`
--
ALTER TABLE `education_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_no`
--
ALTER TABLE `employee_no`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employment_details_module`
--
ALTER TABLE `employment_details_module`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employment_type`
--
ALTER TABLE `employment_type`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `end_product`
--
ALTER TABLE `end_product`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `experience_level`
--
ALTER TABLE `experience_level`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `general_comments`
--
ALTER TABLE `general_comments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hear_about_us`
--
ALTER TABLE `hear_about_us`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `individual_budget`
--
ALTER TABLE `individual_budget`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_grade`
--
ALTER TABLE `job_grade`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_level`
--
ALTER TABLE `job_level`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_posting`
--
ALTER TABLE `job_posting`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `job_skills`
--
ALTER TABLE `job_skills`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_test`
--
ALTER TABLE `job_test`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `job_titles`
--
ALTER TABLE `job_titles`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `leave_details`
--
ALTER TABLE `leave_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mpesa_payments`
--
ALTER TABLE `mpesa_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_requests`
--
ALTER TABLE `page_requests`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4518;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qualification`
--
ALTER TABLE `qualification`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `request_application`
--
ALTER TABLE `request_application`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `scheme_rating`
--
ALTER TABLE `scheme_rating`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `selected_job_skills`
--
ALTER TABLE `selected_job_skills`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sell_module`
--
ALTER TABLE `sell_module`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sign_in_logs`
--
ALTER TABLE `sign_in_logs`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `single_product`
--
ALTER TABLE `single_product`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `staff_users`
--
ALTER TABLE `staff_users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7276;

--
-- AUTO_INCREMENT for table `staff_users2`
--
ALTER TABLE `staff_users2`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7253;

--
-- AUTO_INCREMENT for table `statutory_details`
--
ALTER TABLE `statutory_details`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stock_approvers`
--
ALTER TABLE `stock_approvers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `stock_item`
--
ALTER TABLE `stock_item`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `training_course_details`
--
ALTER TABLE `training_course_details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `update_views`
--
ALTER TABLE `update_views`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `whole_budget`
--
ALTER TABLE `whole_budget`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `work_type`
--
ALTER TABLE `work_type`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
