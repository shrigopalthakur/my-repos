-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2025 at 03:34 AM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `educationportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `reference_type` enum('Individual','Company/Agency','Partnership') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `field_of_work` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `upload_photo` varchar(255) DEFAULT NULL,
  `national_id` varchar(255) DEFAULT NULL,
  `upload_id` varchar(500) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `user_id`, `reference_type`, `address`, `phone_number`, `email`, `field_of_work`, `percentage`, `target`, `upload_photo`, `national_id`, `upload_id`, `status`, `created_at`, `updated_at`) VALUES
(21, 'Ribhu', '59', NULL, NULL, '8189897867', 'ribhu.d@wikreate.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-31 22:20:32', '2024-12-31 22:20:32'),
(22, 'Manish', '60', NULL, NULL, '9898767898', 'manish.t@wikreate.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-31 22:37:47', '2024-12-31 22:37:47'),
(23, 'osama', '61', NULL, NULL, '07871316771', 'osamasharar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-03 23:36:14', '2025-01-03 23:36:14'),
(24, 'HADI', '62', NULL, NULL, '07871316771', 'info@justpress.co.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-08 17:34:14', '2025-01-08 17:34:14'),
(25, 'Testing From Website', '63', NULL, NULL, '9898987878', 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-14 22:36:57', '2025-01-14 22:36:57'),
(26, 'React test', '64', NULL, NULL, '4545445454', 'react.t@wikreate.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-18 17:26:37', '2025-03-18 17:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `agent_comissions`
--

CREATE TABLE `agent_comissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `final_amount` varchar(255) DEFAULT NULL,
  `commision_amount` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `student_id` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agent_comissions`
--

INSERT INTO `agent_comissions` (`id`, `agent_id`, `amount`, `final_amount`, `commision_amount`, `status`, `student_id`, `created_at`, `updated_at`) VALUES
(12, '60', NULL, NULL, '5677', '1', '47', '2025-01-03 00:06:49', '2025-01-03 00:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details_agents`
--

CREATE TABLE `bank_details_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `upi` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `icon` varchar(300) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `imgmobicon` varchar(500) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `heading1` longtext DEFAULT NULL,
  `heading2` longtext DEFAULT NULL,
  `long_description2` longtext DEFAULT NULL,
  `heading3` longtext DEFAULT NULL,
  `long_description3` longtext DEFAULT NULL,
  `heading4` longtext DEFAULT NULL,
  `long_description4` longtext DEFAULT NULL,
  `heading5` longtext DEFAULT NULL,
  `long_description5` longtext DEFAULT NULL,
  `heading6` longtext DEFAULT NULL,
  `long_description6` longtext DEFAULT NULL,
  `heading7` longtext DEFAULT NULL,
  `long_description7` longtext DEFAULT NULL,
  `heading8` longtext DEFAULT NULL,
  `long_description8` longtext DEFAULT NULL,
  `heading9` longtext DEFAULT NULL,
  `heading10` longtext DEFAULT NULL,
  `heading11` longtext DEFAULT NULL,
  `heading12` longtext DEFAULT NULL,
  `heading13` longtext DEFAULT NULL,
  `heading14` longtext DEFAULT NULL,
  `heading15` longtext DEFAULT NULL,
  `heading16` longtext DEFAULT NULL,
  `heading17` longtext DEFAULT NULL,
  `long_description9` longtext DEFAULT NULL,
  `long_description10` longtext DEFAULT NULL,
  `long_description11` longtext DEFAULT NULL,
  `long_description12` longtext DEFAULT NULL,
  `long_description13` longtext DEFAULT NULL,
  `long_description14` longtext DEFAULT NULL,
  `long_description15` longtext DEFAULT NULL,
  `long_description16` longtext DEFAULT NULL,
  `long_description17` longtext DEFAULT NULL,
  `other` longtext DEFAULT NULL,
  `long_other` longtext DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `yt_link` varchar(300) DEFAULT NULL,
  `featured` enum('1') DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `trending_post` enum('1','0') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `slug`, `icon`, `image`, `imgmobicon`, `short_description`, `long_description`, `heading1`, `heading2`, `long_description2`, `heading3`, `long_description3`, `heading4`, `long_description4`, `heading5`, `long_description5`, `heading6`, `long_description6`, `heading7`, `long_description7`, `heading8`, `long_description8`, `heading9`, `heading10`, `heading11`, `heading12`, `heading13`, `heading14`, `heading15`, `heading16`, `heading17`, `long_description9`, `long_description10`, `long_description11`, `long_description12`, `long_description13`, `long_description14`, `long_description15`, `long_description16`, `long_description17`, `other`, `long_other`, `title`, `keyword`, `description`, `yt_link`, `featured`, `status`, `trending_post`, `created_at`, `updated_at`) VALUES
(196, 'Education and Psychology', 'education-and-psychology', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/678663962da04bloglist.jpg', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/678663976fc26bloglist2.jpg', NULL, 'jgasdhfytasdjasvdjfashfd', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2025-01-15 01:46:07', '2025-01-15 01:46:07'),
(198, 'Lorem ipsum dolor sit amet eiusmod', 'testing', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/6786642c22b5dbloglist.jpg', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/6786642d31eb7bloglist2.jpg', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2025-01-15 01:48:37', '2025-01-15 01:48:37'),
(199, 'Testing Blog', 'testing-blog', NULL, NULL, NULL, 'testing.......', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '2025-01-15 19:00:38', '2025-01-15 19:00:38'),
(200, 'Unlocking Your Future: A Comprehensive Guide to University Admissions', 'comprehensive-guide-to-university-admissions', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/6787941af01afbloglist.jpg', 'https://justpress.s3.ap-south-1.amazonaws.com/blog/6787941be6fefbloglist2.jpg', NULL, 'In this guide, we\'ll break down the university admission process and share tips to help you secure your spot at your dream institution.', '<p>The journey to university is a monumental step toward achieving your academic and career goals. But with countless options and requirements, navigating the admission process can feel overwhelming. Whether you\'re a high school student or a professional looking to upskill, understanding the process is the key to making informed decisions.</p><p>In this guide, we\'ll break down the university admission process and share tips to help you secure your spot at your dream institution.</p>', NULL, 'Choosing the Right University', '<p>Your university experience can shape your future, so it’s essential to pick the right fit.</p><p>&nbsp;</p><ul><li><strong>Research Programs :</strong> Look into courses that align with your career aspirations. Consider their curriculum, faculty, and specializations.</li><li><strong>Location Matters</strong>: Decide whether you prefer a campus close to home or studying abroad.</li></ul>', 'Understanding Admission Requirements', '<p>Universities often have a set of prerequisites, including academic qualifications, language proficiency, and entrance exams.</p><p>&nbsp;</p><ul><li><strong>Academic Records : </strong>Ensure your grades meet the minimum GPA or percentage required.</li><li><strong>Standardized Tests</strong>: Exams like the SAT, ACT, GRE, or GMAT may be needed, depending on the program and university.</li></ul><p>Pro Tip: Keep a checklist of deadlines and documents to ensure you don’t miss any crucial requirements.</p>', 'Crafting a Strong Application', '<p>A compelling application sets you apart from other candidates. Focus on these elements:</p><p>&nbsp;</p><ul><li><strong>Personal Statement</strong>: Share your story, goals, and why you\'re a perfect fit for the program. Be authentic and avoid clichés.</li><li><strong>Letters of Recommendation: </strong>Request these from mentors or teachers who know you well.</li></ul>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '2025-01-15 23:25:24', '2025-01-15 23:25:24'),
(201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2025-03-17 21:51:41', '2025-03-17 21:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `job_location` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `job_location` varchar(255) NOT NULL,
  `job_type` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `college_sessions`
--

CREATE TABLE `college_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `unversity_id` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `opening_date` varchar(500) DEFAULT NULL,
  `closing_date` varchar(500) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `college_sessions`
