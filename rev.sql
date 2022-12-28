-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 04:42 PM
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
-- Database: `assignments`
--
CREATE DATABASE IF NOT EXISTS `assignments` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignments`;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_table`
--

CREATE TABLE `assignment_table` (
  `ID` int(11) NOT NULL,
  `Description` varchar(120) NOT NULL,
  `courseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment_table`
--

INSERT INTO `assignment_table` (`ID`, `Description`, `courseID`) VALUES
(17, 'Midterm', 9),
(18, 'Token authorization test', 11),
(19, 'desc', 10),
(20, 'asas', 10);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`) VALUES
(9, 'C++'),
(10, 'Data Analytics'),
(11, 'NFT'),
(12, 'Javascript'),
(13, 'Python');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment_table`
--
ALTER TABLE `assignment_table`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment_table`
--
ALTER TABLE `assignment_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment_table`
--
ALTER TABLE `assignment_table`
  ADD CONSTRAINT `courseID` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`);
--
-- Database: `bedsonline`
--
CREATE DATABASE IF NOT EXISTS `bedsonline` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bedsonline`;
--
-- Database: `class_management`
--
CREATE DATABASE IF NOT EXISTS `class_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `class_management`;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_code` int(11) DEFAULT NULL,
  `class_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_room` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_week` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_professor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_completions`
--

CREATE TABLE `credit_completions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `major_mandatory` int(11) DEFAULT NULL,
  `major_selective` int(11) DEFAULT NULL,
  `elective` int(11) DEFAULT NULL,
  `selective_mandatory` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `currently_registered` int(11) DEFAULT NULL,
  `needed` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fa_questions`
--

CREATE TABLE `fa_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `q_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `q_answer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_16_113210_create_notices_table', 2),
(6, '2022_08_19_115740_create_courses_table', 3),
(7, '2022_09_14_092051_create_classes_table', 3),
(8, '2022_09_14_094059_create_online_learning_materials_table', 4),
(9, '2022_09_15_123251_create_timetabels_table', 5),
(10, '2022_09_15_125717_create_announcements_table', 5),
(11, '2022_09_17_085927_create_fa_questions_table', 6),
(12, '2022_09_17_093319_create_credit_completions_table', 7),
(13, '2022_09_17_100216_create_grades_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notifier_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `notifier_id`, `title`, `description`, `hit`, `created_at`, `updated_at`) VALUES
(1, 0, 'Beginning of the 2022-2nd semester, schedule of academic year.', 'Students who struggled to\r\ncomplete their course registration within preliminary dates, may complete the\r\nupcoming course correction period (2022.08.29--09.02). We provide several\r\nclasses with English-speaking instructors.\r\n\r\n \r\n\r\n²  Here is information ', 0, '2022-08-16 12:27:55', NULL),
(2, NULL, '2022-yilgi o\'quv dars jadvali, kuzgi semester boshlanishi', 'Students who struggled to\r\ncomplete their course registration within preliminary dates, may complete the\r\nupcoming course correction period (2022.08.29--09.02). We provide several\r\nclasses with English-speaking instructors.\r\n\r\n \r\n\r\n²  Here is information below about English\r\nclasses.\r\n\r\n \r\n\r\n1.      \r\nImage\r\nProcessing.\r\n\r\n2.      \r\nWeb\r\nDB programming.\r\n\r\n3.      \r\nData\r\nCommunication.\r\n\r\n4.      \r\nDatabase.\r\n\r\n5.      \r\nJAVA.\r\n\r\n6.      \r\nMobile\r\nWeb.\r\n\r\n7.      \r\nC\r\nLanguage.\r\n\r\n8.      \r\nMachine\r\nLearning Programming.\r\n\r\n9.      \r\nOperating\r\nSystem.\r\n\r\n10.  \r\nAnimation.', NULL, '2022-08-16 12:29:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `online_learning_materials`
--

CREATE TABLE `online_learning_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `learning_period` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_learning_material` int(11) DEFAULT NULL,
  `cretificates` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timetabels`
--

CREATE TABLE `timetabels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_image` varchar(233) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 'Hasan', 'hasan@gmail.com', NULL, '$2y$10$.ZM4WQZ3.97Ss7eFYwwR0u81ttBrPiU5nr6hAJck/ruxZ5JZfVZLq', 'lkxIG5HYXIukpdkBBLhn6oQSfF99WYOIOWWXu2RN7aKePAxDlo5N7wOT1SD5', '2022-08-14 22:46:36', '2022-08-16 02:28:08', 'upload/admin/1741316987870792.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_completions`
--
ALTER TABLE `credit_completions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fa_questions`
--
ALTER TABLE `fa_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_learning_materials`
--
ALTER TABLE `online_learning_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `timetabels`
--
ALTER TABLE `timetabels`
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
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_completions`
--
ALTER TABLE `credit_completions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fa_questions`
--
ALTER TABLE `fa_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `online_learning_materials`
--
ALTER TABLE `online_learning_materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timetabels`
--
ALTER TABLE `timetabels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `company`
--
CREATE DATABASE IF NOT EXISTS `company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `company`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(40) DEFAULT NULL,
  `mgr_id` int(11) DEFAULT NULL,
  `mgr_start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `mgr_id`, `mgr_start_date`) VALUES
(1, 'Corporate', 100, '2006-02-09'),
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13'),
(4, 'Bufallo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_supplier`
--

CREATE TABLE `branch_supplier` (
  `branch_id` int(11) NOT NULL,
  `supplier_name` varchar(40) NOT NULL,
  `supply_type` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch_supplier`
--

INSERT INTO `branch_supplier` (`branch_id`, `supplier_name`, `supply_type`) VALUES
(2, 'Hammer Mill', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Patriot Paper', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(40) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_name`, `branch_id`) VALUES
(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daly Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `birth_day` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `super_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `first_name`, `last_name`, `birth_day`, `sex`, `salary`, `super_id`, `branch_id`) VALUES
(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1),
(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, 2),
(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2),
(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2),
(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2),
(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, 3),
(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3),
(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- --------------------------------------------------------

--
-- Table structure for table `trigger_test`
--

CREATE TABLE `trigger_test` (
  `messaga` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `works_with`
--

CREATE TABLE `works_with` (
  `emp_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `total_sales` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `works_with`
--

INSERT INTO `works_with` (`emp_id`, `client_id`, `total_sales`) VALUES
(102, 401, 267000),
(102, 406, 15000),
(105, 400, 55000),
(105, 404, 33000),
(105, 406, 130000),
(107, 403, 5000),
(107, 405, 26000),
(108, 402, 22500),
(108, 403, 12000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`),
  ADD KEY `mgr_id` (`mgr_id`);

--
-- Indexes for table `branch_supplier`
--
ALTER TABLE `branch_supplier`
  ADD PRIMARY KEY (`branch_id`,`supplier_name`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `super_id` (`super_id`);

--
-- Indexes for table `works_with`
--
ALTER TABLE `works_with`
  ADD PRIMARY KEY (`emp_id`,`client_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch`
--
ALTER TABLE `branch`
  ADD CONSTRAINT `branch_ibfk_1` FOREIGN KEY (`mgr_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL;

--
-- Constraints for table `branch_supplier`
--
ALTER TABLE `branch_supplier`
  ADD CONSTRAINT `branch_supplier_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE CASCADE;

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`branch_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`super_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL;

--
-- Constraints for table `works_with`
--
ALTER TABLE `works_with`
  ADD CONSTRAINT `works_with_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `works_with_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE;
--
-- Database: `encyclopedia`
--
CREATE DATABASE IF NOT EXISTS `encyclopedia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `encyclopedia`;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `album_name` varchar(50) DEFAULT NULL,
  `released` varchar(25) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  `label` varchar(20) DEFAULT NULL,
  `singer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `album_name`, `released`, `genre`, `label`, `singer_id`) VALUES
(1, 'Born to Run', 'August 25, 1975', 'Rock and roll', 'Columbia', 1),
(2, 'Purple Rain', 'June 25, 1984', 'Pop, R&B, Rock', 'Warner Bros', 2),
(3, 'Born in the USA', 'June 4, 1984', 'Pop, Rock and roll', 'Columbia', 1),
(4, 'Madonna', 'July 27, 1983', 'Dance-pop, post-disco', 'Warner Bros', 3),
(5, 'True Blue', 'June 30, 1986', 'Dance-pop', 'Warner Bros', 3),
(6, 'Elvis', 'October 19, 1956', 'Rock and roll, Rhythm and Blue', 'RCA Victor', 4),
(7, 'Sing o\"the Times', 'March 30, 1987', 'Pop, R&B, Rock, Funk', 'Paisley Park, Warner', 2),
(8, 'G.I.Blues', 'October 1, 1960', 'Rock and roll, Pop', 'RCA Victor', 4);

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(11) NOT NULL,
  `continent_name` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `Capital` varchar(20) DEFAULT NULL,
  `Population` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `continent_name`, `name`, `Capital`, `Population`) VALUES
(2, 'France', 'France', 'Paris', '6700'),
(3, 'North America', 'USA', 'Washington D.C.', '325.365.189'),
(4, 'Europe', 'Germany', 'Berlin', '82.3499.400'),
(5, 'Asia', 'Japan', 'Tokyo', '126.672.000'),
(6, 'Africa', 'Egypt', 'Cairo', '96.308.900'),
(7, 'South America', 'Brazil', 'Brasilia', '208.385.000');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `continent` varchar(20) DEFAULT NULL,
  `continent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `continent`, `continent_id`) VALUES
(7, 'France', 2),
(8, 'North America', 3),
(9, 'Europe', 4),
(10, 'Asia', 5),
(11, 'Africa', 6),
(12, 'South America', 7);

-- --------------------------------------------------------

--
-- Table structure for table `singers`
--

CREATE TABLE `singers` (
  `id` int(11) NOT NULL,
  `singer_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `singers`
--

INSERT INTO `singers` (`id`, `singer_name`) VALUES
(1, 'Bruce Springsteen'),
(2, 'Prince'),
(3, 'Madonna'),
(4, 'Evis Presley');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `singer_id` (`singer_id`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continent_name` (`continent_name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `continent` (`continent`),
  ADD KEY `continent_id` (`continent_id`);

--
-- Indexes for table `singers`
--
ALTER TABLE `singers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `singers`
--
ALTER TABLE `singers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `continents`
--
ALTER TABLE `continents`
  ADD CONSTRAINT `continents_ibfk_1` FOREIGN KEY (`continent_name`) REFERENCES `countries` (`continent`);

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`continent_id`) REFERENCES `continents` (`id`) ON DELETE CASCADE;
--
-- Database: `final_project`
--
CREATE DATABASE IF NOT EXISTS `final_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `final_project`;

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_category` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_created_by_id` int(11) DEFAULT NULL,
  `viewed_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_tags` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `image`, `blog_category_id`, `blog_description`, `blog_tags`, `created_at`, `updated_at`) VALUES
(4, 'AI Robotic Medical Surgery Improved Gachon Hospitals Reputation', 'upload/home_blogs/1747552765312808.jpg', 11, '<div class=\"field field-name-field-thumbnail field-type-image field-label-hidden\">\n<div class=\"field-items\">\n<div class=\"field-item even\">\n<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>\n</div>\n</div>\n</div>', 'tech,medical,life,social', '2022-10-23 22:22:42', '2022-11-06 09:20:50'),
(6, 'Travel around Korea for Seollal Holiday', 'upload/home_blogs/1748704993076879.png', 5, '<div class=\"MjjYud\">\r\n<div class=\"g Ww4FFb vt6azd tF2Cxc\" lang=\"en\" data-hveid=\"CBUQAA\" data-ved=\"2ahUKEwjHrpjmjZj7AhXm4TgGHa0LCIcQFSgAegQIFRAA\">\r\n<div class=\"kvH3mc BToiNc UK95Uc\" data-sokoban-container=\"ih6Jnb_JlZRud\">\r\n<div class=\"Z26q7c UK95Uc jGGQ5e\" data-header-feature=\"0\">\r\n<div class=\"yuRUbf\">\r\n<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'home, tech,travel', '2022-11-05 14:50:33', '2022-11-06 09:20:38'),
(7, 'Foreign population is increasing rapidly in South Korea', 'upload/home_blogs/1748703292065248.png', 14, '<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>', 'life,social', '2022-11-05 15:10:16', '2022-11-06 09:12:10'),
(8, 'Gachon University 2023-1 semester Application Started', 'upload/home_blogs/1748703415542470.png', 13, '<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>', 'study,university,life', '2022-11-05 15:12:14', '2022-11-06 08:55:08'),
(9, 'Fireworks show South Korea 2022', 'upload/home_blogs/1748704088729673.jpeg', 5, '<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>', 'social,fireworks,events', '2022-11-05 15:22:56', '2022-11-06 09:11:57'),
(10, '10 Miles Marathon From Lotte Tower Till Tancheon', 'upload/home_blogs/1748710333989081.png', 16, '<div class=\"field field-name-field-thumbnail field-type-image field-label-hidden\">\r\n<div class=\"field-items\">\r\n<div class=\"field-item even\">\r\n<div class=\"container-h1\">\r\n<h3>About Dental Clincs are Going To Use AI Robots To Assist Doctors</h3>\r\n</div>\r\n<p class=\"menu-text-p\">&nbsp;</p>\r\n<div class=\"field field-name-field-thumbnail field-type-image field-label-hidden\">\r\n<div class=\"field-items\">\r\n<div class=\"field-item even\">\r\n<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'sports,life,social', '2022-11-05 17:02:12', '2022-11-06 09:14:53'),
(12, 'Dental Clincs are Going To Use AI Robots To Assist Doctors', 'upload/home_blogs/1748932722327309.jpeg', 14, '<div class=\"field field-name-field-thumbnail field-type-image field-label-hidden\">\r\n<div class=\"field-items\">\r\n<div class=\"field-item even\">\r\n<p><strong>eshmat toshmat rais</strong></p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>', 'medical,surgery,teeth,ibrohim', '2022-11-05 17:06:52', '2022-11-08 03:56:59'),
(13, 'New Sports Activities Started in Yoeido', 'upload/home_blogs/1748772063535848.jpg', 16, '<p><strong>You are heartly welcome.</strong><br><br>Thank you for visiting the &lsquo;Fragrant and Beautiful Fountain (Gachon, 嘉泉)&rsquo; garden. I am Lee Gil-Ya, the president and Guardian of Gachon University.<br><br>Gachon University is recognized by others as &lsquo;the university with the greatest potential for development in Korea&rsquo;. It is a very meticulous and bold university united with a spirit of constant challenge. In the meantime, Gachon University has been fixing and correcting itself if there is anything lacking.<br>If there is any chance to get better, we have changed and again changed that Gachon University is being renewed day by day like a green leaf in spring. Outstanding talents are coming from all over the country, and excellent papers by young professors are pouring in. Domestic and foreign patent applications and research assignment orders are also making a long line.<br><br>Gachon University is located in Seongnam, south of Namhansanseong Fortress. It has \'Bundang that they say it is under Heaven\' on its left arm, \'Seoul Jamsil\', the site of the 1988 Olympic Games on its right arm, and \'Pangyo Techno Valley\' on its chest.<br>It\'s surprising that Gachon University and Stanford University, the symbol of Silicon Valley in the United States, have similar location conditions.<br><br><strong>Our Gachon University\'s motto is \'Philanthropy, Service, and Patriotism\'.</strong><br><br>To young people of today, it may sound old-fashioned. However, if I could become something to help the poor and needy, and make my neighbors happy, that would be philanthropy, service, and patriotism, wouldn\'t it?</p>', 'sport,life,han river,social,fitness,health,well-being', '2022-11-06 09:23:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categroys`
--

CREATE TABLE `blog_categroys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categroys`
--

INSERT INTO `blog_categroys` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(5, 'Travels', '2022-10-17 23:42:37', '2022-10-18 00:18:13'),
(11, 'Medical', '2022-10-18 00:18:30', NULL),
(13, 'Study', '2022-11-05 15:08:39', NULL),
(14, 'Social', '2022-11-05 15:08:56', NULL),
(15, 'Sports', '2022-11-05 16:59:58', NULL),
(16, 'Activities', '2022-11-05 17:00:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cargos`
--

CREATE TABLE `cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_user_id` int(11) DEFAULT NULL,
  `cargo_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_to_be_send` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_fee` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_location` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_location` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargos`
--

INSERT INTO `cargos` (`id`, `post_user_id`, `cargo_type`, `date_to_be_send`, `cargo_description`, `image_url`, `delivery_fee`, `from_location`, `to_location`, `created_at`, `updated_at`) VALUES
(4, 1, 'yuk olib ketsmn', '2022-11-15', '<p>telefon</p>', 'upload/cargos/1748834270814442.jpg', '200000W', 'Seoul', 'Tashkent', '2022-11-07 01:52:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `title`, `region`, `education_description`, `image_url`, `education_type`, `created_at`, `updated_at`) VALUES
(5, 'KAIST', 'Kaist University 2023-Application Started Hurry Up!', 'Daejon', '<div class=\"field field-name-field-thumbnail field-type-image field-label-hidden\">\r\n<div class=\"field-items\">\r\n<div class=\"field-item even\"><img class=\"img-responsive\" src=\"https://www.mobihealthnews.com/sites/default/files/Surgeons%20using%20VR%20and%20hologram_Mobi-Getty_cofotoisme_compressed.jpg\" alt=\"\" width=\"1200\" height=\"630\">\r\n<div class=\"image-field-credits\">\r\n<p>Photo: cofotoisme/Getty Images</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"field field-name-body field-type-text-with-summary field-label-hidden\">\r\n<div class=\"field-items\">\r\n<div class=\"field-item even\">\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Artificial intelligence (AI),</span>&nbsp;defined as algorithms that enable machines to perform cognitive functions (such as problem solving and decision-making), has changed for some time now the face of healthcare through machine learning (ML) and natural language processing (NLP).</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Its use in surgery, however, took a longer time than in other medical specialties, mainly because of missing information regarding the possibilities of computational implementation in practical surgery. Thanks to fast developments registered, AI is currently perceived as a supplement and not a replacement for the skill of a human surgeon.</span></p>\r\n<p dir=\"ltr\">And although the potential of the surgeon-patient-computer relationship is a long way from being fully explored, the use of AI in surgery is already driving significant changes for doctors and patients alike.</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">For example, surgical planning and navigation have improved consistently through computed tomography (CT), ultrasound and magnetic resonance imaging (MRI), while&nbsp;</span>minimally invasive surgery (MIS), combined with robotic assistance, resulted in&nbsp;<a href=\"https://pubmed.ncbi.nlm.nih.gov/23288354\" target=\"_blank\" rel=\"noopener\">decreased surgical trauma</a>&nbsp;and improved patient recovery.</p>\r\n<h2 dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">How AI&nbsp;is shaping preoperative planning</span></h2>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Preoperative planning</span>&nbsp;is the stage in which surgeons plan the surgical intervention based on the patient\'s medical records and imaging. This stage, which uses general image-analysis techniques and traditional machine-learning for classification, is being boosted by deep learning, which has been used for anatomical classification, detection segmentation and image registration.</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Deep learning algorithms were able to identify from&nbsp;</span><a href=\"https://pubmed.ncbi.nlm.nih.gov/30318264\" target=\"_blank\" rel=\"noopener\">CT scans</a>&nbsp;abnormalities such as calvarial fracture, intracranial hemorrhage and midline shift. Deep learning makes emergency care possible for these abnormalities and represents a potential key for the future automation of triage.</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Deep learning r</span>ecurrent neural networks (RNN) &ndash; which have been used to&nbsp;<a href=\"https://pubmed.ncbi.nlm.nih.gov/30274956\" target=\"_blank\" rel=\"noopener\">predict</a>&nbsp;renal failure in real time, and mortality and postoperative bleeding after cardiac surgery &ndash;&nbsp;have obtained&nbsp;improved results compared to standard clinical reference tools. These findings, achieved exclusively through the collection of clinical data, without manual processing, can improve critical care by granting more attention to patients most at risk in developing these&nbsp;kinds of complications.</p>\r\n<h2 dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">AI\'s role in intraoperative guidance</span></h2>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Computer-assisted intraoperative guidance</span>&nbsp;has always been regarded as a foundation of minimally invasive surgery (MIS).</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">AI\'s learning strategies have been implemented in several areas of MIS such as tissue tracking.</span></p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Accurate tracking of tissue deformation is vital in intraoperative guidance and navigation in MIS. Since tissue deformation can\'t be accurately shaped with improvised representations, scientists have developed an&nbsp;</span><a href=\"https://pubmed.ncbi.nlm.nih.gov/18982626\" target=\"_blank\" rel=\"noopener\">online learning framework</a>&nbsp;based on algorithms that identify the appropriate tracking method for in vivo practice.</p>\r\n<h2 dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">AI assistance through surgical robotics</span></h2>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Designed to assist during operations with surgical instruments\'&nbsp;manipulation and positioning, AI-driven surgical robots are computer-manipulated devices that allow surgeons to focus on the complex aspects of a surgery.</span></p>\r\n<p dir=\"ltr\">Their use&nbsp;decreases surgeons\'&nbsp;fluctuations during surgery&nbsp;and helps them improve their skills and perform better during interventions, hence obtaining superior patient&nbsp;outcomes and decreasing overall healthcare expenditures.</p>\r\n<p dir=\"ltr\">With the help of ML techniques, surgical robots help identify critical insights and state-of-the-art practices by browsing through millions of data sets.&nbsp;<a href=\"https://asensus.com/\" target=\"_blank\" rel=\"noopener\">Asensus Surgical</a>&nbsp;has a performance-guided laparoscopic AI robot that provides information back to surgeons, such as size of tissue, rather than requiring a physical measuring tape. At the same time, human skills are used for programming these robots by demonstration&nbsp;&ndash; and for teaching them by imitating operations conducted by surgeons.&nbsp;&nbsp;</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">Learning from demonstration (LfD)</span>&nbsp;is used for \"training\"&nbsp;robots to conduct new tasks&nbsp;independently, based on accumulated information. In the first stage, LfD splits a complex surgical task into several subtasks and basic gestures. In a second stage, surgical robots recognize, model and conduct the subtasks in a sequential mode, hence providing human surgeons with a break from repetitive tasks.</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">The objective of broadening the use of autonomous robots in surgery and the tasks these robots conduct especially in MIS is a difficult endeavor.&nbsp;</span>JHU-ISI Gesture and Skill Assessment Working Set (JIGSAWS) &ndash;&nbsp;<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5559351\" target=\"_blank\" rel=\"noopener\">the first public benchmark surgical activity dataset</a>&nbsp;&ndash; featured kinematic data and synchronized video for three standard surgery tasks conducted by surgeons from Johns Hopkins University&nbsp;with different levels of surgical skills.</p>\r\n<p dir=\"ltr\">The kinematics and stereo video were captured. The subtasks analyzed were suturing, needle passing and knot tying. The gestures &ndash; the smallest levels of a surgery\'s significant segments &ndash; performed during the execution of each subtask &ndash; were recognized with an accuracy of around 80%. The result, although promising, indicated there is room for improvement, especially in predicting the gesture activities conducted by different surgeons.</p>\r\n<p dir=\"ltr\"><span id=\"docs-internal-guid-bbe2d5af-7fff-66a2-0bd0-c4bf5f7088df\">For many surgical tasks,&nbsp;</span><a href=\"https://www.researchgate.net/publication/258140920_Reinforcement_Learning_in_Robotics_A_Survey\" target=\"_blank\" rel=\"noopener\">reinforcement learning</a>&nbsp;(RL) is an often used machine-learning paradigm to solve subtasks, such as tube insertion and soft tissue manipulation, for which it is difficult to render precise analytical models. RL algorithms are formatted based on policies learned&nbsp;from demonstrations, instead of learning from zero, hence reducing the time needed for the learning process.</p>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748706552224894.png', 'University', '2022-11-05 16:02:05', NULL),
(6, 'Gachon University', 'Gachon University Admission 2023-1 semester started, hurry up!', 'Gyeonggido', NULL, 'upload/education/1748742822353306.jpg', 'University', '2022-11-05 16:03:57', '2022-11-06 01:38:35'),
(7, '전문대학', 'Two-year degree colleges provide D-2 visa for international students', 'Gyeonggido', '<p>★ 글로벌캠퍼스, 메디컬캠퍼스 동시진행 ★</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. 대상</p>\r\n<p>&nbsp; 가. 신청대상&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;1) 재학생으로서 학년 제한이 없음</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;※ 본교생의 타 대학 학점교류는 1년 이상 수료한 재학생으로 징계 받은 사실이 없어야 함</p>\r\n<p>&nbsp; &nbsp;&nbsp;2) 군 휴학생(2023-1학기에 복학 예정인 학생만 신청 가능)&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;단, 군 휴학자에 한하여 계절학기 수강 후 2023-1학기에 복학하지 않을 경우, 성적 삭제 및 등록금 환불 불가)&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;3) 일반 휴학생 (전 학년 기준, 일반휴학 중 1회로 제한)</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;※ 제외 대상자 : ① 질병/ 임신출산육아 휴학&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ② 일반 휴학자 중, 마지막 학기 대상자</p>\r\n<p>※ (제외 대상자-②) 참고</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>4년제</p>\r\n</td>\r\n<td>\r\n<p>7학기 이수 후 휴학</p>\r\n</td>\r\n<td colspan=\"1\" rowspan=\"3\">\r\n<p>⇨ 휴학 중 2022년도 동계 계절학기 수강 불가</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>5년제</p>\r\n</td>\r\n<td>\r\n<p>9학기 이수 후 휴학</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>6년제</p>\r\n</td>\r\n<td>\r\n<p>11학기 이수 후 휴학</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;4) 졸업예정자(마지막 학기자), 학기초과자는 현재 2022-2학기에 재학생 신분으로서, 한 과목 이상 수강 중이어</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;야만 계절학기 신청 가능</p>\r\n<p>&nbsp;</p>\r\n<p>2. 개설 교과목 및 강의시간표 조회</p>\r\n<p>&nbsp; &bull; 홈페이지 &rarr; USER　SERVICE &rarr; 강의시간표 &rarr; 교양, 전공 선택 후 3학년으로 검색&nbsp;</p>\r\n<p>&nbsp; ⇨ 수강신청 및 등록인원이 전공15명, 교양20명 미만인 교과목은 폐강 예정</p>\r\n<p>&nbsp; ⇨ 계절학기 및 타 대학 학점교류 문의 : (글로벌 학사지원팀) 031-750-5727 (메디컬 교무학사팀) 032-820-4052</p>\r\n<p>&nbsp; &nbsp; &nbsp; ※ 현장실습 교과목 관련 사항은 별도 공지사항을 참고해주세요.</p>\r\n<p>&nbsp;</p>\r\n<p>3. 타 대학 학점교류생</p>\r\n<p>&nbsp; 가. 수강신청 : 학점교류 추천서에 의거 가천대학교에서 일괄 처리</p>\r\n<p>&nbsp; 나. 등록금 납부기간 : 본교생과 동일&nbsp;</p>\r\n<p>&nbsp; 다. 수강료 : 1학점 당 79,000원 (본교생과 동일)</p>\r\n<p>&nbsp;</p>\r\n<p>4. 재수강&nbsp;</p>\r\n<p>&nbsp; ※ &ldquo;재수강으로 강좌를 등록하는 경우, 아래의 사항을 자세히 읽은 후 수강신청 해주세요!!&rdquo;</p>\r\n<p>&nbsp; 가. 절차 : 수강신청 화면에서 &lsquo;재수강&rsquo;클릭 &rarr; 이수내역에서 재수강 할 교과목 선택 &rarr; 재수강 교과목 선택(또는&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 재수강 교과목의 학수번호 입력)후 신청 버튼 클릭 &rarr; 재수강 신청 완료</p>\r\n<p>&nbsp; 나. 재수강으로 신청한 과목의 수업료 납부 시, 취득 학점 기준으로 납부</p>\r\n<p>&nbsp; &nbsp; &nbsp; ex. 기존에 2학점이었던 Speaking Practice B1 과목이 (1학점)으로 변동된 후 재수강 할 경우, 2학점에 대한&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;성적이 반영됨으로, 2학점에 대한 수강료를 납부해야 함.&nbsp;</p>\r\n<p>&nbsp; 다. 2014학번(편입학-2012학번)부터 성적이 C+이하인 과목만 재수강 가능, 재수강시 취득할 수 있는 최대학점은 A0,&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;2020학번(편입학-2018학번)부터 최대학점 B+</p>\r\n<p>&nbsp; 라. 재수강은 반드시 기존에 신청했던 교과목과 동일과목으로 신청해야 수강신청이 가능(교과목이 폐설된 경우&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;동일 이수구분의 동일 학점 과목을 재수강할 수 있으며, 반드시 각 학과사무실로 동일, 대체과목 지정여부 확인)</p>\r\n<p>&nbsp; 마. 폐설된 교과목중 대체지정이 되어있는 과목은 별도의 대체지정신청서를 제출하지 않아도 재수강이 가능하나</p>\r\n<p>&nbsp; &nbsp; &nbsp;(대체지정 교과목만 대체인정), 대체지정이 되어 있지 않은 교과목은 필히 대체지정 신청서(홈페이지 &gt;&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;학사안내 &gt; 서식다운로드 &gt; 대체교과목 지정 신청서)를 학과사무실을 경유하여 학사지원팀(글로벌) /&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;교무학사팀(메디컬)로 제출해야 함.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>5. 세부일정 (글로벌캠퍼스, 메디컬캠퍼스 동시진행)</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>구분</p>\r\n</td>\r\n<td>\r\n<p>주요내용</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수강신청</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.11.10.(목) ~ 2022.11.14.(월) 10:00 ~ 18:00</p>\r\n<p>&bull; 인터넷 수강신청:&nbsp; 홈페이지 &rarr; 화면 오른쪽 USER　SERVICE 중 &lsquo;수강신청&rsquo; 이용</p>\r\n<p>&bull; 모바일 수강신청: &ldquo;가천대 수강신청&rdquo; 앱 사용</p>\r\n<p>&bull; 6학점 이내(타 대학 학점교류 포함)</p>\r\n<p>&bull; 계절학기는 예비수강신청자도 본 수강신청을 반드시 하여야 함</p>\r\n<p>&bull; 캠퍼스 간 수강신청 시 시간표에서 학수번호 확인 후 정규학기와 동일한 방법으로 수강신청(학교 홈페이지 공지사항에서 &lsquo;2015-1학기 가천대학교 캠퍼스 간 수학 변경 및 수강신청 안내&rsquo; 참고)</p>\r\n<p>※ &lsquo;수강신청 대상자가 아닙니다.&rsquo; 라는 경고창이 뜰 경우, 해당 캠퍼스로 전화 문의</p>\r\n<p>&nbsp; &nbsp;글로벌캠퍼스 학사지원팀 (031-750-5727)</p>\r\n<p>&nbsp; &nbsp;메디컬캠퍼스 교무학사팀 (032-820-4054)&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수강정정</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.11.18.(금) ~ 2022.11.21.(월) 10:00 ~ 18:00</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>등록금</p>\r\n<p>납부기간</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.12.12.(월) ~ 2022.12.14.(수)</p>\r\n<p>&bull; 수강료 : 1학점 당 79,000원</p>\r\n<p>&bull; 장소 : 하나은행 전국지점 방문수납(은행업무시간) 또는 계좌이체(07:00~23:30)</p>\r\n<p>&bull; 등록금고지서 출력 ⇨ 홈페이지에서 직접 출력(납부기간 내)</p>\r\n<p>홈페이지 &rarr; USER　SERVICE &rarr; 등록금수납 &rarr; 고지서출력</p>\r\n<p>&bull; 추가 등록금 납부기간 없음 ⇨ 등록기간 엄수!!</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수업기간</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2023.01.02.(월) ~ 2023.01.13.(금)</p>\r\n<p>&bull; 2주간&nbsp; 운영(개강 후 과목에 따라 수업일자를 반드시 확인)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>6. 유의사항</p>\r\n<p>&nbsp; 가. 수강신청 및 등록인원이 전공15명, 교양20명 이상인 과목에 한하여 개설함을 원칙으로 함</p>\r\n<p>&nbsp; 나. 현재학기(2022-2학기)에 수강 중인 교과목은 계절학기로 수강신청 불가 (재수강 포함), W는 가능</p>\r\n<p>&nbsp; 다. 시간이 중복되는 교과목은 삭제 처리 및 임의 정정을 하오니 반드시 시간중복이 없도록 신청&nbsp;</p>\r\n<p>&nbsp; 라. 수강료 환불은 환불규정에 의하여 처리</p>\r\n<p>&nbsp; 마. 코드쉐어 교과목이 개설되어 수강한 경우는 추후에 이수구분 신청 필요함</p>\r\n<p>&nbsp; &nbsp;&nbsp;(학교홈페이지 공지사항에 공지된 &lsquo;2022-1학기 / 2022-2학기 코드쉐어 교과목 수강신청 안내&lsquo;에 첨부된 코드쉐</p>\r\n<p>&nbsp; &nbsp; &nbsp;어 교과목에 한함)&nbsp;</p>\r\n<p>&nbsp; 바. 현장실습 교과목은 타학교 학점교류생의 경우 신청할 수 없습니다.&nbsp;</p>\r\n<p>&nbsp; 사. 수강포기는 등록금 환불 3차 종료일 이내만 가능하도록 함 (가천대학교 학칙 제15조 1항에 의거함)&nbsp;&nbsp;</p>\r\n<p>&nbsp; 아. 성적평가 기준: 상대평가Ⅱ (A등급 비율 50%이내, B~F등급 제한없음) 적용</p>\r\n<p>&nbsp; 자. 예비수강신청 결과 신청 인원 수 반영하여 강의 개설</p>\r\n<p>&nbsp; &nbsp; - 본수강신청/수강정정기간의 초과정원에 대한 추가 분반 불허</p>\r\n<p>&nbsp;</p>\r\n<p>7. 수업료 환불 : [계절학기 수강포기 및 환불 신청서] 를 작성 후 제출</p>\r\n<p>&nbsp; 가. 수강포기 및 환불신청서 : 홈페이지&rarr;학사안내&rarr;각종서식&rarr;계절학기 수강포기 및 환불신청서</p>\r\n<p>&nbsp; 나. e-mail 제출 : 글로벌캠퍼스 : register@gachon.ac.kr</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 메디컬캠퍼스 : i-haksa@gachon.ac.kr</p>\r\n<p>&nbsp; 다. 첨부서류&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;1) 등록금 납입 영수증 (ATM기 영수증, 통장거래내역 사본, 교육비납입증명서 중 택 1)</p>\r\n<p>&nbsp; &nbsp;&nbsp;2) 신분증 사본</p>\r\n<p>&nbsp; &nbsp;&nbsp;3) 본인명의통장 사본&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; 라. 수강취소(포기)시 환불규정 (한국대학교육협의회-328(&rsquo;08.6.18)호와 관련, 학원법 시행령에 근거)</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(가천대학교 학칙 제15조 1항에 의거)</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>기간</p>\r\n</td>\r\n<td>\r\n<p>환불금액</p>\r\n</td>\r\n<td>\r\n<p>비고</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>2022.12.30(금)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 전액&nbsp; &nbsp; &nbsp; [1차]</p>\r\n</td>\r\n<td colspan=\"1\" rowspan=\"4\">\r\n<p>- 금액은 1,000원 단위까지만 환불</p>\r\n<p>&nbsp; (100원 단위는 절사됨)</p>\r\n<p>&nbsp;</p>\r\n<p>- 환불은 방학 중 업무 시간</p>\r\n<p>&nbsp; (09:00~15:00) 기준으로 함</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>2023.01.05.(목)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 2/3 환불&nbsp; [2차]</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;2023.01.06.(금)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 1/2 환불&nbsp; [3차]</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;2023.01.07.(토)부터</p>\r\n</td>\r\n<td>\r\n<p>수강포기 및 환불 모두 불가</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>※ 예외 없이 진행될 것이므로, 학생은 등록금 환불에 불이익이 없도록 기간에 따른 환불금액을 반드시 확인</p>', 'upload/education/1748706732494966.png', 'College', '2022-11-05 16:04:57', NULL),
(8, 'Sejong University', 'Sejong University Language Course Admission Started', 'Seoul', '<div class=\"board-view-info\">\r\n<div class=\"view-info\">\r\n<h2 class=\"view-title\">2022학년도 동계 계절학기 수강신청 안내</h2>\r\n</div>\r\n<div class=\"view-detail\">\r\n<div class=\"view-util\">\r\n<dl class=\"writer\">\r\n<dt>작성자</dt>\r\n&nbsp;\r\n<dd>학사지원팀</dd>\r\n</dl>\r\n&nbsp;\r\n<dl class=\"count\">\r\n<dt>조회수</dt>\r\n&nbsp;\r\n<dd>280</dd>\r\n</dl>\r\n&nbsp;\r\n<dl class=\"write\">\r\n<dt>등록일</dt>\r\n&nbsp;\r\n<dd>2022.11.04</dd>\r\n</dl>\r\n</div>\r\n&nbsp;\r\n<div class=\"view-share\">\r\n<div class=\"util\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"view-con\">\r\n<p>★ 글로벌캠퍼스, 메디컬캠퍼스 동시진행 ★</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>1. 대상</p>\r\n<p>&nbsp; 가. 신청대상&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;1) 재학생으로서 학년 제한이 없음</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;※ 본교생의 타 대학 학점교류는 1년 이상 수료한 재학생으로 징계 받은 사실이 없어야 함</p>\r\n<p>&nbsp; &nbsp;&nbsp;2) 군 휴학생(2023-1학기에 복학 예정인 학생만 신청 가능)&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;단, 군 휴학자에 한하여 계절학기 수강 후 2023-1학기에 복학하지 않을 경우, 성적 삭제 및 등록금 환불 불가)&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;3) 일반 휴학생 (전 학년 기준, 일반휴학 중 1회로 제한)</p>\r\n<p>&nbsp; &nbsp; &nbsp;&nbsp;※ 제외 대상자 : ① 질병/ 임신출산육아 휴학&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ② 일반 휴학자 중, 마지막 학기 대상자</p>\r\n<p>※ (제외 대상자-②) 참고</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>4년제</p>\r\n</td>\r\n<td>\r\n<p>7학기 이수 후 휴학</p>\r\n</td>\r\n<td colspan=\"1\" rowspan=\"3\">\r\n<p>⇨ 휴학 중 2022년도 동계 계절학기 수강 불가</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>5년제</p>\r\n</td>\r\n<td>\r\n<p>9학기 이수 후 휴학</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>6년제</p>\r\n</td>\r\n<td>\r\n<p>11학기 이수 후 휴학</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;4) 졸업예정자(마지막 학기자), 학기초과자는 현재 2022-2학기에 재학생 신분으로서, 한 과목 이상 수강 중이어</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;야만 계절학기 신청 가능</p>\r\n<p>&nbsp;</p>\r\n<p>2. 개설 교과목 및 강의시간표 조회</p>\r\n<p>&nbsp; &bull; 홈페이지 &rarr; USER　SERVICE &rarr; 강의시간표 &rarr; 교양, 전공 선택 후 3학년으로 검색&nbsp;</p>\r\n<p>&nbsp; ⇨ 수강신청 및 등록인원이 전공15명, 교양20명 미만인 교과목은 폐강 예정</p>\r\n<p>&nbsp; ⇨ 계절학기 및 타 대학 학점교류 문의 : (글로벌 학사지원팀) 031-750-5727 (메디컬 교무학사팀) 032-820-4052</p>\r\n<p>&nbsp; &nbsp; &nbsp; ※ 현장실습 교과목 관련 사항은 별도 공지사항을 참고해주세요.</p>\r\n<p>&nbsp;</p>\r\n<p>3. 타 대학 학점교류생</p>\r\n<p>&nbsp; 가. 수강신청 : 학점교류 추천서에 의거 가천대학교에서 일괄 처리</p>\r\n<p>&nbsp; 나. 등록금 납부기간 : 본교생과 동일&nbsp;</p>\r\n<p>&nbsp; 다. 수강료 : 1학점 당 79,000원 (본교생과 동일)</p>\r\n<p>&nbsp;</p>\r\n<p>4. 재수강&nbsp;</p>\r\n<p>&nbsp; ※ &ldquo;재수강으로 강좌를 등록하는 경우, 아래의 사항을 자세히 읽은 후 수강신청 해주세요!!&rdquo;</p>\r\n<p>&nbsp; 가. 절차 : 수강신청 화면에서 &lsquo;재수강&rsquo;클릭 &rarr; 이수내역에서 재수강 할 교과목 선택 &rarr; 재수강 교과목 선택(또는&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 재수강 교과목의 학수번호 입력)후 신청 버튼 클릭 &rarr; 재수강 신청 완료</p>\r\n<p>&nbsp; 나. 재수강으로 신청한 과목의 수업료 납부 시, 취득 학점 기준으로 납부</p>\r\n<p>&nbsp; &nbsp; &nbsp; ex. 기존에 2학점이었던 Speaking Practice B1 과목이 (1학점)으로 변동된 후 재수강 할 경우, 2학점에 대한&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;성적이 반영됨으로, 2학점에 대한 수강료를 납부해야 함.&nbsp;</p>\r\n<p>&nbsp; 다. 2014학번(편입학-2012학번)부터 성적이 C+이하인 과목만 재수강 가능, 재수강시 취득할 수 있는 최대학점은 A0,&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;2020학번(편입학-2018학번)부터 최대학점 B+</p>\r\n<p>&nbsp; 라. 재수강은 반드시 기존에 신청했던 교과목과 동일과목으로 신청해야 수강신청이 가능(교과목이 폐설된 경우&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;동일 이수구분의 동일 학점 과목을 재수강할 수 있으며, 반드시 각 학과사무실로 동일, 대체과목 지정여부 확인)</p>\r\n<p>&nbsp; 마. 폐설된 교과목중 대체지정이 되어있는 과목은 별도의 대체지정신청서를 제출하지 않아도 재수강이 가능하나</p>\r\n<p>&nbsp; &nbsp; &nbsp;(대체지정 교과목만 대체인정), 대체지정이 되어 있지 않은 교과목은 필히 대체지정 신청서(홈페이지 &gt;&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;학사안내 &gt; 서식다운로드 &gt; 대체교과목 지정 신청서)를 학과사무실을 경유하여 학사지원팀(글로벌) /&nbsp;</p>\r\n<p>&nbsp; &nbsp; &nbsp;교무학사팀(메디컬)로 제출해야 함.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>5. 세부일정 (글로벌캠퍼스, 메디컬캠퍼스 동시진행)</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>구분</p>\r\n</td>\r\n<td>\r\n<p>주요내용</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수강신청</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.11.10.(목) ~ 2022.11.14.(월) 10:00 ~ 18:00</p>\r\n<p>&bull; 인터넷 수강신청:&nbsp; 홈페이지 &rarr; 화면 오른쪽 USER　SERVICE 중 &lsquo;수강신청&rsquo; 이용</p>\r\n<p>&bull; 모바일 수강신청: &ldquo;가천대 수강신청&rdquo; 앱 사용</p>\r\n<p>&bull; 6학점 이내(타 대학 학점교류 포함)</p>\r\n<p>&bull; 계절학기는 예비수강신청자도 본 수강신청을 반드시 하여야 함</p>\r\n<p>&bull; 캠퍼스 간 수강신청 시 시간표에서 학수번호 확인 후 정규학기와 동일한 방법으로 수강신청(학교 홈페이지 공지사항에서 &lsquo;2015-1학기 가천대학교 캠퍼스 간 수학 변경 및 수강신청 안내&rsquo; 참고)</p>\r\n<p>※ &lsquo;수강신청 대상자가 아닙니다.&rsquo; 라는 경고창이 뜰 경우, 해당 캠퍼스로 전화 문의</p>\r\n<p>&nbsp; &nbsp;글로벌캠퍼스 학사지원팀 (031-750-5727)</p>\r\n<p>&nbsp; &nbsp;메디컬캠퍼스 교무학사팀 (032-820-4054)&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수강정정</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.11.18.(금) ~ 2022.11.21.(월) 10:00 ~ 18:00</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>등록금</p>\r\n<p>납부기간</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2022.12.12.(월) ~ 2022.12.14.(수)</p>\r\n<p>&bull; 수강료 : 1학점 당 79,000원</p>\r\n<p>&bull; 장소 : 하나은행 전국지점 방문수납(은행업무시간) 또는 계좌이체(07:00~23:30)</p>\r\n<p>&bull; 등록금고지서 출력 ⇨ 홈페이지에서 직접 출력(납부기간 내)</p>\r\n<p>홈페이지 &rarr; USER　SERVICE &rarr; 등록금수납 &rarr; 고지서출력</p>\r\n<p>&bull; 추가 등록금 납부기간 없음 ⇨ 등록기간 엄수!!</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>수업기간</p>\r\n</td>\r\n<td>\r\n<p>&bull; 2023.01.02.(월) ~ 2023.01.13.(금)</p>\r\n<p>&bull; 2주간&nbsp; 운영(개강 후 과목에 따라 수업일자를 반드시 확인)</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>6. 유의사항</p>\r\n<p>&nbsp; 가. 수강신청 및 등록인원이 전공15명, 교양20명 이상인 과목에 한하여 개설함을 원칙으로 함</p>\r\n<p>&nbsp; 나. 현재학기(2022-2학기)에 수강 중인 교과목은 계절학기로 수강신청 불가 (재수강 포함), W는 가능</p>\r\n<p>&nbsp; 다. 시간이 중복되는 교과목은 삭제 처리 및 임의 정정을 하오니 반드시 시간중복이 없도록 신청&nbsp;</p>\r\n<p>&nbsp; 라. 수강료 환불은 환불규정에 의하여 처리</p>\r\n<p>&nbsp; 마. 코드쉐어 교과목이 개설되어 수강한 경우는 추후에 이수구분 신청 필요함</p>\r\n<p>&nbsp; &nbsp;&nbsp;(학교홈페이지 공지사항에 공지된 &lsquo;2022-1학기 / 2022-2학기 코드쉐어 교과목 수강신청 안내&lsquo;에 첨부된 코드쉐</p>\r\n<p>&nbsp; &nbsp; &nbsp;어 교과목에 한함)&nbsp;</p>\r\n<p>&nbsp; 바. 현장실습 교과목은 타학교 학점교류생의 경우 신청할 수 없습니다.&nbsp;</p>\r\n<p>&nbsp; 사. 수강포기는 등록금 환불 3차 종료일 이내만 가능하도록 함 (가천대학교 학칙 제15조 1항에 의거함)&nbsp;&nbsp;</p>\r\n<p>&nbsp; 아. 성적평가 기준: 상대평가Ⅱ (A등급 비율 50%이내, B~F등급 제한없음) 적용</p>\r\n<p>&nbsp; 자. 예비수강신청 결과 신청 인원 수 반영하여 강의 개설</p>\r\n<p>&nbsp; &nbsp; - 본수강신청/수강정정기간의 초과정원에 대한 추가 분반 불허</p>\r\n<p>&nbsp;</p>\r\n<p>7. 수업료 환불 : [계절학기 수강포기 및 환불 신청서] 를 작성 후 제출</p>\r\n<p>&nbsp; 가. 수강포기 및 환불신청서 : 홈페이지&rarr;학사안내&rarr;각종서식&rarr;계절학기 수강포기 및 환불신청서</p>\r\n<p>&nbsp; 나. e-mail 제출 : 글로벌캠퍼스 : register@gachon.ac.kr</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 메디컬캠퍼스 : i-haksa@gachon.ac.kr</p>\r\n<p>&nbsp; 다. 첨부서류&nbsp;</p>\r\n<p>&nbsp; &nbsp;&nbsp;1) 등록금 납입 영수증 (ATM기 영수증, 통장거래내역 사본, 교육비납입증명서 중 택 1)</p>\r\n<p>&nbsp; &nbsp;&nbsp;2) 신분증 사본</p>\r\n<p>&nbsp; &nbsp;&nbsp;3) 본인명의통장 사본&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; 라. 수강취소(포기)시 환불규정 (한국대학교육협의회-328(&rsquo;08.6.18)호와 관련, 학원법 시행령에 근거)</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(가천대학교 학칙 제15조 1항에 의거)</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>기간</p>\r\n</td>\r\n<td>\r\n<p>환불금액</p>\r\n</td>\r\n<td>\r\n<p>비고</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>2022.12.30(금)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 전액&nbsp; &nbsp; &nbsp; [1차]</p>\r\n</td>\r\n<td colspan=\"1\" rowspan=\"4\">\r\n<p>- 금액은 1,000원 단위까지만 환불</p>\r\n<p>&nbsp; (100원 단위는 절사됨)</p>\r\n<p>&nbsp;</p>\r\n<p>- 환불은 방학 중 업무 시간</p>\r\n<p>&nbsp; (09:00~15:00) 기준으로 함</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>2023.01.05.(목)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 2/3 환불&nbsp; [2차]</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;2023.01.06.(금)까지</p>\r\n</td>\r\n<td>\r\n<p>수업료 1/2 환불&nbsp; [3차]</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;2023.01.07.(토)부터</p>\r\n</td>\r\n<td>\r\n<p>수강포기 및 환불 모두 불가</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>※ 예외 없이 진행될 것이므로, 학생은 등록금 환불에 불이익이 없도록 기간에 따른 환불금액을 반드시 확인</p>\r\n</div>', 'upload/education/1748706794595709.png', 'Language school', '2022-11-05 16:05:57', NULL),
(9, 'Sungkygwan', 'Sungkyngwan University', 'Seoul', 'In August, Pakistan was devastated by catastrophic flooding. The unprecedented monsoon rains killed more than 1,500 people and left the inundated country with economic damages exceeding $30bn (£27bn). Within a month, a scientific study had concluded the high rainfall was \"likely increased\" by climate change.\n\nThe link between greenhouse gas emissions and extreme weather events already happening today is now well established. Events such as Pakistan\'s floods, Madagascar cyclones  and Somalia\'s drought are becoming more intense and more frequent due to climate change. They have led to death and destruction and left countries facing immense economic damages, plunging them into debt and diverting funds away from other critical areas, such as healthcare and education.\n\nWhat\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will fall by 20% by 2050 and 64% by 2100.\n\nAs such climate threats become a larger part of our lives, many argue that the countries and companies responsible for the pollution in the first place should be the ones footing bill.\n\nSo what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?\n\nThe link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\nThe link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\n\nThe discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.\n\nBy 2030, vulnerable nations are likely to face $290-580bn (£260-520bn) in annual climate \"residual damages\" – damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage could rise to $1-1.8tn (£890bn-1.6tn).\n\nUN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a \"case study in moral and economic justice\". He argues \"polluters must pay\" because \"vulnerable countries need meaningful action.\"\n\nResponsibility for climate change can be seen on several different levels – the actions of governments, companies, communities and individuals can all be linked to emissions.\n\nA study published earlier this year by Dartmouth College in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US, the world\'s largest historical emitter, cost the world more than $1.9tn (£1.6tn) in climate damages between 1990 and 2014. The next four largest emitters – China, Russia, India and Brazil – caused a further $4.1tn (£3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.\n\n\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential… it overturns this narrative of \'what can one country do?\'\"\n\nIf governments were serious about covering the damage from this harm, countries could establish a loss and damage finance facility under the UN Framework Convention on Climate Change (UNFCCC) – the UN\'s climate change body – which they would pay into in line with their fair share, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.\n\nHaving the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.\n\nThe world\'s most climate-vulnerable nations have called for such a facility to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries have strongly resisted these calls, insisting that humanitarian aid is enough to deal with the issue.', 'upload/education/1748738354384832.jpg', 'University', '2022-11-06 00:24:46', '2022-11-06 00:27:35'),
(10, 'Gachon University', 'Gachon University Language School', 'Seongnam', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748738817628090.png', 'Language school', '2022-11-06 00:34:56', NULL);
INSERT INTO `education` (`id`, `name`, `title`, `region`, `education_description`, `image_url`, `education_type`, `created_at`, `updated_at`) VALUES
(11, 'Yonsei University', 'Yonsei', 'Seoul', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748740394582287.png', 'University', '2022-11-06 01:00:00', '2022-11-06 01:00:35'),
(12, 'Seoul National University', 'Seuol National University Language School', 'Seoul', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748741337984776.png', 'Language school', '2022-11-06 01:15:00', NULL),
(13, 'Sogang Universty', 'Sogang University Language School', 'Gyeonggido', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748741652110777.png', 'Language school', '2022-11-06 01:19:59', NULL),
(14, 'Seoul National University', 'Seoul National University Admission', 'Seoul', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748742443617587.png', 'University', '2022-11-06 01:32:34', NULL);
INSERT INTO `education` (`id`, `name`, `title`, `region`, `education_description`, `image_url`, `education_type`, `created_at`, `updated_at`) VALUES
(15, 'Sejong University', 'Sejong University Admission', 'Seoul', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748742495895908.png', 'University', '2022-11-06 01:33:24', NULL),
(16, 'Suwon University', 'Suwon University Admission', 'Gyeonggido', NULL, 'upload/education/1748742723327048.jpg', 'University', '2022-11-06 01:34:30', '2022-11-06 01:37:01'),
(17, 'Ajou University', 'Ajou University Admission', 'Gyeonggido', '<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>In August, Pakistan was&nbsp;<a href=\"https://www.bbc.co.uk/news/business-62719659\">devastated by catastrophic flooding</a>. The unprecedented monsoon rains&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-17/pakistan-braces-for-more-floods-after-death-toll-crosses-1-500\">killed more than 1,500 people</a>&nbsp;and left the inundated country with&nbsp;<a href=\"https://www.bloomberg.com/news/articles/2022-09-09/un-chief-seeks-aid-as-pakistan-flood-losses-exceed-30-billion\">economic damages exceeding $30bn</a>&nbsp;(&pound;27bn). Within a month,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-likely-increased-extreme-monsoon-rainfall-flooding-highly-vulnerable-communities-in-pakistan/\">a scientific study had concluded</a>&nbsp;the high rainfall was \"likely increased\" by climate change.</p>\r\n<p>The link between greenhouse gas emissions and extreme weather events already happening today&nbsp;<a href=\"https://www.carbonbrief.org/mapped-how-climate-change-affects-extreme-weather-around-the-world/\">is now well established</a>. Events such as Pakistan\'s floods,&nbsp;<a href=\"https://www.worldweatherattribution.org/climate-change-increased-rainfall-associated-with-tropical-cyclones-hitting-highly-vulnerable-communities-in-madagascar-mozambique-malawi/\">Madagascar cyclones</a>&nbsp;&nbsp;and&nbsp;<a href=\"https://journals.ametsoc.org/view/journals/bams/100/6/bams-d-17-0233.1.xml\">Somalia\'s drought</a>&nbsp;are becoming&nbsp;<a href=\"https://www.ipcc.ch/report/sixth-assessment-report-working-group-i/\">more intense and more frequent due to climate change</a>. They have led to death and destruction and left countries facing immense economic damages,&nbsp;<a href=\"https://debtjustice.org.uk/press-release/lower-income-countries-spend-five-times-more-on-debt-than-dealing-with-climate-change\">plunging them into debt</a>&nbsp;and diverting funds away from other critical areas, such as healthcare and education.</p>\r\n<p>What\'s more, these impacts are only set to get worse. If global temperatures were to rise by 2.9C, the average GDP of the world\'s 65 most climate-vulnerable countries will&nbsp;<a href=\"https://mediacentre.christianaid.org.uk/climate-change-could-cause-64-gdp-hit-to-worlds-vulnerable-countries/\">fall by 20% by 2050 and 64% by 2100</a>.</p>\r\n<p>As such climate threats become a larger part of our lives,&nbsp;<a href=\"https://www.commondreams.org/news/2022/10/24/us-coalition-calls-john-kerry-back-loss-and-damage-funding-cop27\">many argue that</a>&nbsp;the countries and companies responsible for the pollution in the first place should be the ones footing bill.</p>\r\n<p>So what if we lived in a world where polluters really did pay for the climate damage they have caused? How much would they need to cough up, and would these payouts signal the end of the fossil fuel industry? Would this funding ever be able to alleviate the harm done? And could it mean the world\'s most vulnerable countries recover from climate disasters and adapt to looming threats?</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"future/article/20221026-what-if-polluters-paid-for-climate-change-loss-and-damage-p0d9msf9\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0d9msf9.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0d9msf9.jpg\" alt=\"The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">The link between greenhouse gas emissions and extreme weather events, such as Pakistan\'s floods, is now well-established (Credit: Fida Hussain / Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--future body-text-card__text--flush-text\">\r\n<div>\r\n<p>The discussion of who should pay for climate losses and damages has become a major geopolitical issue and is expected to be high on the agenda at the upcoming Cop27 climate talks in Sharm el-Sheikh, Egypt, in November.</p>\r\n<p>By 2030, vulnerable nations are likely to face&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">$290-580bn (&pound;260-520bn) in annual climate \"residual damages\"</a>&nbsp;&ndash; damages that cannot be prevented with measures to adapt to climate threats. By 2050, the total cost of loss and damage&nbsp;<a href=\"https://link.springer.com/chapter/10.1007/978-3-319-72026-5_14\">could rise to $1-1.8tn</a>&nbsp;(&pound;890bn-1.6tn).</p>\r\n<p>UN Secretary General Antonio Guterres, who has become increasingly more outspoken on the injustices of climate change in recent years, has described the climate crisis as a&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-62970887\">\"case study in moral and economic justice\"</a>. He argues&nbsp;<a href=\"https://www.un.org/sg/en/content/sg/statement/2022-09-20/secretary-generals-address-the-general-assembly-trilingual-delivered-follows-scroll-further-down-for-all-english-and-all-french\">\"polluters must pay\"</a>&nbsp;because \"vulnerable countries need meaningful action.\"</p>\r\n<p>Responsibility for climate change can be seen&nbsp;<a href=\"https://www.bbc.com/future/article/20200618-climate-change-who-is-to-blame-and-why-does-it-matter\">on several different levels</a>&nbsp;&ndash; the actions of governments, companies, communities and individuals can all be linked to emissions.</p>\r\n<p>A&nbsp;<a href=\"https://link.springer.com/article/10.1007/s10584-022-03387-y\">study published earlier this year by Dartmouth College</a>&nbsp;in New Hampshire, in the US, provided the first assessment of countries\' liability in fuelling the climate crisis. It concluded that emissions from the US,&nbsp;<a href=\"https://www.carbonbrief.org/analysis-which-countries-are-historically-responsible-for-climate-change/\">the world\'s largest historical emitter</a>, cost the world more than $1.9tn (&pound;1.6tn) in climate damages between 1990 and 2014. The next four largest emitters &ndash; China, Russia, India and Brazil &ndash; caused a further $4.1tn (&pound;3.6tn) in global economic losses in the same time period. Combined, these losses are equivalent to around 11% of yearly global GDP.</p>\r\n<p>\"We show that there is a scientific basis for [climate] liability claims,\" says Justin Mankin, co-author of the study and assistant professor of geography at Dartmouth College. \"The science shows that if one country can have detectable damages; one country\'s foregoing [of] emissions can have detectable benefits. That\'s really essential&hellip; it overturns this narrative of \'what can one country do?\'\"</p>\r\n<p>If governments were serious about covering the damage from this harm, countries could establish a&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">loss and damage finance facility</a>&nbsp;under the UN Framework Convention on Climate Change (UNFCCC) &ndash; the UN\'s climate change body &ndash; which they would pay into&nbsp;<a href=\"https://climateactiontracker.org/methodology/cat-rating-methodology/fair-share/\">in line with their fair share</a>, says Sadie DeCoste, an organiser for Tipping Point UK, a non-profit working on climate justice. The fair share could be calculated based on their historical and ongoing contribution to global emissions, she says.</p>\r\n<p>Having the fund as part of the UNFCCC process, rather than an external body, would help it to be \"accountable and transparent\" and ensure it is a \"collective commitment to reach an agreed-upon sum\", adds DeCoste. Such a fund should not be based on voluntary commitments made only by the countries that are more willing to pay, she says.</p>\r\n<p>The world\'s most climate-vulnerable nations have called for&nbsp;<a href=\"https://us.boell.org/en/2022/05/31/loss-and-damage-finance-facility-why-and-how\">such a facility</a>&nbsp;to be set up, which would assess countries\' needs after a climate disaster and request specific funds from governments based on factors including their contribution to global heating. To date, rich countries&nbsp;<a href=\"https://www.bbc.co.uk/news/science-environment-59206814\">have strongly resisted these calls</a>, insisting that humanitarian aid is enough to deal with the issue.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/education/1748742707759725.jpg', 'University', '2022-11-06 01:36:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entertainments`
--

CREATE TABLE `entertainments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `entertainment_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entertainment_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entertainment_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isKnown` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entertainments`
--

INSERT INTO `entertainments` (`id`, `entertainment_title`, `entertainment_description`, `image_url`, `address_link`, `entertainment_category`, `isKnown`, `created_at`, `updated_at`) VALUES
(16, 'Namsan Tower', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748752784408349.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Attraction', 'well-known', '2022-11-06 04:16:56', NULL),
(17, 'Soraksan National Park', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748752967920067.png', 'geeksforgeeks.org/difference-between-process-and-thread/asas', 'Nature', 'well-known', '2022-11-06 04:19:51', NULL),
(18, 'Jeju Island Trip', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753010567990.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Nature', 'well-known', '2022-11-06 04:20:32', NULL),
(19, 'Dongdaemun History Culture Park', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753060620385.jpg', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Fashion', NULL, '2022-11-06 04:21:20', NULL),
(20, 'Seoul Station Night Walk', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753116495454.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Outdoors', NULL, '2022-11-06 04:22:13', NULL),
(21, 'Nami Island Trip', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753159664627.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Nature', NULL, '2022-11-06 04:22:54', NULL),
(22, 'Gwanghwamun Historical Palaces', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753227445831.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'History', NULL, '2022-11-06 04:23:58', NULL);
INSERT INTO `entertainments` (`id`, `entertainment_title`, `entertainment_description`, `image_url`, `address_link`, `entertainment_category`, `isKnown`, `created_at`, `updated_at`) VALUES
(23, 'Seoul City Tour Bus', '<div class=\"article__intro b-font-family-serif\">If you only do one thing in Berlin, there is no better place than here to feel the weight of history and the addictive energy of one of the world\'s most vibrant and libertine cities.</div>\r\n<div class=\"article-body-native-ad article-body__body-text\">\r\n<div class=\"\">&nbsp;</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"drop-capped b-reith-sans-font drop-capped--travel\">T</div>\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--drop-capped body-text-card__text--flush-text\">\r\n<div>\r\n<p>There are few places where your morning jog or Sunday lunch plans take you to the abandoned runways and sprawling tarmac of a decommissioned airfield. But here in Berlin,&nbsp;<a href=\"https://gruen-berlin.de/projekte/parks/tempelhofer-feld/ueber-den-park\" target=\"_blank\" rel=\"noopener\">Tempelhofer Feld</a>, a 953-acre airport-turned-public park, has become a playground that embodies the city that holds it. On any given day, you might see Syrian asylum seekers playing football outside a Nazi-era terminal, bikers cycling under the shadow of an abandoned 75m radar station and families barbecuing next to grounded Cold War-era aeroplanes.&nbsp;</p>\r\n<p>Like many places in this richly textured city, there\'s much more to the site than meets the eye.&nbsp;</p>\r\n<p>Tempelhof (as the former airport was known, and as most Berliners call the site) has played a starring role in some of Europe\'s deepest horrors and greatest triumphs. It\'s where the past, present and future of the city constantly converse and negotiate with each other. You go to the Brandenburg Gate or Berlin Wall to see Berlin, but you go to Tempelhof to fall in love with it. In a city that\'s always becoming and never being, there is no better place than here for travellers to feel the spirit of one of the world\'s most vibrant and libertine capitals and to truly understand why people find it so addictive.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"article-body__image-text article-body__image-text--landscape\">\r\n<div id=\"travel/article/20221031-tempelhof-the-single-site-that-embodies-berlin-p0db9msx\">\r\n<div><picture><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1600x900/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:1200px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/1280x720/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:880px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:576px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.webp\" type=\"image/webp\" media=\"(min-width:224px)\"><source srcset=\"https://ychef.files.bbci.co.uk/624x351/p0db9msx.jpg\" type=\"image/jpeg\" media=\"(min-width:224px)\"><img id=\"\" title=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\" draggable=\"false\" src=\"https://ychef.files.bbci.co.uk/976x549/p0db9msx.jpg\" alt=\"As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)\"></picture>\r\n<div class=\"inline-image__description b-reith-sans-font inline-image__description--desktop\">\r\n<div class=\"text-summary\">\r\n<p class=\"text-summary__text text-summary__text--grey text-summary__text--left\">As many as 10,000 people come to Tempelhof everyday (Credit: Carsten Koall/Getty Images)</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>Tempelhof is so immense that its 10 entrances fall within three neighbourhoods in southern Berlin. To soak in the full scale of a space&nbsp;that\'s twice the size of Monaco, follow Herrfurthstrasse\'s cobblestones down a bustling stretch of graffiti-tagged cafes and bars to the park\'s eastern entrance in the district of Neuk&ouml;lln. At the end of the dead-end street, the former airport\'s vast, open expanse suddenly appears before you, unfurling towards the horizon. But instead of planes, it\'s kite-surfers and in-line skaters flying down the runway, the mammoth terminal building shrunken in the distance.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"article-body__callout-box\">\r\n<div class=\"callout-box-card\">\r\n<div class=\"callout-box-card__container\">\r\n<h3>TIP</h3>\r\n<h4>&nbsp;</h4>\r\n<div class=\"body\">\r\n<div>\r\n<p>Tempelhof\'s eastern entrance is one of the best places in Berlin to catch a sunset, so bring a blanket, grab a few&nbsp;<a href=\"https://www.bbc.com/travel/article/20211021-spatis-the-convenience-stores-that-rule-berlin\" target=\"_blank\" rel=\"noopener\">sp&auml;ti drinks</a>&nbsp;along Herrfurthstrasse, and follow the stream of Berliners into the park.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"body-text-card b-reith-sans-font\">\r\n<div class=\"body-text-card__text body-text-card__text--travel body-text-card__text--flush-text\">\r\n<div>\r\n<p>\"When I have family or friends visiting, I definitely show them this place,\" said Berliner Oumi Janta. \"Where else in the world do you find an abandoned or closed airport where you can just walk &ndash; or in my case, skate &ndash; around and feel freedom?\"</p>\r\n<p>On any given day, some 10,000 people descend on the park, creating a spontaneous neighbourhood that never feels too crowded. The park can (and does) hold every cross-section imaginable of the city\'s residents, from hard-nosed Berliners and queer refugees to Turkish grandparents and harried flatmates who just want to chill out with a book.</p>\r\n<p>\"The space is not just like a historical site; it\'s become some sort of place of entertainment, excitement,\" said Lukas Staudinger, co-founder of&nbsp;<a href=\"https://www.poligonal.de/en/\" target=\"_blank\" rel=\"noopener\">POLIGONAL</a>, which hosts \"exploratory\" walking tours of Berlin\'s most architecturally significant areas. \"It\'s a space for sub-cultural practices. It\'s a space for many different things, including for certain birds, which only nest there and nowhere else in the whole area.\"</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'upload/entertainment/1748753359535083.png', 'geeksforgeeks.org/difference-between-process-and-thread/', 'Attraction', NULL, '2022-11-06 04:26:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `housings`
--

CREATE TABLE `housings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `house_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_options` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_price` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `housings`
--

INSERT INTO `housings` (`id`, `house_type`, `house_options`, `title`, `description`, `image_url`, `rent_price`, `location`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'two room', 'aircon, fridge, sofa', 'Shared house', 'asasas', NULL, '500000won', 'Seoul', 1, NULL, NULL),
(2, 'One room', 'full option,refrigrator,tv,wifi,air condition,washing machine', 'Seongnam shared house, 1 person needed', '<p>One room is located near Gachon university. We need a person to live with us. Uzbeki person is preferable.</p>', 'upload/housing/1748640869973000.jpg', '200.000 won', 'Seongnam', 1, '2022-11-04 21:25:51', '2022-11-04 22:38:06'),
(3, 'Chutek', 'full option', 'Bokjeong chutek 2 room', '<p>Two room chutek is located in Bokjeong station. 1st floor, rooftop available.</p>\r\n<p>Deposit 10.000.000 won, monthly 100.000</p>\r\n<p>First come first served</p>', 'upload/housing/1748641064619952.jpg', '100.000', 'Bokjeong', 1, '2022-11-04 22:41:13', NULL),
(4, 'Villa', 'no option', 'Itaewon 2 room villa', '<p>House is located in Itaewon, near the mosque. Very international neighborhood with crowded people at night. The owner wants to give the house to people from U.S or Europe, preferably. Deposit is 7.000.000 won.</p>', 'upload/housing/1748641275072253.jpg', '250.000', 'Itaewon', 1, '2022-11-04 22:44:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_27_112336_create_blogs_table', 1),
(6, '2022_09_27_112402_create_housings_table', 1),
(7, '2022_09_27_112433_create_education_table', 1),
(8, '2022_09_27_112457_create_cargos_table', 1),
(9, '2022_09_27_112517_create_entertainments_table', 1),
(10, '2022_09_27_112542_create_announcements_table', 1),
(11, '2022_09_27_112631_create_ulinks_table', 1),
(12, '2022_09_27_112649_create_advertisements_table', 1),
(13, '2022_09_27_112708_create_restaurants_table', 1),
(14, '2022_09_27_112725_create_mosques_table', 1),
(15, '2022_10_17_072258_create_blog_categroys_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mosques`
--

CREATE TABLE `mosques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mosques`
--

INSERT INTO `mosques` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`, `created_at`, `updated_at`) VALUES
(1, '37.53338030', '126.99751860', ' Itaewon Central Mosque ', ' 서울특별시 용산구 우사단로10길 39 ', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9A%B0%EC%82%AC%EB%8B%A8%EB%A1%9C10%EA%B8%B8%2039&sm=hty&style=v5', NULL, NULL, NULL),
(2, '35.85645210', '128.53644340', ' Daegu Mosque ', ' 대구광역시 달서구 죽전동 202-6 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8B%AC%EC%84%9C%EA%B5%AC%20%EC%A3%BD%EC%A0%84%EB%8F%99%20202-6&sm=hty&style=v5', NULL, NULL, NULL),
(3, '37.40402680', '127.17720980', ' Gyenggido Gwangju Mosque ', ' 경기도 광주시 역동 48-9 ', 'https://m.map.naver.com/search2/search.naver?query=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B4%91%EC%A3%BC%EC%8B%9C%20%EC%97%AD%EB%8F%99%2048-9&sm=hty&style=v5', '01072158477', NULL, NULL),
(4, '37.43323460', '127.16059720', ' Daewon Islamic Centre (Masjid) ', ' 경기도 성남시 중원구 상대원동 1956 ', 'https://map.naver.com/v5/search/%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82%A8%EC%8B%9C%20%EC%A4%91%EC%9B%90%EA%B5%AC%20%EC%83%81%EB%8C%80%EC%9B%90%EB%8F%99%201956/address/14155534.815889966,4499707.01156278,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%84%B1%EB%82', NULL, NULL, NULL),
(5, '37.51155990', '127.05733740', ' COEX Mall, Gangnam (3-etaj hall E yaqinida) ', 'https://www.coexcenter.com/musalla-prayer-room/', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EC%98%81%EB%8F%99%EB%8C%80%EB%A1%9C%20513/address/14144190.769784827,4510667.890167203,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95', NULL, NULL, NULL),
(6, '37.46019500', '126.43850700', ' Incheon International Airport ', ' Terminal 1, 3-qavat, 24 duty free gate qarshisida; Terminal 2, B1 qavat sharqiy taraf One Family Resting Area yaqinida; Terminal 2, 4-qavat, duty free maydoni o\'rtasida, baskin robbins yonida', 'https://www.airport.kr/ap/en/map/mapInfo.do?SN=1711', '1577-2600', NULL, NULL),
(7, '37.51112000', '127.09597830', ' Lotte World Adventure Namozxona ', ' Adventure 3-qavat, Jungle Adventure chiqishi yonida; namozxona qo\'ng\'iroqini 2-3 marta bosing, foydalanish uchun', 'https://adventure.lotteworld.com/eng/usage-guide/service/convenient-facilities/information/contentsid/480/index.do#cBody', NULL, NULL, NULL),
(8, '37.55344980', '127.06392730', 'Sejong Universiteti Masjid ', ' 서울특별시 광진구 군자동 111-1', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B4%91%EC%A7%84%EA%B5%AC%20%EA%B5%B0%EC%9E%90%EB%8F%99%20111-/address/14145673.890492622,4516547.348101143,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B4%91%EC%A7%8', NULL, NULL, NULL),
(9, '37.48814260', '127.07448780', ' Samsung medical centre prayer Hall Musla Masjid ', ' 서울특별시 강남구 일원본동 120-1', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EC%9D%BC%EC%9B%90%EB%B3%B8%EB%8F%99%20120-/address/14146761.626633007,4507398.771125836,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%9', NULL, NULL, NULL),
(10, '37.54240440', '126.97874170', 'Prayer Room', ' 서울특별시 용산구 용산동2가 45-16', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9A%A9%EC%82%B0%EB%8F%992%EA%B0%80%2045-/address/14136190.883634564,4514989.030161954,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A', NULL, NULL, NULL),
(11, '37.53275100', '126.95312660', ' Yongsan prayer room 기도실, telefon bozori yaqinida', ' 서울특별시 용산구 한강로3가 2-8', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9A%A9%EC%82%B0%EB%8F%992%EA%B0%80%2045-/address/14136190.883634564,4514989.030161954,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A', NULL, NULL, NULL),
(12, '37.55554840', '126.93377770', ' Sinchon Masjid and Islamic Center', ' 서울특별시 마포구 신촌로24안길 20', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EB%A7%88%ED%8F%AC%EA%B5%AC%20%EC%8B%A0%EC%B4%8C%EB%A1%9C24%EC%95%88%EA%B8%B8%2020/address/14131181.317305733,4516835.050196212,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%2', '01097906030', NULL, NULL),
(13, '37.52049120', '127.04501960', ' Namdaemun market prayer roomr', ' 서울특별시 중구 남창동 46-14', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%A4%91%EA%B5%AC%20%EB%82%A8%EC%B0%BD%EB%8F%99%2046-14/address/14135166.031874526,4517330.504971746,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%A4%91%EA%B5%AC%20%EB%', '01031311764', NULL, NULL),
(14, '37.52049120', '127.04501960', ' Muslim Prayer Room HYU', ' 서울특별시 성동구 왕십리로 222', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%84%B1%EB%8F%99%EA%B5%AC%20%EC%99%95%EC%8B%AD%EB%A6%AC%EB%A1%9C%20222/address/14142764.06579497,4516681.867399178,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%84%B1%', NULL, NULL, NULL),
(15, '37.59286800', '127.04893330', ' 회기성원', ' 3rd Floor 346-118, 이문1동 동대문구 서울특별시', 'https://map.naver.com/v5/search/%EC%9D%B4%EB%AC%B81%EB%8F%99%20%EB%8F%99%EB%8C%80%EB%AC%B8%EA%B5%AC%20%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C?c=14143752.0596716,4522239.1944819,15,0,0,0,dh', '0237650570', NULL, NULL),
(16, '37.51309200', '126.90600730', ' Masjid Al-Falah', ' 서울특별시 영등포구 신길동 186-356', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC%20%EC%8B%A0%EA%B8%B8%EB%8F%99%20186-356/address/14128086.201315667,4510874.145587502,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9', NULL, NULL, NULL),
(17, '34.89164770', '128.61223850', ' Kojedo Kejeshi Mosque ', ' 게제시 장평동 31-1 ', 'https://m.map.naver.com/search2/search.naver?query=%EA%B1%B0%EC%A0%9C%EC%8B%9C%20%EC%9E%A5%ED%8F%89%EB%8F%99%2031-1', NULL, NULL, NULL),
(18, '37.50135330', '126.69263940', '부평성원 | Bupyeong Masjid', '인천광역시 부평구 십정동 574-19', 'https://map.naver.com/v5/entry/address/14105300.515307818,4506156.337272808,%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%B6%80%ED%8F%89%EA%B5%AC%20%EC%8B%AD%EC%A0%95%EB%8F%99%20574-19?c=14105272.5963795,4506156.6739368,19,0,0,0,dh', '032-512-2616; 0', NULL, NULL),
(19, '37.49589790', '126.67222120', 'Incheon Gajwa Mosque', '가정로 126번길 23-6', 'https://map.naver.com/v5/entry/address/14105300.515307818,4506156.337272808,%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%B6%80%ED%8F%89%EA%B5%AC%20%EC%8B%AD%EC%A0%95%EB%8F%99%20574-19?c=14105272.5963795,4506156.6739368,19,0,0,0,dh', '010-8513-7118', NULL, NULL),
(20, '37.46612950', '126.66228840', 'Incheon Masjid', '미추홀구 경인로 177', 'https://map.naver.com/v5/search/%EB%AF%B8%EC%B6%94%ED%99%80%EA%B5%AC%20%EA%B2%BD%EC%9D%B8%EB%A1%9C%20177/address/14100001.7854697,4504289.252903296,%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%AF%B8%EC%B6%94%ED%99%80%EA%B5%AC%20%EA%B2%BD%EC%9D%B8%E', '01050092801', NULL, NULL),
(21, '37.82986220', '127.14884370', 'Pocheon Masjid', '소흘읍 솔무루로98번길10-1', 'https://map.naver.com/v5/search/%EC%86%8C%ED%9D%98%EC%9D%8D%20%EC%86%94%EB%AA%A8%EB%A3%A8%EB%A1%9C%2098%EB%B2%88%EA%B8%B8%20%2010-1/address/14154168.34687658,4555424.811725883,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%ED%8F%AC%EC%B2%9C%EC%8B%9C%20%EC%86%8C%ED%9D%98%', '010-8971-1084; ', NULL, NULL),
(22, '38.00953640', '127.08400060', 'YeonCheon Masjid', '청창로 173번길6', 'https://map.naver.com/v5/search/%EC%B2%AD%EC%B0%BD%EB%A1%9C%20173%EB%B2%88%EA%B8%B86/address/14146951.370705064,4580795.608915435,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%97%B0%EC%B2%9C%EA%B5%B0%20%EC%B2%AD%EC%82%B0%EB%A9%B4%20%EC%B2%AD%EC%B0%BD%EB%A1%9C173%EB%B', '010-8079-0311', NULL, NULL),
(23, '37.71235720', '126.58999670', 'Kimpo Masjid', '월하로329', 'https://map.naver.com/v5/search/%EC%9B%94%ED%95%98%EB%A1%9C329/address/14092177.461288366,4538877.584926711,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B9%80%ED%8F%AC%EC%8B%9C%20%ED%86%B5%EC%A7%84%EC%9D%8D%20%EC%9B%94%ED%95%98%EB%A1%9C%20329,new?c=14092161.7095804,', '010-4495-9871', NULL, NULL),
(24, '37.76524240', '126.79545260', 'Paju Masjid', '통일로620번길 89-52', 'https://map.naver.com/v5/search/%ED%86%B5%EC%9D%BC%EB%A1%9C620%EB%B2%88%EA%B8%B8%2089-52/address/14115046.035789061,4546315.946225051,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%ED%8C%8C%EC%A3%BC%EC%8B%9C%20%EC%9B%94%EB%A1%B1%EB%A9%B4%20%ED%86%B5%EC%9D%BC%EB%A1%9C620%', NULL, NULL, NULL),
(25, '37.33313080', '126.79092420', 'Ansan Masjid', '경기도 안산시 단원구 원곡공원로 16-1', 'https://map.naver.com/v5/search/%EC%9B%90%EA%B3%A1%EA%B3%B5%EC%9B%90%EB%A1%9C%2016-1/address/14114544.99789295,4485649.605745014,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%95%88%EC%82%B0%EC%8B%9C%20%EB%8B%A8%EC%9B%90%EA%B5%AC%20%EC%9B%90%EA%B3%A1%EA%B3%B5%EC%9B%90', NULL, NULL, NULL),
(26, '37.40575700', '127.25764750', 'Gyeongido Gwangju Masjid', '역동로34번길10', 'https://map.naver.com/v5/search/%EC%97%AD%EB%8F%99%EB%A1%9C34%EB%B2%88%EA%B8%B810/address/14166275.38790356,4495819.171894006,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B4%91%EC%A3%BC%EC%8B%9C%20%EC%97%AD%EB%8F%99%EB%A1%9C34%EB%B2%88%EA%B8%B8%2010,new?c=14166244.4', '010-8981-3813', NULL, NULL),
(27, '35.84910450', '127.14821400', 'Jeonju Masjid', '백동6길31', 'https://map.naver.com/v5/search/%EB%B0%B1%EB%8F%996%EA%B8%B831/address/14154316.234820101,4279880.437639736,%EC%A0%84%EB%9D%BC%EB%B6%81%EB%8F%84%20%EC%A0%84%EC%A3%BC%EC%8B%9C%20%EB%8D%95%EC%A7%84%EA%B5%AC%20%EB%B0%B1%EB%8F%996%EA%B8%B8%2031,new?c=14154293', '010-6610-1483; ', NULL, NULL),
(28, '37.57815720', '126.99613580', 'Daejon Masjid', '대학로193', 'https://m.map.naver.com/search2/search.naver?query=%EB%8C%80%ED%95%99%EB%A1%9C193&sm=hty&style=v5', '010-5969-8375', NULL, NULL),
(29, '35.20482510', '126.87031800', 'Jeonla Gwangju Masjid', '양산제로137번길2-12', 'https://m.map.naver.com/search2/search.naver?query=%EC%96%91%EC%82%B0%EC%A0%9C%EB%A1%9C137%EB%B2%88%EA%B8%B82-12&sm=hty&style=v5#/map', '010-3106-0786', NULL, NULL),
(30, '36.12518170', '128.34084420', 'Gumi Masjid', '구미중앙로 31길13', 'https://m.map.naver.com/search2/search.naver?query=%EA%B5%AC%EB%AF%B8%EC%A4%91%EC%95%99%EB%A1%9C%2031%EA%B8%B813&sm=hty&style=v5', '010-4648-3909; ', NULL, NULL),
(31, '35.85054180', '128.51178860', 'Daegu Masjid 1', '달구벌대로 1340', 'https://m.map.naver.com/search2/search.naver?query=%EB%8B%AC%EA%B5%AC%EB%B2%8C%EB%8C%80%EB%A1%9C%201340&sm=hty&style=v5', '010-2159-3873', NULL, NULL),
(32, '35.85428620', '128.50959300', 'Daegu Masjid 2', '이곡동로 39  (401 호)', 'https://m.map.naver.com/search2/search.naver?query=%EC%9D%B4%EA%B3%A1%EB%8F%99%EB%A1%9C%2039&sm=hty&style=v5', '010-2306-3691; ', NULL, NULL),
(33, '35.23405680', '128.87827160', 'Kimhe Masjid', '분성로 317번길7', 'https://map.naver.com/v5/search/%EB%B6%84%EC%84%B1%EB%A1%9C%20317%EB%B2%88%EA%B8%B87/address/14346905.187783945,4195734.617252208,%EA%B2%BD%EC%83%81%EB%82%A8%EB%8F%84%20%EA%B9%80%ED%95%B4%EC%8B%9C%20%EB%B6%84%EC%84%B1%EB%A1%9C317%EB%B2%88%EA%B8%B8%207,new', '010-9553-0161', NULL, NULL),
(34, '35.22519590', '128.67307800', 'Changwon Masjid', '경상남도 창원시 성산구 외동반림로 74', 'https://map.naver.com/v5/search/%EC%99%B8%EB%8F%99%EB%B0%98%EB%A6%BC%EB%A1%9C74/address/14323871.938360523,4194693.0658042785,%EA%B2%BD%EC%83%81%EB%82%A8%EB%8F%84%20%EC%B0%BD%EC%9B%90%EC%8B%9C%20%EC%84%B1%EC%82%B0%EA%B5%AC%20%EC%99%B8%EB%8F%99%EB%B0%98%EB', '055-263-5510; 0', NULL, NULL),
(35, '35.25994120', '129.09000810', 'Busan Masjid', '부산광역시 금정구 금단로 113-13', 'https://map.naver.com/v5/search/%EA%B8%88%EB%8B%A8%EB%A1%9C%20113-13/address/14370479.483328473,4199272.539251743,%EB%B6%80%EC%82%B0%EA%B4%91%EC%97%AD%EC%8B%9C%20%EA%B8%88%EC%A0%95%EA%B5%AC%20%EA%B8%88%EB%8B%A8%EB%A1%9C%20113-13,new?gclid=CjwKCAjwoduRBhA4', '051-518-9991', NULL, NULL),
(36, '33.48581430', '126.48238860', 'Jeju Masjid', '제주특별자치도 제주시 노연로 42 (1208호)', 'https://map.naver.com/v5/search/%EC%A0%9C%EC%A3%BC%EC%8B%9C%20%EB%85%B8%EC%97%B0%EB%A1%9C%2042%20%EC%A0%95%ED%95%9C%EC%98%A4%ED%94%BC%EC%8A%A4%ED%85%94%201208%ED%98%B8/address/14080196.333737422,3959966.0001866706,%EC%A0%9C%EC%A3%BC%ED%8A%B9%EB%B3%84%EC%9', '064-712-1215; 0', NULL, NULL),
(37, '37.86959440', '127.00112450', 'Yangju Masjid', '경기도 양주시 남면 화합로610번길 110-10', 'https://map.naver.com/v5/search/%ED%99%94%ED%95%A9%EB%A1%9C610%EB%B2%88%EA%B8%B8%20110-10/address/14137946.870678183,4561025.746819608,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EC%96%91%EC%A3%BC%EC%8B%9C%20%EB%82%A8%EB%A9%B4%20%ED%99%94%ED%95%A9%EB%A1%9C610%EB%B2%88', '010-8192-9022', NULL, NULL),
(38, '37.13265350', '126.90595230', 'Hwaseong Masjid', '경기도 화성시 향남읍 3.1만세로 1109-3', 'https://map.naver.com/v5/search/%ED%96%A5%EB%82%A8%EC%9D%8D%203.1%20%EB%A7%8C%EC%84%B8%EB%A1%9C%201109-3/address/14127366.2981687,4457618.333584778,%EA%B2%BD%EA%B8%B0%EB%8F%84%20%ED%99%94%EC%84%B1%EC%8B%9C%20%ED%96%A5%EB%82%A8%EC%9D%8D%203.1%EB%A7%8C%EC%8', '010-8193-0990', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`, `created_at`, `updated_at`) VALUES
(4, '37.53351670', '126.99328960', ' 킹케밥 - Turkish Cuisine', ' 서울특별시 용산구 이태원로 176', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9D%B4%ED%83%9C%EC%9B%90%EB%A1%9C%20176/address/14136844.585080344,4513840.6761301905,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A', '01080341413', NULL, NULL),
(5, '37.53407560', '126.99478990', ' Mr Kebab HALAL', ' 서울특별시 용산구 이태원1동 127-33', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9D%B4%ED%83%9C%EC%9B%901%EB%8F%99%20127-33/address/14137076.574899163,4513866.42177956,%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A', NULL, NULL, NULL),
(6, '37.53350620', '126.99433900', ' Lazzat O\'zbek Restaurant', ' 서울특별시 용산구 이태원1동 127-33', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9D%B4%ED%83%9C%EC%9B%90%EB%8F%99%20%EC%9A%B0%EC%82%AC%EB%8B%A8%EB%A1%9C%2037?c=14136602.9215978,4513737.4274472,15,0,0,0,dh', '01047930064', NULL, NULL),
(7, '37.53351470', '126.99433900', ' HojiBobo Restaurant | Itaewon Seoul', ' 서울특별시 용산구 이태원동 56-13 KR 서울특별시 용산구 3F, 56-13 Itaewon-dong 3층', 'https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9D%B4%ED%83%9C%EC%9B%90%EB%8F%99%2056-13%20KR%20%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%203F,%2056-13%20I', '027922010', NULL, NULL),
(8, '36.98791640', '126.92856170', ' Oshxona Behruz Pyontek ', ' 안현로서2길 7-10 ', 'https://m.place.naver.com/restaurant/1026209020/location?subtab=location', '01098397071; 01', NULL, NULL),
(9, '35.83962020', '128.75488980', ' Zaytun O\'zbek Oshxona ', ' 조영동 239-16 ', 'https://m.place.naver.com/restaurant/1082014584/location?subtab=location', '01022175477', NULL, NULL),
(10, '36.96654060', '127.48813810', ' HALAL FOOD 우주벡 할랄식당 ', ' 오태로 137번길 13 ', 'https://m.place.naver.com/restaurant/1273946401/location?subtab=location', '01080994993', NULL, NULL),
(11, '36.92828580', '127.03555230', ' Kobiz al Fayz ', '충청남도 아산시 둔포면 둔포면로 20-6', 'https://m.map.naver.com/search2/search.naver?query=%EB%91%94%ED%8F%AC%EB%A9%B4%20%EB%A1%9C%2020-6&sm=hty&style=v5', '041-5439943; 07', NULL, NULL),
(12, '37.23872210', '127.20647530', ' Yongin Muslima ', '백옥대로 1153', 'https://m.map.naver.com/search2/search.naver?query=%EC%B2%98%EC%9D%B8%20%EB%B0%B1%EC%98%A5%EB%8C%80%EB%A1%9C%201153&sm=hty&style=v5', ' 01077132205 ', NULL, NULL),
(13, '35.84136670', '127.13392510', ' Firdavs Jeonju ', ' 백제대로 608 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%B0%B1%EC%A0%9C%EB%8C%80%EB%A1%9C%20608&sm=hty&style=v5', ' 010-3238-2555 ', NULL, NULL),
(14, '35.91488220', '127.06747120', ' O\'zbegim ', ' 동학로 103 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%8F%99%ED%95%99%EB%A1%9C%20103&sm=hty&style=v5', ' 010-5588-8832 ', NULL, NULL),
(15, '37.08512760', '126.81734320', ' Asia ', ' 조암로 22-2 101호 ', 'https://m.map.naver.com/search2/search.naver?query=%EC%A1%B0%EC%95%94%EB%A1%9C%2022-2%20101%ED%98%B8&sm=hty&style=v5', ' 010-5895-6652 ', NULL, NULL),
(16, '36.82016080', '127.15722430', ' Karavan ', ' 동남구 터미널 4길 4-1 2층 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%8F%99%EB%82%A8%EA%B5%AC%20%ED%84%B0%EB%AF%B8%EB%84%90%204%EA%B8%B8%204-1%202%EC%B8%B5&sm=hty&style=v5', ' 010-3043-7277 ', NULL, NULL),
(17, '36.28035020', '126.90911020', 'Yulduz', ' 부여읍 중앙로 6-3 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%B6%80%EC%97%AC%EC%9D%8D%20%EC%A4%91%EC%95%99%EB%A1%9C%206-3&sm=hty&style=v5', ' 010-2950-1416;', NULL, NULL),
(18, '36.90919110', '127.50551890', ' Halal Food ', ' 덕산읍 초금로 725-1 1층 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%8D%95%EC%82%B0%EC%9D%8D%20%EC%B4%88%EA%B8%88%EB%A1%9C%20725-1%201%EC%B8%B5&sm=hty&style=v5', ' 010-2950-1416;', NULL, NULL),
(19, '34.77010090', '127.70312680', ' O\'zbegim ', ' 미평 9길 7 ', 'https://m.map.naver.com/search2/search.naver?query=%EB%AF%B8%ED%8F%89%209%EA%B8%B8%207&sm=hty&style=v5', ' 010-8914-7285 ', NULL, NULL),
(20, '35.84077810', '128.75063690', 'Kyongsan Samarqand', '청운 2로 37', 'https://m.map.naver.com/search2/search.naver?query=%EC%B2%AD%EC%9A%B4%202%EB%A1%9C%2037&sm=hty&style=v5', '010-6240-5778', NULL, NULL),
(21, '36.33786220', '127.45037330', 'Choyxona', '대전광역시 동구 성동로7번길 12-11', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%B1%EB%8F%99%EB%A1%9C7%EB%B2%88%EA%B8%B8%2012-11&sm=hty&style=v5', '042-624-1205', NULL, NULL),
(24, '37.53297810', '126.99545420', 'Yello Chicken Itaewon', '용산구 우산단로 10길 14', 'https://m.map.naver.com/search2/search.naver?query=%EB%AF%B8%ED%8F%89%209%EA%B8%B8%207&sm=hty&style=v5', '02-790-1193', NULL, NULL),
(25, '36.63263200', '127.45514880', 'O\'zbegim', '사창동 457', 'https://m.map.naver.com/search2/search.naver?query=%EC%82%AC%EC%B0%BD%EB%8F%99%20457&sm=shistory&style=v5', '010-80745445; 0', NULL, NULL),
(26, '37.40521180', '127.25543840', 'Muslima Gyeongido Gwangju', '경기 광주시 역동로34번길 6', 'https://map.naver.com/v5/search/%EB%AC%B4%EC%8A%AC%EB%A6%AC%EB%A7%88/place/1607804435?c=14166230.2589820,4495743.7356077,19,0,0,0,dh', NULL, NULL, NULL),
(27, '37.42568500', '126.67749580', 'Chayhana', '인천광역시 연수구 연수동 488-4\r\n', 'https://m.map.naver.com/search2/search.naver?query=%EC%97%B0%EC%88%98%EB%8F%99%20488-4&sm=hty&style=v5', '032-822-4734', NULL, NULL),
(28, '37.08512760', '126.81733790', 'Asia Hwaseong', '조암로 22-2 (101호)', 'https://m.map.naver.com/search2/search.naver?query=%EC%A1%B0%EC%95%94%EB%A1%9C%2022-2&sm=hty&style=v5', '010-5895-6652', NULL, NULL),
(29, '36.90919110', '127.50551360', 'O\'zbek Oshxona', '초금로 725-1 (1층)', 'https://m.map.naver.com/search2/search.naver?query=%EC%B4%88%EA%B8%88%EB%A1%9C%20725-1&sm=hty&style=v5#/place/map/1/1056537796', '010-7626-8329', NULL, NULL),
(30, '34.77010090', '127.70312150', 'Malika O\'zbek oshxona', '여수시 미평9길 7', 'https://m.map.naver.com/search2/search.naver?query=%EC%97%AC%EC%88%98%EC%8B%9C%20%EB%AF%B8%ED%8F%899%EA%B8%B8%207&sm=hty&style=v5', '010-8914-7285', NULL, NULL),
(31, '35.84077810', '128.75063160', 'Kyongsan Oshxona', '청운 2로37', 'https://m.map.naver.com/search2/search.naver?query=%EC%B2%AD%EC%9A%B4%202%EB%A1%9C37&sm=hty&style=v5', '010-6240-5778', NULL, NULL),
(32, '37.42579990', '126.67954700', 'Incheon Vodiy Somsa', '함박로 39', 'https://m.map.naver.com/search2/search.naver?query=%ED%95%A8%EB%B0%95%EB%A1%9C%2039&sm=hty&style=v5', '010-3769-8919', NULL, NULL),
(33, '36.32855250', '127.43220530', 'Daejon Buxoro', '대전광역시 동구 대전로 770', 'https://map.naver.com/v5/search/%EB%8C%80%EC%A0%84%EB%A1%9C770/address/14185932.495282408,4345926.834461663,%EB%8C%80%EC%A0%84%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8F%99%EA%B5%AC%20%EB%8C%80%EC%A0%84%EB%A1%9C%20770,new?gclid=CjwKCAjwoduRBhA4EiwACL5RP6zQEsm3Xj', NULL, NULL, NULL),
(34, '36.19281800', '127.45115670', 'Muslim Halal Food', '충청남도 금산군 추부면 대학로 191', 'https://map.naver.com/v5/search/%EC%B6%94%EB%B6%80%EB%A9%B4%20%EB%8C%80%ED%95%99%EB%A1%9C%20191/address/14188040.530215662,4327189.245945953,%EC%B6%A9%EC%B2%AD%EB%82%A8%EB%8F%84%20%EA%B8%88%EC%82%B0%EA%B5%B0%20%EC%B6%94%EB%B6%80%EB%A9%B4%20%EB%8C%80%ED%95', '010-4634-4404', NULL, NULL),
(35, '36.76265720', '127.29546430', 'Sumayya Cheonan', '충청남도 천안시 동남구 병천면 충절로 1736', 'https://map.naver.com/v5/search/%EC%B6%A9%EC%A0%88%EB%A1%9C1736/address/14170710.990937863,4406094.036389571,%EC%B6%A9%EC%B2%AD%EB%82%A8%EB%8F%84%20%EC%B2%9C%EC%95%88%EC%8B%9C%20%EB%8F%99%EB%82%A8%EA%B5%AC%20%EB%B3%91%EC%B2%9C%EB%A9%B4%20%EC%B6%A9%EC%A0%8', '010-5548-0039', NULL, NULL),
(36, '36.98772230', '126.92602570', 'Zam-Zam Pyeontek', '안중읍 아중리282-7', 'https://www.google.com/maps/place/282-7+Anjung-ri,+Anjung-eup,+Pyeongtaek,+Gyeonggi-do/@36.9877223,126.9260257,17z/data=!3m1!4b1!4m5!3m4!1s0x357b185c138eecaf:0x472ce0ef84b57d54!8m2!3d36.987718!4d126.9282144', '010-7677-4290', NULL, NULL),
(37, '34.96692930', '127.48265470', 'Surxon Suncheon', '전라남도 순천시 중앙로 238', 'https://map.naver.com/v5/search/%EC%88%9C%EC%B2%9C%EC%8B%9C%20%EC%A4%91%EC%95%99%EB%A1%9C238/address/14191545.691550072,4159389.0982792377,%EC%A0%84%EB%9D%BC%EB%82%A8%EB%8F%84%20%EC%88%9C%EC%B2%9C%EC%8B%9C%20%EC%A4%91%EC%95%99%EB%A1%9C%20238,new?gclid=Cjw', '010-7622-7447', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `profile_image`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akbar', 'hasan@gmail.com', 'Akbar', '2022-07-30 16:22:41', '$2y$10$kawFwlfpYJvUiml1WfnLReb.5qMRk0dymrk647Bp06pUD7HhQtPLW', '20221108125918DSC_0286.jpg', 'admin', 'u6lcSPRcwcZAdeGwDb1NsXpG8rEmVC3UlsFjKD6gRb2n9UFeCoaqTTeDtyPU', '2022-10-02 19:07:56', '2022-11-08 03:59:18'),
(2, 'Ibrohim', 'ibrohim.mahmudov@gmail.com', NULL, '2022-07-30 16:22:41', '$2y$10$OfzfbEZ.IE21ZrRUYDFQl.D6aUpqQRoQeNdLoh.hGW2xeMssFRkJS', NULL, NULL, NULL, '2022-11-07 11:36:22', '2022-11-07 11:36:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categroys`
--
ALTER TABLE `blog_categroys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entertainments`
--
ALTER TABLE `entertainments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `housings`
--
ALTER TABLE `housings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mosques`
--
ALTER TABLE `mosques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulinks`
--
ALTER TABLE `ulinks`
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
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_categroys`
--
ALTER TABLE `blog_categroys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `entertainments`
--
ALTER TABLE `entertainments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `housings`
--
ALTER TABLE `housings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mosques`
--
ALTER TABLE `mosques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `goals`
--
CREATE DATABASE IF NOT EXISTS `goals` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `goals`;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int(11) NOT NULL,
  `goal_category` int(11) NOT NULL,
  `goal_text` text NOT NULL,
  `goal_date` date NOT NULL,
  `goal_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `goal_category`, `goal_text`, `goal_date`, `goal_complete`) VALUES
(4, 0, 'Third goal', '2022-01-07', 0),
(5, 0, '', '0000-00-00', 0),
(6, 2, 'sasas', '1998-06-25', 0),
(7, 0, 'test', '2022-02-01', 0),
(8, 1, 'wqqq', '2022-12-02', 0),
(9, 0, '2 chiqishi kerak', '2022-03-13', 0),
(10, 0, '2chiqishi kerak endi', '2022-02-02', 0),
(11, 0, 'personal', '2022-12-20', 1),
(12, 1, 'professional', '2022-02-12', 1),
(13, 2, 'other', '2025-05-25', 1),
(14, 0, 'personal_ikki_chiqishi', '2022-07-18', 0),
(15, 0, 'blabalbal', '2020-01-12', 1),
(16, 0, 'blabalbal', '2020-01-12', 1),
(17, 0, 'comleted not checked', '2022-06-26', 1),
(18, 2, '2chiq', '2022-12-13', 1),
(19, 0, '', '0000-00-00', 0),
(20, 0, '', '0000-00-00', 0),
(21, 0, '', '0000-00-00', 0),
(22, 0, '', '0000-00-00', 0),
(23, 0, '', '0000-00-00', 0),
(24, 0, 'asas', '0000-00-00', 0),
(25, 0, 'aaaaaa', '0000-00-00', 0),
(26, 1, 'asas', '0000-00-00', 0),
(27, 0, '', '0000-00-00', 0),
(28, 0, '', '0000-00-00', 0),
(29, 1, '', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `haksenguz`
--
CREATE DATABASE IF NOT EXISTS `haksenguz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `haksenguz`;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `announcement_text` text NOT NULL,
  `announcer_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_text` text NOT NULL,
  `news_image` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `halaltour_kr`
--
CREATE DATABASE IF NOT EXISTS `halaltour_kr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `halaltour_kr`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `token` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_email`, `auth_type`, `selector`, `token`, `created_at`, `expires_at`) VALUES
(63, 'supa@hot.com', 'account_verify', '97718c182b94316a', '$2y$10$/x4sf3ih3KyQ/GqpfQcHeuqRVVyGbXdMebJIabFPgSn5LJhUcorKm', '2022-10-03 04:53:43', '2022-10-03 05:53:43'),
(66, 'hasanalbasriy798@gmail.com', 'account_verify', '64a044181d6dc0a9', '$2y$10$2LNgJti6RC1Eh/kfyxXBAuuyjDZqt2eN2fzWrsmqjSboQJWj2ntnG', '2022-10-03 05:05:55', '2022-10-03 06:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `img_url`, `created_at`, `updated_at`, `blog_category`) VALUES
(1, 'Te', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industryk. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley osf type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/hikorea.jpg', '2022-09-16 13:18:05', '2022-10-04 10:57:23', 'Job'),
(2, 'Dogs and cats are loved by Korean people!', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/gachon.jpg', '2022-09-16 15:37:22', '2022-09-18 05:11:42', 'Social'),
(3, 'The most popular Korean Palaces that you should visit in Seoul!!', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipssum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/lotte.jpg', '2022-09-16 15:37:22', '2022-09-18 05:11:49', 'Tourism'),
(4, 'Te', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industryk. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley osf type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/hikorea.jpg', '2022-09-16 04:18:05', '2022-10-04 01:57:23', 'Job'),
(5, 'Dogs and cats are loved by Korean people!', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/gachon.jpg', '2022-09-16 06:37:22', '2022-09-17 20:11:42', 'Social'),
(6, 'The most popular Korean Palaces that you should visit in Seoul!!', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipssum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/lotte.jpg', '2022-09-16 06:37:22', '2022-09-17 20:11:49', 'Tourism');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `blog_category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `img_url`, `created_at`, `updated_at`, `blog_category`) VALUES
(1, 'Tegu International Fireworks Show', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industryk. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley osf type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/hikorea.jpg', '2022-09-16 04:18:05', '2022-10-04 13:44:21', 'Job'),
(2, 'Han River Fireworks Show', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/gachon.jpg', '2022-09-16 06:37:22', '2022-10-10 11:51:18', 'Social'),
(3, 'The most popular Korean Palaces that you should visit in Seoul!!', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipssum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'assets/lotte.jpg', '2022-09-16 06:37:22', '2022-09-17 20:11:49', 'Tourism');

-- --------------------------------------------------------

--
-- Table structure for table `mosque`
--

CREATE TABLE `mosque` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_link` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT 'assets/mosque_df.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mosque`
--

INSERT INTO `mosque` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`, `img_url`) VALUES
(1, '37.53338030', '126.99751860', 'Itaewon Central Masjid', '서울특별시 용산구 우사단로10길 39', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9A%B0%EC%82%AC%EB%8B%A8%EB%A1%9C10%EA%B8%B8%2039&sm=hty&style=v5#/map', '1065075844', NULL),
(2, '35.85645210', '128.53644340', 'Daegu Mosque', '대구광역시 달서구 죽전동 202-6', 'https://m.map.naver.com/search2/search.naver?query=%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8B%AC%EC%84%9C%EA%B5%AC%20%EC%A3%BD%EC%A0%84%EB%8F%99%20202-6&sm=hty&style=v5#/map', NULL, 'assets/everland.jpg'),
(3, '37.40402680', '127.17720980', 'Gyengido Kwangju Masjid', '경기도 광주시 역동 48-9', 'https://m.map.naver.com/search2/search.naver?query=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B4%91%EC%A3%BC%EC%8B%9C%20%EC%97%AD%EB%8F%99%2048-9&sm=hty&style=v5', NULL, NULL),
(4, '37.40402680', '127.17720980', 'Test Data', '경기도 광주시 역동 48-9', 'https://m.map.naver.com/search2/search.naver?query=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B4%91%EC%A3%BC%EC%8B%9C%20%EC%97%AD%EB%8F%99%2048-9&sm=hty&style=v5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`title`, `description`, `image_url`, `created_at`, `updated_at`, `id`) VALUES
('Bloom Your Color! \'2022 Seoul Beauty Week\'', 'Title: 2022 Seoul Beauty Week\r\n\r\nPeriod: 2022.09.30(Fri) ~ 2022.10.02(Sun)\r\n\r\nPlace: Dongdaemun Design Plaza (DDP) Oullim Plaza, Art Hall2\r\n\r\nSubject: Anyone who would like to participate in Seoul\'s global beauty festival\r\n\r\nOverview: Seoul Beauty Week 2022 is a global beauty festival that brings together the latest beauty trends and provides diverse programs ‘Beauty Indie Expo’, ‘Business Pitching Day’, ‘Make-up Contest’, and ‘Beauty Bamm!’ Trend Night! so as to reinvigorate the beauty industry and allow people to enjoy beauty culture and K-wave.', 'assets/notices/1.png', '2022-10-04 12:39:58', NULL, 1),
('Lodging Registration required from 10 December 2020', 'To prevent the spread of infectious diseases, Lodging Registration required from 10 December 2020', '', '2022-10-09 09:50:19', NULL, 2),
('Wolgye Hallyu Experience Festival', 'To prevent the spread of infectious diseases, Lodging Registration required from 10 December 2020', 'assets/notices/3.jpg', '2022-10-04 12:42:42', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_type` varchar(20) DEFAULT NULL,
  `image_url` text DEFAULT NULL,
  `service_title` varchar(20) DEFAULT NULL,
  `service_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_type`, `image_url`, `service_title`, `service_description`, `created_at`) VALUES
(1, 'Business', 'assets/koreanvisa.jpg', 'C-3-4 Business Visa ', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-09-20 15:09:27'),
(2, 'Invitation', 'assets/hikorea.jpg', 'C-3-1 Short Term Vis', 'zlorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-09-20 15:09:00'),
(3, 'Transport', 'assets/travel.jpg', 'Airport Pickup', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-10-04 12:31:40'),
(4, 'Tour', 'assets/everland.jpg', '10 Days 9 Nights Tri', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2022-09-20 15:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `tour_packages`
--

CREATE TABLE `tour_packages` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `category` varchar(25) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date_of_tour` date DEFAULT NULL,
  `num_of_people` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `languages` varchar(80) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tour_packages`
--

INSERT INTO `tour_packages` (`id`, `title`, `category`, `price`, `date_of_tour`, `num_of_people`, `discount`, `languages`, `review_id`, `comments`, `img_url`, `description`) VALUES
(1, 'Tour Package 4 Days 5 Night Amazing Trip!', 'Outdoor', 500, '2022-10-13', 10, 20, 'English, Philippine, Bahasa, Russain', NULL, NULL, 'assets/tour_packages/tourpack1.jpg', '2022-2학기 Hana Hou Presentation Contest에 참가해주신 학생분들께 진심으로 감사드리며,\r\n\r\n10월 5일에 있을 본선 진출자를 발표합니다.\r\n\r\n\r\n\r\n아래 첨부된 명단 및 공고를 반드시 확인하셔서\r\n\r\n본선 참가에 차질 없으시길 바랍니다.\r\n\r\n\r\n\r\n2022.10.5.(수) 오전 09:00까지\r\n\r\n글로벌캠퍼스 글로벌센터 1층 100호(국제홀)\r\n\r\n\r\n\r\n﻿본선 심사는 명단에 기재된 순서에 따라 진행되며, 예선심사 순위와는 무관합니다.\r\n\r\n변경된 순서를 포함한 최종 명단을 다시 한 번 확인하시길 바랍니다.\r\n\r\n\r\n\r\n팀당 발표시간: 6분 이내, 준비한 자료 내용의 핵심 위주로 발표\r\n\r\n반드시 참가신청 시 제출한 자료를 사용하여 발표 진행\r\n'),
(2, 'Tour Package 8 Days 7 Night Fascinating Trip!', 'Entertainment', 800, '2022-10-29', 20, 10, 'English, Russian, Japanese, Chinese', NULL, NULL, 'assets/tour_packages/tourpack2.jpg', NULL),
(3, 'Jeju, Busan, DMZ, Ulsan Trip for 2 Weeks!!!', 'Sightseeing', 1300, '2022-11-18', 50, 15, 'English, Uzbek, Russian, Chinese', NULL, NULL, 'assets/tour_packages/tourpack3.jpg', NULL),
(4, 'Seoul Fireworks Show, Jeju Halla Mountain Trip for Super Price!!', 'Outdoors', 750, '2022-10-10', 7, 15, 'Arabic, Italian, Japan, English', NULL, NULL, 'assets/tour_packages/tourpack4.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT '_defaultUser.png',
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`, `headline`, `bio`, `profile_image`, `verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(31, 'supahot', '', '$2y$10$jhIOk4NVdBile/NwhAU9We/f0aoohx.cG9CizmIALRz0aCKJa5s6a', 'Supahot', 'Soverysupahot', 'm', 'Headline of a supa hot user', 'This is the bio of a supa hot user. Now i will say needless stuff to make this longer so this looks like a bio and not anything other than a bio.', '_defaultUser.png', '2022-10-03 05:00:16', '2022-10-03 04:51:45', '2022-10-03 05:08:07', NULL, '2022-10-03 05:00:38'),
(32, 'ibrohim', 'hbycleverboy777@gmail.com', '$2y$10$o6TTIRy8M4XR0toGEsklCepoyA0r5IUzlZdvLYJ3l1.wiJ1kwgrfm', 'Ibrohim', 'Makhmudov', 'm', '3Dmax', '3DMax Desgnier', '_defaultUser.png', '2022-10-03 05:11:31', '2022-10-03 05:05:39', '2022-10-10 13:17:20', NULL, '2022-10-10 13:17:20'),
(33, 'akbar', 'hasan.juraev25@gmail.com', '$2y$10$9lrn7CSx4b.o.UwPH4nhteM0HpkmzKQRqGYWXDwDmkZuXtUrde5qe', 'Akbar', 'Boboyev', 'm', 'Aki', 'A Simple Boy', '_defaultUser.png', '2022-10-04 13:56:36', '2022-10-04 13:55:35', '2022-10-10 14:34:25', NULL, '2022-10-10 14:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email_address` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `purpose` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `first_name`, `last_name`, `email_address`, `phone_number`, `purpose`, `created_at`, `user_message`) VALUES
(1, 'KHASAN', 'Juraev', 'hasan@gmail.com', '+998 1065075844', 'option1', '2022-10-10 15:30:02', NULL),
(2, 'Ibrohim', 'Mahmudov', 'hbycleverboy777@gmai', '+8210650758444', 'Business', '2022-10-10 15:34:26', 'Assalamu alaykum! Recuerdo que se tenía que actualizar de manera individual, pero no se si sea esto así, agradecería cualquier ayuda y al igual si podrían usar un poco de código para entender el error o hacer la corrección sería de mucha ayuda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mosque`
--
ALTER TABLE `mosque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_packages`
--
ALTER TABLE `tour_packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`,`username`,`email`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mosque`
--
ALTER TABLE `mosque`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tour_packages`
--
ALTER TABLE `tour_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `klik_loginsystem`
--
CREATE DATABASE IF NOT EXISTS `klik_loginsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `klik_loginsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `auth_type` varchar(255) NOT NULL,
  `selector` text NOT NULL,
  `token` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_tokens`
--

INSERT INTO `auth_tokens` (`id`, `user_email`, `auth_type`, `selector`, `token`, `created_at`, `expires_at`) VALUES
(62, 'supa@hot.com', 'account_verify', '00ef46f0dae76a9f', '$2y$10$F41DwukvvGd7bknaafdzVu8aUMDSJVXXpohELwxXL/VOQsGrQpRoC', '2022-10-01 13:54:57', '2022-10-01 14:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `profile_image` varchar(255) NOT NULL DEFAULT '_defaultUser.png',
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `gender`, `headline`, `bio`, `profile_image`, `verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login_at`) VALUES
(31, 'supahot', 'hbycleverboy777@gmail.com', '$2y$10$jhIOk4NVdBile/NwhAU9We/f0aoohx.cG9CizmIALRz0aCKJa5s6a', 'Hasan', 'Soverysupahot', 'm', 'Headline of a supa hot user', 'This is the bio of a supa hot user. Now i will say needless stuff to make this longer so this looks like a bio and not anything other than a bio.', '_defaultUser.png', '2022-10-01 13:59:26', '2022-10-01 13:28:59', '2022-10-01 15:23:24', NULL, '2022-10-01 15:23:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`,`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Database: `laravel8`
--
CREATE DATABASE IF NOT EXISTS `laravel8` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel8`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'app', 'image/brand/1737054833846718.jpg', '2022-06-30 01:23:01', NULL),
(2, 'Apple', 'image/brand/1737054987476710.png', '2022-06-30 01:25:27', NULL),
(3, 'Android', 'image/brand/1737055246509503.jpg', '2022-06-30 01:29:34', NULL),
(4, 'Node.red', 'image/brand/1737055352312683.jpg', '2022-06-30 01:31:15', NULL),
(5, 'Ixtiyora12345', 'image/brand/1738660712519001.jpg', '2022-06-30 02:19:14', '2022-07-17 18:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `category_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'women', '2022-04-05 13:19:56', '2022-06-18 22:51:34', NULL),
(3, 1, 'Hasanboy', '2022-04-06 15:42:16', '2022-04-06 15:42:16', NULL),
(4, 1, 'Youth', '2022-04-06 15:50:39', NULL, NULL),
(12, 1, 'Car', NULL, NULL, NULL),
(13, 1, 'Ibrohim Firibgariy', '2022-04-10 00:58:48', '2022-04-23 13:06:44', NULL),
(14, 4, 'Najimiddin', '2022-04-16 20:07:46', '2022-05-19 04:59:25', '2022-05-19 04:59:25'),
(16, 1, 'Ixtiyorchik', '2022-05-14 06:23:45', '2022-06-18 22:51:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_17_111733_create_sessions_table', 1),
(7, '2022_03_20_122138_create_categories_table', 2),
(8, '2022_06_29_153249_create_brands_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CTRV5zUx37YIGi4vjXuScoc5CQ4WAk8oBTyApoII', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoicmxWN1lEMjAxTHZEVjg0b29TdE1JSW95THVpaU9uVkN1UG1KdVRmViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkYld6RnVUcjVBV0dCMWE4Rm8vTUFLZUI5eDFlREliTElrUVVxNlBGTG0wcmgzNDdLNXZxTUsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGJXekZ1VHI1QVdHQjFhOEZvL01BS2VCOXgxZURJYkxJa1FVcTZQRkxtMHJoMzQ3SzV2cU1LIjt9', 1658116104),
('FvZBBNDhweWDr8iUaGj5OVC7PH5Y1t67u5nJi9yP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoibVZQcmhyTXdlS29lcEV4RDNkVERJbnhKckFuUWg2TDZ2RmtkRnJ1UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkYld6RnVUcjVBV0dCMWE4Rm8vTUFLZUI5eDFlREliTElrUVVxNlBGTG0wcmgzNDdLNXZxTUsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGJXekZ1VHI1QVdHQjFhOEZvL01BS2VCOXgxZURJYkxJa1FVcTZQRkxtMHJoMzQ3SzV2cU1LIjt9', 1658041663),
('FXMhTZoa2aymJ2m2e5SqGGE4F5TEfLIq94wHcNU9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieE5sWlU5NHJObExwN0gzVjNLdnFwaFJNVXhvRll2bkxTSW5jZzJPSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9hbGwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkYld6RnVUcjVBV0dCMWE4Rm8vTUFLZUI5eDFlREliTElrUVVxNlBGTG0wcmgzNDdLNXZxTUsiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGJXekZ1VHI1QVdHQjFhOEZvL01BS2VCOXgxZURJYkxJa1FVcTZQRkxtMHJoMzQ3SzV2cU1LIjt9', 1656588790),
('jpgCZZxrObhLVAK55iTvgjipg7E9J8lzgayLe4cP', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoib29ET29rUjZXVjJXWUtvQlZrNXpxaExRbjRVVklna0Z6VnpRQnRacSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9lZGl0LzUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGJXekZ1VHI1QVdHQjFhOEZvL01BS2VCOXgxZURJYkxJa1FVcTZQRkxtMHJoMzQ3SzV2cU1LIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRiV3pGdVRyNUFXR0IxYThGby9NQUtlQjl4MWVESWJMSWtRVXE2UEZMbTByaDM0N0s1dnFNSyI7fQ==', 1658051933),
('sJh7RGF022R1dgvPCLOkJVfitiDCgcnL2dOVdJgm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3JuUE5kMGszWWVkWWc0VEV2MHluU1o4WkRqblZoQzBPOWZsRThrbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC9lZGl0LzUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1658064367);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Hasan', 'hbycleverboy777@gmail.com', NULL, '$2y$10$bWzFuTr5AWGB1a8Fo/MAKeB9x1eDIbLIkQUq6PFLm0rh347K5vqMK', NULL, NULL, 's0cNMjWId3FfYypTolHAFCIJ5Kp4LlOlvfqVw2jXTvQm8f7r9uQWRxiDlA3f', NULL, NULL, '2022-03-17 02:35:32', '2022-03-23 05:30:43'),
(2, 'Hasanboy', 'hasan.juraev25@gmail.com', NULL, '$2y$10$JRBxypRrXenqXHpjKNA5Lufh0HQ/14LmBJFXRL.xR9GcPfTi1WDoO', NULL, NULL, NULL, NULL, NULL, '2022-03-17 20:42:57', '2022-03-17 20:55:30'),
(3, 'Akbar', 'akbar.babaev@gmail.com', NULL, '$2y$10$2JNzCwD1XCQH8m4CpjwGFONZiFV9OXH93QeoR1wGkzwKBb2qy.Y7.', NULL, NULL, NULL, NULL, NULL, '2022-03-17 21:00:30', '2022-03-17 21:00:30'),
(4, 'Ibrohim', 'ibrohim.mahmudov@gmail.com', NULL, '$2y$10$9rEImMAZxWqPZKmsWzdRBeqn0ALig6bXSczoH2fahg2XMiY76Asmq', NULL, NULL, NULL, NULL, NULL, '2022-03-18 22:25:48', '2022-03-18 22:25:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `ls_burger`
--
CREATE DATABASE IF NOT EXISTS `ls_burger` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ls_burger`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`) VALUES
(2, 'James Bergman'),
(3, 'Aaron Muller'),
(4, 'Natasha O\'Shea');

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `user_id` int(11) NOT NULL,
  `customer_email` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`user_id`, `customer_email`) VALUES
(2, 'james1998@email.com'),
(4, 'natasha@osheafamily.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `burger` varchar(50) DEFAULT NULL,
  `side` varchar(50) DEFAULT NULL,
  `drink` varchar(30) DEFAULT NULL,
  `customer_loyalty_points` int(11) DEFAULT NULL,
  `burger_cost` float DEFAULT NULL,
  `side_cost` float DEFAULT NULL,
  `drink_cost` double DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `burger`, `side`, `drink`, `customer_loyalty_points`, `burger_cost`, `side_cost`, `drink_cost`, `fk_customer_id`) VALUES
(1, 'LS Cheeseburger', 'Fries', NULL, 18, 3.5, 1.2, 0, 4),
(2, 'LS DOUBLE Deluxe Burger', 'Onion Rings', 'Chocolate Shake', 42, 6, 1.5, 0, 4),
(3, 'LS Chicken Burger', 'Fries', 'Lemonade', 28, 4.5, 1.2, 1.5, 2),
(4, 'LS  Burger', 'Fries', NULL, 13, 3, 1.2, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `burger_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `burger_id`, `customer_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 2),
(4, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `burger_id` (`burger_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD CONSTRAINT `email_addresses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`burger_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
--
-- Database: `oye_admin`
--
CREATE DATABASE IF NOT EXISTS `oye_admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `oye_admin`;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test\",\"table\":\"users\"},{\"db\":\"final_project\",\"table\":\"users\"},{\"db\":\"website\",\"table\":\"users\"},{\"db\":\"final_project\",\"table\":\"restaurants\"},{\"db\":\"final_project\",\"table\":\"mosques\"},{\"db\":\"final_project\",\"table\":\"blogs\"},{\"db\":\"final_project\",\"table\":\"entertainments\"},{\"db\":\"final_project\",\"table\":\"education\"},{\"db\":\"final_project\",\"table\":\"blog_categroys\"},{\"db\":\"final_project\",\"table\":\"housings\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'final_project', 'cargos', '{\"sorted_col\":\"`cargos`.`cargo_description` ASC\"}', '2022-10-29 11:38:47'),
('root', 'final_project', 'entertainments', '{\"sorted_col\":\"`entertainments`.`entertainment_category` ASC\"}', '2022-11-06 14:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-28 15:38:37', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `php_realtime`
--
CREATE DATABASE IF NOT EXISTS `php_realtime` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `php_realtime`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id`, `name`, `email`, `age`, `country`) VALUES
(1, 'Hasan', 'hasan.juraev@gmail.com', '23', 'Uzbeksitan'),
(2, 'Ibrohim', 'ibrohim@gmail.com', '22', 'Namangan'),
(3, 'Bob', 'Bob@gmail.com', '22', 'Urgut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_data`
--
ALTER TABLE `tb_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `productdb`
--
CREATE DATABASE IF NOT EXISTS `productdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `productdb`;

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(25) NOT NULL,
  `product_price` float DEFAULT NULL,
  `product_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Apple Mackbook Pro', 1779, './upload/product1.png'),
(2, 'Sony E7 Headphones', 147, './upload/product2.png'),
(3, 'Sony Xpreia Z4', 459, './upload/product3.png'),
(4, 'Samsung Galaxy A50', 278, './upload/product4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `producttb`
--
ALTER TABLE `producttb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`id`, `username`, `password`, `created_at`, `role`) VALUES
(1, 'akmalgachon', '12345', '2022-07-17 16:54:59', 'teacher'),
(2, 'hasanuz', '12345', '0000-00-00 00:00:00', 'teacher'),
(3, 'aki', '5555', '0000-00-00 00:00:00', 'student'),
(5, 'hasan', '1998', '2022-07-18 01:27:00', 'student'),
(22, 'sherzod89', '1996', '2022-07-19 07:22:01', 'student'),
(23, 'bobonazar203', '2000', '2022-07-19 07:26:21', 'student'),
(24, 'hbycleverboy', '1234', '2022-07-19 07:28:00', 'student'),
(25, 'ibrohim', '1999', '2022-07-20 12:33:34', 'student'),
(26, 'eshmat', '1111', '2022-07-20 01:26:14', 'student'),
(27, 'bikbik', '12345', '2022-07-20 04:31:04', 'student'),
(28, 'newst', '7878', '0000-00-00 00:00:00', 'student'),
(29, 'ixtig', '1234', '0000-00-00 00:00:00', 'student'),
(30, 'mooo', '1200', '0000-00-00 00:00:00', 'student'),
(31, 'abdul', '12345', '0000-00-00 00:00:00', 'student'),
(32, 'ulugh', '1331', '0000-00-00 00:00:00', 'student'),
(33, 'boboish', '1551', '0000-00-00 00:00:00', 'student'),
(34, 'uyyu', '1221', '0000-00-00 00:00:00', 'student'),
(35, 'hello', '1441', '0000-00-00 00:00:00', 'student'),
(36, 'elli', '1661', '0000-00-00 00:00:00', 'student'),
(37, 'murod', '4554', '0000-00-00 00:00:00', 'student'),
(38, 'shox', '1323', '0000-00-00 00:00:00', 'student'),
(39, 'amaki', '455', '0000-00-00 00:00:00', 'student'),
(40, 'xola', '6556', '0000-00-00 00:00:00', 'student'),
(41, 'toga', '1122', '0000-00-00 00:00:00', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_code` int(11) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class_code`, `class_name`, `teacher_id`, `created_at`) VALUES
(18, 156984, 'Data Communication', 1, '2022-07-20 10:32:11'),
(21, 65243100, 'Machine Learning', 2, '2022-07-20 10:32:59'),
(22, 45400015, 'Python OpenCV', 13, '2022-07-20 10:33:20'),
(28, 123, 'Algorithm', 1, '2022-07-20 11:33:16'),
(29, 1332144, 'Algorithm', 1, '2022-07-20 14:07:33'),
(30, 1785974, 'Web Programming', 13, '2022-07-20 14:49:04'),
(31, 56410000, 'Linux', 13, '2022-07-20 14:50:53'),
(32, 2147483647, 'Java', 1, '2022-07-20 15:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `user_id`, `class_id`) VALUES
(15, 3, 18),
(19, 1, 1),
(20, 23, 21),
(21, 23, 28),
(22, 23, 22),
(23, 3, 22),
(24, 28, 18),
(25, 28, 22),
(26, 28, 31),
(27, 28, 21),
(28, 29, 18),
(29, 30, 31),
(30, 31, 18),
(31, 31, 30),
(32, 5, 21),
(33, 32, 18),
(34, 32, 22),
(35, 32, 31),
(36, 32, 29),
(37, 35, 18),
(38, 36, 31),
(39, 36, 30),
(40, 36, 32),
(41, 5, 22),
(42, 5, 29),
(43, 37, 31),
(44, 5, 30),
(45, 5, 18),
(46, 5, 31),
(47, 3, 31),
(48, 3, 30),
(49, 3, 32),
(50, 3, 21),
(51, 3, 28),
(52, 38, 22),
(53, 38, 30),
(54, 38, 31),
(55, 39, 21),
(56, 41, 31),
(57, 5, 32);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `first_name`, `last_name`, `email`, `phone`) VALUES
(1, 'Akmal', 'Abdusalomov', 'akmal@gachon.ac.kr', '010-1234-5678'),
(2, 'Hasan', 'Juraev', 'hasan@gachon.ac.kr', '010-5678-4321'),
(13, 'Ihtiyor', 'Abduazizov', 'ihtiyor@gachon.ac.kr', '010-7898-5678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_code` (`class_code`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`id`) REFERENCES `app_users` (`id`),
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE;
--
-- Database: `securelogin`
--
CREATE DATABASE IF NOT EXISTS `securelogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `securelogin`;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sessions_id` int(11) NOT NULL,
  `session_userid` int(10) DEFAULT NULL,
  `session_token` int(32) DEFAULT NULL,
  `session_serial` int(32) DEFAULT NULL,
  `session_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_username` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_username`, `user_password`, `user_status`) VALUES
(1, 'admin', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sessions_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `sessions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `shopee`
--
CREATE DATABASE IF NOT EXISTS `shopee` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopee`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Samsung', 'Samsung Galaxy 10', 152.00, './assets/products/1.png', '2020-03-28 11:08:57'),
(2, 'Redmi', 'Redmi Note 7', 122.00, './assets/products/2.png', '2020-03-28 11:08:57'),
(3, 'Redmi', 'Redmi Note 6', 122.00, './assets/products/3.png', '2020-03-28 11:08:57'),
(4, 'Redmi', 'Redmi Note 5', 122.00, './assets/products/4.png', '2020-03-28 11:08:57'),
(5, 'Redmi', 'Redmi Note 4', 122.00, './assets/products/5.png', '2020-03-28 11:08:57'),
(6, 'Redmi', 'Redmi Note 8', 122.00, './assets/products/6.png', '2020-03-28 11:08:57'),
(7, 'Redmi', 'Redmi Note 9', 122.00, './assets/products/8.png', '2020-03-28 11:08:57'),
(8, 'Redmi', 'Redmi Note', 122.00, './assets/products/10.png', '2020-03-28 11:08:57'),
(9, 'Samsung', 'Samsung Galaxy S6', 152.00, './assets/products/11.png', '2020-03-28 11:08:57'),
(10, 'Samsung', 'Samsung Galaxy S7', 152.00, './assets/products/12.png', '2020-03-28 11:08:57'),
(11, 'Apple', 'Apple iPhone 5', 152.00, './assets/products/13.png', '2020-03-28 11:08:57'),
(12, 'Apple', 'Apple iPhone 6', 152.00, './assets/products/14.png', '2020-03-28 11:08:57'),
(13, 'Apple', 'Apple iPhone 7', 152.00, './assets/products/15.png', '2020-03-28 11:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Akshay', 'Kashyap', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `advokat`
--

CREATE TABLE `advokat` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `announcer_id` int(11) NOT NULL,
  `announcement_text` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE `app_users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arbayt`
--

CREATE TABLE `arbayt` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_link` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `arbayt`
--

INSERT INTO `arbayt` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`) VALUES
(1, '37.49923630', '127.06166800', 'Mapo', '서울특별시 강남구 대치2동', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EB%8C%80%EC%B9%982%EB%8F%99&sm=hty&style=v5#/map', NULL),
(2, '37.50847010', '127.03186980', 'Seoul', '서울특별시 강남구 논현동', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EB%85%BC%ED%98%84%EB%8F%99&sm=hty&style=v5#/map', NULL),
(3, '37.53059410', '127.01317850', 'Apkujong', '서울특별시 강남구 압구정동', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EC%95%95%EA%B5%AC%EC%A0%95%EB%8F%99&sm=hty&style=v5', NULL),
(4, '37.47567250', '126.82545190', ' Bucheon ', ' 경기도 부천시 오정구 내동 10 ', ' https://m.map.naver.com/search2/search.naver?query=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EB%B6%80%EC%B2%9C%EC%8B%9C%20%EC%98%A4%EC%A0%95%EA%B5%AC%20%EB%82%B4%EB%8F%99%2010&sm=hty&style=v5 ', NULL),
(5, '37.47567250', '126.82545190', ' Gumcheon ', ' 서울특별시 금천구 가산동 148 12 ', ' https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B8%88%EC%B2%9C%EA%B5%AC%20%EA%B0%80%EC%82%B0%EB%8F%99%20148%2012&sm=hty&style=v5 ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_karta`
--

CREATE TABLE `bank_karta` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_karta`
--

INSERT INTO `bank_karta` (`id`, `tg_user_id`, `first_name`, `tg_user_name`, `address`, `description`, `phone`) VALUES
(1, NULL, NULL, NULL, 'JEJU ISLAND', 'Test uchun kiritilgan ma\'lumot. Bolaga qarash bo\'yicha 2-yillik tajribam bor. Mani xalim, qazilik osh, shashlikga zakaz olaman.', 105698745);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class_code` int(11) DEFAULT NULL,
  `class_name` varchar(30) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enaga`
--

CREATE TABLE `enaga` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `masjid`
--

CREATE TABLE `masjid` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_link` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `masjid`
--

INSERT INTO `masjid` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`) VALUES
(1, '37.53338030', '126.99751860', 'Itaewon Central Masjid', '서울특별시 용산구 우사단로10길 39', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%9A%A9%EC%82%B0%EA%B5%AC%20%EC%9A%B0%EC%82%AC%EB%8B%A8%EB%A1%9C10%EA%B8%B8%2039&sm=hty&style=v5#/map', NULL),
(2, '35.85645210', '128.53644340', 'Daegu Mosque', '대구광역시 달서구 죽전동 202-6', 'https://m.map.naver.com/search2/search.naver?query=%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%8B%AC%EC%84%9C%EA%B5%AC%20%EC%A3%BD%EC%A0%84%EB%8F%99%20202-6&sm=hty&style=v5#/map', NULL),
(3, '37.40402680', '127.17720980', 'Gyengido Kwangju Masjid', '경기도 광주시 역동 48-9', 'https://m.map.naver.com/search2/search.naver?query=%EA%B2%BD%EA%B8%B0%EB%8F%84%20%EA%B4%91%EC%A3%BC%EC%8B%9C%20%EC%97%AD%EB%8F%99%2048-9&sm=hty&style=v5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_text` text NOT NULL,
  `news_image` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_text`, `news_image`, `created_at`) VALUES
(1, 'Test yangilik 1', 'assets/7.jpg', '2022-07-17 15:21:52'),
(2, 'Test Yangilik 2', 'assets/2.jpg', '2022-07-17 15:23:22'),
(3, 'Test Yangilik 3', 'assets/5.jpg', '2022-07-17 15:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `oshxona`
--

CREATE TABLE `oshxona` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oshxona`
--

INSERT INTO `oshxona` (`id`, `lat`, `lng`, `name`, `address`, `address_link`) VALUES
(1, '37.45067200', '127.12911100', 'Gachon Oshxonasi', '가천', 'https://m.place.naver.com/place/11591489/location?subtab=location'),
(2, '37.39566300', '127.12825300', 'Imae Oshxonasi', '이매동, 대평동 451-12, 13번길', 'https://m.map.naver.com/subway/subwayStation.naver?stationId=1527#/map'),
(3, '37.40595300', '127.25779300', 'Gwangju Mosque Oshxonasi', 'null', 'https://m.place.naver.com/place/12206856/location?subtab=location'),
(4, '35.26018400', '129.09215600', 'Busan Oshxonasi', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pochta_olib_ketuvchi`
--

CREATE TABLE `pochta_olib_ketuvchi` (
  `id` int(11) NOT NULL,
  `tg_user_id` bigint(20) DEFAULT NULL,
  `tg_user_name` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `date_to_send` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `place_to_send` text DEFAULT NULL,
  `date_of_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pochta_olib_ketuvchi`
--

INSERT INTO `pochta_olib_ketuvchi` (`id`, `tg_user_id`, `tg_user_name`, `first_name`, `date_to_send`, `weight`, `telefon`, `description`, `place_to_send`, `date_of_post`) VALUES
(6, 805533361, 'Ikhtiyora', 'Ikhtiyor', 'olibketaman_1_kun', 'olibketaman_7', NULL, 'olib_ketaman_xujjat', 'olib_ketaman_kor_uzb', '2022-03-13 15:43:28'),
(9, 1228669226, 'hby_cl', '__', 'olibketaman_2_hafta', 'olibketaman_7', '010-1212-3232', 'olib_ketaman_yuk', 'olib_ketaman_kor_uzb', '2022-03-21 03:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `pochta_xizmati`
--

CREATE TABLE `pochta_xizmati` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shifoxona`
--

CREATE TABLE `shifoxona` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_link` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shifoxona`
--

INSERT INTO `shifoxona` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`) VALUES
(1, '37.46209400', '126.67857930', 'Sarang Incheon', '인천광역시 남구 주안1동 144-2/', 'https://m.map.naver.com/search2/search.naver?query=%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%82%A8%EA%B5%AC%20%EC%A3%BC%EC%95%881%EB%8F%99%20144-2&sm=hty&style=v5#/map', NULL),
(2, '37.45231590', '126.70529740', 'Gachon Hospital Incheon', '인천광역시 남동구 구월동 남동대로 783', 'https://m.map.naver.com/search2/search.naver?query=%EC%9D%B8%EC%B2%9C%EA%B4%91%EC%97%AD%EC%8B%9C%20%EB%82%A8%EB%8F%99%EA%B5%AC%20%EA%B5%AC%EC%9B%94%EB%8F%99%20%EB%82%A8%EB%8F%99%EB%8C%80%EB%A1%9C%20783&sm=hty&style=v5#/map/1/252651592', NULL),
(3, '37.58822930', '127.00213990', 'Raphael Clinic', '서울특별시 성북구 성북동1가 창경궁로43길 7', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%84%B1%EB%B6%81%EA%B5%AC%20%EC%84%B1%EB%B6%81%EB%8F%991%EA%B0%80%20%EC%B0%BD%EA%B2%BD%EA%B6%81%EB%A1%9C43%EA%B8%B8%207&sm=hty&style=v5#/map/1/11522885', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shirinlik`
--

CREATE TABLE `shirinlik` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` bigint(20) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lng` decimal(11,8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `address_link` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `lat`, `lng`, `name`, `address`, `address_link`, `phone`) VALUES
(1, '37.56473730', '126.96476500', ' Seong-dong ', ' 서울특별시 성동구 도선동 69 ', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%84%B1%EB%8F%99%EA%B5%AC%20%EB%8F%84%EC%84%A0%EB%8F%99%2069&sm=hty&style=v5#/map', 222993357),
(2, '37.47567250', '126.82545190', ' Gumcheon ', ' 서울특별시 금천구 가산동 148 12 ', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B8%88%EC%B2%9C%EA%B5%AC%20%EA%B0%80%EC%82%B0%EB%8F%99%20148%2012&sm=hty&style=v5#/place/map/1/18978815', NULL),
(3, '37.47567250', '126.82545190', ' Gumcheon ', ' 서울특별시 금천구 가산동 148 12 ', 'https://m.map.naver.com/search2/search.naver?query=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EC%84%B1%EB%8F%99%EA%B5%AC%20%EB%8F%84%EC%84%A0%EB%8F%99%2069&sm=hty&style=v5#/map', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sim_karta`
--

CREATE TABLE `sim_karta` (
  `id` int(11) NOT NULL,
  `tg_user_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sim_karta`
--

INSERT INTO `sim_karta` (`id`, `tg_user_id`, `first_name`, `tg_user_name`, `address`, `description`, `phone`) VALUES
(1, NULL, NULL, NULL, 'Nami ISLAND', 'Nami test uchun kiritilgan ma\'lumot. Bolaga qarash bo\'yicha 2-yillik tajribam bor. Mani xalim, qazilik osh, shashlikga zakaz olaman.', 105556666);

-- --------------------------------------------------------

--
-- Table structure for table `taxi`
--

CREATE TABLE `taxi` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `tg_user_id` bigint(20) NOT NULL,
  `tg_user_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `first_name` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tg_user_id`, `tg_user_name`, `first_name`) VALUES
(1, 1228669226, 'hby_cl', '__'),
(2, 824972915, 'BobonazarVakhobov', 'Bobonazar'),
(3, 412145994, '', 'IBROHIM'),
(5, 805533361, 'Ikhtiyora', 'Ikhtiyor'),
(6, 1922697053, '', 'Ibrohim'),
(11, -1001731563531, '', 'Telegram'),
(12, -1001775707032, '', ''),
(13, -1001167376883, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_input`
--

CREATE TABLE `user_input` (
  `id` bigint(20) NOT NULL,
  `tg_user_id` bigint(20) DEFAULT NULL,
  `message_in` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_input`
--

INSERT INTO `user_input` (`id`, `tg_user_id`, `message_in`) VALUES
(2, 1228669226, '/oshxona'),
(3, 1922697053, '/oshxona'),
(4, 805533361, '/arbayt'),
(5, -1001775707032, '/shifoxona'),
(6, 412145994, '/shifoxona');

-- --------------------------------------------------------

--
-- Table structure for table `uy_kerak`
--

CREATE TABLE `uy_kerak` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `tg_user_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uy_kerak`
--

INSERT INTO `uy_kerak` (`id`, `tg_user_id`, `first_name`, `tg_user_name`, `address`, `description`, `phone`) VALUES
(1, NULL, NULL, NULL, 'Uy kerakmi', 'Nami test uchun kiritilgan ma\'lumot. Bolaga qarash bo\'yicha 2-yillik tajribam bor. Mani xalim, qazilik osh, shashlikga zakaz olaman.', '010-1234-5678');

-- --------------------------------------------------------

--
-- Table structure for table `yuboruvchi`
--

CREATE TABLE `yuboruvchi` (
  `id` int(11) NOT NULL,
  `tg_user_id` int(11) DEFAULT NULL,
  `tg_user_name` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `date_to_send` text DEFAULT NULL,
  `weight` text DEFAULT NULL,
  `telefon` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `place_to_send` text DEFAULT NULL,
  `date_of_post` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yuboruvchi`
--

INSERT INTO `yuboruvchi` (`id`, `tg_user_id`, `tg_user_name`, `first_name`, `date_to_send`, `weight`, `telefon`, `description`, `place_to_send`, `date_of_post`) VALUES
(38, 805533361, 'Ikhtiyora', 'Ikhtiyor', NULL, NULL, NULL, 'yuboraman_yuk', 'yuboraman_uzb_kor', '2022-03-13 15:38:38'),
(40, 1922697053, '', 'Ibrohim', 'yuboraman_1_oy', 'yuboraman_9', '010-1234-1234', 'yuboraman_yuk', 'yuboraman_uzb_kor', '2022-03-15 08:23:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advokat`
--
ALTER TABLE `advokat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_users`
--
ALTER TABLE `app_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `arbayt`
--
ALTER TABLE `arbayt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_karta`
--
ALTER TABLE `bank_karta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_code` (`class_code`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `enaga`
--
ALTER TABLE `enaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `masjid`
--
ALTER TABLE `masjid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oshxona`
--
ALTER TABLE `oshxona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pochta_olib_ketuvchi`
--
ALTER TABLE `pochta_olib_ketuvchi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pochta_xizmati`
--
ALTER TABLE `pochta_xizmati`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shifoxona`
--
ALTER TABLE `shifoxona`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shirinlik`
--
ALTER TABLE `shirinlik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sim_karta`
--
ALTER TABLE `sim_karta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxi`
--
ALTER TABLE `taxi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_input`
--
ALTER TABLE `user_input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uy_kerak`
--
ALTER TABLE `uy_kerak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yuboruvchi`
--
ALTER TABLE `yuboruvchi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advokat`
--
ALTER TABLE `advokat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_users`
--
ALTER TABLE `app_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `arbayt`
--
ALTER TABLE `arbayt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bank_karta`
--
ALTER TABLE `bank_karta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enaga`
--
ALTER TABLE `enaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masjid`
--
ALTER TABLE `masjid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oshxona`
--
ALTER TABLE `oshxona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pochta_olib_ketuvchi`
--
ALTER TABLE `pochta_olib_ketuvchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pochta_xizmati`
--
ALTER TABLE `pochta_xizmati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shifoxona`
--
ALTER TABLE `shifoxona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shirinlik`
--
ALTER TABLE `shirinlik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sim_karta`
--
ALTER TABLE `sim_karta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxi`
--
ALTER TABLE `taxi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_input`
--
ALTER TABLE `user_input`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uy_kerak`
--
ALTER TABLE `uy_kerak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yuboruvchi`
--
ALTER TABLE `yuboruvchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `app_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE;
--
-- Database: `twitter`
--
CREATE DATABASE IF NOT EXISTS `twitter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `twitter`;

-- --------------------------------------------------------

--
-- Table structure for table `isfollowing`
--

CREATE TABLE `isfollowing` (
  `id` int(11) NOT NULL,
  `follower` int(11) NOT NULL,
  `isFollowing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `isfollowing`
--

INSERT INTO `isfollowing` (`id`, `follower`, `isFollowing`) VALUES
(23, 7, 8),
(24, 7, 7),
(30, 8, 7),
(32, 8, 8),
(35, 6, 6),
(36, 7, 6);

-- --------------------------------------------------------

--
-- Table structure for table `isgetting`
--

CREATE TABLE `isgetting` (
  `ISfollowing` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `tweet` text NOT NULL,
  `userid` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `tweet`, `userid`, `date_time`) VALUES
(1, 'Loving this website', 7, '2022-02-21 23:24:17'),
(2, 'Waseom! Rob@tamie', 8, '2022-02-21 23:27:13'),
(3, ' tessr', 6, '2022-02-25 17:34:42'),
(4, 'HasanBOy', 6, '2022-02-25 17:35:03'),
(5, 'HasanBOy', 6, '2022-02-25 17:35:32'),
(7, ' teeees', 6, '2022-02-25 18:06:04'),
(8, ' teeees', 6, '2022-02-25 18:06:10'),
(9, ' Hasanaboy Dusmatov', 6, '2022-02-25 18:08:09'),
(13, ' Salom!', 6, '2022-02-25 18:11:31'),
(23, ' sas', 6, '2022-02-25 18:15:47'),
(29, ' abba', 6, '2022-02-25 18:19:07'),
(32, ' asaaas', 6, '2022-02-25 18:20:17'),
(42, ' asasas', 6, '2022-02-25 18:23:59'),
(59, ' wqwqw', 6, '2022-02-25 18:48:01'),
(60, ' isset($_POST[\'tweetContent\']) ', 6, '2022-02-25 18:48:09'),
(64, ' qwqww', 6, '2022-02-25 18:53:21'),
(65, ' sass', 6, '2022-02-25 20:27:51'),
(66, 'nima gap edni\n', 13, '2022-06-19 19:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(6, 'hbycleverboy777@gmail.com', '5c4f63fd435b140009a36318de5d9ec9'),
(7, 'hasan@gmail.com', '6f2bbb6b510d9aece665cedefe6ad78f'),
(8, 'hbycleverboy777@gmail.com2', '116524f545f1b1fee7aafd75514779b9'),
(12, 'hbycleverboy777@gmail.com1', 'c28852848bb36164dcb285f0636e1392'),
(13, 'ibrohim@fribgariy.fribgar', '3fd6e153a3fbad472e1bce378507a74a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isfollowing`
--
ALTER TABLE `isfollowing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isgetting`
--
ALTER TABLE `isgetting`
  ADD PRIMARY KEY (`ISfollowing`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isfollowing`
--
ALTER TABLE `isfollowing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `isgetting`
--
ALTER TABLE `isgetting`
  MODIFY `ISfollowing` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `website`
--
CREATE DATABASE IF NOT EXISTS `website` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `website`;

-- --------------------------------------------------------

--
-- Table structure for table `about_pages`
--

CREATE TABLE `about_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_card_story_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_card_social_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_card_work_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_me_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_pages`
--

INSERT INTO `about_pages` (`id`, `title`, `short_title`, `long_description`, `skill_category`, `services_title`, `services_description`, `short_card_story_title`, `short_card_social_title`, `short_card_work_title`, `about_me_image`, `created_at`, `updated_at`) VALUES
(1, 'Mening Portfolio Websaytim Haqida', 'Haksenguz - bu mening portfolio websaytim', '<p>Bugun bollarga lavash olib beraman<br /><br />BEKZOD</p>', '', '', '', '', '', '', 'upload/home_about/1744996772823345.jpg', NULL, '2022-09-25 17:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_title`, `blog_image`, `blog_tags`, `blog_description`, `created_at`, `updated_at`) VALUES
(9, 9, 'E-7 Visa Issuance', 'upload/home_blogs/1740284431443802.jpg', 'home, tech,work,e-7,visa,ish,firma ishi', '<p class=\"dep_info mgb_30\">Application must be submitted by a foreigner or the sponsor on behalf of the foreigner</p>\r\n<p class=\"h4_dep mgb_15\">3. Applicable Status of Stay&nbsp;<span class=\"txt_51\">(as of Dec.8.2014)ds</span></p>\r\n<ul class=\"txt_ul_box mgb_7\">\r\n<li class=\"bg_dot\">Professor (E-1), Researcher (E-3), Technical Instructor/Technician (E-4), and Professional (E-5) Visa for the applicant and Dependent Family (F-3) Visa for his/her accompanying family members.</li>\r\n<li class=\"bg_dot\">Foreign Notional of Special Ability (E-7) visa for the applicant and Dependent Family (F-3) Visa for his/her accompanying family members.<br />- Qualification : the applicant must be an expert in advanced science and technology and have an official employment recommendation letter (a.k.a. GOLD CARD)</li>\r\n<li class=\"bg_dot\">Short-term General (C-3-1) Visa for a prospective investor invited by a promotion agency of the Immigrant Investor Scheme for Public Business and his/her accompanying family members</li>\r\n<li class=\"bg_dot\">Short-term Group Tourist (C-3-2) Visa for Chinese group tourists who can apply for their Visa through a designated travel agency</li>\r\n<li class=\"bg_dot\">Short-term Medical Tourist (C-3-3) or Recuperation &amp; Treatment (G-1-10) Visa for foreign patients and their caregivers who are invited by an &lsquo;outstanding medical facilitator&rsquo; designated as e-Visa agency.</li>\r\n<li class=\"bg_dot\">Business Visitor (General) (C-3-4) visa for an invitee of a domestic company\r\n<p>- Qualifications : A foreigner who has entered Korea 3 times or more with a Short-term (C-3) Visa since the implementation of the fingerprint confirmation system for foreigner on Jan. 1, 2012, and who has no history of illegal stay or criminal cases</p>\r\n</li>\r\n</ul>\r\n<p class=\"mgb_30\"><span class=\"red_txt_l\">※ Please refer to the Visa Navigator for more details.</span></p>\r\n<p class=\"h4_dep mgb_15\">4. Required Documents</p>\r\n<ul class=\"txt_ul_box mgb_30\">\r\n<li class=\"bg_dot\">Visa Application Form (electronic form on the Visa Portal)</li>\r\n<li class=\"bg_dot\">Scanned image files of passport pages</li>\r\n<li class=\"bg_dot\">Digital Photograph (in natural color, size: 3.5cm x 4.5cm)</li>\r\n<li class=\"bg_dot\">Fee (credit card for e-Payment)</li>\r\n<li class=\"bg_dot\">Required documents for respective status of stay (soft copy)\r\n<p class=\"red_txt_l\">- Please refer to the guide on required documents for each type of visa on the Visa Navigator or to the Visa Information on the website of a respective diplomatic office.</p>\r\n</li>\r\n</ul>', '2022-08-04 16:56:05', '2022-08-05 16:33:29'),
(12, 11, 'Thailand Tour For 2 Weeks', 'upload/home_blogs/1740373284576295.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 16:28:22', '2022-08-05 16:55:33'),
(13, 8, 'New Elections Is Coming', 'upload/home_blogs/1740375085352372.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 16:56:59', NULL),
(14, 11, 'Travel Around Seoul', 'upload/home_blogs/1740375110944502.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 16:57:24', NULL),
(15, 11, 'Dubai The Most Beatiful Attractions', 'upload/home_blogs/1740375150121548.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 16:58:01', NULL),
(16, 9, 'Seoul Foreign Clubs', 'upload/home_blogs/1740380015475958.jpg', 'home, tech,club', '<div>\r\n<p><strong>lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<div>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 18:15:21', '2022-08-05 18:16:08'),
(17, 8, 'Everland', 'upload/home_blogs/1740384672908462.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 19:29:23', '2022-08-05 19:30:26'),
(18, 8, 'Deleted', 'upload/home_blogs/1740384928811883.jpg', 'home, tech', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<p>&nbsp;</p>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>', '2022-08-05 19:33:27', NULL),
(19, 11, 'Travel Dubai', 'upload/home_blogs/1740512904306692.jpeg', 'home, tech,futball', '<div class=\"title-image-card__card-header\">\r\n<div class=\"title-image-card__image-container\"><img class=\"title-image-card__image loading\" title=\"Tolerance Bridge\" src=\"https://c.ekstatic.net/ecl/destinations/middle-east/united-arab-emirates/morning-view-of-dubai-water-canal-w768x480.jpg?h=cPy2CSDLLTCvSiJY05TfwQ\" alt=\"morning view of Dubai Water Canal\" aria-label=\"morning view of Dubai Water Canal\" data-was-processed=\"true\" /></div>\r\n<div class=\"title-image-card__card-header__content\"><span class=\"preTitle\">TOURISTS</span><header class=\"\">\r\n<h2 class=\"enhanced-text-title reset-h\"><span class=\"enhanced-text-title__title\">Travelling to Dubai</span></h2>\r\n</header></div>\r\n</div>\r\n<div class=\"nav-text-block-full-width__brief\">\r\n<div>\r\n<div class=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">\r\n<div id=\"accordion-item-title-nav-text-block-full-width__0\" class=\"nav-text-block-full-width__item-title open\" aria-label=\"Before you book\" aria-expanded=\"true\" aria-controls=\"accordion__item-body-nav-text-block-full-width__0\">\r\n<h3 class=\"accordion__item--headding\"><span class=\"accordion__item--headding-text\">Before you book</span></h3>\r\n<button id=\"accordion__expandbutton--nav-text-block-full-width__0\" class=\"accordion__show-more-less call-to-action\" tabindex=\"0\" type=\"button\" aria-expanded=\"true\" aria-label=\"Before you book\"></button></div>\r\n<div>\r\n<div id=\"accordion__item-body-nav-text-block-full-width__0\" class=\"accordion__item-body undefined open-item\" aria-hidden=\"false\" aria-labelledby=\"accordion-item-title-nav-text-block-full-width__0\">\r\n<div class=\"accordion__item-body-wrapper\">\r\n<div class=\"nav__body-animation\">\r\n<div class=\"enhanced-rich-text nav-text-block-full-width__enhaced-rich-text\">\r\n<p><a title=\"\" href=\"https://www.visitdubai.com/en/travel-planning/travel-tools/visa-and-entry-information\" target=\"_blank\" rel=\"noopener\" data-id=\"pagebody_link\" data-link=\"Visit Dubai Visa and entry information - body link | External link\"><span class=\"link__label-text\">Check if you need a visa<span class=\"hidden-control\">(Opens an external website in a new tab)</span></span></a>. Depending on your nationality you can get a visa on arrival, or you can&nbsp;<a href=\"https://www.emirates.com/kr/english/before-you-fly/visa-passport-information/uae-visa-information/\" data-id=\"pagebody_link\" data-link=\"UAE Visa Information - Body link\">apply for your prearranged visit visa<span class=\"hidden-control\">(Opens page in the same tab)</span></a>&nbsp;from Dubai Immigration before you travel.</p>\r\n<p>With immediate effect, Nationals of Gulf Cooperation Council (GCC) countries i.e., Bahrain, Kuwait, Oman, Qatar &amp; Saudi Arabia when traveling within GCC countries are allowed to enter Dubai with their National Identity Card (ID Card).</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<hr class=\"nav-text-block-full-width__seperator\" /></div>\r\n<div>\r\n<div class=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">\r\n<div id=\"accordion-item-title-nav-text-block-full-width__1\" class=\"nav-text-block-full-width__item-title open\" aria-label=\"Before you travel\" aria-expanded=\"true\" aria-controls=\"accordion__item-body-nav-text-block-full-width__1\">\r\n<h3 class=\"accordion__item--headding\"><span class=\"accordion__item--headding-text\">Before you travel</span></h3>\r\n<button id=\"accordion__expandbutton--nav-text-block-full-width__1\" class=\"accordion__show-more-less call-to-action\" tabindex=\"0\" type=\"button\" aria-expanded=\"true\" aria-label=\"Before you travel\"></button></div>\r\n<div>\r\n<div id=\"accordion__item-body-nav-text-block-full-width__1\" class=\"accordion__item-body undefined open-item\" aria-hidden=\"false\" aria-labelledby=\"accordion-item-title-nav-text-block-full-width__1\">\r\n<div class=\"accordion__item-body-wrapper\">\r\n<div class=\"nav__body-animation\">\r\n<div class=\"enhanced-rich-text nav-text-block-full-width__enhaced-rich-text\">\r\n<p><a href=\"https://smart.gdrfad.gov.ae/Smart_OTCServicesPortal/ReturnPermitService.aspx\" target=\"_blank\" rel=\"noopener\" data-id=\"pagebody_link\" data-link=\"GDRFA entry approval - body link | External\"><span class=\"link__label-text\">GDRFA<span class=\"hidden-control\">(Opens an external website in a new tab)</span></span></a>&nbsp;or&nbsp;<a title=\"\" href=\"https://smartservices.icp.gov.ae/echannels/web/client/guest/index.html#/residents-entry-confirmation\" target=\"_blank\" rel=\"noopener\" data-id=\"pagebody_link\" data-link=\"ICA Entry Permission Residents outside UAE - body link | External link\"><span class=\"link__label-text\">ICA<span class=\"hidden-control\">(Opens an external website in a new tab)</span></span></a>&nbsp;approval is not required for tourists travelling to the UAE.</p>\r\n<p>With immediate effect, Nationals of Gulf Cooperation Council (GCC) countries i.e., Bahrain, Kuwait, Oman, Qatar &amp; Saudi Arabia are allowed to enter Dubai when traveling with their National Identity Card (ID Card).</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<hr class=\"nav-text-block-full-width__seperator\" /></div>\r\n<div>\r\n<div class=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">\r\n<div id=\"accordion-item-title-nav-text-block-full-width__2\" class=\"nav-text-block-full-width__item-title open\" aria-label=\"Requirements for all passengers arriving in Dubai\" aria-expanded=\"true\" aria-controls=\"accordion__item-body-nav-text-block-full-width__2\">\r\n<h3 class=\"accordion__item--headding\"><span class=\"accordion__item--headding-text\">Requirements for all passengers arriving in Dubai</span></h3>\r\n<button id=\"accordion__expandbutton--nav-text-block-full-width__2\" class=\"accordion__show-more-less call-to-action\" tabindex=\"0\" type=\"button\" aria-expanded=\"true\" aria-label=\"Requirements for all passengers arriving in Dubai\"></button></div>\r\n<div>\r\n<div id=\"accordion__item-body-nav-text-block-full-width__2\" class=\"accordion__item-body undefined open-item\" aria-hidden=\"false\" aria-labelledby=\"accordion-item-title-nav-text-block-full-width__2\">\r\n<div class=\"accordion__item-body-wrapper\">\r\n<div class=\"nav__body-animation\">\r\n<div class=\"enhanced-rich-text nav-text-block-full-width__enhaced-rich-text\">\r\n<p>From 26 February 2022, passengers travelling to Dubai from all countries (GCC included) must fulfil one of the below requirements:</p>\r\n<ol>\r\n<li>Present a valid vaccination certificate(s) reflecting that the passenger is fully vaccinated with a vaccine approved by the WHO or the United Arab Emirates (UAE), and includes a QR code</li>\r\n<li>Present a valid negative COVID‑19 PCR test certificate issued within 48 hours from the time of sample collection to the time of boarding and the certificate must be issued by an approved health service provider with a QR code</li>\r\n<li>Present a valid medical certificate issued by the relevant authorities that the passenger has recovered from COVID‑19 within 1 month from the date of recovery to the date of arrival</li>\r\n</ol>\r\n<p>Note:</p>\r\n<ul>\r\n<li>Printed or digital PCR test certificates or vaccination certificates are accepted in English or Arabic and must include a QR code. SMS certificates are not accepted.</li>\r\n<li>COVID‑19 vaccination certificates without a QR code will be accepted for travel to Dubai as long as the vaccination certificate is issued by test centres/organisations recognised/approved by the national health authorities of the country.</li>\r\n<li>COVID‑19 PCR test or vaccination certificates in other languages are acceptable if they can be validated at the departure point.</li>\r\n<li>PCR tests must be based on a molecular diagnostic test intended for the qualitative detection of nucleic acid for SARS‑COV‑2 viral RNA. Rapid antigen, antibody or any form of rapid lateral flow tests and home test kits will not be accepted.</li>\r\n<li>NHS COVID‑19 test certificates for travel from the United Kingdom to Dubai will not be accepted.</li>\r\n</ul>\r\n<p>For transit passenger(s), the rules and conditions for entry at the final destination will apply.</p>\r\n</div>\r\n<div id=\"139292\" class=\"country-text-block__wrapper nav-text-block-full-width__addition-block\" data-navigation-target=\"false\">\r\n<div class=\"country-text-block__wrapper--tile\">Indian nationals</div>\r\n<div class=\"country-text-block__wrapper--title\">Indian Nationals with a normal passport who are travelling to or from India via Dubai can obtain a visa on arrival in Dubai for a maximum stay of 14 days provided they:</div>\r\n<div class=\"country-text-block__wrapper--body\">\r\n<div class=\"enhanced-rich-text\">\r\n<ul>\r\n<li>Have a visitor visa or a green card issued by the United States, or</li>\r\n<li>A residence visa issued by the United Kingdom or European Union</li>\r\n</ul>\r\n<p>The visa issued by United States, United Kingdom or European Union has to be valid for a minimum of 6 months.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<hr class=\"nav-text-block-full-width__seperator\" /></div>\r\n<div>\r\n<div class=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">\r\n<div id=\"accordion-item-title-nav-text-block-full-width__3\" class=\"nav-text-block-full-width__item-title open\" aria-label=\"COVID-19 vaccination and PCR certificate exemptions for UAE nationals\" aria-expanded=\"true\" aria-controls=\"accordion__item-body-nav-text-block-full-width__3\">\r\n<h3 class=\"accordion__item--headding\"><span class=\"accordion__item--headding-text\">COVID-19 vaccination and PCR certificate exemptions for UAE nationals</span></h3>\r\n<button id=\"accordion__expandbutton--nav-text-block-full-width__3\" class=\"accordion__show-more-less call-to-action\" tabindex=\"0\" type=\"button\" aria-expanded=\"true\" aria-label=\"COVID-19 vaccination and PCR certificate exemptions for UAE nationals\"></button></div>\r\n<div>\r\n<div id=\"accordion__item-body-nav-text-block-full-width__3\" class=\"accordion__item-body undefined open-item\" aria-hidden=\"false\" aria-labelledby=\"accordion-item-title-nav-text-block-full-width__3\">\r\n<div class=\"accordion__item-body-wrapper\">\r\n<div class=\"nav__body-animation\">\r\n<div class=\"enhanced-rich-text nav-text-block-full-width__enhaced-rich-text\">\r\n<p>UAE nationals arriving from all countries to Dubai are&nbsp;<strong>not</strong>&nbsp;required to present any PCR or vaccination certificate.</p>\r\n<p>An exemption from this requirement is also extended to the below categories of passengers travelling to Dubai from all destinations:</p>\r\n<ul>\r\n<li>First degree relatives of a UAE national travelling on the same flight</li>\r\n<li>Domestic workers travelling with a UAE national sponsor</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<hr class=\"nav-text-block-full-width__seperator\" /></div>\r\n<div>\r\n<div class=\"accordion\" role=\"tablist\" aria-multiselectable=\"false\">\r\n<div id=\"accordion-item-title-nav-text-block-full-width__4\" class=\"nav-text-block-full-width__item-title open\" aria-label=\"COVID-19 PCR test and vaccination exemptions\" aria-expanded=\"true\" aria-controls=\"accordion__item-body-nav-text-block-full-width__4\">\r\n<h3 class=\"accordion__item--headding\"><span class=\"accordion__item--headding-text\">COVID-19 PCR test and vaccination exemptions</span></h3>\r\n<button id=\"accordion__expandbutton--nav-text-block-full-width__4\" class=\"accordion__show-more-less call-to-action\" tabindex=\"0\" type=\"button\" aria-expanded=\"true\" aria-label=\"COVID-19 PCR test and vaccination exemptions\"></button></div>\r\n<div>\r\n<div id=\"accordion__item-body-nav-text-block-full-width__4\" class=\"accordion__item-body undefined open-item\" aria-hidden=\"false\" aria-labelledby=\"accordion-item-title-nav-text-block-full-width__4\">\r\n<div class=\"accordion__item-body-wrapper\">\r\n<div class=\"nav__body-animation\">\r\n<div class=\"enhanced-rich-text nav-text-block-full-width__enhaced-rich-text\">\r\n<ul>\r\n<li>Children below 16 years old.</li>\r\n<li>Passengers with moderate to severe disabilities:\r\n<ul>\r\n<li>Moderate or severe disability includes neurological disorders and intellectual or developmental disabilities. For example: Acute spinal cord injury, Alzheimer\'s disease, Amyotrophic lateral sclerosis (ALS), Ataxia, Autism spectrum, Bell\'s palsy, Brain tumours, Cerebral aneurysm, Cerebral palsy, Down Syndrome, Epilepsy and seizures.</li>\r\n<li>All other passengers, including those who are visually impaired, hearing impaired or physically challenged must hold a negative COVID‑19 RT PCR test certificate as per the requirements.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2022-08-07 05:27:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category`, `created_at`, `updated_at`) VALUES
(8, 'Social', '2022-08-04 16:41:57', NULL),
(9, 'Foreigner\'s life', '2022-08-04 16:42:30', NULL),
(10, 'Work', '2022-08-04 16:55:00', NULL),
(11, 'Travel', '2022-08-05 16:27:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'KHASAN', 'hasan@gmail.com', 'Used Computer Parts From Germany', '+998 1065075844', 'good', '2022-08-06 03:17:26', NULL),
(4, 'Husan', 'hbycleverboy777@gmail.com2', 'mm-Wave Technology for 5G', '102210456', 'If the malicious website automatically submits the form when the page is loaded, the malicious user only needs to lure an unsuspecting user of your application to visit their website and their email address will be changed in your application.\r\n\r\nTo prevent this vulnerability, we need to inspect every incoming POST, PUT, PATCH, or DELETE request for a secret session value that the malicious application is unable to access.If the malicious website automatically submits the form when the page is loaded, the malicious user only needs to lure an unsuspecting user of your application to visit their website and their email address will be changed in your application.\r\n\r\nTo prevent this vulnerability, we need to inspect every incoming POST, PUT, PATCH, or DELETE request for a secret session value that the malicious application is unable to access.', '2022-08-06 04:02:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_us_short_descr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_connect_short_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_connect_icon_url1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_connect_icon_url2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_connect_icon_url3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_connect_icon_url4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `phone_number`, `contact_us_short_descr`, `address_country`, `address`, `email`, `social_connect_short_desc`, `social_connect_icon_url1`, `social_connect_icon_url2`, `social_connect_icon_url3`, `social_connect_icon_url4`, `copyright`, `created_at`, `updated_at`) VALUES
(1, '+8210 6507 5844', '<p>Hakseng.uz - Sizga yordam berganimizdan doimi mamnunmiz!</p>', 'Janubiy Koreya', 'Seongnam-si, Sujeng-gu, Taepyong-dong 4681, 1-qavat', 'info@haksenguz.com', 'Bizni ijtimoiy tarmoqlarda ham kuzating!', 'https://www.facebook.com/haksenguz/', 'http://haksenguz.com/', 'https://t.me/haksenguz_official', 'https://www.instagram.com/haksenguz/', 'Copyright @ Haksenguz 2022 All rights Reserved', NULL, '2022-08-06 00:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `home_slides`
--

CREATE TABLE `home_slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_slide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_slides`
--

INSERT INTO `home_slides` (`id`, `title`, `short_title`, `home_slide`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'Koreya Hayotiga Oid Eng Qiziqarli Yangiliklar va Ma\'lumotlar Portali', 'O\'qish, ish, viza, immigratsiya, halol oshxona, masjida haqida ma\'lumotlarni bizdan olishingiz mumkin', 'upload/home_slide/1739830117168133.jpg', 'https://www.youtube.com/watch?v=bivTZ6ph0Mw&ab_channel=Yazid41', NULL, '2022-07-30 16:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_07_28_102504_create_home_slides_table', 1),
(16, '2022_07_30_100356_create_about_pages_table', 1),
(17, '2022_07_31_053025_create_multi_images_table', 2),
(18, '2022_07_31_143650_create_portfolios_table', 3),
(19, '2022_08_01_080216_create_blog_categories_table', 4),
(20, '2022_08_01_103237_create_blogs_table', 5),
(21, '2022_08_06_061928_create_footers_table', 6),
(22, '2022_08_06_112324_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `multi_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `multi_image`, `created_at`, `updated_at`) VALUES
(27, 'upload/about_multi_images/1739878074658389.jpg', '2022-07-31 03:59:28', '2022-07-31 05:17:13'),
(28, 'upload/about_multi_images/1739878932943152.jpg', '2022-07-31 03:59:28', '2022-07-31 05:30:52'),
(30, 'upload/about_multi_images/1739878709106384.jpeg', '2022-07-31 05:27:18', NULL),
(31, 'upload/about_multi_images/1739878709208335.jpg', '2022-07-31 05:27:18', NULL),
(32, 'upload/about_multi_images/1739878709271587.png', '2022-07-31 05:27:18', NULL),
(33, 'upload/about_multi_images/1739878709368371.jpg', '2022-07-31 05:27:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `portfolio_name`, `portfolio_title`, `portfolio_image`, `portfolio_description`, `created_at`, `updated_at`) VALUES
(2, 'Airport Check-in', 'Check-in Application', 'upload/home_portfolio/1739926635502649.png', '<p>Airport check-in application using PHP, HTML, CSS, Javascript, jQuery, MySQL.</p>', '2022-07-31 16:30:00', '2022-07-31 19:20:42'),
(4, 'Dairy Application', 'The Secret Dairy', 'upload/home_portfolio/1739930978394504.jpg', '<p>Dairy Application using PHP, MySQL, jQuery, HTML, CSS.</p>', '2022-07-31 19:18:07', NULL),
(5, 'Weather Forecast Application', 'Weather App', 'upload/home_portfolio/1739931057709078.png', '<p dir=\"auto\">Halo is a weather app written in python. You can quickly view the weather in your city and checkout the forecast and historic temperature trends. Halo is smart enough to identify your location based on your IP.</p>\r\n<p dir=\"auto\"><a id=\"user-content-prerequisites\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#prerequisites\" aria-hidden=\"true\"></a>Prerequisites</p>\r\n<ol dir=\"auto\">\r\n<li>Python 3</li>\r\n<li>Pip</li>\r\n</ol>\r\n<h2 dir=\"auto\"><a id=\"user-content-installation\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#installation\" aria-hidden=\"true\"></a>Installation</h2>\r\n<h3 dir=\"auto\"><a id=\"user-content-snap\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#snap\" aria-hidden=\"true\"></a>Snap</h3>\r\n<p dir=\"auto\">The easiest way to install halo is via snap.</p>\r\n<p dir=\"auto\">To install the latest stable version,</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre><span class=\"pl-e\">user@ubuntu:~</span>$ <span class=\"pl-s1\">sudo snap install halo-weather</span></pre>\r\n</div>\r\n<p dir=\"auto\">To install the latest build,</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre><span class=\"pl-e\">user@ubuntu:~</span>$ <span class=\"pl-s1\">sudo snap install --edge halo-weather</span></pre>\r\n</div>\r\n<h3 dir=\"auto\"><a id=\"user-content-pypi\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#pypi\" aria-hidden=\"true\"></a>Pypi</h3>\r\n<p dir=\"auto\">Make sure the following binaries are present:</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre><span class=\"pl-e\">user@ubuntu:~</span>$ <span class=\"pl-s1\">sudo apt install python3-setuptools pkg-config libcairo2-dev libgirepository1.0-dev gir1.2-gtk-3.0 python3-dev</span></pre>\r\n</div>\r\n<p dir=\"auto\">To install the package package using pip,</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre><span class=\"pl-e\">user@ubuntu:~</span>$ <span class=\"pl-s1\">pip3 install halo-weather</span></pre>\r\n</div>\r\n<h2 dir=\"auto\"><a id=\"user-content-usage\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#usage\" aria-hidden=\"true\"></a>Usage</h2>\r\n<p dir=\"auto\">After installing it, you can directly launch it either by searching for Halo among your installed apps, or from terminal by running</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre>$ <span class=\"pl-s1\">halo-weather</span></pre>\r\n</div>\r\n<h3 dir=\"auto\"><a id=\"user-content-running-directly-from-source\" class=\"anchor\" href=\"https://github.com/cijo7/Halo#running-directly-from-source\" aria-hidden=\"true\"></a>Running directly from Source</h3>\r\n<p dir=\"auto\">You can directly run this from source. First, you will need to clone the source code and install the dependencies manually by running</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre>$ <span class=\"pl-s1\">git clone https://github.com/cijo7/Halo.git <span class=\"pl-k\">&amp;&amp;</span> <span class=\"pl-c1\">cd</span> Halo</span>\r\n$ <span class=\"pl-s1\">pip3 install -r requirements.txt</span></pre>\r\n</div>\r\n<p dir=\"auto\">Then run the python module by executing</p>\r\n<div class=\"highlight highlight-text-shell-session notranslate position-relative overflow-auto\">\r\n<pre>$ <span class=\"pl-s1\">python3 -m halo</span></pre>\r\n</div>', '2022-07-31 19:19:22', '2022-08-06 12:36:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `profile_image`) VALUES
(1, 'Hasan', 'hbycleverboy777@gmail.com', 'hasan', '2022-07-30 16:22:41', '$2y$10$OULqG.7urBZiBFHgBBvw5eqFlP39p5eMW0KiUlctZtSR6iJQ8jXWG', 'HzeNSZHXd72Ns1D8jUQX2XlrviwmbrkgMcAFr0Mb0YpNgIJHjt1ZiYau5xtQ', '2022-07-30 16:22:13', '2022-07-30 16:34:28', '202207310134286.jpg'),
(2, 'Bobonazar', 'bobo@gmail.com', 'bobo', '2022-07-30 16:42:53', '$2y$10$CdRQrtnhjoFHQddy5vpXz.4GIUrELG0haoNW27OI1tAkPxn0Ri7gC', NULL, '2022-07-30 16:42:32', '2022-07-30 16:43:07', '20220731014307tickets.png'),
(3, 'Bekzod', 'beck@email.com', 'beck', '2022-09-25 17:13:51', '$2y$10$OlD778LMljTXfEtlyeHvOe5DFHx6RI.7BKkeTs5LGdEITJpNsn4GC', NULL, '2022-09-25 17:13:19', '2022-09-25 17:13:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_pages`
--
ALTER TABLE `about_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slides`
--
ALTER TABLE `home_slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_pages`
--
ALTER TABLE `about_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_slides`
--
ALTER TABLE `home_slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
