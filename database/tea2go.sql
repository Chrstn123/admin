-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tea2go
CREATE DATABASE IF NOT EXISTS `tea2go` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tea2go`;

-- Dumping structure for table tea2go.add_ons
CREATE TABLE IF NOT EXISTS `add_ons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.add_ons: ~0 rows (approximately)

-- Dumping structure for table tea2go.admins
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint NOT NULL DEFAULT '2',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.admins: ~3 rows (approximately)
INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `fcm_token`, `admin_role_id`, `status`) VALUES
	(1, 'admin', NULL, '09273397377', 'admin@mail.com', '2022-12-03-638ae299884da.png', '$2y$10$r9C3uVDOvYjNWhOpfOJmGunM8MwOj9T800ZwNQrSOW8VsH2AvhUzG', 'UCQ4LKq7sGd52TMmersZVJj8EHtYBkDN7BEMPsxsFzDzfl2vs6kXlKYzBQ5S', '2022-11-26 07:28:28', '2022-12-03 13:46:01', NULL, 1, 1),
	(2, 'Jonel', NULL, '1342525252', 'jonel@gmail.com', '2022-11-26-63816c8ace7f6.png', '$2y$10$/lii77hUTtq5uDuei9YX2eTLYUla2yXi4ykhRA/4hvrruwz1noely', NULL, '2022-11-26 07:31:54', '2022-11-26 07:31:54', NULL, 2, 1),
	(3, 'Alyssa Bongolan', NULL, '+639074303654', 'AB@gmail.com', '2023-02-02-63db4d3f6908d.png', '$2y$10$CI2GVibr9P0uhE8OgkBr4Op7TvNxggS2uqKtxlK0ncrs2Q/l8/fY6', NULL, '2023-02-02 13:42:23', '2023-02-02 13:42:23', NULL, 3, 1);

