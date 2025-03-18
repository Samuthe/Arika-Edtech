-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2023 at 10:11 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srs4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add books', 7, 'add_books'),
(26, 'Can change books', 7, 'change_books'),
(27, 'Can delete books', 7, 'delete_books'),
(28, 'Can view books', 7, 'view_books'),
(29, 'Can add student', 8, 'add_student'),
(30, 'Can change student', 8, 'change_student'),
(31, 'Can delete student', 8, 'delete_student'),
(32, 'Can view student', 8, 'view_student');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$CAXcGgub0eTg7YPKXAzajY$VAxaiARd8e525GQPr5eIZzpqAIqJai8/AX5awpkAHx8=', '2023-03-29 06:34:21.098112', 0, 'samir', '', '', 'shamirisaidiselemani@gmail.com', 0, 1, '2023-03-28 08:06:52.208781'),
(2, 'pbkdf2_sha256$390000$xdXCl4ECV2hxrnHsguFNHG$S/c9Bmr0q0cHwESro8D7avWGz9JkS12BK+ROHpr0rwk=', NULL, 0, 'alice', '', '', 'alice@gmail.com', 0, 1, '2023-03-28 08:11:53.916312'),
(3, 'pbkdf2_sha256$390000$8lwbY64EEh83eaWLpjpVb2$NYYWqOwd8A8DxsaCDuVY70DTgW8JDFTKKVvFqsGCUq8=', NULL, 0, 'sds', '', '', 'aliced@gmail.com', 0, 1, '2023-03-28 08:13:55.534195'),
(4, 'pbkdf2_sha256$390000$pE1X9MVm1pOe6uZXY6BJIm$Q1xEcZUH+mjxfW2EkkFgG+6i7uo58CLPLHvib1V9vPQ=', NULL, 0, 'jackson', '', '', 'jackson@gmail.com', 0, 1, '2023-03-28 08:16:22.354168'),
(5, 'pbkdf2_sha256$390000$IvUbsSxzYOLMCCr6JEDktO$Cx/EOu2hDCJK8Vyc78DDFXRic3lbaUca4EMCPqSGco0=', '2023-03-29 07:27:03.665594', 1, 'shakir', '', '', 'shakir@gmail.com', 1, 1, '2023-03-28 08:22:54.942505'),
(6, 'pbkdf2_sha256$390000$s2PeRmHYwOKGV1GIZGGIcq$6ru7J5OQRFuF5+Fc42sH5Iuh7JwVnfs4zwsofffE5fo=', NULL, 0, 'waliyah', '', '', 'waliyah@gmail.com', 0, 1, '2023-03-28 08:31:42.242112'),
(7, 'pbkdf2_sha256$390000$6uLSj4c48l5nPFB0wzBGQz$mDCd802GWbrbPOxBrhfbLrYovzNN+KfWm/wT2IXXfHQ=', NULL, 0, 'aliy', '', '', 'aliy@gmail.com', 0, 1, '2023-03-28 09:24:19.257893'),
(8, 'pbkdf2_sha256$390000$JSkVhTrwQx1MsOVKAgEOW9$a9iDoi1NGQ/i5qovZ5jNmnxO0H6GhgQ8j+BvriVodx0=', '2023-03-29 08:05:05.016746', 0, 'james', 'jam', 'alfred', 'james@gmail.com', 0, 1, '2023-03-28 09:40:35.818688'),
(9, 'pbkdf2_sha256$390000$cggaVvWvR5IlS9Z78DlTJh$BxwI0GfIQ1ZoHpWck83xPevQMfltFaQ8juaeKBm23LM=', NULL, 1, 'samson', '', '', '', 1, 1, '2023-03-28 09:51:05.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-29 04:59:35.276886', '1', 'Books object (1)', 1, '[{\"added\": {}}]', 7, 5),
(2, '2023-03-29 05:10:30.137485', '2', 'Books object (2)', 1, '[{\"added\": {}}]', 7, 5),
(3, '2023-03-29 05:49:28.382715', '2', 'Books object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 5),
(4, '2023-03-29 05:52:07.648072', '2', 'Books object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 5),
(5, '2023-03-29 05:52:31.001557', '2', 'Books object (2)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 5),
(6, '2023-03-29 05:53:39.758618', '1', 'Books object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 5),
(7, '2023-03-29 05:55:30.166022', '1', 'Books object (1)', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 5),
(8, '2023-03-29 06:48:28.392717', '3', 'Books object (3)', 1, '[{\"added\": {}}]', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'STUDENT', 'books'),
(8, 'STUDENT', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-28 20:13:29.090990'),
(2, 'auth', '0001_initial', '2023-03-28 20:13:39.032780'),
(3, 'STUDENT', '0001_initial', '2023-03-28 20:13:40.736067'),
(4, 'admin', '0001_initial', '2023-03-28 20:13:42.624908'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-03-28 20:13:42.706192'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-28 20:13:42.783493'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-03-28 20:13:43.847938'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-28 20:13:45.020958'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-28 20:13:45.291622'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-28 20:13:45.401257'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-28 20:13:46.102392'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-28 20:13:46.136197'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-28 20:13:46.191140'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-28 20:13:46.312376'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-28 20:13:46.481933'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-28 20:13:46.729592'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-28 20:13:46.804717'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-03-28 20:13:46.988531'),
(19, 'sessions', '0001_initial', '2023-03-28 20:13:47.646364'),
(20, 'STUDENT', '0002_remove_student_fullname_remove_student_phone', '2023-03-28 20:20:01.181163'),
(21, 'STUDENT', '0003_alter_books_description', '2023-03-29 05:03:46.585735');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('49e7mjj94ntud4abhip1cbj158xk19ng', '.eJxVjDsOwyAQRO9CHSHA5pcyvc-AFpYNTiKQjF1FuXtsyUVSjTTvzbxZgG0tYet5CTOyK3Ps8ttFSM9cD4APqPfGU6vrMkd-KPyknU8N8-t2un8HBXrZ12kAb0EoiZRsTBGF0Ink4FDuQTSAM6PPFHWWozeCtMpgEIQA8ipa9vkCD9k45g:1phQnp:n1lB9DEBZ5Jw5E40WYpAa95lK-UiJI54d8PKovgiHhY', '2023-04-12 08:05:05.158035');

-- --------------------------------------------------------

--
-- Table structure for table `student_books`
--

CREATE TABLE `student_books` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `book_name` varchar(200) NOT NULL,
  `author` varchar(200) NOT NULL,
  `publication_year` datetime(6) NOT NULL,
  `isbn` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `program` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_books`
--

INSERT INTO `student_books` (`id`, `logo`, `file`, `heading`, `description`, `book_name`, `author`, `publication_year`, `isbn`, `date`, `program`) VALUES
(1, 'logo/51wyCS55b1L._SL500_.jpg', 'pdf/Organisational-culture-in-sport.pdf', 'Motivation theory', '<p><span style=\"color:#e67e22\"><strong>Motivation theory</strong></span></p>\r\n\r\n<p><span style=\"color:#2c3e50\"><em>is the study of understanding what drives a person to work towards a particular goal or outcome. It&#39;s relevant to all of society but is especially important to business and management. That&#39;s because a motivated employee is more productive, and a more productive employee is more profitable.</em></span></p>', 'Motivation', 'Abraham Maslow, David McClelland, Edward L. Deci  Frederick Herzberg 1923–2000', '1917-03-07 04:58:32.000000', 205080057, '2023-03-29 04:59:35.267238', 'Bachelor Commerce in Procurement and Logistics Management'),
(2, 'logo/978-3-030-56402-5.jpg', 'pdf/proba.pdf', 'Probability and Statistics', '<p><span style=\"color:#d35400\"><strong>This book is an introductory</strong></span></p>\r\n\r\n<p><span style=\"color:#2c3e50\"><em>text on probability and statistics, targeting students who have studied one year of calculus at the university level and are seeking an introduction to probability and statistics with mathematical content. Where possible, we provide mathematical details, and it is expected that students are seeking to gain some mastery over these, as well as to learn how to conduct data analyses.<img alt=\"smiley\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/regular_smile.png\" style=\"height:23px; width:23px\" title=\"smiley\" /><img alt=\"\" src=\"https://i.pinimg.com/736x/77/a4/2b/77a42b6d912b2469bb792db4531e069b--abraham-maslow-maslows-hierarchy-of-needs.jpg\" style=\"float:right; height:70px; width:109px\" /></em></span></p>', 'University of Toronto', 'Michael J. Evans and Je§rey S. Rosenthal', '2023-03-23 12:00:00.000000', 3222333, '2023-03-29 05:10:30.127311', 'Bachelor Commerce in Procurement and Logistics Management'),
(3, 'logo/91-Ww3lbTcL.jpg', 'pdf/LAUNDRY_BUSINESS_PLAN.pdf', 'facility location', '<p>The study of facility location problems, also known as location analysis, is a branch of operations research and computational geometry concerned with the optimal placement of facilities to minimize</p>', 'Proximity to sources of supply', 'Michael J. Evans and Je§rey S. Rosenthal', '2021-12-15 00:00:00.000000', 4343434, '2023-03-29 06:48:28.382725', 'Bachelor Commerce in Procurement and Logistics Management');

-- --------------------------------------------------------

--
-- Table structure for table `student_student`
--

CREATE TABLE `student_student` (
  `id` int(11) NOT NULL,
  `program` varchar(250) NOT NULL,
  `student_id_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_student`
--

INSERT INTO `student_student` (`id`, `program`, `student_id_id`) VALUES
(1, 'r', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `student_books`
--
ALTER TABLE `student_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `STUDENT_student_student_id_id_c1655517_fk_auth_user_id` (`student_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `student_books`
--
ALTER TABLE `student_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_student`
--
ALTER TABLE `student_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `student_student`
--
ALTER TABLE `student_student`
  ADD CONSTRAINT `STUDENT_student_student_id_id_c1655517_fk_auth_user_id` FOREIGN KEY (`student_id_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