--

INSERT INTO `college_sessions` (`id`, `name`, `unversity_id`, `school`, `opening_date`, `closing_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Testing Session', NULL, 'Testing School', '2024', '2036', '1', '2024-12-31 22:05:44', '2024-12-31 22:05:44'),
(5, 'Next session', NULL, 'testing schol', '2027', '2035', '1', '2025-01-01 00:35:41', '2025-01-01 00:35:41');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `university_id` varchar(255) DEFAULT NULL,
  `department_id` varchar(255) NOT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `duration` varchar(255) NOT NULL,
  `eligibility` varchar(255) DEFAULT NULL,
  `program_nature` varchar(255) NOT NULL,
  `course_fee` varchar(500) DEFAULT NULL,
  `no_of_seat` varchar(500) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `university_id`, `department_id`, `school_name`, `name`, `slug`, `duration`, `eligibility`, `program_nature`, `course_fee`, `no_of_seat`, `description`, `status`, `created_at`, `updated_at`) VALUES
(437, NULL, '184', 'Testing School', 'Testing Course', 'testing-course', '3 Year', 'Post Graduation', 'Semester', '5000', '500', NULL, '1', '2025-01-02 17:31:48', '2025-01-16 01:18:02'),
(438, NULL, '188', 'sdasd', 'Course Two', 'course-two', '3 Year', 'Under Graduation', 'Yearly', '9000', '40', NULL, '1', '2025-01-02 18:43:34', '2025-01-16 01:18:15'),
(439, NULL, '189', 'test school', 'Electrical engineering', 'Electrical-engineering', '4 Year', 'Under Graduation', 'Semester', '100000', '50000', '<p>Electrical engineering is divided into a wide range of different fields, including computer engineering, systems engineering, power engineering, telecommunications, radio-frequency engineering, signal processing, instrumentation, photovoltaic cells, electronics, and optics and photonics. Many of these disciplines overlap with other engineering branches, spanning a huge number of specializations including hardware engineering, power electronics, electromagnetics and waves, microwave engineering, nanotechnology, electrochemistry, renewable energies, mechatronics/control, and electrical materials science.</p>', '1', '2025-01-17 21:55:14', '2025-01-17 21:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `university_id` varchar(255) DEFAULT NULL,
  `school` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `university_id`, `school`, `status`, `created_at`, `updated_at`) VALUES
(184, 'Testing Testing', NULL, 'Testing School', '1', '2024-12-31 21:57:45', '2025-01-01 01:05:52'),
(188, 'XYZ', NULL, 'xyz', '1', '2025-01-02 18:42:47', '2025-01-02 18:42:47'),
(189, 'Testing Department', NULL, 'testing schol', '1', '2025-01-02 18:46:04', '2025-01-02 18:46:04'),
(190, 'TEst Despt', NULL, 'testing schol', '1', '2025-01-03 01:04:05', '2025-01-03 01:04:05'),
(191, 'department of pharmacy', NULL, 'school of pharmacy', '1', '2025-01-03 10:17:23', '2025-01-03 10:17:23'),
(192, 'department of administration', NULL, 'school of management', '1', '2025-01-03 10:25:33', '2025-01-03 10:25:33'),
(193, 'department of administration', NULL, 'school of management', '1', '2025-01-08 17:52:58', '2025-01-08 17:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question1` varchar(255) DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `question2` varchar(255) DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `question3` varchar(255) DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `question4` varchar(255) DEFAULT NULL,
  `answer4` text DEFAULT NULL,
  `question5` varchar(255) DEFAULT NULL,
  `answer5` text DEFAULT NULL,
  `question6` varchar(255) DEFAULT NULL,
  `answer6` text DEFAULT NULL,
  `question7` varchar(255) DEFAULT NULL,
  `answer7` text DEFAULT NULL,
  `question8` varchar(255) DEFAULT NULL,
  `answer8` text DEFAULT NULL,
  `question9` varchar(255) DEFAULT NULL,
  `answer9` text DEFAULT NULL,
  `question10` varchar(255) DEFAULT NULL,
  `answer10` text DEFAULT NULL,
  `question11` varchar(255) DEFAULT NULL,
  `answer11` text DEFAULT NULL,
  `question12` varchar(255) DEFAULT NULL,
  `answer12` text DEFAULT NULL,
  `question13` varchar(255) DEFAULT NULL,
  `answer13` text DEFAULT NULL,
  `question14` varchar(255) DEFAULT NULL,
  `answer14` text DEFAULT NULL,
  `question15` varchar(255) DEFAULT NULL,
  `answer15` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question1`, `answer1`, `question2`, `answer2`, `question3`, `answer3`, `question4`, `answer4`, `question5`, `answer5`, `question6`, `answer6`, `question7`, `answer7`, `question8`, `answer8`, `question9`, `answer9`, `question10`, `answer10`, `question11`, `answer11`, `question12`, `answer12`, `question13`, `answer13`, `question14`, `answer14`, `question15`, `answer15`, `created_at`, `updated_at`) VALUES
(1, 'Testing faq edit', '<p>testing faq desc…</p>', 'Testing faq2', '<p>testing faq2 desc…</p>', 'Testing faq3', '<p>testing faq3 desc…</p>', 'Testing faq4', '<p>testing faq4 desc…</p>', 'Testing faq5', '<p>testing faq5 desc…</p>', 'test 6', '<p>test 6</p>', NULL, NULL, NULL, NULL, 'Testing faq', 'Testing faq', 'Testing faq', 'Testing faq', 'Testing faq', 'Testing faq', 'Testing faq', 'Testing faq', NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-15 00:14:27', '2025-01-15 22:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_qualifications`
--

CREATE TABLE `last_qualifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `board_name` varchar(255) NOT NULL,
  `registration_number` varchar(255) NOT NULL,
  `place_of_issue` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL,
  `cgpa` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `last_qualifications`
--

INSERT INTO `last_qualifications` (`id`, `student_id`, `board_name`, `registration_number`, `place_of_issue`, `passing_year`, `cgpa`, `status`, `created_at`, `updated_at`) VALUES
(30, '44', 'Testing Qualification', 'MAHDG786534', 'Testing', '2045', '8', '1', '2024-12-31 22:08:40', '2024-12-31 22:08:40'),
(31, '45', 'sadasdasd', 'MAHDG786534', 'testing', '2023', '8', '1', '2024-12-31 22:11:45', '2024-12-31 22:11:45'),
(32, '46', 'CBSE', '45633', 'UK', '2004', '7', '1', '2024-12-31 22:33:19', '2024-12-31 22:33:19'),
(33, '47', 'Testing Qualification', '213123123123', 'Testing', '2024', '9', '1', '2024-12-31 22:43:16', '2024-12-31 22:43:16'),
(34, '48', 'testBoard', 'MAHDG786534', 'Testing', '2323', '8', '1', '2025-01-01 00:28:04', '2025-01-01 00:28:04'),
(35, '49', 'Testing Qualification', 'MAHDG786534', 'Testing', '2023', '9', '1', '2025-01-02 18:27:06', '2025-01-02 18:27:06'),
(36, '50', 'test Board name', 'MAHDG786534', 'Testing', '2022', '8', '1', '2025-01-02 21:53:10', '2025-01-02 21:53:10'),
(37, '51', 'Testing Qualification', '232323', 'asdasd', '2323', '8', '1', '2025-01-03 19:58:48', '2025-01-03 19:58:48'),
(38, '52', 'ijkhgjgj', '75675', 'ds', '43565', '65', '1', '2025-01-03 23:41:15', '2025-01-03 23:41:15'),
(39, '53', 'testBoard', '213123123123', 'Testing', '2022', '9', '1', '2025-01-10 19:14:54', '2025-01-10 19:14:54'),
(40, '54', 'Testing Qualification', 'MAHDG786534', 'Testing', '2021', '9', '1', '2025-01-10 19:17:30', '2025-01-10 19:17:30'),
(41, '55', 'Testing Qualification', 'MAHDG786534', 'Testing', '2021', '9', '1', '2025-01-10 19:24:21', '2025-01-10 19:24:21'),
(42, '56', 'testBoard', 'MAHDG786534', 'testing', '2022', '9', '1', '2025-03-18 17:29:27', '2025-03-18 17:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(200) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `assigned_by` varchar(300) DEFAULT NULL,
  `assigned_to` varchar(300) DEFAULT NULL,
  `source` varchar(500) DEFAULT NULL,
  `country` text DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `university_id` longtext DEFAULT NULL,
  `course_id` longtext DEFAULT NULL,
  `scholorship_id` longtext DEFAULT NULL,
  `stages` longtext DEFAULT NULL,
  `lead_type` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `phone` longtext DEFAULT NULL,
  `appontment_date` longtext DEFAULT NULL,
  `appontment_time` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `reports` longtext DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `platform`, `user_id`, `assigned_by`, `assigned_to`, `source`, `country`, `city`, `university_id`, `course_id`, `scholorship_id`, `stages`, `lead_type`, `name`, `email`, `phone`, `appontment_date`, `appontment_time`, `message`, `reports`, `subject`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Website', NULL, NULL, NULL, NULL, 'American Samoa', 'noida', NULL, '437', NULL, NULL, NULL, 'Manish tiwari', 'mani.s@wikreate.in', 'mani.s@wikreate.in', NULL, NULL, 'testing', NULL, NULL, NULL, '2025-01-11 00:31:23', '2025-01-11 00:31:23'),
(4, 'Website', NULL, NULL, NULL, 'scholarship', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish tiwari', 'mani.s@wikreate.in', '9876543563', NULL, NULL, 'sadsad', NULL, NULL, '1', '2025-01-11 01:07:12', '2025-01-11 01:07:12'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish', NULL, NULL, NULL, NULL, 'testing...', NULL, NULL, NULL, '2025-01-17 19:20:09', '2025-01-17 19:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `masterdata_students`
--

CREATE TABLE `masterdata_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` varchar(255) NOT NULL,
  `student_id` varchar(255) DEFAULT NULL,
  `university_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `scholorship_id` varchar(255) DEFAULT NULL,
  `hostel_required` enum('Yes','No','May Be') NOT NULL,
  `high_school_id` varchar(255) DEFAULT NULL,
  `last_qualification_id` varchar(255) DEFAULT NULL,
  `upload_document_id` varchar(255) DEFAULT NULL,
  `status` enum('1','0') DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masterdata_students`
--

INSERT INTO `masterdata_students` (`id`, `agent_id`, `student_id`, `university_id`, `course_id`, `session_id`, `scholorship_id`, `hostel_required`, `high_school_id`, `last_qualification_id`, `upload_document_id`, `status`, `created_at`, `updated_at`) VALUES
(17, '1', '44', '13', '436', '1', '6', 'Yes', '30', '30', '22', '0', '2024-12-31 22:08:41', '2024-12-31 22:08:41'),
(18, '53', '45', '13', '436', '1', 'null', 'Yes', '31', '31', '23', '0', '2024-12-31 22:11:45', '2024-12-31 22:11:45'),
(19, '59', '46', '13', '436', '1', 'null', 'Yes', '32', '32', '24', '0', '2024-12-31 22:33:19', '2024-12-31 22:33:19'),
(20, '60', '47', '13', '436', '1', 'null', 'Yes', '33', '33', '25', '0', '2024-12-31 22:43:16', '2024-12-31 22:43:16'),
(21, '1', '48', '13', '436', '1', '6', 'Yes', '34', '34', '26', '0', '2025-01-01 00:28:05', '2025-01-01 00:28:05'),
(22, '1', '49', '13', '437', '5', '6', 'Yes', '35', '35', '27', '0', '2025-01-02 18:27:06', '2025-01-02 18:27:06'),
(23, '60', '50', '14', '438', '5', 'null', 'Yes', '36', '36', '28', '0', '2025-01-02 21:53:11', '2025-01-02 21:53:11'),
(24, '1', '51', '15', '438', '4', '6', 'Yes', '37', '37', '29', '0', '2025-01-03 19:58:48', '2025-01-03 19:58:48'),
(25, '1', '52', '15', '438', '5', '7', 'Yes', '38', '38', '30', '0', '2025-01-03 23:41:17', '2025-01-03 23:41:17'),
(26, 'Student', '55', '13', '438', '5', NULL, 'Yes', '41', '41', '33', '0', '2025-01-10 19:24:21', '2025-01-10 19:24:21'),
(27, '64', '56', '13', '438', '4', 'null', 'No', '42', '42', '34', '0', '2025-03-18 17:29:28', '2025-03-18 17:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(58, '0001_01_01_000000_create_users_table', 1),
(59, '0001_01_01_000001_create_cache_table', 1),
(60, '0001_01_01_000002_create_jobs_table', 1),
(61, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(62, '2024_07_06_063215_create_roles_table', 1),
(63, '2024_07_06_064620_create_leads_table', 1),
(64, '2024_07_08_101622_create_tokens_table', 1),
(65, '2024_11_09_155759_create_schedules_table', 1),
(66, '2024_12_09_132103_create_universities_table', 1),
(67, '2024_12_09_132846_create_courses_table', 1),
(68, '2024_12_09_140841_create_scholarships_table', 1),
(69, '2024_12_09_141347_create_departments_table', 1),
(70, '2024_12_09_152224_create_college_sessions_table', 1),
(71, '2024_12_09_154309_create_agents_table', 1),
(72, '2024_12_09_161131_create_masterdata_students_table', 1),
(73, '2024_12_09_161805_create_high_schools_table', 1),
(74, '2024_12_09_162026_create_last_qualifications_table', 1),
(75, '2024_12_09_162328_create_upload_documents_table', 1),
(76, '2024_12_17_103813_create_bank_details_agents_table', 2),
(77, '2024_12_17_110042_create_students_table', 3),
(78, '2024_12_17_122429_create_student_high_schools_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '1', '2024-12-10 00:03:11', '2024-12-10 00:03:11'),
(2, 'admin', '1', '2024-12-10 00:03:17', '2024-12-10 00:03:17'),
(3, 'agent', '1', '2024-12-10 00:03:20', '2024-12-10 00:03:20'),
(5, 'student', '1', NULL, NULL),
(6, 'faculty', '1', '2025-01-06 18:12:38', '2025-01-06 18:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule_date` date NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `university_id` varchar(200) DEFAULT NULL,
  `course_id` varchar(500) DEFAULT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date NOT NULL,
  `eligibility` varchar(255) NOT NULL,
  `proscriptive_fees` varchar(255) NOT NULL,
  `no_of_seat` varchar(500) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `name`, `university_id`, `course_id`, `opening_date`, `closing_date`, `eligibility`, `proscriptive_fees`, `no_of_seat`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Testing scholar ship', NULL, '436', '2025-01-01', '2025-01-11', 'Post Graduation', '5000', '100', '1', '2024-12-31 22:04:14', '2024-12-31 22:04:14'),
(7, 'Scholarship Two', NULL, '438', '2024-12-29', '2025-01-14', 'Post Graduation', '233', '500', '1', '2025-01-03 20:02:40', '2025-01-03 20:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admission_type` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `upload_photo` varchar(255) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  `admission_status` varchar(500) DEFAULT NULL,
  `university_id` varchar(500) DEFAULT NULL,
  `course_id` varchar(500) DEFAULT NULL,
  `session_id` varchar(500) DEFAULT NULL,
  `scholorship_id` varchar(500) DEFAULT NULL,
  `hostel_required` varchar(500) DEFAULT NULL,
  `high_school_id` varchar(500) DEFAULT NULL,
  `last_qualification_id` varchar(500) DEFAULT NULL,
  `upload_document_id` varchar(500) DEFAULT NULL,
  `comission_amount` varchar(500) DEFAULT NULL,
  `parents_name` varchar(500) DEFAULT NULL,
  `pemail` varchar(500) DEFAULT NULL,
  `p_phone` varchar(500) DEFAULT NULL,
  `pgender` varchar(500) DEFAULT NULL,
  `paddress` varchar(500) DEFAULT NULL,
  `is_mail_to_university` enum('1','0') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `admission_type`, `added_by`, `name`, `gender`, `phone`, `email`, `dob`, `address`, `country`, `upload_photo`, `status`, `admission_status`, `university_id`, `course_id`, `session_id`, `scholorship_id`, `hostel_required`, `high_school_id`, `last_qualification_id`, `upload_document_id`, `comission_amount`, `parents_name`, `pemail`, `p_phone`, `pgender`, `paddress`, `is_mail_to_university`, `created_at`, `updated_at`) VALUES
(44, NULL, '1', 'Manish tiwari', 'male', '7004123644', 'test@gmail.com', '2024-12-02', 'testing place bangladesh', 'Bangladesh', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6773bb9fda2dabg.png', 'Approved', NULL, '13', '436', '1', '6', 'yes', '30', '30', '22', NULL, 'testing', 'test@gmail.com', '8765768987', 'male', 'testing', '1', '2024-12-31 22:08:40', '2025-01-02 17:33:20'),
(45, NULL, '53', 'Testing agent Student', 'male', '7004123644', 'test@gmail.com', '2022-07-12', 'testing place in afg', 'Afghanistan', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6773bc57f0400bg-2.png', 'Approved', NULL, '13', '436', '1', 'null', 'yes', '31', '31', '23', NULL, 'testing', 'test@gmail.com', '4567892346', 'male', 'restjas testing', '1', '2024-12-31 22:11:45', '2025-03-18 17:22:16'),
(46, 'fresh', '59', 'Testing Student', 'male', '7212000000', 'mani.s@wikreate.in', '2015-03-31', 'D 213', 'American Samoa', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6773c16678ee2q.png', 'underProcess', NULL, '13', '436', '1', 'null', 'yes', '32', '32', '24', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2024-12-31 22:33:19', '2025-01-01 00:08:34'),
(47, NULL, '60', 'Testing agent two student', 'male', '9876543563', 'test@gmail.com', '2024-12-01', 'testing...', 'Nigeria', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6773c3bb48b30bg.png', 'Admission', NULL, '13', '436', '1', 'null', 'yes', '33', '33', '25', NULL, 'testing', 'test@gmail.com', '9898989898', 'male', 'testibg', '1', '2024-12-31 22:43:16', '2025-01-01 01:53:29'),
(48, NULL, '1', 'Test University', 'male', '7004123644', 'test@gmail.com', '2024-12-04', 'testing', 'Andorra', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6773dc4b7a33bbg-2.png', 'underProcess', NULL, '13', '436', '1', '6', 'yes', '34', '34', '26', NULL, 'testing', 'test@gmail.com', '8787989878', 'male', 'testingg', '1', '2025-01-01 00:28:04', '2025-01-01 01:42:23'),
(49, NULL, '1', 'Testing for Session', 'male', '7004123644', 'test@gmail.com', '2023-01-03', 'testing...', 'Australia', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/67762ab1051fbbg-2.png', 'Registration', NULL, '13', '437', '5', '6', 'yes', '35', '35', '27', NULL, 'testing', 'test@gmail.com', '8989898989', 'male', 'testing parent address', '1', '2025-01-02 18:27:06', '2025-01-02 18:38:55'),
(50, NULL, '60', 'Manish tiwari', 'male', '7004123644', 'test@gmail.com', '2024-01-03', 'testignoman', 'Oman', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/67765afdc0a50bg-2.png', 'Registration', NULL, '14', '438', '5', '7', 'yes', '36', '36', '28', NULL, 'testing', 'test@gmail.com', '9890764590', 'male', 'testingg', '1', '2025-01-02 21:53:10', '2025-01-03 22:09:57'),
(51, NULL, '1', 'Scholarship  Student', 'male', '7004123644', 'mani.s@wikreate.in', '2024-12-30', 'testing,,,.....', 'South Africa', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/677791af2163bprofile-bg.jpg', 'Registration', NULL, '15', '438', '4', '7', 'yes', '37', '37', '29', NULL, 'asdasd', 'test@gmail.com', '9898989876', 'male', 'asdasdasd', '0', '2025-01-03 19:58:48', '2025-01-04 20:13:32'),
(52, NULL, '1', 'ali md', 'male', '07871316771', 'osamasharar@gmail.com', '1997-06-02', 'sanaa', 'Yemen', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6777c5d23961bIE PORTSUDAN 4.png', 'Approved', NULL, '15', '438', '5', '7', 'yes', '38', '38', '30', NULL, 'qaid', 'osamasharar@gmail.com', '07871316771', 'male', 'sanaa', '1', '2025-01-03 23:41:15', '2025-01-08 17:39:23'),
(53, NULL, 'Self', 'John', 'Male', '7004123644', 'mani.s@wikreate.in', '2024-12-29', 'adasdasd', 'DZ', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6780c1e3609a6bg.png', 'Registration', NULL, '13', '438', '5', NULL, 'Yes', NULL, NULL, NULL, NULL, 'testing', 'test@gmail.com', '3434343434', 'Male', 'safdsfdsf', '0', '2025-01-10 19:14:54', '2025-01-10 19:14:54'),
(54, NULL, 'Self', 'john', 'Male', '7004123644', 'mani.s@wikreate.in', '2024-12-30', 'fdgdfg', 'AS', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6780c281b9152profile-bg.jpg', 'Registration', NULL, '13', '438', '5', NULL, 'Yes', NULL, NULL, NULL, NULL, 'testing', 'test@gmail.com', '9898987678', 'Male', 'fgfdgfdgfdgfd', '0', '2025-01-10 19:17:30', '2025-01-10 19:17:30'),
(55, NULL, 'Self', 'john', 'Male', '7004123644', 'mani.s@wikreate.in', '2024-12-30', 'fdgdfg', 'AS', 'https://justpress.s3.ap-south-1.amazonaws.com/upload_photo/6780c41c0522dprofile-bg.jpg', 'Admission', NULL, '13', '438', '5', NULL, 'Yes', '41', '41', '33', NULL, 'testing', 'test@gmail.com', '9898987678', 'Male', 'fgfdgfdgfdgfd', '0', '2025-01-10 19:24:21', '2025-01-15 17:57:14'),
(56, NULL, '64', 'Manish tiwari', 'male', '7004123644', 'manish@gmail.com', '1997-02-19', 'testing noida', 'Albania', 'https://justpress.s3.ap-south-1.amazonaws.com/', 'Approved', NULL, '13', '438', '4', '6', 'no', '42', '42', '34', NULL, 'testing', 'test@gmail.com', '4567898767', 'male', 'asdasdas asd', '1', '2025-03-18 17:29:27', '2025-03-18 17:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `student_high_schools`
--

CREATE TABLE `student_high_schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `place_of_issue` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL,
  `cgpa` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_high_schools`
--

INSERT INTO `student_high_schools` (`id`, `student_id`, `school_name`, `registration_no`, `place_of_issue`, `passing_year`, `cgpa`, `status`, `created_at`, `updated_at`) VALUES
(30, '44', 'testing school', '9876467R64', 'testing', '2029', '8', '1', '2024-12-31 22:08:40', '2024-12-31 22:08:40'),
(31, '45', 'testing school', '9876467R64', 'testing', '2343', '8', '1', '2024-12-31 22:11:45', '2024-12-31 22:11:45'),
(32, '46', 'ACS', 'RRRRRR', 'US', '1998', '9', '1', '2024-12-31 22:33:19', '2024-12-31 22:33:19'),
(33, '47', 'testing school', '9876467R64', 'Test', '2023', '9', '1', '2024-12-31 22:43:16', '2024-12-31 22:43:16'),
(34, '48', 'testing school', '9876467R64', 'testing', '2022', '7', '1', '2025-01-01 00:28:04', '2025-01-01 00:28:04'),
(35, '49', 'testing school', '9876467R64', 'testing', '2023', '8', '1', '2025-01-02 18:27:06', '2025-01-02 18:27:06'),
(36, '50', 'testing school', '9876467R64', 'testing', '2023', '7', '1', '2025-01-02 21:53:10', '2025-01-02 21:53:10'),
(37, '51', 'testing school', '9876467R64', 'testing', '2343', '8', '1', '2025-01-03 19:58:48', '2025-01-03 19:58:48'),
(38, '52', 'khjkghjg', '8575675', 'sana', '2015', '56', '1', '2025-01-03 23:41:15', '2025-01-03 23:41:15'),
(39, '53', 'testing school', '2323123123', 'testing', '2453', '9', '1', '2025-01-10 19:14:54', '2025-01-10 19:14:54'),
(40, '54', 'testing school', '9876467R64', 'asdasd', '2023', '9', '1', '2025-01-10 19:17:30', '2025-01-10 19:17:30'),
(41, '55', 'testing school', '9876467R64', 'asdasd', '2023', '9', '1', '2025-01-10 19:24:21', '2025-01-10 19:24:21'),
(42, '56', 'sdds', '2323123123', 'testing', '2023', '9', '1', '2025-03-18 17:29:27', '2025-03-18 17:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `university_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `yt_link` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `school_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `course_id`, `university_id`, `name`, `yt_link`, `location`, `school_name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '437', NULL, 'Testomonial one', 'https://www.youtube.com/watch?v=L-fm0Fvygi0', 'noida', 'testing school', 'this this testing testomonials...', '1', '2025-01-14 20:11:33', '2025-01-14 20:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `about_us` text DEFAULT NULL,
  `estd` varchar(500) DEFAULT NULL,
  `fee` varchar(500) DEFAULT NULL,
  `university_type` varchar(500) DEFAULT NULL,
  `icon` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `locality_name` varchar(255) NOT NULL,
  `representative_name` varchar(255) NOT NULL,
  `commission_amount` varchar(500) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `course_id` varchar(500) DEFAULT NULL,
  `department_id` varchar(500) DEFAULT NULL,
  `scholorship_id` varchar(500) DEFAULT NULL,
  `school_session_id` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`id`, `name`, `slug`, `about_us`, `estd`, `fee`, `university_type`, `icon`, `image`, `address`, `contact_number`, `email`, `country`, `state`, `city`, `locality_name`, `representative_name`, `commission_amount`, `status`, `course_id`, `department_id`, `scholorship_id`, `school_session_id`, `created_at`, `updated_at`) VALUES
(13, 'KIIT COLLEGE', 'kiit-college', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>', '1879', '10L-30L', 'Goverment', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f709119e1cunivLogo.png', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f7091b67efunivImg.jpg', 'javsdhgcvgahsdas', '4545445454', 'mani.s@wikreate.in', 'India', 'ODISHA', 'Chittorgarh', 'test', 'asdas', '5000', '1', '437,438', '188,189', '6,7', '4', '2024-12-31 22:06:48', '2025-01-16 01:01:31'),
(15, 'Mewar University Gangrar', 'mewar-university-gangrar', NULL, '1978', '10L-30L', 'Private', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f70d8da976univLogo.png', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f70d969486univImg.jpg', 'Chittorgarh, Rajasthan', '07871316771', 'international.apply@mewaruniversity.org', 'India', 'Rajasthan', 'Chittorgarh', 'Gangrar', 'osama', '5000', '1', '437,438', '191,192', '7', NULL, '2025-01-03 10:26:32', '2025-03-18 17:48:21'),
(21, 'Test Unversity', 'test-university', '<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</p>', '1879', '50L-40L', 'Private', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f63ae2967bunivLogo.png', 'https://justpress.s3.ap-south-1.amazonaws.com/university/677f63aeb6a82univImg.jpg', 'testing near hospital', '978987898', 'test@gmail.com', 'India', 'Uttar Pradesh', 'Noida', 'Gangrar', 'Testing', '3000', '1', '437', '192,191', '6', '4', '2025-01-09 18:20:39', '2025-01-16 01:02:10'),
(22, 'University Three', 'university-three', '<p>testing…..</p>', '1777', '5l-12l', 'Private', 'https://justpress.s3.ap-south-1.amazonaws.com/university/67875c9cd376bunivLogo.png', 'https://justpress.s3.ap-south-1.amazonaws.com/university/6780ee349eb76univImg.jpg', 'testing...', '4545445454', 'manish@gmail.com', 'India', 'Rajasthan', 'delhi', 'manish', 'Amity', '9999', '1', '437,438', '191,192,189', '6,7', '4', '2025-01-10 22:21:05', '2025-01-16 01:02:22');

-- --------------------------------------------------------

--
-- Table structure for table `upload_documents`
--

CREATE TABLE `upload_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `national_id` varchar(255) NOT NULL,
  `high_school` varchar(255) NOT NULL,
  `bachelor_degree` varchar(255) DEFAULT NULL,
  `master_degree` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `followup_process` varchar(255) DEFAULT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_documents`
--

INSERT INTO `upload_documents` (`id`, `student_id`, `national_id`, `high_school`, `bachelor_degree`, `master_degree`, `others`, `followup_process`, `status`, `created_at`, `updated_at`) VALUES
(22, '44', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773bba0de4dedummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773bba1138dedummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2024-12-31 22:08:41', '2024-12-31 22:08:41'),
(23, '45', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773bc591a18fdummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773bc594e7b0dummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2024-12-31 22:11:45', '2024-12-31 22:11:45'),
(24, '46', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773c1674b1b7q.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773c1677846fq.png', NULL, NULL, NULL, 'Registration', '1', '2024-12-31 22:33:19', '2024-12-31 22:33:19'),
(25, '47', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773c3bc2a7fdbg.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773c3bc82eb4dummy-pdf_2.pdf', NULL, NULL, NULL, 'rejected', '1', '2024-12-31 22:43:16', '2024-12-31 22:57:56'),
(26, '48', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773dc4c9e41bbg.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6773dc4d1a4ebdummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-01 00:28:05', '2025-01-01 00:28:05'),
(27, '49', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/67762ab23a59cdummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/67762ab26abc7dummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-02 18:27:06', '2025-01-02 18:27:06'),
(28, '50', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/67765afee939fdummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/67765aff2c39adummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-02 21:53:11', '2025-01-02 21:53:11'),
(29, '51', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/677791b019bb1dummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/677791b042e9cdummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-03 19:58:48', '2025-01-03 19:58:48'),
(30, '52', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6777c5d3d9655IE PORTSUDAN 4.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6777c5d426eb3IE UEA 1 MAIL.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6777c5d462522Screenshot 2024-12-31 024524.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6777c5d49c20cOMER AND MD.png', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6777c5d4d8882Screenshot 2024-12-31 024524.png', 'Registration', '1', '2025-01-03 23:41:17', '2025-01-03 23:41:17'),
(31, '53', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c1e6849f7dummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c1e6ad9f2dummy-pdf_2.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-10 19:14:54', '2025-01-10 19:14:54'),
(32, '54', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c282c921bdummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c28306e9bdiet-plan.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-10 19:17:31', '2025-01-10 19:17:31'),
(33, '55', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c41d3cdaadummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/6780c41d715fbdiet-plan.pdf', NULL, NULL, NULL, 'Registration', '1', '2025-01-10 19:24:21', '2025-01-10 19:24:21'),
(34, '56', 'https://justpress.s3.ap-south-1.amazonaws.com/', 'https://justpress.s3.ap-south-1.amazonaws.com/', NULL, NULL, NULL, 'Registration', '1', '2025-03-18 17:29:28', '2025-03-18 17:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `added_by` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `phone`, `role`, `profile_img`, `bio`, `status`, `email_verified_at`, `password`, `designation`, `added_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mani', 'mani.s@wikreate.in', 'mani.s', '0909090909', '1', '/tmp/phpzZM5eN', 'testingg', '1', NULL, '$2y$10$7KupYQS1el8cOqjRfS6yEefuFi90yqbH3d5HXZyRTnOVA12HcdVma', '', '', NULL, NULL, '2025-01-03 19:11:36'),
(59, 'Ribhu', 'ribhu.d@wikreate.in', 'ribhu.d', '8189897867', '3', NULL, 'Hello', NULL, NULL, '$2y$10$MytkNplO.495iMBPX6EKCO6.OJqkqSfn6NiGtqHaG/6r9deSi8oy.', NULL, NULL, NULL, '2024-12-31 22:20:32', '2025-01-03 19:11:32'),
(60, 'Manish', 'manish.t@wikreate.in', 'manish.t', '9898767898', '3', NULL, 'testing,,,', NULL, NULL, '$2y$10$lVqjmIL.u3rfCPJvtowZs.CjkkKOM4wISU3I2BiG6epl3aWKs0Ula', NULL, NULL, NULL, '2024-12-31 22:37:47', '2025-01-03 18:03:48'),
(61, 'osama', 'osamasharar@gmail.com', 'osamasharar', '07871316771', '3', NULL, NULL, NULL, NULL, '$2y$10$IfCS7.UeIzcME7OQ9aH5GO2/LtpmTJQ.j1T5Yfg9960QiQLhy0xBG', NULL, NULL, NULL, '2025-01-03 23:36:14', '2025-01-03 23:36:14'),
(62, 'HADI', 'info@justpress.co.in', 'info', '07871316771', '2', NULL, NULL, NULL, NULL, '$2y$10$cq1ZlvpChkATQt329uoyCOdwdnYw7m6JiL6x83U93Vt/ytmH7K71.', NULL, NULL, NULL, '2025-01-08 17:34:14', '2025-01-08 17:34:14'),
(63, 'Testing From Website', 'test@gmail.com', 'test', '9898987878', '3', NULL, NULL, NULL, NULL, '$2y$10$G29RnpcZgYs4f4a8maPXhOdimBkgN1Rx0/1jbAqi7kb6a/FV9IBVC', NULL, NULL, NULL, '2025-01-14 22:36:57', '2025-01-14 22:36:57'),
(64, 'React test', 'react.t@wikreate.in', 'react.t', '4545445454', '3', NULL, NULL, NULL, NULL, '$2y$10$cLSE08FpbQR1Jqp/xGpCG.BYeFse9RMI.EcUjJWWpRnWi5OFQU3hC', NULL, NULL, NULL, '2025-03-18 17:26:37', '2025-03-18 17:26:37');

-- --------------------------------------------------------

--
-- Table structure for table `visa_passports`
--

CREATE TABLE `visa_passports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `visa_upload` varchar(255) NOT NULL,
  `passport_upload` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visa_passports`
--

INSERT INTO `visa_passports` (`id`, `agent_id`, `student_id`, `visa_upload`, `passport_upload`, `status`, `created_at`, `updated_at`) VALUES
(5, '1', '50', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/677688fd84e80dummy-pdf_2.pdf', 'https://justpress.s3.ap-south-1.amazonaws.com/documents/677688fe4e450dummy-pdf_2.pdf', '1', '2025-01-03 01:09:26', '2025-01-03 01:09:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agent_comissions`
--
ALTER TABLE `agent_comissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details_agents`
--
ALTER TABLE `bank_details_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `college_sessions`
--
ALTER TABLE `college_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_qualifications`
--
ALTER TABLE `last_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masterdata_students`
--
ALTER TABLE `masterdata_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_high_schools`
--
ALTER TABLE `student_high_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_documents`
--
ALTER TABLE `upload_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visa_passports`
--
ALTER TABLE `visa_passports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `agent_comissions`
--
ALTER TABLE `agent_comissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bank_details_agents`
--
ALTER TABLE `bank_details_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `college_sessions`
--
ALTER TABLE `college_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_qualifications`
--
ALTER TABLE `last_qualifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `masterdata_students`
--
ALTER TABLE `masterdata_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `student_high_schools`
--
ALTER TABLE `student_high_schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `upload_documents`
--
ALTER TABLE `upload_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `visa_passports`
--
ALTER TABLE `visa_passports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