-- Dumping structure for table tea2go.admin_roles
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.admin_roles: ~3 rows (approximately)
INSERT INTO `admin_roles` (`id`, `name`, `module_access`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Master Admin', NULL, 1, '2022-06-07 10:59:59', '2022-06-07 10:59:59'),
	(2, 'Cashier', '["dashboard_management","pos_management"]', 1, '2022-11-26 07:30:47', '2022-11-26 10:47:51'),
	(3, 'Tea Brewer', '["kitchen_management"]', 1, '2023-02-02 13:40:11', '2023-02-02 13:40:11');

-- Dumping structure for table tea2go.attributes
CREATE TABLE IF NOT EXISTS `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.attributes: ~3 rows (approximately)
INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(5, 'Size', '2022-11-26 13:55:46', '2022-11-26 13:55:46'),
	(6, 'Flavor', '2022-11-26 23:25:26', '2022-11-26 23:25:26'),
	(7, 'pcs', '2023-01-13 11:01:53', '2023-01-13 11:01:53');

-- Dumping structure for table tea2go.banners
CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.banners: ~3 rows (approximately)
INSERT INTO `banners` (`id`, `title`, `image`, `product_id`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
	(2, 'Classic Flavors', '2022-12-03-638b4b01d3609.png', NULL, 1, '2022-12-03 21:08:58', '2022-12-03 21:12:35', 1),
	(3, 'Fruit Tea Flavors', '2023-01-11-63be3468f1ccb.png', NULL, 1, '2022-12-03 21:14:31', '2023-01-11 12:00:40', 5),
	(4, 'Premium Flavors', '2022-12-03-638b4e069cefd.png', NULL, 1, '2022-12-03 21:24:22', '2022-12-03 21:24:22', 6);

-- Dumping structure for table tea2go.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restaurant_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `branch_promotion_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coverage` int NOT NULL DEFAULT '1',
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.branches: ~7 rows (approximately)
INSERT INTO `branches` (`id`, `restaurant_id`, `name`, `email`, `password`, `latitude`, `longitude`, `address`, `status`, `branch_promotion_status`, `created_at`, `updated_at`, `coverage`, `remember_token`, `image`) VALUES
	(1, NULL, 'Main', 'newb@gmail.com', '$2y$10$I2DJVDnrGXzkVeEjz9Qov.8elENVruhRtvGThbpFrDKtVHLk31MQW', '16.065853', '120.596976', 'Binalonan, Pangasinan', 1, 0, '2021-02-24 09:45:49', '2022-12-03 13:44:58', 50, NULL, '2022-12-03-638ae25a375f5.png'),
	(10, NULL, 'Yza\'s Tea2Go - Binalonan', 'binalonan@tea2goweb.com', '$2y$10$X6U6xsDEoZs9aDXM.tHwHOGPA3CvoOSQ6ztXxitmgpmebJDOySt/u', '16.065853', '120.596976', 'Binalonan, Pangasinan', 1, 1, '2022-11-26 10:16:58', '2022-12-03 23:00:21', 5, NULL, '2022-12-03-638ae1f6033a4.png'),
	(11, NULL, 'Yza\'s Tea 2Go Urdaneta', 'urdanetaucu@gmail.com', '$2y$10$hPmPZgLJf3wYk.MxjhOWLOZ/dm6Xq3gtJ9oMoJIRRSbhtPo3pBJRm', '154.33546', '95.064', 'XHJ6+9J7, Ucu Drive, Brgy. San Vicente Rd, Urdaneta, Pangasinan', 1, 1, '2022-11-28 20:20:39', '2022-12-03 22:18:42', 6, NULL, '2022-12-03-638ae20f5976f.png'),
	(12, NULL, 'Yza’s Tea 2Go Urdaneta-Central Branch', 'urdanetacentral@gmail.com', '$2y$10$R2aHulU9EU71Nfnsc6U2KOznv3kf8v9fVko.HmC/8I17KuJk0ps92', '193.2345', '94.0922', 'XHG8+7F5, Alexander St, Urdaneta, Pangasinan', 1, 1, '2022-11-28 20:26:36', '2022-12-03 13:44:03', 7, NULL, '2022-12-03-638ae223e0f61.png'),
	(13, NULL, 'Yza\'s Tea 2Go- Sta.Maria', 'stamaria@gmail.com', '$2y$10$k.NDbdyHOut3bpVNgYT5sOze/i0TxGKtrZWnZnCCdyEuYvIeio0Fu', '82903.5', '286191.4', 'Sta.Maria Pangasinan', 1, 1, '2022-12-02 19:44:13', '2022-12-03 13:44:22', 7, NULL, '2022-12-03-638ae236c46cb.png'),
	(14, NULL, 'Yza\'s Tea 2Go - Pozorrubio', 'pozorrubio@gmail.com', '$2y$10$Lut72Mf.NI95KVUEgpNJr.ZCAJKYZ/PO2cO6wLMgRzxvyjHQ.78ky', '13452.09', '32363.69', 'SPA Building, Fenoy St., Poblacion, Pozorrubio, Philippines', 1, 1, '2022-12-03 21:35:39', '2022-12-03 21:35:39', 6, NULL, '2022-12-03-638b50abd1457.png'),
	(15, NULL, 'Yza\'s Tea 2Go - Villasis', 'villasis@gmail.com', '$2y$10$7/bFNllYtc9oB39Eyau4XOVRfAlAXwVczIwDyJOrDDVm47gdpjCk2', '15.905233', '120.550936', 'Stall #84, Bagsakan Market, Poblacion, Villasis, Philippines', 1, 1, '2022-12-03 21:39:06', '2022-12-03 22:20:10', 10, NULL, '2022-12-03-638b517aa67c6.png');

-- Dumping structure for table tea2go.branch_promotions
CREATE TABLE IF NOT EXISTS `branch_promotions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` bigint NOT NULL,
  `promotion_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.branch_promotions: ~0 rows (approximately)

-- Dumping structure for table tea2go.business_settings
CREATE TABLE IF NOT EXISTS `business_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.business_settings: ~75 rows (approximately)
INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'restaurant_open_time', NULL, '2021-01-06 05:55:51', '2021-01-06 05:55:51'),
	(2, 'restaurant_close_time', NULL, NULL, NULL),
	(3, 'restaurant_name', 'Tea 2Go', NULL, NULL),
	(4, 'currency', 'PHP', NULL, NULL),
	(5, 'logo', '2022-12-03-638ae2d6dcac1.png', NULL, NULL),
	(6, 'mail_config', '{"status":"0","name":"Tea2Go App","host":"mail.demo.com","driver":"smtp","port":"587","username":"info@demo.com","email_id":"info@demo.com","encryption":"tls","password":"demo"}', NULL, '2022-11-26 10:30:32'),
	(7, 'delivery_charge', '50', NULL, NULL),
	(8, 'ssl_commerz_payment', '{"status":"0","store_id":null,"store_password":null}', NULL, '2021-07-25 14:38:25'),
	(9, 'paypal', '{"status":"1","paypal_client_id":"Abh_o5ED99ens1HHc3SBWazYvOORXfWywVSqpHVXhaw_CEH4s8l_VQVJt3vXEVqadwSvQv9kftmk3sEo","paypal_secret":"EJnrsQ2uPz_wqrwto8QLJ_xWmx0tbq74a-d-kU2Wubt8o1UfR-bcpfst7rRV9REDa8C0oKvy4aeUI2_L"}', NULL, '2023-02-19 19:38:20'),
	(10, 'stripe', '{"status":"0","api_key":null,"published_key":null}', NULL, '2021-07-25 14:38:57'),
	(11, 'phone', '+639058083245', NULL, NULL),
	(13, 'footer_text', 'copyright Tea2go 2022', NULL, NULL),
	(14, 'address', 'anis laoac Pangasinan', NULL, NULL),
	(15, 'email_address', 'laurianchristinejoy@gmail.com', NULL, NULL),
	(16, 'cash_on_delivery', '{"status":"1"}', NULL, '2021-02-11 18:39:36'),
	(17, 'email_verification', '0', NULL, NULL),
	(18, 'digital_payment', '{"status":"1"}', '2021-01-30 19:38:54', '2023-02-19 11:40:11'),
	(19, 'terms_and_conditions', '<h1>Terms and Condition</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Terms of service are the legal agreements between a service provider and a person who wants to use that service. The person must agree to abide by the terms of service in order to use the offered service. Terms of service can also be merely a disclaimer, especially regarding the use of websites.</li>\r\n</ol>', NULL, '2023-02-02 12:39:26'),
	(20, 'fcm_topic', '', NULL, NULL),
	(21, 'fcm_project_id', '3f34f34', NULL, NULL),
	(22, 'push_notification_key', 'AAAA9psnqlE:APA91bGLyqEMvlYVh4C22cYCb_DESOWOB57c93kf1jJdDz1lNK5dUzNdkasekIqeLbp_qj1ujADuyI4W8kN0Iu-iV4cqM0ap10T0ZIXJ0JY6gdAPE5IqL0kJYDtiaMDXlmPjXsABek52', NULL, NULL),
	(24, 'order_pending_message', '{"status":1,"message":"Your order has been placed successfully."}', NULL, NULL),
	(25, 'order_processing_message', '{"status":1,"message":"Your order is going to the cook"}', NULL, NULL),
	(26, 'out_for_delivery_message', '{"status":1,"message":"Order out for delivery."}', NULL, NULL),
	(27, 'order_delivered_message', '{"status":1,"message":"delivered"}', NULL, NULL),
	(28, 'delivery_boy_assign_message', '{"status":1,"message":"boy assigned"}', NULL, NULL),
	(29, 'delivery_boy_start_message', '{"status":1,"message":"start delivery"}', NULL, NULL),
	(30, 'delivery_boy_delivered_message', '{"status":1,"message":"boy delivered"}', NULL, NULL),
	(32, 'order_confirmation_msg', '{"status":1,"message":"Your order has been confirmed."}', NULL, NULL),
	(33, 'razor_pay', '{"status":"0","razor_key":null,"razor_secret":null}', '2021-02-14 10:15:12', '2021-07-25 14:38:34'),
	(34, 'location_coverage', '{"status":1,"longitude":"91.410747","latitude":"22.986282","coverage":"20"}', NULL, NULL),
	(35, 'minimum_order_value', '50', NULL, NULL),
	(36, 'point_per_currency', '1', NULL, NULL),
	(37, 'internal_point', '{"status":null}', '2021-04-24 01:50:19', '2021-04-24 01:50:19'),
	(38, 'senang_pay', '{"status":"0","secret_key":null,"merchant_id":null}', '2021-04-24 01:58:21', '2021-07-25 14:39:23'),
	(39, 'privacy_policy', '<div class="ql-editor" data-gramm="false" contenteditable="true" spellcheck="false"><p>privacy policy</p></div><grammarly-extension data-grammarly-shadow-root="true" style="position: absolute; top: 0px; left: -1px; pointer-events: none; z-index: auto;" class="cGcvT"></grammarly-extension><div class="ql-clipboard" contenteditable="true" tabindex="-1"></div><div class="ql-tooltip ql-hidden"><a class="ql-preview" target="_blank" href="about:blank"></a><input type="text" data-formula="e=mc^2" data-link="https://quilljs.com" data-video="Embed URL"><a class="ql-action"></a><a class="ql-remove"></a></div>', NULL, '2021-04-28 03:36:02'),
	(40, 'about_us', '<p><strong><span dir="auto">Contact info</span></strong></p>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/y4/r/HNzy6p26p_d.png?_nc_eui2=AeFqoBs80sEpD8MmbvYnVr1R2AXno-ddgDLYBeej512AMmOPqvc4f6OyRgCp7Yn8-ooZrqcL28J0BX0zvqaZZgZj" style="height:24px; width:24px" /></p>\r\n\r\n<p><span dir="auto">Urdaneta, Philippines</span></p>\r\n\r\n<p><strong>Address</strong></p>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/yy/r/9RISa0HPFnB.png?_nc_eui2=AeFqHq3wtYMczERqhlelSORo26n8BdhqNpHbqfwF2Go2kfxkju2mvS8pHOZMtu19piQykFGlQomNfweCRSzwAQFT" style="height:24px; width:24px" /></p>\r\n\r\n<ul style="list-style-type:none">\r\n	<li>\r\n	<p><span dir="auto">Pozorrubio, Philippines &middot; Urdaneta, Philippines &middot; Binalonan, Philippines &middot; Villasis, Philippines &middot; Sta.Maria, Philippines</span></p>\r\n\r\n	<p><span dir="auto">Service Area</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/yU/r/P1gdNPNhMhn.png?_nc_eui2=AeEFrDSMM1gxqljKSmXkyGHT9bBj5MW43z71sGPkxbjfPozw78kGldB1vgBuQkHI8j-1R86mSCaswJmXS0r51MBG" style="height:24px; width:24px" /></p>\r\n\r\n<ul style="list-style-type:none">\r\n	<li>\r\n	<p><span dir="auto">0917 844 4858</span></p>\r\n\r\n	<p><span dir="auto">Mobile</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/pkb66zeUlly.png?_nc_eui2=AeE09TBmS37LO1oH_hWl3xLx4iY7wScWTcriJjvBJxZNyqpNTU1MgvN6nJ8SLrMUZ4jq0x31X668L31xFuJxG3x4" style="height:24px; width:24px" /></p>\r\n\r\n<ul style="list-style-type:none">\r\n	<li>\r\n	<p><span dir="auto">businesslyne@yahoo.com</span></p>\r\n\r\n	<p><span dir="auto">Email</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><span dir="auto">Basic info</span></strong></p>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/yi/r/OBE8J3Y1CJN.png?_nc_eui2=AeH7vODwFEWWZf6WHP2F7Rq3pf46CgpEyNyl_joKCkTI3PWc-EpvHH5tPfcHXuq3lnV0LyjwESk6UZ9i7Ov-KSAb" style="height:24px; width:24px" /></p>\r\n\r\n<ul style="list-style-type:none">\r\n	<li>\r\n	<p><span dir="auto">Rating &middot; 4.5 (16 Reviews)</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt="" src="https://static.xx.fbcdn.net/rsrc.php/v3/yf/r/EzO5YKuJljX.png?_nc_eui2=AeF3QEx5hIMWX5KwZMv-eo57EnOIZVu8IDUSc4hlW7wgNYglSCuiw4iq7kpaTV9Kai7ZcI7V_PkPYb1wC5n1XiHu" style="height:24px; width:24px" /></p>\r\n\r\n<ul style="list-style-type:none">\r\n	<li>\r\n	<p><span dir="auto">Open now</span></p>\r\n\r\n	<p><span dir="auto">Hours</span></p>\r\n	</li>\r\n</ul>', NULL, '2023-02-02 12:37:41'),
	(42, 'paystack', '{"status":"0","publicKey":null,"secretKey":null,"paymentUrl":"https:\\/\\/api.paystack.co","merchantEmail":null}', '2021-05-04 14:38:35', '2021-07-25 14:39:12'),
	(43, 'time_zone', 'Asia/Hong_Kong', NULL, NULL),
	(44, 'maintenance_mode', '0', NULL, NULL),
	(45, 'currency_symbol_position', 'left', NULL, NULL),
	(46, 'language', '[{"id":1,"name":"en","direction":"ltr","code":"en","status":1,"default":true}]', NULL, '2022-11-26 13:43:41'),
	(47, 'self_pickup', '1', NULL, NULL),
	(48, 'delivery', '1', NULL, NULL),
	(49, 'phone_verification', '1', NULL, NULL),
	(50, 'msg91_sms', '{"status":0,"template_id":null,"authkey":null}', '2022-12-04 01:16:11', '2022-12-04 01:16:11'),
	(51, '2factor_sms', '{"status":0,"api_key":null}', '2022-12-04 01:16:11', '2022-12-04 01:16:11'),
	(52, 'nexmo_sms', '{"status":"1","api_key":"9af65d3f","api_secret":"Ny92OinIz6PjfOnc","signature_secret":"","private_key":"","application_id":"","from":"Tea2Go","otp_template":"Your OTP is {TOKEN}"}', '2022-12-04 01:16:11', '2022-12-04 01:16:11'),
	(53, 'twilio_sms', '{"status":0,"sid":null,"token":null,"from":null,"otp_template":null}', '2022-12-04 01:16:11', '2022-12-04 01:16:11'),
	(54, 'pagination_limit', '10', NULL, NULL),
	(55, 'map_api_key', 'AIzaSyD6LsYqBo964SA7ceMQY9g2t96w7qJit98', NULL, NULL),
	(56, 'delivery_management', '{"status":"0","min_shipping_charge":0,"shipping_per_km":0}', NULL, NULL),
	(57, 'bkash', '{"status":"0","api_key":null,"api_secret":null,"username":null,"password":null}', NULL, NULL),
	(58, 'paymob', '{"status":"0","api_key":null,"iframe_id":null,"integration_id":null,"hmac":null}', NULL, NULL),
	(59, 'flutterwave', '{"status":"0","public_key":null,"secret_key":null,"hash":null}', NULL, NULL),
	(60, 'mercadopago', '{"status":"0","public_key":null,"access_token":null}', NULL, NULL),
	(61, 'returned_message', '{"status":0,"message":null}', NULL, NULL),
	(62, 'failed_message', '{"status":0,"message":null}', NULL, NULL),
	(63, 'canceled_message', '{"status":0,"message":null}', NULL, NULL),
	(64, 'recaptcha', '{"status":"0","site_key":"","secret_key":""}', NULL, NULL),
	(65, 'firestore_db', '{"apiKey":"","authDomain":"","projectId":"","storageBucket":"","messagingSenderId":"","appId":""}', NULL, NULL),
	(66, 'play_store_config', '{"status":"1","link":"https:\\/\\/drive.google.com\\/drive\\/u\\/7\\/folders\\/1x9F8ORm0TtgIP_Bh_uWWD8BxZNOQOCQS","min_version":"1"}', NULL, NULL),
	(67, 'app_store_config', '{"status":"","link":"","min_version":"1"}', NULL, NULL),
	(68, 'default_preparation_time', '15', NULL, NULL),
	(69, 'decimal_point_settings', '2', NULL, NULL),
	(70, 'schedule_order_slot_duration', '1', NULL, NULL),
	(71, 'time_format', '12', NULL, NULL),
	(72, 'cancellation_page', '{"status":0,"content":""}', NULL, NULL),
	(73, 'country', 'PH', NULL, NULL),
	(74, 'firebase_message_config', '{"apiKey":"AIzaSyDVvttz5QCoRWhERHj9dV8_22OCvEAJoXE","authDomain":"tea2go-f80b8.firebaseapp.com","projectId":"tea2go-f80b8","storageBucket":"tea2go-f80b8.appspot.com","messagingSenderId":"1059165022801","appId":"1:1059165022801:web:e3922085a09cb51c092670"}', '2022-12-04 01:20:54', '2022-12-04 01:20:54'),
	(75, 'customer_notify_message', '{"status":0,"message":null}', NULL, NULL),
	(76, 'customer_notify_message_for_time_change', '{"status":0,"message":null}', NULL, NULL),
	(77, 'app_activation', '[{"software_id":"40488202","is_active":1}]', NULL, NULL),
	(78, 'return_page', '{"status":0,"content":""}', NULL, NULL),
	(79, 'refund_page', '{"status":0,"content":""}', NULL, NULL);

-- Dumping structure for table tea2go.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint NOT NULL,
  `position` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.categories: ~8 rows (approximately)
INSERT INTO `categories` (`id`, `name`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `image`, `banner_image`) VALUES
	(1, 'Classic Milk Tea', 0, 0, 1, '2022-11-26 13:39:50', '2022-11-26 23:04:37', '2022-11-26-63822b051ce7d.png', '2022-11-26-6381a6a6c2012.png'),
	(2, 'Cold', 1, 1, 1, '2022-11-26 13:40:39', '2022-11-26 13:40:39', 'def.png', 'def.png'),
	(4, 'Yakult Fruit Tea', 0, 0, 1, '2022-11-30 14:46:20', '2022-12-03 20:35:20', '2022-12-03-638b4288b1e14.png', '2022-12-03-638b4288b22d9.png'),
	(5, 'Fruit Tea', 0, 0, 1, '2022-11-30 14:47:26', '2023-01-11 12:29:21', '2023-01-11-63be3b2140c09.png', '2023-01-11-63be3b214120a.png'),
	(6, 'Combos', 0, 0, 1, '2022-11-30 14:48:19', '2023-01-11 12:20:42', '2023-01-11-63be391a765cc.png', '2023-01-11-63be391a76ad0.png'),
	(7, 'Add Ons', 0, 0, 1, '2022-11-30 15:02:07', '2022-12-03 17:14:59', '2022-12-03-638b1393e5c52.png', '2022-12-03-638b1393e60b6.png'),
	(9, 'Primo\'s Pizza', 0, 0, 1, '2022-12-03 20:41:31', '2022-12-03 20:47:47', '2022-12-03-638b43fb7fadd.png', '2022-12-03-638b4573e9bec.png'),
	(10, 'Takoyaki', 0, 0, 1, '2022-12-03 20:57:13', '2022-12-03 20:57:13', '2022-12-03-638b47a9a0043.png', '2022-12-03-638b47a9a0608.png');

-- Dumping structure for table tea2go.chef_branch
CREATE TABLE IF NOT EXISTS `chef_branch` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `branch_id` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.chef_branch: ~0 rows (approximately)

-- Dumping structure for table tea2go.colors
CREATE TABLE IF NOT EXISTS `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Dumping data for table tea2go.colors: ~143 rows (approximately)
INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
	(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
	(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
	(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
	(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
	(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
	(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- Dumping structure for table tea2go.conversations
CREATE TABLE IF NOT EXISTS `conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.conversations: ~0 rows (approximately)

-- Dumping structure for table tea2go.coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `coupon_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.coupons: ~0 rows (approximately)

-- Dumping structure for table tea2go.currencies
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.currencies: ~2 rows (approximately)
INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
	(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
	(2, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL);

-- Dumping structure for table tea2go.customer_addresses
CREATE TABLE IF NOT EXISTS `customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `address_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `contact_person_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.customer_addresses: ~12 rows (approximately)
INSERT INTO `customer_addresses` (`id`, `address_type`, `contact_person_number`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`, `user_id`, `contact_person_name`) VALUES
	(1, 'Home', '+639273397377', '03 Sta Fe Subd, Binalonan, Pangasinan, Philippines', '16.0497821', '120.5896484', '2022-12-03 22:16:03', '2022-12-03 22:16:03', 1, 'Cliffy Cabunoc'),
	(2, 'Home', '+639058083245', '2HP6+F8J, Laoac, Pangasinan, Philippines', '16.0362974', '120.5605587', '2022-12-03 22:33:35', '2022-12-03 22:33:35', 2, 'Christine Laurian'),
	(4, 'Home', '+639074303654', '2H6C+43 Urdaneta, Pangasinan, Philippines', '16.0102696', '120.5701485', '2022-12-03 23:15:45', '2022-12-03 23:15:45', 3, 'Evander yadao'),
	(5, 'Home', '+639074303654', 'tulong,Urdaneta, Pangasinan, Philippines', '16.0102644', '120.5701525', '2022-12-03 23:17:45', '2022-12-03 23:17:45', 3, 'Evander yadao'),
	(6, 'Home', '+639273397377', '2HQ8+XJ Laoac, Pangasinan, Philippines', '16.039936', '120.5665792', '2022-12-04 00:04:41', '2022-12-04 00:04:41', 1, 'WEAK Kapa'),
	(7, 'Workplace', '+639058083245', 'Binalonan municipality', '16.049418', '120.5471819', '2022-12-05 14:09:36', '2022-12-05 14:09:36', 2, 'Christine Laurian'),
	(8, 'Other', '+639058083245', 'San Felipe Binalonan, Pangasinan, Philippines', '16.0494328', '120.5472091', '2022-12-05 14:10:49', '2022-12-05 14:10:49', 2, 'Christine Laurian'),
	(9, 'Home', '+639183374419', '03 Sta Fe Subd, Binalonan, Pangasinan, Philippines', '16.0498061', '120.5896471', '2022-12-10 10:44:51', '2022-12-10 10:44:51', 4, 'Louiegie villamanca'),
	(10, 'Home', '+639058083245', '2HP6+F8J, Laoac, Pangasinan, Philippines', '16.0361882', '120.5606742', '2023-02-02 11:45:12', '2023-02-02 11:45:12', 2, 'Christine Laurian'),
	(11, 'Home', '+639058083245', 'Sta. Fe Binalonan, Pangasinan, Philippines', '16.036192', '120.5606689', '2023-02-02 14:16:25', '2023-02-02 14:16:25', 2, 'Christine Laurian'),
	(12, 'Home', '+639058083245', '2HXP+RPP, Binalonan, Pangasinan, Philippines', '16.0496749', '120.5867431', '2023-02-09 11:09:09', '2023-02-09 11:09:09', 2, 'Christine Laurian'),
	(13, 'Home', '+639485868458', '6GP5+2FG, Pugo, La Union, Philippines', '16.2350749', '120.5088248', '2023-02-11 20:34:01', '2023-02-11 20:34:01', 5, 'John Qwerty');

-- Dumping structure for table tea2go.dc_conversations
CREATE TABLE IF NOT EXISTS `dc_conversations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.dc_conversations: ~0 rows (approximately)
INSERT INTO `dc_conversations` (`id`, `order_id`, `created_at`, `updated_at`) VALUES
	(1, 100006, '2023-02-02 11:49:35', '2023-02-02 11:49:35');

-- Dumping structure for table tea2go.delivery_histories
CREATE TABLE IF NOT EXISTS `delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `deliveryman_id` bigint DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.delivery_histories: ~113 rows (approximately)
INSERT INTO `delivery_histories` (`id`, `order_id`, `deliveryman_id`, `time`, `longitude`, `latitude`, `location`, `created_at`, `updated_at`) VALUES
	(1, 100001, 1, '2022-12-04 02:16:19', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:16:19', '2022-12-04 02:16:19'),
	(2, 100001, 1, '2022-12-04 02:16:19', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:16:19', '2022-12-04 02:16:19'),
	(3, 100001, 1, '2022-12-04 02:16:19', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:16:19', '2022-12-04 02:16:19'),
	(4, 100001, 1, '2022-12-04 02:17:27', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:17:27', '2022-12-04 02:17:27'),
	(5, 100001, 1, '2022-12-04 02:17:28', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:17:28', '2022-12-04 02:17:28'),
	(6, 100001, 1, '2022-12-04 02:17:40', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:17:40', '2022-12-04 02:17:40'),
	(7, 100001, 1, '2022-12-04 02:30:04', '-122.083922', '37.4220936', '1600, Santa Clara County, US', '2022-12-04 02:30:04', '2022-12-04 02:30:04'),
	(8, 100001, 1, '2022-12-04 02:45:56', '120.5896231', '16.0498633', 'Binalonan, Pangasinan, PH', '2022-12-04 02:45:56', '2022-12-04 02:45:56'),
	(9, 100001, 1, '2022-12-04 02:45:57', '120.5896231', '16.0498633', 'Binalonan, Pangasinan, PH', '2022-12-04 02:45:57', '2022-12-04 02:45:57'),
	(10, 100001, 1, '2022-12-04 02:46:29', '120.5896319', '16.0497897', 'Binalonan, Pangasinan, PH', '2022-12-04 02:46:29', '2022-12-04 02:46:29'),
	(11, 100001, 1, '2022-12-04 02:47:09', '120.5895754', '16.0498175', 'Binalonan, Pangasinan, PH', '2022-12-04 02:47:09', '2022-12-04 02:47:09'),
	(12, 100001, 1, '2022-12-04 02:47:17', '120.5896004', '16.0498141', 'Binalonan, Pangasinan, PH', '2022-12-04 02:47:17', '2022-12-04 02:47:17'),
	(13, 100001, 1, '2022-12-04 02:47:47', '120.5896004', '16.0498141', 'Binalonan, Pangasinan, PH', '2022-12-04 02:47:47', '2022-12-04 02:47:47'),
	(14, 100001, 1, '2022-12-04 02:49:04', '120.5896004', '16.0498141', 'Binalonan, Pangasinan, PH', '2022-12-04 02:49:04', '2022-12-04 02:49:04'),
	(15, 100001, 1, '2022-12-04 02:49:05', '120.5896004', '16.0498141', 'Binalonan, Pangasinan, PH', '2022-12-04 02:49:05', '2022-12-04 02:49:05'),
	(16, 100001, 1, '2022-12-04 02:49:19', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:49:19', '2022-12-04 02:49:19'),
	(17, 100001, 1, '2022-12-04 02:49:46', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:49:46', '2022-12-04 02:49:46'),
	(18, 100001, 1, '2022-12-04 02:52:02', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:02', '2022-12-04 02:52:02'),
	(19, 100001, 1, '2022-12-04 02:52:03', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:03', '2022-12-04 02:52:03'),
	(20, 100001, 1, '2022-12-04 02:52:04', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:04', '2022-12-04 02:52:04'),
	(21, 100001, 1, '2022-12-04 02:52:04', '120.5896401', '16.0497626', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:04', '2022-12-04 02:52:04'),
	(22, 100001, 1, '2022-12-04 02:52:18', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:18', '2022-12-04 02:52:18'),
	(23, 100001, 1, '2022-12-04 02:52:47', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 02:52:47', '2022-12-04 02:52:47'),
	(24, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(25, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(26, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(27, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(28, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(29, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(30, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(31, 100001, 1, '2022-12-04 03:15:11', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:11', '2022-12-04 03:15:11'),
	(32, 100001, 1, '2022-12-04 03:15:12', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:12', '2022-12-04 03:15:12'),
	(33, 100001, 1, '2022-12-04 03:15:12', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:12', '2022-12-04 03:15:12'),
	(34, 100001, 1, '2022-12-04 03:15:12', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:12', '2022-12-04 03:15:12'),
	(35, 100001, 1, '2022-12-04 03:15:12', '120.5896406', '16.0497678', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:12', '2022-12-04 03:15:12'),
	(36, 100001, 1, '2022-12-04 03:15:24', '120.5896398', '16.0497779', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:24', '2022-12-04 03:15:24'),
	(37, 100001, 1, '2022-12-04 03:15:52', '120.5896398', '16.0497779', 'Binalonan, Pangasinan, PH', '2022-12-04 03:15:52', '2022-12-04 03:15:52'),
	(38, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(39, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(40, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(41, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(42, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(43, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(44, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(45, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(46, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(47, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(48, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(49, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(50, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(51, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(52, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(53, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(54, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(55, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(56, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(57, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(58, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(59, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(60, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(61, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(62, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(63, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(64, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(65, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(66, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(67, 100001, 1, '2022-12-04 05:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 05:16:56', '2022-12-04 05:16:56'),
	(68, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(69, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(70, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(71, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(72, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(73, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(74, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(75, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(76, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(77, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(78, 100001, 1, '2022-12-04 07:16:56', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:56', '2022-12-04 07:16:56'),
	(79, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(80, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(81, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(82, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(83, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(84, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(85, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(86, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(87, 100001, 1, '2022-12-04 07:16:57', '120.5896292', '16.0498673', 'Binalonan, Pangasinan, PH', '2022-12-04 07:16:57', '2022-12-04 07:16:57'),
	(88, 100001, 1, '2022-12-04 07:17:16', '120.5896378', '16.0497723', 'Binalonan, Pangasinan, PH', '2022-12-04 07:17:16', '2022-12-04 07:17:16'),
	(89, 100001, 1, '2022-12-04 07:17:45', '120.5896472', '16.0497826', 'Binalonan, Pangasinan, PH', '2022-12-04 07:17:45', '2022-12-04 07:17:45'),
	(90, 100001, 1, '2022-12-04 07:18:16', '120.5896532', '16.0498472', 'Binalonan, Pangasinan, PH', '2022-12-04 07:18:16', '2022-12-04 07:18:16'),
	(91, 100001, 1, '2022-12-04 07:44:34', '120.5896528', '16.0498457', 'Binalonan, Pangasinan, PH', '2022-12-04 07:44:34', '2022-12-04 07:44:34'),
	(92, 100001, 1, '2022-12-04 07:44:34', '120.5896528', '16.0498457', 'Binalonan, Pangasinan, PH', '2022-12-04 07:44:34', '2022-12-04 07:44:34'),
	(93, 100001, 1, '2022-12-04 07:44:34', '120.5896528', '16.0498457', 'Binalonan, Pangasinan, PH', '2022-12-04 07:44:34', '2022-12-04 07:44:34'),
	(94, 100001, 1, '2022-12-04 07:44:41', '120.5896485', '16.0498423', 'Binalonan, Pangasinan, PH', '2022-12-04 07:44:41', '2022-12-04 07:44:41'),
	(95, 100003, 1, '2022-12-10 10:49:16', '120.5896445', '16.0498581', 'Binalonan, Pangasinan, PH', '2022-12-10 10:49:16', '2022-12-10 10:49:16'),
	(96, 100003, 1, '2022-12-10 10:49:16', '120.5896445', '16.0498581', 'Binalonan, Pangasinan, PH', '2022-12-10 10:49:16', '2022-12-10 10:49:16'),
	(97, 100003, 1, '2022-12-10 10:49:46', '120.5896485', '16.0498609', 'Binalonan, Pangasinan, PH', '2022-12-10 10:49:46', '2022-12-10 10:49:46'),
	(98, 100003, 1, '2022-12-10 10:49:46', '120.5896485', '16.0498609', 'Binalonan, Pangasinan, PH', '2022-12-10 10:49:46', '2022-12-10 10:49:46'),
	(99, 100003, 1, '2022-12-10 10:49:57', '120.5896433', '16.0498616', 'Binalonan, Pangasinan, PH', '2022-12-10 10:49:57', '2022-12-10 10:49:57'),
	(100, 100013, 1, '2023-02-09 11:14:25', '120.5867295', '16.0496574', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:14:25', '2023-02-09 11:14:25'),
	(101, 100013, 1, '2023-02-09 11:14:25', '120.5867295', '16.0496574', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:14:25', '2023-02-09 11:14:25'),
	(102, 100013, 1, '2023-02-09 11:15:01', '120.5871574', '16.0499877', 'Binalonan, Pangasinan, PH', '2023-02-09 11:15:01', '2023-02-09 11:15:01'),
	(103, 100013, 1, '2023-02-09 11:15:03', '120.5868683', '16.04977', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:15:03', '2023-02-09 11:15:03'),
	(104, 100013, 1, '2023-02-09 11:15:35', '120.5872563', '16.0497968', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:15:35', '2023-02-09 11:15:35'),
	(105, 100013, 1, '2023-02-09 11:15:46', '120.5871706', '16.0497596', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:15:46', '2023-02-09 11:15:46'),
	(106, 100013, 1, '2023-02-09 11:15:46', '120.5871706', '16.0497596', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:15:46', '2023-02-09 11:15:46'),
	(107, 100013, 1, '2023-02-09 11:15:47', '120.5871706', '16.0497596', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:15:47', '2023-02-09 11:15:47'),
	(108, 100014, 1, '2023-02-09 11:23:09', '120.5868194', '16.0496316', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:23:09', '2023-02-09 11:23:09'),
	(109, 100014, 1, '2023-02-09 11:23:10', '120.5868194', '16.0496316', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:23:10', '2023-02-09 11:23:10'),
	(110, 100014, 1, '2023-02-09 11:23:52', '120.5867676', '16.0496594', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:23:52', '2023-02-09 11:23:52'),
	(111, 100014, 1, '2023-02-09 11:24:06', '120.5872929', '16.0501293', 'Binalonan, Pangasinan, PH', '2023-02-09 11:24:06', '2023-02-09 11:24:06'),
	(112, 100014, 1, '2023-02-09 11:24:07', '120.5870617', '16.0498909', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:24:07', '2023-02-09 11:24:07'),
	(113, 100014, 1, '2023-02-09 11:24:07', '120.5870617', '16.0498909', '2HXP+RPP, Pangasinan, PH', '2023-02-09 11:24:07', '2023-02-09 11:24:07');

-- Dumping structure for table tea2go.delivery_men
CREATE TABLE IF NOT EXISTS `delivery_men` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `delivery_men_phone_unique` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.delivery_men: ~0 rows (approximately)
INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `created_at`, `updated_at`, `auth_token`, `fcm_token`, `branch_id`) VALUES
	(1, 'Meg', 'Yadao', '+639074303654', 'yadaomeg17@gmail.com', 'A0520014847', 'driving_license', '[]', '2022-12-04-638c1e948d7b4.png', '$2y$10$5w2icHl4Wpk73SLATMcukuIL4Ta.FaN17JbztqPlLFUat3BZ9bpXW', '2022-11-26 10:27:37', '2023-02-19 19:33:16', 'uhCxK9OrUXiMkvb41fIITYV6lISYVEUXXHqS2FyY1YP4A39tWiZjvUcV7tJxLhuqGGvptuf6KeQ48Kqvz5VsgwGLt5wuZ5kk0WcjnoEwyjM3sDzYWH37Wecz', 'fFFOmqywQAi2gjginBl064:APA91bEXnGI8Ebr6Lxei2SNPNWdTfVufXe5jL_bZGhTByNqxZyWX_wQpOXOG1UwlXI0aoSkrAyMKA_KOZejm5NtaR0JxpvBGruofcFnOYoRxiI-KuPEgP3we_zKd-xr8gSTwPtE7JCah', 10);

-- Dumping structure for table tea2go.d_m_reviews
CREATE TABLE IF NOT EXISTS `d_m_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.d_m_reviews: ~0 rows (approximately)
INSERT INTO `d_m_reviews` (`id`, `delivery_man_id`, `user_id`, `order_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, 100013, 'Good boy', '[]', 5, '2023-02-09 11:17:52', '2023-02-09 11:17:52');

-- Dumping structure for table tea2go.email_verifications
CREATE TABLE IF NOT EXISTS `email_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.email_verifications: ~0 rows (approximately)

-- Dumping structure for table tea2go.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table tea2go.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `deliveryman_id` bigint DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.messages: ~0 rows (approximately)
INSERT INTO `messages` (`id`, `conversation_id`, `customer_id`, `deliveryman_id`, `message`, `attachment`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 1, 'Hello ma\'am Anticipate delivery of your Order today. Prepare 135.00 payment.', 'null', '2023-02-02 11:49:35', '2023-02-02 11:49:35');

-- Dumping structure for table tea2go.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.migrations: ~113 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2020_12_28_082729_create_admins_table', 1),
	(5, '2020_12_28_083059_create_delivery_men_table', 1),
	(6, '2020_12_28_085055_create_attributes_table', 1),
	(7, '2020_12_28_085146_create_add_ons_table', 1),
	(8, '2020_12_28_085255_create_categories_table', 1),
	(9, '2020_12_28_085511_create_business_settings_table', 1),
	(10, '2020_12_28_085733_create_customer_addresses_table', 1),
	(11, '2020_12_28_090037_create_orders_table', 1),
	(12, '2020_12_28_090551_create_order_details_table', 1),
	(13, '2020_12_28_091214_create_order_delivery_histories_table', 1),
	(14, '2020_12_28_092607_create_banners_table', 1),
	(15, '2020_12_28_092747_create_notifications_table', 1),
	(16, '2020_12_28_092933_create_coupons_table', 1),
	(17, '2020_12_28_093409_create_track_deliverymen_table', 1),
	(18, '2020_12_28_093637_create_conversations_table', 1),
	(19, '2020_12_28_093812_create_reviews_table', 1),
	(20, '2020_12_28_093937_create_products_table', 1),
	(21, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(22, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(24, '2016_06_01_000004_create_oauth_clients_table', 2),
	(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
	(26, '2021_01_02_053131_add_products_column_attributes', 2),
	(27, '2021_01_02_062050_add_products_table_column_discount_tax', 2),
	(28, '2021_01_03_083314_add_column_to_order_details', 3),
	(29, '2021_01_03_084318_add_another_column_to_order_details', 3),
	(30, '2021_01_05_133023_add_columns_to_customer_addressess', 4),
	(31, '2021_01_07_142644_add_column_to_conversation', 5),
	(32, '2021_01_09_145939_add_column_to_order_table', 6),
	(33, '2021_01_09_180439_add_column_to_product_table', 7),
	(34, '2021_01_09_182458_add_image_column_to_category', 7),
	(35, '2021_01_10_144352_create_wishlists_table', 8),
	(36, '2021_01_16_182939_add_column_to_order_table1', 9),
	(37, '2021_01_18_124153_add_column_to_cono_table', 10),
	(38, '2021_01_18_132026_add_column_to_deliveryman_table', 11),
	(39, '2021_01_18_135107_create_delivery_histories_table', 11),
	(40, '2021_01_23_102525_add_col_to_banner_category_id', 12),
	(41, '2021_01_26_133423_add_delivery_charge_order_table', 13),
	(42, '2021_01_27_111644_add_email_token_to_user_table', 13),
	(43, '2021_01_27_112309_create_email_verifications_table', 13),
	(44, '2021_01_27_120054_remove_column_from_users', 13),
	(45, '2021_01_27_120306_add_column_tousers', 13),
	(46, '2021_01_28_152556_create_currencies_table', 14),
	(47, '2021_02_07_140951_add_firebase_token_to_users_table', 15),
	(48, '2021_02_07_141134_add_order_note_to_orders_table', 15),
	(49, '2021_02_11_125439_add_fcm_to_delivery_man', 16),
	(50, '2021_02_15_094227_add_orderid_to_reviews_table', 17),
	(51, '2021_02_18_085112_add_coupon_type_column_in_coupons', 18),
	(52, '2021_02_18_095103_add_coupon_code_to_order_table', 18),
	(53, '2021_02_20_051812_create_d_m_reviews_table', 19),
	(54, '2021_02_20_070636_add_addon_qtys_order_table', 19),
	(55, '2021_02_22_084240_add_order_type', 20),
	(56, '2021_02_23_053203_create_branches_table', 21),
	(57, '2021_02_23_093537_add_branch_in_order', 21),
	(58, '2021_02_24_055406_add_coverage_in_branch', 21),
	(59, '2021_02_25_063013_add_branch_to_delivery_man', 22),
	(60, '2021_02_28_080406_add_remember_token_to_branch', 23),
	(61, '2021_03_01_112807_change_poduct_table_column_change', 24),
	(62, '2021_03_22_055801_add_branch_id_to_product', 25),
	(63, '2021_03_24_055957_add_image_table_in_branch', 26),
	(64, '2021_04_05_144520_update_product_image_column', 27),
	(65, '2021_04_06_040409_create_colors_table', 28),
	(66, '2021_04_10_141505_add_colors_column_products', 28),
	(67, '2021_04_17_054600_add_point_to_users', 29),
	(68, '2021_04_17_084426_create_point_transitions', 29),
	(69, '2021_04_11_140138_create_phone_verifications_table', 30),
	(70, '2021_04_12_144205_add_column_password_resets', 30),
	(71, '2021_05_03_160034_add_callback_to_order', 31),
	(72, '2021_05_04_203143_add_delivery_date_to_order', 32),
	(73, '2021_05_06_144650_change_business_value_col_type', 33),
	(74, '2021_06_17_054551_create_soft_credentials_table', 34),
	(75, '2021_09_01_133521_create_phone_verifications_table', 35),
	(76, '2021_09_03_194551_create_translations_table', 35),
	(77, '2021_09_04_082220_rename_email_col', 35),
	(78, '2021_10_12_164428_add_temporary_token_to_users_table', 36),
	(79, '2021_11_07_165323_add_extra_discount_to_order_table', 37),
	(80, '2022_02_03_092647_add_fcm_token_to_admins_table', 38),
	(81, '2022_02_03_175558_create_dc_conversations_table', 38),
	(82, '2022_02_03_175826_create_messages_table', 38),
	(83, '2022_02_05_161313_add_sender_column_to_conversations_table', 38),
	(84, '2022_02_10_163707_change_banner_title_length', 38),
	(85, '2022_02_10_172126_change_name_length_to_attributes_table', 38),
	(86, '2022_02_10_173534_change_name_length_to_add_ons_table', 38),
	(87, '2022_02_10_175418_change_name_length_to_categories_table', 38),
	(88, '2022_02_12_154555_create_social_media_table', 38),
	(89, '2022_02_13_102927_create_newsletters_table', 38),
	(90, '2022_02_14_115413_chnage_message_data_type_in_conversations_table', 38),
	(91, '2022_02_15_133410_change_attachment_column_type_to_messages_table', 38),
	(92, '2022_02_15_133618_change_image_colum_type_to_conversations_table', 38),
	(93, '2022_03_18_102843_add_delivery_address_to_order_table', 39),
	(94, '2022_03_18_151825_add_cover_image_to_category_table', 39),
	(95, '2022_05_16_171116_preparation_time_add_in_order_table', 40),
	(96, '2022_05_26_102619_create_admin_roles_table', 40),
	(97, '2022_05_26_113238_add_admin_role_id_to_admin_table', 40),
	(98, '2022_05_26_123911_add_status_column_to_admin_table', 40),
	(99, '2022_05_26_163239_add_popularity_count_in_product_table', 40),
	(100, '2022_05_28_101608_create_time_schedules_table', 40),
	(101, '2022_09_10_163335_add_user_type_on_users_table', 41),
	(102, '2022_09_11_143431_create_tables_table', 41),
	(103, '2022_09_17_104924_add_column_product_type_to_products_table', 41),
	(104, '2022_09_17_122002_add_multiple_column_to_orders_table', 41),
	(105, '2022_09_20_102322_create_branch_promotions_table', 41),
	(106, '2022_09_21_144009_create_chef_branch_table', 41),
	(107, '2022_09_26_100058_add_column_branch_promotion_status_to_branch_table', 41),
	(108, '2022_09_26_153140_add_is_available_column_to_tables_table', 41),
	(109, '2022_09_27_115927_create_table_order_table', 41),
	(110, '2022_09_29_154224_add_column_table_order_id_in_orders_table', 41),
	(111, '2022_10_19_121218_drop_cloumn_order_id_from_table_orders', 41),
	(112, '2022_10_19_121436_drop_cloumn_is_available_from_tables', 41),
	(113, '2022_10_20_193809_change_product_type_in_product_table', 41);

-- Dumping structure for table tea2go.newsletters
CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.newsletters: ~0 rows (approximately)

-- Dumping structure for table tea2go.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.notifications: ~2 rows (approximately)
INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Notification', 'asdadadada', 'def.png', 1, '2022-12-04 00:47:06', '2022-12-04 00:47:06'),
	(2, 'hfhhgfhg', 'hjkhkhkjj', '2022-12-04-638b7df037895.png', 1, '2022-12-04 00:48:48', '2022-12-04 00:48:48');

-- Dumping structure for table tea2go.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.oauth_access_tokens: ~16 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('00bcb792e2e727ba8e5d882da5568906ca03fe8568d3043e1d70fc624a4a6f6e4d9266340e59d25e', 4, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-10 10:43:35', '2022-12-10 10:43:35', '2023-12-10 10:43:35'),
	('0220c9ebf32921f2052430263dd7ea40e3f7641cec8dcbb6660e746b45d8cc105e31bb5f42042713', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-03 23:45:38', '2022-12-03 23:45:38', '2023-12-03 23:45:38'),
	('0814b756ded75a1ccfbab763d17734b7f3d6b40b76bc1c8e86598749a63ba8a7a04e9f9036289195', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-01-24 10:08:07', '2023-01-24 10:08:07', '2024-01-24 10:08:07'),
	('09fbd96521250711edc69f98cbb0f7715f8903f947f98dec7ac15c91bc09f53c6b065f747d2700c7', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-02-09 11:26:36', '2023-02-09 11:26:36', '2024-02-09 11:26:36'),
	('24a99a42f93ec4960ad45fba0f058aacb1e0b7abd395657925c7d9febc1f1aabf081e5fd71b82493', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-03 13:49:30', '2022-12-03 13:49:30', '2023-12-03 13:49:30'),
	('374177ea82cbe4510c4d223f45105e47a4fc63bd2232815eda188aa9375cd35940608a3a0c6ed7bd', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-02-02 14:31:34', '2023-02-02 14:31:34', '2024-02-02 14:31:34'),
	('3d388572a2c5057bd0b9968a61704ce4f4d7631eba16ba5041f4a138759174264813bed353d8eed1', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-11-26 17:06:00', '2022-11-26 17:06:00', '2023-11-26 17:06:00'),
	('66b0b0fee7448edcb42facbc99f464482a215499f7e19621e8b2a7f092bafd822ced88eaedc13e56', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-04 02:07:47', '2022-12-04 02:07:47', '2023-12-04 02:07:47'),
	('7a0d1c16112f7b2cbb167a0025cd59616821f29374dc00f72888a6d955eb9fe3c72eb7523934299b', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-11-26 23:09:57', '2022-11-26 23:09:57', '2023-11-26 23:09:57'),
	('8dcf7e543d365c4c0408f1e5305faf54adedecaa4b66bc985e1c1020d5a0a0c88a3c3748564df30c', 3, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-03 13:08:08', '2022-12-03 13:08:08', '2023-12-03 13:08:08'),
	('9ac4382a644b7db1b41f158d7c73fd24eb85a9060da042a7bb8fe1bc261c9587176ee36d3d997361', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-01-20 10:17:25', '2023-01-20 10:17:25', '2024-01-20 10:17:25'),
	('a31eda3ed6433016714813177e1d0d07c7eb0e97e28fde5394e6a1a7536d28e938a7980e673529c2', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2023-02-16 12:09:33', '2023-02-16 12:09:33', '2024-02-16 12:09:33'),
	('a75911110b4ba5cc7bc8e91d787685f69839a4daa4c406ae810a02978f8e70e814b1ba72ac4e7bbc', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-11-27 10:24:05', '2022-11-27 10:24:05', '2023-11-27 10:24:05'),
	('b22837d3a177f68cea8d897105ab12d9d43c799aa2d6a4bb1a4471d7dee554a5961f715780f8e637', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-11-26 23:34:16', '2022-11-26 23:34:16', '2023-11-26 23:34:16'),
	('d92231f9fc6f6c735da20e9fa4751da9f8dfea45cc6cae77ff6808feeb7e10a8461deb66696637f7', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-03 22:45:01', '2022-12-03 22:45:01', '2023-12-03 22:45:01'),
	('e1be8fab3e1c50ad94d79c76df8ce852afca091f54ea256c96138745ff284ffb8e7b7192a6ab678b', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2022-12-04 00:48:16', '2022-12-04 00:48:16', '2023-12-04 00:48:16');

-- Dumping structure for table tea2go.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table tea2go.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.oauth_clients: ~4 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'z5ky1aF18fNgAczYo0W2MdglqUxpyt0KsKdmbRIt', NULL, 'http://localhost', 1, 0, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
	(2, NULL, 'Laravel Password Grant Client', 'clk5DEe0ANVDYwD79OUYBkLcZ6CLSykUvULubUuk', 'users', 'http://localhost', 0, 1, 0, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
	(3, NULL, 'Laravel Personal Access Client', 'wDHtyTifyKZ422juudaKc8LW6ZSmE9YEovXIWTSM', NULL, 'http://localhost', 1, 0, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21'),
	(4, NULL, 'Laravel Password Grant Client', 'YWRRgYEydgmaZKctc0yO7hA3IiEMYvPZbYDrl8YD', 'users', 'http://localhost', 0, 1, 0, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- Dumping structure for table tea2go.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.oauth_personal_access_clients: ~2 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2021-01-05 18:07:29', '2021-01-05 18:07:29'),
	(2, 3, '2021-04-10 17:00:21', '2021-04-10 17:00:21');

-- Dumping structure for table tea2go.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table tea2go.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `order_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `coupon_discount_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `payment_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_reference` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_address_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `delivery_man_id` bigint DEFAULT NULL,
  `delivery_charge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `order_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivery',
  `branch_id` bigint NOT NULL DEFAULT '1',
  `callback` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `delivery_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `preparation_time` int DEFAULT NULL,
  `table_id` bigint DEFAULT NULL,
  `number_of_people` int DEFAULT NULL,
  `table_order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.orders: ~14 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `created_at`, `updated_at`, `checked`, `delivery_man_id`, `delivery_charge`, `order_note`, `coupon_code`, `order_type`, `branch_id`, `callback`, `delivery_date`, `delivery_time`, `extra_discount`, `delivery_address`, `preparation_time`, `table_id`, `number_of_people`, `table_order_id`) VALUES
	(100001, 1, 750.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 1, '2022-12-04 02:04:45', '2022-12-04 02:47:17', 1, 1, 50.00, NULL, NULL, 'delivery', 1, NULL, '2022-12-04', '02:11', 0.00, '{"id":1,"address_type":"Home","contact_person_number":"+639273397377","address":"03 Sta Fe Subd, Binalonan, Pangasinan, Philippines","latitude":"16.0497821","longitude":"120.5896484","created_at":"2022-12-03T14:16:03.000000Z","updated_at":"2022-12-03T14:16:03.000000Z","user_id":1,"contact_person_name":"Weak ka pa"}', 15, NULL, NULL, NULL),
	(100002, NULL, 140.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash', NULL, NULL, '2022-12-10 10:40:51', '2022-12-10 10:40:51', 1, NULL, 0.00, NULL, NULL, 'pos', 1, NULL, '2022-12-10', '10:40:51', 0.00, NULL, NULL, NULL, NULL, NULL),
	(100003, 4, 470.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 9, '2022-12-10 10:45:00', '2022-12-10 10:49:54', 1, 1, 50.00, NULL, NULL, 'delivery', 1, NULL, '2022-12-10', '10:45:00', 0.00, '{"id":9,"address_type":"Home","contact_person_number":"+639183374419","address":"03 Sta Fe Subd, Binalonan, Pangasinan, Philippines","latitude":"16.0498061","longitude":"120.5896471","created_at":"2022-12-10T02:44:51.000000Z","updated_at":"2022-12-10T02:44:51.000000Z","user_id":4,"contact_person_name":"Louiegie villamanca"}', 15, NULL, NULL, NULL),
	(100004, 2, 160.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 8, '2023-01-24 10:12:21', '2023-01-24 11:11:02', 1, NULL, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-01-24', '10:12:21', 0.00, '{"id":8,"address_type":"Other","contact_person_number":"+639058083245","address":"San Felipe Binalonan, Pangasinan, Philippines","latitude":"16.0494328","longitude":"120.5472091","created_at":"2022-12-05T06:10:49.000000Z","updated_at":"2022-12-05T06:10:49.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100005, 2, 110.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'cash_on_delivery', 'code234', 2, '2023-02-02 11:03:55', '2023-02-02 11:12:28', 1, 1, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-02-02', '11:03:55', 0.00, '{"id":2,"address_type":"Home","contact_person_number":"+639058083245","address":"2HP6+F8J, Laoac, Pangasinan, Philippines","latitude":"16.0362974","longitude":"120.5605587","created_at":"2022-12-03T14:33:35.000000Z","updated_at":"2022-12-03T14:33:35.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100006, 2, 135.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'cash_on_delivery', NULL, 8, '2023-02-02 11:45:57', '2023-02-02 11:52:27', 1, 1, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-02-02', '12:02', 0.00, '{"id":8,"address_type":"Other","contact_person_number":"+639058083245","address":"San Felipe Binalonan, Pangasinan, Philippines","latitude":"16.0494328","longitude":"120.5472091","created_at":"2022-12-05T06:10:49.000000Z","updated_at":"2022-12-05T06:10:49.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100007, 2, 295.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 11, '2023-02-02 14:34:15', '2023-02-02 19:39:42', 1, 1, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-02-02', '14:34:15', 0.00, '{"id":11,"address_type":"Home","contact_person_number":"+639058083245","address":"Sta. Fe Binalonan, Pangasinan, Philippines","latitude":"16.036192","longitude":"120.5606689","created_at":"2023-02-02T06:16:25.000000Z","updated_at":"2023-02-02T06:16:25.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100008, 2, 160.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 11, '2023-02-02 14:58:56', '2023-02-16 12:12:56', 1, NULL, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-02-02', '14:58:56', 0.00, '{"id":11,"address_type":"Home","contact_person_number":"+639058083245","address":"Sta. Fe Binalonan, Pangasinan, Philippines","latitude":"16.036192","longitude":"120.5606689","created_at":"2023-02-02T06:16:25.000000Z","updated_at":"2023-02-02T06:16:25.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100009, 2, 145.00, 0.00, NULL, 'unpaid', 'canceled', 0.00, 'cash_on_delivery', NULL, 11, '2023-02-02 15:15:00', '2023-02-16 12:13:32', 1, NULL, 50.00, NULL, NULL, 'delivery', 1, NULL, '2023-02-02', '15:16', 0.00, '{"id":11,"address_type":"Home","contact_person_number":"+639058083245","address":"Sta. Fe Binalonan, Pangasinan, Philippines","latitude":"16.036192","longitude":"120.5606689","created_at":"2023-02-02T06:16:25.000000Z","updated_at":"2023-02-02T06:16:25.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100010, 2, 110.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash', NULL, NULL, '2023-02-02 21:08:14', '2023-02-02 21:08:14', 1, NULL, 0.00, NULL, NULL, 'pos', 10, NULL, '2023-02-02', '21:08:14', 0.00, NULL, NULL, NULL, 1, NULL),
	(100011, 2, 275.00, 0.00, NULL, 'paid', 'confirmed', 0.00, 'cash', NULL, NULL, '2023-02-02 21:13:41', '2023-02-02 21:13:41', 1, NULL, 0.00, NULL, NULL, 'dine_in', 10, NULL, '2023-02-02', '21:13:41', 0.00, NULL, NULL, 1, 2, NULL),
	(100012, NULL, 55.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash', NULL, NULL, '2023-02-05 17:53:22', '2023-02-05 17:53:22', 1, NULL, 0.00, NULL, NULL, 'pos', 10, NULL, '2023-02-05', '17:53:22', 0.00, NULL, NULL, NULL, NULL, NULL),
	(100013, 2, 190.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 12, '2023-02-09 11:09:29', '2023-02-09 11:15:45', 1, 1, 50.00, NULL, NULL, 'delivery', 10, NULL, '2023-02-09', '11:10', 0.00, '{"id":12,"address_type":"Home","contact_person_number":"+639058083245","address":"2HXP+RPP, Binalonan, Pangasinan, Philippines","latitude":"16.0496749","longitude":"120.5867431","created_at":"2023-02-09T03:09:09.000000Z","updated_at":"2023-02-09T03:09:09.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL),
	(100014, 2, 170.00, 0.00, NULL, 'paid', 'delivered', 0.00, 'cash_on_delivery', NULL, 12, '2023-02-09 11:21:13', '2023-02-09 11:24:05', 1, 1, 50.00, NULL, NULL, 'delivery', 10, NULL, '2023-02-09', '11:23', 0.00, '{"id":12,"address_type":"Home","contact_person_number":"+639058083245","address":"2HXP+RPP, Binalonan, Pangasinan, Philippines","latitude":"16.0496749","longitude":"120.5867431","created_at":"2023-02-09T03:09:09.000000Z","updated_at":"2023-02-09T03:09:09.000000Z","user_id":2,"contact_person_name":"Christine Laurian"}', 15, NULL, NULL, NULL);

-- Dumping structure for table tea2go.order_delivery_histories
CREATE TABLE IF NOT EXISTS `order_delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.order_delivery_histories: ~0 rows (approximately)

-- Dumping structure for table tea2go.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `product_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_on_product` decimal(8,2) DEFAULT NULL,
  `discount_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `quantity` int NOT NULL DEFAULT '1',
  `tax_amount` decimal(8,2) NOT NULL DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `add_on_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_on_qtys` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.order_details: ~26 rows (approximately)
INSERT INTO `order_details` (`id`, `product_id`, `order_id`, `price`, `product_details`, `variation`, `discount_on_product`, `discount_type`, `quantity`, `tax_amount`, `created_at`, `updated_at`, `add_on_ids`, `variant`, `add_on_qtys`) VALUES
	(1, 35, 100001, 140.00, '{"id":35,"name":"Primo\'s Supreme","description":"","image":"2022-12-03-638b48cdb03f0.png","price":140,"variations":"[]","add_ons":"[]","tax":0,"available_time_starts":"01:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-03T13:02:05.000000Z","updated_at":"2022-12-03T18:03:44.000000Z","attributes":"[]","category_ids":"[{\\"id\\":\\"9\\",\\"position\\":1}]","choice_options":"[]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":null,"price":null}]', 0.00, 'discount_on_product', 5, 0.00, '2022-12-04 02:04:45', '2022-12-04 02:04:45', '[]', 'null', '[]'),
	(2, 38, 100002, 70.00, '{"id":38,"name":"Strawberry Oreo","description":"","image":"2022-12-04-638c23467a0e7.png","price":55,"variations":[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-04T04:34:14.000000Z","updated_at":"2022-12-04T04:34:14.000000Z","attributes":["5"],"category_ids":[{"id":"6","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"Medium","price":"70.00"}]', 0.00, 'discount_on_product', 2, 0.00, '2022-12-10 10:40:51', '2022-12-10 10:40:51', '[]', '"Medium"', '[]'),
	(3, 2, 100003, 60.00, '{"id":2,"name":"Chocolate Milkt Tea","description":"","image":"2022-12-03-638ad39217db0.png","price":75,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T05:57:03.000000Z","updated_at":"2022-12-03T04:41:54.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":60}]', 0.00, 'discount_on_product', 1, 0.00, '2022-12-10 10:45:00', '2022-12-10 10:45:00', '[]', 'null', '[]'),
	(4, 35, 100003, 140.00, '{"id":35,"name":"Primo\'s Supreme","description":"","image":"2022-12-03-638b48cdb03f0.png","price":140,"variations":"[]","add_ons":"[]","tax":0,"available_time_starts":"01:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-03T13:02:05.000000Z","updated_at":"2022-12-03T18:04:45.000000Z","attributes":"[]","category_ids":"[{\\"id\\":\\"9\\",\\"position\\":1}]","choice_options":"[]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":null,"translations":[]}', '[{"type":null,"price":null}]', 0.00, 'discount_on_product', 2, 0.00, '2022-12-10 10:45:00', '2022-12-10 10:45:00', '[]', 'null', '[]'),
	(5, 3, 100003, 80.00, '{"id":3,"name":"Matcha Milk Tea","description":"A tea based beverage with a combination of vivid green matcha tea powder and milk.","image":"2022-12-03-638ad3c744fe7.png","price":45,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T14:39:23.000000Z","updated_at":"2022-12-03T04:42:47.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Large","price":80}]', 0.00, 'discount_on_product', 1, 0.00, '2022-12-10 10:45:00', '2022-12-10 10:45:00', '[]', 'null', '[]'),
	(6, 3, 100004, 45.00, '{"id":3,"name":"Matcha Milk Tea","description":"A tea based beverage with a combination of vivid green matcha tea powder and milk.","image":"2022-12-03-638ad3c744fe7.png","price":45,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":100}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T14:39:23.000000Z","updated_at":"2023-01-12T02:36:47.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\",\\" SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":"non_veg","translations":[]}', '[{"type":"Small","price":45}]', 0.00, 'discount_on_product', 1, 0.00, '2023-01-24 10:12:21', '2023-01-24 10:12:21', '[]', 'null', '[]'),
	(7, 19, 100004, 65.00, '{"id":19,"name":"Strawberry Yakult","description":"A sweet, fruity yogurt drink poured over ice.","image":"2022-12-03-638ad1cf6d8fe.png","price":65,"variations":"[{\\"type\\":\\"Medium\\",\\"price\\":65},{\\"type\\":\\"Large\\",\\"price\\":85},{\\"type\\":\\"SuperSize\\",\\"price\\":110}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-03T04:30:04.000000Z","updated_at":"2022-12-03T04:34:23.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"4\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Medium\\",\\" Large\\",\\" Super Size\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":65}]', 0.00, 'discount_on_product', 1, 0.00, '2023-01-24 10:12:21', '2023-01-24 10:12:21', '[]', 'null', '[]'),
	(8, 3, 100005, 60.00, '{"id":3,"name":"Matcha Milk Tea","description":"A tea based beverage with a combination of vivid green matcha tea powder and milk.","image":"2022-12-03-638ad3c744fe7.png","price":45,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":100}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T14:39:23.000000Z","updated_at":"2023-01-24T02:12:21.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\",\\" SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":2,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":60}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 11:03:55', '2023-02-02 11:03:55', '[]', 'null', '[]'),
	(9, 19, 100006, 85.00, '{"id":19,"name":"Strawberry Yakult","description":"A sweet, fruity yogurt drink poured over ice.","image":"2022-12-03-638ad1cf6d8fe.png","price":65,"variations":"[{\\"type\\":\\"Medium\\",\\"price\\":65},{\\"type\\":\\"Large\\",\\"price\\":85},{\\"type\\":\\"SuperSize\\",\\"price\\":110}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-03T04:30:04.000000Z","updated_at":"2023-01-24T02:12:21.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"4\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Medium\\",\\" Large\\",\\" Super Size\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":"non_veg","translations":[]}', '[{"type":"Large","price":85}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 11:45:57', '2023-02-02 11:45:57', '[]', 'null', '[]'),
	(10, 67, 100007, 95.00, '{"id":67,"name":"Baby Octopus","description":"","image":"2023-01-13-63c0cfdd7b187.png","price":95,"variations":"[{\\"type\\":\\"6\\",\\"price\\":95}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-13T03:28:29.000000Z","updated_at":"2023-01-13T03:28:29.000000Z","attributes":"[\\"7\\"]","category_ids":"[{\\"id\\":\\"10\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_7\\",\\"title\\":\\"pcs\\",\\"options\\":[\\"6\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"6","price":95}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:34:15', '2023-02-02 14:34:15', '[]', 'null', '[]'),
	(11, 61, 100007, 40.00, '{"id":61,"name":"Flavored Fries","description":"","image":"2023-01-12-63bf8379c4a19.png","price":40,"variations":"[{\\"type\\":\\"Cheese\\",\\"price\\":40},{\\"type\\":\\"Sweet&Sour\\",\\"price\\":40},{\\"type\\":\\"BBQ\\",\\"price\\":40}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-12T03:50:17.000000Z","updated_at":"2023-01-12T03:50:17.000000Z","attributes":"[\\"6\\"]","category_ids":"[{\\"id\\":\\"9\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_6\\",\\"title\\":\\"Flavor\\",\\"options\\":[\\"Cheese\\",\\"Sweet & Sour\\",\\"BBQ\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"Cheese","price":40}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:34:15', '2023-02-02 14:34:15', '[]', 'null', '[]'),
	(12, 59, 100007, 50.00, '{"id":59,"name":"Tuna\\/Chicken Sandwich","description":"","image":"2023-01-13-63c0c6cc97f5e.png","price":50,"variations":"[]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-12T03:44:33.000000Z","updated_at":"2023-01-13T02:49:48.000000Z","attributes":"[]","category_ids":"[{\\"id\\":\\"9\\",\\"position\\":1}]","choice_options":"[]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":null,"price":null}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:34:15', '2023-02-02 14:34:15', '[]', 'null', '[]'),
	(13, 57, 100007, 60.00, '{"id":57,"name":"Nachos Regular","description":"","image":"2023-01-12-63bf8187f15a2.png","price":60,"variations":"[]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-12T03:36:15.000000Z","updated_at":"2023-01-12T03:41:59.000000Z","attributes":"[]","category_ids":"[{\\"id\\":\\"9\\",\\"position\\":1}]","choice_options":"[]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":null,"price":null}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:34:15', '2023-02-02 14:34:15', '[]', 'null', '[]'),
	(14, 50, 100008, 55.00, '{"id":50,"name":"Chocolate Oreo","description":"","image":"2023-01-11-63be33fb99087.png","price":55,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":55},{\\"type\\":\\"Medium\\",\\"price\\":70},{\\"type\\":\\"Large\\",\\"price\\":90},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":110}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-11T03:58:51.000000Z","updated_at":"2023-01-11T03:58:51.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"6\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\"Medium\\",\\"Large\\",\\"SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Small","price":55}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:58:56', '2023-02-02 14:58:56', '[]', 'null', '[]'),
	(15, 49, 100008, 55.00, '{"id":49,"name":"Tiramisu","description":"","image":"2023-01-11-63be33270d878.png","price":55,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":55},{\\"type\\":\\"Medium\\",\\"price\\":70},{\\"type\\":\\"Large\\",\\"price\\":90},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":110}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-11T03:55:19.000000Z","updated_at":"2023-01-11T03:55:19.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"6\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\"Medium\\",\\"Large\\",\\"SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Small","price":55}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 14:58:56', '2023-02-02 14:58:56', '[]', 'null', '[]'),
	(16, 67, 100009, 95.00, '{"id":67,"name":"Baby Octopus","description":"","image":"2023-01-13-63c0cfdd7b187.png","price":95,"variations":"[{\\"type\\":\\"6\\",\\"price\\":95}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-13T03:28:29.000000Z","updated_at":"2023-02-02T06:34:15.000000Z","attributes":"[\\"7\\"]","category_ids":"[{\\"id\\":\\"10\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_7\\",\\"title\\":\\"pcs\\",\\"options\\":[\\"6\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":null,"translations":[]}', '[{"type":"6","price":95}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 15:15:00', '2023-02-02 15:15:00', '[]', 'null', '[]'),
	(17, 60, 100010, 40.00, '{"id":60,"name":"Cheese Sticks","description":"","image":"2023-01-12-63bf82b69068f.png","price":40,"variations":[],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-12T03:47:02.000000Z","updated_at":"2023-01-12T03:47:02.000000Z","attributes":[],"category_ids":[{"id":"9","position":1}],"choice_options":[],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:08:14', '2023-02-02 21:08:14', '[]', '""', '[]'),
	(18, 50, 100010, 70.00, '{"id":50,"name":"Chocolate Oreo","description":"","image":"2023-01-11-63be33fb99087.png","price":55,"variations":[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"SUPERSIZE","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-11T03:58:51.000000Z","updated_at":"2023-02-02T06:58:56.000000Z","attributes":["5"],"category_ids":[{"id":"6","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":"70.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:08:14', '2023-02-02 21:08:14', '[]', '"Medium"', '[]'),
	(19, 65, 100011, 65.00, '{"id":65,"name":"Crab Sticks","description":"","image":"2023-01-13-63c0cd775fa95.png","price":65,"variations":[{"type":"6","price":65}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-13T03:18:15.000000Z","updated_at":"2023-01-13T03:18:15.000000Z","attributes":["7"],"category_ids":[{"id":"10","position":1}],"choice_options":[{"name":"choice_7","title":"pcs","options":["6"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"6","price":"65.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:13:41', '2023-02-02 21:13:41', '[]', '"6"', '[]'),
	(20, 47, 100011, 65.00, '{"id":47,"name":"Lychee Yakult Fruit Tea","description":"","image":"2023-01-11-63be31397ed07.png","price":65,"variations":[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-11T03:47:05.000000Z","updated_at":"2023-01-11T03:47:05.000000Z","attributes":["5"],"category_ids":[{"id":"4","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Medium","Large","SUPERSIZE"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":"65.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:13:41', '2023-02-02 21:13:41', '[]', '"Medium"', '[]'),
	(21, 38, 100011, 55.00, '{"id":38,"name":"Strawberry Oreo","description":"","image":"2022-12-04-638c23467a0e7.png","price":55,"variations":[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-04T04:34:14.000000Z","updated_at":"2022-12-04T04:34:14.000000Z","attributes":["5"],"category_ids":[{"id":"6","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"Small","price":"55.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:13:41', '2023-02-02 21:13:41', '[]', '"Small"', '[]'),
	(22, 37, 100011, 90.00, '{"id":37,"name":"Dark Chocolate","description":"","image":"2022-12-04-638c211dd294d.png","price":55,"variations":[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-12-04T04:25:01.000000Z","updated_at":"2022-12-04T04:25:01.000000Z","attributes":["5"],"category_ids":[{"id":"6","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":0,"product_type":null,"translations":[]}', '[{"type":"Large","price":"90.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-02 21:13:41', '2023-02-02 21:13:41', '[]', '"Large"', '[]'),
	(23, 50, 100012, 55.00, '{"id":50,"name":"Chocolate Oreo","description":"","image":"2023-01-11-63be33fb99087.png","price":55,"variations":[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"SUPERSIZE","price":110}],"add_ons":[],"tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-11T03:58:51.000000Z","updated_at":"2023-02-02T06:58:56.000000Z","attributes":["5"],"category_ids":[{"id":"6","position":1}],"choice_options":[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}],"discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":"non_veg","translations":[]}', '[{"type":"Small","price":"55.00"}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-05 17:53:22', '2023-02-05 17:53:22', '[]', '"Small"', '[]'),
	(24, 67, 100013, 95.00, '{"id":67,"name":"Baby Octopus","description":"","image":"2023-01-13-63c0cfdd7b187.png","price":95,"variations":"[{\\"type\\":\\"6\\",\\"price\\":95}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2023-01-13T03:28:29.000000Z","updated_at":"2023-02-02T07:15:00.000000Z","attributes":"[\\"7\\"]","category_ids":"[{\\"id\\":\\"10\\",\\"position\\":1}]","choice_options":"[{\\"name\\":\\"choice_7\\",\\"title\\":\\"pcs\\",\\"options\\":[\\"6\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":2,"product_type":null,"translations":[]}', '[{"type":"6","price":95}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-09 11:09:29', '2023-02-09 11:09:29', '[]', 'null', '[]'),
	(25, 2, 100013, 45.00, '{"id":2,"name":"Chocolate Milkt Tea","description":"","image":"2022-12-03-638ad39217db0.png","price":75,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":100}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T05:57:03.000000Z","updated_at":"2023-01-12T02:37:02.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\",\\" SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":1,"product_type":"non_veg","translations":[]}', '[{"type":"Small","price":45}]', 0.00, 'discount_on_product', 1, 0.00, '2023-02-09 11:09:29', '2023-02-09 11:09:29', '[]', 'null', '[]'),
	(26, 3, 100014, 60.00, '{"id":3,"name":"Matcha Milk Tea","description":"A tea based beverage with a combination of vivid green matcha tea powder and milk.","image":"2022-12-03-638ad3c744fe7.png","price":45,"variations":"[{\\"type\\":\\"Small\\",\\"price\\":45},{\\"type\\":\\"Medium\\",\\"price\\":60},{\\"type\\":\\"Large\\",\\"price\\":80},{\\"type\\":\\"SUPERSIZE\\",\\"price\\":100}]","add_ons":"[]","tax":0,"available_time_starts":"10:30:00","available_time_ends":"19:30:00","status":1,"created_at":"2022-11-26T14:39:23.000000Z","updated_at":"2023-02-02T03:03:55.000000Z","attributes":"[\\"5\\"]","category_ids":"[{\\"id\\":\\"1\\",\\"position\\":1},{\\"id\\":\\"2\\",\\"position\\":2}]","choice_options":"[{\\"name\\":\\"choice_5\\",\\"title\\":\\"Size\\",\\"options\\":[\\"Small\\",\\" Medium\\",\\" Large\\",\\" SUPERSIZE\\"]}]","discount":0,"discount_type":"percent","tax_type":"percent","set_menu":0,"branch_id":1,"colors":null,"popularity_count":3,"product_type":"non_veg","translations":[]}', '[{"type":"Medium","price":60}]', 0.00, 'discount_on_product', 2, 0.00, '2023-02-09 11:21:13', '2023-02-09 11:21:13', '[]', 'null', '[]');

-- Dumping structure for table tea2go.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email_or_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  KEY `password_resets_email_index` (`email_or_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.password_resets: ~0 rows (approximately)
INSERT INTO `password_resets` (`email_or_phone`, `token`, `created_at`, `phone`) VALUES
	('laurianchristinejoy@gmail.com', '2734', '2023-01-20 10:16:55', NULL);

-- Dumping structure for table tea2go.phone_verifications
CREATE TABLE IF NOT EXISTS `phone_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.phone_verifications: ~6 rows (approximately)
INSERT INTO `phone_verifications` (`id`, `phone`, `token`, `created_at`, `updated_at`) VALUES
	(1, '+639063608490', '3587', '2022-12-03 22:47:11', '2022-12-03 22:47:11'),
	(2, '+639063608490', '1817', '2022-12-03 23:08:09', '2022-12-03 23:08:09'),
	(3, '+639063608490', '4520', '2022-12-03 23:27:18', '2022-12-03 23:27:18'),
	(4, '+639063608490', '8999', '2022-12-03 23:28:48', '2022-12-03 23:28:48'),
	(5, '+639063608490', '1577', '2022-12-03 23:32:06', '2022-12-03 23:32:06'),
	(6, '+639063608490', '1800', '2022-12-03 23:42:51', '2022-12-03 23:42:51');

-- Dumping structure for table tea2go.point_transitions
CREATE TABLE IF NOT EXISTS `point_transitions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.point_transitions: ~0 rows (approximately)
INSERT INTO `point_transitions` (`id`, `user_id`, `description`, `type`, `amount`, `created_at`, `updated_at`) VALUES
	(1, 1, 'admin Added point', 'point_in', 100.00, '2022-12-04 01:16:51', '2022-12-04 01:16:51');

-- Dumping structure for table tea2go.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `add_ons` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(8,2) NOT NULL DEFAULT '0.00',
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attributes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `tax_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `set_menu` tinyint(1) NOT NULL DEFAULT '0',
  `branch_id` bigint NOT NULL DEFAULT '1',
  `colors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `popularity_count` int NOT NULL DEFAULT '0',
  `product_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'veg, non_veg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.products: ~66 rows (approximately)
INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `variations`, `add_ons`, `tax`, `available_time_starts`, `available_time_ends`, `status`, `created_at`, `updated_at`, `attributes`, `category_ids`, `choice_options`, `discount`, `discount_type`, `tax_type`, `set_menu`, `branch_id`, `colors`, `popularity_count`, `product_type`) VALUES
	(2, 'Chocolate Milkt Tea', '', '2022-12-03-638ad39217db0.png', 75.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-26 13:57:03', '2023-02-09 11:09:29', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 2, 'non_veg'),
	(3, 'Matcha Milk Tea', 'A tea based beverage with a combination of vivid green matcha tea powder and milk.', '2022-12-03-638ad3c744fe7.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-26 22:39:23', '2023-02-09 11:21:13', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 4, 'non_veg'),
	(4, 'Wintermelon', 'classic winter melon milk tea made with real tea leaf & comes with tapioca pearl or any sinker available at the time of order', '2022-12-03-638ad401a83b7.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 18:55:02', '2023-01-12 10:36:32', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(5, 'Okinawa', 'Tasty blend of black tea, milk, and sweetener.', '2022-12-03-638ac5efcab31.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:03:49', '2023-01-12 10:36:17', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(6, 'Taro', 'Taro flavored milk tea.', '2022-12-03-638ac67a9093e.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:12:21', '2023-01-12 10:36:01', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(7, 'Strawberry', 'Sweet and delicious strawberry milk tea.', '2022-12-03-638ac73010ab6.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:16:21', '2023-01-12 10:35:38', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(8, 'Mango', '', '2022-12-03-638ad4652044e.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:20:49', '2023-01-12 10:35:23', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(9, 'Vanilla', '', '2022-12-03-638ad4b3d574b.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:25:18', '2023-01-12 10:32:37', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(10, 'Caramel', '', '2022-12-03-638ad604263e8.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:35:06', '2023-01-12 10:31:37', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(11, 'Hazlenut', '', '2023-01-12-63bf72dd3e365.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:38:34', '2023-01-12 10:39:51', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(12, 'Hokkaido', '', '2022-12-03-638ad54a90259.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:40:47', '2023-01-12 10:43:40', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(13, 'Almond', '', '2023-01-12-63bf73c990911.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:44:20', '2023-01-12 10:43:21', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(14, 'Blueberry', 'Blueberry flavored milk tea.', '2022-12-03-638ac7a50673e.png', 45.00, '[{"type":"Small","price":45},{"type":"Medium","price":60},{"type":"Large","price":80},{"type":"SUPERSIZE","price":100}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-11-28 19:50:35', '2023-01-12 10:43:58', '["5"]', '[{"id":"1","position":1},{"id":"2","position":2}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(15, 'Blueberry Fruit Tea', 'Freshly brewed tea infused with seasonal squeezed fruit with a hint of blueberry.', '2022-12-03-638ad32233037.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 12:15:40', '2022-12-03 16:00:33', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(16, 'Green Apple Fruit Tea', 'Green apple infused tea', '2022-12-03-638ad2cd78b92.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 12:19:07', '2022-12-03 16:01:14', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(17, 'Lychee Fruit Tea', 'Lychee flavored fruit tea', '2022-12-03-638ad29bd572a.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 12:22:15', '2022-12-03 16:00:00', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(18, 'Strawberry Fruit Tea', 'Strawberry flavored jasmine green tea with fruit jelly', '2022-12-03-638ad23ed27e5.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 12:25:20', '2022-12-03 15:59:21', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(19, 'Strawberry Yakult', 'A sweet, fruity yogurt drink poured over ice.', '2022-12-03-638ad1cf6d8fe.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SuperSize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 12:30:04', '2023-02-02 11:45:57', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium"," Large"," Super Size"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 2, 'non_veg'),
	(20, 'Mango Fruit Tea', 'Mango flavoured fruit tea.', '2022-12-03-638b01709ad17.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 15:57:36', '2022-12-03 15:57:36', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(21, 'Lemon Fruit Tea', 'Fresh Lemon With Fresh Brewed tea', '2023-01-12-63bf70267b2da.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"Supersize","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:06:10', '2023-01-12 10:27:50', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(22, 'Tapioca Pearl', '', '2023-01-12-63bf785b522d2.png', 10.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:34:22', '2023-01-12 11:02:51', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(23, 'Nata de Coco', '', '2023-01-12-63bf7901b0483.png', 10.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:38:37', '2023-01-12 11:05:37', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(24, 'Coffee Jelly', '', '2023-01-12-63bf79a318bf4.png', 10.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:41:10', '2023-01-12 11:08:19', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(25, 'Mixed Fruit Jelly', '', '2023-01-12-63bf79f9051a4.png', 10.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:44:55', '2023-01-12 11:09:45', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(26, 'Cheesecake Toppings', '', '2023-01-12-63bf7aae91d6e.png', 25.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:47:58', '2023-01-12 11:12:46', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(27, 'Egg Pudding', '', '2023-01-12-63bf7a36b62db.png', 15.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:51:09', '2023-01-12 11:10:46', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(28, 'Rock & Salt Cheese', '', '2023-01-12-63bf7b8a66f01.png', 15.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:57:38', '2023-01-12 11:16:26', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(29, 'Cream Cheese', '', '2023-01-12-63bf780f72a6d.png', 20.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 16:59:36', '2023-01-12 11:01:35', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(30, 'Cream Puff', '', '2023-01-12-63bf76da3a973.png', 15.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 17:02:01', '2023-01-12 10:56:26', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(31, 'Creme Brulee', '', '2023-01-12-63bf7589009de.png', 15.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 17:04:58', '2023-01-12 10:50:49', '[]', '[{"id":"7","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(32, 'Cheesecake Oreo', '', '2022-12-03-638b162e8fb59.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 17:26:06', '2022-12-03 17:26:06', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(33, 'Matcha Oreo', '', '2022-12-03-638b17037433e.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 17:29:39', '2023-02-19 16:52:57', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," Supersize"]}]', 0.00, 'percent', 'percent', 1, 1, NULL, 0, NULL),
	(34, 'Okinawa Oreo', '', '2022-12-03-638b17b565448.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-03 17:32:37', '2022-12-03 17:32:37', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(35, 'Primo\'s Supreme', '', '2022-12-03-638b48cdb03f0.png', 140.00, '[]', '[]', 0.00, '01:30:00', '19:30:00', 1, '2022-12-03 21:02:05', '2023-02-19 16:52:25', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 1, 1, NULL, 2, NULL),
	(36, 'Red Velvet', '', '2022-12-04-638c2084cbc99.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-04 12:22:28', '2022-12-04 12:22:28', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(37, 'Dark Chocolate', '', '2022-12-04-638c211dd294d.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-04 12:25:01', '2022-12-04 12:25:01', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(38, 'Strawberry Oreo', '', '2022-12-04-638c23467a0e7.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"Supersize","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2022-12-04 12:34:14', '2022-12-04 12:34:14', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","Supersize"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(39, 'Grapes Fruit Tea', '', '2023-01-11-63be2f950da4f.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"SUPERSIZE","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:08:27', '2023-01-11 11:40:05', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(40, 'Grapes Yakult Fruit Tea', '', '2023-01-11-63be2f849feb7.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:12:33', '2023-01-11 11:39:48', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(41, 'Kiwi Fruit Tea', '', '2023-01-11-63be2f5597903.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"SUPERSIZE","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:17:28', '2023-02-19 17:21:15', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 1, 1, NULL, 0, 'non_veg'),
	(42, 'Kiwi Yakult Fruit Tea', '', '2023-01-11-63be2f458e8a8.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:19:28', '2023-01-11 11:38:45', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(43, 'Passion Fruit Tea', '', '2023-01-11-63be2f17da2fd.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"SUPERSIZE","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:22:14', '2023-01-11 11:37:59', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small"," Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(44, 'Passion Yakult Fruit Tea', '', '2023-01-11-63be2f048389e.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:23:27', '2023-01-11 11:37:40', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(45, 'Orange Fruit Tea', '', '2023-01-11-63be2e6996892.png', 30.00, '[{"type":"Small","price":30},{"type":"Medium","price":45},{"type":"Large","price":60},{"type":"SUPERSIZE","price":80}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:35:05', '2023-01-11 11:35:05', '["5"]', '[{"id":"5","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(46, 'Orange Yakult Fruit Tea', '', '2023-01-11-63be2ec5552b5.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:36:37', '2023-01-11 11:36:37', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium","Large","SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(47, 'Lychee Yakult Fruit Tea', '', '2023-01-11-63be31397ed07.png', 65.00, '[{"type":"Medium","price":65},{"type":"Large","price":85},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:47:05', '2023-02-19 15:37:57', '["5"]', '[{"id":"4","position":1}]', '[{"name":"choice_5","title":"Size","options":["Medium"," Large"," SUPERSIZE"]}]', 0.00, 'percent', 'percent', 1, 1, NULL, 0, 'non_veg'),
	(48, 'Triple Chocolate', '', '2023-01-11-63be32a806b71.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:53:12', '2023-01-11 11:53:12', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, 'non_veg'),
	(49, 'Tiramisu', '', '2023-01-11-63be33270d878.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:55:19', '2023-02-02 14:58:56', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 1, 'non_veg'),
	(50, 'Chocolate Oreo', '', '2023-01-11-63be33fb99087.png', 55.00, '[{"type":"Small","price":55},{"type":"Medium","price":70},{"type":"Large","price":90},{"type":"SUPERSIZE","price":110}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-11 11:58:51', '2023-02-02 14:58:56', '["5"]', '[{"id":"6","position":1}]', '[{"name":"choice_5","title":"Size","options":["Small","Medium","Large","SUPERSIZE"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 1, 'non_veg'),
	(51, 'Cheese', '', '2023-01-12-63bf7cb75e5dd.png', 80.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:21:27', '2023-01-12 11:21:27', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(52, 'Ham & Cheese', '', '2023-01-12-63bf7d3e3cf25.png', 100.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:23:42', '2023-01-12 11:23:42', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(53, 'Hawaiian', '', '2023-01-12-63bf7e0898a3d.png', 100.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:27:04', '2023-01-12 11:27:04', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(54, 'Pepperoni', '', '2023-01-13-63c0c72df34de.png', 100.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:29:13', '2023-01-13 10:51:25', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(55, 'Ham & Cheese Overload', '', '2023-01-13-63c0c780e9300.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:31:33', '2023-01-13 10:52:48', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(56, 'Hawaiian Overload', '', '2023-01-12-63bf7fb694fe2.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:34:14', '2023-01-12 11:34:14', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(57, 'Nachos Regular', '', '2023-01-12-63bf8187f15a2.png', 60.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:36:15', '2023-02-02 14:34:15', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 1, NULL),
	(58, 'Cheese Beefy Nachos', '', '2023-01-12-63bf80f119e49.png', 120.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:39:29', '2023-01-12 11:39:29', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(59, 'Tuna/Chicken Sandwich', '', '2023-01-13-63c0c6cc97f5e.png', 50.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:44:33', '2023-02-02 14:34:15', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 1, NULL),
	(60, 'Cheese Sticks', '', '2023-01-12-63bf82b69068f.png', 40.00, '[]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:47:02', '2023-01-12 11:47:02', '[]', '[{"id":"9","position":1}]', '[]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(61, 'Flavored Fries', '', '2023-01-12-63bf8379c4a19.png', 40.00, '[{"type":"Cheese","price":40},{"type":"Sweet&Sour","price":40},{"type":"BBQ","price":40}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-12 11:50:17', '2023-02-02 14:34:15', '["6"]', '[{"id":"9","position":1}]', '[{"name":"choice_6","title":"Flavor","options":["Cheese","Sweet & Sour","BBQ"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 1, NULL),
	(62, 'Octobits', '', '2023-01-13-63c0c9d196f4d.png', 65.00, '[{"type":"6","price":65}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:02:41', '2023-01-13 11:02:41', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(63, 'Baconbits', '', '2023-01-13-63c0cba1381f6.png', 65.00, '[{"type":"6","price":65}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:10:25', '2023-01-13 11:10:25', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(64, 'Ham & Cheese Takoyaki', '', '2023-01-13-63c0cc7e2392c.png', 65.00, '[{"type":"6","price":65}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:14:06', '2023-01-13 11:14:06', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(65, 'Crab Sticks', '', '2023-01-13-63c0cd775fa95.png', 65.00, '[{"type":"6","price":65}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:18:15', '2023-01-13 11:18:15', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(66, 'Veggies & Cheese', '', '2023-01-13-63c0cef750044.png', 50.00, '[{"type":"6","price":50}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:24:39', '2023-01-13 11:24:39', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 0, 1, NULL, 0, NULL),
	(67, 'Baby Octopus', '', '2023-01-13-63c0cfdd7b187.png', 95.00, '[{"type":"6","price":95}]', '[]', 0.00, '10:30:00', '19:30:00', 1, '2023-01-13 11:28:29', '2023-02-19 19:35:27', '["7"]', '[{"id":"10","position":1}]', '[{"name":"choice_7","title":"pcs","options":["6"]}]', 0.00, 'percent', 'percent', 1, 1, NULL, 3, 'non_veg');

-- Dumping structure for table tea2go.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.reviews: ~3 rows (approximately)
INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`, `order_id`) VALUES
	(1, 67, 2, 'Yummy', '[]', 5, '2023-02-09 11:17:04', '2023-02-09 11:17:04', 100013),
	(2, 2, 2, 'Yummy..', '[]', 5, '2023-02-09 11:17:12', '2023-02-09 11:17:12', 100013),
	(3, 3, 2, 'Delicious', '[]', 5, '2023-02-09 11:25:02', '2023-02-09 11:25:02', 100014);

-- Dumping structure for table tea2go.social_medias
CREATE TABLE IF NOT EXISTS `social_medias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.social_medias: ~0 rows (approximately)

-- Dumping structure for table tea2go.soft_credentials
CREATE TABLE IF NOT EXISTS `soft_credentials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.soft_credentials: ~0 rows (approximately)

-- Dumping structure for table tea2go.tables
CREATE TABLE IF NOT EXISTS `tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  `capacity` int NOT NULL DEFAULT '1',
  `branch_id` bigint DEFAULT NULL,
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.tables: ~22 rows (approximately)
INSERT INTO `tables` (`id`, `number`, `capacity`, `branch_id`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, 10, 1, '2022-11-26 11:31:51', '2022-11-26 11:31:56'),
	(2, 2, 4, 10, 1, '2023-02-02 13:54:31', '2023-02-02 13:54:31'),
	(3, 3, 5, 10, 1, '2023-02-02 13:55:02', '2023-02-02 13:55:02'),
	(4, 4, 4, 10, 1, '2023-02-02 13:55:19', '2023-02-02 13:55:19'),
	(5, 1, 8, 1, 1, '2023-02-02 13:55:40', '2023-02-02 13:55:40'),
	(6, 2, 4, 1, 1, '2023-02-02 13:55:50', '2023-02-02 13:55:50'),
	(8, 4, 4, 1, 1, '2023-02-02 13:56:16', '2023-02-02 13:56:16'),
	(9, 5, 4, 1, 1, '2023-02-02 13:56:25', '2023-02-02 13:56:25'),
	(11, 1, 4, 15, 1, '2023-02-02 13:56:50', '2023-02-02 13:56:50'),
	(12, 2, 6, 15, 1, '2023-02-02 13:56:59', '2023-02-02 13:56:59'),
	(13, 3, 4, 15, 1, '2023-02-02 13:57:07', '2023-02-02 13:57:07'),
	(14, 4, 4, 15, 1, '2023-02-02 13:57:16', '2023-02-02 13:57:16'),
	(15, 1, 4, 14, 1, '2023-02-02 13:57:23', '2023-02-02 13:57:23'),
	(16, 2, 8, 14, 1, '2023-02-02 13:57:32', '2023-02-02 13:57:32'),
	(17, 3, 6, 14, 1, '2023-02-02 13:57:40', '2023-02-02 13:57:40'),
	(18, 4, 4, 14, 1, '2023-02-02 13:57:50', '2023-02-02 13:57:50'),
	(19, 5, 4, 14, 1, '2023-02-02 13:58:00', '2023-02-02 13:58:00'),
	(20, 1, 4, 13, 1, '2023-02-02 13:58:11', '2023-02-02 13:58:11'),
	(21, 2, 6, 13, 1, '2023-02-02 13:58:20', '2023-02-02 13:58:20'),
	(22, 3, 4, 13, 1, '2023-02-02 13:58:28', '2023-02-02 13:58:28'),
	(23, 4, 6, 13, 1, '2023-02-02 13:58:35', '2023-02-02 13:58:35'),
	(24, 5, 4, 13, 1, '2023-02-02 13:58:42', '2023-02-02 13:58:42');

-- Dumping structure for table tea2go.table_orders
CREATE TABLE IF NOT EXISTS `table_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `table_id` bigint NOT NULL,
  `branch_table_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_table_token_is_expired` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.table_orders: ~0 rows (approximately)

-- Dumping structure for table tea2go.time_schedules
CREATE TABLE IF NOT EXISTS `time_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day` int NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.time_schedules: ~7 rows (approximately)
INSERT INTO `time_schedules` (`id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
	(1, 1, '10:30:00', '19:30:00', NULL, NULL),
	(2, 2, '10:30:00', '19:30:00', NULL, NULL),
	(3, 3, '10:30:00', '19:30:00', NULL, NULL),
	(4, 4, '10:30:00', '19:30:00', NULL, NULL),
	(5, 5, '10:30:00', '19:30:00', NULL, NULL),
	(6, 6, '10:30:00', '19:30:00', NULL, NULL),
	(8, 0, '01:30:00', '12:30:00', NULL, NULL);

-- Dumping structure for table tea2go.track_deliverymen
CREATE TABLE IF NOT EXISTS `track_deliverymen` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `longitude` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.track_deliverymen: ~0 rows (approximately)

-- Dumping structure for table tea2go.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `translationable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.translations: ~3 rows (approximately)
INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`) VALUES
	(1, 'App\\Model\\Category', 1, 'fil', 'name', 'Milk Tea'),
	(2, 'App\\Model\\Category', 2, 'fil', 'name', 'Malamig'),
	(3, 'App\\Model\\Attribute', 1, 'fil', 'name', 'Milk Tea');

-- Dumping structure for table tea2go.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'null for user, kitchen for kitchen user',
  `is_active` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = inactive',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verification_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` decimal(8,2) NOT NULL DEFAULT '0.00',
  `temporary_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.users: ~5 rows (approximately)
INSERT INTO `users` (`id`, `f_name`, `l_name`, `email`, `user_type`, `is_active`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `email_verification_token`, `phone`, `cm_firebase_token`, `point`, `temporary_token`) VALUES
	(2, 'Christine', 'Laurian', 'laurianchristinejoy@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$cvbDhHgVUQmp7nhJ6cqGbu0g5CfLZ.ybsatnE/KCmoVX7/4sDH3Ym', NULL, '2022-11-27 10:24:05', '2023-02-16 12:09:33', NULL, '+639058083245', 'dXa-92J9Q2KuM9U92MIC2f:APA91bGopmmNJcczWRWbn4oMJ-Wa5qKVkKKbFtriUSBG8xQsjuYBzMgJfkBxGA3Xg2abib-tV5fifTlSJ13M8dKUMxKb6trX92j7ryuA0AGK_owMmKE7qJRdz-osNL6KtvmF4DGkGROR', 0.00, '2Uii1mJAcPktwCbywvBlQveU8SbOWfXeHt9sm2bh'),
	(3, 'Evander', 'yadao', 'yadaomeg17@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$yuCQP9cH4vLma2.iBqm8LO.gy/5PwplnIGPcXHjpPLKOOgsl/mp4C', NULL, '2022-12-03 13:08:08', '2022-12-03 13:08:08', NULL, '+639074303654', 'cvThZBr8SRuUt2FqWEKKld:APA91bH22Bp4-DRnhCOqQSqupYof4GaVz-drR4Hb4gItmPeE_G85RouU8bTXMhy0AVF4xO0bph8GWdHVe47jx6tpbtIbUvb4cJI0HN68H-YaL-TYRx7TC6M7tOaoB_gIn394WlucjxSe', 0.00, NULL),
	(4, 'Louiegie', 'villamanca', 'teapalm123123@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$BI.hgTPn7whe32iTstihS.LU.DF/2XxTTDS6GrEJIxTOxsM8Zda2W', NULL, '2022-12-10 10:43:35', '2022-12-10 10:43:35', NULL, '+639183374419', 'cG23ITMiQFCVXb4CUqehIp:APA91bHrnRUVNW6NM4kP7TSFEA2Ppzcspdz__iDlps80UdPj29zhghPJ6cGetqabd_Pth-D1EkXBPA9cgizZMgvtzEkRclkFCfygJ-4EllbFbs0T_WuZsB2ENH1eQgylNXcxKVWojjhl', 0.00, NULL),
	(5, 'John', 'Qwerty', 'johnqwerty@gmail.com', NULL, 1, NULL, 0, NULL, '$2y$10$1ziiRQXzaWCUGWzwbLU9z.HBEnKXS1AAFyUp.WQV.o5bKaqPHFFXC', NULL, '2023-02-09 11:26:36', '2023-02-09 11:26:36', NULL, '+639485868458', 'f8hEko2GT0CzFpNWLdo-Ix:APA91bEdLNtuR4vuG-wYtRlWEDHXgXr6c1VT5_Gl_8BDylJuDbK9rHEkXcEFCwLPvTlgwhXeVh_d8DMeB_7WDoHsDrdsVPSZxPIzXSM0BSX8y93YbZcxPJsLX_S_0PK6oYlS64nz9eCA', 0.00, NULL);

-- Dumping structure for table tea2go.wishlists
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table tea2go.wishlists: ~3 rows (approximately)
INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 2, '2022-11-26 17:10:58', '2022-11-26 17:10:58'),
	(2, 1, 3, '2022-11-26 23:36:46', '2022-11-26 23:36:46'),
	(4, 2, 63, '2023-02-02 10:49:11', '2023-02-02 10:49:11');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
