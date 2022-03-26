-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 12, 2022 at 03:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `affix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2022-02-09 20:48:15.120000', '2022-02-09 20:48:15.120000', NULL, NULL),
(2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-02-09 20:48:15.122000', '2022-02-09 20:48:15.122000', NULL, NULL),
(3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-02-09 20:48:15.126000', '2022-02-09 20:48:15.126000', NULL, NULL),
(4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-02-09 20:48:15.127000', '2022-02-09 20:48:15.127000', NULL, NULL),
(5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-02-09 20:48:15.128000', '2022-02-09 20:48:15.128000', NULL, NULL),
(6, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2022-02-09 20:48:15.130000', '2022-02-09 20:48:15.130000', NULL, NULL),
(7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-02-09 20:48:15.131000', '2022-02-09 20:48:15.131000', NULL, NULL),
(8, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2022-02-09 20:48:15.133000', '2022-02-09 20:48:15.133000', NULL, NULL),
(9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-02-09 20:48:15.134000', '2022-02-09 20:48:15.134000', NULL, NULL),
(10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-02-09 20:48:15.135000', '2022-02-09 20:48:15.135000', NULL, NULL),
(14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-02-09 20:48:15.149000', '2022-02-09 20:48:15.149000', NULL, NULL),
(15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-02-09 20:48:15.150000', '2022-02-09 20:48:15.150000', NULL, NULL),
(16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-02-09 20:48:15.151000', '2022-02-09 20:48:15.151000', NULL, NULL),
(17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-02-09 20:48:15.152000', '2022-02-09 20:48:15.152000', NULL, NULL),
(18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-02-09 20:48:15.152000', '2022-02-09 20:48:15.152000', NULL, NULL),
(19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-02-09 20:48:15.153000', '2022-02-09 20:48:15.153000', NULL, NULL),
(20, 'plugin::upload.read', NULL, '{}', '[]', '2022-02-09 20:48:15.154000', '2022-02-09 20:48:15.154000', NULL, NULL),
(21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-02-09 20:48:15.155000', '2022-02-09 20:48:15.155000', NULL, NULL),
(22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-02-09 20:48:15.156000', '2022-02-09 20:48:15.156000', NULL, NULL),
(23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-02-09 20:48:15.156000', '2022-02-09 20:48:15.156000', NULL, NULL),
(24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-02-09 20:48:15.157000', '2022-02-09 20:48:15.157000', NULL, NULL),
(25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-02-09 20:48:15.158000', '2022-02-09 20:48:15.158000', NULL, NULL),
(26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-02-09 20:48:15.160000', '2022-02-09 20:48:15.160000', NULL, NULL),
(27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-02-09 20:48:15.160000', '2022-02-09 20:48:15.160000', NULL, NULL),
(28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-02-09 20:48:15.161000', '2022-02-09 20:48:15.161000', NULL, NULL),
(29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.162000', '2022-02-09 20:48:15.162000', NULL, NULL),
(30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-02-09 20:48:15.163000', '2022-02-09 20:48:15.163000', NULL, NULL),
(31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-02-09 20:48:15.164000', '2022-02-09 20:48:15.164000', NULL, NULL),
(32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-02-09 20:48:15.165000', '2022-02-09 20:48:15.165000', NULL, NULL),
(33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-02-09 20:48:15.166000', '2022-02-09 20:48:15.166000', NULL, NULL),
(34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-02-09 20:48:15.167000', '2022-02-09 20:48:15.167000', NULL, NULL),
(35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-02-09 20:48:15.168000', '2022-02-09 20:48:15.168000', NULL, NULL),
(36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-02-09 20:48:15.169000', '2022-02-09 20:48:15.169000', NULL, NULL),
(37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-02-09 20:48:15.169000', '2022-02-09 20:48:15.169000', NULL, NULL),
(38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-02-09 20:48:15.170000', '2022-02-09 20:48:15.170000', NULL, NULL),
(39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.171000', '2022-02-09 20:48:15.171000', NULL, NULL),
(40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-02-09 20:48:15.172000', '2022-02-09 20:48:15.172000', NULL, NULL),
(41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-02-09 20:48:15.172000', '2022-02-09 20:48:15.172000', NULL, NULL),
(42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-02-09 20:48:15.173000', '2022-02-09 20:48:15.173000', NULL, NULL),
(43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-02-09 20:48:15.174000', '2022-02-09 20:48:15.174000', NULL, NULL),
(44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-02-09 20:48:15.175000', '2022-02-09 20:48:15.175000', NULL, NULL),
(45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-02-09 20:48:15.175000', '2022-02-09 20:48:15.175000', NULL, NULL),
(46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.176000', '2022-02-09 20:48:15.176000', NULL, NULL),
(47, 'admin::users.create', NULL, '{}', '[]', '2022-02-09 20:48:15.177000', '2022-02-09 20:48:15.177000', NULL, NULL),
(48, 'admin::users.read', NULL, '{}', '[]', '2022-02-09 20:48:15.178000', '2022-02-09 20:48:15.178000', NULL, NULL),
(49, 'admin::users.update', NULL, '{}', '[]', '2022-02-09 20:48:15.178000', '2022-02-09 20:48:15.178000', NULL, NULL),
(50, 'admin::users.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.179000', '2022-02-09 20:48:15.179000', NULL, NULL),
(51, 'admin::roles.create', NULL, '{}', '[]', '2022-02-09 20:48:15.180000', '2022-02-09 20:48:15.180000', NULL, NULL),
(52, 'admin::roles.read', NULL, '{}', '[]', '2022-02-09 20:48:15.180000', '2022-02-09 20:48:15.180000', NULL, NULL),
(53, 'admin::roles.update', NULL, '{}', '[]', '2022-02-09 20:48:15.181000', '2022-02-09 20:48:15.181000', NULL, NULL),
(54, 'admin::roles.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.182000', '2022-02-09 20:48:15.182000', NULL, NULL),
(55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-02-09 20:48:15.183000', '2022-02-09 20:48:15.183000', NULL, NULL),
(56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-02-09 20:48:15.184000', '2022-02-09 20:48:15.184000', NULL, NULL),
(57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-02-09 20:48:15.185000', '2022-02-09 20:48:15.185000', NULL, NULL),
(58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-02-09 20:48:15.186000', '2022-02-09 20:48:15.186000', NULL, NULL),
(59, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[]', '2022-02-09 20:52:12.162000', '2022-02-09 20:52:12.162000', NULL, NULL),
(60, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[]', '2022-02-09 20:52:12.167000', '2022-02-09 20:52:12.167000', NULL, NULL),
(61, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[]', '2022-02-09 20:52:12.170000', '2022-02-09 20:52:12.170000', NULL, NULL),
(62, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-02-09 20:52:12.172000', '2022-02-09 20:52:12.172000', NULL, NULL),
(63, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[\"admin::is-creator\"]', '2022-02-09 20:52:20.054000', '2022-02-09 20:52:20.054000', NULL, NULL),
(64, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[\"admin::is-creator\"]', '2022-02-09 20:52:20.056000', '2022-02-09 20:52:20.056000', NULL, NULL),
(65, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"blocked\",\"confirmationToken\",\"confirmed\",\"email\",\"password\",\"provider\",\"resetPasswordToken\",\"role\",\"username\"]}', '[\"admin::is-creator\"]', '2022-02-09 20:52:20.057000', '2022-02-09 20:52:20.057000', NULL, NULL),
(66, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[\"admin::is-creator\"]', '2022-02-09 20:52:20.059000', '2022-02-09 20:52:20.059000', NULL, NULL),
(70, 'plugin::content-manager.explorer.delete', 'api::post.post', '{}', '[]', '2022-02-09 20:54:21.499000', '2022-02-09 20:54:21.499000', NULL, NULL),
(71, 'plugin::content-manager.explorer.publish', 'api::post.post', '{}', '[]', '2022-02-09 20:54:21.500000', '2022-02-09 20:54:21.500000', NULL, NULL),
(93, 'plugin::content-manager.explorer.delete', 'api::report.report', '{}', '[]', '2022-02-12 20:49:20.094000', '2022-02-12 20:49:20.094000', NULL, NULL),
(94, 'plugin::content-manager.explorer.publish', 'api::report.report', '{}', '[]', '2022-02-12 20:49:20.095000', '2022-02-12 20:49:20.095000', NULL, NULL),
(96, 'plugin::content-manager.explorer.create', 'api::report.report', '{\"fields\":[\"report_message\",\"post\"]}', '[]', '2022-02-12 20:50:23.210000', '2022-02-12 20:50:23.210000', NULL, NULL),
(98, 'plugin::content-manager.explorer.read', 'api::report.report', '{\"fields\":[\"report_message\",\"post\"]}', '[]', '2022-02-12 20:50:23.212000', '2022-02-12 20:50:23.212000', NULL, NULL),
(100, 'plugin::content-manager.explorer.update', 'api::report.report', '{\"fields\":[\"report_message\",\"post\"]}', '[]', '2022-02-12 20:50:23.214000', '2022-02-12 20:50:23.214000', NULL, NULL),
(113, 'plugin::content-manager.explorer.create', 'api::profile.profile', '{\"fields\":[\"Tel\",\"shotbio_tech\"]}', '[]', '2022-02-19 13:52:24.125000', '2022-02-19 13:52:24.125000', NULL, NULL),
(114, 'plugin::content-manager.explorer.read', 'api::profile.profile', '{\"fields\":[\"Tel\",\"shotbio_tech\"]}', '[]', '2022-02-19 13:52:24.127000', '2022-02-19 13:52:24.127000', NULL, NULL),
(115, 'plugin::content-manager.explorer.update', 'api::profile.profile', '{\"fields\":[\"Tel\",\"shotbio_tech\"]}', '[]', '2022-02-19 13:52:24.129000', '2022-02-19 13:52:24.129000', NULL, NULL),
(116, 'plugin::content-manager.explorer.delete', 'api::profile.profile', '{}', '[]', '2022-02-19 13:52:24.130000', '2022-02-19 13:52:24.130000', NULL, NULL),
(117, 'plugin::content-manager.explorer.publish', 'api::profile.profile', '{}', '[]', '2022-02-19 13:52:24.131000', '2022-02-19 13:52:24.131000', NULL, NULL),
(118, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"imageUrl\"]}', '[]', '2022-02-19 13:53:42.552000', '2022-02-19 13:53:42.552000', NULL, NULL),
(119, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"imageUrl\"]}', '[]', '2022-02-19 13:53:42.554000', '2022-02-19 13:53:42.554000', NULL, NULL),
(120, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"imageUrl\"]}', '[]', '2022-02-19 13:53:42.556000', '2022-02-19 13:53:42.556000', NULL, NULL),
(130, 'plugin::content-manager.explorer.create', 'api::post.post', '{\"fields\":[\"Title\",\"Content\",\"users_permissions_user\",\"content_private\",\"reports\",\"Cover\",\"publish_date\",\"discription\",\"highlights\",\"Catagory\"]}', '[]', '2022-03-11 23:00:06.612000', '2022-03-11 23:00:06.612000', NULL, NULL),
(131, 'plugin::content-manager.explorer.read', 'api::post.post', '{\"fields\":[\"Title\",\"Content\",\"users_permissions_user\",\"content_private\",\"reports\",\"Cover\",\"publish_date\",\"discription\",\"highlights\",\"Catagory\"]}', '[]', '2022-03-11 23:00:06.615000', '2022-03-11 23:00:06.615000', NULL, NULL),
(132, 'plugin::content-manager.explorer.update', 'api::post.post', '{\"fields\":[\"Title\",\"Content\",\"users_permissions_user\",\"content_private\",\"reports\",\"Cover\",\"publish_date\",\"discription\",\"highlights\",\"Catagory\"]}', '[]', '2022-03-11 23:00:06.618000', '2022-03-11 23:00:06.618000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(70, 1),
(71, 1),
(93, 1),
(94, 1),
(96, 1),
(98, 1),
(100, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(130, 1),
(131, 1),
(132, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-02-09 20:48:15.113000', '2022-02-09 20:48:15.113000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-02-09 20:48:15.116000', '2022-02-09 20:52:12.114000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-02-09 20:48:15.119000', '2022-02-09 20:52:20.295000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `registration_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Hemarat', 'Matar', NULL, 'hemarat.mat@gmail.com', '$2a$10$uXbh86XEUHGFsqpOKx10MuxgEyp8x.siq8J5rUIjI5PtuPYR0UJw2', NULL, NULL, 1, 0, NULL, '2022-02-09 20:49:00.202000', '2022-02-09 20:49:00.202000', NULL, NULL),
(2, 'Natthakit', 'Thosang', NULL, 'nutthakit.tho@spumail.net', '$2a$10$Uu1yl9NfnUWblYqDUCURb.LJJgLQAecrJePLgvrUHXVXvKTeUK1le', NULL, NULL, 1, 0, NULL, '2022-02-26 16:31:51.619000', '2022-02-26 16:36:32.456000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preview_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(15, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_5e6d27d5b7\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646475789/thumbnail_2650401_5e6d27d5b7.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_5e6d27d5b7\",\"resource_type\":\"image\"}}}', '2650401_5e6d27d5b7', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646475787/2650401_5e6d27d5b7.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_5e6d27d5b7\",\"resource_type\":\"image\"}', '2022-03-05 17:23:09.900000', '2022-03-05 17:23:09.900000', NULL, NULL),
(16, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_c47cf4a9f9\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476340/thumbnail_2650401_c47cf4a9f9.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_c47cf4a9f9\",\"resource_type\":\"image\"}}}', '2650401_c47cf4a9f9', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476339/2650401_c47cf4a9f9.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_c47cf4a9f9\",\"resource_type\":\"image\"}', '2022-03-05 17:32:21.139000', '2022-03-05 17:32:21.139000', NULL, NULL),
(17, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_6447f07a99\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476631/thumbnail_2650401_6447f07a99.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_6447f07a99\",\"resource_type\":\"image\"}}}', '2650401_6447f07a99', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476630/2650401_6447f07a99.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_6447f07a99\",\"resource_type\":\"image\"}', '2022-03-05 17:37:12.121000', '2022-03-05 17:37:12.121000', NULL, NULL),
(18, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_987f3322be\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476659/thumbnail_2650401_987f3322be.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_987f3322be\",\"resource_type\":\"image\"}}}', '2650401_987f3322be', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476658/2650401_987f3322be.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_987f3322be\",\"resource_type\":\"image\"}', '2022-03-05 17:37:40.237000', '2022-03-05 17:37:40.237000', NULL, NULL),
(19, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_bf411d6425\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476704/thumbnail_2650401_bf411d6425.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_bf411d6425\",\"resource_type\":\"image\"}}}', '2650401_bf411d6425', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476702/2650401_bf411d6425.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_bf411d6425\",\"resource_type\":\"image\"}', '2022-03-05 17:38:24.502000', '2022-03-05 17:38:24.502000', NULL, NULL),
(20, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_7b8993a89e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476736/thumbnail_2650401_7b8993a89e.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_7b8993a89e\",\"resource_type\":\"image\"}}}', '2650401_7b8993a89e', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476734/2650401_7b8993a89e.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_7b8993a89e\",\"resource_type\":\"image\"}', '2022-03-05 17:38:56.830000', '2022-03-05 17:38:56.830000', NULL, NULL),
(21, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_94b5bfc27a\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476778/thumbnail_2650401_94b5bfc27a.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_94b5bfc27a\",\"resource_type\":\"image\"}}}', '2650401_94b5bfc27a', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476777/2650401_94b5bfc27a.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_94b5bfc27a\",\"resource_type\":\"image\"}', '2022-03-05 17:39:39.238000', '2022-03-05 17:39:39.238000', NULL, NULL),
(22, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_47dd84e562\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476805/thumbnail_2650401_47dd84e562.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_47dd84e562\",\"resource_type\":\"image\"}}}', '2650401_47dd84e562', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476804/2650401_47dd84e562.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_47dd84e562\",\"resource_type\":\"image\"}', '2022-03-05 17:40:06.216000', '2022-03-05 17:40:06.216000', NULL, NULL),
(23, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_14dd0bf3c9\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646476918/thumbnail_2650401_14dd0bf3c9.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_14dd0bf3c9\",\"resource_type\":\"image\"}}}', '2650401_14dd0bf3c9', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646476917/2650401_14dd0bf3c9.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_14dd0bf3c9\",\"resource_type\":\"image\"}', '2022-03-05 17:41:58.985000', '2022-03-05 17:41:58.985000', NULL, NULL),
(24, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_dbebc6ec19\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646477728/thumbnail_2650401_dbebc6ec19.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_dbebc6ec19\",\"resource_type\":\"image\"}}}', '2650401_dbebc6ec19', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646477727/2650401_dbebc6ec19.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_dbebc6ec19\",\"resource_type\":\"image\"}', '2022-03-05 17:55:28.969000', '2022-03-05 17:55:28.969000', NULL, NULL),
(25, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_3e0464e2e4\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646478158/thumbnail_2650401_3e0464e2e4.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_3e0464e2e4\",\"resource_type\":\"image\"}}}', '2650401_3e0464e2e4', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646478156/2650401_3e0464e2e4.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_3e0464e2e4\",\"resource_type\":\"image\"}', '2022-03-05 18:02:38.709000', '2022-03-05 18:02:38.709000', NULL, NULL),
(26, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_43ed097097\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646478383/thumbnail_2650401_43ed097097.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_43ed097097\",\"resource_type\":\"image\"}}}', '2650401_43ed097097', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646478381/2650401_43ed097097.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_43ed097097\",\"resource_type\":\"image\"}', '2022-03-05 18:06:23.608000', '2022-03-05 18:06:23.608000', NULL, NULL),
(27, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_0850c9459e\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646478589/thumbnail_2650401_0850c9459e.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_0850c9459e\",\"resource_type\":\"image\"}}}', '2650401_0850c9459e', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646478587/2650401_0850c9459e.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_0850c9459e\",\"resource_type\":\"image\"}', '2022-03-05 18:09:49.672000', '2022-03-05 18:09:49.672000', NULL, NULL),
(30, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_c5d54b9b08\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646479516/thumbnail_2650401_c5d54b9b08.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_c5d54b9b08\",\"resource_type\":\"image\"}}}', '2650401_c5d54b9b08', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646479514/2650401_c5d54b9b08.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_c5d54b9b08\",\"resource_type\":\"image\"}', '2022-03-05 18:25:16.477000', '2022-03-05 18:25:16.477000', NULL, NULL),
(31, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_29d8cc06b3\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646479723/thumbnail_2650401_29d8cc06b3.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_29d8cc06b3\",\"resource_type\":\"image\"}}}', '2650401_29d8cc06b3', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646479721/2650401_29d8cc06b3.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_29d8cc06b3\",\"resource_type\":\"image\"}', '2022-03-05 18:28:43.834000', '2022-03-05 18:28:43.834000', NULL, NULL),
(32, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_3b2cccf8c6\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646479784/thumbnail_2650401_3b2cccf8c6.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_3b2cccf8c6\",\"resource_type\":\"image\"}}}', '2650401_3b2cccf8c6', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646479782/2650401_3b2cccf8c6.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_3b2cccf8c6\",\"resource_type\":\"image\"}', '2022-03-05 18:29:44.405000', '2022-03-05 18:29:44.405000', NULL, NULL),
(33, 'pexels-maxime-francis-2246476.jpg', NULL, NULL, 5464, 3643, '{\"thumbnail\":{\"name\":\"thumbnail_pexels-maxime-francis-2246476.jpg\",\"hash\":\"thumbnail_pexels_maxime_francis_2246476_28a3355e8c\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":13.01,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646480281/thumbnail_pexels_maxime_francis_2246476_28a3355e8c.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_pexels_maxime_francis_2246476_28a3355e8c\",\"resource_type\":\"image\"}}}', 'pexels_maxime_francis_2246476_28a3355e8c', '.jpg', 'image/jpeg', '2697.03', 'https://res.cloudinary.com/carisoven/image/upload/v1646480279/pexels_maxime_francis_2246476_28a3355e8c.jpg', NULL, 'cloudinary', '{\"public_id\":\"pexels_maxime_francis_2246476_28a3355e8c\",\"resource_type\":\"image\"}', '2022-03-05 18:38:02.006000', '2022-03-05 18:38:02.006000', NULL, NULL),
(34, 'marcelo-cidrack-HME4dq3FCeI-unsplash.jpg', NULL, NULL, 4998, 3332, '{\"thumbnail\":{\"name\":\"thumbnail_marcelo-cidrack-HME4dq3FCeI-unsplash.jpg\",\"hash\":\"thumbnail_marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":6.05,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646480358/thumbnail_marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719\",\"resource_type\":\"image\"}}}', 'marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719', '.jpg', 'image/jpeg', '1855.62', 'https://res.cloudinary.com/carisoven/image/upload/v1646480356/marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719.jpg', NULL, 'cloudinary', '{\"public_id\":\"marcelo_cidrack_HME_4dq3_F_Ce_I_unsplash_9a0d20c719\",\"resource_type\":\"image\"}', '2022-03-05 18:39:18.527000', '2022-03-05 18:39:18.527000', NULL, NULL),
(35, 'pexels-maxime-francis-2246476.jpg', NULL, NULL, 5464, 3643, '{\"thumbnail\":{\"name\":\"thumbnail_pexels-maxime-francis-2246476.jpg\",\"hash\":\"thumbnail_pexels_maxime_francis_2246476_8ef48f28eb\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":234,\"height\":156,\"size\":13.01,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646835429/thumbnail_pexels_maxime_francis_2246476_8ef48f28eb.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_pexels_maxime_francis_2246476_8ef48f28eb\",\"resource_type\":\"image\"}}}', 'pexels_maxime_francis_2246476_8ef48f28eb', '.jpg', 'image/jpeg', '2697.03', 'https://res.cloudinary.com/carisoven/image/upload/v1646835427/pexels_maxime_francis_2246476_8ef48f28eb.jpg', NULL, 'cloudinary', '{\"public_id\":\"pexels_maxime_francis_2246476_8ef48f28eb\",\"resource_type\":\"image\"}', '2022-03-09 21:17:09.612000', '2022-03-09 21:17:09.612000', NULL, NULL),
(36, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_674732d8c2\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646835930/thumbnail_2650401_674732d8c2.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_674732d8c2\",\"resource_type\":\"image\"}}}', '2650401_674732d8c2', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646835927/2650401_674732d8c2.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_674732d8c2\",\"resource_type\":\"image\"}', '2022-03-09 21:25:30.451000', '2022-03-09 21:25:30.451000', NULL, NULL),
(38, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_62bc37391d\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646835983/thumbnail_2650401_62bc37391d.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_62bc37391d\",\"resource_type\":\"image\"}}}', '2650401_62bc37391d', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646835981/2650401_62bc37391d.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_62bc37391d\",\"resource_type\":\"image\"}', '2022-03-09 21:26:23.537000', '2022-03-09 21:26:23.537000', NULL, NULL),
(39, '2650401.jpeg', NULL, NULL, 3000, 1821, '{\"thumbnail\":{\"name\":\"thumbnail_2650401.jpeg\",\"hash\":\"thumbnail_2650401_f672ea04b8\",\"ext\":\".jpeg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":149,\"size\":8.11,\"path\":null,\"url\":\"https://res.cloudinary.com/carisoven/image/upload/v1646836591/thumbnail_2650401_f672ea04b8.jpg\",\"provider_metadata\":{\"public_id\":\"thumbnail_2650401_f672ea04b8\",\"resource_type\":\"image\"}}}', '2650401_f672ea04b8', '.jpeg', 'image/jpeg', '292.01', 'https://res.cloudinary.com/carisoven/image/upload/v1646836589/2650401_f672ea04b8.jpg', NULL, 'cloudinary', '{\"public_id\":\"2650401_f672ea04b8\",\"resource_type\":\"image\"}', '2022-03-09 21:36:31.347000', '2022-03-09 21:36:31.347000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(32, 3, 'api::post.post', 'Cover', 1),
(33, 1, 'api::post.post', 'Cover', 1),
(34, 2, 'api::post.post', 'Cover', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2022-02-09 20:48:15.093000', '2022-02-09 20:48:15.093000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `content_private` tinyint(1) DEFAULT NULL,
  `catagory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_date` datetime(6) DEFAULT NULL,
  `discription` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `highlights` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `content_private`, `catagory`, `publish_date`, `discription`, `highlights`) VALUES
(1, 'Why Is Everyone So Annoyed by Questions?', '<p className=\"text-red-500\">\n   I get that its repetitive, but every few days theres a new request for a topic to be removed with tons of people agreeing… and the topic ends up being something like asking questions, or hating a certain character. </p>\n<div>\n<p>If every topic was only posted about once the sub would die in a month. I think it’s wonderful the sub is as lively as it is, as most popular corporate made games don’t have nearly as much of a lively community.</p>\n\n<p>I guess I just genuinely don’t understand the issue of too many posts… Like oh no!!! Too many people are interacting at once?? Im sure its a pain for the mods to constantly be dealing with finding new ways to block topics and such as well, especially when its as common as new players asking what something is.</p>\n\n<p>And yes, Im aware theres a wiki. But have you maybe considered some people just want interaction? To chat with someone about something they’ve found? To get an in-depth explanation to a question they have?</p>\n\n<p className=\"text-red-400\" >Maybe I’m missing something?</p>\n\n<p>Ps I apologize if I flaired this wrong, I wasn’t sure what was appropriate.</p>\n\n</div>\n', '2022-02-09 21:02:33.528000', '2022-03-11 23:02:54.325000', '2022-02-19 13:43:57.421000', 1, 1, 0, 'Post', '2022-02-19 13:40:00.000000', 'I get that its repetitive, but every few days theres a new request for a topic to be removed with tons of people agreeing… and the topic ends up being something like asking questions, or hating a certain character.\n\nIf every topic was only posted about once the sub would die in a month. I think it’s wonderful the sub is as lively as it is, as most popular corporate made games don’t have nearly as much of a lively community.\n\nI guess I just genuinely don’t understand the issue of too many posts… Like oh no!!! Too many people are interacting at once?? Im sure its a pain for the mods to constantly be dealing with finding new ways to block topics and such as well, especially when its as common as new players asking what something is.\n\nAnd yes, Im aware theres a wiki. But have you maybe considered some people just want interaction? To chat with someone about something they’ve found? To get an in-depth explanation to a question they have?\n\nMaybe I’m missing something?\n\nPs I apologize if I flaired this wrong, I wasn’t sure what was appropriate.', 1),
(2, 'dsfdsioklfjsdlf', 'fdstg34ew5uhtjrfg dstyfghujkgdgastyeg6ryujfgdfgdfgdf', '2022-02-09 21:02:43.499000', '2022-03-11 23:03:45.699000', '2022-02-19 13:44:08.232000', 1, 1, 0, 'Post', NULL, 'erfgtdftertdsrfg', 0),
(3, 'Hello world', '<div>Hello world</div>', '2022-02-26 15:08:16.632000', '2022-03-10 21:04:18.266000', '2022-02-26 15:08:16.626000', NULL, 1, 1, NULL, NULL, 'rdfsgerdsg', 0),
(4, 'Hello world2', '<div>Hello world2</div>', '2022-02-26 15:11:08.332000', '2022-03-11 23:04:04.871000', '2022-02-26 15:11:08.329000', NULL, 1, 0, 'Review', '2022-02-22 00:02:00.000000', 'dfstgerdstfg', 0),
(5, 'Hello world3', '<div>Hello world2</div>', '2022-02-26 20:52:12.540000', '2022-03-10 21:04:43.592000', '2022-02-26 20:52:12.537000', NULL, 1, 0, 'Problem', NULL, 'fgdsertgfertger', 0),
(6, 'Hello world4', '<div>Hello world2</div>', '2022-03-05 12:14:43.602000', '2022-03-11 23:03:23.169000', '2022-03-05 12:14:43.598000', NULL, 1, 0, 'Post', NULL, 'dsfdsfgdsf', 0),
(7, 'Hello world4', '<div>Hello world2</div>', '2022-03-05 12:15:10.380000', '2022-03-11 23:03:31.050000', '2022-03-05 12:15:10.371000', NULL, 1, 0, 'Post', NULL, 'dfgdfgdfg', 0),
(8, 'Review Post', '<div>Hello world</div>', '2022-03-05 13:02:03.295000', '2022-03-11 23:03:14.979000', '2022-03-05 13:02:03.293000', NULL, 1, 0, 'Review', NULL, 'Hello My Discription', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_users_permissions_user_links`
--

CREATE TABLE `posts_users_permissions_user_links` (
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_users_permissions_user_links`
--

INSERT INTO `posts_users_permissions_user_links` (`post_id`, `user_id`) VALUES
(3, 13),
(5, 13),
(1, 13),
(8, 13),
(6, 13),
(7, 13),
(2, 14),
(4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `tel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shotbio_tech` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `report_message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `report_message`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Report Content', '2022-02-12 21:00:59.074000', '2022-02-12 21:00:59.999000', '2022-02-12 21:00:59.992000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports_post_links`
--

CREATE TABLE `reports_post_links` (
  `report_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\"],\"configurable\":false,\"required\":false,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"api::post.post\":{\"kind\":\"collectionType\",\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"richtext\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"content_private\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"reports\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::report.report\",\"mappedBy\":\"post\"},\"Cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"publish_date\":{\"type\":\"datetime\"},\"discription\":{\"type\":\"text\",\"required\":true},\"highlights\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"Catagory\":{\"type\":\"enumeration\",\"enum\":[\"Post\",\"Review\"],\"default\":\"Post\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Title\":{\"type\":\"string\",\"required\":true},\"Content\":{\"type\":\"richtext\"},\"users_permissions_user\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::users-permissions.user\"},\"content_private\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"reports\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::report.report\",\"mappedBy\":\"post\"},\"Cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"publish_date\":{\"type\":\"datetime\"},\"discription\":{\"type\":\"text\",\"required\":true},\"highlights\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"Catagory\":{\"type\":\"enumeration\",\"enum\":[\"Post\",\"Review\"],\"default\":\"Post\",\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"post\",\"connection\":\"default\",\"uid\":\"api::post.post\",\"apiName\":\"post\",\"globalId\":\"Post\",\"actions\":{},\"lifecycles\":{}},\"api::profile.profile\":{\"kind\":\"collectionType\",\"collectionName\":\"profiles\",\"info\":{\"singularName\":\"profile\",\"pluralName\":\"profiles\",\"displayName\":\"Profile\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Tel\":{\"type\":\"string\"},\"shotbio_tech\":{\"type\":\"richtext\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"profiles\",\"info\":{\"singularName\":\"profile\",\"pluralName\":\"profiles\",\"displayName\":\"Profile\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"Tel\":{\"type\":\"string\"},\"shotbio_tech\":{\"type\":\"richtext\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"profile\",\"connection\":\"default\",\"uid\":\"api::profile.profile\",\"apiName\":\"profile\",\"globalId\":\"Profile\",\"actions\":{},\"lifecycles\":{}},\"api::report.report\":{\"kind\":\"collectionType\",\"collectionName\":\"reports\",\"info\":{\"singularName\":\"report\",\"pluralName\":\"reports\",\"displayName\":\"Report\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"report_message\":{\"type\":\"text\"},\"post\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::post.post\",\"inversedBy\":\"reports\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"reports\",\"info\":{\"singularName\":\"report\",\"pluralName\":\"reports\",\"displayName\":\"Report\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"report_message\":{\"type\":\"text\"},\"post\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::post.post\",\"inversedBy\":\"reports\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"report\",\"connection\":\"default\",\"uid\":\"api::report.report\",\"apiName\":\"report\",\"globalId\":\"Report\",\"actions\":{},\"lifecycles\":{}},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"imageUrl\":{\"type\":\"text\",\"default\":\"https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg\",\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"imageUrl\":{\"type\":\"text\",\"default\":\"https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg\",\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"}}', 'object', NULL, NULL),
(2, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"Properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"PreferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"AccessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AccessKey\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":20,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"imageUrl\":{\"edit\":{\"label\":\"ImageUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ImageUrl\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"imageUrl\",\"size\":6}]],\"editRelations\":[\"role\"],\"list\":[\"id\",\"username\",\"email\",\"role\",\"imageUrl\"]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(10, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', NULL, NULL),
(11, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":false,\"autoOrientation\":false}', 'object', NULL, NULL),
(12, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"//api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"//api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"//api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"//api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"}}', 'object', NULL, NULL),
(13, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(14, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(15, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(16, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::api::post.post', '{\"uid\":\"api::post.post\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":20,\"mainField\":\"Title\",\"defaultSortBy\":\"Title\",\"defaultSortOrder\":\"DESC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Title\":{\"edit\":{\"label\":\"Title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Title\",\"searchable\":true,\"sortable\":true}},\"Content\":{\"edit\":{\"label\":\"Content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content\",\"searchable\":false,\"sortable\":false}},\"users_permissions_user\":{\"edit\":{\"label\":\"Users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"content_private\":{\"edit\":{\"label\":\"Content_private\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Content_private\",\"searchable\":true,\"sortable\":true}},\"reports\":{\"edit\":{\"label\":\"Reports\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Reports\",\"searchable\":false,\"sortable\":false}},\"Catagory\":{\"edit\":{\"label\":\"Catagory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Catagory\",\"searchable\":true,\"sortable\":true}},\"Cover\":{\"edit\":{\"label\":\"Cover\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Cover\",\"searchable\":false,\"sortable\":false}},\"publish_date\":{\"edit\":{\"label\":\"Publish_date\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Publish_date\",\"searchable\":true,\"sortable\":true}},\"discription\":{\"edit\":{\"label\":\"Discription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Discription\",\"searchable\":true,\"sortable\":true}},\"highlights\":{\"edit\":{\"label\":\"Highlights\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Highlights\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"updatedAt\",\"id\",\"Cover\",\"Title\",\"content_private\",\"users_permissions_user\"],\"edit\":[[{\"name\":\"Title\",\"size\":6}],[{\"name\":\"Content\",\"size\":12}],[{\"name\":\"content_private\",\"size\":4},{\"name\":\"Catagory\",\"size\":6}],[{\"name\":\"Cover\",\"size\":6},{\"name\":\"publish_date\",\"size\":6}],[{\"name\":\"discription\",\"size\":6},{\"name\":\"highlights\",\"size\":4}]],\"editRelations\":[\"users_permissions_user\",\"reports\"]}}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::api::report.report', '{\"uid\":\"api::report.report\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"report_message\":{\"edit\":{\"label\":\"Report_message\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Report_message\",\"searchable\":true,\"sortable\":true}},\"post\":{\"edit\":{\"label\":\"Post\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"Title\"},\"list\":{\"label\":\"Post\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"report_message\",\"createdAt\",\"post\"],\"edit\":[[{\"name\":\"report_message\",\"size\":6}]],\"editRelations\":[\"post\"]}}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::profile.profile', '{\"uid\":\"api::profile.profile\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"Tel\",\"defaultSortBy\":\"Tel\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"Tel\":{\"edit\":{\"label\":\"Tel\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Tel\",\"searchable\":true,\"sortable\":true}},\"shotbio_tech\":{\"edit\":{\"label\":\"Shotbio_tech\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Shotbio_tech\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"CreatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"CreatedAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"UpdatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"UpdatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"Tel\",\"createdAt\",\"updatedAt\"],\"editRelations\":[],\"edit\":[[{\"name\":\"Tel\",\"size\":6}],[{\"name\":\"shotbio_tech\",\"size\":12}]]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(24, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"posts\",\"indexes\":[{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_private\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"publish_date\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"discription\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"highlights\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"catagory\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"profiles\",\"indexes\":[{\"name\":\"profiles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"profiles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"profiles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"profiles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"tel\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"shotbio_tech\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"reports\",\"indexes\":[{\"name\":\"reports_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"reports_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"reports_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"reports_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"report_message\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"image_url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"posts_users_permissions_user_links\",\"indexes\":[{\"name\":\"posts_users_permissions_user_links_fk\",\"columns\":[\"post_id\"]},{\"name\":\"posts_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"]}],\"foreignKeys\":[{\"name\":\"posts_users_permissions_user_links_fk\",\"columns\":[\"post_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"posts\",\"onDelete\":\"CASCADE\"},{\"name\":\"posts_users_permissions_user_links_inv_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"post_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"reports_post_links\",\"indexes\":[{\"name\":\"reports_post_links_fk\",\"columns\":[\"report_id\"]},{\"name\":\"reports_post_links_inv_fk\",\"columns\":[\"post_id\"]}],\"foreignKeys\":[{\"name\":\"reports_post_links_fk\",\"columns\":[\"report_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"reports\",\"onDelete\":\"CASCADE\"},{\"name\":\"reports_post_links_inv_fk\",\"columns\":[\"post_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"posts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"report_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"post_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2022-03-11 23:00:05', '9972723ae313bac2f5ff91a133466ab9');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.auth.connect', '2022-02-09 20:48:15.084000', '2022-02-09 20:48:15.084000', NULL, NULL),
(2, 'plugin::users-permissions.user.me', '2022-02-09 20:48:15.084000', '2022-02-09 20:48:15.084000', NULL, NULL),
(5, 'plugin::users-permissions.auth.connect', '2022-02-09 20:48:15.087000', '2022-02-09 20:48:15.087000', NULL, NULL),
(7, 'plugin::users-permissions.auth.callback', '2022-02-09 20:48:15.087000', '2022-02-09 20:48:15.087000', NULL, NULL),
(8, 'plugin::users-permissions.user.me', '2022-02-09 20:48:15.088000', '2022-02-09 20:48:15.088000', NULL, NULL),
(11, 'plugin::users-permissions.auth.register', '2022-02-09 20:48:15.087000', '2022-02-09 20:48:15.087000', NULL, NULL),
(12, 'api::post.post.find', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(13, 'api::post.post.findOne', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(14, 'api::post.post.create', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(15, 'api::post.post.update', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(16, 'api::post.post.delete', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(17, 'plugin::content-type-builder.components.getComponents', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(18, 'plugin::content-type-builder.components.getComponent', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(19, 'plugin::content-type-builder.content-types.getContentTypes', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(20, 'plugin::content-type-builder.content-types.getContentType', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(21, 'plugin::upload.content-api.find', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(22, 'plugin::upload.content-api.findOne', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(23, 'plugin::upload.content-api.count', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(24, 'plugin::upload.content-api.destroy', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(25, 'plugin::upload.content-api.upload', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(26, 'plugin::users-permissions.user.update', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(27, 'plugin::users-permissions.user.find', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(28, 'plugin::users-permissions.user.findOne', '2022-02-09 21:01:30.192000', '2022-02-09 21:01:30.192000', NULL, NULL),
(44, 'plugin::users-permissions.auth.callback', '2022-02-09 21:20:09.840000', '2022-02-09 21:20:09.840000', NULL, NULL),
(45, 'plugin::users-permissions.auth.register', '2022-02-09 21:20:09.840000', '2022-02-09 21:20:09.840000', NULL, NULL),
(48, 'api::profile.profile.find', '2022-02-19 17:00:46.247000', '2022-02-19 17:00:46.247000', NULL, NULL),
(49, 'plugin::users-permissions.user.findOne', '2022-02-19 17:00:46.247000', '2022-02-19 17:00:46.247000', NULL, NULL),
(50, 'api::profile.profile.findOne', '2022-02-19 17:00:46.247000', '2022-02-19 17:00:46.247000', NULL, NULL),
(51, 'plugin::users-permissions.auth.resetPassword', '2022-02-19 17:05:52.282000', '2022-02-19 17:05:52.282000', NULL, NULL),
(52, 'plugin::users-permissions.auth.forgotPassword', '2022-02-19 17:05:52.282000', '2022-02-19 17:05:52.282000', NULL, NULL),
(53, 'plugin::users-permissions.auth.emailConfirmation', '2022-02-19 17:05:52.282000', '2022-02-19 17:05:52.282000', NULL, NULL),
(54, 'plugin::users-permissions.auth.sendEmailConfirmation', '2022-02-19 17:05:52.282000', '2022-02-19 17:05:52.282000', NULL, NULL),
(55, 'plugin::users-permissions.permissions.getPermissions', '2022-02-19 17:05:57.901000', '2022-02-19 17:05:57.901000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(7, 2),
(5, 2),
(8, 2),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(23, 1),
(24, 1),
(44, 1),
(45, 1),
(48, 2),
(49, 2),
(50, 2),
(51, 1),
(53, 1),
(54, 1),
(52, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'User Authenticate Successfully', 'authenticated', '2022-02-09 20:48:15.080000', '2022-02-19 17:12:02.544000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-02-09 20:48:15.081000', '2022-02-19 17:05:41.662000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `image_url` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`, `image_url`) VALUES
(13, 'Hemarat Matar', 'carisoven@gmail.com', 'local', '$2a$10$hYzeWNiROtrZkWGVfAuM9.5Hck669BV9Oz9am19i9Yc35dpx44.6m', NULL, NULL, 1, 0, '2022-02-19 17:04:40.319000', '2022-02-25 13:34:17.295000', 1, 1, 'https://res.cloudinary.com/carisoven/image/upload/v1645770832/userprfile/gettyimages-961697338_hmcflq.jpg'),
(14, 'adminuser', 'adminuser@affix-tech.com', 'local', '$2a$10$M26zE.2CnOFCh.gK5Z1ypeRMlnZcxHwh2TohNm8LNjFMjZ3NRwwkW', NULL, NULL, 1, 0, '2022-02-19 17:07:08.139000', '2022-02-19 17:07:08.139000', NULL, NULL, 'https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg'),
(15, 'Caris Oven', 'carisoven148041@gmail.com', 'local', '$2a$10$jOXiksABo.AD9QSKHmuRMOkjoOvY.K6VTq0U69ExqRWjXJxakhkty', NULL, NULL, 1, 0, '2022-02-19 17:08:43.411000', '2022-02-19 17:08:43.411000', NULL, NULL, 'https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg'),
(16, 'ovenadmin', 'oven.admin@gmail.com', 'local', '$2a$10$4marehQYKj5q.PCHKCsb7OYYz9jB2AQrhp.CbRCUbOFrG3jPNx6by', NULL, NULL, 1, 0, '2022-02-19 17:10:07.916000', '2022-02-19 17:10:07.916000', NULL, NULL, 'https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg'),
(17, 'adminuser2', 'adminuser2@gmail.com', 'local', '$2a$10$2eB.cXeE6ySg/zXR.TCLReHfmObbh/MoIOr/OWExTKRJW1mS3xUW6', NULL, NULL, 1, 0, '2022-02-19 17:12:36.299000', '2022-02-19 17:12:36.299000', NULL, NULL, 'https://res.cloudinary.com/carisoven/image/upload/v1645253457/userprfile/user_default_zvvgv7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`user_id`, `role_id`) VALUES
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(13, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD KEY `files_related_morphs_fk` (`file_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_id_fk` (`created_by_id`),
  ADD KEY `posts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `posts_users_permissions_user_links`
--
ALTER TABLE `posts_users_permissions_user_links`
  ADD KEY `posts_users_permissions_user_links_fk` (`post_id`),
  ADD KEY `posts_users_permissions_user_links_inv_fk` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_created_by_id_fk` (`created_by_id`),
  ADD KEY `profiles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_created_by_id_fk` (`created_by_id`),
  ADD KEY `reports_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `reports_post_links`
--
ALTER TABLE `reports_post_links`
  ADD KEY `reports_post_links_fk` (`report_id`),
  ADD KEY `reports_post_links_inv_fk` (`post_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `posts_users_permissions_user_links`
--
ALTER TABLE `posts_users_permissions_user_links`
  ADD CONSTRAINT `posts_users_permissions_user_links_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_users_permissions_user_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `profiles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reports_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `reports_post_links`
--
ALTER TABLE `reports_post_links`
  ADD CONSTRAINT `reports_post_links_fk` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_post_links_inv_fk` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
