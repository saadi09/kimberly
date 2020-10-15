-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 06:47 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kimberly`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `log_id` int(22) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_controller` text,
  `action_method` text,
  `action_url` text,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(25) DEFAULT NULL,
  `browser` text,
  `os` text,
  `device` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`log_id`, `user_id`, `action_controller`, `action_method`, `action_url`, `date_time`, `ip`, `browser`, `os`, `device`) VALUES
(1, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-11 06:02:43', '::1', 'Firefox', 'Windows 10', 'Computer'),
(2, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-11 06:02:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(3, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-11 23:04:47', '::1', 'Chrome', 'Windows 10', 'Computer'),
(4, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/menus/manage', '2020-05-11 23:04:51', '::1', 'Chrome', 'Windows 10', 'Computer'),
(5, 1, 'Cms_controller', 'manage_nav_menus', 'http://localhost/itraining_london/cms/manage_nav_menus', '2020-05-11 23:05:23', '::1', 'Chrome', 'Windows 10', 'Computer'),
(6, 1, 'Cms_controller', 'edit_nav_menu', 'http://localhost/itraining_london/cms/edit_nav_menu/5', '2020-05-11 23:05:33', '::1', 'Chrome', 'Windows 10', 'Computer'),
(7, 1, 'Cms_controller', 'save_edit_nav_menu', 'http://localhost/itraining_london/cms/save_edit_nav_menu', '2020-05-11 23:05:42', '::1', 'Chrome', 'Windows 10', 'Computer'),
(8, 1, 'Cms_controller', 'manage_nav_menus', 'http://localhost/itraining_london/cms/manage_nav_menus', '2020-05-11 23:05:45', '::1', 'Chrome', 'Windows 10', 'Computer'),
(9, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:05:48', '::1', 'Chrome', 'Windows 10', 'Computer'),
(10, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:05:48', '::1', 'Chrome', 'Windows 10', 'Computer'),
(11, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:05:49', '::1', 'Chrome', 'Windows 10', 'Computer'),
(12, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:16', '::1', 'Chrome', 'Windows 10', 'Computer'),
(13, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:17', '::1', 'Chrome', 'Windows 10', 'Computer'),
(14, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:19', '::1', 'Chrome', 'Windows 10', 'Computer'),
(15, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:19', '::1', 'Chrome', 'Windows 10', 'Computer'),
(16, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:20', '::1', 'Chrome', 'Windows 10', 'Computer'),
(17, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:54', '::1', 'Chrome', 'Windows 10', 'Computer'),
(18, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:55', '::1', 'Chrome', 'Windows 10', 'Computer'),
(19, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:07:56', '::1', 'Chrome', 'Windows 10', 'Computer'),
(20, 1, 'Website', 'getpage', 'http://localhost/itraining_london/Website/getpage/5', '2020-05-11 23:08:01', '::1', 'Chrome', 'Windows 10', 'Computer'),
(21, 1, 'Website', 'contact_us', 'http://localhost/itraining_london/contact-us', '2020-05-11 23:08:01', '::1', 'Chrome', 'Windows 10', 'Computer'),
(22, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:08:09', '::1', 'Chrome', 'Windows 10', 'Computer'),
(23, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:08:10', '::1', 'Chrome', 'Windows 10', 'Computer'),
(24, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:08:10', '::1', 'Chrome', 'Windows 10', 'Computer'),
(25, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:08:59', '::1', 'Chrome', 'Windows 10', 'Computer'),
(26, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:09:00', '::1', 'Chrome', 'Windows 10', 'Computer'),
(27, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:09:00', '::1', 'Chrome', 'Windows 10', 'Computer'),
(28, 1, 'Website', 'getpage', 'http://localhost/itraining_london/Website/getpage/1', '2020-05-11 23:09:05', '::1', 'Chrome', 'Windows 10', 'Computer'),
(29, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:09:05', '::1', 'Chrome', 'Windows 10', 'Computer'),
(30, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:09:05', '::1', 'Chrome', 'Windows 10', 'Computer'),
(31, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:09:06', '::1', 'Chrome', 'Windows 10', 'Computer'),
(32, 1, 'Website', 'getpage', 'http://localhost/itraining_london/Website/getpage/5', '2020-05-11 23:09:13', '::1', 'Chrome', 'Windows 10', 'Computer'),
(33, 1, 'Website', 'contact_us', 'http://localhost/itraining_london/contact-us', '2020-05-11 23:09:13', '::1', 'Chrome', 'Windows 10', 'Computer'),
(34, 1, 'Website', 'contact_us', 'http://localhost/itraining_london/contact-us', '2020-05-11 23:09:46', '::1', 'Chrome', 'Windows 10', 'Computer'),
(35, 1, 'Website', 'contact_us', 'http://localhost/itraining_london/contact-us', '2020-05-11 23:09:59', '::1', 'Chrome', 'Windows 10', 'Computer'),
(36, 1, 'Website', 'getpage', 'http://localhost/itraining_london/Website/getpage/1', '2020-05-11 23:10:54', '::1', 'Chrome', 'Windows 10', 'Computer'),
(37, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:10:54', '::1', 'Chrome', 'Windows 10', 'Computer'),
(38, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:10:55', '::1', 'Chrome', 'Windows 10', 'Computer'),
(39, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:10:56', '::1', 'Chrome', 'Windows 10', 'Computer'),
(40, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-11 23:11:11', '::1', 'Chrome', 'Windows 10', 'Computer'),
(41, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:11:28', '::1', 'Chrome', 'Windows 10', 'Computer'),
(42, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:11:28', '::1', 'Chrome', 'Windows 10', 'Computer'),
(43, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:11:29', '::1', 'Chrome', 'Windows 10', 'Computer'),
(44, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-11 23:20:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(45, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-11 23:21:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(46, 1, 'Cms_controller', 'save_slider', 'http://localhost/itraining_london/cms/save_slider', '2020-05-11 23:22:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(47, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-11 23:22:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(48, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:22:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(49, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:22:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(50, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:22:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(51, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:57:47', '::1', 'Chrome', 'Windows 10', 'Computer'),
(52, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-11 23:57:47', '::1', 'Chrome', 'Windows 10', 'Computer'),
(53, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-11 23:57:49', '::1', 'Chrome', 'Windows 10', 'Computer'),
(54, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-11 23:58:00', '::1', 'Chrome', 'Windows 10', 'Computer'),
(55, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-11 23:59:03', '::1', 'Chrome', 'Windows 10', 'Computer'),
(56, 1, 'Cms_controller', 'delete_slider', 'http://localhost/itraining_london/cms/delete_slider_item', '2020-05-12 00:01:34', '::1', 'Chrome', 'Windows 10', 'Computer'),
(57, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-12 00:02:01', '::1', 'Chrome', 'Windows 10', 'Computer'),
(58, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-12 00:02:09', '::1', 'Chrome', 'Windows 10', 'Computer'),
(59, 1, 'Cms_controller', 'save_slider', 'http://localhost/itraining_london/cms/save_slider', '2020-05-12 00:03:01', '::1', 'Chrome', 'Windows 10', 'Computer'),
(60, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-12 00:03:03', '::1', 'Chrome', 'Windows 10', 'Computer'),
(61, 1, 'Cms_controller', 'delete_slider', 'http://localhost/itraining_london/cms/delete_slider_item', '2020-05-12 00:04:37', '::1', 'Chrome', 'Windows 10', 'Computer'),
(62, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-12 00:05:17', '::1', 'Chrome', 'Windows 10', 'Computer'),
(63, 1, 'Cms_controller', 'add_slider', 'http://localhost/itraining_london/cms/add_slider', '2020-05-12 00:05:24', '::1', 'Chrome', 'Windows 10', 'Computer'),
(64, 1, 'Cms_controller', 'save_slider', 'http://localhost/itraining_london/cms/save_slider', '2020-05-12 00:05:48', '::1', 'Chrome', 'Windows 10', 'Computer'),
(65, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-12 00:05:50', '::1', 'Chrome', 'Windows 10', 'Computer'),
(66, 1, 'Cms_controller', 'delete_slider', 'http://localhost/itraining_london/cms/delete_slider_item', '2020-05-12 00:06:12', '::1', 'Chrome', 'Windows 10', 'Computer'),
(67, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:31:13', '::1', 'Chrome', 'Windows 10', 'Computer'),
(68, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:31:13', '::1', 'Chrome', 'Windows 10', 'Computer'),
(69, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:31:14', '::1', 'Chrome', 'Windows 10', 'Computer'),
(70, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:39:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(71, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:39:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(72, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-12 00:39:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(73, 1, 'Login', 'index', 'http://localhost/itraining_london/login', '2020-05-12 00:39:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(74, 1, 'Login', 'index', 'http://localhost/itraining_london/login', '2020-05-12 00:39:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(75, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-12 00:39:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(76, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/menus/manage', '2020-05-12 00:40:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(77, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-13 05:28:43', '::1', 'Firefox', 'Windows 10', 'Computer'),
(78, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 05:31:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(79, 1, 'Cms_controller', 'save_nav_menu', 'http://localhost/itraining_london/cms/save_nav_menu', '2020-05-13 05:31:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(80, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 05:37:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(81, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 05:37:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(82, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 05:37:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(83, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 05:38:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(84, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:38:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(85, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 05:38:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(86, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 05:39:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(87, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:39:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(88, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:40:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(89, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:41:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(90, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 05:41:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(91, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:41:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(92, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:41:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(93, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:46:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(94, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:48:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(95, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:48:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(96, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:48:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(97, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:51:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(98, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:51:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(99, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:52:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(100, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 05:53:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(101, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 05:53:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(102, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:53:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(103, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 05:59:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(104, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/1', '2020-05-13 05:59:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(105, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/1', '2020-05-13 06:00:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(106, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:00:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(107, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:00:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(108, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/1', '2020-05-13 06:00:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(109, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:00:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(110, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/2', '2020-05-13 06:00:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(111, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/2', '2020-05-13 06:03:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(112, 1, 'Faqs', 'save_update_category', 'http://localhost/itraining_london/faqs/save_update_category', '2020-05-13 06:03:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(113, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:03:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(114, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/2', '2020-05-13 06:03:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(115, 1, 'Faqs', 'save_update_category', 'http://localhost/itraining_london/faqs/save_update_category', '2020-05-13 06:03:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(116, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:03:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(117, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/1', '2020-05-13 06:03:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(118, 1, 'Faqs', 'save_update_category', 'http://localhost/itraining_london/faqs/save_update_category', '2020-05-13 06:04:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(119, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 06:04:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(120, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-13 16:08:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(121, 1, 'Cms_controller', 'slider_list', 'http://localhost/itraining_london/cms/manage_slider', '2020-05-13 16:09:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(122, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 16:10:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(123, 1, 'Faqs', 'update_category', 'http://localhost/itraining_london/faqs/update_category/3', '2020-05-13 16:10:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(124, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 16:10:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(125, 1, 'Faqs', 'add_category', 'http://localhost/itraining_london/faqs/add_category', '2020-05-13 16:10:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(126, 1, 'Faqs', 'manage_categories', 'http://localhost/itraining_london/faqs/manage_categories', '2020-05-13 16:10:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(127, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:17:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(128, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:18:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(129, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:19:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(130, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-13 16:23:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(131, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:23:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(132, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:24:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(133, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:24:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(134, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:25:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(135, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:26:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(136, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:28:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(137, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:32:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(138, 1, 'Faqs', 'save_faq_category', 'http://localhost/itraining_london/faqs/save_category', '2020-05-13 16:33:00', '::1', 'Firefox', 'Windows 10', 'Computer'),
(139, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:33:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(140, 1, 'Faqs', 'save_question', 'http://localhost/itraining_london/faqs/save_question', '2020-05-13 16:33:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(141, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-13 16:33:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(142, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-13 16:33:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(143, 1, 'website', 'index', 'http://localhost/itraining_london/', '2020-05-13 16:33:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(144, 1, 'Faqs', 'save_question', 'http://localhost/itraining_london/faqs/save_question', '2020-05-13 16:34:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(145, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:34:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(146, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:34:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(147, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:36:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(148, 1, 'Faqs', 'save_question', 'http://localhost/itraining_london/faqs/save_question', '2020-05-13 16:36:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(149, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:36:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(150, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:36:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(151, 1, 'Faqs', 'save_question', 'http://localhost/itraining_london/faqs/save_question', '2020-05-13 16:37:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(152, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:37:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(153, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:37:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(154, 1, 'Faqs', 'save_question', 'http://localhost/itraining_london/faqs/save_question', '2020-05-13 16:38:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(155, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:38:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(156, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:38:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(157, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:39:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(158, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:39:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(159, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:39:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(160, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:39:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(161, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:40:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(162, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:42:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(163, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:44:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(164, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:48:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(165, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:49:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(166, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:50:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(167, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:51:00', '::1', 'Firefox', 'Windows 10', 'Computer'),
(168, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:51:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(169, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:52:00', '::1', 'Firefox', 'Windows 10', 'Computer'),
(170, 1, 'Faqs', 'add_question', 'http://localhost/itraining_london/faqs/add_question', '2020-05-13 16:52:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(171, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:52:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(172, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:58:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(173, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/1', '2020-05-13 16:58:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(174, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:58:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(175, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/2', '2020-05-13 16:58:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(176, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 16:58:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(177, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:10:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(178, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/1', '2020-05-13 17:10:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(179, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/1', '2020-05-13 17:10:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(180, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:10:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(181, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/2', '2020-05-13 17:10:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(182, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:10:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(183, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:15:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(184, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/1', '2020-05-13 17:15:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(185, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:15:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(186, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/2', '2020-05-13 17:15:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(187, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:15:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(188, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/3', '2020-05-13 17:15:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(189, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:15:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(190, 1, 'Faqs', 'questions', 'http://localhost/itraining_london/faqs/questions', '2020-05-13 17:36:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(191, 1, 'Faqs', 'update_question', 'http://localhost/itraining_london/faqs/update_question/1', '2020-05-13 17:36:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(192, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-16 21:38:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(193, 1, 'Cms_controller', 'add_blog', 'http://localhost/itraining_london/cms/add_blog', '2020-05-16 21:41:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(194, 1, 'Cms_controller', 'add_blog', 'http://localhost/itraining_london/cms/add_blog', '2020-05-16 21:41:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(195, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:45:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(196, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:46:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(197, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:50:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(198, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:52:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(199, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:54:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(200, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 21:59:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(201, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:00:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(202, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:03:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(203, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:03:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(204, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:04:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(205, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:12:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(206, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:12:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(207, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:13:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(208, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:14:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(209, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:16:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(210, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:16:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(211, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:16:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(212, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:17:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(213, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:18:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(214, 1, 'Cms_controller', 'blog_list', 'http://localhost/itraining_london/cms/manage_blog', '2020-05-16 22:18:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(215, 1, 'Cms_controller', 'add_blog', 'http://localhost/itraining_london/cms/add_blog', '2020-05-16 22:19:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(216, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:20:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(217, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:20:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(218, 1, 'Cms_controller', 'save_blog_post', 'http://localhost/itraining_london/cms/save_blog_post', '2020-05-16 22:21:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(219, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-20 04:14:48', '::1', 'Chrome', 'Windows 10', 'Computer'),
(220, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:15:18', '::1', 'Chrome', 'Windows 10', 'Computer'),
(221, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:15:58', '::1', 'Chrome', 'Windows 10', 'Computer'),
(222, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:16:57', '::1', 'Chrome', 'Windows 10', 'Computer'),
(223, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:17:22', '::1', 'Chrome', 'Windows 10', 'Computer'),
(224, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/menus/manage', '2020-05-20 04:17:25', '::1', 'Chrome', 'Windows 10', 'Computer'),
(225, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:17:27', '::1', 'Chrome', 'Windows 10', 'Computer'),
(226, 1, 'Menus', 'save_menu', 'http://localhost/itraining_london/Menus/save_menu', '2020-05-20 04:20:13', '::1', 'Chrome', 'Windows 10', 'Computer'),
(227, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:20:15', '::1', 'Chrome', 'Windows 10', 'Computer'),
(228, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:22:45', '::1', 'Chrome', 'Windows 10', 'Computer'),
(229, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:22:47', '::1', 'Chrome', 'Windows 10', 'Computer'),
(230, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-05-20 04:24:15', '::1', 'Chrome', 'Windows 10', 'Computer'),
(231, 1, 'Menus', 'save_menu', 'http://localhost/itraining_london/Menus/save_menu', '2020-05-20 04:24:26', '::1', 'Chrome', 'Windows 10', 'Computer'),
(232, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:24:28', '::1', 'Chrome', 'Windows 10', 'Computer'),
(233, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:26:14', '::1', 'Chrome', 'Windows 10', 'Computer'),
(234, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:27:11', '::1', 'Chrome', 'Windows 10', 'Computer'),
(235, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:27:26', '::1', 'Chrome', 'Windows 10', 'Computer'),
(236, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:27:45', '::1', 'Chrome', 'Windows 10', 'Computer'),
(237, 1, 'Menus', 'manage_menus', 'http://localhost/itraining_london/Menus/manage_menus', '2020-05-20 04:28:15', '::1', 'Chrome', 'Windows 10', 'Computer'),
(238, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-05-27 00:41:04', '::1', 'Chrome', 'Windows 10', 'Computer'),
(239, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-07-02 00:28:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(240, 1, 'Cms_controller', 'add_blog', 'http://localhost/itraining_london/cms/add_blog', '2020-07-02 00:29:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(241, 1, 'Menus', 'add_menu', 'http://localhost/itraining_london/menus/add', '2020-07-02 01:26:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(242, 1, 'Cms_controller', 'add_blog', 'http://localhost/itraining_london/cms/add_blog', '2020-07-02 01:26:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(243, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-07-15 23:02:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(244, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-07-16 00:42:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(245, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-07-16 00:42:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(246, 1, 'Dashboard', 'index', 'http://localhost/itraining_london/Dashboard', '2020-07-16 00:42:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(247, 1, 'Dashboard', 'index', 'https://localhost/itraining_london/Dashboard', '2020-09-09 11:37:59', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(248, 1, 'activity_logs', 'get_logs', 'https://localhost/itraining_london/activity_logs/get_logs', '2020-09-09 11:38:18', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(249, 1, 'Menus', 'add_menu', 'https://localhost/itraining_london/menus/add', '2020-09-09 11:38:21', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(250, 1, 'activity_logs', 'get_logs', 'https://localhost/itraining_london/activity_logs/get_logs', '2020-09-09 11:38:24', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(251, 1, 'website', 'index', 'https://localhost/itraining_london/', '2020-09-09 11:38:30', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(252, 1, 'website', 'index', 'https://localhost/itraining_london/', '2020-09-09 11:38:30', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(253, 1, 'website', 'index', 'https://localhost/itraining_london/', '2020-09-09 11:38:30', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(254, 1, 'activity_logs', 'get_logs', 'https://localhost/itraining_london/activity_logs/get_logs', '2020-09-09 11:38:33', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(255, 1, 'activity_logs', 'get_logs', 'https://localhost/itraining_london/activity_logs/get_logs', '2020-09-09 11:38:40', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(256, 1, 'activity_logs', 'get_logs', 'https://localhost/itraining_london/activity_logs/get_logs', '2020-09-09 11:38:46', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(257, 1, 'Dashboard', 'logout', 'https://localhost/itraining_london/Dashboard/logout', '2020-09-09 11:39:03', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer'),
(258, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-09 20:23:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(259, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-25 04:33:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(260, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-25 04:33:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(261, 1, 'Menus', 'add_menu', 'http://localhost/mcg/menus/add', '2020-09-25 04:33:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(262, 1, 'Menus', 'add_menu', 'http://localhost/mcg/menus/add', '2020-09-25 04:34:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(263, 1, 'Dashboard', 'index', 'http://localhost/mcg/dashboard', '2020-09-25 04:58:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(264, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-25 06:00:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(265, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 06:08:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(266, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 06:09:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(267, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 06:11:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(268, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:16:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(269, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:16:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(270, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:20:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(271, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:21:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(272, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:21:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(273, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(274, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(275, 1, 'Menus', 'manage_menus', 'http://localhost/mcg/menus/manage', '2020-09-25 06:22:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(276, 1, 'Menus', 'add_menu', 'http://localhost/mcg/menus/add', '2020-09-25 06:22:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(277, 1, 'Menus', 'manage_menus', 'http://localhost/mcg/menus/manage', '2020-09-25 06:22:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(278, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:22:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(279, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(280, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(281, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:22:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(282, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:22:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(283, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:43', '::1', 'Firefox', 'Windows 10', 'Computer'),
(284, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:22:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(285, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:22:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(286, 1, 'Property', 'save_property_type', 'http://localhost/mcg/Property/save_property_type', '2020-09-25 06:22:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(287, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:22:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(288, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:23:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(289, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:27:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(290, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:27:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(291, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:29:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(292, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:30:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(293, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:32:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(294, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:32:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(295, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:33:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(296, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 06:33:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(297, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 06:34:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(298, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:36:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(299, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:40:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(300, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:41:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(301, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:41:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(302, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:44:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(303, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:44:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(304, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:45:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(305, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:45:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(306, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:45:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(307, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:46:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(308, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:46:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(309, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:46:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(310, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:46:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(311, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:46:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(312, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:46:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(313, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:49:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(314, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:54:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(315, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:54:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(316, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:56:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(317, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:56:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(318, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:57:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(319, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:57:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(320, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:57:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(321, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:57:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(322, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:58:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(323, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:58:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(324, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:58:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(325, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 06:59:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(326, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 06:59:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(327, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 06:59:35', '::1', 'Firefox', 'Windows 10', 'Computer');
INSERT INTO `activity_logs` (`log_id`, `user_id`, `action_controller`, `action_method`, `action_url`, `date_time`, `ip`, `browser`, `os`, `device`) VALUES
(328, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:00:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(329, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:01:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(330, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:02:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(331, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:02:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(332, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 07:03:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(333, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 07:04:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(334, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 07:04:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(335, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 07:04:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(336, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 07:04:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(337, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 07:05:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(338, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 07:05:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(339, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 07:05:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(340, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:05:43', '::1', 'Firefox', 'Windows 10', 'Computer'),
(341, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:08:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(342, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:09:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(343, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 07:12:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(344, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 07:12:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(345, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-25 07:13:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(346, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-25 07:13:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(347, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 07:13:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(348, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 07:13:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(349, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-25 07:13:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(350, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-25 07:14:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(351, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-25 07:14:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(352, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:14:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(353, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:17:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(354, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:19:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(355, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:19:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(356, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:20:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(357, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:20:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(358, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:21:00', '::1', 'Firefox', 'Windows 10', 'Computer'),
(359, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:21:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(360, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:22:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(361, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:23:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(362, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:23:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(363, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:23:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(364, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:24:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(365, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:24:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(366, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:24:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(367, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:25:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(368, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:32:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(369, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:32:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(370, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:36:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(371, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:36:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(372, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:37:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(373, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:38:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(374, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:44:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(375, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:49:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(376, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:52:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(377, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:53:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(378, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:56:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(379, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:57:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(380, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 07:57:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(381, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:01:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(382, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:02:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(383, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:04:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(384, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:07:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(385, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:07:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(386, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:08:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(387, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:08:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(388, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:08:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(389, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:10:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(390, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:13:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(391, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-25 08:16:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(392, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-26 04:06:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(393, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-26 04:06:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(394, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-09-28 02:03:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(395, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-28 02:03:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(396, 1, 'Property', 'add_property_type', 'http://localhost/mcg/Property/add_property_type', '2020-09-28 02:03:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(397, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-28 02:03:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(398, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-28 02:03:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(399, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-28 02:03:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(400, 1, 'Property', 'index', 'http://localhost/mcg/Property', '2020-09-28 02:18:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(401, 1, 'Property', 'manage_property_types', 'http://localhost/mcg/Property/manage_property_types', '2020-09-28 02:19:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(402, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-28 02:19:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(403, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-28 02:19:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(404, 1, 'Property', 'save_property', 'http://localhost/mcg/Property/save_property', '2020-09-28 02:19:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(405, 1, 'Property', 'manage_properties', 'http://localhost/mcg/Property/manage_properties', '2020-09-28 02:19:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(406, 1, 'Property', 'add_property', 'http://localhost/mcg/Property/add_property', '2020-09-28 02:19:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(407, 1, 'Dashboard', 'index', 'http://localhost/mcg/Dashboard', '2020-10-05 02:51:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(408, 1, 'activity_logs', 'get_logs', 'http://localhost/mcg/activity_logs/get_logs', '2020-10-05 02:52:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(409, 1, 'login', 'index', 'http://localhost/mcg/', '2020-10-05 02:52:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(410, 1, 'activity_logs', 'get_logs', 'http://localhost/mcg/activity_logs/get_logs', '2020-10-05 02:52:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(411, 1, 'Dashboard', 'index', 'http://localhost/mcg/dashboard', '2020-10-05 02:55:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(412, 1, 'Menus', 'add_menu', 'http://localhost/mcg/menus/add', '2020-10-05 02:56:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(413, 1, 'Menus', 'add_menu', 'http://localhost/mcg/menus/add', '2020-10-05 02:56:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(414, 1, 'Dashboard', 'logout', 'http://localhost/mcg/Dashboard/logout', '2020-10-05 02:56:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(415, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-05 03:19:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(416, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-05 03:19:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(417, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-05 03:19:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(418, 1, 'activity_logs', 'get_logs', 'http://localhost/kimberly/activity_logs/get_logs', '2020-10-05 03:20:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(419, 1, 'Dashboard', 'logout', 'http://localhost/kimberly/Dashboard/logout', '2020-10-05 03:20:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(420, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-05 03:23:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(421, 1, 'Dashboard', 'logout', 'http://localhost/kimberly/Dashboard/logout', '2020-10-05 03:25:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(422, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:13:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(423, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:14:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(424, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:14:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(425, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:14:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(426, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:15:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(427, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:15:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(428, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:16:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(429, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:17:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(430, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:18:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(431, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:18:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(432, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:18:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(433, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:21:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(434, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:23:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(435, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:23:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(436, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:24:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(437, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:25:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(438, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:25:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(439, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:26:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(440, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:29:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(441, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:30:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(442, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:32:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(443, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:33:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(444, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:33:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(445, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:40:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(446, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:41:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(447, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:47:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(448, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:47:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(449, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:48:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(450, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:49:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(451, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:49:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(452, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:49:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(453, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:50:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(454, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:50:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(455, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:50:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(456, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:50:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(457, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:51:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(458, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(459, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(460, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(461, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(462, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(463, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(464, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(465, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:52:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(466, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 04:53:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(467, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 05:39:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(468, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 05:40:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(469, 1, 'login', 'index', 'http://localhost/kimberly/', '2020-10-05 05:40:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(470, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-05 05:40:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(471, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-05 05:40:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(472, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/menus/manage', '2020-10-05 05:40:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(473, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-05 05:41:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(474, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-05 05:48:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(475, 1, 'Settings', 'company_information', 'http://localhost/kimberly/Settings/company_information', '2020-10-05 05:49:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(476, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:49:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(477, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:50:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(478, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:50:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(479, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:50:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(480, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:51:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(481, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:51:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(482, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:51:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(483, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:51:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(484, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:51:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(485, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:52:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(486, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:52:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(487, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:57:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(488, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:58:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(489, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 05:58:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(490, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:01:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(491, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:02:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(492, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:03:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(493, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:04:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(494, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:04:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(495, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:06:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(496, 1, 'Settings', 'update_company_info', 'http://localhost/kimberly/Settings/update_company_info', '2020-10-05 06:06:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(497, 1, 'Settings', 'update_company_info', 'http://localhost/kimberly/Settings/update_company_info', '2020-10-05 06:06:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(498, 1, 'Settings', 'update_company_info', 'http://localhost/kimberly/Settings/update_company_info', '2020-10-05 06:06:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(499, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:06:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(500, 1, 'Settings', 'update_company_info', 'http://localhost/kimberly/Settings/update_company_info', '2020-10-05 06:08:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(501, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:08:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(502, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-05 06:10:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(503, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:11:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(504, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:12:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(505, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:13:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(506, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:15:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(507, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:16:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(508, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:16:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(509, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:19:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(510, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:23:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(511, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:24:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(512, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:27:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(513, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:27:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(514, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:28:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(515, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:28:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(516, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:29:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(517, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:29:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(518, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:29:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(519, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:29:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(520, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:30:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(521, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:30:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(522, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:30:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(523, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:31:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(524, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:31:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(525, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:32:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(526, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:32:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(527, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:33:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(528, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:33:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(529, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(530, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(531, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(532, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:34:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(533, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(534, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:34:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(535, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(536, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:34:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(537, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(538, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:34:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(539, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:34:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(540, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:34:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(541, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-05 06:35:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(542, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-05 06:35:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(543, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-06 22:14:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(544, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-06 22:20:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(545, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-06 22:20:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(546, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-06 22:20:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(547, 1, 'Dashboard', 'logout', 'http://localhost/kimberly/Dashboard/logout', '2020-10-06 22:26:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(548, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-07 01:38:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(549, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-07 01:39:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(550, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-07 01:39:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(551, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-07 01:39:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(552, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-07 01:39:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(553, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-07 01:39:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(554, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-07 02:10:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(555, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-07 02:11:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(556, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-07 02:12:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(557, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-07 04:06:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(558, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-07 12:36:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(559, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-07 12:36:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(560, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-07 12:38:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(561, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-08 01:28:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(562, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-08 01:32:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(563, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-08 01:32:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(564, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-08 01:34:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(565, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-08 01:34:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(566, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-08 01:35:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(567, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-09 03:18:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(568, 1, 'Settings', 'company_info', 'http://localhost/kimberly/Settings/company_info', '2020-10-09 03:18:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(569, 1, 'Settings', 'smtp_configuration', 'http://localhost/kimberly/Settings/smtp_configuration', '2020-10-09 03:18:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(570, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:18:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(571, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:25:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(572, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:26:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(573, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:35:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(574, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:35:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(575, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:35:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(576, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:36:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(577, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:36:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(578, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:42:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(579, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:50:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(580, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:52:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(581, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:55:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(582, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:56:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(583, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:56:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(584, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:57:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(585, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 03:57:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(586, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-09 03:59:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(587, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:02:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(588, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:02:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(589, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:04:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(590, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:04:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(591, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:04:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(592, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:07:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(593, 1, 'Settings', 'save_smtp_setting', 'http://localhost/kimberly/Settings/save_smtp_setting', '2020-10-09 04:08:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(594, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:08:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(595, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-09 04:08:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(596, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-09 04:08:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(597, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-09 04:09:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(598, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-09 04:10:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(599, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-09 04:10:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(600, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-09 04:10:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(601, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-09 21:26:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(602, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/menus/manage', '2020-10-09 21:26:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(603, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-10 04:04:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(604, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:04:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(605, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:06:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(606, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:07:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(607, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:08:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(608, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:08:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(609, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:15:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(610, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:15:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(611, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:16:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(612, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-10 04:17:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(613, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-12 12:13:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(614, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-12 12:13:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(615, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:13:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(616, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:18:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(617, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-12 12:18:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(618, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-12 12:19:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(619, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-12 12:24:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(620, 1, 'Menus', 'save_menu_route', 'http://localhost/kimberly/Menus/save_menu_route', '2020-10-12 12:24:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(621, 1, 'Menus', 'save_menu_route', 'http://localhost/kimberly/Menus/save_menu_route', '2020-10-12 12:25:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(622, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:25:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(623, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:26:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(624, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:26:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(625, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-12 12:26:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(626, 1, 'Menus', 'save_menu_route', 'http://localhost/kimberly/Menus/save_menu_route', '2020-10-12 12:26:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(627, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:26:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(628, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:28:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(629, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:29:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(630, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:29:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(631, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:30:00', '::1', 'Firefox', 'Windows 10', 'Computer'),
(632, 1, 'menus', 'add_menu_route', 'http://localhost/kimberly/menus/add_menu_route', '2020-10-12 12:30:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(633, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:30:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(634, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:36:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(635, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/1', '2020-10-12 12:36:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(636, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:36:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(637, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/2', '2020-10-12 12:36:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(638, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:36:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(639, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:39:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(640, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/1', '2020-10-12 12:39:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(641, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/1', '2020-10-12 12:40:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(642, 1, 'Menus', 'save_menu_route', 'http://localhost/kimberly/Menus/save_menu_route', '2020-10-12 12:44:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(643, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:44:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(644, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:44:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(645, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/3', '2020-10-12 12:44:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(646, 1, 'Menus', 'save_edit_menu_route', 'http://localhost/kimberly/Menus/save_edit_menu_route', '2020-10-12 12:44:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(647, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/3', '2020-10-12 12:45:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(648, 1, 'Menus', 'save_edit_menu_route', 'http://localhost/kimberly/Menus/save_edit_menu_route', '2020-10-12 12:45:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(649, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:45:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(650, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:46:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(651, 1, 'Menus', 'edit_menu_route', 'http://localhost/kimberly/Menus/edit_menu_route/3', '2020-10-12 12:46:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(652, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 12:46:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(653, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-12 12:46:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(654, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-12 13:09:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(655, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-12 13:13:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(656, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-14 23:33:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(657, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:33:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(658, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:36:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(659, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:44:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(660, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:46:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(661, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-14 23:46:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(662, 1, 'Menus', 'menus_routes', 'http://localhost/kimberly/Menus/menus_routes', '2020-10-14 23:49:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(663, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:49:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(664, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:50:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(665, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:50:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(666, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:51:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(667, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:52:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(668, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:52:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(669, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:52:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(670, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:54:24', '::1', 'Firefox', 'Windows 10', 'Computer');
INSERT INTO `activity_logs` (`log_id`, `user_id`, `action_controller`, `action_method`, `action_url`, `date_time`, `ip`, `browser`, `os`, `device`) VALUES
(671, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:55:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(672, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:55:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(673, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:55:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(674, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:56:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(675, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:56:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(676, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:56:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(677, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:56:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(678, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:56:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(679, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-14 23:56:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(680, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-14 23:57:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(681, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:57:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(682, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:57:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(683, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-14 23:58:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(684, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-15 00:00:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(685, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:00:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(686, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-15 00:00:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(687, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:00:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(688, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:01:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(689, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:01:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(690, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:01:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(691, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:01:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(692, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:04:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(693, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:04:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(694, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:05:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(695, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:05:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(696, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:06:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(697, 1, 'Users', 'save_group', 'http://localhost/kimberly/Users/save_group', '2020-10-15 00:06:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(698, 1, 'Users', 'save_group', 'http://localhost/kimberly/Users/save_group', '2020-10-15 00:06:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(699, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:06:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(700, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:07:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(701, 1, 'Users', 'add_group', 'http://localhost/kimberly/Users/add_group', '2020-10-15 00:07:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(702, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:07:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(703, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:08:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(704, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:08:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(705, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:09:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(706, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:11:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(707, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group', '2020-10-15 00:12:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(708, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group', '2020-10-15 00:12:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(709, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:16:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(710, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:16:59', '::1', 'Firefox', 'Windows 10', 'Computer'),
(711, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group/2', '2020-10-15 00:17:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(712, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group/2', '2020-10-15 00:17:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(713, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:17:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(714, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group/3', '2020-10-15 00:17:29', '::1', 'Firefox', 'Windows 10', 'Computer'),
(715, 1, 'Users', 'edit_group', 'http://localhost/kimberly/Users/edit_group/3', '2020-10-15 00:19:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(716, 1, 'Users', 'save_edit_group', 'http://localhost/kimberly/Users/save_edit_group', '2020-10-15 00:19:17', '::1', 'Firefox', 'Windows 10', 'Computer'),
(717, 1, 'Users', 'save_edit_group', 'http://localhost/kimberly/Users/save_edit_group', '2020-10-15 00:19:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(718, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:19:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(719, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:22:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(720, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:22:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(721, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:23:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(722, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:24:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(723, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 00:24:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(724, 1, 'Dashboard', 'logout', 'http://localhost/kimberly/Dashboard/logout', '2020-10-15 00:26:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(725, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-15 01:52:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(726, 1, 'Dashboard', 'index', 'http://localhost/kimberly/Dashboard', '2020-10-15 02:01:52', '::1', 'Firefox', 'Windows 10', 'Computer'),
(727, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:01:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(728, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:03:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(729, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:03:43', '::1', 'Firefox', 'Windows 10', 'Computer'),
(730, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:11:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(731, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:11:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(732, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:12:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(733, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:13:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(734, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:13:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(735, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:13:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(736, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:13:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(737, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:13:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(738, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 02:13:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(739, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:14:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(740, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:15:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(741, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:19:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(742, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 02:19:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(743, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 02:19:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(744, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 02:19:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(745, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 02:19:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(746, 1, 'Users', 'save_permission', 'http://localhost/kimberly/Users/save_permission', '2020-10-15 02:19:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(747, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:19:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(748, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 02:19:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(749, 1, 'Users', 'save_permission', 'http://localhost/kimberly/Users/save_permission', '2020-10-15 02:19:39', '::1', 'Firefox', 'Windows 10', 'Computer'),
(750, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 02:19:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(751, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 03:06:22', '::1', 'Firefox', 'Windows 10', 'Computer'),
(752, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/menus/manage', '2020-10-15 03:06:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(753, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-15 03:06:55', '::1', 'Firefox', 'Windows 10', 'Computer'),
(754, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-15 03:07:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(755, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-15 03:07:14', '::1', 'Firefox', 'Windows 10', 'Computer'),
(756, 1, 'Menus', 'add_menu', 'http://localhost/kimberly/menus/add', '2020-10-15 03:07:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(757, 1, 'Menus', 'save_menu', 'http://localhost/kimberly/Menus/save_menu', '2020-10-15 03:07:42', '::1', 'Firefox', 'Windows 10', 'Computer'),
(758, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/Menus/manage_menus', '2020-10-15 03:07:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(759, 1, 'Users', 'manage_user_groups', 'http://localhost/kimberly/Users/manage_user_groups', '2020-10-15 03:08:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(760, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 03:08:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(761, 1, 'Users', 'get_child_menus', 'http://localhost/kimberly/Users/get_child_menus', '2020-10-15 03:08:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(762, 1, 'Users', 'save_permission', 'http://localhost/kimberly/Users/save_permission', '2020-10-15 03:08:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(763, 1, 'Users', 'group_permission', 'http://localhost/kimberly/group/group_permission/1', '2020-10-15 03:08:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(764, 1, 'Menus', 'manage_menus', 'http://localhost/kimberly/menus/manage', '2020-10-15 03:08:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(765, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:17:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(766, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:17:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(767, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:18:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(768, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:18:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(769, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:19:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(770, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:19:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(771, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:20:04', '::1', 'Firefox', 'Windows 10', 'Computer'),
(772, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:20:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(773, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:20:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(774, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:20:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(775, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:25:44', '::1', 'Firefox', 'Windows 10', 'Computer'),
(776, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:25:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(777, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:26:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(778, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:26:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(779, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:26:33', '::1', 'Firefox', 'Windows 10', 'Computer'),
(780, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:26:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(781, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:26:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(782, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:26:54', '::1', 'Firefox', 'Windows 10', 'Computer'),
(783, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:27:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(784, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:27:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(785, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:40:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(786, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:40:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(787, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:41:01', '::1', 'Firefox', 'Windows 10', 'Computer'),
(788, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:41:30', '::1', 'Firefox', 'Windows 10', 'Computer'),
(789, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:41:49', '::1', 'Firefox', 'Windows 10', 'Computer'),
(790, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:41:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(791, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:42:08', '::1', 'Firefox', 'Windows 10', 'Computer'),
(792, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:42:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(793, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:45:24', '::1', 'Firefox', 'Windows 10', 'Computer'),
(794, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:45:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(795, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:45:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(796, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:45:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(797, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:46:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(798, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:46:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(799, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:46:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(800, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:48:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(801, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:48:18', '::1', 'Firefox', 'Windows 10', 'Computer'),
(802, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:48:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(803, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:48:57', '::1', 'Firefox', 'Windows 10', 'Computer'),
(804, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:49:05', '::1', 'Firefox', 'Windows 10', 'Computer'),
(805, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:49:16', '::1', 'Firefox', 'Windows 10', 'Computer'),
(806, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:51:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(807, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:51:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(808, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:51:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(809, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:52:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(810, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:52:51', '::1', 'Firefox', 'Windows 10', 'Computer'),
(811, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:52:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(812, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:53:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(813, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:53:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(814, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:53:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(815, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:53:46', '::1', 'Firefox', 'Windows 10', 'Computer'),
(816, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:53:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(817, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:55:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(818, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:55:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(819, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:55:35', '::1', 'Firefox', 'Windows 10', 'Computer'),
(820, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:55:40', '::1', 'Firefox', 'Windows 10', 'Computer'),
(821, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:55:47', '::1', 'Firefox', 'Windows 10', 'Computer'),
(822, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:55:53', '::1', 'Firefox', 'Windows 10', 'Computer'),
(823, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:56:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(824, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:56:15', '::1', 'Firefox', 'Windows 10', 'Computer'),
(825, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:56:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(826, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:58:26', '::1', 'Firefox', 'Windows 10', 'Computer'),
(827, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:58:36', '::1', 'Firefox', 'Windows 10', 'Computer'),
(828, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:58:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(829, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:58:48', '::1', 'Firefox', 'Windows 10', 'Computer'),
(830, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:58:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(831, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:59:02', '::1', 'Firefox', 'Windows 10', 'Computer'),
(832, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 03:59:10', '::1', 'Firefox', 'Windows 10', 'Computer'),
(833, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:59:12', '::1', 'Firefox', 'Windows 10', 'Computer'),
(834, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 03:59:27', '::1', 'Firefox', 'Windows 10', 'Computer'),
(835, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:00:37', '::1', 'Firefox', 'Windows 10', 'Computer'),
(836, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:00:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(837, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:00:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(838, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:01:06', '::1', 'Firefox', 'Windows 10', 'Computer'),
(839, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:03:13', '::1', 'Firefox', 'Windows 10', 'Computer'),
(840, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:03:20', '::1', 'Firefox', 'Windows 10', 'Computer'),
(841, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:03:25', '::1', 'Firefox', 'Windows 10', 'Computer'),
(842, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:03:38', '::1', 'Firefox', 'Windows 10', 'Computer'),
(843, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:03:50', '::1', 'Firefox', 'Windows 10', 'Computer'),
(844, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:04:31', '::1', 'Firefox', 'Windows 10', 'Computer'),
(845, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:04:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(846, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:04:41', '::1', 'Firefox', 'Windows 10', 'Computer'),
(847, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:04:45', '::1', 'Firefox', 'Windows 10', 'Computer'),
(848, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:04:56', '::1', 'Firefox', 'Windows 10', 'Computer'),
(849, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:05:03', '::1', 'Firefox', 'Windows 10', 'Computer'),
(850, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:05:58', '::1', 'Firefox', 'Windows 10', 'Computer'),
(851, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:06:09', '::1', 'Firefox', 'Windows 10', 'Computer'),
(852, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:07:11', '::1', 'Firefox', 'Windows 10', 'Computer'),
(853, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:07:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(854, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:07:23', '::1', 'Firefox', 'Windows 10', 'Computer'),
(855, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:07:28', '::1', 'Firefox', 'Windows 10', 'Computer'),
(856, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:07:32', '::1', 'Firefox', 'Windows 10', 'Computer'),
(857, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:08:07', '::1', 'Firefox', 'Windows 10', 'Computer'),
(858, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:08:19', '::1', 'Firefox', 'Windows 10', 'Computer'),
(859, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:08:21', '::1', 'Firefox', 'Windows 10', 'Computer'),
(860, 1, 'Settings', 'update_login_settings', 'http://localhost/kimberly/Settings/update_login_settings', '2020-10-15 04:08:34', '::1', 'Firefox', 'Windows 10', 'Computer'),
(861, 1, 'Settings', 'login_settings', 'http://localhost/kimberly/Settings/login_settings', '2020-10-15 04:08:37', '::1', 'Firefox', 'Windows 10', 'Computer');

-- --------------------------------------------------------

--
-- Table structure for table `company_information`
--

CREATE TABLE `company_information` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `website` varchar(100) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_information`
--

INSERT INTO `company_information` (`id`, `name`, `email`, `contact`, `address`, `website`, `logo`, `date_time`) VALUES
(1, 'kimberly Transport', 'info@kimberlytransport.com', '604.521.9315', '669 Derwent Way Delta, BC V3M 5P7', 'kimberlytransport.com', NULL, '2018-06-12 22:18:06');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

CREATE TABLE `email_settings` (
  `id` int(1) NOT NULL,
  `host` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `port` int(3) NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `sent_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sent_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `reply_email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `reply_title` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `host`, `port`, `email`, `password`, `sent_email`, `sent_title`, `reply_email`, `reply_title`) VALUES
(1, 'mail.technologicx.com', 465, 'admin@technologicx.com', 'saadi123*', 'admin@technologicx.com', 'Kimberly Transport', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_login_attempts`
--

CREATE TABLE `failed_login_attempts` (
  `fla_id` int(11) NOT NULL,
  `user_email` varchar(55) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_otp_attempts`
--

CREATE TABLE `failed_otp_attempts` (
  `foa_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `label` varchar(25) DEFAULT NULL,
  `class` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `label`, `class`) VALUES
(1, 'Th', 'fa-th'),
(2, 'Pie Chart', 'fa-chart-pie');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` tinyint(1) NOT NULL,
  `type` varchar(35) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` tinyint(2) DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `type`, `created_at`, `created_by`, `update_at`, `update_by`) VALUES
(1, 'Admin', '2018-08-15 03:33:17', 1, '2018-08-15', NULL),
(2, 'User', '2018-08-15 04:54:36', 1, '2018-08-16', NULL),
(3, 'Managerzz', '2020-10-15 00:06:42', 1, '2020-10-15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_otp`
--

CREATE TABLE `login_otp` (
  `login_otp_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(55) DEFAULT NULL,
  `otp_pin` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '''1=active'',''0=expired'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_settings`
--

CREATE TABLE `login_settings` (
  `login_setting_id` int(11) NOT NULL,
  `two_factor_auth` enum('1','0') NOT NULL DEFAULT '1' COMMENT '"1 = enabled","0 = disabled"',
  `failed_login_limit` tinyint(2) DEFAULT NULL,
  `otp_expire_time` tinyint(2) DEFAULT NULL COMMENT '"Value in minutes"',
  `failed_otp_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_settings`
--

INSERT INTO `login_settings` (`login_setting_id`, `two_factor_auth`, `failed_login_limit`, `otp_expire_time`, `failed_otp_limit`) VALUES
(1, '1', 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(3) NOT NULL,
  `parent` int(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `class` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `display_order` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent`, `name`, `class`, `url`, `display_order`) VALUES
(1, 0, 'Courses', 'fa fa-book', '', 1),
(2, 0, 'Reports', 'fa-chart-pie', '', 1),
(3, 2, 'Daily report', '', 'users/manage', 0),
(4, 0, 'Test', 'fa-th', '', 2),
(5, 4, 'test child', '', 'inventory/manage_inventory', 0),
(6, 0, 'Test 2', 'fa-chart-pie', '', 3),
(7, 6, 'test2 child', '', 'report/daily_report', 0);

-- --------------------------------------------------------

--
-- Table structure for table `menus_routes`
--

CREATE TABLE `menus_routes` (
  `route_id` int(11) NOT NULL,
  `label` varchar(55) DEFAULT NULL,
  `route` text,
  `added_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus_routes`
--

INSERT INTO `menus_routes` (`route_id`, `label`, `route`, `added_at`) VALUES
(1, 'User management', 'users/manage', '2020-10-12 12:25:13'),
(2, 'Inventory', 'inventory/manage_inventory', '2020-10-12 12:26:45'),
(3, 'Reportings', 'report/daily_report', '2020-10-12 12:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(2) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `status` enum('Active','suspend','Blocked') NOT NULL DEFAULT 'Active',
  `added_by` int(11) DEFAULT NULL,
  `added_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_by` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `hash`, `status`, `added_by`, `added_at`, `update_by`, `update_at`) VALUES
(1, 'Syed Asad', 'cyberasad09@gmail.com', 'fca7eb1a8150b15149a6fad6a76355bc', 1, '51fcfc2182eaf20ac30386949cee5331', 'Active', NULL, '2019-12-20 21:19:44', NULL, NULL),
(2, 'SM Saad', 'saad@gmail.com', 'ee4513854ef1929476a62666a5d44396', 1, '35223dcfff3e27baeab2fe5809468d3c', 'Active', NULL, '2019-12-20 21:53:17', 1, '2019-12-26 21:28:59'),
(3, 'Saadi Linux', 'smasad612@gmail.com', 'ee4513854ef1929476a62666a5d44396', 2, '739aff016ff5079de4396eef1a6419aa', 'Active', 1, '2019-12-26 20:13:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `user_ip` varchar(25) DEFAULT NULL,
  `user_browser` varchar(30) DEFAULT NULL,
  `user_os` varchar(30) DEFAULT NULL,
  `user_device` varchar(25) DEFAULT NULL,
  `login_at` varchar(25) DEFAULT NULL,
  `logout_at` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`log_id`, `user_id`, `session_id`, `user_ip`, `user_browser`, `user_os`, `user_device`, `login_at`, `logout_at`) VALUES
(1, 1, '377dacpfinuq8qrf3tj3j0jmi5r02tsq', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-20 10:20:03pm', '2019-12-20 10:20:19pm'),
(2, 2, '8ql3c226j3kp8d0o8ofcjthff5l6fiqm', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-20 10:54:11pm', '2019-12-20 10:54:23pm'),
(3, 1, 'hoopmj7v7kkoea36rr8r0f8i5ae6idmq', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-20 10:58:47pm', NULL),
(4, 1, 'ana7e079gs3qadd0772k0p4efmrchdhk', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-21 09:51:42pm', NULL),
(5, 1, 'fu2hir6tci3ssr7n133q8nsqes97dupt', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-23 10:41:58pm', NULL),
(6, 1, 'a87i5qvov0e7ttfcc9d8a6a4o85vra0q', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-25 06:51:38pm', NULL),
(7, 1, 'snceepv173e7f0gcs2e35s495670unvv', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-26 08:21:30pm', NULL),
(8, 3, 'ol6v06s0bti284qvleq3cng9ud562gdn', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-26 09:14:23pm', NULL),
(9, 1, '42vp5cd2241samnt0djf763cvahrr7aq', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-26 09:28:32pm', NULL),
(10, 3, 'rk0i0l6uh89tnjqac7f5n51c2mpok6cm', '::1', 'Chrome', 'Windows 10', 'Computer', '2019-12-26 09:33:18pm', NULL),
(11, 1, 'clhcsj8jll18olm6351b8ru5sipid59c', '::1', 'Firefox', 'Windows 10', 'Computer', '2019-12-26 11:24:10pm', '2019-12-26 11:24:26pm'),
(12, 1, 'vrgtj0n3avp3nemmvcvbnn185jhuvlmr', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 12:06:01am', '2020-05-06 12:07:02am'),
(13, 1, 'ebheu6mvcelncif7r7vo2p4jda86m0om', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 12:26:07am', NULL),
(14, 1, 'ebheu6mvcelncif7r7vo2p4jda86m0om', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 12:26:23am', NULL),
(15, 1, '7ua7qctco2u4efjci3sds4s3vauevvp8', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 12:52:32am', '2020-05-06 12:54:20am'),
(16, 1, 'sm0vsk0d6d4qlt2ej2kl3rmcq9cs5imc', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 12:54:33am', NULL),
(17, 1, 'ph4khcsk0k7tpv74jmudbv2oh2dur8js', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 04:34:14am', NULL),
(18, 1, '5ld8u49gq4ouk4pujqalj1iqlrcajgut', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 03:31:57pm', '2020-05-06 03:32:08pm'),
(19, 1, 'dj9nem8tvbb2sipgk9njtgednr3g4445', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-06 03:41:50pm', NULL),
(20, 1, '09kpgmn9a5699uvtlt15hcesk1i3rfj9', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 01:36:39am', NULL),
(21, 1, 'mioe5ms553n1c9sts7gclrudoq93kgl7', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 11:09:55am', NULL),
(22, 1, '74patmhulrvs27puijc4ej7g9g33kt0o', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 12:21:38pm', '2020-05-07 12:23:24pm'),
(23, 1, '2o4a0bfo158nshvi8ci8c8uda74eiaq8', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 12:23:38pm', '2020-05-07 12:24:34pm'),
(24, 1, '5o5s9dbsjsbtkfursgc563283f87pbrj', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 12:27:18pm', '2020-05-07 12:27:59pm'),
(25, 1, 'iquvtbiq3jd7da09hh5lqda9pkio9sm8', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-07 06:06:18pm', NULL),
(26, 1, 'aaqtqf3ffq8r0tc71sq0iqnnugvur5l3', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-07 11:26:06pm', NULL),
(27, 1, 'somsd8i3pkmm7sgkc30a4ldui29d5m56', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-09 12:21:45am', NULL),
(28, 1, 'o29vmhcu36r09g3f9r48ai5h0t28q9gg', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-09 05:34:06am', NULL),
(29, 1, 'sprk152rnspcpq8ur426ieatj5b5jrq3', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-09 03:06:10pm', NULL),
(30, 1, 'kf8140v6tbf5q50q5lbub47p139lgf86', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-09 11:24:04pm', NULL),
(31, 1, 'oij6vd4sns3eb4cp35jcv2iqnknfkkpu', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-10 01:31:19am', NULL),
(32, 1, 'qbvg51ihtcsrqvj4tsjs3nnoirjko6av', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-10 03:41:35pm', NULL),
(33, 1, 'invsp6b8jr7f35jk7mg0il6m0q35p6ch', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-11 06:02:41am', NULL),
(34, 1, 'fjgah76ut01lnbvkfhq0b2gga7bk8kcu', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-11 11:04:45pm', NULL),
(35, 1, 'ndmeklc2fs3i8lopdr1ffm0gth8528d4', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-11 11:20:48pm', NULL),
(36, 1, 'g6j0hgrng1d0l9e94vk37su8l6ao7raq', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-12 12:39:16am', NULL),
(37, 1, 'ud13sr8ah0vn8itf46c41uk8dqqucabm', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-13 05:28:41am', NULL),
(38, 1, '45q92lldr1m095mrt593nbc90qpr37s0', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-13 04:08:55pm', NULL),
(39, 1, '7d8om8pc0fe28hc2n13u2m22rqm9bjhj', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-05-16 09:38:06pm', NULL),
(40, 1, 'v9tefnhmrdtph708nandd5ha9rkcuu3v', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-20 04:14:45am', NULL),
(41, 1, 'nsrpu3skr714vg0oe5q55p32cskqbdre', '::1', 'Chrome', 'Windows 10', 'Computer', '2020-05-27 12:41:02am', NULL),
(42, 1, '7v0b791bjhbo6htq1301qcerd733744j', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-07-02 12:28:53am', NULL),
(43, 1, '2faais4enjd4jrl8chm2qeas6ii0mi70', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-07-15 11:02:19pm', NULL),
(44, 1, 'as2birppbd07crmop4osrja5mta3scid', '127.0.0.1', 'Firefox', 'Windows 10', 'Computer', '2020-09-09 11:37:56am', '2020-09-09 11:39:03am'),
(45, 1, 'sebm94vp0ecm0431ejk67in4kmhna210', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-09-09 08:23:53pm', NULL),
(46, 1, 'bb9heu8b09nueao486nmkt5jg2960h4c', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-09-25 04:33:12am', NULL),
(47, 1, 'pl3ut7p3alarpnbaji9f3q065bt3ilb0', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-09-25 06:00:50am', NULL),
(48, 1, 'hlsl8bm65rnldjsjra7cqtbg8m8mhdt1', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-09-26 04:06:01am', NULL),
(49, 1, 'ok0prs8sufngur52dfphb6qqaus3hntf', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-09-28 02:03:13am', NULL),
(50, 1, '2jv4fbklkuc9c6kj6gbgadqf9kolltc0', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 02:51:26am', NULL),
(51, 1, '21e487sf3vkmlk8invkm1sic2u2np0ad', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 03:19:02am', '2020-10-05 03:20:12am'),
(52, 1, 'b9vstjmv5sut1vgqa1nvjd56i7ud1s22', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 03:23:50am', NULL),
(53, 1, 'qifvtrgjdnemj5j6mf6octvff5qhkhq5', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 04:12:23am', NULL),
(54, 1, 'qifvtrgjdnemj5j6mf6octvff5qhkhq5', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 04:13:05am', NULL),
(55, 1, 'qifvtrgjdnemj5j6mf6octvff5qhkhq5', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 04:14:18am', NULL),
(56, 1, 'qifvtrgjdnemj5j6mf6octvff5qhkhq5', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 04:14:28am', NULL),
(57, 1, 'ah5bbo6c9m52hlkb6n5f9n1ajs9smfbi', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-05 05:40:14am', NULL),
(58, 1, 'gqkgq2l4pk0o37l724kjtp3aktr98n5g', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-06 10:14:31pm', NULL),
(59, 1, 'palercb60rnkehvnfosrrtkf5c3mg0s3', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-07 01:38:33am', NULL),
(60, 1, 'av07k8bjqenki9hou7qai692435q3ob4', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-07 12:36:09pm', NULL),
(61, 1, 'gq61ids6qmogq0930tapbmpu7hbo2ubi', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-08 01:28:17am', NULL),
(62, 1, 'upb2kgjsqeip15guq4iiqcjb5mjdcsoq', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-09 03:18:25am', NULL),
(63, 1, '81uqcdtfa2aqovo5ogjothp5ne9n07pm', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-09 09:26:29pm', NULL),
(64, 1, 'a46j9k8cu4eti1jgtc7l853fghdca7o6', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-10 04:04:38am', NULL),
(65, 1, 'v1rscid2c86eqlr0d8oibncgkkon0mbe', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-12 12:13:20pm', NULL),
(66, 1, 't7ub8qrvhgf9as0plqgl1dpma1i7v6s5', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-14 11:33:33pm', NULL),
(67, 1, '19p1k8188gn44a7sr17ot62lprcj6l9e', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-15 01:52:36am', NULL),
(68, 1, 'ttiv4oql3fp90ku7adsi4v18g1v1bhse', '::1', 'Firefox', 'Windows 10', 'Computer', '2020-10-15 02:01:50am', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `per_id` int(11) NOT NULL,
  `group_id` tinyint(2) NOT NULL,
  `main_menu_id` int(11) DEFAULT NULL,
  `permission` enum('NO','YES') DEFAULT NULL,
  `sub_menu_id` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `added_by` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`per_id`, `group_id`, `main_menu_id`, `permission`, `sub_menu_id`, `date_time`, `added_by`) VALUES
(1, 1, 2, 'YES', 3, '2020-10-15 02:19:23', 'Syed Asad'),
(2, 1, 4, 'YES', 5, '2020-10-15 02:19:39', 'Syed Asad'),
(3, 1, 6, 'YES', 7, '2020-10-15 03:08:10', 'Syed Asad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `company_information`
--
ALTER TABLE `company_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_settings`
--
ALTER TABLE `email_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_login_attempts`
--
ALTER TABLE `failed_login_attempts`
  ADD PRIMARY KEY (`fla_id`);

--
-- Indexes for table `failed_otp_attempts`
--
ALTER TABLE `failed_otp_attempts`
  ADD PRIMARY KEY (`foa_id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `login_otp`
--
ALTER TABLE `login_otp`
  ADD PRIMARY KEY (`login_otp_id`);

--
-- Indexes for table `login_settings`
--
ALTER TABLE `login_settings`
  ADD PRIMARY KEY (`login_setting_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_routes`
--
ALTER TABLE `menus_routes`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`per_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `log_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `company_information`
--
ALTER TABLE `company_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_settings`
--
ALTER TABLE `email_settings`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_login_attempts`
--
ALTER TABLE `failed_login_attempts`
  MODIFY `fla_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_otp_attempts`
--
ALTER TABLE `failed_otp_attempts`
  MODIFY `foa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_otp`
--
ALTER TABLE `login_otp`
  MODIFY `login_otp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_settings`
--
ALTER TABLE `login_settings`
  MODIFY `login_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus_routes`
--
ALTER TABLE `menus_routes`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
