-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 09:54 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `probecrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `editordata` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admission_payment`
--

CREATE TABLE `admission_payment` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(50) DEFAULT NULL,
  `payment_purpose` int(11) DEFAULT NULL,
  `admission_fee` decimal(15,2) DEFAULT 0.00,
  `advance_money` decimal(15,2) DEFAULT 0.00,
  `paying_amount` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admission_payment`
--

INSERT INTO `admission_payment` (`id`, `patient_id`, `payment_purpose`, `admission_fee`, `advance_money`, `paying_amount`, `created_at`, `updated_at`) VALUES
(1, 'P2019-1', 1, '1000.00', '6000.00', '0.00', '2019-06-25 03:18:08', '2019-06-25 04:11:52'),
(2, 'P2019-1', 2, '0.00', '0.00', '5000.00', '2019-06-26 09:46:43', '2019-06-26 09:46:43'),
(4, 'P2019-1', 2, '0.00', '0.00', '2000.00', '2019-06-26 06:52:09', '2019-06-26 06:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(155) NOT NULL,
  `division_id` tinyint(11) NOT NULL,
  `district_id` tinyint(11) NOT NULL,
  `thana_id` tinyint(11) NOT NULL,
  `status` tinyint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vedio_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `blog_details`, `photo`, `vedio_url`, `status`, `date`, `created_at`, `updated_at`) VALUES
(2, 'Blog title update', 'lorem ipsum dolaram sfasfsa lorem ipsum dolaram sfasfsa', 'public/blog/IN6uo.jpg', NULL, 1, '2019-11-30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(11) NOT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_space` tinyint(4) DEFAULT 1 COMMENT '1=yes,0=no',
  `currency_position` int(11) DEFAULT NULL,
  `digit_separator` varchar(50) DEFAULT NULL,
  `expire_day_limit` int(11) DEFAULT NULL,
  `is_scanned` tinyint(4) DEFAULT 1 COMMENT '1=scanned,2=not scanned',
  `customer_approve` tinyint(4) DEFAULT 0 COMMENT '1=yes,0=no',
  `default_country` int(11) DEFAULT NULL,
  `default_state` int(11) DEFAULT NULL,
  `store_phone` varchar(50) DEFAULT NULL,
  `report_delivery_time_limit` varchar(155) DEFAULT NULL,
  `store_email` varchar(100) DEFAULT NULL,
  `store_name` varchar(155) DEFAULT NULL,
  `store_title` varchar(155) DEFAULT NULL,
  `store_description` text DEFAULT NULL,
  `store_keyword` text DEFAULT NULL,
  `store_meta_title` varchar(250) DEFAULT NULL,
  `short_note` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `theme_color` text DEFAULT NULL,
  `button_hover_color` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `twitter_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `google_plus_link` text DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `company_email` varchar(155) DEFAULT NULL,
  `company_mobile` varchar(155) DEFAULT NULL,
  `company_details` text DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `footer_box_1` text DEFAULT NULL,
  `footer_box_2` text DEFAULT NULL,
  `footer_box_3` text DEFAULT NULL,
  `footer_box_4` text DEFAULT NULL,
  `bottom_footer` text DEFAULT NULL,
  `top_footer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `currency_id`, `currency_space`, `currency_position`, `digit_separator`, `expire_day_limit`, `is_scanned`, `customer_approve`, `default_country`, `default_state`, `store_phone`, `report_delivery_time_limit`, `store_email`, `store_name`, `store_title`, `store_description`, `store_keyword`, `store_meta_title`, `short_note`, `map_link`, `theme_color`, `button_hover_color`, `logo`, `favicon`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `google_plus_link`, `company_name`, `company_email`, `company_mobile`, `company_details`, `company_address`, `footer_box_1`, `footer_box_2`, `footer_box_3`, `footer_box_4`, `bottom_footer`, `top_footer`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 'comma', 10, 1, 1, 18, 0, '1568942', 'Report collect with in 30 days', 'asad@gmail.com', 'Hardware Store', 'online hardware store', '<div class=\"col-md-7\">\r\n<h2 class=\"text-uppercase\">About Company</h2>\r\n\r\n<div class=\"dlab-separator-outer \">\r\n<div class=\"dlab-separator bg-secondry style-skew\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<p><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</strong></p>\r\n\r\n<p class=\"m-b50\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the with the release of Letraset sheets containing Lorem Ipsum [...]</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-6\">\r\n<div class=\"icon-bx-wraper left m-b30\">\r\n<div class=\"icon-bx-sm bg-secondry \">&nbsp;</div>\r\n\r\n<div class=\"icon-content\">\r\n<h3 class=\"dlab-tilte text-uppercase\">WE&#39;RE EXPERTS</h3>\r\n\r\n<p>Lorem ipsum dolor sit adipiscing sed diam nonummy end [...]</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6\">\r\n<div class=\"icon-bx-wraper left m-b30\">\r\n<div class=\"icon-bx-sm bg-secondry \">&nbsp;</div>\r\n\r\n<div class=\"icon-content\">\r\n<h3 class=\"dlab-tilte text-uppercase\">WE&#39;RE FRIENDLY</h3>\r\n\r\n<p>Lorem ipsum dolor sit adipiscing sed diam nonummy end [...]</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6\">\r\n<div class=\"icon-bx-wraper left m-b30\">\r\n<div class=\"icon-bx-sm bg-secondry \">&nbsp;</div>\r\n\r\n<div class=\"icon-content\">\r\n<h3 class=\"dlab-tilte text-uppercase\">WE&#39;RE ACCURATE</h3>\r\n\r\n<p>Lorem ipsum dolor sit adipiscing sed diam nonummy end [...]</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6\">\r\n<div class=\"icon-bx-wraper left m-b30\">\r\n<div class=\"icon-bx-sm bg-secondry \">&nbsp;</div>\r\n\r\n<div class=\"icon-content\">\r\n<h3 class=\"dlab-tilte text-uppercase\">WE&#39;RE TRUSTED</h3>\r\n\r\n<p>Lorem ipsum dolor sit adipiscing sed diam nonummy end [...]</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-5\">\r\n<div class=\"dlab-thu m\"><img alt=\"\" src=\"http://localhost/ppms/public/frontend/images/worker.png\" /></div>\r\n</div>', 'store,hardware,tools', 'store meta title', '<h3 class=\"dlab-tilte text-uppercase m-b10\">Meet &amp; Ask</h3>\r\n\r\n<p>Lorem Ipsum is simply dummy text the printing and industry dummy Ipsum Lorem</p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d684.4688561379095!2d90.36109610185504!3d23.77666561319452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0bb647384e9%3A0xe42b3fa312325e19!2s15+Golden+Street%2C+Dhaka!5e0!3m2!1sen!2sbd!4v1537678521540', 'FFFFFF', 'FFFFFF', '8230918075849.png', '492230918075849.png', 'https://www.facebook.com/', 'https://www.twitter.com/', NULL, 'https://www.youtube.com/', 'https://www.google.com/', 'Medistore', 'medistore@gmail.com', '+088 01900 000 000', NULL, '1234 Heaven Stress,Beverly Hill Old york- United State.', '<h2>Contact us</h2>\r\n<!--headin5_amrc-->\r\n\r\n<p><img src=\"http://localhost/pharmacySystem/public/frontend/images/place.png\" /> <span class=\"contact-text\">1234 Heaven Stress,Beverly Hill Old york- United State.</span></p>\r\n\r\n<p><img src=\"http://localhost/pharmacySystem/public/frontend/images/phone.png\" /> <span class=\"contact-text\">&nbsp;+088 01900 000 000</span></p>\r\n\r\n<p><img src=\"http://localhost/pharmacySystem/public/frontend/images/gmail.png\" /> <span class=\"contact-text\">&nbsp;medistore@gmail.com</span></p>', '<h2>Information</h2>\r\n<!--headin5_amrc-->\r\n\r\n<ul class=\"footer_ul_amrc\">\r\n	<li><a href=\"#\">About Us</a></li>\r\n	<li><a href=\"#\">Delivery Information</a></li>\r\n	<li><a href=\"#\">Privacy Policy</a></li>\r\n	<li><a href=\"#\">Terms &amp; Condition</a></li>\r\n	<li><a href=\"#\">Contact Us</a></li>\r\n	<li><a href=\"#\">Help</a></li>\r\n	<li><a href=\"#\">FAQ</a></li>\r\n</ul>', '<h2>My Account</h2>\r\n<!--headin5_amrc-->\r\n\r\n<ul class=\"footer_ul_amrc\">\r\n	<li><a href=\"#\">My Account</a></li>\r\n	<li><a href=\"#\">Order History</a></li>\r\n	<li><a href=\"#\">Returns</a></li>\r\n	<li><a href=\"#\">Wish List</a></li>\r\n	<li><a href=\"#\">News Letter</a></li>\r\n</ul>', '<h2>Categories</h2>\r\n<!--headin5_amrc-->\r\n\r\n<ul class=\"footer_ul_amrc\">\r\n	<li><a href=\"#\">Health</a></li>\r\n	<li><a href=\"#\">Beauty</a></li>\r\n	<li><a href=\"#\">Personal Care</a></li>\r\n	<li><a href=\"#\">Vitamins &amp; Supplements</a></li>\r\n	<li><a href=\"#\">Baby Needs</a></li>\r\n	<li><a href=\"#\">Fitness</a></li>\r\n	<li><a href=\"#\">Herbal</a></li>\r\n	<li><a href=\"#\">Eye &amp; Ear Care</a></li>\r\n</ul>', '<p>Copyright &copy; 2019 www.medistore.com. All Rights Reserved. Design By webitsoft.net</p>', '<div class=\"col-md-3\">\r\n<h2 style=\"font-family: Arial\">Payment Methods</h2>\r\n</div>\r\n\r\n<div class=\"col-sm-9\">\r\n<div class=\"all-payments\"><img src=\"http://localhost/pharmacySystem/public/frontend/images/payment.png\" /></div>\r\n<!--foote_bottom_ul_amrc ends here--></div>', '2018-07-26 05:15:50', '2019-02-23 03:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Gazipur', 1, '2019-11-12 03:40:55', '2019-11-12 03:40:55'),
