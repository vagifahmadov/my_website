-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2025 at 05:54 PM
-- Server version: 8.0.41-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vawebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add header table', 1, 'add_headertable'),
(2, 'Can change header table', 1, 'change_headertable'),
(3, 'Can delete header table', 1, 'delete_headertable'),
(4, 'Can view header table', 1, 'view_headertable'),
(5, 'Can add testimonial', 2, 'add_testimonial'),
(6, 'Can change testimonial', 2, 'change_testimonial'),
(7, 'Can delete testimonial', 2, 'delete_testimonial'),
(8, 'Can view testimonial', 2, 'view_testimonial'),
(9, 'Can add our team', 3, 'add_ourteam'),
(10, 'Can change our team', 3, 'change_ourteam'),
(11, 'Can delete our team', 3, 'delete_ourteam'),
(12, 'Can view our team', 3, 'view_ourteam'),
(13, 'Can add footer', 4, 'add_footer'),
(14, 'Can change footer', 4, 'change_footer'),
(15, 'Can delete footer', 4, 'delete_footer'),
(16, 'Can view footer', 4, 'view_footer'),
(17, 'Can add statistic progress', 5, 'add_statisticprogress'),
(18, 'Can change statistic progress', 5, 'change_statisticprogress'),
(19, 'Can delete statistic progress', 5, 'delete_statisticprogress'),
(20, 'Can view statistic progress', 5, 'view_statisticprogress'),
(21, 'Can add statistic website', 6, 'add_statisticwebsite'),
(22, 'Can change statistic website', 6, 'change_statisticwebsite'),
(23, 'Can delete statistic website', 6, 'delete_statisticwebsite'),
(24, 'Can view statistic website', 6, 'view_statisticwebsite'),
(25, 'Can add subscribe', 7, 'add_subscribe'),
(26, 'Can change subscribe', 7, 'change_subscribe'),
(27, 'Can delete subscribe', 7, 'delete_subscribe'),
(28, 'Can view subscribe', 7, 'view_subscribe'),
(29, 'Can add animations', 8, 'add_animations'),
(30, 'Can change animations', 8, 'change_animations'),
(31, 'Can delete animations', 8, 'delete_animations'),
(32, 'Can view animations', 8, 'view_animations'),
(33, 'Can add requests', 9, 'add_requests'),
(34, 'Can change requests', 9, 'change_requests'),
(35, 'Can delete requests', 9, 'delete_requests'),
(36, 'Can view requests', 9, 'view_requests'),
(37, 'Can add pages', 10, 'add_pages'),
(38, 'Can change pages', 10, 'change_pages'),
(39, 'Can delete pages', 10, 'delete_pages'),
(40, 'Can view pages', 10, 'view_pages'),
(41, 'Can add languages', 11, 'add_languages'),
(42, 'Can change languages', 11, 'change_languages'),
(43, 'Can delete languages', 11, 'delete_languages'),
(44, 'Can view languages', 11, 'view_languages'),
(45, 'Can add log entry', 12, 'add_logentry'),
(46, 'Can change log entry', 12, 'change_logentry'),
(47, 'Can delete log entry', 12, 'delete_logentry'),
(48, 'Can view log entry', 12, 'view_logentry'),
(49, 'Can add permission', 13, 'add_permission'),
(50, 'Can change permission', 13, 'change_permission'),
(51, 'Can delete permission', 13, 'delete_permission'),
(52, 'Can view permission', 13, 'view_permission'),
(53, 'Can add group', 14, 'add_group'),
(54, 'Can change group', 14, 'change_group'),
(55, 'Can delete group', 14, 'delete_group'),
(56, 'Can view group', 14, 'view_group'),
(57, 'Can add user', 15, 'add_user'),
(58, 'Can change user', 15, 'change_user'),
(59, 'Can delete user', 15, 'delete_user'),
(60, 'Can view user', 15, 'view_user'),
(61, 'Can add content type', 16, 'add_contenttype'),
(62, 'Can change content type', 16, 'change_contenttype'),
(63, 'Can delete content type', 16, 'delete_contenttype'),
(64, 'Can view content type', 16, 'view_contenttype'),
(65, 'Can add session', 17, 'add_session'),
(66, 'Can change session', 17, 'change_session'),
(67, 'Can delete session', 17, 'delete_session'),
(68, 'Can view session', 17, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1000000$dvDI8EdtbKVgVKXr1CFmLg$AkbQAHIlNEWgaVOijZSgEUJNKt4mEmy/Z4noDTCSFhQ=', '2025-04-15 10:33:09.000000', 1, 'dj_admin', 'Vagif', 'AHMADOV', 'ahmadov@main.com', 1, 1, '2025-04-15 10:19:30.000000'),
(2, 'pbkdf2_sha256$1000000$3r7ZLCqMHwWNM3IYpHEzyo$UIRX1o3A3uck75G7Nj5MJ8JUJxx4LDn47p+5qm1Rjfc=', NULL, 0, 'dj_user', '', '', '', 0, 1, '2025-04-15 10:33:54.535670');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-04-15 10:25:16.673580', '1', 'admin', 2, '[]', 15, 1),
(2, '2025-04-15 10:33:54.990448', '2', 'dj_user', 1, '[{\"added\": {}}]', 15, 1),
(3, '2025-04-15 10:34:46.471570', '1', 'dj_admin', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 15, 1),
(4, '2025-04-15 11:58:50.396049', '1', 'HeaderTable object (1)', 1, '[{\"added\": {}}]', 1, 1),
(5, '2025-04-15 12:01:21.654727', '1', 'HeaderTable object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 1, 1),
(6, '2025-04-16 13:01:50.038497', '1', 'HeaderTable object (1)', 2, '[]', 1, 1),
(7, '2025-04-16 13:03:24.411704', '2', 'HeaderTable object (2)', 1, '[{\"added\": {}}]', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'admin', 'logentry'),
(14, 'auth', 'group'),
(13, 'auth', 'permission'),
(15, 'auth', 'user'),
(16, 'contenttypes', 'contenttype'),
(8, 'main', 'animations'),
(4, 'main', 'footer'),
(1, 'main', 'headertable'),
(11, 'main', 'languages'),
(3, 'main', 'ourteam'),
(10, 'main', 'pages'),
(9, 'main', 'requests'),
(5, 'main', 'statisticprogress'),
(6, 'main', 'statisticwebsite'),
(7, 'main', 'subscribe'),
(2, 'main', 'testimonial'),
(17, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-04-15 07:22:06.164740'),
(2, 'auth', '0001_initial', '2025-04-15 07:22:07.146922'),
(3, 'admin', '0001_initial', '2025-04-15 07:22:07.384553'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-04-15 07:22:07.398006'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-04-15 07:22:07.409897'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-04-15 07:22:07.583305'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-04-15 07:22:07.690394'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-04-15 07:22:07.720756'),
(9, 'auth', '0004_alter_user_username_opts', '2025-04-15 07:22:07.731748'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-04-15 07:22:07.819470'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-04-15 07:22:07.824906'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-04-15 07:22:07.837525'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-04-15 07:22:07.938760'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-04-15 07:22:08.043623'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-04-15 07:22:08.071279'),
(16, 'auth', '0011_update_proxy_permissions', '2025-04-15 07:22:08.092673'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-04-15 07:22:08.197931'),
(18, 'sessions', '0001_initial', '2025-04-15 07:22:08.258454'),
(19, 'main', '0001_initial', '2025-04-15 09:05:33.998591'),
(20, 'main', '0002_initial', '2025-04-15 09:05:34.365612');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0tscxbtkvzcokazy7j5xxku42gl2qvfk', '.eJxVjEEOwiAQRe_C2hAQGKhL9z0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXERWpx-N8L04LaDfMd2m2Wa27pMJHdFHrTLcc78vB7u30HFXr81eNQQrEs-Kyw5MCRdiiKHms4DKjIOIQVig86pjGyNtX4A0GRYOxDvD_I3N_M:1u4dbJ:gqtsKTuSJJ5H5LCsmbAo9x8uc3KMHSPEzrfo9ugSwJU', '2025-04-29 10:33:09.927466');

-- --------------------------------------------------------

--
-- Table structure for table `main_animations`
--

CREATE TABLE `main_animations` (
  `id` bigint NOT NULL,
  `img` varchar(300) NOT NULL,
  `video` varchar(300) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_footer`
--

CREATE TABLE `main_footer` (
  `id` bigint NOT NULL,
  `f` varchar(150) NOT NULL,
  `ins` varchar(150) NOT NULL,
  `lin` varchar(150) NOT NULL,
  `xt` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `newsletter` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_headertable`
--

CREATE TABLE `main_headertable` (
  `id` bigint NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(300) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `main_headertable`
--

INSERT INTO `main_headertable` (`id`, `title`, `description`, `image`, `log_date`, `by_user`) VALUES
(1, 'A Digital Agency Of Inteligents & Creative People', 'Tempor rebum no at dolore lorem clita rebum rebum ipsum rebum stet dolor sed justo kasd. Ut dolor sed magna dolor sea diam. Sit diam sit justo amet ipsum vero ipsum clita lorem', 'img/hero.png', '2025-04-15 11:58:42.000000', 'admin'),
(2, 'Test', 'this is a test description', 'img/none.png', '2025-04-16 13:03:19.000000', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `main_languages`
--

CREATE TABLE `main_languages` (
  `id` bigint NOT NULL,
  `language` varchar(150) NOT NULL,
  `lang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_ourteam`
--

CREATE TABLE `main_ourteam` (
  `id` bigint NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `job_title` varchar(150) NOT NULL,
  `f` varchar(150) NOT NULL,
  `ins` varchar(150) NOT NULL,
  `lin` varchar(150) NOT NULL,
  `xt` varchar(150) NOT NULL,
  `image` varchar(300) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_pages`
--

CREATE TABLE `main_pages` (
  `id` bigint NOT NULL,
  `lang` varchar(150) NOT NULL,
  `text1` varchar(500) NOT NULL,
  `text2` varchar(500) NOT NULL,
  `text3` varchar(500) NOT NULL,
  `text4` varchar(500) NOT NULL,
  `text5` varchar(500) NOT NULL,
  `text6` varchar(500) NOT NULL,
  `text7` varchar(500) NOT NULL,
  `title1` varchar(150) NOT NULL,
  `title2` varchar(150) NOT NULL,
  `title3` varchar(150) NOT NULL,
  `title4` varchar(150) NOT NULL,
  `title5` varchar(150) NOT NULL,
  `title6` varchar(150) NOT NULL,
  `title7` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_requests`
--

CREATE TABLE `main_requests` (
  `id` bigint NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `date_time` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_statisticprogress`
--

CREATE TABLE `main_statisticprogress` (
  `id` bigint NOT NULL,
  `title` varchar(150) NOT NULL,
  `percent` int NOT NULL,
  `description_log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_statisticwebsite`
--

CREATE TABLE `main_statisticwebsite` (
  `id` bigint NOT NULL,
  `experience` int NOT NULL,
  `members` int NOT NULL,
  `clients` int NOT NULL,
  `completed_projects` int NOT NULL,
  `description` varchar(500) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_subscribe`
--

CREATE TABLE `main_subscribe` (
  `id` bigint NOT NULL,
  `email` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_testimonial`
--

CREATE TABLE `main_testimonial` (
  `id` bigint NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(300) NOT NULL,
  `log_date` datetime(6) NOT NULL,
  `by_user` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Indexes for table `main_animations`
--
ALTER TABLE `main_animations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_footer`
--
ALTER TABLE `main_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_headertable`
--
ALTER TABLE `main_headertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_languages`
--
ALTER TABLE `main_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_ourteam`
--
ALTER TABLE `main_ourteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_pages`
--
ALTER TABLE `main_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_requests`
--
ALTER TABLE `main_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_statisticprogress`
--
ALTER TABLE `main_statisticprogress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_statisticwebsite`
--
ALTER TABLE `main_statisticwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_subscribe`
--
ALTER TABLE `main_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_testimonial`
--
ALTER TABLE `main_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `main_animations`
--
ALTER TABLE `main_animations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_footer`
--
ALTER TABLE `main_footer`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_headertable`
--
ALTER TABLE `main_headertable`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_languages`
--
ALTER TABLE `main_languages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_ourteam`
--
ALTER TABLE `main_ourteam`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_pages`
--
ALTER TABLE `main_pages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_requests`
--
ALTER TABLE `main_requests`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_statisticprogress`
--
ALTER TABLE `main_statisticprogress`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_statisticwebsite`
--
ALTER TABLE `main_statisticwebsite`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_subscribe`
--
ALTER TABLE `main_subscribe`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_testimonial`
--
ALTER TABLE `main_testimonial`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
