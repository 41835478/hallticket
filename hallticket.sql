-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2017 at 08:36 AM
-- Server version: 5.6.30
-- PHP Version: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hallticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(2, 'ADMIN', '[]', 'green', NULL, '2017-02-17 10:34:31', '2017-02-17 10:34:31'),
(5, 'STUDENTS', '[]', 'blue', NULL, '2017-02-17 10:34:51', '2017-02-17 10:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT '0.000',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Surya Kumaran', 'Super Admin', 'Male', '8888888888', '', 'suryakumaran@technoartista.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-02-17', '2017-02-17', '2017-02-17', '0.000', NULL, '2017-02-17 10:16:24', '2017-02-17 10:16:24'),
(2, 'PSG ADMIN', 'ADMIN', 'Male', '0000000000', '', 'admin@psg.com', 2, '', '', '', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-02-17 10:48:42', '2017-02-17 10:48:42'),
(3, 'STUDENTS', 'STUDENTS', 'Male', '0000000000', '', 'student@psg.com', 5, '', '', '', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-02-17 10:49:16', '2017-02-17 10:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'EXAM HALL ARRANGEMENT', '2017-02-17 10:16:02', '2017-02-17 10:54:56'),
(2, 'sitename_part1', '', 'EXAM HALL', '2017-02-17 10:16:02', '2017-02-17 10:54:56'),
(3, 'sitename_part2', '', 'ARRANGEMENT', '2017-02-17 10:16:02', '2017-02-17 10:54:56'),
(4, 'sitename_short', '', 'HA', '2017-02-17 10:16:02', '2017-02-17 10:54:56'),
(5, 'site_description', '', 'EXAM HALL ARRANGEMENT SYSTEM', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(6, 'sidebar_search', '', '0', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(7, 'show_messages', '', '0', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(8, 'show_notifications', '', '0', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(9, 'show_tasks', '', '0', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(10, 'show_rightsidebar', '', '0', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(11, 'skin', '', 'skin-blue', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(12, 'layout', '', 'fixed', '2017-02-17 10:16:03', '2017-02-17 10:54:56'),
(13, 'default_email', '', 'test@example.com', '2017-02-17 10:16:03', '2017-02-17 10:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2017-02-17 10:15:58', '2017-02-17 10:15:58'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(9, 'Student_Datas', 'student_datas', 'fa fa-users', 'module', 0, 0, '2017-02-17 10:39:17', '2017-02-17 10:39:17'),
(10, 'Seating_Datas', 'seating_datas', 'fa fa-area-chart', 'module', 0, 0, '2017-02-17 10:44:19', '2017-02-17 10:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-02-17 10:15:29', '2017-02-17 10:16:03'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-02-17 10:15:33', '2017-02-17 10:16:03'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-02-17 10:15:34', '2017-02-17 10:16:03'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-02-17 10:15:37', '2017-02-17 10:16:03'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-02-17 10:15:44', '2017-02-17 10:16:03'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-02-17 10:15:46', '2017-02-17 10:16:03'),
(9, 'Student_Datas', 'Student_Datas', 'student_datas', 'register_number', 'Student_Datum', 'Student_DatasController', 'fa-users', 1, '2017-02-17 10:37:31', '2017-02-17 10:39:17'),
(10, 'Seating_Datas', 'Seating_Datas', 'seating_datas', 'register_number', 'Seating_Datum', 'Seating_DatasController', 'fa-area-chart', 1, '2017-02-17 10:40:03', '2017-02-17 10:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-02-17 10:15:29', '2017-02-17 10:15:29'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-02-17 10:15:30', '2017-02-17 10:15:30'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-02-17 10:15:30', '2017-02-17 10:15:30'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-02-17 10:15:30', '2017-02-17 10:15:30'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '["Employee","Client"]', 0, '2017-02-17 10:15:30', '2017-02-17 10:15:30'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-02-17 10:15:33', '2017-02-17 10:15:33'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-02-17 10:15:33', '2017-02-17 10:15:33'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-02-17 10:15:33', '2017-02-17 10:15:33'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-02-17 10:15:34', '2017-02-17 10:15:34'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-02-17 10:15:35', '2017-02-17 10:15:35'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-02-17 10:15:37', '2017-02-17 10:15:37'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-02-17 10:15:37', '2017-02-17 10:15:37'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-17 10:15:37', '2017-02-17 10:15:37'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-02-17 10:15:37', '2017-02-17 10:15:37'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-02-17 10:15:37', '2017-02-17 10:15:37'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46'),
(52, 'register_number', 'Register Number', 9, 22, 0, '', 0, 256, 1, '', 0, '2017-02-17 10:38:21', '2017-02-17 10:38:21'),
(53, 'student_name', 'Name', 9, 16, 0, '', 0, 256, 1, '', 0, '2017-02-17 10:39:00', '2017-02-17 10:39:00'),
(54, 'register_number', 'Register Number', 10, 7, 0, '', 0, 0, 1, '@student_datas', 0, '2017-02-17 10:40:59', '2017-02-17 10:40:59'),
(55, 'block', 'Block', 10, 22, 0, '', 0, 256, 0, '', 0, '2017-02-17 10:41:36', '2017-02-17 10:41:36'),
(56, 'hall_number', 'Hall Number', 10, 22, 0, '', 0, 256, 0, '', 0, '2017-02-17 10:42:04', '2017-02-17 10:42:04'),
(57, 'seat_number', 'Seat Number', 10, 13, 0, '', 0, 11, 0, '', 0, '2017-02-17 10:42:55', '2017-02-17 10:42:55'),
(58, 'row', 'Row', 10, 22, 0, '', 0, 256, 0, '', 0, '2017-02-17 10:43:31', '2017-02-17 10:43:31'),
(59, 'side', 'Side', 10, 7, 0, '', 0, 0, 0, '["Left","Right"]', 0, '2017-02-17 10:43:59', '2017-02-17 10:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-02-17 10:15:24', '2017-02-17 10:15:24'),
(2, 'Checkbox', '2017-02-17 10:15:24', '2017-02-17 10:15:24'),
(3, 'Currency', '2017-02-17 10:15:24', '2017-02-17 10:15:24'),
(4, 'Date', '2017-02-17 10:15:24', '2017-02-17 10:15:24'),
(5, 'Datetime', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(6, 'Decimal', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(7, 'Dropdown', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(8, 'Email', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(9, 'File', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(10, 'Float', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(11, 'HTML', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(12, 'Image', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(13, 'Integer', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(14, 'Mobile', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(15, 'Multiselect', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(16, 'Name', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(17, 'Password', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(18, 'Radio', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(19, 'String', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(20, 'Taginput', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(21, 'Textarea', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(22, 'TextField', '2017-02-17 10:15:25', '2017-02-17 10:15:25'),
(23, 'URL', '2017-02-17 10:15:26', '2017-02-17 10:15:26'),
(24, 'Files', '2017-02-17 10:15:26', '2017-02-17 10:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(2, 'ADD_DATA', 'ADD_DATA', '', NULL, '2017-02-17 10:36:10', '2017-02-17 10:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(2, 'ADMIN', 'ADMIN', '', 1, 2, NULL, '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(3, 'STUDENTS', 'STUDENTS', '', 2, 5, NULL, '2017-02-17 10:35:40', '2017-02-17 10:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(3, 1, 3, 1, 1, 1, 1, '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(4, 1, 4, 1, 1, 1, 1, '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(5, 1, 5, 1, 1, 1, 1, '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(7, 1, 7, 1, 1, 1, 1, '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(8, 1, 8, 1, 1, 1, 1, '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(9, 2, 1, 1, 0, 0, 0, '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(10, 2, 3, 1, 0, 0, 0, '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(11, 2, 4, 1, 0, 0, 0, '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(12, 2, 5, 1, 0, 0, 0, '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(13, 2, 7, 1, 0, 0, 0, '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(14, 2, 8, 1, 0, 0, 0, '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(15, 3, 1, 1, 0, 0, 0, '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(16, 3, 3, 1, 0, 0, 0, '2017-02-17 10:35:41', '2017-02-17 10:35:41'),
(17, 3, 4, 1, 0, 0, 0, '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(18, 3, 5, 1, 0, 0, 0, '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(19, 3, 7, 1, 0, 0, 0, '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(20, 3, 8, 1, 0, 0, 0, '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(21, 1, 9, 1, 1, 1, 1, '2017-02-17 10:39:17', '2017-02-17 10:39:17'),
(22, 1, 10, 1, 1, 1, 1, '2017-02-17 10:44:19', '2017-02-17 10:44:19'),
(23, 2, 9, 1, 1, 1, 1, '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(24, 3, 9, 0, 0, 0, 0, '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(25, 2, 10, 1, 1, 1, 1, '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(26, 3, 10, 1, 0, 0, 0, '2017-02-17 10:46:58', '2017-02-17 10:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(2, 1, 2, 'write', '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(3, 1, 3, 'write', '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(4, 1, 4, 'write', '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(5, 1, 5, 'write', '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(13, 1, 13, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(14, 1, 14, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(15, 1, 15, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(16, 1, 16, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(17, 1, 17, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(18, 1, 18, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(19, 1, 19, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(20, 1, 20, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(21, 1, 21, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(22, 1, 22, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(23, 1, 23, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(24, 1, 24, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(25, 1, 25, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(26, 1, 26, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(27, 1, 27, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(28, 1, 28, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(29, 1, 29, 'write', '2017-02-17 10:16:00', '2017-02-17 10:16:00'),
(30, 1, 30, 'write', '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(31, 1, 31, 'write', '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(32, 1, 32, 'write', '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(33, 1, 33, 'write', '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(34, 1, 34, 'write', '2017-02-17 10:16:01', '2017-02-17 10:16:01'),
(46, 1, 46, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(47, 1, 47, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(48, 1, 48, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(49, 1, 49, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(50, 1, 50, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(51, 1, 51, 'write', '2017-02-17 10:16:02', '2017-02-17 10:16:02'),
(52, 2, 1, 'readonly', '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(53, 2, 2, 'readonly', '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(54, 2, 3, 'readonly', '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(55, 2, 4, 'readonly', '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(56, 2, 5, 'readonly', '2017-02-17 10:35:14', '2017-02-17 10:35:14'),
(57, 2, 13, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(58, 2, 14, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(59, 2, 15, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(60, 2, 16, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(61, 2, 17, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(62, 2, 18, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(63, 2, 19, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(64, 2, 20, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(65, 2, 21, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(66, 2, 22, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(67, 2, 23, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(68, 2, 24, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(69, 2, 25, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(70, 2, 26, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(71, 2, 27, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(72, 2, 28, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(73, 2, 29, 'readonly', '2017-02-17 10:35:15', '2017-02-17 10:35:15'),
(74, 2, 30, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(75, 2, 31, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(76, 2, 32, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(77, 2, 33, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(78, 2, 34, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(79, 2, 46, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(80, 2, 47, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(81, 2, 48, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(82, 2, 49, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(83, 2, 50, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(84, 2, 51, 'readonly', '2017-02-17 10:35:16', '2017-02-17 10:35:16'),
(85, 3, 1, 'readonly', '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(86, 3, 2, 'readonly', '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(87, 3, 3, 'readonly', '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(88, 3, 4, 'readonly', '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(89, 3, 5, 'readonly', '2017-02-17 10:35:40', '2017-02-17 10:35:40'),
(90, 3, 13, 'readonly', '2017-02-17 10:35:41', '2017-02-17 10:35:41'),
(91, 3, 14, 'readonly', '2017-02-17 10:35:41', '2017-02-17 10:35:41'),
(92, 3, 15, 'readonly', '2017-02-17 10:35:41', '2017-02-17 10:35:41'),
(93, 3, 16, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(94, 3, 17, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(95, 3, 18, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(96, 3, 19, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(97, 3, 20, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(98, 3, 21, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(99, 3, 22, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(100, 3, 23, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(101, 3, 24, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(102, 3, 25, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(103, 3, 26, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(104, 3, 27, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(105, 3, 28, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(106, 3, 29, 'readonly', '2017-02-17 10:35:42', '2017-02-17 10:35:42'),
(107, 3, 30, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(108, 3, 31, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(109, 3, 32, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(110, 3, 33, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(111, 3, 34, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(112, 3, 46, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(113, 3, 47, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(114, 3, 48, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(115, 3, 49, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(116, 3, 50, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(117, 3, 51, 'readonly', '2017-02-17 10:35:43', '2017-02-17 10:35:43'),
(118, 1, 52, 'write', '2017-02-17 10:38:23', '2017-02-17 10:38:23'),
(119, 1, 53, 'write', '2017-02-17 10:39:02', '2017-02-17 10:39:02'),
(120, 1, 54, 'write', '2017-02-17 10:41:03', '2017-02-17 10:41:03'),
(121, 1, 55, 'write', '2017-02-17 10:41:37', '2017-02-17 10:41:37'),
(122, 1, 56, 'write', '2017-02-17 10:42:05', '2017-02-17 10:42:05'),
(123, 1, 57, 'write', '2017-02-17 10:42:56', '2017-02-17 10:42:56'),
(124, 1, 58, 'write', '2017-02-17 10:43:33', '2017-02-17 10:43:33'),
(125, 1, 59, 'write', '2017-02-17 10:43:59', '2017-02-17 10:43:59'),
(126, 2, 52, 'write', '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(127, 2, 53, 'write', '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(128, 3, 52, 'invisible', '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(129, 3, 53, 'invisible', '2017-02-17 10:46:20', '2017-02-17 10:46:20'),
(130, 2, 54, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(131, 2, 55, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(132, 2, 56, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(133, 2, 57, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(134, 2, 58, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(135, 2, 59, 'write', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(136, 3, 54, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(137, 3, 55, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(138, 3, 56, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(139, 3, 57, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(140, 3, 58, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58'),
(141, 3, 59, 'readonly', '2017-02-17 10:46:58', '2017-02-17 10:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seating_datas`
--

CREATE TABLE `seating_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `register_number` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `block` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `hall_number` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `seat_number` int(10) UNSIGNED NOT NULL,
  `row` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `side` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seating_datas`
--

INSERT INTO `seating_datas` (`id`, `deleted_at`, `created_at`, `updated_at`, `register_number`, `block`, `hall_number`, `seat_number`, `row`, `side`) VALUES
(1, '2017-02-17 10:45:20', '2017-02-17 10:45:16', '2017-02-17 10:45:20', 1, '5', '6', 4, '6', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `student_datas`
--

CREATE TABLE `student_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `register_number` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `student_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_datas`
--

INSERT INTO `student_datas` (`id`, `deleted_at`, `created_at`, `updated_at`, `register_number`, `student_name`) VALUES
(1, '2017-02-17 10:45:25', '2017-02-17 10:44:58', '2017-02-17 10:45:25', '1104118', 'Surya Kumaran');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Surya Kumaran', 1, 'suryakumaran@technoartista.com', '$2y$10$ixzkd79HAGgWFzGqsqjnZukyDrP/jggJcUNp3hz64RAKr8/TkawnK', 'Employee', '4q8QV3d6kRy1oeGrgbOOSjFRX5FfbOuwb8ceB5yEfufaFBKFsCy2IpVsDMqX', NULL, '2017-02-17 10:16:24', '2017-02-17 10:50:04'),
(2, 'PSG ADMIN', 2, 'admin@psg.com', '$2y$10$XeMfn/lLHOkI9HOXR.Z/B.2LN.gAjbrYHH6m9uYFA2FS/1TlyvETW', 'Employee', 'oo0GLckbIXprNtH3SjMqdoCx5XbP0t9gQyhOyH7DecGMXthzROxcR4ji9Vmq', NULL, '2017-02-17 10:48:43', '2017-02-17 10:51:15'),
(3, 'STUDENTS', 3, 'student@psg.com', '$2y$10$Rnc5hnUiUplQIlTbiAqFz.u1S.XNVm3QYtmjXTYXFhXoeBPLrLSYa', 'Employee', 'miPW1EhrydNpNwzZYjbyH4VRGTheEPcQb9q6TAbhOohcc3kg2gp6JZGyxMpz', NULL, '2017-02-17 10:49:16', '2017-02-17 10:51:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `seating_datas`
--
ALTER TABLE `seating_datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seating_datas_register_number_foreign` (`register_number`);

--
-- Indexes for table `student_datas`
--
ALTER TABLE `student_datas`
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
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `seating_datas`
--
ALTER TABLE `seating_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_datas`
--
ALTER TABLE `student_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seating_datas`
--
ALTER TABLE `seating_datas`
  ADD CONSTRAINT `seating_datas_register_number_foreign` FOREIGN KEY (`register_number`) REFERENCES `student_datas` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