(2, 'Narayongonj', 1, '2019-11-12 03:41:09', '2019-11-12 03:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', '2019-10-31 03:41:55', '2019-10-31 03:41:55'),
(2, 'Khulna', '2019-10-31 03:41:55', '2019-10-31 03:41:55'),
(3, 'Sylhet', '2019-10-31 03:41:55', '2019-11-12 22:58:06'),
(4, 'Barisal', '2019-10-31 03:41:55', '2019-10-31 03:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `department` int(3) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `gender` int(3) DEFAULT NULL,
  `marital_status` int(3) DEFAULT NULL,
  `blood_group` int(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `work_experience` varchar(255) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `specialist` text DEFAULT NULL,
  `educational_qualification` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `status` int(3) DEFAULT NULL COMMENT '1 = Active, 2=Inactive',
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `checkup_slot_period` varchar(255) DEFAULT NULL COMMENT 'minutes',
  `new_patient_visit` decimal(15,2) DEFAULT NULL,
  `old_patient_visit` decimal(15,2) DEFAULT NULL,
  `appointment_details` text DEFAULT NULL,
  `appointment_day_slot_schedule` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `first_name`, `last_name`, `department`, `phone_no`, `gender`, `marital_status`, `blood_group`, `dob`, `joining_date`, `work_experience`, `present_address`, `permanent_address`, `biography`, `specialist`, `educational_qualification`, `image`, `attachments`, `status`, `email`, `password`, `checkup_slot_period`, `new_patient_visit`, `old_patient_visit`, `appointment_details`, `appointment_day_slot_schedule`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Salimullah', 'Akhter', 1, '01756000001', 1, 1, 2, '1978-03-14', '2019-05-01', '4 Years', 'Uttara, Dhaka, Bangladesh', 'Naogaon, Rajshahi, Bangladesh', 'He has completed his residency in Internal Medicine at Franklin Square Hospital Center in Baltimore, affiliated with the University of Maryland. He completed a fellowship in Cardiovascular Medicine and received an Interventional Cardiology fellowship from Baystate Medical Center at Tufts University School of Medicine in Massachusetts. He received honors as an Outstanding Fellow while at Baystate Medical Center and the Darwish Award for Excellence in Clinical Medicine while at Franklin Square Hospital Center. Dr. Ranganath is board certified by the American Board of Internal Medicine, National Board of Echocardiography and the Certification Board of Nuclear Cardiology. He is a member of the American Board of Internal Medicine and the Royal College of Physicians in the United Kingdom.', 'Cardiology', 'MBBS, MD, MRCP', '718090519080238.jpg', NULL, 1, 'salimullah@gmail.com', '123456', '20', '500.00', '300.00', '[{\"day_id\":\"1\",\"start_time\":\"15:00\",\"end_time\":\"18:00\"},{\"day_id\":\"2\",\"start_time\":\"15:00\",\"end_time\":\"18:00\"},{\"day_id\":\"4\",\"start_time\":\"08:00\",\"end_time\":\"11:00\"},{\"day_id\":\"5\",\"start_time\":\"08:00\",\"end_time\":\"11:00\"}]', '{\"1\":\"{\\\"15:00\\\":null,\\\"15:20\\\":null,\\\"15:40\\\":null,\\\"16:00\\\":null,\\\"16:20\\\":null,\\\"16:40\\\":null,\\\"17:00\\\":null,\\\"17:20\\\":null,\\\"17:40\\\":null}\",\"2\":\"{\\\"15:00\\\":null,\\\"15:20\\\":null,\\\"15:40\\\":null,\\\"16:00\\\":null,\\\"16:20\\\":null,\\\"16:40\\\":null,\\\"17:00\\\":null,\\\"17:20\\\":null,\\\"17:40\\\":null}\",\"4\":\"{\\\"08:00\\\":null,\\\"08:20\\\":null,\\\"08:40\\\":null,\\\"09:00\\\":null,\\\"09:20\\\":null,\\\"09:40\\\":null,\\\"10:00\\\":null,\\\"10:20\\\":null,\\\"10:40\\\":null}\",\"5\":\"{\\\"08:00\\\":null,\\\"08:20\\\":null,\\\"08:40\\\":null,\\\"09:00\\\":null,\\\"09:20\\\":null,\\\"09:40\\\":null,\\\"10:00\\\":null,\\\"10:20\\\":null,\\\"10:40\\\":null}\"}', '2019-05-09 02:02:38', '2019-06-18 05:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointments`
--

CREATE TABLE `doctor_appointments` (
  `id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_name` varchar(150) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `apt_date` date DEFAULT NULL,
  `apt_time` varchar(20) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor_appointments`
--

INSERT INTO `doctor_appointments` (`id`, `doctor_id`, `patient_name`, `phone`, `email`, `apt_date`, `apt_time`, `sex`, `created_at`, `updated_at`) VALUES
(3, 1, 'prolay', '0170000000', 'prolay@gmial.com', '2019-12-04', '03:30', NULL, '2019-12-04 05:14:11', '2019-12-04 05:14:11'),
(5, 1, 'prolay', '01751554502', 'prolay@gmial.com', '2019-12-04', '05:10', NULL, '2019-12-04 05:22:44', '2019-12-04 05:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `gross_salary` decimal(15,2) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(155) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `phone_no` varchar(50) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `monthly_salary` decimal(15,2) DEFAULT 0.00,
  `joining_date` date DEFAULT NULL,
  `resign_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active,2=inactive',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `branch_id`, `division_id`, `district_id`, `thana_id`, `gross_salary`, `name`, `email`, `image`, `designation_id`, `user_type`, `phone_no`, `present_address`, `permanent_address`, `monthly_salary`, `joining_date`, `resign_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL, NULL, NULL, 'Tajik Mirza', 'tajik@example.com', '768130119051826.jpg', 2, 0, '01758642312', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '22000.00', '2018-07-13', '2018-09-30', 2, '2018-07-18 02:32:28', '2019-01-12 23:18:26'),
(3, 1, NULL, NULL, NULL, NULL, 'Tahmid Tajik', 'tajik@gmail.com', '920130119051804.jpg', 1, 3, '014444544121', 'Mohammadpur, Dhaka, Bangladesh', NULL, '50000.00', '2018-09-01', NULL, 1, '2018-09-01 00:04:25', '2019-03-06 23:07:08'),
(4, 1, NULL, NULL, NULL, NULL, 'Abcd', 'abcd@gmail.com', '648130119051758.jpg', 1, 4, '01758642312', 'Dhaka, Bangladesh', NULL, '22000.00', '2018-09-30', NULL, 1, '2018-09-30 03:24:37', '2019-03-07 01:03:59'),
(5, 1, NULL, NULL, NULL, NULL, 'Abcd 2', 'final@gmail.com', '', 7, 0, '01758642312', 'Dhaka, Bangladesh', NULL, '22000.00', '2018-09-30', NULL, 1, '2018-09-30 03:27:01', '2018-09-30 03:53:03'),
(7, 1, NULL, NULL, NULL, NULL, 'Atahar Ali', 'atahar@gmail.com', '', 1, 3, '01756000000', 'Dhaka', 'Dhaka Bangladesh', '40000.00', '2019-03-01', NULL, 1, '2019-03-07 00:49:21', '2019-03-09 04:11:04'),
(8, NULL, NULL, NULL, NULL, NULL, 'Anisul Haque', 'anisul@gmail.com', NULL, 10, 5, '01756000012', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', '80000.00', '2019-06-17', NULL, 1, '2019-06-17 00:26:51', '2019-06-17 00:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `employee_designation`
--

CREATE TABLE `employee_designation` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`id`, `name`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Account Manager', 1, '2018-07-17 02:17:27', '2018-07-17 02:17:27'),
(2, 'Cash Manager', 1, '2018-07-17 02:18:04', '2018-07-17 02:18:04'),
(5, 'Chief Executive Officer', 1, '2018-07-17 02:19:05', '2018-07-17 02:19:05'),
(6, 'Director', 1, '2018-07-17 02:19:10', '2018-07-17 02:19:10'),
(7, 'Operator', 1, '2018-07-17 02:19:39', '2018-08-30 04:26:32'),
(8, 'Pion', 1, '2018-08-30 04:27:21', '2018-09-29 23:48:49'),
(9, 'Manager', 2, '2018-09-19 23:54:47', '2018-09-19 23:55:04'),
(10, 'Doctor', NULL, '2019-06-16 01:27:19', '2019-06-16 01:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `month` tinyint(4) DEFAULT NULL,
  `salary` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `employee_id`, `year`, `month`, `salary`, `created_at`, `updated_at`) VALUES
(1, 2, 2019, 1, '22000.00', '2019-01-12 23:18:47', '2019-01-12 23:18:47'),
(2, 3, 2019, 2, '50000.00', '2019-03-24 03:48:38', '2019-03-24 03:50:35');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `description`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PROBE Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergency services for patients', 'public/event/vYvv7.jpg', 1, NULL, NULL),
(2, 'Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergency services for patients', 'public/event/cpGNz.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `franchises`
--

CREATE TABLE `franchises` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) DEFAULT NULL,
  `thana_id` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `business_card` varchar(155) DEFAULT NULL,
  `trade_license` varchar(155) DEFAULT NULL,
  `organization_type` tinyint(4) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=enable, 2=disable',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `franchises`
--

INSERT INTO `franchises` (`id`, `name`, `mobile`, `dob`, `division_id`, `district_id`, `thana_id`, `email`, `address`, `business_card`, `trade_license`, `organization_type`, `sex`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Alok', '01751554502', '2019-11-03', 1, 2, 7, 'alok@gmail.com', 'Dhaka,bangladesh', NULL, NULL, 1, 1, 1, 1, '2019-11-11 03:37:33', '2019-11-11 03:37:33'),
(4, 'bappi', '01852123654', '2019-11-14', 1, 2, 6, 'bappi@gmail.com', 'dhaka,bangladesh', NULL, NULL, 7, 1, NULL, 1, '2019-11-11 03:52:30', '2019-11-11 03:52:30'),
(5, 'arafath', '016258741369', '2019-11-28', 1, 2, 7, 'arafath@gmial.com', 'narail,dhaka', NULL, NULL, 2, 1, 1, 1, '2019-11-11 03:54:33', '2019-11-11 03:54:33'),
(6, 'Dr Biplob Dev', '01534235586', '1988-11-11', 1, 1, 1, 'biplob@gmail.com', 'Dhaka, Bangladesh', '', '', 1, 1, NULL, 1, '2019-11-11 04:25:54', '2019-11-11 04:25:54'),
(7, 'prolay', '017000000', '1992-11-11', 1, 1, 2, 'biplod@gmail.com', 'dhaka, bangladeshq', '', '', 2, 1, NULL, 1, '2019-11-11 04:30:32', '2019-11-11 04:30:32'),
(8, 'Cardiology', '017000000', '1995-12-29', 1, 2, 9, 'sfdwerwfdsf@gmial.com', 'sdfasf', '524111119104034.jpg', '333111119104034.jpeg', 3, 1, NULL, 1, '2019-11-11 04:40:34', '2019-11-11 04:40:34'),
(9, 'Maruf', '01410258931', '2019-11-22', 2, 11, 48, 'marful@gmail.com', 'dhaka,bangalsesh', '137111119104227.jpeg', '206111119104227.jpg', 7, 1, 1, 1, '2019-11-11 04:42:27', '2019-11-11 04:42:27'),
(10, 'Rabbi', '0162134569', '2019-11-22', 1, 2, 7, 'rabbi@gmail.com', 'dhaka,bangladesh', '945111119105118.jpeg', '335111119105118.jpg', 1, 1, NULL, 1, '2019-11-11 04:51:18', '2019-11-11 04:51:18'),
(13, 'HOME COLLECTIONS', '017000000', '2019-11-15', 2, 12, 53, 'aef@gmail.com', 'dhaka,bangladesh', '944111119105920.jpg', '246111119105920.jpeg', 7, 1, 1, 1, '2019-11-11 04:59:20', '2019-11-11 04:59:20'),
(14, 'Cardiology', '017000000', '2019-11-14', 2, 11, 49, 'adminadfaga@probebd.com', 'dhaka,bangladesh', '1111119111157.jpg', '59111119111157.jpeg', 1, 2, 1, 1, '2019-11-11 05:11:57', '2019-11-11 05:11:57'),
(15, 'nobab', '016582123654', '2019-11-13', 1, 2, 6, 'noban@gmial.com', 'khulna,dhaka', '856111119111424.jpeg', '191111119111424.jpeg', 1, 2, NULL, 1, '2019-11-11 05:14:24', '2019-11-11 05:14:24'),
(16, 'janata health', '028802356', '1989-11-11', 1, 1, 2, 'janata@gmail.com', 'DHAKA, bangaldesh', '312111119120323.jpg', '243111119120323.jpeg', 2, 1, 10, 1, '2019-11-11 06:03:23', '2019-11-11 06:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `franchise_org`
--

CREATE TABLE `franchise_org` (
  `id` int(11) NOT NULL,
  `franchise_id` int(11) DEFAULT NULL,
  `org_name` varchar(150) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `bed` varchar(255) DEFAULT NULL,
  `daily_indoor_patient` int(11) DEFAULT NULL,
  `daily_outdoor_patient` int(11) DEFAULT NULL,
  `icu` tinyint(4) DEFAULT 0 COMMENT '1=yes,0=no',
  `nicu` tinyint(4) DEFAULT 0 COMMENT '1=yes,0=no',
  `ct_scan` tinyint(4) DEFAULT 0,
  `mri` tinyint(4) DEFAULT 0,
  `usg` tinyint(4) DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `employee` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `franchise_org`
--

INSERT INTO `franchise_org` (`id`, `franchise_id`, `org_name`, `org_address`, `speciality`, `bed`, `daily_indoor_patient`, `daily_outdoor_patient`, `icu`, `nicu`, `ct_scan`, `mri`, `usg`, `category`, `employee`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 'Alok medial care', 'Janata Housing society', 'nuro', '5', 15, 20, 1, 1, 1, 2, 2, NULL, NULL, NULL, '2019-11-11 03:37:33', '2019-11-11 03:37:33'),
(4, 4, 'bappi medial care', 'Shymoli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hospital', '20', NULL, '2019-11-11 03:52:30', '2019-11-11 03:52:30'),
(5, 5, 'arafath medial care', 'Janata Housing society, Mohammedpur', 'adfaga', '10', 50, 3, 1, 2, 1, 1, 1, NULL, NULL, NULL, '2019-11-11 03:54:33', '2019-11-11 03:54:33'),
(6, 6, 'ibn cena hospitals', 'dhaka, bangladesh', 'Cardiology, Surgery', '200', 1500, 200, 1, 1, 1, 2, 2, NULL, NULL, NULL, '2019-11-11 04:25:54', '2019-11-11 04:25:54'),
(7, 7, 'Alok medial care', 'Shymoli', 'nuro', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '2019-11-11 04:30:33', '2019-11-11 04:30:33'),
(8, 10, 'rabbi medial care', 'Shymoli', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2019-11-11 04:51:18', '2019-11-11 04:51:18'),
(9, 14, 'adsfasf', 'Janata Housing society, Mohammedpur', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2019-11-11 05:11:57', '2019-11-11 05:11:57'),
(10, 15, 'Alok medial care', 'khulna, bangladesh', 'Cardiology, Surgery', '1', 50, 100, 2, 2, 1, 1, 2, NULL, NULL, NULL, '2019-11-11 05:14:24', '2019-11-11 05:14:24'),
(11, 16, 'Janata health care ltd', 'dhaka, bangladesh', 'nurolozy, cardiology', '15', 55, 100, 2, 2, 1, 2, 1, NULL, NULL, NULL, '2019-11-11 06:03:23', '2019-11-11 06:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `healthtips`
--

CREATE TABLE `healthtips` (
  `id` int(11) NOT NULL,
  `photo` varchar(155) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `healthtips`
--

INSERT INTO `healthtips` (`id`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(2, '274281119065902.jpg', 1, '2019-11-28 00:59:02', '2019-11-28 08:29:44'),
(3, '447281119085145.JPG', NULL, '2019-11-28 02:51:45', '2019-11-28 02:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'prolay', 'prolay@gmial.com', 'Laravel', 'This is laravel E-commerce Web site', '2019-11-13 23:03:06', '2019-11-13 23:03:06'),
(3, 'Shakil', 'prolay@gmial.com', 'Laravel', 'UFkjhkjs', '2019-11-14 02:16:18', '2019-11-14 02:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `patiant_id` varchar(11) DEFAULT NULL,
  `order_id` varchar(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` tinyint(3) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `pay_type` tinyint(3) DEFAULT NULL,
  `order_confirm_by` int(11) DEFAULT NULL,
  `is_home_collection` tinyint(4) DEFAULT NULL,
  `shipping_name` varchar(150) DEFAULT NULL,
  `shipping_phone` varchar(150) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `collection_fees` decimal(15,2) DEFAULT NULL,
  `apt_date` date DEFAULT NULL,
  `apt_from_time` time DEFAULT NULL,
  `apt_to_time` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `patiant_id`, `order_id`, `order_date`, `order_status`, `total`, `pay_type`, `order_confirm_by`, `is_home_collection`, `shipping_name`, `shipping_phone`, `shipping_address`, `collection_fees`, `apt_date`, `apt_from_time`, `apt_to_time`, `created_at`, `updated_at`) VALUES
(15, 'PBP19120013', 'PBO19120015', '2019-12-12', 2, '1350.00', 0, NULL, 0, 'patiant', '01741859623', NULL, '300.00', NULL, NULL, NULL, '2019-12-12 02:42:46', '2019-12-22 12:01:40'),
(17, 'PBP19120013', 'PBO19120017', '2019-12-22', 1, '4600.00', 0, NULL, 0, 'patiant', '01741859623', NULL, '300.00', NULL, NULL, NULL, '2019-12-22 11:50:01', '2019-12-22 11:50:01'),
(19, NULL, 'PBO19120018', '2019-12-23', 1, '4300.00', 0, NULL, 0, 'Bappi', '1751554503', NULL, '300.00', NULL, NULL, NULL, '2019-12-22 23:30:44', '2019-12-22 23:30:44'),
(20, 'PBP19120014', 'PBO19120020', '2019-12-23', 2, '2300.00', 0, NULL, 0, 'demo', '01312123123', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-22 23:38:39', '2019-12-23 08:15:28'),
(21, 'PBP19120014', 'PBO19120021', '2019-12-23', 1, '1800.00', 0, NULL, 0, 'demo', '01312123123', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-23 00:12:24', '2019-12-23 00:12:24'),
(22, 'PBP19120014', 'PBO19120022', '2019-12-23', 1, '1800.00', 0, NULL, 1, NULL, NULL, NULL, '300.00', NULL, NULL, NULL, '2019-12-23 05:53:17', '2019-12-23 05:53:17'),
(23, 'PBP19120014', 'PBO19120023', '2019-12-27', 1, '2300.00', 0, NULL, NULL, 'demo', '01312123123', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-27 01:18:02', '2019-12-27 01:18:02'),
(24, 'PBP19120015', 'PBO19120024', '2019-12-29', 1, '3450.00', 0, NULL, NULL, 'Habib', '01474585888', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-29 02:16:16', '2019-12-29 02:16:16'),
(25, 'PBP19120015', 'PBO19120025', '2019-12-29', 1, '2400.00', 0, NULL, NULL, 'Habib', '01474585888', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-29 05:46:07', '2019-12-29 05:46:07'),
(26, 'PBP19120015', 'PBO19120026', '2019-12-29', 1, '300.00', 0, NULL, NULL, 'Habib', '01474585888', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-29 06:13:56', '2019-12-29 06:13:56'),
(27, 'PBP19120015', 'PBO19120027', '2019-12-30', 1, '1450.00', 0, NULL, NULL, 'Habib', '01474585888', 'dhaka', '300.00', NULL, NULL, NULL, '2019-12-29 23:27:24', '2019-12-29 23:27:24'),
(28, 'PBP19120017', 'PBO19120028', '2019-12-30', 1, '3500.00', 0, NULL, 0, 'king', '01623145610', 'dhaka', '0.00', NULL, NULL, NULL, '2019-12-30 05:40:55', '2019-12-30 05:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_type` varchar(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_cost` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `item_type`, `quantity`, `unit_cost`, `total`, `created_at`, `updated_at`) VALUES
(1, 'PBO19120011', 2, 'test', 2, '1150.00', '2300.00', '2019-12-07 01:54:24', '2019-12-12 09:27:52'),
(9, 'PBO19120014', 1, 'package', 1, '1150.00', '1150.00', '2019-12-12 00:11:25', '2019-12-12 09:12:54'),
(10, 'PBO19120015', 1, 'package', 1, '1050.00', '1050.00', '2019-12-12 02:42:46', '2019-12-23 05:46:48'),
(11, 'PBO19120016', 1, 'test', 1, '2000.00', '2000.00', '2019-12-21 23:19:21', '2019-12-22 05:24:29'),
(13, 'PBO19120018', 1, 'test', 2, '2000.00', '4000.00', '2019-12-22 23:30:44', '2019-12-23 08:21:15'),
(14, 'PBO19120020', 2, 'test', 1, '2000.00', '2000.00', '2019-12-22 23:38:39', '2019-12-23 05:46:33'),
(15, 'PBO19120021', 2, 'test', 1, '1500.00', '1500.00', '2019-12-23 00:12:24', '2019-12-23 06:14:09'),
(16, 'PBO19120022', 2, 'test', 1, '1500.00', '1500.00', '2019-12-23 05:53:17', '2019-12-23 05:53:17'),
(17, 'PBO19120023', 1, 'test', 1, '2000.00', '2000.00', '2019-12-27 01:18:02', '2019-12-27 01:18:02'),
(18, 'PBO19120024', 1, 'test', 1, '2000.00', '3150.00', '2019-12-29 02:16:16', '2019-12-29 02:16:16'),
(19, 'PBO19120024', 2, 'package', 1, '1150.00', '0.00', '2019-12-29 02:16:16', '2019-12-29 02:16:16'),
(20, 'PBO19120025', 1, 'package', 2, '1050.00', '2100.00', '2019-12-29 05:46:07', '2019-12-29 05:46:07'),
(21, 'PBO19120027', 2, 'package', 1, '1150.00', '1150.00', '2019-12-29 23:27:24', '2019-12-29 23:27:24'),
(22, 'PBO19120028', 1, 'test', 1, '2000.00', '3500.00', '2019-12-30 05:40:55', '2019-12-30 05:40:55'),
(23, 'PBO19120028', 2, 'test', 1, '1500.00', '0.00', '2019-12-30 05:40:55', '2019-12-30 05:40:55');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `price`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Cardiology', '4 basic test.100k taka life insurence coverage.50k accidental coverage.', '1050', 'public/package/6TXdb.png', NULL, NULL),
(2, 'Urology', '4 basic test.100k taka life insurence coverage.50k accidental coverage.', '1150', 'public/package/MHxVw.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_bookings`
--

CREATE TABLE `package_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pathology_test`
--

CREATE TABLE `pathology_test` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `specimen` varchar(255) DEFAULT NULL,
  `test_dept_id` int(11) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `fr_price` decimal(15,2) DEFAULT NULL,
  `pr_price` decimal(15,2) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=enable,2=disable',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pathology_test`
--

INSERT INTO `pathology_test` (`id`, `name`, `specimen`, `test_dept_id`, `price`, `fr_price`, `pr_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CBC', 'EDTA lavender-top tube or microcollection tube. For EDTA platelet clumping ONLY, draw an additional lue-top (sodium citrate) tube.\r\nOff-campus laboratory: Two blood smears are to accompany sample. They must be labeled with two (2) patient identifiers and ', 1, '2000.00', '1550.00', '450.00', 1, '2019-11-28 10:04:50', NULL),
(2, 'FBS', '2 mL plasma; minimum 0.5 mL', 2, '1500.00', '1000.00', '500.00', 1, '2019-11-28 10:06:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) DEFAULT NULL,
  `patient_name` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_phn` varchar(255) DEFAULT NULL,
  `gender` int(3) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `blood_group` int(3) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `status` int(3) DEFAULT NULL COMMENT '1 = Hospitalised, 2=Released ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_id`, `patient_name`, `guardian_name`, `guardian_phn`, `gender`, `phone_no`, `image`, `email`, `address`, `blood_group`, `register_date`, `nationality`, `status`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, NULL, '01741000000', 1, NULL, NULL, 'arafath@gmial.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-02 04:28:02', '2019-12-02 04:28:02'),
(10, NULL, NULL, NULL, '01741000000', 1, NULL, NULL, 'alok@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-02 04:54:02', '2019-12-02 04:54:02'),
(11, NULL, NULL, NULL, '0174100002', 1, NULL, NULL, 'chayon@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-02 05:58:51', '2019-12-02 05:58:51'),
(12, 'PBP19120012', 'Bappi', NULL, '01741074586', 1, '01423142563', NULL, 'bappi@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-11 03:13:28', '2019-12-11 03:13:28'),
(13, 'PBP19120013', 'patiant', NULL, '01731060600', 1, '01741859623', NULL, 'patiant@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-11 03:19:41', '2019-12-11 03:19:41'),
(14, 'PBP19120014', 'demo', NULL, '01312123124', 1, '01312123123', NULL, 'demo@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-22 23:37:51', '2019-12-22 23:37:51'),
(15, 'PBP19120015', 'Habib', NULL, '01474585889', 1, '01474585888', NULL, 'habib@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-29 02:01:04', '2019-12-29 02:01:04'),
(16, 'PBP19120016', 'punom', NULL, '01312852148', 1, '01312852147', NULL, 'punom@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-29 23:44:10', '2019-12-29 23:44:10'),
(17, 'PBP19120017', 'king', NULL, '01623145611', 1, '01623145610', NULL, 'king@gmail.com', 'dhaka', NULL, NULL, NULL, NULL, '2019-12-30 00:40:30', '2019-12-30 00:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'PATHOOGY', 'PROBE Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergency services for patients', 'public/package/XCOjf.png', NULL, NULL),
(2, 'MICROBIOLOGY', 'PROBE Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergency services for patients', 'public/package/11wDB.jpg', NULL, NULL),
(4, 'HOME COLLECTION', 'PROBE Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergency services for patients', 'public/package/9vu94.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'public/story/MWvr8.jpg', 'PROBE Services is a state of the Art Pathology Laboratory and one of the leading networks providing Quality Services:All Diagnostic facilities under one roof.Online reporting facility.24 Hours emergen', 1, NULL, NULL),
(5, 'public/story/T05NF.jpg', '<p><strong>Probe siniging with al arafth clinice and diagnostic center rajshahi Today.</strong></p>', NULL, NULL, NULL),
(6, 'public/story/8ZP3A.jpg', '<h2 style=\"font-style:italic;\">&quot;Prove signing with Rajshahi Royal Hospital Pvt. Ltd&quot;, Rajshahi&quot;, We are very glad to hear with us.</h2>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_department`
--

CREATE TABLE `test_department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=enable,2=disable',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test_department`
--

INSERT INTO `test_department` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pathology', 1, '2019-11-27 04:19:52', '2019-11-27 04:19:52'),
(2, 'Hematology', 1, '2019-11-27 04:20:16', '2019-11-27 04:20:16'),
(3, 'Neurology', 1, '2019-11-27 04:20:27', '2019-11-27 04:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `district_id`, `created_at`, `updated_at`) VALUES
(1, 'Abc', 3, '2019-11-12 02:34:00', '2019-11-12 02:34:00'),
(3, 'XYZ', 2, '2019-11-12 02:34:32', '2019-11-12 02:34:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `phone_number`, `present_address`, `permanent_address`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', '2018-12-01 10:44:09', '$2y$10$NVQ4lG5mxDFO/0F6swmgLOhd74JI87MHlHzTyKlkxTTllH98ioxlG', 'wWP3VqHACPNGBBMKWXk5siyIw6yMG9m8pAJuTQ6q39faavFbzQ0Be15bNLE4', NULL, '0175412563', 'golden street, ring road, shamoly, dhaka', 'golden street, ring road, shamoly, dhaka', '531021218063843.jpg', NULL, '2019-01-11 23:45:25'),
(2, 'Atahar Ali', 'atahar@gmail.com', NULL, '$2y$10$27ONRxFBx.5mmY6N1/kVAOFjH0nax/ZXvbfRTi7tn0CblQ.jHzjga', 'fxiEIOO6w7dcSqRJAx12l2LnXIklK1ZyZBmRopDlgtDIB8HBEFeB29wUsiLw', 3, '01756000000', 'Dhaka', 'Dhaka Bangladesh', '923070319065027.png', '2019-03-07 00:49:21', '2019-03-09 04:11:04'),
(3, 'Abcd', 'abcd@gmail.com', NULL, '$2y$10$zvnNWyjpGvhjQzQwmGNV9ejHX0fqAZ0jnRfgX8ihqEQ2laTLVuk.y', NULL, 4, '01758642312', 'Dhaka, Bangladesh', NULL, NULL, '2019-03-07 01:03:59', '2019-03-07 01:03:59'),
(4, 'Dr. Salimullah Akhter', 'salimullah@gmail.com', NULL, '$2y$10$Lu1qNoICZmLoGEoXokLOY.KZmjO13C1LpADqyDHc3KIyp/ckjpQoi', 'pCJvxQAdpcIjJ4l4XHHpszxugU1N5uq3CROND6V7t3d47xLP6j4OlxHWIKHS', 5, '01756000040', 'Uttara, Dhaka, Bangladesh', NULL, NULL, '2019-05-09 02:02:53', '2019-05-09 02:02:53'),
(8, 'Atahar Sharif', 'p.atahar@gmail.com', NULL, '$2y$10$d50JmwW6m.NPCGerqSJwBuq5/2jIkW02rCMrP.3.vE3T7amHuctWi', NULL, 6, '01756000025', 'Dhaka', NULL, NULL, '2019-06-01 00:01:02', '2019-06-01 00:01:02'),
(9, 'Anisul Haque', 'anisul@gmail.com', NULL, '$2y$10$emLi02V2K1Q1w54Gz45DbeJT8utvhwiwZhkpah.F.XRyMFoeB/2V6', NULL, 5, '01756000012', 'Dhaka, Bangladesh', 'Dhaka, Bangladesh', NULL, '2019-06-17 00:26:51', '2019-06-17 00:26:51'),
(11, 'Shakil', 'prolay1@gmial.com', NULL, '$2y$10$D07TlcOTPf0QUOn5/4A3iOPUw/QqSjbbnPr2G4i/TGV70YYAFIn4u', NULL, NULL, '1751554502', NULL, NULL, NULL, '2019-12-02 04:23:22', '2019-12-02 04:23:22'),
(14, 'Chayon', 'chayon@gmail.com', NULL, '$2y$10$lt7y65dQx6iHqrh2iz0KVutvPnZNJ5vjhmebQy6kAnx7kHBiezmr2', NULL, 6, '1751554602', NULL, NULL, NULL, '2019-12-02 05:58:52', '2019-12-02 05:58:52'),
(15, 'patiant', 'patiant@gmail.com', NULL, '$2y$10$Dz53bF3WefyDbtTtVNhaLOy.RGnjr1eP0FHjWSaJ2AMIkFcaIlNii', NULL, 6, '01741859623', NULL, NULL, NULL, '2019-12-11 03:19:41', '2019-12-11 03:19:41'),
(16, 'demo', 'demo@gmail.com', NULL, '$2y$10$d8P5.fLIpmCqY0b.ahrjuuFeoLHni2UrD6jvieSdzPPc8pgXxfB7G', NULL, 6, '01312123123', 'dhaka', NULL, NULL, '2019-12-22 23:37:52', '2019-12-22 23:37:52'),
(17, 'Habib', 'habib@gmail.com', NULL, '$2y$10$ZtlSs9Rxv.AK9DA9Pg6Bb.ucvm2fCYWuPMB.N4wyU/s0MEc6spWPO', 'vcP0JQxs2Q3qnWOJLAiQADwrdGyeVxDGlflxhWvG25Ss3W00WV44WpWKOWBO', 6, '01474585888', 'dhaka', NULL, NULL, '2019-12-29 02:01:04', '2019-12-29 02:01:04'),
(18, 'punom', 'punom@gmail.com', NULL, '$2y$10$3hxfsSDb9hiG9LXcyeI5YuT2lFXiRQIscRr39aFUtKoUD50TRhEya', NULL, 6, '01312852147', 'dhaka', NULL, NULL, '2019-12-29 23:44:10', '2019-12-29 23:44:10'),
(19, 'king', 'king@gmail.com', NULL, '$2y$10$OyZjDES10JCcH4AfuMMMvOpBYq6E8uT4BwxiYR6Bby3cyyk73isDC', 'lk7zm5pqbaKLHLEYL09szv7CwNCiY6RTfmztSheBePMpvk1Y9sp0E3QQq5p8', 6, '01623145610', 'dhaka', NULL, NULL, '2019-12-30 00:40:30', '2019-12-31 02:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_role` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `user_type`, `user_role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, '2018-11-13 01:59:56', '2018-11-13 01:59:56'),
(2, 'Manager', NULL, '2018-11-13 02:00:10', '2018-11-13 02:10:01'),
(3, 'Accountant', NULL, '2018-11-13 02:32:21', '2019-03-12 04:41:52'),
(4, 'Employee', NULL, '2018-11-13 02:32:30', '2018-11-13 02:32:30'),
(5, 'Doctor', '{\"BloodBankController\":{\"controller_name\":\"BloodBankController\",\"view\":\"1\"}}', '2019-05-08 03:20:20', '2019-11-02 03:01:12'),
(6, 'Patient', NULL, '2019-05-19 00:32:06', '2019-05-19 00:32:06'),
(7, 'Agents', '{\"EmployeeController\":{\"controller_name\":\"EmployeeController\",\"view\":\"1\",\"delete\":\"1\"},\"AgentFranchiseController\":{\"controller_name\":\"AgentFranchiseController\",\"view\":\"1\",\"add_edit\":\"1\",\"delete\":\"1\"}}', '2019-11-01 09:55:14', '2019-11-11 06:05:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_payment`
--
ALTER TABLE `admission_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_division_id_foreign` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_designation`
--
ALTER TABLE `employee_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchises`
--
ALTER TABLE `franchises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franchise_org`
--
ALTER TABLE `franchise_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healthtips`
--
ALTER TABLE `healthtips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pathology_test`
--
ALTER TABLE `pathology_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_department`
--
ALTER TABLE `test_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor_appointments`
--
ALTER TABLE `doctor_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee_designation`
--
ALTER TABLE `employee_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `franchises`
--
ALTER TABLE `franchises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `franchise_org`
--
ALTER TABLE `franchise_org`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `healthtips`
--
ALTER TABLE `healthtips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pathology_test`
--
ALTER TABLE `pathology_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test_department`
--
ALTER TABLE `test_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
