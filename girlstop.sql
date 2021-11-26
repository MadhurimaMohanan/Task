-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2021 at 07:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `girlstop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add reg_tb', 7, 'add_reg_tb'),
(26, 'Can change reg_tb', 7, 'change_reg_tb'),
(27, 'Can delete reg_tb', 7, 'delete_reg_tb'),
(28, 'Can view reg_tb', 7, 'view_reg_tb'),
(29, 'Can add dress', 8, 'add_dress'),
(30, 'Can change dress', 8, 'change_dress'),
(31, 'Can delete dress', 8, 'delete_dress'),
(32, 'Can view dress', 8, 'view_dress'),
(33, 'Can add cart_reg_tb', 9, 'add_cart_reg_tb'),
(34, 'Can change cart_reg_tb', 9, 'change_cart_reg_tb'),
(35, 'Can delete cart_reg_tb', 9, 'delete_cart_reg_tb'),
(36, 'Can view cart_reg_tb', 9, 'view_cart_reg_tb'),
(37, 'Can add order_reg_tb', 10, 'add_order_reg_tb'),
(38, 'Can change order_reg_tb', 10, 'change_order_reg_tb'),
(39, 'Can delete order_reg_tb', 10, 'delete_order_reg_tb'),
(40, 'Can view order_reg_tb', 10, 'view_order_reg_tb');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'admin@123', NULL, 0, '', '', '', 'admin@gmail.com', 0, 0, '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(9, 'taskapp', 'cart_reg_tb'),
(8, 'taskapp', 'dress'),
(10, 'taskapp', 'order_reg_tb'),
(7, 'taskapp', 'reg_tb');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-24 12:55:40.661653'),
(2, 'auth', '0001_initial', '2021-11-24 12:55:52.542518'),
(3, 'admin', '0001_initial', '2021-11-24 12:55:57.586902'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-24 12:55:57.635585'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-24 12:55:57.691637'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-24 12:55:58.770525'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-24 12:56:00.421085'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-24 12:56:00.785601'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-24 12:56:01.407557'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-24 12:56:02.427381'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-24 12:56:02.483079'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-24 12:56:02.553283'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-24 12:56:02.693072'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-24 12:56:02.834780'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-24 12:56:03.166317'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-24 12:56:03.384062'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-24 12:56:03.571718'),
(18, 'sessions', '0001_initial', '2021-11-24 12:56:04.567514'),
(19, 'taskapp', '0001_initial', '2021-11-24 12:56:05.179771'),
(20, 'taskapp', '0002_dress', '2021-11-24 13:38:51.607402'),
(21, 'taskapp', '0003_alter_dress_image', '2021-11-24 15:40:35.680916'),
(22, 'taskapp', '0004_alter_dress_image', '2021-11-24 16:07:49.735100'),
(23, 'taskapp', '0005_cart_reg_tb', '2021-11-24 18:03:51.219440'),
(24, 'taskapp', '0006_cart_reg_tb_status', '2021-11-24 18:41:53.597907'),
(25, 'taskapp', '0007_order_reg_tb', '2021-11-24 18:58:24.367138'),
(26, 'taskapp', '0008_order_reg_tb_quantity', '2021-11-24 20:34:24.522085'),
(27, 'taskapp', '0009_cart_reg_tb_total', '2021-11-24 20:49:18.952038'),
(28, 'taskapp', '0010_order_reg_tb_total', '2021-11-24 20:56:48.002451');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('axy1puiut0gruori0b9xk2jwy47hshgq', 'eyJhZG1pbmlkIjoxfQ:1mq0D8:Mpsr7mYhw7QqWvdionWiWmvyOCMKozZRDgSXVSSVNes', '2021-12-08 21:53:50.933456');

-- --------------------------------------------------------

--
-- Table structure for table `taskapp_cart_reg_tb`
--

CREATE TABLE `taskapp_cart_reg_tb` (
  `id` bigint(20) NOT NULL,
  `dressname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `drsid_id` bigint(20) DEFAULT NULL,
  `userid_id` bigint(20) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskapp_cart_reg_tb`
--

INSERT INTO `taskapp_cart_reg_tb` (`id`, `dressname`, `price`, `quantity`, `drsid_id`, `userid_id`, `status`, `total`) VALUES
(7, 'T-Shirt', '345', '2', 5, 1, '0', '690');

-- --------------------------------------------------------

--
-- Table structure for table `taskapp_dress`
--

CREATE TABLE `taskapp_dress` (
  `id` bigint(20) NOT NULL,
  `dressname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cloth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskapp_dress`
--

INSERT INTO `taskapp_dress` (`id`, `dressname`, `price`, `image`, `cloth`) VALUES
(3, 'Frock', '450', 'image/smrgrmt.jfif', 'Rayon'),
(4, 'Saree', '550', 'image/saree.jpg', 'Silk'),
(5, 'T-Shirt', '345', 'image/tshirt.jpg', 'cotton'),
(6, 'churidhar', '460', 'image/churidhar.jpg', 'Rayon');

-- --------------------------------------------------------

--
-- Table structure for table `taskapp_order_reg_tb`
--

CREATE TABLE `taskapp_order_reg_tb` (
  `id` bigint(20) NOT NULL,
  `dressname` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `phono` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status1` varchar(100) NOT NULL,
  `drsid_id` bigint(20) DEFAULT NULL,
  `userid_id` bigint(20) DEFAULT NULL,
  `quantity` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskapp_order_reg_tb`
--

INSERT INTO `taskapp_order_reg_tb` (`id`, `dressname`, `price`, `phono`, `location`, `status1`, `drsid_id`, `userid_id`, `quantity`, `total`) VALUES
(7, 'Saree', '', '6745982434', 'kannur', 'delivered', NULL, 1, '', '1650');

-- --------------------------------------------------------

--
-- Table structure for table `taskapp_reg_tb`
--

CREATE TABLE `taskapp_reg_tb` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phno` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taskapp_reg_tb`
--

INSERT INTO `taskapp_reg_tb` (`id`, `name`, `email`, `phno`, `passwd`) VALUES
(1, 'Madhurima Mohanan', 'madhu12@gmail.com', '6745982434', 'madhu@123');

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
-- Indexes for table `taskapp_cart_reg_tb`
--
ALTER TABLE `taskapp_cart_reg_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskapp_cart_reg_tb_drsid_id_6a7ba75c_fk_taskapp_dress_id` (`drsid_id`),
  ADD KEY `taskapp_cart_reg_tb_userid_id_2217bb49_fk_taskapp_reg_tb_id` (`userid_id`);

--
-- Indexes for table `taskapp_dress`
--
ALTER TABLE `taskapp_dress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taskapp_order_reg_tb`
--
ALTER TABLE `taskapp_order_reg_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskapp_order_reg_tb_drsid_id_bb13d697_fk_taskapp_dress_id` (`drsid_id`),
  ADD KEY `taskapp_order_reg_tb_userid_id_faeede8c_fk_taskapp_reg_tb_id` (`userid_id`);

--
-- Indexes for table `taskapp_reg_tb`
--
ALTER TABLE `taskapp_reg_tb`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `taskapp_cart_reg_tb`
--
ALTER TABLE `taskapp_cart_reg_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taskapp_dress`
--
ALTER TABLE `taskapp_dress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taskapp_order_reg_tb`
--
ALTER TABLE `taskapp_order_reg_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `taskapp_reg_tb`
--
ALTER TABLE `taskapp_reg_tb`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `taskapp_cart_reg_tb`
--
ALTER TABLE `taskapp_cart_reg_tb`
  ADD CONSTRAINT `taskapp_cart_reg_tb_drsid_id_6a7ba75c_fk_taskapp_dress_id` FOREIGN KEY (`drsid_id`) REFERENCES `taskapp_dress` (`id`),
  ADD CONSTRAINT `taskapp_cart_reg_tb_userid_id_2217bb49_fk_taskapp_reg_tb_id` FOREIGN KEY (`userid_id`) REFERENCES `taskapp_reg_tb` (`id`);

--
-- Constraints for table `taskapp_order_reg_tb`
--
ALTER TABLE `taskapp_order_reg_tb`
  ADD CONSTRAINT `taskapp_order_reg_tb_drsid_id_bb13d697_fk_taskapp_dress_id` FOREIGN KEY (`drsid_id`) REFERENCES `taskapp_dress` (`id`),
  ADD CONSTRAINT `taskapp_order_reg_tb_userid_id_faeede8c_fk_taskapp_reg_tb_id` FOREIGN KEY (`userid_id`) REFERENCES `taskapp_reg_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
