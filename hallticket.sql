-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2017 at 07:46 AM
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
(1, 'Administration', '[]', '#000', NULL, '2017-02-17 10:15:59', '2017-02-17 10:15:59');

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
(1, 'Surya Kumaran', 'Super Admin', 'Male', '8888888888', '', 'suryakumaran@technoartista.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-02-17', '2017-02-17', '2017-02-17', '0.000', NULL, '2017-02-17 10:16:24', '2017-02-17 10:16:24');

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
(1, 'Team', '#', 'fa-group', 'custom', 0, 1, '2017-02-17 10:15:58', '2017-02-17 10:15:58'),
(2, 'Users', 'users', 'fa-group', 'module', 1, 0, '2017-02-17 10:15:58', '2017-02-17 10:15:58'),
(3, 'Uploads', 'uploads', 'fa-files-o', 'module', 0, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(5, 'Employees', 'employees', 'fa-group', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(7, 'Organizations', 'organizations', 'fa-university', 'module', 0, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 1, 0, '2017-02-17 10:15:59', '2017-02-17 10:15:59');

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
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-02-17 10:15:31', '2017-02-17 10:16:03'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-02-17 10:15:33', '2017-02-17 10:16:03'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-02-17 10:15:34', '2017-02-17 10:16:03'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-02-17 10:15:37', '2017-02-17 10:16:03'),
(6, 'Organizations', 'Organizations', 'organizations', 'name', 'Organization', 'OrganizationsController', 'fa-university', 1, '2017-02-17 10:15:42', '2017-02-17 10:16:03'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2017-02-17 10:15:44', '2017-02-17 10:16:03'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-02-17 10:15:46', '2017-02-17 10:16:03');

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
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-02-17 10:15:31', '2017-02-17 10:15:31'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-17 10:15:31', '2017-02-17 10:15:31'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-02-17 10:15:31', '2017-02-17 10:15:31'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-17 10:15:31', '2017-02-17 10:15:31'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-02-17 10:15:31', '2017-02-17 10:15:31'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-02-17 10:15:32', '2017-02-17 10:15:32'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-02-17 10:15:32', '2017-02-17 10:15:32'),
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
(35, 'name', 'Name', 6, 16, 1, '', 5, 250, 1, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(36, 'email', 'Email', 6, 8, 1, '', 0, 250, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(37, 'phone', 'Phone', 6, 14, 0, '', 0, 20, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(38, 'website', 'Website', 6, 23, 0, 'http://', 0, 250, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(39, 'assigned_to', 'Assigned to', 6, 7, 0, '0', 0, 0, 0, '@employees', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(40, 'connect_since', 'Connected Since', 6, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(41, 'address', 'Address', 6, 1, 0, '', 0, 1000, 1, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(42, 'city', 'City', 6, 19, 0, '', 0, 250, 1, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(43, 'description', 'Description', 6, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(44, 'profile_image', 'Profile Image', 6, 12, 0, '', 0, 250, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(45, 'profile', 'Company Profile', 6, 9, 0, '', 0, 250, 0, '', 0, '2017-02-17 10:15:42', '2017-02-17 10:15:42'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2017-02-17 10:15:44', '2017-02-17 10:15:44'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-02-17 10:15:46', '2017-02-17 10:15:46');

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
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'http://',
  `assigned_to` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `connect_since` date NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` int(11) NOT NULL,
  `profile` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-02-17 10:15:59', '2017-02-17 10:15:59');

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
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'Surya Kumaran', 1, 'suryakumaran@technoartista.com', '$2y$10$ixzkd79HAGgWFzGqsqjnZukyDrP/jggJcUNp3hz64RAKr8/TkawnK', 'Employee', NULL, NULL, '2017-02-17 10:16:24', '2017-02-17 10:16:24');

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
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_name_unique` (`name`),
  ADD UNIQUE KEY `organizations_email_unique` (`email`),
  ADD KEY `organizations_assigned_to_foreign` (`assigned_to`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Constraints for table `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `organizations_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `employees` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
