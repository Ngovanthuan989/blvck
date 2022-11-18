-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 11:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `prepay` int(11) DEFAULT NULL,
  `restaurant` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `address`, `phone`, `time`, `email`, `number`, `message`, `prepay`, `restaurant`, `created_at`, `updated_at`) VALUES
(6, 'Minh Đức', 'Hà Nội', '0968868201', '2018-03-27 08:15:07', 'minhducit@micoem.vn', 10, 'Đặt bàn tiệc', 10000000, 'Số 301 Tô Hiệu, Q. Cầu Giấy, Hà Nội', '2018-03-27 01:15:33', '2018-03-27 01:15:33'),
(7, 'Tran Hai Nam', 'co dong', '974561732', '2018-04-18 15:15:00', 'vn3ctran@gmail.com', 4, 'khong lam gi dau', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-12 08:06:05', '2018-04-12 08:06:05'),
(8, 'Ahn', 'Korea(Perfect Private Poll Villas in Danang)', '821091665795', '2018-04-28 19:00:00', 'yoonyzzang@nate.com', 15, '10 Adults, 5children.\r\nRiver view seats Please.', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-22 07:30:35', '2018-04-22 07:30:35'),
(9, 'Eva', 'Vanda hotel,Danabg', '8201056281451', '2018-04-23 19:30:00', 'evachoi8855@naver.com', 2, 'Today 4/23 7:30pm', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-23 11:13:57', '2018-04-23 11:13:57'),
(10, 'Phạm hữu Thuấn', '82 Thanh Long tp Đ N', '0914242292', '2018-04-28 18:40:00', 'anhsooc@gmail.com', 10, 'Chúng tôi đặt bàn ăn tối cho gia đình. Xin cám ơn .', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-24 12:36:00', '2018-04-24 12:36:00'),
(11, 'park hyun sik', 'in danang. vin pearl 1 resort.', '0909585700', '2018-04-26 18:00:00', 'celisupero@gmail.com', 9, 'april. 26th. please.', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-25 14:01:09', '2018-04-25 14:01:09'),
(12, 'Kiana', 'Carle', '85366966842', '2018-04-27 18:00:00', 'kianacarle@yahoo.com', 11, 'There will 6 adults and 5kids, if it’s not raining can we please sit outside. If it’s raining please seat us inside.\r\nThank you', NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-26 10:52:13', '2018-04-26 10:52:13'),
(13, 'Hà hoàng anh', '120 nguyễn văn thoại', '0916786355', '2018-04-27 11:30:00', 'hoanganh723@gmail.com', 4, NULL, NULL, 'Số 4 Bạch Đằng, Q. Hải Châu, Tp. Đà Nẵng', '2018-04-26 16:54:26', '2018-04-26 16:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `title`, `slug`, `parent`, `template`, `icon`, `description`, `image`, `post_type`, `is_hide`, `language`, `created_at`, `updated_at`) VALUES
(1, 'LATEST RELEASES', 'latest-releases', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-05-10 13:34:16'),
(2, 'LATEST RELEASES', 'latest-releases', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-05-10 13:34:16'),
(39, 'HEADWEAR', 'headwear', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-05-10 13:34:58'),
(40, 'HEADWEAR', 'headwear', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-05-10 13:34:58'),
(41, 'ACCESSORIES', 'accessories', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(42, 'ACCESSORIES', 'accessories', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(43, 'TEES', 'tees', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(44, 'TEES', 'tees', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(45, 'BOTTOMS', 'bottoms', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(46, 'BOTTOMS', 'bottoms', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(47, 'COMBATS', 'combats', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(48, 'COMBATS', 'combats', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(13, 'Policies', 'policies', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'vn', NULL, '2022-05-11 01:16:25'),
(14, 'Policies', 'policies', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'en', NULL, '2022-05-11 01:16:41'),
(50, 'HOODIES', 'hoodies', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(49, 'HOODIES', 'hoodies', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `category_post_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`category_post_id`, `category_id`, `post_id`, `updated_at`, `created_at`) VALUES
(218, 39, 52, NULL, NULL),
(216, 39, 51, NULL, NULL),
(214, 39, 54, NULL, NULL),
(212, 39, 53, NULL, NULL),
(206, 39, 56, NULL, NULL),
(204, 39, 55, NULL, NULL),
(210, 39, 58, NULL, NULL),
(208, 39, 57, NULL, NULL),
(209, 1, 58, NULL, NULL),
(207, 1, 57, NULL, NULL),
(205, 1, 56, NULL, NULL),
(203, 1, 55, NULL, NULL),
(213, 1, 54, NULL, NULL),
(211, 1, 53, NULL, NULL),
(196, 13, 84, NULL, NULL),
(195, 13, 83, NULL, NULL),
(198, 13, 82, NULL, NULL),
(197, 13, 81, NULL, NULL),
(182, 13, 80, NULL, NULL),
(181, 13, 79, NULL, NULL),
(220, 13, 86, NULL, NULL),
(219, 13, 85, NULL, NULL),
(217, 1, 52, NULL, NULL),
(215, 1, 51, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `phone`, `email`, `address`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:29:44', '2022-05-14 04:29:44'),
(2, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:31:45', '2022-05-14 04:31:45'),
(3, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:32:09', '2022-05-14 04:32:09'),
(4, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:32:39', '2022-05-14 04:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `group_mail`
--

CREATE TABLE `group_mail` (
  `group_mail_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_mail`
--

INSERT INTO `group_mail` (`group_mail_id`, `name`, `description`) VALUES
(1, 'Mail Order', 'Mail Order');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `infor_id` int(11) NOT NULL,
  `slug_type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`infor_id`, `slug_type_input`, `content`, `language`, `updated_at`) VALUES
(1, 'logo', '/kcfinder-master/upload/images/cacParis.png', 'vn', '2022-05-14 06:09:06'),
(2, 'logo', '/kcfinder-master/upload/images/untitled.png', 'en', '2022-05-10 14:06:49'),
(3, 'icon', 'site/cacParis.png', 'vn', '2022-05-14 06:09:06'),
(4, 'icon', 'site/cacParis.png', 'en', '2022-05-10 12:32:43'),
(5, 'hotline', '0346533312', 'vn', '2022-05-10 12:32:34'),
(6, 'hotline', '0346533312', 'en', '2022-05-10 14:12:00'),
(7, 'email', 'buituanviet1234@gmail.com', 'vn', '2022-05-10 12:32:34'),
(8, 'email', 'buituanviet1234@gmail.com', 'en', '2022-05-10 14:12:00'),
(9, 'logo-banner', '/public/kcfinder-master/upload/images/thongtintrang/logo.png', 'vn', NULL),
(10, 'logo-banner', '/public/kcfinder-master/upload/images/thongtintrang/logo.png', 'en', '2019-01-09 07:34:59'),
(11, 'fanpage-facebook', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=581707311893144&autoLogAppEvents=1\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/vn3ctran\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/vn3ctran\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/vn3ctran\">Công ty cổ phần công nghệ VN3C Việt Nam</a></blockquote></div>', 'vn', '2019-01-10 07:47:30'),
(12, 'fanpage-facebook', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=581707311893144&autoLogAppEvents=1\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-page\" data-href=\"https://www.facebook.com/vn3ctran\" data-small-header=\"false\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/vn3ctran\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/vn3ctran\">Công ty cổ phần công nghệ VN3C Việt Nam</a></blockquote></div>', 'en', '2019-01-10 07:47:30'),
(13, 'comment-facebook', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-comments\" data-href=\"https://www.facebook.com/vn3ctran/\" data-numposts=\"5\"></div>', 'vn', '2019-01-14 03:30:43'),
(14, 'comment-facebook', '<div id=\"fb-root\"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = \'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.2\';\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, \'script\', \'facebook-jssdk\'));</script>\r\n<div class=\"fb-comments\" data-href=\"https://www.facebook.com/vn3ctran/\" data-numposts=\"5\"></div>', 'en', '2019-01-14 03:30:43'),
(15, 'ten-cong-ty', 'CTY TNHH ĐIỀN TRANG', 'vn', NULL),
(16, 'ten-cong-ty', 'CTY TNHH ĐIỀN TRANG', 'en', '2019-01-10 07:36:54'),
(17, 'thong-tin-cong-ty', '<p><strong>Trụ sở ch&iacute;nh:</strong>&nbsp;Số 13, Đường 16, KP4, P. An Ph&uacute;, Q. 2, TP. HCM</p>\r\n\r\n<p><strong>Văn ph&ograve;ng:&nbsp;</strong>Số 7, Đường D3B, KP6, P. Phước Long B, Q. 9, TP. HCM</p>\r\n\r\n<p><strong>Nh&agrave; m&aacute;y:</strong>&nbsp;Ấp Vườn Vũ, X&atilde; T&acirc;n Mỹ, Huyện Bắc T&acirc;n Uy&ecirc;n, B&igrave;nh Dương</p>\r\n\r\n<p><strong>Điện thoại: (028) 6281 3021</strong></p>\r\n\r\n<p><strong>Email:&nbsp;</strong>dientrang@dt02.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giấy đăng k&yacute; kinh doanh số: 0304213842</p>\r\n\r\n<p>Ng&agrave;y cấp 11 th&aacute;ng 6 năm 2014</p>\r\n\r\n<p>Nơi cấp: Sở Kế Hoạch v&agrave; Đầu Tư TPHCM</p>\r\n\r\n<p>Chủ sở hữu:&nbsp;C&ocirc;ng Ty TNHH Điền Trang</p>', 'vn', NULL),
(18, 'thong-tin-cong-ty', '<p>Head office: Số 13, Đường 16, KP4, P. An Ph&uacute;, Dist 2, TP. HCM Office: No. 7, Street D3B, KP6, P. Phuoc Long B, District 9, TP. HCM Factory: Ap Vu Vu, Xa Tan My, Bac Tan Uyen District, Binh Duong Phone: (028) 6281 3021 Email: dientrang@dt02.com Business registration number: 0304213842 Date of June 11, 2014 Place of issue: Department of Planning and Investment of Ho Chi Minh City Owner: Dien Trang Company Limited</p>', 'en', '2019-01-11 02:58:30'),
(19, 'meta_title', 'CTY TNHH ĐIỀN TRANG', 'vn', NULL),
(20, 'meta_title', NULL, 'en', NULL),
(21, 'meta-description', NULL, 'vn', NULL),
(22, 'meta-description', NULL, 'en', NULL),
(23, 'meta-keyword', NULL, 'vn', NULL),
(24, 'meta-keyword', NULL, 'en', NULL),
(25, 'google-map', '<iframe src=\"https://www.google.com/maps/d/embed?mid=1zGLFJw_Ak_z462IBL7Ip-2dyqsk&hl=vi\" width=100%\" height=\"450\"></iframe>', 'vn', NULL),
(26, 'google-map', NULL, 'en', NULL),
(27, 'copy-right', '© 2022, b==', 'vn', '2022-05-14 08:39:46'),
(28, 'copy-right', '© 2022, YELIRWORLD', 'en', '2022-05-10 14:12:00'),
(29, 'tieu-de-gioi-thieu', 'GIỚI THIỆU CÔNG TY ĐIỀN TRANG', 'vn', NULL),
(30, 'tieu-de-gioi-thieu', 'INTRODUCTION TO FASHION COMPANY', 'en', NULL),
(31, 'mo-ta-gioi-thieu', 'Công ty TNHH Điền Trang, tiền thân là cơ sở phân bón Điền Trang, thành lập từ năm 2002, hoạt động trong lĩnh vực sản xuất, kinh doanh phân bón hữu cơ, phân bón lá, đặc biệt là các chế phẩm vi sinh nông nghiệp.\r\n\r\nĐiền Trang tự hào là công ty đầu tiên từ năm 2003 đã ứng dụng nấm đối kháng Trichoderma vào sản xuất phân bón hữu cơ vi sinh với thương hiệu TRICHOMIX-DT, TRIMIX. Những sản phẩm hữu cơ này vừa cung cấp chất dinh dưỡng cho cây trồng, vừa có hiệu quả rất cao trong phòng ngừa các bệnh hại trên rễ do nấm hại gây ra.', 'vn', NULL),
(32, 'mo-ta-gioi-thieu', 'Dien Trang Co., Ltd., formerly known as Dien Trang fertilizer factory, was established in 2002, operating in the field of manufacturing and trading organic fertilizer, foliar fertilizer, especially agro-biological products. career.\r\n\r\nDien Trang is proud to be the first company since 2003 to apply antagonistic fungus Trichoderma to microbial organic fertilizer production under the brand name TRICHOMIX-DT, TRIMIX. These organic products both provide nutrients for plants and are highly effective in preventing root diseases caused by fungal pathogens.', 'en', NULL),
(33, 'anh-gioi-thieu', '/public/kcfinder-master/upload/images/thongtintrang/gt.jpg', 'vn', NULL),
(34, 'anh-gioi-thieu', '/public/kcfinder-master/upload/images/thongtintrang/gt.jpg', 'en', NULL),
(35, 'banner-desktop', '/kcfinder-master/upload/images/Black%20paris/277526795_147803644401332_7945724718211988623_n.jpg', 'vn', '2022-05-14 08:39:46'),
(36, 'banner-desktop', '/kcfinder-master/upload/images/Black%20paris/277526795_147803644401332_7945724718211988623_n.jpg', 'en', '2022-05-14 08:45:41'),
(37, 'banner-mobile', '/kcfinder-master/upload/images/Black%20paris/277526795_147803644401332_7945724718211988623_n.jpg', 'vn', '2022-05-14 08:39:46'),
(38, 'banner-mobile', '/kcfinder-master/upload/images/Black%20paris/277526795_147803644401332_7945724718211988623_n.jpg', 'en', '2022-05-14 08:45:41'),
(39, 'button-banner-title', 'Shop late', 'vn', '2022-05-10 14:12:00'),
(40, 'button-banner-title', 'SHOP LATEST', 'en', '2022-05-10 14:12:00'),
(41, 'title-product', 'YELIRWORLD', 'vn', '2022-05-10 14:12:00'),
(42, 'title-product', 'YELIRWORLD', 'en', '2022-05-10 14:12:00'),
(43, 'description-product', 'LATEST RELEASES', 'vn', '2022-05-10 14:12:00'),
(44, 'description-product', 'LATEST RELEASES', 'en', '2022-05-10 14:12:00'),
(45, 'button-product', 'VIEW ALL', 'vn', '2022-05-10 14:12:00'),
(46, 'button-product', 'VIEW ALLS', 'en', '2022-05-10 14:12:00'),
(47, 'tittle-product-2', 'YELIRWORLD', 'vn', '2022-05-10 14:12:00'),
(48, 'tittle-product-2', 'YELIRWORLD', 'en', '2022-05-10 14:12:00'),
(49, 'description-product-2', 'LATEST HEADWEAR', 'vn', '2022-05-10 14:12:00'),
(50, 'description-product-2', 'LATEST HEADWEAR', 'en', '2022-05-10 14:12:00'),
(51, 'button-product-2', 'VIEW ALL', 'vn', '2022-05-10 14:12:00'),
(52, 'button-product-2', 'VIEW ALLS', 'en', '2022-05-10 14:12:00'),
(53, 'content-footer', 'SUBSCRIBE TO OUR EMAILS', 'vn', '2022-05-10 14:12:00'),
(54, 'content-footer', 'SUBSCRIBE TO OUR EMAILS', 'en', '2022-05-10 14:12:00'),
(55, 'link-button-banner', 'http://shop.local/vn/menus/latest-releases', 'vn', '2022-05-14 09:05:51'),
(56, 'link-button-banner', 'http://shop.local/vn/menus/latest-releases', 'en', '2022-05-14 09:05:58'),
(57, 'link-list-product', 'http://shop.local/vn/menus/latest-releases', 'vn', '2022-05-14 09:05:51'),
(58, 'link-list-product', 'http://shop.local/vn/menus/latest-releases', 'en', '2022-05-14 09:05:58'),
(59, 'link-list-product-2', 'http://shop.local/vn/menus/latest-releases', 'vn', '2022-05-14 09:05:51'),
(60, 'link-list-product-2', 'http://shop.local/vn/menus/latest-releases', 'en', '2022-05-14 09:05:58'),
(61, 'currency', '$', 'vn', NULL),
(62, 'currency', '$', 'en', '2022-05-14 08:45:41'),
(63, 'company-name', 'Blackparis', 'vn', NULL),
(64, 'company-name', 'Blackparis', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `input_id` int(11) NOT NULL,
  `type_input_slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`input_id`, `type_input_slug`, `content`, `post_id`, `updated_at`) VALUES
(61, 'xem-them', 'Xem thêm', 1, NULL),
(73, 'xem-them', 'Read more', 2, NULL),
(163, 'danh-sach-hinh-anh', NULL, 83, NULL),
(161, 'danh-sach-hinh-anh', NULL, 81, NULL),
(162, 'danh-sach-hinh-anh', NULL, 82, NULL),
(165, 'danh-sach-hinh-anh', NULL, 85, NULL),
(164, 'danh-sach-hinh-anh', NULL, 84, NULL),
(74, 'logo', NULL, 2, NULL),
(75, 'lien-he', 'contact', 2, NULL),
(76, 'tin-tuc-lien-quan', 'Related News', 2, NULL),
(62, 'logo', NULL, 1, NULL),
(63, 'lien-he', NULL, 1, NULL),
(64, 'tin-tuc-lien-quan', 'Tin tức liên quan', 1, NULL),
(65, 'dat-cau-hoi', 'Đặt câu hỏi', 1, NULL),
(77, 'dat-cau-hoi', 'Make a question', 2, NULL),
(66, 'gui-lien-he', 'gửi liên hệ', 1, NULL),
(78, 'gui-lien-he', 'gửi liên hệ', 2, NULL),
(67, 'ban-do', 'bản đồ', 1, NULL),
(79, 'ban-do', 'map', 2, NULL),
(166, 'danh-sach-hinh-anh', NULL, 86, NULL),
(68, 'san-pham-cung-the-loai', 'Sản phẩm cùng thể loại', 1, NULL),
(69, 'chi-tiet-san-pham', 'Chi tiết sản phẩm', 1, NULL),
(70, 'binh-luan', 'Bình luận', 1, NULL),
(71, 'gia', 'Giá', 1, NULL),
(72, 'ma-san-pham', 'Mã sản phẩm', 1, NULL),
(80, 'san-pham-cung-the-loai', 'Products of the same category', 2, NULL),
(81, 'chi-tiet-san-pham', 'Product details', 2, NULL),
(82, 'binh-luan', 'Comment', 2, NULL),
(83, 'gia', 'Price', 2, NULL),
(84, 'ma-san-pham', 'Code', 2, NULL),
(160, 'danh-sach-hinh-anh', NULL, 80, NULL),
(159, 'danh-sach-hinh-anh', NULL, 79, NULL),
(731, 'add-to-cart', 'THÊM VÀO GIỎ HÀNG', 1, NULL),
(89, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 49, '2022-05-14 08:41:57'),
(90, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 50, '2022-05-14 08:41:57'),
(91, 'gia', NULL, 49, NULL),
(92, 'gia', NULL, 50, NULL),
(93, 'ma-san-pham', 'SHOP THIS LOOK', 49, NULL),
(94, 'ma-san-pham', 'SHOP THIS LOOK', 50, '2022-05-14 08:56:39'),
(95, 'care-instructions', 'REFER TO LABEL FOR CARE INFORMATION', 51, NULL),
(96, 'care-instructions', NULL, 52, NULL),
(97, 'size-guide', NULL, 51, NULL),
(98, 'size-guide', NULL, 52, NULL),
(99, 'shipping-returns', '- FREE DPD NEXT BUSINESS DAY (ORDER BEFORE 2PM MON-THURS)\r\n\r\n- TRACKED DHL INTERNATIONAL DELIVERY AVAILABLE BUT DELIVERY TIMES MAY VARY DUE TO COVID19 RESTRICTIONS\r\n\r\n- INTERNATIONAL ORDERS MAY BE SUBJECT TO IMPORT DUTIES AND ADDITIONAL TAXES, PLEASE ENSURE YOU CHECK THIS BEFORE ORDERING.', 51, NULL),
(100, 'shipping-returns', NULL, 52, NULL),
(101, 'size', NULL, 51, NULL),
(102, 'size', NULL, 52, NULL),
(103, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/274862822_139268705254826_1774073334401928346_n.jpg', 51, '2022-05-14 08:39:01'),
(104, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/274862822_139268705254826_1774073334401928346_n.jpg', 52, '2022-05-14 08:39:01'),
(105, 'care-instructions', 'REFER TO LABEL FOR CARE INFORMATION', 53, NULL),
(106, 'care-instructions', NULL, 54, NULL),
(107, 'size-guide', NULL, 53, NULL),
(108, 'size-guide', NULL, 54, NULL),
(109, 'shipping-returns', '- FREE DPD NEXT BUSINESS DAY (ORDER BEFORE 2PM MON-THURS)\r\n\r\n- TRACKED DHL INTERNATIONAL DELIVERY AVAILABLE BUT DELIVERY TIMES MAY VARY DUE TO COVID19 RESTRICTIONS\r\n\r\n- INTERNATIONAL ORDERS MAY BE SUBJECT TO IMPORT DUTIES AND ADDITIONAL TAXES, PLEASE ENSURE YOU CHECK THIS BEFORE ORDERING.', 53, NULL),
(110, 'shipping-returns', NULL, 54, NULL),
(111, 'size', NULL, 53, NULL),
(112, 'size', NULL, 54, NULL),
(113, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/274719722_139268575254839_6123737559190753960_n.jpg', 53, '2022-05-14 08:37:10'),
(114, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/274719722_139268575254839_6123737559190753960_n.jpg', 54, '2022-05-14 08:37:10'),
(115, 'status', 'SOLD OUT', 51, NULL),
(116, 'status', NULL, 52, NULL),
(117, 'care-instructions', 'REFER TO LABEL FOR CARE INFORMATION', 55, NULL),
(118, 'care-instructions', 'REFER TO LABEL FOR CARE INFORMATION', 56, '2022-05-14 08:34:25'),
(119, 'size-guide', NULL, 55, NULL),
(120, 'size-guide', NULL, 56, NULL),
(121, 'shipping-returns', '- FREE DPD NEXT BUSINESS DAY (ORDER BEFORE 2PM MON-THURS)\r\n\r\n- TRACKED DHL INTERNATIONAL DELIVERY AVAILABLE BUT DELIVERY TIMES MAY VARY DUE TO COVID19 RESTRICTIONS\r\n\r\n- INTERNATIONAL ORDERS MAY BE SUBJECT TO IMPORT DUTIES AND ADDITIONAL TAXES, PLEASE ENSURE YOU CHECK THIS BEFORE ORDERING.', 55, NULL),
(122, 'shipping-returns', NULL, 56, NULL),
(123, 'status', NULL, 55, NULL),
(124, 'status', NULL, 56, NULL),
(125, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg', 55, '2022-05-14 08:34:25'),
(126, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg', 56, '2022-05-14 08:34:25'),
(127, 'care-instructions', 'REFER TO LABEL FOR CARE INFORMATION', 57, NULL),
(128, 'care-instructions', NULL, 58, NULL),
(129, 'size-guide', NULL, 57, NULL),
(130, 'size-guide', NULL, 58, NULL),
(131, 'shipping-returns', '- FREE DPD NEXT BUSINESS DAY (ORDER BEFORE 2PM MON-THURS)\r\n\r\n- TRACKED DHL INTERNATIONAL DELIVERY AVAILABLE BUT DELIVERY TIMES MAY VARY DUE TO COVID19 RESTRICTIONS\r\n\r\n- INTERNATIONAL ORDERS MAY BE SUBJECT TO IMPORT DUTIES AND ADDITIONAL TAXES, PLEASE ENSURE YOU CHECK THIS BEFORE ORDERING.', 57, NULL),
(132, 'shipping-returns', NULL, 58, NULL),
(133, 'status', 'SOLD OUT', 57, NULL),
(134, 'status', NULL, 58, NULL),
(135, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/279534810_155502003631496_1366022301221385148_n.jpg', 57, '2022-05-14 08:32:10'),
(136, 'anh-2', '/kcfinder-master/upload/images/Black%20paris/279534810_155502003631496_1366022301221385148_n.jpg', 58, '2022-05-14 08:35:19'),
(137, 'currency', '$', 57, NULL),
(138, 'currency', NULL, 58, NULL),
(139, 'currency', '$', 55, NULL),
(140, 'currency', NULL, 56, NULL),
(141, 'currency', '$', 53, NULL),
(142, 'status', NULL, 53, NULL),
(143, 'currency', NULL, 54, NULL),
(144, 'status', NULL, 54, NULL),
(145, 'currency', '$', 51, '2022-05-13 00:57:11'),
(146, 'currency', NULL, 52, NULL),
(147, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 59, '2022-05-14 08:41:17'),
(148, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 60, '2022-05-14 08:41:17'),
(149, 'gia', NULL, 59, NULL),
(150, 'gia', NULL, 60, NULL),
(151, 'ma-san-pham', 'SHOP WINDCHEATERS', 59, NULL),
(152, 'ma-san-pham', 'SHOP WINDCHEATERS', 60, '2022-05-14 08:56:33'),
(153, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg', 61, '2022-05-14 08:40:32'),
(154, 'anh-mobile', '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg', 62, '2022-05-14 08:41:25'),
(155, 'gia', NULL, 61, NULL),
(156, 'gia', NULL, 62, NULL),
(157, 'ma-san-pham', 'SHOP COMBATS', 61, '2022-05-10 15:21:59'),
(158, 'ma-san-pham', 'SHOP COMBATS', 62, NULL),
(732, 'quantity', 'SỐ LƯỢNG', 1, NULL),
(733, 'product', 'SẢN PHẨM', 1, NULL),
(734, 'filter', 'LỌC', 1, NULL),
(736, 'item-added-to-your-cart', 'MỤC ĐƯỢC THÊM VÀO GIỎ HÀNG CỦA BẠN', 1, NULL),
(737, 'view-my-cart', 'XEM GIỎ HÀNG CỦA TÔI', 1, NULL),
(738, 'continue-shopping', 'TIẾP TỤC MUA SẮM', 1, NULL),
(739, 'shipping-and-return', 'VẬN CHUYỂN VÀ TRẢ LẠI', 1, NULL),
(740, 'care-instruction', 'HƯỚNG DẪN', 1, NULL),
(741, 'share', 'Chia sẻ', 1, NULL),
(742, 'your-cart', 'GIỎ HÀNG CỦA BẠN', 1, NULL),
(743, 'total', 'Tổng', 1, NULL),
(744, 'check-out', 'Thủ tục thanh toán', 1, NULL),
(745, 'more-products', 'NHIỀU SẢN PHẨM HƠN', 1, NULL),
(746, 'information', 'Thông tin', 1, NULL),
(747, 'payment', 'Thanh toán', 1, NULL),
(748, 'review', 'Review', 1, NULL),
(749, 'contact-information', 'Thông tin liên hệ', 1, NULL),
(750, 'already-have-an-account', 'Bạn đã có tài khoản', 1, NULL),
(751, 'shipping-address', 'Địa chỉ vận chuyển', 1, NULL),
(752, 'country-region', 'Đất nước/ Khu vức', 1, NULL),
(753, 'first-name', 'Họ', 1, NULL),
(754, 'last-name', 'Tên', 1, NULL),
(755, 'address', 'Địa chỉ', 1, NULL),
(756, 'city', 'Thành phố', 1, NULL),
(757, 'postcode', 'Mã bưu điện', 1, NULL),
(758, 'phone', 'Số điện thoại', 1, NULL),
(759, 'order-summary', 'Đơn hàng', 1, NULL),
(760, 'pay-to-bank', 'Thanh toán qua ngân hàng', 1, NULL),
(761, 'bank', 'Ngân hàng', 1, NULL),
(762, 'bank-account', 'Tên người nhận', 1, NULL),
(763, 'bank-number', 'Số tài khoản', 1, NULL),
(764, 'branch', 'Chi nhánh', 1, NULL),
(765, 'content-bank', 'Thanh toán qua tài khoản ngân hàng\r\nNgân hàng	Chủ tài khoản	Số tài khoản	Chi nhánh\r\nQuý khách vui lòng điền mã đơn hàng (Ví dụ: #123414) trong phần nội dung chuyển khoản để chúng tôi xác nhận đơn hàng.', 1, NULL),
(766, 'compelete', 'Hoàn thành', 1, NULL),
(767, 'compelete-content', 'Cảm ơn bạn đã mua hàng', 1, NULL),
(768, 'reset-your-password', 'Tạo lại mật khẩu của bạn', 1, NULL),
(769, 'login', 'Đăng nhập', 1, NULL),
(770, 'reset-content', 'Bạn sẽ nhận được một email đặt lại mật khẩu', 1, NULL),
(771, 'sign-in', 'Đăng ký', 1, NULL),
(772, 'forgot-your-password', 'QUÊN MẬT KHẨU', 1, NULL),
(773, 'create-account', 'Tạo tài khoản', 1, NULL),
(774, 'submit', 'Gửi', 1, NULL),
(775, 'cancel', 'Hủy', 1, NULL),
(776, 'create', 'Tạo', 1, NULL),
(781, 'add-to-cart', 'ADD TO CART', 2, NULL),
(782, 'quantity', 'QUANTITY', 2, NULL),
(783, 'product', 'PRODUCT', 2, NULL),
(784, 'filter', 'FILTER', 2, NULL),
(786, 'item-added-to-your-cart', 'ITEM ADDED TO YOUR CART', 2, NULL),
(787, 'view-my-cart', 'VIEW MY CART', 2, NULL),
(788, 'continue-shopping', 'CONTINUE SHOPPING', 2, NULL),
(789, 'shipping-and-return', 'SHIPPING AND RETURN', 2, NULL),
(790, 'care-instruction', 'CARE INSTRUCTION', 2, NULL),
(791, 'share', 'SHARE', 2, NULL),
(792, 'your-cart', 'YOUR CART', 2, NULL),
(793, 'total', 'Total', 2, NULL),
(794, 'check-out', 'Check out', 2, NULL),
(795, 'more-products', 'MORE PRODUCTS', 2, NULL),
(796, 'information', 'Information', 2, NULL),
(797, 'payment', 'Payment', 2, NULL),
(798, 'review', 'Review', 2, NULL),
(799, 'contact-information', 'Contact information', 2, NULL),
(800, 'already-have-an-account', 'Already have an account', 2, NULL),
(801, 'shipping-address', 'Shipping address', 2, NULL),
(802, 'country-region', 'Country/region', 2, NULL),
(803, 'first-name', 'First name', 2, NULL),
(804, 'last-name', 'Last name', 2, NULL),
(805, 'address', 'Address', 2, NULL),
(806, 'city', 'City', 2, NULL),
(807, 'postcode', 'Postcode', 2, NULL),
(808, 'phone', 'Phone', 2, NULL),
(809, 'order-summary', 'Order summary', 2, NULL),
(810, 'pay-to-bank', 'Pay to bank', 2, NULL),
(811, 'bank', 'Bank', 2, NULL),
(812, 'bank-account', 'Bank account', 2, NULL),
(813, 'bank-number', 'Bank number', 2, NULL),
(814, 'branch', 'Branch', 2, NULL),
(815, 'content-bank', 'Please fill in the order (eg #123414) in the content conversion section for us to confirm the order.', 2, NULL),
(816, 'compelete', 'Compelete', 2, NULL),
(817, 'compelete-content', 'Thank you for your purchase', 2, NULL),
(818, 'reset-your-password', 'Reset your password', 2, NULL),
(819, 'login', 'LOGIN', 2, NULL),
(820, 'reset-content', 'WE WILL SEND YOU AN EMAIL TO RESET YOUR PASSWORD', 2, NULL),
(821, 'sign-in', 'Sign In', 2, NULL),
(822, 'forgot-your-password', 'FORGOT YOUR PASSWORD', 2, NULL),
(823, 'create-account', 'CREATE ACCOUNT', 2, NULL),
(824, 'submit', 'Submit', 2, NULL),
(825, 'cancel', 'Cancel', 2, NULL),
(826, 'create', 'Create', 2, NULL),
(777, 'name', 'Tên', 1, NULL),
(827, 'name', 'Name', 2, NULL),
(778, 'password', 'Mật khẩu', 1, NULL),
(828, 'password', 'Password', 2, NULL),
(779, 'notice-login-content', 'Tài khoản hoặc mật khẩu không chính xác', 1, NULL),
(829, 'notice-login-content', 'Incorrect account or password', 2, NULL),
(830, 'cart-status', 'YOUR CART IS EMPTY', 2, NULL),
(780, 'cart-status', 'Bạn không có gì trong giỏ hàng', 1, NULL),
(735, 'size-guide', 'Size', 1, NULL),
(785, 'size-guide', 'SIZE GUIDE', 2, NULL),
(831, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 61, '2022-05-14 09:06:44'),
(832, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 62, '2022-05-14 09:06:52'),
(833, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 59, '2022-05-14 09:07:01'),
(834, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 60, '2022-05-14 09:07:01'),
(835, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 49, '2022-05-14 09:07:08'),
(836, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 50, '2022-05-14 09:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language`, `acronym`, `created_at`, `updated_at`) VALUES
(1, 'Vietnamese', 'vn', NULL, '2018-03-21 06:46:01'),
(2, 'English', 'en', NULL, '2018-03-21 06:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `language_save`
--

CREATE TABLE `language_save` (
  `language_save_id` int(11) NOT NULL,
  `element_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_id` int(11) DEFAULT NULL,
  `element_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='		';

--
-- Dumping data for table `language_save`
--

INSERT INTO `language_save` (`language_save_id`, `element_id`, `main_id`, `element_type`) VALUES
(1, '1,2', 1, 'category'),
(2, '3,4', 3, 'category'),
(3, '5,6', 5, 'category'),
(20, '9,10', 9, 'category'),
(5, '3,4', 3, 'post'),
(6, '5,6', 5, 'post'),
(8, '9,10', 9, 'post'),
(9, '11,12', 11, 'post'),
(10, '13,14', 13, 'post'),
(167, '255,256', 255, 'product'),
(12, '17,18', 17, 'post'),
(13, '19,20', 19, 'post'),
(412, '41,42', 41, 'category'),
(411, '39,40', 39, 'category'),
(19, '7,8', 7, 'category'),
(21, '31,32', 31, 'product'),
(22, '11,12', 11, 'category'),
(23, '13,14', 13, 'category'),
(24, '15,16', 15, 'category'),
(25, '17,18', 17, 'category'),
(26, '19,20', 19, 'category'),
(27, '21,22', 21, 'category'),
(28, '23,24', 23, 'category'),
(29, '25,26', 25, 'category'),
(30, '27,28', 27, 'category'),
(31, '29,30', 29, 'category'),
(32, '31,32', 31, 'category'),
(33, '33,34', 33, 'category'),
(34, '35,36', 35, 'category'),
(35, '37,38', 37, 'category'),
(36, '39,40', 39, 'category'),
(37, '41,42', 41, 'category'),
(38, '43,44', 43, 'category'),
(39, '45,46', 45, 'category'),
(40, '47,48', 47, 'category'),
(41, '49,50', 49, 'category'),
(42, '51,52', 51, 'category'),
(43, '53,54', 53, 'category'),
(44, '55,56', 55, 'category'),
(45, '57,58', 57, 'category'),
(164, '251,252', 251, 'post'),
(47, '61,62', 61, 'category'),
(48, '63,64', 63, 'category'),
(49, '65,66', 65, 'category'),
(50, '67,68', 67, 'category'),
(51, '69,70', 69, 'category'),
(52, '71,72', 71, 'category'),
(53, '73,74', 73, 'category'),
(54, '33,34', 33, 'product'),
(55, '35,36', 35, 'product'),
(56, '37,38', 37, 'product'),
(57, '39,40', 39, 'product'),
(58, '41,42', 41, 'product'),
(59, '43,44', 43, 'product'),
(60, '45,46', 45, 'product'),
(61, '47,48', 47, 'product'),
(62, '49,50', 49, 'product'),
(63, '51,52', 51, 'product'),
(64, '53,54', 53, 'product'),
(65, '55,56', 55, 'product'),
(66, '75,76', 75, 'category'),
(67, '57,58', 57, 'product'),
(165, '253,254', 253, 'post'),
(69, '61,62', 61, 'post'),
(70, '63,64', 63, 'post'),
(71, '65,66', 65, 'post'),
(72, '67,68', 67, 'post'),
(73, '69,70', 69, 'product'),
(74, '71,72', 71, 'product'),
(75, '73,74', 73, 'product'),
(76, '75,76', 75, 'product'),
(77, '77,78', 77, 'product'),
(78, '79,80', 79, 'product'),
(79, '81,82', 81, 'product'),
(80, '83,84', 83, 'product'),
(81, '85,86', 85, 'product'),
(82, '87,88', 87, 'product'),
(83, '89,90', 89, 'product'),
(84, '91,92', 91, 'product'),
(85, '93,94', 93, 'product'),
(86, '95,96', 95, 'product'),
(87, '97,98', 97, 'product'),
(88, '99,100', 99, 'product'),
(89, '101,102', 101, 'product'),
(90, '103,104', 103, 'product'),
(91, '105,106', 105, 'product'),
(92, '107,108', 107, 'product'),
(93, '109,110', 109, 'product'),
(94, '111,112', 111, 'product'),
(95, '113,114', 113, 'product'),
(96, '115,116', 115, 'product'),
(97, '117,118', 117, 'product'),
(98, '119,120', 119, 'product'),
(99, '121,122', 121, 'product'),
(100, '123,124', 123, 'product'),
(101, '125,126', 125, 'product'),
(102, '127,128', 127, 'product'),
(103, '129,130', 129, 'product'),
(104, '131,132', 131, 'product'),
(105, '133,134', 133, 'product'),
(106, '135,136', 135, 'product'),
(107, '137,138', 137, 'product'),
(108, '139,140', 139, 'product'),
(109, '141,142', 141, 'product'),
(110, '143,144', 143, 'product'),
(111, '145,146', 145, 'product'),
(112, '147,148', 147, 'product'),
(113, '149,150', 149, 'product'),
(114, '151,152', 151, 'product'),
(115, '153,154', 153, 'product'),
(116, '155,156', 155, 'product'),
(117, '157,158', 157, 'product'),
(118, '159,160', 159, 'product'),
(119, '161,162', 161, 'product'),
(120, '163,164', 163, 'product'),
(121, '165,166', 165, 'product'),
(122, '167,168', 167, 'product'),
(123, '169,170', 169, 'product'),
(124, '171,172', 171, 'product'),
(125, '173,174', 173, 'product'),
(126, '175,176', 175, 'product'),
(127, '177,178', 177, 'product'),
(128, '179,180', 179, 'product'),
(129, '181,182', 181, 'product'),
(130, '183,184', 183, 'product'),
(131, '185,186', 185, 'product'),
(132, '187,188', 187, 'product'),
(133, '189,190', 189, 'product'),
(134, '191,192', 191, 'product'),
(135, '193,194', 193, 'product'),
(136, '195,196', 195, 'product'),
(137, '197,198', 197, 'product'),
(138, '199,200', 199, 'product'),
(139, '201,202', 201, 'product'),
(140, '203,204', 203, 'product'),
(141, '205,206', 205, 'product'),
(142, '207,208', 207, 'product'),
(143, '209,210', 209, 'product'),
(144, '211,212', 211, 'product'),
(145, '213,214', 213, 'product'),
(146, '215,216', 215, 'product'),
(147, '217,218', 217, 'product'),
(148, '219,220', 219, 'product'),
(149, '221,222', 221, 'product'),
(150, '223,224', 223, 'product'),
(151, '225,226', 225, 'product'),
(152, '227,228', 227, 'product'),
(153, '229,230', 229, 'product'),
(154, '231,232', 231, 'product'),
(166, '59,60', 59, 'category'),
(156, '235,236', 235, 'product'),
(157, '237,238', 237, 'product'),
(158, '239,240', 239, 'product'),
(159, '241,242', 241, 'product'),
(160, '243,244', 243, 'product'),
(161, '245,246', 245, 'product'),
(162, '247,248', 247, 'post'),
(168, '257,258', 257, 'product'),
(169, '259,260', 259, 'product'),
(170, '261,262', 261, 'product'),
(171, '263,264', 263, 'product'),
(172, '265,266', 265, 'product'),
(173, '267,268', 267, 'product'),
(174, '269,270', 269, 'product'),
(175, '271,272', 271, 'product'),
(176, '273,274', 273, 'product'),
(177, '275,276', 275, 'product'),
(178, '277,278', 277, 'product'),
(179, '279,280', 279, 'product'),
(180, '281,282', 281, 'product'),
(181, '283,284', 283, 'product'),
(182, '285,286', 285, 'product'),
(183, '287,288', 287, 'product'),
(184, '289,290', 289, 'product'),
(185, '291,292', 291, 'product'),
(186, '293,294', 293, 'product'),
(187, '295,296', 295, 'product'),
(188, '297,298', 297, 'product'),
(189, '299,300', 299, 'product'),
(190, '301,302', 301, 'product'),
(191, '303,304', 303, 'product'),
(192, '305,306', 305, 'product'),
(193, '307,308', 307, 'product'),
(194, '309,310', 309, 'product'),
(195, '311,312', 311, 'product'),
(196, '313,314', 313, 'product'),
(197, '315,316', 315, 'product'),
(198, '317,318', 317, 'product'),
(199, '319,320', 319, 'product'),
(200, '321,322', 321, 'product'),
(201, '323,324', 323, 'product'),
(202, '325,326', 325, 'product'),
(203, '327,328', 327, 'product'),
(204, '329,330', 329, 'product'),
(205, '331,332', 331, 'product'),
(206, '333,334', 333, 'product'),
(207, '335,336', 335, 'product'),
(208, '337,338', 337, 'product'),
(209, '339,340', 339, 'product'),
(210, '341,342', 341, 'product'),
(211, '343,344', 343, 'product'),
(212, '345,346', 345, 'product'),
(213, '347,348', 347, 'product'),
(214, '349,350', 349, 'product'),
(215, '351,352', 351, 'product'),
(216, '353,354', 353, 'product'),
(217, '355,356', 355, 'product'),
(218, '357,358', 357, 'product'),
(219, '359,360', 359, 'product'),
(220, '361,362', 361, 'product'),
(221, '363,364', 363, 'product'),
(222, '365,366', 365, 'product'),
(223, '367,368', 367, 'product'),
(224, '369,370', 369, 'product'),
(225, '371,372', 371, 'product'),
(226, '373,374', 373, 'product'),
(227, '375,376', 375, 'product'),
(228, '377,378', 377, 'product'),
(229, '379,380', 379, 'product'),
(230, '381,382', 381, 'product'),
(231, '383,384', 383, 'product'),
(232, '385,386', 385, 'product'),
(233, '387,388', 387, 'product'),
(234, '389,390', 389, 'product'),
(235, '391,392', 391, 'product'),
(236, '393,394', 393, 'product'),
(237, '395,396', 395, 'product'),
(238, '397,398', 397, 'product'),
(239, '399,400', 399, 'product'),
(240, '401,402', 401, 'product'),
(241, '403,404', 403, 'product'),
(242, '405,406', 405, 'product'),
(243, '407,408', 407, 'product'),
(244, '409,410', 409, 'product'),
(245, '411,412', 411, 'product'),
(246, '413,414', 413, 'product'),
(247, '415,416', 415, 'product'),
(248, '417,418', 417, 'product'),
(249, '419,420', 419, 'product'),
(250, '421,422', 421, 'product'),
(251, '423,424', 423, 'product'),
(252, '425,426', 425, 'product'),
(253, '427,428', 427, 'product'),
(254, '429,430', 429, 'product'),
(255, '431,432', 431, 'product'),
(256, '433,434', 433, 'product'),
(257, '435,436', 435, 'product'),
(258, '437,438', 437, 'product'),
(259, '439,440', 439, 'product'),
(260, '441,442', 441, 'product'),
(261, '443,444', 443, 'product'),
(262, '445,446', 445, 'product'),
(263, '447,448', 447, 'product'),
(264, '449,450', 449, 'product'),
(265, '451,452', 451, 'product'),
(266, '453,454', 453, 'product'),
(267, '455,456', 455, 'product'),
(268, '457,458', 457, 'product'),
(269, '459,460', 459, 'product'),
(270, '461,462', 461, 'product'),
(271, '463,464', 463, 'product'),
(272, '465,466', 465, 'product'),
(273, '467,468', 467, 'product'),
(274, '469,470', 469, 'product'),
(275, '471,472', 471, 'product'),
(276, '473,474', 473, 'product'),
(277, '475,476', 475, 'product'),
(278, '477,478', 477, 'product'),
(279, '479,480', 479, 'product'),
(280, '481,482', 481, 'product'),
(281, '483,484', 483, 'product'),
(282, '485,486', 485, 'product'),
(283, '487,488', 487, 'product'),
(284, '489,490', 489, 'product'),
(285, '491,492', 491, 'product'),
(286, '493,494', 493, 'product'),
(287, '495,496', 495, 'product'),
(288, '497,498', 497, 'product'),
(289, '499,500', 499, 'product'),
(290, '501,502', 501, 'product'),
(291, '503,504', 503, 'product'),
(292, '505,506', 505, 'product'),
(293, '507,508', 507, 'product'),
(294, '509,510', 509, 'product'),
(295, '511,512', 511, 'product'),
(296, '513,514', 513, 'product'),
(297, '515,516', 515, 'product'),
(298, '517,518', 517, 'product'),
(299, '519,520', 519, 'product'),
(300, '521,522', 521, 'product'),
(301, '523,524', 523, 'product'),
(302, '525,526', 525, 'product'),
(303, '527,528', 527, 'product'),
(304, '529,530', 529, 'product'),
(305, '531,532', 531, 'product'),
(306, '533,534', 533, 'product'),
(307, '535,536', 535, 'product'),
(308, '537,538', 537, 'product'),
(309, '539,540', 539, 'product'),
(310, '541,542', 541, 'product'),
(311, '543,544', 543, 'product'),
(312, '545,546', 545, 'product'),
(313, '547,548', 547, 'product'),
(314, '549,550', 549, 'product'),
(315, '551,552', 551, 'product'),
(316, '553,554', 553, 'product'),
(317, '555,556', 555, 'product'),
(318, '557,558', 557, 'product'),
(319, '559,560', 559, 'product'),
(320, '561,562', 561, 'product'),
(321, '563,564', 563, 'product'),
(322, '565,566', 565, 'product'),
(323, '567,568', 567, 'product'),
(324, '569,570', 569, 'product'),
(325, '571,572', 571, 'product'),
(326, '573,574', 573, 'product'),
(327, '575,576', 575, 'product'),
(328, '577,578', 577, 'product'),
(329, '579,580', 579, 'product'),
(330, '581,582', 581, 'product'),
(331, '583,584', 583, 'product'),
(332, '585,586', 585, 'product'),
(333, '587,588', 587, 'product'),
(334, '589,590', 589, 'product'),
(335, '591,592', 591, 'product'),
(336, '593,594', 593, 'product'),
(337, '595,596', 595, 'product'),
(338, '597,598', 597, 'product'),
(339, '599,600', 599, 'product'),
(340, '601,602', 601, 'product'),
(341, '603,604', 603, 'product'),
(342, '605,606', 605, 'product'),
(343, '607,608', 607, 'product'),
(344, '609,610', 609, 'product'),
(345, '611,612', 611, 'product'),
(346, '613,614', 613, 'product'),
(347, '615,616', 615, 'product'),
(348, '617,618', 617, 'post'),
(349, '619,620', 619, 'product'),
(350, '621,622', 621, 'product'),
(351, '623,624', 623, 'product'),
(352, '625,626', 625, 'product'),
(353, '627,628', 627, 'product'),
(354, '629,630', 629, 'product'),
(355, '631,632', 631, 'product'),
(356, '633,634', 633, 'product'),
(357, '635,636', 635, 'product'),
(358, '637,638', 637, 'product'),
(359, '639,640', 639, 'product'),
(360, '641,642', 641, 'product'),
(361, '643,644', 643, 'product'),
(362, '645,646', 645, 'product'),
(363, '647,648', 647, 'product'),
(364, '649,650', 649, 'product'),
(365, '651,652', 651, 'product'),
(366, '653,654', 653, 'product'),
(367, '1,2', 1, 'post'),
(368, '3,4', 3, 'post'),
(369, '5,6', 5, 'post'),
(370, '7,8', 7, 'post'),
(371, '9,10', 9, 'post'),
(372, '11,12', 11, 'post'),
(373, '13,14', 13, 'post'),
(374, '15,16', 15, 'post'),
(375, '17,18', 17, 'post'),
(376, '19,20', 19, 'post'),
(378, '1,2', 1, 'category'),
(379, '3,4', 3, 'category'),
(380, '5,6', 5, 'category'),
(381, '7,8', 7, 'category'),
(382, '9,10', 9, 'category'),
(383, '23,24', 23, 'product'),
(384, '11,12', 11, 'category'),
(385, '25,26', 25, 'product'),
(386, '27,28', 27, 'product'),
(387, '29,30', 29, 'product'),
(388, '13,14', 13, 'category'),
(389, '15,16', 15, 'category'),
(390, '17,18', 17, 'category'),
(391, '19,20', 19, 'category'),
(393, '21,22', 21, 'category'),
(394, '23,24', 23, 'category'),
(395, '25,26', 25, 'category'),
(396, '27,28', 27, 'category'),
(397, '29,30', 29, 'category'),
(398, '31,32', 31, 'category'),
(399, '33,34', 33, 'category'),
(435, '87,88', 87, 'post'),
(434, '85,86', 85, 'post'),
(433, '83,84', 83, 'post'),
(431, '79,80', 79, 'post'),
(405, '35,36', 35, 'category'),
(406, '37,38', 37, 'category'),
(432, '81,82', 81, 'post'),
(408, '45,46', 45, 'post'),
(409, '47,48', 47, 'post'),
(410, '49,50', 49, 'post'),
(413, '43,44', 43, 'category'),
(414, '45,46', 45, 'category'),
(415, '47,48', 47, 'category'),
(416, '49,50', 49, 'category'),
(417, '51,52', 51, 'product'),
(418, '53,54', 53, 'product'),
(419, '55,56', 55, 'product'),
(420, '57,58', 57, 'product'),
(421, '59,60', 59, 'post'),
(422, '61,62', 61, 'post'),
(423, '63,64', 63, 'post'),
(424, '65,66', 65, 'post'),
(425, '67,68', 67, 'post'),
(426, '69,70', 69, 'post'),
(427, '71,72', 71, 'post'),
(428, '73,74', 73, 'post'),
(429, '75,76', 75, 'post'),
(430, '77,78', 77, 'post');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `title`, `slug`, `location`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Menu chính', 'menu-chinh', 'menu-chinh', NULL, NULL, NULL),
(6, 'Menu mobile', 'menu-mobile', 'menu-top-1', NULL, NULL, '2022-05-11 00:48:54'),
(7, 'Menu footer', 'menu-footer', 'menu-footer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_element`
--

CREATE TABLE `menu_element` (
  `menu_element_id` int(11) NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_show` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_level` int(11) DEFAULT NULL,
  `menu_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_element`
--

INSERT INTO `menu_element` (`menu_element_id`, `menu_slug`, `url`, `title_show`, `menu_level`, `menu_image`, `language`, `updated_at`, `created_at`) VALUES
(293, 'menu-mobile', 'trang/dang-nhap', 'LOGIN', 1, NULL, 'vn', NULL, NULL),
(292, 'menu-mobile', NULL, 'MY YELIR WORLD', 1, NULL, 'en', NULL, NULL),
(291, 'menu-mobile', NULL, 'MY YELIR WORLD', 1, NULL, 'vn', NULL, NULL),
(290, 'menu-mobile', 'http://shop.local/en/menus/accessories', 'ACCESSORIES', 1, NULL, 'en', NULL, NULL),
(289, 'menu-mobile', 'http://shop.local/vn/menus/accessories', 'ACCESSORIES', 1, NULL, 'vn', NULL, NULL),
(286, 'menu-mobile', 'http://shop.local/en/menus/bottoms', 'BOTTOMS', 2, NULL, 'en', NULL, NULL),
(288, 'menu-mobile', 'http://shop.local/en/menus/headwear', 'HEADWEAR', 1, NULL, 'en', NULL, NULL),
(287, 'menu-mobile', 'http://shop.local/vn/menus/headwear', 'HEADWEAR', 1, NULL, 'vn', NULL, NULL),
(285, 'menu-mobile', 'http://shop.local/vn/menus/bottoms', 'BOTTOMS', 2, NULL, 'vn', NULL, NULL),
(284, 'menu-mobile', 'http://shop.local/en/menus/hoodies', 'HOODIES', 2, NULL, 'en', NULL, NULL),
(283, 'menu-mobile', 'http://shop.local/vn/menus/hoodies', 'HOODIES', 2, NULL, 'vn', NULL, NULL),
(282, 'menu-mobile', 'http://shop.local/en/menus/combats', 'COMBATS', 2, NULL, 'en', NULL, NULL),
(281, 'menu-mobile', 'http://shop.local/vn/menus/combats', 'COMBATS', 2, NULL, 'vn', NULL, NULL),
(280, 'menu-mobile', 'http://shop.local/en/menus/tees', 'TEES', 2, NULL, 'en', NULL, NULL),
(279, 'menu-mobile', 'http://shop.local/vn/menus/tees', 'TEES', 2, NULL, 'vn', NULL, NULL),
(278, 'menu-mobile', NULL, 'CLOTHING', 1, NULL, 'en', NULL, NULL),
(277, 'menu-mobile', NULL, 'CLOTHING', 1, NULL, 'vn', NULL, NULL),
(276, 'menu-mobile', 'http://shop.local/en/menus/latest-releases', 'LATEST RELEASES', 1, NULL, 'en', NULL, NULL),
(275, 'menu-mobile', 'http://shop.local/vn/menus/latest-releases', 'LATEST RELEASES', 1, NULL, 'vn', NULL, NULL),
(274, 'menu-mobile', NULL, 'ENTER YELIR WORLD', 1, NULL, 'en', NULL, NULL),
(273, 'menu-mobile', NULL, 'ENTER YELIR WORLD', 1, NULL, 'vn', NULL, NULL),
(224, 'menu-chinh', 'http://shop.local/en/menus/accessories', 'ACCESSORIES', 1, NULL, 'en', NULL, NULL),
(223, 'menu-chinh', 'http://shop.local/vn/menus/accessories', 'ACCESSORIES', 1, NULL, 'vn', NULL, NULL),
(222, 'menu-chinh', 'http://shop.local/en/menus/headwear', 'HEADWEAR', 1, NULL, 'en', NULL, NULL),
(221, 'menu-chinh', 'http://shop.local/vn/menus/headwear', 'HEADWEAR', 1, NULL, 'vn', NULL, NULL),
(220, 'menu-chinh', 'http://shop.local/en/menus/hoodies', 'HOODIES', 2, NULL, 'en', NULL, NULL),
(219, 'menu-chinh', 'http://shop.local/vn/menus/hoodies', 'HOODIES', 2, NULL, 'vn', NULL, NULL),
(218, 'menu-chinh', 'http://shop.local/en/menus/combats', 'COMBATS', 2, NULL, 'en', NULL, NULL),
(217, 'menu-chinh', 'http://shop.local/vn/menus/combats', 'COMBATS', 2, NULL, 'vn', NULL, NULL),
(216, 'menu-chinh', 'http://shop.local/en/menus/bottoms', 'BOTTOMS', 2, NULL, 'en', NULL, NULL),
(215, 'menu-chinh', 'http://shop.local/vn/menus/bottoms', 'BOTTOMS', 2, NULL, 'vn', NULL, NULL),
(214, 'menu-chinh', 'http://shop.local/en/menus/tees', 'TEES', 2, NULL, 'en', NULL, NULL),
(213, 'menu-chinh', 'http://shop.local/vn/menus/tees', 'TEES', 2, NULL, 'vn', NULL, NULL),
(212, 'menu-chinh', NULL, 'CLOTHING', 1, NULL, 'en', NULL, NULL),
(211, 'menu-chinh', NULL, 'CLOTHING', 1, NULL, 'vn', NULL, NULL),
(209, 'menu-chinh', 'http://shop.local/vn/menus/latest-releases', 'LATEST RELEASES', 1, NULL, 'vn', NULL, NULL),
(210, 'menu-chinh', 'http://shop.local/en/menus/latest-releases', 'LATEST RELEASES', 1, NULL, 'en', NULL, NULL),
(125, 'danh-muc-tin-tuc', 'http://phanbon.local/vn/danh-muc/bai-viet-moi', 'Bài viết mới', 1, NULL, 'vn', NULL, NULL),
(126, 'danh-muc-tin-tuc', 'http://phanbon.local/en/danh-muc/new-posts', 'New Posts', 1, NULL, 'en', NULL, NULL),
(127, 'danh-muc-tin-tuc', 'http://phanbon.local/vn/danh-muc/cong-nghe-sinh-hoc', 'CÔNG NGHỆ SINH HỌC', 1, NULL, 'vn', NULL, NULL),
(128, 'danh-muc-tin-tuc', 'http://phanbon.local/en/danh-muc/biotechnology', 'BIOTECHNOLOGY', 1, NULL, 'en', NULL, NULL),
(129, 'danh-muc-tin-tuc', 'http://phanbon.local/vn/danh-muc/ky-thuat', 'Kỹ thuật', 1, NULL, 'vn', NULL, NULL),
(130, 'danh-muc-tin-tuc', 'http://phanbon.local/en/danh-muc/technology', 'Technology', 1, NULL, 'en', NULL, NULL),
(131, 'danh-muc-tin-tuc', 'http://phanbon.local/vn/danh-muc/tin-tuc', 'Tin tức', 1, NULL, 'vn', NULL, NULL),
(132, 'danh-muc-tin-tuc', 'http://phanbon.local/en/danh-muc/new', 'New', 1, NULL, 'en', NULL, NULL),
(146, 'danh-muc-tin-tuc-ben-phai', 'http://phanbon.local/en/danh-muc/technology', 'Technology', 1, NULL, 'en', NULL, NULL),
(145, 'danh-muc-tin-tuc-ben-phai', 'http://phanbon.local/vn/danh-muc/ky-thuat', 'Kỹ thuật', 1, NULL, 'vn', NULL, NULL),
(144, 'danh-muc-tin-tuc-ben-trai', 'http://phanbon.local/en/danh-muc/new', 'New', 1, NULL, 'en', NULL, NULL),
(143, 'danh-muc-tin-tuc-ben-trai', 'http://phanbon.local/vn/danh-muc/tin-tuc', 'Tin tức', 1, NULL, 'vn', NULL, NULL),
(142, 'danh-muc-tin-tuc-ben-trai', 'http://phanbon.local/en/danh-muc/new-posts', 'New Posts', 1, NULL, 'en', NULL, NULL),
(141, 'danh-muc-tin-tuc-ben-trai', 'http://phanbon.local/vn/danh-muc/bai-viet-moi', 'Bài viết mới', 1, NULL, 'vn', NULL, NULL),
(153, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/vn/danh-muc/dinh-duong', 'DINH DƯỠNG', 2, NULL, 'vn', NULL, NULL),
(152, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/en/danh-muc/working-techniques', 'WORKING TECHNIQUES', 2, NULL, 'en', NULL, NULL),
(151, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/vn/danh-muc/ky-thuat-canh-tac', 'KỸ THUẬT CANH TÁC', 2, NULL, 'vn', NULL, NULL),
(154, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/en/danh-muc/nutrition', 'NUTRITION', 2, NULL, 'en', NULL, NULL),
(155, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/vn/danh-muc/bai-viet-moi', 'Bài viết mới', 1, NULL, 'vn', NULL, NULL),
(156, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/en/danh-muc/new-posts', 'New Posts', 1, NULL, 'en', NULL, NULL),
(157, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/vn/danh-muc/tin-tuc', 'Tin tức', 1, NULL, 'vn', NULL, NULL),
(158, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/en/danh-muc/new', 'New', 1, NULL, 'en', NULL, NULL),
(159, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/vn/danh-muc/ky-thuat', 'Kỹ thuật', 1, NULL, 'vn', NULL, NULL),
(160, 'danh-muc-tin-tuc-o-giua', 'http://phanbon.local/en/danh-muc/technology', 'Technology', 1, NULL, 'en', NULL, NULL),
(294, 'menu-mobile', 'trang/dang-nhap', 'LOGIN', 1, NULL, 'en', NULL, NULL),
(333, 'menu-footer', 'http://shop.local/vn/policies/terms-of-service', 'TERMS OF SERVICE', 1, NULL, 'vn', NULL, NULL),
(334, 'menu-footer', 'http://shop.local/en/policies/terms-of-service-80', 'TERMS OF SERVICE', 1, NULL, 'en', NULL, NULL),
(332, 'menu-footer', 'http://shop.local/en/policies/refund-policy-82', 'REFUND POLICY', 1, NULL, 'en', NULL, NULL),
(330, 'menu-footer', 'http://shop.local/en/policies/shipping-policy-84', 'SHIPPING POLICY', 1, NULL, 'en', NULL, NULL),
(331, 'menu-footer', 'http://shop.local/vn/policies/refund-policy', 'REFUND POLICY', 1, NULL, 'vn', NULL, NULL),
(329, 'menu-footer', 'http://shop.local/vn/policies/shipping-policy', 'SHIPPING POLICY', 1, NULL, 'vn', NULL, NULL),
(327, 'menu-footer', 'http://shop.local/vn/policies/privacy-policy', 'PRIVACY POLICY', 1, NULL, 'vn', NULL, NULL),
(328, 'menu-footer', 'http://shop.local/en/policies/-86', 'PRIVACY POLICY', 1, NULL, 'en', NULL, NULL),
(325, 'menu-footer', '/vn/lien-he', 'CONTACT US', 1, NULL, 'vn', NULL, NULL),
(326, 'menu-footer', NULL, 'CONTACT US', 1, '/en/lien-he', 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `code_sale_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) DEFAULT NULL,
  `cost_ship` int(11) DEFAULT NULL,
  `cost_point` int(11) DEFAULT NULL,
  `cost_sale` int(11) DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT '0. khởi tao đơn hàng\n1. đặt hàng thành công\n2. đã nhận đơn hàng\n3. đang vận chuyển\n4. đã giao hàng ',
  `ip_customer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `method_payment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `code_sale_id`, `user_id`, `total_price`, `cost_ship`, `cost_point`, `cost_sale`, `shipping_address`, `ship_country`, `shipping_city`, `shipping_name`, `shipping_email`, `shipping_phone`, `zip_code`, `status`, `ip_customer`, `created_at`, `updated_at`, `method_payment`, `currency`) VALUES
(12, NULL, 1, 195, 0, 0, 0, '102 thai thinh', 'Vietnam', 'HANOI', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '10000', 1, '127.0.0.1', '2022-05-14 02:33:48', '2022-05-14 02:33:48', '', '$'),
(13, NULL, 1, 0, 0, 0, 0, '102 thai thinh', 'Vietnam', 'HANOI', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '10000', 1, '127.0.0.1', '2022-05-14 02:40:50', '2022-05-14 02:40:50', '', '$'),
(14, NULL, 1, 55, 0, 0, 0, '102 thai thinh', 'Vietnam', '10', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '10000', 1, '127.0.0.1', '2022-05-14 02:41:51', '2022-05-14 02:41:51', '', '$'),
(15, NULL, 1, 75, 0, 0, 0, '102 thai thinh', 'Vietnam', 'HOABINH', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '', 1, '127.0.0.1', '2022-05-14 02:53:15', '2022-05-14 02:53:15', '', '$'),
(16, NULL, 1, 55, 0, 0, 0, '102 thai thinh', 'Vietnam', '10', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '', 1, '127.0.0.1', '2022-05-14 02:53:49', '2022-05-14 02:53:49', '', '$'),
(17, NULL, 1, 150, 0, 0, 0, '102 thai thinh', 'Sweden', '10', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '', 1, '127.0.0.1', '2022-05-14 07:07:55', '2022-05-14 07:07:55', '', '$'),
(18, NULL, 1, 85, 0, 0, 0, '102 thai thinh', 'Vietnam', '10', 'Bui Viet', 'vietbt@vatgia.com', '0357176405', '', 1, '127.0.0.1', '2022-05-14 07:26:00', '2022-05-14 07:26:00', '', '$');

-- --------------------------------------------------------

--
-- Table structure for table `order_bank`
--

CREATE TABLE `order_bank` (
  `order_bank_id` int(11) NOT NULL,
  `name_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manager_account` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_code_sale`
--

CREATE TABLE `order_code_sale` (
  `order_code_sale_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_sale` tinyint(4) DEFAULT NULL COMMENT '0: theo tiền, 1 theo %',
  `sale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `many_use` int(11) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `product_id`, `order_id`, `price`, `description`, `currency`, `quantity`, `size`, `created_at`, `updated_at`) VALUES
(6, 9, 12, '85', NULL, '$', 1, 'xs', NULL, NULL),
(7, 11, 12, '55', NULL, '$', 2, 's', NULL, NULL),
(8, 11, 14, '55', NULL, '$', 1, 'xs', NULL, NULL),
(9, 13, 15, '75', NULL, '$', 1, 'x', NULL, NULL),
(10, 11, 16, '55', NULL, '$', 1, 'xs', NULL, NULL),
(11, 15, 17, '75', NULL, '$', 2, 'x', NULL, NULL),
(12, 9, 18, '85', NULL, '$', 1, 's', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_ship`
--

CREATE TABLE `order_ship` (
  `order_ship_id` int(11) NOT NULL,
  `method_ship` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL,
  `image` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_type` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visiable` tinyint(4) DEFAULT 0 COMMENT '0: Hiện,\n1: Ẩn',
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `index_hot` tinyint(4) DEFAULT NULL COMMENT '0: không nổi bật:\n1: nổi bật',
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '', 'default', NULL, '1', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/sl1.png', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:27'),
(2, NULL, NULL, '', 'default', NULL, '', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/sl1.png', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:27'),
(3, '2', NULL, '', 'default', NULL, '2', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/2.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:45'),
(4, '2', NULL, '', 'default', NULL, '2-4', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/2.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:45'),
(5, '3', NULL, '', 'default', NULL, '3', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/3.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:58'),
(6, '3', NULL, '', 'default', NULL, '3-6', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/3.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:32:58'),
(7, '4', NULL, '', 'default', NULL, '4', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/4.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:12'),
(8, '4', NULL, '', 'default', NULL, '4-8', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/4.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:12'),
(9, '5', NULL, '', 'default', NULL, '5', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/5.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:24'),
(10, '5', NULL, '', 'default', NULL, '5-10', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/5.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:24'),
(11, '6', NULL, '', 'default', NULL, '6', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/6.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:34'),
(12, '6', NULL, '', 'default', NULL, '6-12', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/6.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:34'),
(13, '7', NULL, '', 'default', NULL, '7', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/7.jpg', 'slider', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:46'),
(14, '7', NULL, '', 'default', NULL, '7-14', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/7.jpg', 'slider', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:33:46'),
(15, 'TUYẾN TRÙNG GÂY HẠI THỰC VẬT (PLANT PARASITIC NEMATODES)', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/7Pa_uTs1W84\" width=\"100%\"></iframe></p>', 'default', NULL, 'tuyen-trung-gay-hai-thuc-vat-plant-parasitic-nematodes', '1', NULL, NULL, 'video', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:43:12'),
(16, 'PLACEMENT OF PLANT VARIETIES (PLANT PARASITIC NEMATODES)', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/7Pa_uTs1W84\" width=\"100%\"></iframe></p>', 'default', NULL, '-16', '1', NULL, NULL, 'video', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:43:12'),
(17, 'Phân hữu cơ vi sinh - Dinh dưỡng cốt lõi cho Sầu Riêng', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/BIIWIoP6PzE\" width=\"100%\"></iframe></p>', 'default', NULL, 'phan-huu-co-vi-sinh-dinh-duong-cot-loi-cho-sau-rieng', '1', NULL, NULL, 'video', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:42:52'),
(18, 'Organic fertilizer - Core nutrition for Durian', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/BIIWIoP6PzE\" width=\"100%\"></iframe></p>', 'default', NULL, '-18', '1', NULL, NULL, 'video', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:42:52'),
(19, 'PHÓNG SỰ KHẮC PHỤC BỆNH VÀNG LÁ THỐI RỄ Ở BƯỞI DA XANH - BTTV', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/GiU580XcB9M\" width=\"100%\"></iframe></p>', 'default', NULL, 'phong-su-khac-phuc-benh-vang-la-thoi-re-o-buoi-da-xanh-bttv', '1', NULL, NULL, 'video', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:42:40'),
(20, 'UNLESS THE UNLIMITED GOLD DEFENSE IN THE BEGINNING OF BLUE SKIN - BTTV', NULL, '<p><iframe frameborder=\"0\" height=\"100%\" src=\"https://www.youtube.com/embed/GiU580XcB9M\" width=\"100%\"></iframe></p>', 'default', NULL, '-20', '1', NULL, NULL, 'video', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-09 07:42:40'),
(74, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, '-74', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:49:16'),
(75, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh7', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279763355_154334377081592_5374291620141024896_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:47:52'),
(76, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh7-76', '1', NULL, '/kcfinder-master/upload/images/Product/2_78aac452-da02-4162-8418-7cc3774563ab_533x.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:47:52'),
(77, 'Black-paris', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh8', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278772424_150581000790263_3806526086144562197_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:46:34'),
(78, 'Black-paris', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh8-78', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278772424_150581000790263_3806526086144562197_n.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:46:34'),
(64, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>NEW POLOS INCOMING 🛩🌎</p>', 'default', NULL, '-64', '1', NULL, '/kcfinder-master/upload/images/instafeed/image00002_2_550x.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:52:04'),
(65, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>WE CREATED SOMETHING THAT CAN&rsquo;T BE REPLACED 🧢</p>', 'default', NULL, 'anh2', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279626281_155495343632162_4784356288525369702_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:51:23'),
(66, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>WE CREATED SOMETHING THAT CAN&rsquo;T BE REPLACED 🧢</p>', 'default', NULL, '-66', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279419598_155500413631655_3391973299925306626_n.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:51:23'),
(67, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh3', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:50:53'),
(68, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, '-68', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:50:53'),
(69, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh4', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:50:17'),
(70, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'yelirworld-70', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:50:17'),
(71, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh5', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:49:50'),
(72, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', NULL, 'default', NULL, 'yelirworld', '1', NULL, '/kcfinder-master/upload/images/Product/NAVY_RED_Y_533x.jpg', 'insta-feed', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:49:50'),
(73, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>YYY SWIMSET NOW ONLINE! 🖲</p>', 'default', NULL, 'anh6', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:49:16'),
(58, 'Black paris 1', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR BEIGE COMFY SHORTS ARE THE IDEAL ADDITION TO YOUR CASUAL WARDROBE. CONSTRUCTED WITH AN ELASTICATED WAISTBAND COMPLETE WITH AN ADJUSTABLE DRAWCORD FOR A CUSTOMIZABLE FIT, THIS PIECE IS CRAFTED FROM 100% COTTON AND IS FINISHED WITH A WHITE LOGO DETAILING ON THE LEFT LEG. PAIR WITH OUR&nbsp;BEIGE MIAMI FIT TEE&nbsp;FOR THE PERFECT CASUAL COMBO.</p>\r\n\r\n<ul>\r\n	<li>MIAMI FIT</li>\r\n	<li>MODEL IS 6FT 1 AND WEARS A SIZE MEDIUM</li>\r\n	<li>100% COTTON, EXCLUSIVE OF RIB</li>\r\n	<li>MACHINE WASHABLE</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'black-paris-1', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279763355_154334377081592_5374291620141024896_n.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:35:19', '2022-05-14 08:35:19'),
(59, 'SHOP WINDCHEATERS', NULL, NULL, 'default', NULL, 'shop-windcheaters', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 'shop-isolate', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:07:01'),
(60, 'Ảnh 2', NULL, NULL, 'default', NULL, 'anh-2-60', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 'shop-isolate', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:07:01'),
(61, 'SHOP COMBATS', NULL, NULL, 'default', NULL, 'shop-combats', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg', 'shop-isolate', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:06:52'),
(62, 'SHOP COMBATS', NULL, NULL, 'default', NULL, 'shop-combats-62', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg', 'shop-isolate', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:06:52'),
(63, 'YELIRWORLD', 'https://www.instagram.com/yelirworld/', '<p>NEW POLOS INCOMING 🛩🌎</p>', 'default', NULL, 'anh1', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/275044739_140028691845494_4548975117751402740_n.jpg', 'insta-feed', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:52:04'),
(54, 'Black paris 3', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR&nbsp;YYY SWIM SET TEE IS CONSTRUCTED FROM 100% COTTON WITH A CREW NECKLINE AND FINISHED WITH A BLUE YYY LOGO AT THE CHEST. THIS TEE IS DESIGNED TO BE WORN WITH OUR&nbsp;YYY MATCHING&nbsp;SWIM SHORTS.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE</li>\r\n	<li>MODEL WEARS A SIZE MEDIUM&nbsp;</li>\r\n	<li>MODEL MEASUREMENTS: CHEST 38&quot;, HEIGHT 6FT 1&quot;&nbsp;</li>\r\n	<li>CUT WITH A SLIM FIT</li>\r\n	<li>100% COTTON</li>\r\n	<li>MACHINE WASHABLE&nbsp;</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'black-paris-3-54', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/275044739_140028691845494_4548975117751402740_n.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:37:10', '2022-05-14 08:37:10'),
(55, 'Black paris 2', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR BLACK&nbsp;SWIM SHORTS ARE A HOLIDAY ESSENTIAL. CONSTRUCTED WITH TWO SIDE POCKETS, A VELCRO BACK POCKET, AN ELASTICATED WAISTBAND AND A SUPPORTIVE MESH INSERT, THIS STYLE IS FINISHED WITH OUR ICONIC YYY LOGO IN&nbsp;BLUE ON THE LEFT LEG.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE</li>\r\n	<li>MODEL WEARS SIZE&nbsp;MEDIUM</li>\r\n	<li>MODEL MEASUREMENTS: HEIGHT 6FT 2&quot;, WAIST 32&quot;</li>\r\n	<li>CUT WITH A REGULAR FIT&nbsp;&nbsp;</li>\r\n	<li>100% POLYESTER, EXCLUSIVE OF TRIMS&nbsp;&nbsp;</li>\r\n	<li>MACHINE WASHABLE&nbsp;</li>\r\n</ul>', 'default', NULL, 'black-paris-2', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278478485_150823327432697_8775551517414532180_n.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:34:25', '2022-05-14 08:34:25'),
(56, 'Black paris 2', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR BLACK&nbsp;SWIM SHORTS ARE A HOLIDAY ESSENTIAL. CONSTRUCTED WITH TWO SIDE POCKETS, A VELCRO BACK POCKET, AN ELASTICATED WAISTBAND AND A SUPPORTIVE MESH INSERT, THIS STYLE IS FINISHED WITH OUR ICONIC YYY LOGO IN&nbsp;BLUE ON THE LEFT LEG.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE</li>\r\n	<li>MODEL WEARS SIZE&nbsp;MEDIUM</li>\r\n	<li>MODEL MEASUREMENTS: HEIGHT 6FT 2&quot;, WAIST 32&quot;</li>\r\n	<li>CUT WITH A REGULAR FIT&nbsp;&nbsp;</li>\r\n	<li>100% POLYESTER, EXCLUSIVE OF TRIMS&nbsp;&nbsp;</li>\r\n	<li>MACHINE WASHABLE&nbsp;</li>\r\n</ul>', 'default', NULL, 'black-paris-2-56', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278478485_150823327432697_8775551517414532180_n.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:34:25', '2022-05-14 08:34:25'),
(57, 'Black paris 1', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR BEIGE COMFY SHORTS ARE THE IDEAL ADDITION TO YOUR CASUAL WARDROBE. CONSTRUCTED WITH AN ELASTICATED WAISTBAND COMPLETE WITH AN ADJUSTABLE DRAWCORD FOR A CUSTOMIZABLE FIT, THIS PIECE IS CRAFTED FROM 100% COTTON AND IS FINISHED WITH A WHITE LOGO DETAILING ON THE LEFT LEG. PAIR WITH OUR&nbsp;BEIGE MIAMI FIT TEE&nbsp;FOR THE PERFECT CASUAL COMBO.</p>\r\n\r\n<ul>\r\n	<li>MIAMI FIT</li>\r\n	<li>MODEL IS 6FT 1 AND WEARS A SIZE MEDIUM</li>\r\n	<li>100% COTTON, EXCLUSIVE OF RIB</li>\r\n	<li>MACHINE WASHABLE</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'y-logo-shorts-moonstruck-miami-fit', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/279763355_154334377081592_5374291620141024896_n.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:35:19', '2022-05-14 08:35:19'),
(51, 'Black paris 4', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR GREY POLO SHIRT IS A TIMELESS WARDROBE ESSENTIAL. CONSTRUCTED WITH SHORT SLEEVES AND A SPORTY CONCEALED QUARTER ZIP, THIS PIECE IS DESIGNED WITH A CONTRAST STRIPE IN YELLOW ON THE KNITTED RIB COLLAR.</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE, MODEL IS&nbsp;6FT 2&quot; AND WEARS A SIZE&nbsp;L</li>\r\n	<li>CUT WITH A SLIM FIT</li>\r\n	<li>68% POLYESTER, 31% COTTON</li>\r\n	<li>MACHINE WASHABLE</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'black-paris-4', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/274835298_140028738512156_7681966629626654782_n.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:39:01', '2022-05-14 08:39:01'),
(52, 'Black paris 4', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR GREY POLO SHIRT IS A TIMELESS WARDROBE ESSENTIAL. CONSTRUCTED WITH SHORT SLEEVES AND A SPORTY CONCEALED QUARTER ZIP, THIS PIECE IS DESIGNED WITH A CONTRAST STRIPE IN YELLOW ON THE KNITTED RIB COLLAR.</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE, MODEL IS&nbsp;6FT 2&quot; AND WEARS A SIZE&nbsp;L</li>\r\n	<li>CUT WITH A SLIM FIT</li>\r\n	<li>68% POLYESTER, 31% COTTON</li>\r\n	<li>MACHINE WASHABLE</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'black-paris-4-52', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/274835298_140028738512156_7681966629626654782_n.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:39:01', '2022-05-14 08:39:01'),
(53, 'Black paris 3', 'TAX INCLUDED. DUTIES & SHIPPING CALCULATED AT CHECKOUT', '<p>OUR&nbsp;YYY SWIM SET TEE IS CONSTRUCTED FROM 100% COTTON WITH A CREW NECKLINE AND FINISHED WITH A BLUE YYY LOGO AT THE CHEST. THIS TEE IS DESIGNED TO BE WORN WITH OUR&nbsp;YYY MATCHING&nbsp;SWIM SHORTS.&nbsp;</p>\r\n\r\n<ul>\r\n	<li>FITS TRUE TO SIZE</li>\r\n	<li>MODEL WEARS A SIZE MEDIUM&nbsp;</li>\r\n	<li>MODEL MEASUREMENTS: CHEST 38&quot;, HEIGHT 6FT 1&quot;&nbsp;</li>\r\n	<li>CUT WITH A SLIM FIT</li>\r\n	<li>100% COTTON</li>\r\n	<li>MACHINE WASHABLE&nbsp;</li>\r\n	<li>REFER TO LABEL FOR CARE INFORMATION</li>\r\n</ul>', 'default', NULL, 'black-paris-3', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/275111210_140028715178825_8446653626786667896_n.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:37:10', '2022-05-14 08:37:10'),
(81, 'REFUND POLICY', NULL, '<p style=\"text-align:center\"><strong>&nbsp;TO PROCESS A RETURN&nbsp;<a href=\"https://yelirworld.com/a/returns\">CLICK HERE</a></strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;<strong>GENERAL RETURNS&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:center\">EXCHANGES/REFUNDS WILL BE GRANTED UP TO 14 DAYS FROM THE DATE THAT THE PRODUCT WAS RECEIVED. PLEASE MAKE SURE YOU CAREFULLY REVIEW YOUR ORDER BEFORE FINALISING YOUR PURCHASE.</p>\r\n\r\n<p style=\"text-align:center\">IN THE UNLIKELY CIRCUMSTANCE YOU NEED TO RETURN AN ITEM TO US, PLEASE SUBMIT A RETURNS REQUEST BY GOING CLICKING THE LINK ABOVE.&nbsp;<strong><a href=\"https://yelirworld.com/a/returns\">CLICK HERE</a></strong></p>\r\n\r\n<p style=\"text-align:center\">PLEASE BE AWARE THAT RETURNS MUST BE SENT BACK TO US WITHIN 14 DAYS OF SUBMITTING THE RETURNS REQUEST.</p>\r\n\r\n<p style=\"text-align:center\">ITEMS MUST BE RETURNED IN ALL ORIGINAL PACKAGING (INCLUDING DUST BAG) AND IN &lsquo;AS NEW&rsquo; CONDITION. ALL TAGS MUST NOT HAVE BEEN REMOVED AND MUST BE INTACT. PLEASE MAKE SURE TO INCLUDE YOUR PROOF OF PURCHASE RECEIPT WITHIN THE PACKAGE SO WE CAN DETERMINE WHO THE RETURN BELONGS TO. ANY ITEMS YOU WISH TO RETURN ARE YOUR RESPONSIBILITY UNTIL THEY REACH OUR WAREHOUSE &amp; ARE SIGNED FOR.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">IF YOU NEED ANY ASSISTANCE YOU CAN GET IN TOUCH VIA EMAIL: INFO@YELIRWORLD.COM</p>\r\n\r\n<p style=\"text-align:center\"><strong>RETURNS ADDRESS</strong></p>\r\n\r\n<p style=\"text-align:center\">TO PROTECT YOURSELF AND YOUR PARCEL(S) PLEASE&nbsp;MAKE SURE YOU USE A DELIVERY SERVICE THAT INSURES YOU FOR THE VALUE OF THE ITEM(S) &amp; THE ITEM(S) MUST BE RECORDED &amp; SIGNED FOR.</p>\r\n\r\n<p style=\"text-align:center\">YELIR WORLD RETURNS<br />\r\nUNIT 2A<br />\r\nMARSHFIELD BANK<br />\r\nMIDDLEWICH ROAD<br />\r\nCREWE<br />\r\nUNITED KINGDOM<br />\r\nCW2 8UY</p>\r\n\r\n<p style=\"text-align:center\">ANY ITEMS YOU WISH TO RETURN ARE YOUR RESPONSIBILITY UNTIL THEY REACH OUR WAREHOUSE &amp; ARE SIGNED FOR.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">ONCE YOUR ITEM(S) ARRIVE BACK TO OUR WAREHOUSE, EXCHANGES/REFUNDS WILL BE PROCESSED AS QUICKLY AS POSSIBLE.</p>\r\n\r\n<p style=\"text-align:center\">AT THIS STAGE WE ARE UNABLE TO COVER RETURN SHIPPING COSTS.</p>', 'default', NULL, 'refund-policy', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 04:18:03', '2022-05-14 04:18:03'),
(82, 'REFUND POLICY', NULL, '<p><strong>&nbsp;TO PROCESS A RETURN&nbsp;<a href=\"https://yelirworld.com/a/returns\">CLICK HERE</a></strong></p>\r\n\r\n<p>&nbsp;<strong>GENERAL RETURNS&nbsp;</strong></p>\r\n\r\n<p>EXCHANGES/REFUNDS WILL BE GRANTED UP TO 14 DAYS FROM THE DATE THAT THE PRODUCT WAS RECEIVED. PLEASE MAKE SURE YOU CAREFULLY REVIEW YOUR ORDER BEFORE FINALISING YOUR PURCHASE.</p>\r\n\r\n<p>IN THE UNLIKELY CIRCUMSTANCE YOU NEED TO RETURN AN ITEM TO US, PLEASE SUBMIT A RETURNS REQUEST BY GOING CLICKING THE LINK ABOVE.&nbsp;<strong><a href=\"https://yelirworld.com/a/returns\">CLICK HERE</a></strong></p>\r\n\r\n<p>PLEASE BE AWARE THAT RETURNS MUST BE SENT BACK TO US WITHIN 14 DAYS OF SUBMITTING THE RETURNS REQUEST.</p>\r\n\r\n<p>ITEMS MUST BE RETURNED IN ALL ORIGINAL PACKAGING (INCLUDING DUST BAG) AND IN &lsquo;AS NEW&rsquo; CONDITION. ALL TAGS MUST NOT HAVE BEEN REMOVED AND MUST BE INTACT. PLEASE MAKE SURE TO INCLUDE YOUR PROOF OF PURCHASE RECEIPT WITHIN THE PACKAGE SO WE CAN DETERMINE WHO THE RETURN BELONGS TO. ANY ITEMS YOU WISH TO RETURN ARE YOUR RESPONSIBILITY UNTIL THEY REACH OUR WAREHOUSE &amp; ARE SIGNED FOR.&nbsp;</p>\r\n\r\n<p>IF YOU NEED ANY ASSISTANCE YOU CAN GET IN TOUCH VIA EMAIL: INFO@YELIRWORLD.COM</p>\r\n\r\n<p><strong>RETURNS ADDRESS</strong></p>\r\n\r\n<p>TO PROTECT YOURSELF AND YOUR PARCEL(S) PLEASE&nbsp;MAKE SURE YOU USE A DELIVERY SERVICE THAT INSURES YOU FOR THE VALUE OF THE ITEM(S) &amp; THE ITEM(S) MUST BE RECORDED &amp; SIGNED FOR.</p>\r\n\r\n<p>YELIR WORLD RETURNS<br />\r\nUNIT 2A<br />\r\nMARSHFIELD BANK<br />\r\nMIDDLEWICH ROAD<br />\r\nCREWE<br />\r\nUNITED KINGDOM<br />\r\nCW2 8UY</p>\r\n\r\n<p>ANY ITEMS YOU WISH TO RETURN ARE YOUR RESPONSIBILITY UNTIL THEY REACH OUR WAREHOUSE &amp; ARE SIGNED FOR.&nbsp;</p>\r\n\r\n<p>ONCE YOUR ITEM(S) ARRIVE BACK TO OUR WAREHOUSE, EXCHANGES/REFUNDS WILL BE PROCESSED AS QUICKLY AS POSSIBLE.</p>\r\n\r\n<p>AT THIS STAGE WE ARE UNABLE TO COVER RETURN SHIPPING COSTS.</p>', 'default', NULL, 'refund-policy-82', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 04:18:03', '2022-05-14 04:18:03'),
(83, 'SHIPPING POLICY', NULL, '<h3>&nbsp;GENERAL SHIPPING OPTIONS&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DPD NEXT&nbsp;BUSINESS DAY</strong></p>\r\n\r\n<p>ORDER&nbsp;BEFORE 2PM GMT MON-THURS. (EXCLUDING BANK HOLIDAYS)</p>\r\n\r\n<p><strong>FREE</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FOR GUARANTEED FREE NEXT&nbsp;BUSINESS DAY DELIVERY, PLEASE MAKE SURE ORDERS ARE PLACED BEFORE 2PM THURSDAY. ANY ORDERS PLACED BETWEEN 2PM THURSDAY &amp; 2PM FRIDAY WILL ARRIVE THE FOLLOWING MONDAY.</p>\r\n\r\n<h4><strong>DPD SATURDAY DELIVERY</strong></h4>\r\n\r\n<p>ORDER BEFORE 2PM GMT FRIDAY.</p>\r\n\r\n<p><strong>&pound;9.00</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FOR GUARANTEED SATURDAY DELIVERY, PLEASE MAKE SURE ORDERS ARE PLACED BEFORE 2PM GMT FRIDAY.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4><strong>INTERNATIONAL DELIVERY OPTIONS</strong></h4>\r\n\r\n<p><strong>IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOUR ORDER MAY BE SUBJECT TO IMPORT DUTIES AND/OR TAXES, AND YOU WILL BE RESPONSIBLE FOR ANY SUCH CHARGES. WE WILL NOT BE LIABLE TO PAY ANY IMPORT DUTIES OR TAXES UNDER ANY CIRCUMSTANCES.</strong></p>\r\n\r\n<p>DHL TRACKED&nbsp;DELIVERY</p>\r\n\r\n<p>3+ DAYS</p>\r\n\r\n<p><strong>&pound;20.00</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h4><strong>WANT TO TRACK YOUR ORDER?</strong></h4>\r\n\r\n<p>YOUR TRACKING INFORMATION WILL AUTOMATICALLY BE EMAILED TO THE EMAIL ADDRESS ON YOUR ACCOUNT OR SENT BY SMS TO THE PHONE NUMBER ON YOUR ACCOUNT. IF YOU DON&#39;T RECEIVE THIS, PLEASE CHECK YOUR SPAM FOLDER.</p>', 'default', NULL, 'shipping-policy', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 04:06:51', '2022-05-14 04:06:51'),
(84, 'SHIPPING POLICY', NULL, '<h3>&nbsp;GENERAL SHIPPING OPTIONS&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>DPD NEXT&nbsp;BUSINESS DAY</strong></p>\r\n\r\n<p>ORDER&nbsp;BEFORE 2PM GMT MON-THURS. (EXCLUDING BANK HOLIDAYS)</p>\r\n\r\n<p><strong>FREE</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FOR GUARANTEED FREE NEXT&nbsp;BUSINESS DAY DELIVERY, PLEASE MAKE SURE ORDERS ARE PLACED BEFORE 2PM THURSDAY. ANY ORDERS PLACED BETWEEN 2PM THURSDAY &amp; 2PM FRIDAY WILL ARRIVE THE FOLLOWING MONDAY.</p>\r\n\r\n<h4><strong>DPD SATURDAY DELIVERY</strong></h4>\r\n\r\n<p>ORDER BEFORE 2PM GMT FRIDAY.</p>\r\n\r\n<p><strong>&pound;9.00</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FOR GUARANTEED SATURDAY DELIVERY, PLEASE MAKE SURE ORDERS ARE PLACED BEFORE 2PM GMT FRIDAY.</p>\r\n\r\n<h4>&nbsp;</h4>\r\n\r\n<h4><strong>INTERNATIONAL DELIVERY OPTIONS</strong></h4>\r\n\r\n<p><strong>IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOUR ORDER MAY BE SUBJECT TO IMPORT DUTIES AND/OR TAXES, AND YOU WILL BE RESPONSIBLE FOR ANY SUCH CHARGES. WE WILL NOT BE LIABLE TO PAY ANY IMPORT DUTIES OR TAXES UNDER ANY CIRCUMSTANCES.</strong></p>\r\n\r\n<p>DHL TRACKED&nbsp;DELIVERY</p>\r\n\r\n<p>3+ DAYS</p>\r\n\r\n<p><strong>&pound;20.00</strong></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h4><strong>WANT TO TRACK YOUR ORDER?</strong></h4>\r\n\r\n<p>YOUR TRACKING INFORMATION WILL AUTOMATICALLY BE EMAILED TO THE EMAIL ADDRESS ON YOUR ACCOUNT OR SENT BY SMS TO THE PHONE NUMBER ON YOUR ACCOUNT. IF YOU DON&#39;T RECEIVE THIS, PLEASE CHECK YOUR SPAM FOLDER.</p>', 'default', NULL, 'shipping-policy-84', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 04:06:51', '2022-05-14 04:06:51');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(85, 'PRIVACY POLICY', NULL, '<p><strong>NTRODUCTION</strong></p>\r\n\r\n<p>YELIRWORLD RESPECTS YOUR PRIVACY AND IS COMMITTED TO PROTECTING YOUR PERSONAL DATA. THIS PRIVACY POLICY WILL TELL YOU HOW WE LOOK AFTER YOUR PERSONAL DATA WHEN YOU VISIT OUR WEBSITE AND INFORM YOU OF YOUR PRIVACY RIGHTS AND HOW THE LAW PROTECTS YOU.</p>\r\n\r\n<p>PLEASE USE THE GLOSSARY AT THE END OF THIS PRIVACY POLICY TO UNDERSTAND THE MEANING OF SOME OF THE TERMS USED IN IT.</p>\r\n\r\n<p>OUR COOKIES POLICY IS SET OUT BELOW, AT THE END OF THIS PRIVACY POLICY.</p>\r\n\r\n<p><strong>1. IMPORTANT INFORMATION AND WHO WE ARE</strong></p>\r\n\r\n<p><strong>PURPOSE OF THIS PRIVACY POLICY</strong></p>\r\n\r\n<p>THIS PRIVACY POLICY AIMS TO GIVE YOU INFORMATION ON HOW YELIR WORLD COLLECTS AND PROCESSES YOUR PERSONAL DATA THROUGH YOUR USE OF THIS WEBSITE, INCLUDING ANY DATA YOU MAY PROVIDE THROUGH THE WEBSITE WHEN YOU SIGN UP TO RECEIVE OUR MARKETING MATERIAL, PURCHASE A PRODUCT OR SERVICE OR TAKE PART IN A COMPETITION.</p>\r\n\r\n<p>THIS WEBSITE IS NOT INTENDED FOR CHILDREN AND WE DO NOT KNOWINGLY COLLECT DATA RELATING TO CHILDREN.</p>\r\n\r\n<p>IT IS IMPORTANT THAT YOU READ THIS PRIVACY POLICY TOGETHER WITH ANY OTHER PRIVACY NOTICE ON OUR WEBSITE FROM TIME TO TIME SO THAT YOU ARE FULLY AWARE OF HOW AND WHY WE ARE USING YOUR DATA.</p>\r\n\r\n<p><strong>CONTROLLER</strong></p>\r\n\r\n<p>YELIR WORLD IS THE CONTROLLER AND RESPONSIBLE FOR YOUR PERSONAL DATA (COLLECTIVELY REFERRED TO AS, &ldquo;WE&rdquo;, &ldquo;US&rdquo; OR &ldquo;OUR&rdquo; IN THIS PRIVACY POLICY).</p>\r\n\r\n<p><strong>CONTACT DETAILS</strong></p>\r\n\r\n<p>OUR FULL DETAILS ARE:</p>\r\n\r\n<p>FULL NAME OF LEGAL ENTITY: YELIR WORLD LTD, A LIMITED COMPANY WITH REGISTERED NUMBER 1105 9200. YELIR WORLD LTD IS REGISTERED, AND OPERATES, IN THE UNITED KINGDOM.</p>\r\n\r\n<p>POSTAL ADDRESS: UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM CW2 8UY</p>\r\n\r\n<p>YOU CAN ALSO CONTACT US VIA EMAIL:&nbsp;<em>INFO@YELIRWORLD.COM</em></p>\r\n\r\n<p>YOU HAVE THE RIGHT TO MAKE A COMPLAINT AT ANY TIME TO THE INFORMATION COMMISSIONER&rsquo;S OFFICE (ICO), THE UK SUPERVISORY AUTHORITY FOR DATA PROTECTION ISSUES (HTTPS://ICO.ORG.UK). IN THE UK, PLEASE READ: HTTPS://ICO.ORG.UK/FOR-THE-PUBLIC/RAISING-CONCERNS/ FOR DETAILS OF HOW TO DO THIS. WE WOULD, HOWEVER, APPRECIATE THE CHANCE TO DEAL WITH YOUR CONCERNS BEFORE YOU APPROACH THE ICO SO PLEASE CONTACT US IN THE FIRST INSTANCE.</p>\r\n\r\n<p><strong>CHANGES TO THE PRIVACY POLICY AND YOUR DUTY TO INFORM US OF CHANGES</strong></p>\r\n\r\n<p>WE MAY NEED TO UPDATE THIS POLICY AT ANY TIME AND WITHOUT NOTICE AND WHERE WE DO THIS WE WILL NOTIFY YOU BY INCLUDING POP UP BOXES ON THE WEBSITE AND/OR EMAILING OUR CUSTOMERS. THIS POLICY WAS LAST UPDATED ON 25 MAY 2018.</p>\r\n\r\n<p>IT IS IMPORTANT THAT THE PERSONAL DATA WE HOLD ABOUT YOU IS ACCURATE AND UP TO DATE. PLEASE KEEP US INFORMED IF YOUR PERSONAL DATA CHANGES DURING YOUR RELATIONSHIP WITH US AND PERIODICALLY REVIEW YOUR ACCOUNT SETTINGS ON OUR WEBSITE.</p>\r\n\r\n<p><strong>THIRD-PARTY LINKS</strong></p>\r\n\r\n<p>THIS WEBSITE MAY INCLUDE LINKS TO THIRD-PARTY WEBSITES, PLUG-INS AND APPLICATIONS. CLICKING ON THOSE LINKS OR ENABLING THOSE CONNECTIONS MAY ALLOW THIRD PARTIES TO COLLECT OR SHARE DATA ABOUT YOU. WE DO NOT CONTROL THESE THIRD-PARTY WEBSITES AND ARE NOT RESPONSIBLE FOR THEIR PRIVACY STATEMENTS. WHEN YOU LEAVE OUR WEBSITE, WE ENCOURAGE YOU TO READ THE PRIVACY POLICY OF EVERY WEBSITE YOU VISIT.</p>\r\n\r\n<p><strong>2. THE DATA WE COLLECT ABOUT YOU</strong></p>\r\n\r\n<p>PERSONAL DATA, OR PERSONAL INFORMATION, MEANS ANY INFORMATION ABOUT AN INDIVIDUAL FROM WHICH THAT PERSON CAN BE IDENTIFIED. IT DOES NOT INCLUDE DATA WHERE THE IDENTITY HAS BEEN REMOVED (ANONYMOUS DATA).</p>\r\n\r\n<p>WE MAY COLLECT, USE, STORE AND TRANSFER DIFFERENT KINDS OF PERSONAL DATA ABOUT YOU WHICH WE HAVE GROUPED TOGETHER FOLLOWS:</p>\r\n\r\n<p>&middot; IDENTITY DATA INCLUDES FIRST NAME AND LAST NAME.</p>\r\n\r\n<p>&middot; CONTACT DATA MEANS THE DATA WE USE TO CONTACT YOU INCLUDING YOUR BILLING ADDRESS, DELIVERY ADDRESS, EMAIL ADDRESS AND TELEPHONE NUMBER.</p>\r\n\r\n<p>&middot; FINANCIAL DATA MEANS THE DATA WE USE TO PROCESS YOUR PAYMENTS FOR YOUR ORDERS INCLUDING YOUR PAYMENT CARD DETAILS. WE DO NOT STORE OR PROCESS YOUR CARD DETAILS OURSELVES, THEY ARE PROCESSED AND STORED VIA ONE OF OUR CONTRACTED THIRD PARTY SERVICE PROVIDERS. WE ENCRYPT YOUR PAYMENT CARD DETAILS IN YOUR BROWSER AND SECURELY TRANSFER THIS DATA TO OUR RELEVANT THIRD PARTY PAYMENT PROVIDER TO PROCESS A PAYMENT.</p>\r\n\r\n<p>&middot; TRANSACTION DATA MEANS DETAILS ABOUT TRANSACTIONS YOU HAVE MADE ON OUR WEBSITE INCLUDING THE PAYMENTS TO AND FROM YOU ALONG WITH OTHER DETAILS OF PRODUCTS AND SERVICES YOU HAVE PURCHASED FROM US.</p>\r\n\r\n<p>&middot; TECHNICAL DATA MEANS DETAILS ABOUT THE DEVICE(S) YOU USE TO ACCESS OUR WEBSITE INCLUDING YOUR INTERNET PROTOCOL (IP) ADDRESS, BROWSER TYPE AND VERSION, LOCATION, BROWSER PLUG-IN TYPES AND VERSIONS, OPERATING SYSTEM AND PLATFORM AND OTHER TECHNOLOGY ON THE DEVICES YOU USE TO ACCESS THIS WEBSITE.</p>\r\n\r\n<p>&middot; PROFILE DATA INCLUDESYOUR USERNAME (EMAIL ADDRESS) AND PASSWORD, YOUR LOGIN DATA, PURCHASES OR ORDERS MADE BY YOU, YOUR INTERESTS, PREFERENCES, FEEDBACK AND SURVEY RESPONSES.</p>\r\n\r\n<p>&middot; USAGE DATA INCLUDES INFORMATION ABOUT HOW YOU USE OUR WEBSITE, PRODUCTS AND SERVICES. THIS INCLUDES YOUR BROWSING PATTERNS AND INFORMATION SUCH AS HOW LONG YOU MIGHT SPEND ON ONE OF OUR WEBPAGES AND WHAT YOU LOOK AT AND FOR ON OUR WEBSITE, THE CLICK STREAM TO AND FROM OUR WEBSITE, PAGE RESPONSE TIMES AND PAGE INTERACTION INFORMATION SUCH AS SCROLLING, CLICKS AND MOUSEOVERS.</p>\r\n\r\n<p>&middot; MARKETING AND COMMUNICATIONS DATA INCLUDES YOUR PREFERENCES IN RECEIVING MARKETING FROM US AND YOUR COMMUNICATION PREFERENCES.</p>\r\n\r\n<p>WE ALSO COLLECT, USE AND SHARE AGGREGATED AND/OR ANONYMISED DATA (&ldquo;AGGREGATED DATA&rdquo;) SUCH AS STATISTICAL OR DEMOGRAPHIC DATA FOR ANY PURPOSE. AGGREGATED DATA MAY BE DERIVED FROM YOUR PERSONAL DATA BUT IS NOT CONSIDERED PERSONAL DATA IN LAW AS THIS DATA DOES NOT DIRECTLY OR INDIRECTLY REVEAL YOUR IDENTITY. FOR EXAMPLE, WE MAY AGGREGATE YOUR USAGE DATA TO CALCULATE THE PERCENTAGE OF USERS ACCESSING A SPECIFIC WEBSITE FEATURE. HOWEVER, IF WE COMBINE OR CONNECT AGGREGATED DATA WITH YOUR PERSONAL DATA SO THAT IT CAN DIRECTLY OR INDIRECTLY IDENTIFY YOU, WE TREAT THE COMBINED DATA AS PERSONAL DATA WHICH WILL BE USED IN ACCORDANCE WITH THIS PRIVACY POLICY.</p>\r\n\r\n<p><strong>IF YOU FAIL TO PROVIDE PERSONAL DATA</strong></p>\r\n\r\n<p>WHERE WE NEED TO COLLECT PERSONAL DATA BY LAW, OR UNDER THE TERMS OF A CONTRACT WE HAVE WITH YOU AND YOU FAIL TO PROVIDE THAT DATA WHEN REQUESTED, WE MAY NOT BE ABLE TO PERFORM THE CONTRACT WE HAVE OR ARE TRYING TO ENTER INTO WITH YOU (FOR EXAMPLE, WHERE YOU DO NOT PROVIDE SUITABLE DELIVERY INSTRUCTIONS TO PROVIDE YOU WITH GOODS OR SERVICES). IN THIS CASE, WE MAY HAVE TO CANCEL A PRODUCT OR SERVICE YOU HAVE WITH US BUT WE WILL NOTIFY YOU IF THIS IS THE CASE AT THE TIME.</p>\r\n\r\n<p><strong>3. HOW IS YOUR PERSONAL DATA COLLECTED?</strong></p>\r\n\r\n<p>WE USE DIFFERENT METHODS TO COLLECT DATA FROM AND ABOUT YOU INCLUDING THROUGH:</p>\r\n\r\n<p>&middot; DIRECT INTERACTIONS. YOU MAY GIVE US YOUR IDENTITY DATA, CONTACT DATA, TRANSACTION DATA, PROFILE DATA, FINANCIAL DATA AND MARKETING AND COMMUNICATIONS DATA BY USING OUR WEBSITE, FILLING IN FORMS OR BY CORRESPONDING WITH US BY POST, PHONE, EMAIL OR OTHERWISE. THIS INCLUDES PERSONAL DATA YOU PROVIDE WHEN YOU</p>\r\n\r\n<p>&middot; PURCHASE A PRODUCT OR SERVICE (INCLUDING GIFT CARDS) THROUGH OUR WEBSITE;</p>\r\n\r\n<p>&middot; CREATE AN ACCOUNT ON OUR WEBSITE;</p>\r\n\r\n<p>&middot; REQUEST MARKETING TO BE SENT TO YOU;</p>\r\n\r\n<p>&middot; ENTER A COMPETITION; OR</p>\r\n\r\n<p>&middot; GIVE US SOME FEEDBACK.</p>\r\n\r\n<p>&middot; AUTOMATED TECHNOLOGIES OR INTERACTIONS. AS YOU INTERACT WITH OUR WEBSITE, WE MAY AUTOMATICALLY COLLECT USAGE DATA AND TECHNICAL DATA ABOUT YOUR EQUIPMENT, BROWSING ACTIONS AND PATTERNS. WE COLLECT THIS PERSONAL DATA BY USING COOKIES, SERVER LOGS AND OTHER SIMILAR TECHNOLOGIES. PLEASE SEE OUR COOKIES POLICY FOR FURTHER DETAILS.</p>\r\n\r\n<p><strong>4. THIRD PARTY SOURCES OF DATA/DATA SHARING:</strong></p>\r\n\r\n<p>WE ALSO COLLECT FROM AND SHARE DATA WITH THE FOLLOWING PROVIDERS:</p>\r\n\r\n<p>&middot; ESSENTIAL SERVICE PROVIDERS: SOMETIMES, OTHER BUSINESSES GIVE US DATA ABOUT YOU WHICH WE MAY NEED FOR OUR LEGITIMATE INTERESTS OF CONDUCTING BUSINESS WITH YOU AND ON OCCASION THEY ARE NECESSARY TO PERFORM OUR CONTRACT WITH YOU. IT USUALLY COMPRISES FINANCIAL DATA OR TRANSACTION DATA. THIS HAPPENS WHEN WE LINK THROUGH TO THIRD PARTY PAYMENT PROVIDERS. THEY TELL US THAT YOU HAVE PAID FOR YOUR PRODUCTS AND, WHERE RELEVANT AND/OR NECESSARY THEY WILL PROVIDE US WITH YOUR CONTACT DATA AND TRANSACTION DATA. WE ALSO MIGHT ENGAGE THIRD PARTY CONTRACTORS TO PROVIDE US WITH TECHNICAL OR DELIVERY SERVICES THAT ARE RELATED TO YOUR ACCOUNT WITH US.</p>\r\n\r\n<p>&middot; PROFESSIONAL ADVISERS AND INVESTORS: WE MAY ALSO SHARE YOUR DATA WITH PROFESSIONAL ADVISERS SUCH AS OUR LAWYERS AND INSURERS TO MANAGE RISKS AND LEGAL CLAIMS, AND/OR AS PART OF OUR RELATIONSHIP AND OBLIGATIONS TO OUR INVESTOR ORGANISATIONS. THIS IS IN OUR LEGITIMATE INTERESTS.</p>\r\n\r\n<p>&middot; GROUP: IT IS POSSIBLE WE COULD SELL OUR BUSINESS TO A THIRD PARTY OR RE-ORGANISE OUR BUSINESS OR BECOME INSOLVENT. IN THAT SCENARIO, OUR DATABASE OF CUSTOMERS IS ONE OF THE BIGGEST PARTS OF THAT BUSINESS AND SO WE WOULD NEED TO SHARE IT WITH THE THIRD-PARTY BUYER AND THEIR ADVISERS. THIS IS IN THE LEGITIMATE INTERESTS OF SELLING OUR BUSINESS. WE MAY ALSO EXPAND OUR GROUP OF COMPANIES AND IN THIS SCENARIO WE MAY SHARE YOUR DATA WITHIN OUR GROUP IN ORDER TO IMPROVE OUR PRODUCTS AND SERVICES AND BECAUSE OF SOME OF OUR INTERNAL SUPPORT SERVICES MAY BE SHARED ACROSS THE GROUP. THIS IS IN OUR LEGITIMATE INTERESTS OF COST EFFICIENCY AND GROWING OUR BUSINESS. WHERE THIS OCCURS, WE WILL POST A LINK TO ALL GROUP COMPANIES AND THEIR LOCATIONS IN THIS PRIVACY POLICY AND THEY WILL USE IT IN THE WAYS SET OUT IN THIS POLICY.</p>\r\n\r\n<p>&middot; LAW ENFORCEMENT/LEGAL COMPLIANCE: WE WILL COOPERATE WITH ALL THIRD PARTIES TO ENFORCE THEIR INTELLECTUAL PROPERTY OR OTHER RIGHTS. WE WILL ALSO COOPERATE WITH LAW ENFORCEMENT REQUESTS FROM WITHIN OR OUTSIDE YOUR COUNTRY OF RESIDENCE. THIS MAY INCLUDE DISCLOSING YOUR PERSONAL INFORMATION TO GOVERNMENT OR LAW ENFORCEMENT AGENCIES, OR PRIVATE PARTIES, WHEN WE HAVE A GOOD FAITH BELIEF THAT DISCLOSURE IS REQUIRED BY LAW OR WHEN WE, IN OUR DISCRETION, BELIEVE THAT DISCLOSURE IS NECESSARY TO PROTECT OUR LEGAL RIGHTS, OR THOSE OF THIRD PARTIES AND/OR TO COMPLY WITH A JUDICIAL PROCEEDING, COURT ORDER, FRAUD REDUCTION OR LEGAL PROCESS SERVED ON US. IN SUCH CASES, WE MAY RAISE OR WAIVE ANY LEGAL OBJECTION OR RIGHT AVAILABLE TO US. THESE USES OF YOUR DATA ARE IN OUR LEGITIMATE INTERESTS OF PROTECTING OUR BUSINESS SECURITY. WE MAY ALSO USE YOUR DATA AND SHARE IT WITH THE RECIPIENTS LISTED IN THIS PRIVACY POLICY FOR THE PURPOSE OF COMPLYING WITH OUR LEGAL OBLIGATIONS.</p>\r\n\r\n<p>THE LAWFUL BASES FOR SHARING AND PROCESSING THIS DATA IS SET OUT IN THE TABLE BELOW AND PLEASE REFER TO THE EXTERNAL THIRD PARTIES LISTED IN THE GLOSSARY FOR FURTHER INFORMATION.</p>\r\n\r\n<p><strong>5. HOW WE USE YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE WILL ONLY USE YOUR PERSONAL DATA WHEN THE LAW ALLOWS US TO. MOST COMMONLY, WE WILL USE YOUR PERSONAL DATA IN THE FOLLOWING CIRCUMSTANCES:</p>\r\n\r\n<p>&middot; WHERE WE NEED TO PERFORM THE CONTRACT WE ARE ABOUT TO ENTER INTO OR HAVE ENTERED INTO WITH YOU.</p>\r\n\r\n<p>&middot; WHERE IT IS NECESSARY FOR OUR LEGITIMATE INTERESTS (OR THOSE OF A THIRD PARTY) AND YOUR INTERESTS AND FUNDAMENTAL RIGHTS DO NOT OVERRIDE THOSE INTERESTS.</p>\r\n\r\n<p>&middot; WHERE WE NEED TO COMPLY WITH A LEGAL OR REGULATORY OBLIGATION.</p>\r\n\r\n<p>GENERALLY WE DO NOT RELY ON CONSENT AS A LEGAL BASIS FOR PROCESSING YOUR PERSONAL DATA OTHER THAN IN RELATION TO SENDING THIRD PARTY DIRECT MARKETING COMMUNICATIONS TO YOU VIA EMAIL OR TEXT MESSAGE. YOU HAVE THE RIGHT TO WITHDRAW CONSENT TO MARKETING AT ANY TIME BY SELECTING &lsquo;UNSUBSCRIBE&rsquo; AT THE BOTTOM OF OUR MARKETING EMAILS.</p>\r\n\r\n<p><strong>PURPOSES FOR WHICH WE WILL USE YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE HAVE SET OUT BELOW, IN A TABLE FORMAT, A DESCRIPTION OF ALL THE WAYS WE MAY USE YOUR PERSONAL DATA, AND WHICH OF THE LEGAL BASES WE RELY ON TO DO SO. WE HAVE ALSO IDENTIFIED WHAT OUR LEGITIMATE INTERESTS ARE WHERE APPROPRIATE.</p>\r\n\r\n<p>PURPOSE/ACTIVITY<br />\r\nTYPE OF DATA<br />\r\nLAWFUL BASIS FOR PROCESSING INCLUDING BASIS OF LEGITIMATE INTEREST<br />\r\nTO REGISTER YOU AS A NEW CUSTOMER<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU.<br />\r\nTO PROCESS AND DELIVER YOUR ORDER, INCLUDING:<br />\r\n1. MANAGING PAYMENTS, FEES AND CHARGES; AND</p>\r\n\r\n<p>2. MANAGING YOUR QUERIES THROUGH OUR CUSTOMER SERVICE TEAM &ndash; THIS MAY INCLUDE RECORDING CALLS TO OUR TEAMS.</p>\r\n\r\n<p>(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION<br />\r\n(E) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU. WE MAY ALSO USE SOME OF THE DATA RELATED TO YOUR QUERIES FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR CUSTOMER SERVICE QUALITY STANDARDS ARE MET.</p>\r\n\r\n<p>&nbsp;<br />\r\nTO COLLECT AND RECOVER MONEY OWED TO US IN RESPECT OF YOUR ORDER<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO RECOVER DEBTS DUE TO US).<br />\r\nTO CARRY OUT FRAUD ASSESSMENTS<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION<br />\r\n(E) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS OF ENSURING PAYMENTS ARE NOT FRAUDULENT<br />\r\nTO PROCESS YOUR PURCHASE OF A GIFT VOUCHER FROM US<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU.<br />\r\nTO NOTIFY YOU IN RELATION TO OUR LEGAL OBLIGATIONS AND DOCUMENTS, INCLUDING CHANGES TO OUR TERMS OR PRIVACY POLICY<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR CUSTOMERS ARE UPDATED ON THESE CHANGES.<br />\r\nTO HELP US IMPROVE OUR OFFERING TO OUR CUSTOMERS, INCLUDING ASKING YOU TO LEAVE A REVIEW OR TAKE A SURVEY, OR PROVIDE CUSTOMER INSIGHTS<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO STUDY HOW CUSTOMERS USE OUR PRODUCTS/SERVICES, TO IMPROVE OUR OFFERING TO OUR CUSTOMERS, TO DEVELOP THEM AND GROW OUR BUSINESS).<br />\r\nTO ENABLE YOU TO PARTAKE IN A PRIZE DRAW OR COMPETITION<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) USAGE<br />\r\n(E) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU TO FULFIL THE PROMOTION AND RUN THE COMPETITION/PRIZE DRAW. WE MAY ALSO SUBSEQUENTLY USE YOUR ENTRIES FOR THE LEGITIMATE INTERESTS OF UNDERSTANDING OUR CUSTOMER BASE MORE EFFECTIVELY.<br />\r\nTO ADMINISTER AND PROTECT OUR BUSINESS AND THIS WEBSITE (INCLUDING TROUBLESHOOTING, DATA ANALYSIS, TESTING, SYSTEM MAINTENANCE, SUPPORT, REPORTING AND HOSTING OF DATA)<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (FOR RUNNING OUR BUSINESS, PROVISION OF ADMINISTRATION AND IT SERVICES, NETWORK SECURITY, TO PREVENT FRAUD AND IN THE CONTEXT OF A BUSINESS REORGANISATION OR GROUP RESTRUCTURING EXERCISE).<br />\r\nTO DELIVER RELEVANT WEBSITE CONTENT, ADVERTISEMENTS AND OTHER MARKETING MATERIAL TO YOU AND MEASURE OR UNDERSTAND THE EFFECTIVENESS OF THE ADVERTISING WE SERVE TO YOU<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) USAGE<br />\r\n(E) MARKETING AND COMMUNICATIONS<br />\r\n(F) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO STUDY HOW CUSTOMERS USE OUR PRODUCTS/SERVICES, TO DEVELOP THEM, TO GROW OUR BUSINESS TO INFORM OUR MARKETING STRATEGY AND TO IMPROVE OUR OFFERING TO YOU). PLEASE NOTE THAT WHERE COOKIES ARE USED FOR THIS PURPOSE, THIS IS COVERED SEPARATELY BY OUR COOKIES POLICY.<br />\r\nTO USE DATA ANALYTICS TO IMPROVE OUR WEBSITE, PRODUCTS/SERVICES, MARKETING, CUSTOMER RELATIONSHIPS AND EXPERIENCES<br />\r\n(A) TECHNICAL<br />\r\n(B) USAGE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO DEFINE TYPES OF CUSTOMERS FOR OUR PRODUCTS AND SERVICES, TO KEEP OUR WEBSITE UPDATED AND RELEVANT, TO DEVELOP OUR BUSINESS AND TO INFORM OUR MARKETING STRATEGY). PLEASE NOTE THAT WHERE COOKIES ARE USED FOR THIS PURPOSE, THIS IS COVERED BY OUR COOKIES POLICY.<br />\r\nTO MAKE SUGGESTIONS AND RECOMMENDATIONS TO YOU ABOUT GOODS OR SERVICES THAT MAY BE OF INTEREST TO YOU<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) TECHNICAL<br />\r\n(D) USAGE<br />\r\n(E) PROFILE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO DEVELOP OUR PRODUCTS/SERVICES AND GROW OUR BUSINESS, AND TO IMPROVE OUR OFFERING TO YOU).<br />\r\nWE DO NOT CONDUCT ANY AUTOMATED DECISION MAKING. WE MAY ON OCCASION PROFILE OUR CUSTOMERS FOR THE PURPOSES OF TARGETING MARKETING AT THEM AND WHERE THIS IS DONE, THIS IS UNDERTAKEN FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR MARKETING IS RELEVANT TO ITS AUDIENCE. FOR EXAMPLE, WE MAY CLASSIFY AN APPROPRIATE AUDIENCE FOR A PROMOTION BY WHAT PRODUCTS ON OUR WEBSITE THEY HAVE PREVIOUSLY LOOKED AT OR EXPRESSED AN INTEREST IN. WE DO NOT CONDUCT ANY ONLINE BEHAVIOURAL TRACKING.</p>\r\n\r\n<p><strong>MARKETING</strong></p>\r\n\r\n<p>WE MAY USE YOUR IDENTITY, CONTACT, TECHNICAL, USAGE AND PROFILE DATA TO FORM A VIEW ON WHAT WE THINK YOU MAY WANT OR NEED, OR WHAT MAY BE OF INTEREST TO YOU. THIS IS HOW WE DECIDE WHICH PRODUCTS, SERVICES AND OFFERS MAY BE RELEVANT FOR YOU. WE ONLY USE THE DATA YOU PROVIDE TO US DIRECTLY FOR THIS PURPOSE ALONG WITH THE AGGREGATED DATA PROVIDED TO US BY OUR ANALYTICS PARTNERS AND WE DO NOT TRACK WHAT OTHER WEBSITES YOU MAY VISIT AFTER VISITING OUR SITE, THOUGH IN COMMON WITH MOST WEBSITES, WE MAY REGISTER THE SITE WHICH REFERRED YOU TO OUR SITE (E.G. A SEARCH ENGINE).</p>\r\n\r\n<p>WE STRIVE TO PROVIDE YOU WITH CHOICES REGARDING CERTAIN PERSONAL DATA USES, PARTICULARLY AROUND MARKETING AND ADVERTISING.</p>\r\n\r\n<p>WE GENERALLY ONLY SEND ELECTRONIC MARKETING - SUCH AS EMAIL MARKETING - TO PEOPLE WHO HAVE PREVIOUSLY BOUGHT SIMILAR PRODUCTS FROM US AND THIS IS IN OUR LEGITIMATE INTERESTS. WE WILL ALWAYS OFFER A WAY OUT OF RECEIVING THIS MARKETING WHEN YOU FIRST PURCHASE OUR PRODUCTS AND IN EVERY MARKETING COMMUNICATION AFTERWARDS. WE MAY ON OCCASION SEND OUT POSTAL MARKETING FOR THE PURPOSE OF GROWING OUR SALES WHICH IS IN OUR LEGITIMATE INTERESTS AND IN THIS SCENARIO WE WILL RELY ON YOU TO LET US KNOW IF YOU DO NOT WANT TO RECEIVE THIS BY OPTING OUT OF MARKETING (SEE OPTING OUT BELOW).</p>\r\n\r\n<p>WHERE YOU HAVE NOT PREVIOUSLY BOUGHT FROM US BUT HAVE REGISTERED YOUR DETAILS WITH US (FOR EXAMPLE BY ENTERING A COMPETITION OR SIGNING UP FOR A NEWSLETTER), WE WILL ONLY SEND YOU MARKETING COMMUNICATIONS IF YOU HAVE OPTED INTO RECEIVING MARKETING AND SO GIVEN US YOUR EXPRESS CONSENT (WHICH YOU MAY WITHDRAW AT ANY TIME &ndash; SEE OPTING OUT BELOW).</p>\r\n\r\n<p>WE MAY ALSO SHARE CERTAIN DATA WITH THIRD PARTY SOCIAL MEDIA PLATFORMS IN ORDER TO SHOW YOU TARGETED ADS WHEN YOU VISIT THEM. WE DO THIS BY:</p>\r\n\r\n<p>1. THE USE OF COOKIES WHICH CAPTURE YOUR VISITS TO OUR WEBSITE. PLEASE REFER TO OUR COOKIES POLICY FOR MORE INFORMATION; AND</p>\r\n\r\n<p>2. WE MAY ALSO PROVIDE THESE PLATFORMS WITH YOUR EMAIL ADDRESS TO CREATE &lsquo;AUDIENCES&rsquo; OF USERS FITTING WITHIN A CERTAIN DEMOGRAPHIC/CATEGORY SO THAT WE CAN TARGET OUR MARKETING. PLEASE CHECK THE SOCIAL MEDIA PLATFORMS&rsquo; TERMS FOR MORE DETAILS OF THESE SERVICES. THIS IS IN OUR LEGITIMATE INTERESTS OF SENDING YOU DIRECT MARKETING. SEE &lsquo;OPTING OUT&rsquo; BELOW FOR DETAILS OF HOW YOU CAN ADJUST YOUR MARKETING PREFERENCES. OUR COOKIES POLICY ALSO EXPLAINS HOW YOU CAN ADJUST YOUR COOKIES PREFERENCES.</p>\r\n\r\n<p><strong>OPTING OUT</strong></p>\r\n\r\n<p>YOU CAN ASK US TO STOP SENDING YOU MARKETING MESSAGES AT ANY TIME BY SELECTING &lsquo;UNSUBSCRIBE&rsquo; AT THE BOTTOM OF OUR MARKETING EMAILS</p>\r\n\r\n<p>IF YOU OPT OUT OF RECEIVING EMAIL MARKETING FROM US, WE WILL NO LONGER SHARE YOUR EMAIL ADDRESS WITH SOCIAL MEDIA PLATFORMS (SEE &lsquo;EXTERNAL THIRD PARTIES&rsquo; BELOW). HOWEVER, YOU MAY CONTINUE TO SEE OUR ADS THROUGH THEM, DUE TO THEIR GENERAL DEMOGRAPHIC TARGETING. PLEASE CHECK THE SOCIAL MEDIA PLATFORMS FOR MORE DETAIL OF HOW TO OPT OUT FROM SEEING THESE ADS.</p>\r\n\r\n<p>WHERE YOU OPT OUT OF RECEIVING THESE MARKETING MESSAGES, THIS WILL NOT APPLY TO PERSONAL DATA PROVIDED TO US AS A RESULT OF A PRODUCT/SERVICE PURCHASE, OR RELATED CORRESPONDENCE, AND WE WILL CONTINUE TO PROCESS SUCH DATA IN ACCORDANCE WITH THIS PRIVACY POLICY AND ONLY EVER AS PERMITTED BY LAW.</p>\r\n\r\n<p><strong>COOKIES</strong></p>\r\n\r\n<p>YOU CAN SET YOUR BROWSER TO REFUSE ALL OR SOME BROWSER COOKIES, OR TO ALERT YOU WHEN WEBSITES SET OR ACCESS COOKIES. IF YOU DISABLE OR REFUSE COOKIES, PLEASE NOTE THAT SOME PARTS OF THIS WEBSITE MAY BECOME INACCESSIBLE OR NOT FUNCTION PROPERLY.</p>\r\n\r\n<p><strong>CHANGE OF PURPOSE</strong></p>\r\n\r\n<p>WE WILL ONLY USE YOUR PERSONAL DATA FOR THE PURPOSES FOR WHICH WE COLLECTED IT, UNLESS WE REASONABLY CONSIDER THAT WE NEED TO USE IT FOR ANOTHER REASON AND THAT REASON IS COMPATIBLE WITH THE ORIGINAL PURPOSE. IF YOU WISH TO GET AN EXPLANATION AS TO HOW THE PROCESSING FOR THE NEW PURPOSE IS COMPATIBLE WITH THE ORIGINAL PURPOSE.</p>\r\n\r\n<p>IF WE NEED TO USE YOUR PERSONAL DATA FOR AN UNRELATED PURPOSE, WE WILL NOTIFY YOU AND WE WILL EXPLAIN THE LEGAL BASIS WHICH ALLOWS US TO DO SO.</p>\r\n\r\n<p>PLEASE NOTE THAT WE MAY PROCESS YOUR PERSONAL DATA WITHOUT YOUR KNOWLEDGE OR CONSENT, IN COMPLIANCE WITH THE ABOVE RULES, WHERE THIS IS REQUIRED OR PERMITTED BY LAW.</p>\r\n\r\n<p><strong>6. DISCLOSURES OF YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE REQUIRE ALL THIRD PARTIES TO RESPECT THE SECURITY OF YOUR PERSONAL DATA AND TO TREAT IT IN ACCORDANCE WITH THE LAW AND THEY MAY ONLY USE YOUR DATA FOR THE PURPOSES WE SPECIFY IN OUR CONTRACT WITH THEM. WE WILL ALWAYS WORK WITH THEM TO PROTECT YOUR PRIVACY.</p>\r\n\r\n<p><strong>7. INTERNATIONAL TRANSFERS</strong></p>\r\n\r\n<p>SOME OF OUR EXTERNAL THIRD PARTIES ARE BASED OUTSIDE THE EUROPEAN ECONOMIC AREA (EEA) SO THEIR PROCESSING OF YOUR PERSONAL DATA WILL INVOLVE A TRANSFER OF DATA OUTSIDE THE EEA.</p>\r\n\r\n<p>WHENEVER WE TRANSFER YOUR PERSONAL DATA OUT OF THE EEA, WE ENSURE A SIMILAR DEGREE OF PROTECTION IS AFFORDED TO IT BY ENSURING AT LEAST ONE OF THE FOLLOWING SAFEGUARDS IS IMPLEMENTED:</p>\r\n\r\n<p>&middot; WE WILL ONLY TRANSFER YOUR PERSONAL DATA TO COUNTRIES THAT HAVE BEEN DEEMED TO PROVIDE AN ADEQUATE LEVEL OF PROTECTION FOR PERSONAL DATA BY THE EUROPEAN COMMISSION. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: ADEQUACY OF THE PROTECTION OF PERSONAL DATA IN NON-EU COUNTRIES.</p>\r\n\r\n<p>&middot; WHERE WE USE CERTAIN SERVICE PROVIDERS, WE MAY USE SPECIFIC CONTRACTS APPROVED BY THE EUROPEAN COMMISSION WHICH GIVE PERSONAL DATA THE SAME PROTECTION IT HAS IN EUROPE. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: MODEL CONTRACTS FOR THE TRANSFER OF PERSONAL DATA TO THIRD COUNTRIES.</p>\r\n\r\n<p>&middot; WHERE WE USE PROVIDERS BASED IN THE US, WE MAY TRANSFER DATA TO THEM IF THEY ARE PART OF THE PRIVACY SHIELD WHICH REQUIRES THEM TO PROVIDE SIMILAR PROTECTION TO PERSONAL DATA SHARED BETWEEN THE EUROPE AND THE US. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: EU-US PRIVACY SHIELD.</p>\r\n\r\n<p>PLEASE CONTACT US IF YOU WANT FURTHER INFORMATION ON THE SPECIFIC MECHANISM USED BY US WHEN TRANSFERRING YOUR PERSONAL DATA OUT OF THE EEA.</p>\r\n\r\n<p><strong>8. DATA SECURITY</strong></p>\r\n\r\n<p>WE HAVE PUT IN PLACE APPROPRIATE SECURITY MEASURES TO PREVENT YOUR PERSONAL DATA FROM BEING ACCIDENTALLY LOST, USED OR ACCESSED IN AN UNAUTHORISED WAY, ALTERED OR DISCLOSED. IN ADDITION, WE LIMIT ACCESS TO YOUR PERSONAL DATA TO THOSE EMPLOYEES, AGENTS, CONTRACTORS AND OTHER THIRD PARTIES WHO HAVE A BUSINESS NEED TO KNOW. THEY WILL ONLY PROCESS YOUR PERSONAL DATA ON OUR INSTRUCTIONS AND THEY ARE SUBJECT TO A DUTY OF CONFIDENTIALITY.</p>\r\n\r\n<p>WE HAVE PUT IN PLACE PROCEDURES TO DEAL WITH ANY SUSPECTED PERSONAL DATA BREACH AND WILL NOTIFY YOU AND ANY APPLICABLE REGULATOR OF A BREACH WHERE WE ARE LEGALLY REQUIRED TO DO SO.</p>\r\n\r\n<p>YOU ACKNOWLEDGE THAT THE INTERNET IS NOT A COMPLETELY SECURE MEDIUM FOR COMMUNICATION AND, ACCORDINGLY, WE CANNOT GUARANTEE THE SECURITY OF ANY INFORMATION YOU SEND TO US (OR WE SEND TO YOU) VIA THE INTERNET. WE ARE NOT RESPONSIBLE FOR ANY DAMAGES WHICH YOU, OR OTHERS, MAY SUFFER AS A RESULT OF THE LOSS OF CONFIDENTIALITY OF SUCH INFORMATION.</p>\r\n\r\n<p><strong>9. DATA RETENTION</strong></p>\r\n\r\n<p><strong>HOW LONG WILL YOU USE MY PERSONAL DATA FOR?</strong></p>\r\n\r\n<p>WE WILL ONLY RETAIN YOUR PERSONAL DATA FOR AS LONG AS NECESSARY TO FULFIL THE PURPOSES WE COLLECTED IT FOR, INCLUDING FOR THE PURPOSES OF SATISFYING ANY LEGAL, ACCOUNTING, OR REPORTING REQUIREMENTS.</p>\r\n\r\n<p>TO DETERMINE THE APPROPRIATE RETENTION PERIOD FOR PERSONAL DATA, WE CONSIDER THE AMOUNT, NATURE, AND SENSITIVITY OF THE PERSONAL DATA, THE POTENTIAL RISK OF HARM FROM UNAUTHORISED USE OR DISCLOSURE OF YOUR PERSONAL DATA, THE PURPOSES FOR WHICH WE PROCESS YOUR PERSONAL DATA AND WHETHER WE CAN ACHIEVE THOSE PURPOSES THROUGH OTHER MEANS, AND THE APPLICABLE LEGAL REQUIREMENTS. FOR EXAMPLE, DETAILS OF YOUR ORDERS WILL BE KEPT FOR AS LONG AS WE NEED TO RETAIN THAT DATA TO COMPLY WITH OUR LEGAL AND REGULATORY REQUIREMENTS. THIS IS GENERALLY 7 YEARS UNLESS THE LAW PRESCRIBES A LONGER PERIOD.</p>\r\n\r\n<p>IN SOME CIRCUMSTANCES YOU CAN ASK US TO DELETE YOUR DATA: SEE &lsquo;YOUR LEGAL RIGHTS&rsquo; BELOW FOR FURTHER INFORMATION.</p>\r\n\r\n<p>IN SOME CIRCUMSTANCES WE MAY ANONYMISE YOUR PERSONAL DATA (SO THAT IT CAN NO LONGER BE ASSOCIATED WITH YOU) FOR RESEARCH OR STATISTICAL PURPOSES IN WHICH CASE WE MAY USE THIS INFORMATION INDEFINITELY WITHOUT FURTHER NOTICE TO YOU.</p>\r\n\r\n<p><strong>10. YOUR LEGAL RIGHTS</strong></p>\r\n\r\n<p>UNDER CERTAIN CIRCUMSTANCES, YOU HAVE RIGHTS UNDER UK DATA PROTECTION LAWS IN RELATION TO YOUR PERSONAL DATA.</p>\r\n\r\n<p>YOU HAVE THE RIGHT TO:</p>\r\n\r\n<p>REQUEST ACCESS TO YOUR PERSONAL DATA (COMMONLY KNOWN AS A &ldquo;DATA SUBJECT ACCESS REQUEST&rdquo;). THIS ENABLES YOU TO RECEIVE A COPY OF THE PERSONAL DATA WE HOLD ABOUT YOU AND TO CHECK THAT WE ARE LAWFULLY PROCESSING IT.</p>\r\n\r\n<p>REQUEST CORRECTION OF THE PERSONAL DATA THAT WE HOLD ABOUT YOU. THIS ENABLES YOU TO HAVE ANY INCOMPLETE OR INACCURATE DATA WE HOLD ABOUT YOU CORRECTED, THOUGH WE MAY NEED TO VERIFY THE ACCURACY OF THE NEW DATA YOU PROVIDE TO US.</p>\r\n\r\n<p>REQUEST ERASURE OF YOUR PERSONAL DATA. THIS ENABLES YOU TO ASK US TO DELETE OR REMOVE PERSONAL DATA WHERE THERE IS NO GOOD REASON FOR US CONTINUING TO PROCESS IT FOR EXAMPLE WHERE YOU CONSIDER THAT WE DO NOT NEED IT ANY LONGER FOR THE PURPOSES FOR WHICH WE ORIGINALLY COLLECTED IT AS EXPLAINED TO YOU IN THIS PRIVACY POLICY, WHERE YOU HAVE WITHDRAWN YOUR CONSENT TO OUR USING IT AND WE HAD RELIED ON THAT CONSENT ACCORDING TO THIS POLICY, WHERE YOU CONSIDER THAT WE CANNOT SHOW A &lsquo;LEGITIMATE INTEREST&rsquo; IN CONTINUING TO PROCESS IT AND WE HAVE RELIED ON THAT LEGITIMATE INTEREST TO PROCESS IT AS EXPLAINED TO YOU IN THIS POLICY . YOU ALSO HAVE THE RIGHT TO ASK US TO DELETE OR REMOVE YOUR PERSONAL DATA WHERE YOU HAVE SUCCESSFULLY EXERCISED YOUR RIGHT TO OBJECT TO PROCESSING (SEE BELOW), WHERE WE MAY HAVE PROCESSED YOUR INFORMATION UNLAWFULLY OR WHERE WE ARE REQUIRED TO ERASE YOUR PERSONAL DATA TO COMPLY WITH LOCAL LAW. NOTE, HOWEVER, THAT WE MAY NOT ALWAYS BE ABLE TO COMPLY WITH YOUR REQUEST OF ERASURE FOR SPECIFIC LEGAL REASONS WHICH WILL BE NOTIFIED TO YOU, IF APPLICABLE, AT THE TIME OF YOUR REQUEST.</p>\r\n\r\n<p>OBJECT TO PROCESSING OF YOUR PERSONAL DATA WHERE WE ARE RELYING ON A LEGITIMATE INTEREST (OR THOSE OF A THIRD PARTY) AND THERE IS SOMETHING ABOUT YOUR PARTICULAR SITUATION WHICH MAKES YOU WANT TO OBJECT TO PROCESSING ON THIS GROUND AS YOU FEEL IT IMPACTS ON YOUR FUNDAMENTAL RIGHTS AND FREEDOMS. YOU ALSO HAVE THE RIGHT TO OBJECT WHERE WE ARE PROCESSING YOUR PERSONAL DATA FOR DIRECT MARKETING PURPOSES. IN SOME CASES, WE MAY DEMONSTRATE THAT WE HAVE COMPELLING LEGITIMATE GROUNDS TO PROCESS YOUR INFORMATION WHICH OVERRIDE YOUR RIGHTS AND FREEDOMS.</p>\r\n\r\n<p>REQUEST RESTRICTION OF PROCESSING OF YOUR PERSONAL DATA. THIS ENABLES YOU TO ASK US TO SUSPEND THE PROCESSING OF YOUR PERSONAL DATA IN THE FOLLOWING SCENARIOS: (A) IF YOU WANT US TO ESTABLISH THE DATA&rsquo;S ACCURACY; (B) WHERE OUR USE OF THE DATA IS UNLAWFUL BUT YOU DO NOT WANT US TO ERASE IT; (C) WHERE YOU NEED US TO HOLD THE DATA EVEN IF WE NO LONGER REQUIRE IT AS YOU NEED IT TO ESTABLISH, EXERCISE OR DEFEND LEGAL CLAIMS; OR (D) YOU HAVE OBJECTED TO OUR USE OF YOUR DATA BUT WE NEED TO VERIFY WHETHER WE HAVE OVERRIDING LEGITIMATE GROUNDS TO USE IT.</p>\r\n\r\n<p>REQUEST THE TRANSFER OF YOUR PERSONAL DATA TO YOU OR TO A THIRD PARTY. WE WILL PROVIDE TO YOU, OR A THIRD PARTY YOU HAVE CHOSEN, YOUR PERSONAL DATA IN A STRUCTURED, COMMONLY USED, MACHINE-READABLE FORMAT. NOTE THAT THIS RIGHT ONLY APPLIES TO AUTOMATED INFORMATION WHICH YOU INITIALLY PROVIDED CONSENT FOR US TO USE OR WHERE WE USED THE INFORMATION TO PERFORM A CONTRACT WITH YOU.</p>\r\n\r\n<p>WITHDRAW CONSENT AT ANY TIME WHERE WE ARE RELYING ON CONSENT TO PROCESS YOUR PERSONAL DATA. HOWEVER, THIS WILL NOT AFFECT THE LAWFULNESS OF ANY PROCESSING CARRIED OUT BEFORE YOU WITHDRAW YOUR CONSENT.</p>\r\n\r\n<p>IF YOU WISH TO EXERCISE ANY OF THESE RIGHTS, PLEASE CONTACT US USING THE INFORMATION PROVIDED ABOVE.</p>\r\n\r\n<p><strong>NO FEE USUALLY REQUIRED</strong></p>\r\n\r\n<p>YOU WILL NOT HAVE TO PAY A FEE TO ACCESS YOUR PERSONAL DATA (OR TO EXERCISE ANY OF THE OTHER RIGHTS). HOWEVER, WE MAY CHARGE A REASONABLE FEE IF YOUR REQUEST IS CLEARLY UNFOUNDED, REPETITIVE OR EXCESSIVE. ALTERNATIVELY, WE MAY REFUSE TO COMPLY WITH YOUR REQUEST IN THESE CIRCUMSTANCES.</p>\r\n\r\n<p><strong>WHAT WE MAY NEED FROM YOU</strong></p>\r\n\r\n<p>WE MAY NEED TO REQUEST SPECIFIC INFORMATION FROM YOU TO HELP US CONFIRM YOUR IDENTITY AND ENSURE YOUR RIGHT TO ACCESS YOUR PERSONAL DATA (OR TO EXERCISE ANY OF YOUR OTHER RIGHTS). THIS IS A SECURITY MEASURE TO ENSURE THAT PERSONAL DATA IS NOT DISCLOSED TO ANY PERSON WHO HAS NO RIGHT TO RECEIVE IT. WE MAY ALSO CONTACT YOU TO ASK YOU FOR FURTHER INFORMATION IN RELATION TO YOUR REQUEST TO SPEED UP OUR RESPONSE.</p>\r\n\r\n<p><strong>TIME LIMIT TO RESPOND</strong></p>\r\n\r\n<p>WE TRY TO RESPOND TO ALL LEGITIMATE REQUESTS WITHIN ONE MONTH. OCCASIONALLY IT MAY TAKE US LONGER THAN A MONTH IF YOUR REQUEST IS PARTICULARLY COMPLEX OR YOU HAVE MADE A NUMBER OF REQUESTS. IN THIS CASE, WE WILL NOTIFY YOU AND KEEP YOU UPDATED.</p>\r\n\r\n<p><strong>11. GLOSSARY</strong></p>\r\n\r\n<p><strong>LAWFUL BASIS</strong></p>\r\n\r\n<p>LEGITIMATE INTEREST MEANS THE INTEREST OF OUR BUSINESS IN CONDUCTING AND MANAGING OUR BUSINESS TO ENABLE US TO GIVE YOU THE BEST SERVICE/PRODUCT AND THE BEST AND MOST SECURE EXPERIENCE. WE MAKE SURE WE CONSIDER AND BALANCE ANY POTENTIAL IMPACT ON YOU (BOTH POSITIVE AND NEGATIVE) AND YOUR RIGHTS BEFORE WE PROCESS YOUR PERSONAL DATA FOR OUR LEGITIMATE INTERESTS. WE DO NOT USE YOUR PERSONAL DATA FOR ACTIVITIES WHERE OUR INTERESTS ARE OVERRIDDEN BY THE IMPACT ON YOU (UNLESS WE HAVE YOUR CONSENT OR ARE OTHERWISE REQUIRED OR PERMITTED TO BY LAW). YOU CAN OBTAIN FURTHER INFORMATION ABOUT HOW WE ASSESS OUR LEGITIMATE INTERESTS AGAINST ANY POTENTIAL IMPACT ON YOU IN RESPECT OF SPECIFIC ACTIVITIES BY CONTACTING US, USING THE INFORMATION PROVIDED ABOVE.</p>\r\n\r\n<p>PERFORMANCE OF CONTRACT MEANS PROCESSING YOUR DATA WHERE IT IS NECESSARY FOR THE PERFORMANCE OF A CONTRACT TO WHICH YOU ARE A PARTY OR TO TAKE STEPS AT YOUR REQUEST BEFORE ENTERING INTO SUCH A CONTRACT.</p>\r\n\r\n<p>COMPLY WITH A LEGAL OR REGULATORY OBLIGATION MEANS PROCESSING YOUR PERSONAL DATA WHERE IT IS NECESSARY FOR COMPLIANCE WITH A LEGAL OR REGULATORY OBLIGATION THAT WE ARE SUBJECT TO.</p>\r\n\r\n<p><strong>THIRD PARTIES</strong></p>\r\n\r\n<p><strong>EXTERNAL THIRD PARTIES</strong></p>\r\n\r\n<p>PARTNERS - WHEN YOU PLACE AN ORDER, WE SHARE YOUR INFORMATION WITH THE RELEVANT SELLER ON OUR MARKETPLACE (&ldquo;PARTNER&rdquo;) SO THAT THEY CAN PROCESS AND DELIVER YOUR ORDER.</p>\r\n\r\n<p>GIFT VOUCHER PROVIDERS &ndash; WE MAY USE THIRD PARTIES TO PROCESS YOUR ORDER WHEN YOU PURCHASE A GIFT VOUCHER FROM US.</p>\r\n\r\n<p>CLOUD STORAGE PROVIDERS - WE USE CLOUD COMPUTING PLATFORMS THAT SECURELY STORE ALL OF OUR DATA, INCLUDING CUSTOMER DETAILS.</p>\r\n\r\n<p>EMAIL SERVICE PROVIDERS - IN ORDER TO SEND YOU MARKETING CONTENT AND TRANSACTIONAL EMAILS, WE SHARE YOUR DETAILS WITH OUR EMAIL SERVICE PROVIDERS.</p>\r\n\r\n<p>SOCIAL MEDIA PLATFORMS - WE MAY MAKE YOUR NAME AND EMAIL ADDRESS AVAILABLE TO COMPANIES IN ORDER TO ADVERTISE AND MARKET OUR SERVICES TO YOU THROUGH OTHER PLATFORMS ON THE INTERNET (E.G. FACEBOOK). SEE THE &lsquo;MARKETING&rsquo; SECTION OF THIS PRIVACY POLICY ABOVE.</p>\r\n\r\n<p>ANALYTICS TOOLS - WE USE ANALYTICS TOOLS TO TRACK THE WAY THAT USERS INTERACT WITH OUR WEBSITE.</p>\r\n\r\n<p>PROFILING TOOLS - WE USE PROFILING TOOLS TO UNDERSTAND HOW YOU ENGAGE WITH OUR WEBSITE AND SHOW YOU CONTENT WE THINK WILL BE MOST RELEVANT TO YOU, BASED ON OUR UNDERSTANDING OF YOUR INTERESTS AND PREFERENCES.</p>\r\n\r\n<p>PAYMENT PROVIDERS - IN ORDER TO FACILITATE ANY PAYMENTS MADE ON OUR SITE, WE FACILITATE THE SHARING OF YOUR FINANCIAL DATA WITH PAYMENT PROVIDERS.</p>\r\n\r\n<p>DELIVERY PROVIDERS - IN ORDER TO PACKAGE AND MAIL YOUR ORDERS TO YOU, IT IS NECESSARY TO SHARE YOUR INFORMATION WITH DELIVERY PROVIDERS.</p>\r\n\r\n<p>MARKETING AND INSIGHTS PROVIDERS - MARKETING AND INSIGHTS TOOLS ALLOW US TO UNDERSTAND OUR CUSTOMERS BETTER SO THAT WE MAY PROVIDE YOU WITH THE BEST POSSIBLE WEBSITE, PRODUCTS AND CUSTOMER SERVICE EXPERIENCE. WE MAY SHARE CERTAIN INFORMATION ABOUT OUR CUSTOMERS TO FACILITATE THIS PROCESS.</p>\r\n\r\n<p>CUSTOMER SERVICE PLATFORMS - WHEN YOU INTERACT WITH OUR CUSTOMER SERVICE TEAM, YOUR DETAILS ARE SHARED WITH OUR CUSTOMER SERVICE PLATFORM PROVIDERS.</p>\r\n\r\n<p><strong>YELIR WORLD COOKIES POLICY</strong></p>\r\n\r\n<p>BY VISITING THIS WEBSITE WITH YOUR BROWSER SETTINGS ADJUSTED TO ALLOW COOKIES, YOU ARE CONSENTING TO YELIR WORLD USING COOKIES FOR THE PURPOSES OUTLINED BELOW IN ORDER TO PROVIDE YOU WITH A FULLY FUNCTIONAL SHOPPING EXPERIENCE.</p>\r\n\r\n<p><strong>WHAT IS A COOKIE?</strong></p>\r\n\r\n<p>A COOKIE IS A SMALL TEXT FILE WHICH IS DOWNLOADED AND STORED ON YOUR COMPUTER OR MOBILE DEVICE BY WEBSITES THAT YOU VISIT. WHERE COOKIE TECHNOLOGY IS NOT AVAILABLE, AN ANONYMOUS IDENTIFIER MAY BE USED. AN ANONYMOUS IDENTIFIER IS A RANDOM STRING OF CHARACTERS USED FOR THE SAME PURPOSES AS A COOKIE.</p>\r\n\r\n<p>YOUR BROWSER ACCESSES THE COOKIE FILE ONLY WHEN YOU VISIT THE WEBSITE THAT GENERATED IT. THIS HELPS TO EASE YOUR NAVIGATION BY AUTOMATICALLY LOGGING YOU IN AND REMEMBERING THINGS LIKE YOUR PREFERENCES AND WHAT&rsquo;S IN YOUR SHOPPING BASKET. COOKIES ALLOW SITES LIKE YELIR WORLD TO DELIVER YOU A PERSONALISED SHOPPING EXPERIENCE.</p>\r\n\r\n<p>THE INFORMATION STORED WITHIN ANY GIVEN COOKIE CAN ONLY BE ACCESSED BY THE WEBSITE THAT CREATED IT AND COOKIES ARE LIMITED TO COMMUNICATING ONLY THE INFORMATION THAT YOU HAVE DISCLOSED TO THE SITE.</p>\r\n\r\n<p>WE USE THE FOLLOWING TYPES OF COOKIE:</p>\r\n\r\n<p>&middot; STRICTLY NECESSARY COOKIES. THESE ARE COOKIES THAT ARE REQUIRED FOR THE OPERATION OF OUR WEBSITE. THEY INCLUDE, FOR EXAMPLE, COOKIES THAT ENABLE YOU TO LOG INTO SECURE AREAS OF OUR WEBSITE, USE A SHOPPING CART OR MAKE USE OF E-BILLING SERVICES.</p>\r\n\r\n<p>&middot; PERFORMANCE COOKIES. THEY ALLOW US TO RECOGNISE AND COUNT THE NUMBER OF VISITORS AND TO SEE HOW VISITORS MOVE AROUND OUR WEBSITE WHEN THEY ARE USING IT. THIS HELPS US TO IMPROVE THE WAY OUR WEBSITE WORKS, FOR EXAMPLE, BY ENSURING THAT USERS ARE FINDING WHAT THEY ARE LOOKING FOR EASILY.</p>\r\n\r\n<p>THE LIST BELOW DETAILS THE COOKIES USED ON YELIR WORLD. WE HAVE OUTLINED WHO SETS THESE COOKIES AND THEIR PURPOSE. IF THE PARTY READS SOMETHING OTHER THAN YELIR WORLD, THESE ARE OUR THIRD PARTY BUSINESS PARTNERS WHO HELP US TO ENHANCE YOUR BROWSING EXPERIENCE.</p>\r\n\r\n<p>&nbsp;<br />\r\nYELIR WORLD USES COOKIES TO ENABLE SOME OF THE BASIC FUNCTIONALITY THAT IS REQUIRED FOR YOU TO BROWSE AND SHOP ON OUR WEBSITE, SUCH AS REMEMBERING WHICH PRODUCTS YOU HAVE ADDED TO YOUR BASKET. THE INFORMATION COLLECTED THROUGH THESE COOKIES IS ONLY USED FOR THIS PURPOSE AND IS NEVER SHARED OR SOLD ON TO THIRD PARTIES.</p>\r\n\r\n<p><strong>PERFORMANCE</strong><br />\r\nGOOGLE ADWORDS; MSN/BING; DOUBLE CLICK; YAHOO (RIGHT MEDIA); FACEBOOK, PINTEREST, TABOOLA, RAKUTEN (LINKSHARE)<br />\r\nGOOGLE ADWORDS, MSN/BING, DOUBLE CLICK,YAHOO, FACEBOOK, PINTEREST, TABOOLA AND RAKUTEN (LINKSHARE) USE COOKIES (OR, IF APPLICABLE, ANONYMOUS IDENTIFIERS) TO TRACK OUR OWN PAID ADVERTISING ACTIVITY. WE USE THE INFORMATION COLLECTED BY THESE COOKIES TO HELP US DETERMINE WHERE OUR ADS WILL BE MOST EFFECTIVE ONLINE. EACH INDIVIDUAL ADVERTISER USES ITS OWN TRACKING COOKIES AND THE DATA TAKEN IS NOT CONFIDENTIAL DATA OR INTERCHANGEABLE.</p>\r\n\r\n<p><br />\r\n<strong>PERFORMANCE</strong><br />\r\nGOOGLE ANALYTICS (INCLUDING UNIVERSAL ANALYTICS AND GOOGLE ANALYTICS FOR DISPLAY ADVERTISERS)<br />\r\nGOOGLE ANALYTICS USE COOKIES (OR, IF APPLICABLE, ANONYMOUS IDENTIFIERS) TO COLLECT DATA THAT HELPS US UNDERSTAND HOW PEOPLE ARE USING THE SITE. WE USE THIS INFORMATION TO IDENTIFY HOW AND WHERE WE CAN IMPROVE THE CUSTOMER EXPERIENCE, AND TO HELP US DETERMINE WHERE OUR ADS WILL BE MOST EFFECTIVE ONLINE. THE DATA COLLECTED THROUGH THESE COOKIES IS ANONYMOUS, DOES NOT COLLECT SPECIFIC CUSTOMER DATA AND IS NEVER SHARED WITH OTHER THIRD PARTIES, OTHER THAN DOUBLE CLICK CAMPAIGN MANAGER, WHICH IS A FULLY OWNED GOOGLE PRODUCT.</p>\r\n\r\n<p>&nbsp;<br />\r\n<strong>FUNCTIONALITY</strong><br />\r\nSHARE THIS ALLOWS CUSTOMERS TO SHARE CONTENT, PRODUCTS AND WEB PAGES FROM OUR WEBSITE WITH OTHER WEBSITES AND SOCIAL NETWORKING SITES. THE COOKIES USED BY SHARE THIS ALLOW US TO TRACK THE TYPE OF CONTENT, PRODUCTS AND PAGES THAT OUR USERS ARE SHARING TO HELP US BETTER UNDERSTAND WHICH CONTENT IS MOST ENGAGING FOR OUR CUSTOMERS SO THAT WE CAN IMPROVE THE CONTENT AND CUSTOMER EXPERIENCE IN OTHER AREAS OF THE WEBSITE.</p>\r\n\r\n<p><br />\r\n<strong>PERFORMANCE</strong><br />\r\nSOCIAL MEDIA PLUGINS<br />\r\nSITES SUCH AS FACEBOOK AND PINTEREST, SERVE COOKIES IN ORDER TO BE ABLE TO SHARE AND DISCUSS YELIR WORLD&rsquo;S PRODUCTS ON SOCIAL NETWORKS.</p>\r\n\r\n<p><strong>DURATION OF COOKIES:</strong></p>\r\n\r\n<p><strong>SESSION (OR TRANSIENT) COOKIES</strong></p>\r\n\r\n<p>SESSION COOKIES ARE STORED IN YOUR COMPUTER&#39;S MEMORY FOR THE LENGTH OF YOUR BROWSING SESSION. THEY BECOME INACCESSIBLE AFTER THE SESSION HAS BEEN INACTIVE FOR A TIME AND ARE AUTOMATICALLY DELETED FROM YOUR COMPUTER WHEN THE BROWSER IS CLOSED. THEY ALLOW YOU TO MOVE FROM PAGE TO PAGE WITHOUT HAVING TO LOG-IN REPEATEDLY.</p>\r\n\r\n<p><strong>PERSISTENT (OR PERMANENT) COOKIES</strong></p>\r\n\r\n<p>PERSISTENT COOKIES ARE STORED IN YOUR COMPUTER MEMORY AND ARE NOT DELETED WHEN THE BROWSER IS CLOSED. THEY ARE USED TO KEEP YOUR PREFERENCES FOR THE WEBSITE, SO THEY WILL BE REMEMBERED FOR NEXT TIME YOU VISIT THE WEBSITE. THEY ARE ALSO USED TO COLLECT INFORMATION ABOUT THE NUMBERS OF VISITORS, THE AVERAGE TIME SPENT ON A PARTICULAR PAGE AND ANALYSE SHOPPING BEHAVIOUR ON THE WEBSITE. THIS INFORMATION IS USED TO FIND OUT HOW WELL THE WEBSITE WORKS AND WHERE IT CAN BE IMPROVED.</p>\r\n\r\n<p><strong>FLASH COOKIES (OR LOCALLY SHARED OBJECTS)</strong></p>\r\n\r\n<p>YOU PROBABLY HAVE ADOBE FLASH INSTALLED ON YOUR COMPUTER. WEBSITES THAT CONTAIN FLASH CAN ALSO STORE SMALL FILES ON YOUR COMPUTER THAT ARE USED IN THE SAME WAY AS COOKIES.</p>\r\n\r\n<p>FLASH COOKIES CAN ALSO BACK UP THE DATA THAT IS STORED IN OTHER COOKIES. WHEN YOU DELETE COOKIES, YOUR FLASH COOKIES ARE NOT AFFECTED. SO A WEBSITE MAY STILL RECOGNISE YOU IF IT BACKED UP THE DELETED COOKIE INFORMATION ON A FLASH COOKIE.</p>\r\n\r\n<p><strong>SHARING WITH SOCIAL NETWORKS</strong></p>\r\n\r\n<p>IF YOU USE THE BUTTONS THAT ALLOW YOU TO SHARE PRODUCTS AND CONTENT WITH YOUR FRIENDS VIA SOCIAL NETWORKS LIKE TWITTER AND FACEBOOK, THESE COMPANIES MAY SET A COOKIE ON YOUR COMPUTER MEMORY. FIND OUT MORE ABOUT THESE HERE:</p>\r\n\r\n<p>HTTPS://WWW.FACEBOOK.COM/ABOUT/PRIVACY/</p>\r\n\r\n<p>HTTP://TWITTER.COM/PRIVACY</p>\r\n\r\n<p>HTTP://WWW.GOOGLE.COM/INTL/EN-GB/POLICIES/PRIVACY/</p>\r\n\r\n<p>MANAGING COOKIES:</p>\r\n\r\n<p>IF COOKIES AREN&#39;T ENABLED ON YOUR COMPUTER, IT WILL MEAN THAT YOUR SHOPPING EXPERIENCE ON OUR WEBSITE WILL BE LIMITED TO BROWSING AND RESEARCHING; YOU WON&#39;T BE ABLE TO ADD PRODUCTS TO YOUR BASKET OR BUY THEM. TO ENABLE AND MANAGE COOKIES, YOU CAN USE YOUR BROWSER TO DO THIS. EACH BROWSER IS DIFFERENT, SO CHECK THE &#39;HELP&#39; MENU OF YOUR PARTICULAR BROWSER (OR YOUR MOBILE PHONE&#39;S HANDSET MANUAL) TO LEARN HOW TO CHANGE YOUR COOKIE PREFERENCES.</p>\r\n\r\n<p><em>EDITED &amp; CUSTOMISED BY YELIR WORLD LTD, UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM CW2 8UY</em></p>\r\n\r\n<p><strong>LAST AMENDED 25 JUN&nbsp;2019</strong></p>', 'default', NULL, 'privacy-policy', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:53:00', '2022-05-14 08:53:00'),
(45, 'GIỚI THIỆU CÔNG TY ĐIỀN TRANG', 'Công ty TNHH Điền Trang, tiền thân là cơ sở phân bón Điền Trang, thành lập từ năm 2002, hoạt động trong lĩnh vực sản xuất, kinh doanh phân bón hữu cơ, phân bón lá, đặc biệt là các chế phẩm vi sinh nông nghiệp.\r\n\r\nĐiền Trang tự hào là công ty đầu tiên từ năm 2003 đã ứng dụng nấm đối kháng Trichoderma vào sản xuất phân bón hữu cơ vi sinh với thương hiệu TRICHOMIX-DT, TRIMIX. Những sản phẩm hữu cơ này vừa cung cấp chất dinh dưỡng cho cây trồng, vừa có hiệu quả rất cao trong phòng ngừa các bệnh hại trên rễ do nấm hại gây ra.', '<p><strong>GIỚI THIỆU C&Ocirc;NG TY ĐIỀN TRANG</strong></p>\r\n\r\n<p>C&ocirc;ng ty TNHH Điền Trang, tiền th&acirc;n l&agrave; cơ sở ph&acirc;n b&oacute;n Điền Trang, th&agrave;nh lập từ năm 2002, hoạt động trong lĩnh vực sản xuất, kinh doanh ph&acirc;n b&oacute;n hữu cơ, ph&acirc;n b&oacute;n l&aacute;, đặc biệt l&agrave; c&aacute;c chế phẩm vi sinh n&ocirc;ng nghiệp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điền Trang tự h&agrave;o l&agrave; c&ocirc;ng ty đầu ti&ecirc;n từ năm 2003 đ&atilde; ứng dụng nấm đối kh&aacute;ng Trichoderma v&agrave;o sản xuất ph&acirc;n b&oacute;n hữu cơ vi sinh với thương hiệu TRICHOMIX-DT, TRIMIX. Những sản phẩm hữu cơ n&agrave;y vừa cung cấp chất dinh dưỡng cho c&acirc;y trồng, vừa c&oacute; hiệu quả rất cao trong ph&ograve;ng ngừa c&aacute;c bệnh hại tr&ecirc;n rễ do nấm hại g&acirc;y ra.</p>\r\n\r\n<p>C&ocirc;ng ty Điền Trang rất ch&uacute; trọng đầu tư nghi&ecirc;n cứu c&ocirc;ng nghệ sinh học &ndash; Ph&ograve;ng th&iacute; nghiệm của c&ocirc;ng ty Điền Trang (DIENTRANG BIOLAB ) đ&atilde; ph&acirc;n lập h&agrave;ng chục chủng VSV c&oacute; &iacute;ch phục vụ cho việc ủ ph&acirc;n b&oacute;n tại nh&agrave; m&aacute;y v&agrave; đưa ra thị trường c&aacute;c chế phẩm sinh học d&ugrave;ng để ủ ph&acirc;n b&oacute;n, xử l&yacute; đất, ph&ograve;ng ngừa c&aacute;c loại bệnh hại cho c&acirc;y trồng. C&aacute;c chủng vi sinh vật c&oacute; &iacute;ch được ch&uacute;ng t&ocirc;i nghi&ecirc;n cứu, ph&acirc;n lập như : Azotobacter, Trichoderma, Aspergillus Niger, Bacillus Subtilis &hellip; Ri&ecirc;ng nấm Trichoderma, đ&atilde; ph&acirc;n lập được tr&ecirc;n 20 chủng, đưa v&agrave;o sản xuất 6 chủng c&oacute; đặc t&iacute;nh tốt ph&ugrave; hợp với c&aacute;c v&ugrave;ng sinh th&aacute;i n&ocirc;ng nghiệp của Việt Nam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những sản phẩm sinh học của Điền Trang được Trung t&acirc;m Nghi&ecirc;n Cứu n&ocirc;ng l&acirc;m nghiệp- thuỷ lợi Gia Lai thuộc Viện Khoa Học N&ocirc;ng L&acirc;m Nghiệp T&acirc;y Nguy&ecirc;n đưa v&agrave;o ứng dụng thử nghiệm tại c&aacute;c v&ugrave;ng n&ocirc;ng nghiệp Gia Lai. Trung t&acirc;m đ&aacute;nh gi&aacute; rất cao hiệu quả của sản phẩm ph&acirc;n vi sinh si&ecirc;u đậm đặc TRICHOMIX ph&ograve;ng ngừa bệnh cho c&acirc;y ti&ecirc;u, c&agrave; ph&ecirc;. Phối hợp với Trung t&acirc;m Gia lai, c&ocirc;ng ty Điền Trang đ&atilde; hướng dẫn cho n&ocirc;ng d&acirc;n sử dụng men vi sinh Trichoderma v&agrave; c&aacute;c phế phẩm n&ocirc;ng nghiệp như vỏ c&agrave; ph&ecirc;, mạt cưa, ph&acirc;n chuồng, xơ dừa.. để sản xuất h&agrave;ng chục ng&agrave;n tấn ph&acirc;n vi sinh chất lượng cao.</p>\r\n\r\n<p>Hoạt động sản xuất, kinh doanh của c&ocirc;ng ty ng&agrave;y c&agrave;ng lớn mạnh, nhu cầu thị trường ng&agrave;y c&agrave;ng tăng điều đ&oacute; đ&atilde; khẳng định chất lượng v&agrave; uy t&iacute;n của thương hiệu c&ocirc;ng ty Điền Trang. C&ocirc;ng ty đ&atilde; x&acirc;y dựng được một Nh&agrave; m&aacute;y sản xuất ph&acirc;n b&oacute;n hữu cơ sinh học, men vi sinh n&ocirc;ng nghiệp v&agrave; c&aacute;c loại ph&acirc;n b&oacute;n l&aacute; với c&ocirc;ng suất 20.000 tấn/năm. Ngo&agrave;i ra, c&ocirc;ng ty cũng đ&atilde; x&acirc;y dựng một đội ngũ kỹ sư n&ocirc;ng nghiệp c&oacute; kỹ thuật cao, b&aacute;n h&agrave;ng l&agrave;nh nghề, chuy&ecirc;n nghiệp sẵn s&agrave;ng đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng trong nước v&agrave; quốc tế.</p>\r\n\r\n<p>C&ocirc;ng ty Điền Trang xin gửi lời cảm ơn ch&acirc;n th&agrave;nh đến Qu&yacute; Doanh Nghiệp, Qu&yacute; Đại L&yacute;, Qu&yacute; B&agrave; Con n&ocirc;ng d&acirc;n đ&atilde; t&iacute;n nhiệm v&agrave; sử dụng hiệu quả c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i trong thời gian qua. Điền trang cam kết rằng:&nbsp;<strong>CHẤT LƯỢNG L&Agrave; SỰ SỐNG C&Ograve;N.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://phanbondientrang.vn/upload/Banner_Giay_Chung_Nhan.jpg\" style=\"height:533px; width:1325px\" /></strong></p>\r\n\r\n<p><strong><iframe frameborder=\"0\" height=\"703\" scrolling=\"no\" src=\"https://www.youtube.com/embed/7Xy6JLirkco\" width=\"854\"></iframe></strong></p>', 'default', NULL, 'gioi-thieu-cong-ty-dien-trang', '1', NULL, '/public/kcfinder-master/upload/images/thongtintrang/gt.jpg', 'gioi-thieu', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-14 02:41:23');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(46, 'INTRODUCTION TO FASHION COMPANY', 'Dien Trang Co., Ltd., formerly known as Dien Trang fertilizer factory, was established in 2002, operating in the field of manufacturing and trading organic fertilizer, foliar fertilizer, especially agro-biological products. career.\r\n\r\nDien Trang is proud to be the first company since 2003 to apply antagonistic fungus Trichoderma to microbial organic fertilizer production under the brand name TRICHOMIX-DT, TRIMIX. These organic products both provide nutrients for plants and are highly effective in preventing root diseases caused by fungal pathogens.', '<p>INTRODUCTION TO FASHION COMPANY Dien Trang Co., Ltd., formerly known as Dien Trang fertilizer factory, was established in 2002, operating in the field of manufacturing and trading organic fertilizer, foliar fertilizer, especially agro-biological products. career. Dien Trang is proud to be the first company since 2003 to apply antagonistic fungus Trichoderma to microbial organic fertilizer production under the brand name TRICHOMIX-DT, TRIMIX. These organic products both provide nutrients for plants and are highly effective in preventing root diseases caused by fungal pathogens. Dien Trang Company pays great attention to investment in biotechnology research - DIENTRANG BIOLAB&#39;s laboratory has isolated dozens of useful strains of VSV for composting fertilizer at the factory and making market of biological products for composting, soil treatment, prevention of diseases for plants. The strains of useful microorganisms were studied and isolated such as Azotobacter, Trichoderma, Aspergillus Niger, Bacillus Subtilis ... Particularly, Trichoderma fungi, have isolated more than 20 strains, put into production 6 strains with good and good characteristics in combination with Vietnam&#39;s agro-ecological regions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Biological products of Dien Trang have been put into pilot application in Gia Lai agricultural areas by Gia Lai Research Center for Agriculture, Forestry and Irrigation. The Center highly appreciates the effectiveness of TRICHOMIX super-concentrated microbiological product to prevent diseases for pepper and coffee. In collaboration with Gia Lai Center, Dien Trang Company instructed farmers to use Trichoderma probiotics and agricultural residues such as coffee shell, sawdust, manure, coconut fiber ... to produce dozens thousand tons of high quality microbial fertilizer. Production and business activities of the company are growing and the market demand is increasing which affirms the quality and reputation of Dien Trang company brand. The company has built a bio-organic fertilizer factory, agricultural probiotics and foliar fertilizers with a capacity of 20,000 tons / year. In addition, the company has built a team of agricultural engineers with high technology, skilled sales, professional ready to meet all the needs of domestic and international customers. Dien Trang Company would like to send our sincere thanks to the Enterprises, Ladies and Gentlemen, the farmers who have trusted and effectively used our products in the past time. Filling in the commitment that: QUALITY IS LIFE.</p>\r\n\r\n<p><strong><iframe frameborder=\"0\" height=\"703\" scrolling=\"no\" src=\"https://www.youtube.com/embed/7Xy6JLirkco\" width=\"854\"></iframe></strong></p>', 'default', NULL, 'introduction-to-fashion-company', '1', NULL, '', 'gioi-thieu', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-01-14 02:41:23'),
(80, 'TERMS OF SERVICE', NULL, '<p><strong>PAYMENTS TERMS &amp; CONDITIONS&nbsp;</strong></p>\r\n\r\n<p>WE ACCEPT ALL MAJOR CREDIT AND DEBIT CARDS.</p>\r\n\r\n<p>VISA, VISA DEBIT / DELTA, VISA ELECTRON, MASTERCARD DEBIT, MASTERCARD, UK MAESTRO, AMERICAN EXPRESS, APPLE PAY, PAYPAL</p>\r\n\r\n<p>THE ACTUAL CHARGE PRICE TO OVERSEAS CUSTOMERS WILL BE SUBJECT TO THE EXCHANGE RATE APPLIED BY THE CUSTOMER&rsquo;S CREDIT OR DEBIT CARD COMPANY. CUSTOMS, DUTIES AND TAXES ARE NOT INCLUDED IN ANY ITEM PRICE. ALL INTERNATIONAL ORDERS ARE SHIPPED WITH DELIVERY DUTIES UNPAID MEANING ANY FEES ARE CHARGED ONCE THE PARCEL REACHES ITS FINAL DESTINATION AND MUST BE PAID BY THE RECIPIENT.</p>\r\n\r\n<p><strong>STANDARD TERMS &amp; CONDITIONS</strong></p>\r\n\r\n<p>THESE TERMS -</p>\r\n\r\n<p><strong>WHAT THESE TERMS COVER</strong></p>\r\n\r\n<p>THESE ARE THE TERMS AND CONDITIONS ON WHICH WE SUPPLY PRODUCTS TO YOU.</p>\r\n\r\n<p><strong>WHY YOU SHOULD READ THEM</strong></p>\r\n\r\n<p>PLEASE READ THESE TERMS CAREFULLY BEFORE YOU SUBMIT YOUR ORDER TO US. THESE TERMS TELL YOU WHO WE ARE, HOW WE WILL PROVIDE PRODUCTS TO YOU, HOW YOU AND WE MAY CHANGE OR END THE CONTRACT, WHAT TO DO IF THERE IS A PROBLEM AND OTHER IMPORTANT INFORMATION. IF YOU THINK THAT THERE IS A MISTAKE IN THESE TERMS, PLEASE CONTACT US TO DISCUSS.</p>\r\n\r\n<p><strong>INFORMATION ABOUT US AND HOW TO CONTACT US</strong></p>\r\n\r\n<p><strong>WHO WE ARE</strong></p>\r\n\r\n<p>WE ARE YELIR WORLD LTD, A COMPANY REGISTERED IN ENGLAND AND WALES.&nbsp; OUR COMPANY REGISTRATION NUMBER IS&nbsp;11059200&nbsp;AND OUR REGISTERED OFFICE IS AT UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM, CW2 8UY. OUR REGISTERED VAT NUMBER IS GB293 7006 92.</p>\r\n\r\n<p><strong>HOW TO CONTACT US</strong></p>\r\n\r\n<p>YOU CAN CONTACT US BY EMAIL AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>.</p>\r\n\r\n<p><strong>HOW WE MAY CONTACT YOU</strong></p>\r\n\r\n<p>IF WE HAVE TO CONTACT YOU WE WILL DO SO BY WRITING TO YOU AT THE EMAIL ADDRESS YOU PROVIDED TO US IN YOUR ORDER OR TELEPHONING YOU ON THE NUMBER YOU PROVIDED TO US IN YOUR ORDER.</p>\r\n\r\n<p><strong>&quot;WRITING&quot; INCLUDES EMAILS</strong></p>\r\n\r\n<p>WHEN WE USE THE WORDS &quot;WRITING&quot; OR &quot;WRITTEN&quot; IN THESE TERMS, THIS INCLUDES EMAILS.</p>\r\n\r\n<p><strong>OUR CONTRACT WITH YOU</strong></p>\r\n\r\n<p><strong>HOW WE WILL ACCEPT YOUR ORDER</strong></p>\r\n\r\n<p>OUR ACCEPTANCE OF YOUR ORDER WILL TAKE PLACE WHEN WE HAVE RECEIVED PAYMENT IN FULL, AND WE HAVE EMAILED YOU TO CONFIRM THAT THE PRODUCTS YOU HAVE ORDERED ARE BEING PROCESSED READY FOR DELIVERY, AT WHICH POINT A CONTRACT WILL COME INTO EXISTENCE BETWEEN YOU AND US.</p>\r\n\r\n<p><strong>IF WE CANNOT ACCEPT YOUR ORDER</strong></p>\r\n\r\n<p>ALL ORDERS ARE SUBJECT TO AVAILABILITY AND ACCEPTANCE BY US. WE MAY REQUIRE PROOF THAT YOU ARE 16 YEARS OF AGE OR OVER IN ORDER TO ACCEPT YOUR ORDER. WE MAY REFUSE TO ACCEPT AN ORDER FOR ANY REASON.&nbsp; IF WE ARE UNABLE TO ACCEPT YOUR ORDER, WE WILL INFORM YOU OF THIS AND WILL NOT CHARGE YOU FOR THE PRODUCTS. THIS MIGHT BE BECAUSE THE PRODUCT IS OUT OF STOCK, BECAUSE OF UNEXPECTED LIMITS ON OUR RESOURCES WHICH WE COULD NOT REASONABLY PLAN FOR, BECAUSE THERE HAS BEEN A PROBLEM WITH PAYMENT OR BECAUSE WE HAVE IDENTIFIED AN ERROR IN THE PRICE OR DESCRIPTION OF THE PRODUCTS.</p>\r\n\r\n<p><strong>YOUR ORDER NUMBER</strong></p>\r\n\r\n<p>WE WILL ASSIGN AN ORDER NUMBER TO YOUR ORDER AND TELL YOU WHAT IT IS WHEN WE ACCEPT YOUR ORDER. IT WILL HELP US IF YOU CAN TELL US THE ORDER NUMBER WHENEVER YOU CONTACT US ABOUT YOUR ORDER.</p>\r\n\r\n<p><strong>OUR PRODUCTS</strong></p>\r\n\r\n<p>PRODUCTS MAY VARY SLIGHTLY FROM THEIR PICTURES AND DESCRIPTIONS. THE IMAGES AND DESCRIPTIONS OF THE PRODUCTS ON OUR WEBSITE ARE FOR ILLUSTRATIVE PURPOSES ONLY. ALTHOUGH WE HAVE MADE EVERY EFFORT TO DISPLAY THE COLOURS, DESIGNS AND MATERIALS ACCURATELY, WE CANNOT GUARANTEE THAT A DEVICE&#39;S DISPLAY OF THE COLOURS ACCURATELY REFLECTS THE COLOUR OF THE PRODUCTS AND DESIGNS. YOUR PRODUCT MAY VARY SLIGHTLY FROM THOSE IMAGES AND DESCRIPTIONS.</p>\r\n\r\n<p><strong>MAKING SURE YOUR MEASUREMENTS ARE ACCURATE</strong></p>\r\n\r\n<p>YOU ARE RESPONSIBLE FOR ENSURING THAT THE SIZE OF PRODUCT SELECTED IS CORRECT. YOU CAN FIND INFORMATION AND TIPS ON HOW TO MEASURE BY CONTACTING US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>.</p>\r\n\r\n<p><strong>YOUR RIGHTS TO MAKE CHANGES</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>IF YOU WISH TO MAKE A CHANGE TO YOUR ORDER, PLEASE CONTACT US. WE WILL LET YOU KNOW IF THE CHANGE IS POSSIBLE. IF IT IS POSSIBLE WE WILL LET YOU KNOW ABOUT ANY CHANGES TO THE PRICE OF THE PRODUCT, THE TIMING OF SUPPLY OR ANYTHING ELSE WHICH WOULD BE NECESSARY AS A RESULT OF YOUR REQUESTED CHANGE AND ASK YOU TO CONFIRM WHETHER YOU WISH TO GO AHEAD WITH THE CHANGE. IF WE CANNOT MAKE THE CHANGE OR THE CONSEQUENCES OF MAKING THE CHANGE ARE UNACCEPTABLE TO YOU, YOU MAY WANT TO END THE CONTRACT (SEE CLAUSE 8 - YOUR RIGHTS TO END THE CONTRACT).</p>\r\n\r\n<p><strong>OUR RIGHTS TO MAKE CHANGES</strong></p>\r\n\r\n<p>MINOR CHANGES TO THE PRODUCTS. WE MAY MAKE CHANGES TO PRODUCTS FROM TIME TO TIME, INCLUDING:</p>\r\n\r\n<p>&nbsp;- TO REFLECT CHANGES IN RELEVANT LAWS AND REGULATORY REQUIREMENTS; OR</p>\r\n\r\n<p>&nbsp;- TO IMPLEMENT MINOR TECHNICAL ADJUSTMENTS AND IMPROVEMENTS.</p>\r\n\r\n<p><strong>PROVIDING THE PRODUCTS</strong></p>\r\n\r\n<p><strong>DELIVERY COSTS</strong></p>\r\n\r\n<p>- DELIVERIES TO THE UK ARE FREE OF CHARGE AND PRODUCTS WILL USUALLY BE DELIVERED WITHIN 1-3 WORKING DAYS. WE MAY ALSO OFFER A SATURDAY DELIVERY OPTION SUBJECT TO AVAILABILITY WHICH WILL COST &pound;4. FOR SATURDAY DELIVERY, ORDERS MUST BE PLACED BEFORE 3PM THE PRECEDING FRIDAY.</p>\r\n\r\n<p>- DELIVERIES TO DESTINATIONS OUTSIDE OF THE UK WILL COST &pound;20 PER DELIVERY AND DELIVERY TIMES WILL VARY FROM 3 DAYS UPWARDS, DEPENDING ON THE DESTINATION.</p>\r\n\r\n<p>- DELIVERY WILL BE COMPLETE WHEN WE DELIVER THE PRODUCTS TO THE ADDRESS PROVIDED BY YOU.</p>\r\n\r\n<p>- IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOUR ORDER MAY BE SUBJECT TO IMPORT DUTIES AND/OR TAXES, AND YOU WILL BE RESPONSIBLE FOR ANY SUCH CHARGES. WE WILL NOT BE LIABLE TO PAY ANY IMPORT DUTIES OR TAXES UNDER ANY CIRCUMSTANCES.</p>\r\n\r\n<p>- IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOU ARE RESPONSIBLE FOR ENSURING THAT YOU COMPLY WITH ANY APPLICABLE LAWS AND/OR REGULATIONS IN THE DESTINATION COUNTRY.</p>\r\n\r\n<p><strong>WHEN WE WILL PROVIDE THE PRODUCTS</strong></p>\r\n\r\n<p>WE WILL SHIP PRODUCTS TO YOU VIA A THIRD PARTY AS SOON AS REASONABLY POSSIBLE AND IN ANY EVENT WITHIN 30 DAYS AFTER THE DAY ON WHICH WE ACCEPT YOUR ORDER.</p>\r\n\r\n<p><strong>WE ARE NOT RESPONSIBLE FOR DELAYS OUTSIDE OUR CONTROL</strong></p>\r\n\r\n<p>IF OUR SUPPLY OF THE PRODUCTS IS DELAYED BY AN EVENT OUTSIDE OUR CONTROL THEN WE WILL CONTACT YOU AS SOON AS POSSIBLE TO LET YOU KNOW AND WE WILL TAKE STEPS TO MINIMISE THE EFFECT OF THE DELAY. PROVIDED WE DO THIS WE WILL NOT BE LIABLE FOR DELAYS CAUSED BY THE EVENT, BUT IF THERE IS A RISK OF SUBSTANTIAL DELAY YOU MAY CONTACT US TO END THE CONTRACT AND RECEIVE A REFUND FOR ANY PRODUCTS YOU HAVE PAID FOR BUT NOT RECEIVED.</p>\r\n\r\n<p><strong>IN THE EVENT OF AN UNSUCCESSFUL DELIVERY</strong></p>\r\n\r\n<p>OUR DELIVERY SERVICES ARE PROVIDED BY A THIRD PARTY LOGISTICS COMPANY. THE THIRD PARTY TERMS WILL TAKE PRECEDENT AND A COPY OF THESE TERMS MAY BE REQUESTED IN WRITING IF REQUIRED.</p>\r\n\r\n<p><strong>WHEN YOU BECOME RESPONSIBLE FOR THE PRODUCTS</strong></p>\r\n\r\n<p>PRODUCTS WILL BE YOUR RESPONSIBILITY FROM THE TIME THE PRODUCTS ARE DELIVERED TO THE ADDRESS YOU GAVE US.</p>\r\n\r\n<p><strong>WHEN DO YOU OWN PRODUCTS</strong></p>\r\n\r\n<p>YOU OWN A PRODUCT ONCE WE HAVE RECEIVED PAYMENT IN FULL.</p>\r\n\r\n<p><strong>WHAT WILL HAPPEN IF YOU DO NOT GIVE REQUIRED INFORMATION TO US</strong></p>\r\n\r\n<p>WE MAY NEED CERTAIN INFORMATION FROM YOU SO THAT WE CAN SUPPLY THE PRODUCTS TO YOU. WE WILL CONTACT YOU TO ASK FOR THIS INFORMATION. IF YOU DO NOT GIVE US THIS INFORMATION WITHIN A REASONABLE TIME OF US ASKING FOR IT, OR IF YOU GIVE US INCOMPLETE OR INCORRECT INFORMATION, WE MAY EITHER END THE CONTRACT (AND CLAUSE 10.2 WILL APPLY) OR MAKE AN ADDITIONAL CHARGE OF A REASONABLE SUM TO COMPENSATE US FOR ANY EXTRA WORK THAT IS REQUIRED AS A RESULT. WE WILL NOT BE RESPONSIBLE FOR SUPPLYING THE PRODUCTS LATE OR NOT SUPPLYING ANY PART OF THEM IF THIS IS CAUSED BY YOU NOT GIVING US THE INFORMATION WE NEED WITHIN A REASONABLE TIME OF US ASKING FOR IT.</p>\r\n\r\n<p><strong>YOUR RIGHTS TO END THE CONTRACT</strong></p>\r\n\r\n<p><strong>EXERCISING YOUR RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>IF YOU ARE ORDERING PRODUCTS FROM WITHIN THE EUROPEAN ECONOMIC AREA (EEA), FOR MOST PRODUCTS YOU HAVE A LEGAL RIGHT TO CHANGE YOUR MIND WITHIN 14 DAYS AND RECEIVE A REFUND.</p>\r\n\r\n<p><strong>WHEN YOU DON&#39;T HAVE THE RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>&nbsp;YOU DO NOT HAVE A RIGHT TO CHANGE YOUR MIND IN RESPECT OF:</p>\r\n\r\n<p>- PRODUCTS SEALED FOR HEALTH PROTECTION OR HYGIENE PURPOSES, ONCE THESE HAVE BEEN UNSEALED AFTER YOU RECEIVE THEM;</p>\r\n\r\n<p>- ANY PRODUCTS WHICH BECOME MIXED INSEPARABLY WITH OTHER ITEMS AFTER THEIR DELIVERY.</p>\r\n\r\n<p><strong>HOW LONG DO I HAVE TO CHANGE MY MIND?</strong></p>\r\n\r\n<p>YOU HAVE 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE PRODUCTS, UNLESS:</p>\r\n\r\n<p>- YOUR PRODUCTS ARE SPLIT INTO SEVERAL DELIVERIES OVER DIFFERENT DAYS. IN THIS CASE YOU HAVE UNTIL 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE LAST DELIVERY TO CHANGE YOUR MIND ABOUT THE PRODUCTS;</p>\r\n\r\n<p>- YOUR PRODUCTS ARE FOR REGULAR DELIVERY OVER A SET PERIOD. IN THIS CASE YOU HAVE UNTIL 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE FIRST DELIVERY OF THE PRODUCTS.</p>\r\n\r\n<p>ENDING THE CONTRACT WHERE WE ARE NOT AT FAULT AND THERE IS NO RIGHT TO CHANGE YOUR MIND</p>\r\n\r\n<p>EVEN IF WE ARE NOT AT FAULT AND YOU DO NOT HAVE A RIGHT TO CHANGE YOUR MIND (SEE CLAUSE 8.1), YOU CAN STILL END THE CONTRACT BEFORE IT IS COMPLETED, BUT YOU MAY HAVE TO PAY US COMPENSATION. A CONTRACT FOR PRODUCTS IS COMPLETED WHEN THE PRODUCT IS DELIVERED AND PAID FOR. IF YOU WANT TO END A CONTRACT BEFORE IT IS COMPLETED WHERE WE ARE NOT AT FAULT AND YOU HAVE NOT CHANGED YOUR MIND, JUST CONTACT US TO LET US KNOW. THE CONTRACT WILL END IMMEDIATELY AND WE WILL REFUND ANY SUMS PAID BY YOU FOR PRODUCTS NOT PROVIDED BUT WE MAY DEDUCT FROM THAT REFUND (OR, IF YOU HAVE NOT MADE AN ADVANCE PAYMENT, CHARGE YOU) REASONABLE COMPENSATION FOR THE NET COSTS WE WILL INCUR AS A RESULT OF YOUR ENDING THE CONTRACT.</p>\r\n\r\n<p><strong>HOW TO END THE CONTRACT WITH US (INCLUDING IF YOU HAVE CHANGED YOUR MIND)</strong></p>\r\n\r\n<p>TELL US YOU WANT TO END THE CONTRACT. TO END THE CONTRACT WITH US, PLEASE LET US KNOW BY DOING ONE OF THE FOLLOWING:</p>\r\n\r\n<p>- SUBMIT A REFUND REQUEST BY GOING TO THE RETURNS SECTION IN THE FOOTER OF OUR WEBSITE;</p>\r\n\r\n<p>- EMAIL US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>. PLEASE PROVIDE YOUR NAME, HOME ADDRESS, DETAILS OF THE ORDER AND YOUR EMAIL ADDRESS;</p>\r\n\r\n<p>- BY POST. WRITE TO US AT THE ADDRESS IN CLAUSE 2.1, INCLUDING DETAILS OF WHAT YOU BOUGHT, WHEN YOU ORDERED OR RECEIVED IT AND YOUR NAME AND ADDRESS.</p>\r\n\r\n<p><strong>RETURNING PRODUCTS AFTER ENDING THE CONTRACT</strong></p>\r\n\r\n<p>IF YOU END THE CONTRACT FOR ANY REASON AFTER PRODUCTS HAVE BEEN DISPATCHED TO YOU OR YOU HAVE RECEIVED THEM, YOU MUST RETURN THEM TO US. YOU MUST POST THEM BACK TO US AT THE ADDRESS IN CLAUSE 2.1.&nbsp; IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND YOU MUST RETURN THE PRODUCTS WITHIN 14 DAYS OF TELLING US YOU WISH TO END THE CONTRACT. YOU ARE RESPONSIBLE FOR THE COSTS OF RETURNING PRODUCTS TO US, UNLESS THE PRODUCTS ARE FAULTY OR MISDESCRIBED, IN WHICH CASE WE WILL PAY THE COSTS OF RETURN.</p>\r\n\r\n<p><strong>HOW WE WILL REFUND YOU</strong></p>\r\n\r\n<p>IF YOU ARE A CUSTOMER, WE WILL REFUND YOU THE PRICE YOU PAID FOR THE PRODUCTS (INCLUDING DELIVERY COSTS IF THE PRODUCTS ARE FAULTY OR MISDESCRIBED), BY THE METHOD YOU USED FOR PAYMENT. HOWEVER, WE MAY MAKE DEDUCTIONS FROM THE PRICE, AS DESCRIBED BELOW.</p>\r\n\r\n<p><strong>DEDUCTIONS FROM REFUNDS IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND:</p>\r\n\r\n<p>- WE MAY REDUCE YOUR REFUND OF THE PRICE (EXCLUDING DELIVERY COSTS) TO REFLECT ANY REDUCTION IN THE VALUE OF THE PRODUCTS, IF THIS HAS BEEN CAUSED BY YOUR HANDLING THEM IN A WAY WHICH WOULD NOT BE PERMITTED IN A SHOP. IF WE REFUND YOU THE PRICE PAID BEFORE WE ARE ABLE TO INSPECT THE PRODUCTS AND LATER DISCOVER YOU HAVE HANDLED THEM IN AN UNACCEPTABLE WAY, YOU MUST PAY US AN APPROPRIATE AMOUNT;</p>\r\n\r\n<p>- IF THE PRODUCTS ARE FAULTY OR MISDESCRIBED, THE MAXIMUM REFUND FOR DELIVERY COSTS WILL BE THE COSTS OF DELIVERY BY THE LEAST EXPENSIVE DELIVERY METHOD WE OFFER. FOR EXAMPLE, IF WE OFFER DELIVERY OF A PRODUCT WITHIN 3-5 DAYS AT ONE COST BUT YOU CHOOSE TO HAVE THE PRODUCT DELIVERED WITHIN 24 HOURS AT A HIGHER COST, THEN WE WILL ONLY REFUND WHAT YOU WOULD HAVE PAID FOR THE CHEAPER DELIVERY OPTION.</p>\r\n\r\n<p><strong>WHEN YOUR REFUND WILL BE MADE</strong></p>\r\n\r\n<p>WE WILL MAKE ANY REFUNDS DUE TO YOU AS SOON AS POSSIBLE.&nbsp; IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND THEN:</p>\r\n\r\n<p>- YOUR REFUND WILL BE MADE WITHIN 14 DAYS FROM THE DAY ON WHICH WE RECEIVE THE PRODUCT BACK FROM YOU OR, IF EARLIER, THE DAY ON WHICH YOU PROVIDE US WITH EVIDENCE THAT YOU HAVE SENT THE PRODUCT BACK TO US. FOR INFORMATION ABOUT HOW TO RETURN A PRODUCT TO US, SEE CLAUSE 9.2;</p>\r\n\r\n<p>- IN ALL OTHER CASES, YOUR REFUND WILL BE MADE WITHIN 14 DAYS OF YOUR TELLING US YOU HAVE CHANGED YOUR MIND.</p>\r\n\r\n<p><strong>OUR RIGHTS TO END THE CONTRACT</strong></p>\r\n\r\n<p>WE MAY END THE CONTRACT IF YOU BREAK IT</p>\r\n\r\n<p>WE MAY END THE CONTRACT FOR A PRODUCT AT ANY TIME BY WRITING TO YOU IF:</p>\r\n\r\n<p>- YOU DO NOT MAKE ANY PAYMENT TO US WHEN IT IS DUE;</p>\r\n\r\n<p>- YOU DO NOT, WITHIN A REASONABLE TIME OF US ASKING FOR IT, PROVIDE US WITH INFORMATION THAT IS NECESSARY FOR US TO PROVIDE THE PRODUCTS;</p>\r\n\r\n<p>- YOU DO NOT, WITHIN A REASONABLE TIME, ALLOW US TO DELIVER THE PRODUCTS TO YOU.</p>\r\n\r\n<p>- IF WE END THE CONTRACT IN THE SITUATIONS SET OUT IN CLAUSE 1 WE WILL REFUND ANY MONEY YOU HAVE PAID FOR PRODUCTS WE HAVE NOT PROVIDED.</p>\r\n\r\n<p><strong>IF THERE IS A PROBLEM WITH THE PRODUCT</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>HOW TO TELL US ABOUT PROBLEMS</p>\r\n\r\n<p>IF YOU HAVE ANY QUESTIONS OR COMPLAINTS ABOUT THE PRODUCT, PLEASE CONTACT US. YOU CAN EMAIL US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>&nbsp;OR WRITE TO US AT THE ADDRESS PROVIDED IN CLAUSE 2.1.</p>\r\n\r\n<p><strong>PRICE AND PAYMENTS</strong></p>\r\n\r\n<p><strong>WHERE TO FIND THE PRICE FOR THE&nbsp; PRODUCT</strong></p>\r\n\r\n<p>THE PRICE OF THE PRODUCT (WHICH INCLUDES VAT) WILL BE THE PRICE INDICATED ON THE ORDER PAGES WHEN YOU PLACED YOUR ORDER. WE TAKE ALL REASONABLE CARE TO ENSURE THAT THE PRICE OF THE PRODUCT ADVISED TO YOU IS CORRECT. HOWEVER PLEASE SEE CLAUSE 12.3 FOR WHAT HAPPENS IF WE DISCOVER AN ERROR IN THE PRICE OF THE PRODUCT YOU ORDER.</p>\r\n\r\n<p><strong>WE WILL PASS ON CHANGES IN THE RATE OF VAT</strong></p>\r\n\r\n<p>IF THE RATE OF VAT CHANGES BETWEEN YOUR ORDER DATE AND THE DATE WE SUPPLY THE PRODUCT, WE WILL ADJUST THE RATE OF VAT THAT YOU PAY, UNLESS YOU HAVE ALREADY PAID FOR THE PRODUCT IN FULL BEFORE THE CHANGE IN THE RATE OF VAT TAKES EFFECT.</p>\r\n\r\n<p><strong>WHAT HAPPENS IF WE GOT THE PRICE WRONG</strong></p>\r\n\r\n<p>IT IS ALWAYS POSSIBLE THAT, DESPITE OUR BEST EFFORTS, SOME OF THE PRODUCTS WE SELL MAY BE INCORRECTLY PRICED. WE WILL NORMALLY CHECK PRICES BEFORE ACCEPTING YOUR ORDER SO THAT, WHERE THE PRODUCT&#39;S CORRECT PRICE AT YOUR ORDER DATE IS LESS THAN OUR STATED PRICE AT YOUR ORDER DATE, WE WILL CHARGE THE LOWER AMOUNT. IF THE PRODUCT&#39;S CORRECT PRICE AT YOUR ORDER DATE IS HIGHER THAN THE PRICE STATED TO YOU, WE WILL CONTACT YOU FOR YOUR INSTRUCTIONS BEFORE WE ACCEPT YOUR ORDER.&nbsp; IF WE ACCEPT AND PROCESS YOUR ORDER WHERE A PRICING ERROR IS OBVIOUS AND UNMISTAKEABLE AND COULD REASONABLY HAVE BEEN RECOGNISED BY YOU AS A MISPRICING, WE MAY END THE CONTRACT, REFUND YOU ANY SUMS YOU HAVE PAID AND REQUIRE THE RETURN OF ANY PRODUCTS PROVIDED TO YOU.</p>\r\n\r\n<p><strong>WHEN YOU MUST PAY AND HOW YOU MUST PAY</strong></p>\r\n\r\n<p>WE ACCEPT PAYMENT FROM ALL MAJOR CREDIT AND DEBIT CARDS, APPLE PAY AND PAYPAL. YOU MUST PAY FOR THE PRODUCTS BEFORE WE DISPATCH THEM.</p>\r\n\r\n<p><strong>OUR RESPONSIBILITY FOR LOSS OR DAMAGE SUFFERED BY YOU</strong></p>\r\n\r\n<p>WE ARE RESPONSIBLE TO YOU FOR FORESEEABLE LOSS AND DAMAGE CAUSED BY US. IF WE FAIL TO COMPLY WITH THESE TERMS, WE ARE RESPONSIBLE FOR LOSS OR DAMAGE YOU SUFFER THAT IS A FORESEEABLE RESULT OF OUR BREAKING THIS CONTRACT OR OUR FAILING TO USE REASONABLE CARE AND SKILL, BUT WE ARE NOT RESPONSIBLE FOR ANY LOSS OR DAMAGE THAT IS NOT FORESEEABLE. LOSS OR DAMAGE IS FORESEEABLE IF EITHER IT IS OBVIOUS THAT IT WILL HAPPEN OR IF, AT THE TIME THE CONTRACT WAS MADE, BOTH WE AND YOU KNEW IT MIGHT HAPPEN, FOR EXAMPLE, IF YOU DISCUSSED IT WITH US DURING THE SALES PROCESS.</p>\r\n\r\n<p>WE DO NOT EXCLUDE OR LIMIT IN ANY WAY OUR LIABILITY TO YOU WHERE IT WOULD BE UNLAWFUL TO DO SO. THIS INCLUDES LIABILITY FOR DEATH OR PERSONAL INJURY CAUSED BY OUR NEGLIGENCE OR THE NEGLIGENCE OF OUR EMPLOYEES, AGENTS OR SUBCONTRACTORS; FOR FRAUD OR FRAUDULENT MISREPRESENTATION; FOR BREACH OF YOUR LEGAL RIGHTS IN RELATION TO THE PRODUCTS.</p>\r\n\r\n<p><strong>HOW WE MAY USE YOUR PERSONAL INFORMATION</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>HOW WE MAY USE YOUR PERSONAL INFORMATION.&nbsp;WE WILL ONLY USE YOUR PERSONAL INFORMATION AS SET OUT IN OUR PRIVACY POLICY.</p>\r\n\r\n<p><strong>OTHER IMPORTANT TERMS</strong></p>\r\n\r\n<p>WE MAY TRANSFER THIS AGREEMENT TO SOMEONE ELSE</p>\r\n\r\n<p>WE MAY TRANSFER OUR RIGHTS AND OBLIGATIONS UNDER THESE TERMS TO ANOTHER ORGANISATION.</p>\r\n\r\n<p>YOU NEED OUR CONSENT TO TRANSFER YOUR RIGHTS TO SOMEONE ELSE</p>\r\n\r\n<p>YOU MAY ONLY TRANSFER YOUR RIGHTS OR YOUR OBLIGATIONS UNDER THESE TERMS TO ANOTHER PERSON IF WE AGREE TO THIS IN WRITING.</p>\r\n\r\n<p>NOBODY ELSE HAS ANY RIGHTS UNDER THIS CONTRACT</p>\r\n\r\n<p>THIS CONTRACT IS BETWEEN YOU AND US. NO OTHER PERSON SHALL HAVE ANY RIGHTS TO ENFORCE ANY OF ITS TERMS.</p>\r\n\r\n<p>IF A COURT FINDS PART OF THIS CONTRACT ILLEGAL, THE REST WILL CONTINUE IN FORCE</p>\r\n\r\n<p>EACH OF THE PARAGRAPHS OF THESE TERMS OPERATES SEPARATELY. IF ANY COURT OR RELEVANT AUTHORITY DECIDES THAT ANY OF THEM ARE UNLAWFUL, THE REMAINING PARAGRAPHS WILL REMAIN IN FULL FORCE AND EFFECT.</p>\r\n\r\n<p>EVEN IF WE DELAY IN ENFORCING THIS CONTRACT, WE CAN STILL ENFORCE IT LATER</p>\r\n\r\n<p>IF WE DO NOT INSIST IMMEDIATELY THAT YOU DO ANYTHING YOU ARE REQUIRED TO DO UNDER THESE TERMS, OR IF WE DELAY IN TAKING STEPS AGAINST YOU IN RESPECT OF YOUR BREAKING THIS CONTRACT, THAT WILL NOT MEAN THAT YOU DO NOT HAVE TO DO THOSE THINGS AND IT WILL NOT PREVENT US TAKING STEPS AGAINST YOU AT A LATER DATE. FOR EXAMPLE, IF YOU MISS A PAYMENT AND WE DO NOT CHASE YOU BUT WE CONTINUE TO PROVIDE THE PRODUCTS, WE CAN STILL REQUIRE YOU TO MAKE THE PAYMENT AT A LATER DATE.</p>\r\n\r\n<p>WHICH LAWS APPLY TO THIS CONTRACT AND WHERE YOU MAY BRING LEGAL PROCEEDINGS.</p>\r\n\r\n<p>THESE TERMS ARE GOVERNED BY ENGLISH LAW AND YOU CAN BRING LEGAL PROCEEDINGS IN RESPECT OF THE PRODUCTS IN THE ENGLISH COURTS.</p>', 'default', NULL, 'terms-of-service-80', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 01:17:46', '2022-05-11 01:17:46'),
(79, 'TERMS OF SERVICE', NULL, '<p><strong>PAYMENTS TERMS &amp; CONDITIONS&nbsp;</strong></p>\r\n\r\n<p>WE ACCEPT ALL MAJOR CREDIT AND DEBIT CARDS.</p>\r\n\r\n<p>VISA, VISA DEBIT / DELTA, VISA ELECTRON, MASTERCARD DEBIT, MASTERCARD, UK MAESTRO, AMERICAN EXPRESS, APPLE PAY, PAYPAL</p>\r\n\r\n<p>THE ACTUAL CHARGE PRICE TO OVERSEAS CUSTOMERS WILL BE SUBJECT TO THE EXCHANGE RATE APPLIED BY THE CUSTOMER&rsquo;S CREDIT OR DEBIT CARD COMPANY. CUSTOMS, DUTIES AND TAXES ARE NOT INCLUDED IN ANY ITEM PRICE. ALL INTERNATIONAL ORDERS ARE SHIPPED WITH DELIVERY DUTIES UNPAID MEANING ANY FEES ARE CHARGED ONCE THE PARCEL REACHES ITS FINAL DESTINATION AND MUST BE PAID BY THE RECIPIENT.</p>\r\n\r\n<p><strong>STANDARD TERMS &amp; CONDITIONS</strong></p>\r\n\r\n<p>THESE TERMS -</p>\r\n\r\n<p><strong>WHAT THESE TERMS COVER</strong></p>\r\n\r\n<p>THESE ARE THE TERMS AND CONDITIONS ON WHICH WE SUPPLY PRODUCTS TO YOU.</p>\r\n\r\n<p><strong>WHY YOU SHOULD READ THEM</strong></p>\r\n\r\n<p>PLEASE READ THESE TERMS CAREFULLY BEFORE YOU SUBMIT YOUR ORDER TO US. THESE TERMS TELL YOU WHO WE ARE, HOW WE WILL PROVIDE PRODUCTS TO YOU, HOW YOU AND WE MAY CHANGE OR END THE CONTRACT, WHAT TO DO IF THERE IS A PROBLEM AND OTHER IMPORTANT INFORMATION. IF YOU THINK THAT THERE IS A MISTAKE IN THESE TERMS, PLEASE CONTACT US TO DISCUSS.</p>\r\n\r\n<p><strong>INFORMATION ABOUT US AND HOW TO CONTACT US</strong></p>\r\n\r\n<p><strong>WHO WE ARE</strong></p>\r\n\r\n<p>WE ARE YELIR WORLD LTD, A COMPANY REGISTERED IN ENGLAND AND WALES.&nbsp; OUR COMPANY REGISTRATION NUMBER IS&nbsp;11059200&nbsp;AND OUR REGISTERED OFFICE IS AT UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM, CW2 8UY. OUR REGISTERED VAT NUMBER IS GB293 7006 92.</p>\r\n\r\n<p><strong>HOW TO CONTACT US</strong></p>\r\n\r\n<p>YOU CAN CONTACT US BY EMAIL AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>.</p>\r\n\r\n<p><strong>HOW WE MAY CONTACT YOU</strong></p>\r\n\r\n<p>IF WE HAVE TO CONTACT YOU WE WILL DO SO BY WRITING TO YOU AT THE EMAIL ADDRESS YOU PROVIDED TO US IN YOUR ORDER OR TELEPHONING YOU ON THE NUMBER YOU PROVIDED TO US IN YOUR ORDER.</p>\r\n\r\n<p><strong>&quot;WRITING&quot; INCLUDES EMAILS</strong></p>\r\n\r\n<p>WHEN WE USE THE WORDS &quot;WRITING&quot; OR &quot;WRITTEN&quot; IN THESE TERMS, THIS INCLUDES EMAILS.</p>\r\n\r\n<p><strong>OUR CONTRACT WITH YOU</strong></p>\r\n\r\n<p><strong>HOW WE WILL ACCEPT YOUR ORDER</strong></p>\r\n\r\n<p>OUR ACCEPTANCE OF YOUR ORDER WILL TAKE PLACE WHEN WE HAVE RECEIVED PAYMENT IN FULL, AND WE HAVE EMAILED YOU TO CONFIRM THAT THE PRODUCTS YOU HAVE ORDERED ARE BEING PROCESSED READY FOR DELIVERY, AT WHICH POINT A CONTRACT WILL COME INTO EXISTENCE BETWEEN YOU AND US.</p>\r\n\r\n<p><strong>IF WE CANNOT ACCEPT YOUR ORDER</strong></p>\r\n\r\n<p>ALL ORDERS ARE SUBJECT TO AVAILABILITY AND ACCEPTANCE BY US. WE MAY REQUIRE PROOF THAT YOU ARE 16 YEARS OF AGE OR OVER IN ORDER TO ACCEPT YOUR ORDER. WE MAY REFUSE TO ACCEPT AN ORDER FOR ANY REASON.&nbsp; IF WE ARE UNABLE TO ACCEPT YOUR ORDER, WE WILL INFORM YOU OF THIS AND WILL NOT CHARGE YOU FOR THE PRODUCTS. THIS MIGHT BE BECAUSE THE PRODUCT IS OUT OF STOCK, BECAUSE OF UNEXPECTED LIMITS ON OUR RESOURCES WHICH WE COULD NOT REASONABLY PLAN FOR, BECAUSE THERE HAS BEEN A PROBLEM WITH PAYMENT OR BECAUSE WE HAVE IDENTIFIED AN ERROR IN THE PRICE OR DESCRIPTION OF THE PRODUCTS.</p>\r\n\r\n<p><strong>YOUR ORDER NUMBER</strong></p>\r\n\r\n<p>WE WILL ASSIGN AN ORDER NUMBER TO YOUR ORDER AND TELL YOU WHAT IT IS WHEN WE ACCEPT YOUR ORDER. IT WILL HELP US IF YOU CAN TELL US THE ORDER NUMBER WHENEVER YOU CONTACT US ABOUT YOUR ORDER.</p>\r\n\r\n<p><strong>OUR PRODUCTS</strong></p>\r\n\r\n<p>PRODUCTS MAY VARY SLIGHTLY FROM THEIR PICTURES AND DESCRIPTIONS. THE IMAGES AND DESCRIPTIONS OF THE PRODUCTS ON OUR WEBSITE ARE FOR ILLUSTRATIVE PURPOSES ONLY. ALTHOUGH WE HAVE MADE EVERY EFFORT TO DISPLAY THE COLOURS, DESIGNS AND MATERIALS ACCURATELY, WE CANNOT GUARANTEE THAT A DEVICE&#39;S DISPLAY OF THE COLOURS ACCURATELY REFLECTS THE COLOUR OF THE PRODUCTS AND DESIGNS. YOUR PRODUCT MAY VARY SLIGHTLY FROM THOSE IMAGES AND DESCRIPTIONS.</p>\r\n\r\n<p><strong>MAKING SURE YOUR MEASUREMENTS ARE ACCURATE</strong></p>\r\n\r\n<p>YOU ARE RESPONSIBLE FOR ENSURING THAT THE SIZE OF PRODUCT SELECTED IS CORRECT. YOU CAN FIND INFORMATION AND TIPS ON HOW TO MEASURE BY CONTACTING US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>.</p>\r\n\r\n<p><strong>YOUR RIGHTS TO MAKE CHANGES</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>IF YOU WISH TO MAKE A CHANGE TO YOUR ORDER, PLEASE CONTACT US. WE WILL LET YOU KNOW IF THE CHANGE IS POSSIBLE. IF IT IS POSSIBLE WE WILL LET YOU KNOW ABOUT ANY CHANGES TO THE PRICE OF THE PRODUCT, THE TIMING OF SUPPLY OR ANYTHING ELSE WHICH WOULD BE NECESSARY AS A RESULT OF YOUR REQUESTED CHANGE AND ASK YOU TO CONFIRM WHETHER YOU WISH TO GO AHEAD WITH THE CHANGE. IF WE CANNOT MAKE THE CHANGE OR THE CONSEQUENCES OF MAKING THE CHANGE ARE UNACCEPTABLE TO YOU, YOU MAY WANT TO END THE CONTRACT (SEE CLAUSE 8 - YOUR RIGHTS TO END THE CONTRACT).</p>\r\n\r\n<p><strong>OUR RIGHTS TO MAKE CHANGES</strong></p>\r\n\r\n<p>MINOR CHANGES TO THE PRODUCTS. WE MAY MAKE CHANGES TO PRODUCTS FROM TIME TO TIME, INCLUDING:</p>\r\n\r\n<p>&nbsp;- TO REFLECT CHANGES IN RELEVANT LAWS AND REGULATORY REQUIREMENTS; OR</p>\r\n\r\n<p>&nbsp;- TO IMPLEMENT MINOR TECHNICAL ADJUSTMENTS AND IMPROVEMENTS.</p>\r\n\r\n<p><strong>PROVIDING THE PRODUCTS</strong></p>\r\n\r\n<p><strong>DELIVERY COSTS</strong></p>\r\n\r\n<p>- DELIVERIES TO THE UK ARE FREE OF CHARGE AND PRODUCTS WILL USUALLY BE DELIVERED WITHIN 1-3 WORKING DAYS. WE MAY ALSO OFFER A SATURDAY DELIVERY OPTION SUBJECT TO AVAILABILITY WHICH WILL COST &pound;4. FOR SATURDAY DELIVERY, ORDERS MUST BE PLACED BEFORE 3PM THE PRECEDING FRIDAY.</p>\r\n\r\n<p>- DELIVERIES TO DESTINATIONS OUTSIDE OF THE UK WILL COST &pound;20 PER DELIVERY AND DELIVERY TIMES WILL VARY FROM 3 DAYS UPWARDS, DEPENDING ON THE DESTINATION.</p>\r\n\r\n<p>- DELIVERY WILL BE COMPLETE WHEN WE DELIVER THE PRODUCTS TO THE ADDRESS PROVIDED BY YOU.</p>\r\n\r\n<p>- IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOUR ORDER MAY BE SUBJECT TO IMPORT DUTIES AND/OR TAXES, AND YOU WILL BE RESPONSIBLE FOR ANY SUCH CHARGES. WE WILL NOT BE LIABLE TO PAY ANY IMPORT DUTIES OR TAXES UNDER ANY CIRCUMSTANCES.</p>\r\n\r\n<p>- IF PRODUCTS ARE TO BE DELIVERED TO A DESTINATION OUTSIDE THE UK, YOU ARE RESPONSIBLE FOR ENSURING THAT YOU COMPLY WITH ANY APPLICABLE LAWS AND/OR REGULATIONS IN THE DESTINATION COUNTRY.</p>\r\n\r\n<p><strong>WHEN WE WILL PROVIDE THE PRODUCTS</strong></p>\r\n\r\n<p>WE WILL SHIP PRODUCTS TO YOU VIA A THIRD PARTY AS SOON AS REASONABLY POSSIBLE AND IN ANY EVENT WITHIN 30 DAYS AFTER THE DAY ON WHICH WE ACCEPT YOUR ORDER.</p>\r\n\r\n<p><strong>WE ARE NOT RESPONSIBLE FOR DELAYS OUTSIDE OUR CONTROL</strong></p>\r\n\r\n<p>IF OUR SUPPLY OF THE PRODUCTS IS DELAYED BY AN EVENT OUTSIDE OUR CONTROL THEN WE WILL CONTACT YOU AS SOON AS POSSIBLE TO LET YOU KNOW AND WE WILL TAKE STEPS TO MINIMISE THE EFFECT OF THE DELAY. PROVIDED WE DO THIS WE WILL NOT BE LIABLE FOR DELAYS CAUSED BY THE EVENT, BUT IF THERE IS A RISK OF SUBSTANTIAL DELAY YOU MAY CONTACT US TO END THE CONTRACT AND RECEIVE A REFUND FOR ANY PRODUCTS YOU HAVE PAID FOR BUT NOT RECEIVED.</p>\r\n\r\n<p><strong>IN THE EVENT OF AN UNSUCCESSFUL DELIVERY</strong></p>\r\n\r\n<p>OUR DELIVERY SERVICES ARE PROVIDED BY A THIRD PARTY LOGISTICS COMPANY. THE THIRD PARTY TERMS WILL TAKE PRECEDENT AND A COPY OF THESE TERMS MAY BE REQUESTED IN WRITING IF REQUIRED.</p>\r\n\r\n<p><strong>WHEN YOU BECOME RESPONSIBLE FOR THE PRODUCTS</strong></p>\r\n\r\n<p>PRODUCTS WILL BE YOUR RESPONSIBILITY FROM THE TIME THE PRODUCTS ARE DELIVERED TO THE ADDRESS YOU GAVE US.</p>\r\n\r\n<p><strong>WHEN DO YOU OWN PRODUCTS</strong></p>\r\n\r\n<p>YOU OWN A PRODUCT ONCE WE HAVE RECEIVED PAYMENT IN FULL.</p>\r\n\r\n<p><strong>WHAT WILL HAPPEN IF YOU DO NOT GIVE REQUIRED INFORMATION TO US</strong></p>\r\n\r\n<p>WE MAY NEED CERTAIN INFORMATION FROM YOU SO THAT WE CAN SUPPLY THE PRODUCTS TO YOU. WE WILL CONTACT YOU TO ASK FOR THIS INFORMATION. IF YOU DO NOT GIVE US THIS INFORMATION WITHIN A REASONABLE TIME OF US ASKING FOR IT, OR IF YOU GIVE US INCOMPLETE OR INCORRECT INFORMATION, WE MAY EITHER END THE CONTRACT (AND CLAUSE 10.2 WILL APPLY) OR MAKE AN ADDITIONAL CHARGE OF A REASONABLE SUM TO COMPENSATE US FOR ANY EXTRA WORK THAT IS REQUIRED AS A RESULT. WE WILL NOT BE RESPONSIBLE FOR SUPPLYING THE PRODUCTS LATE OR NOT SUPPLYING ANY PART OF THEM IF THIS IS CAUSED BY YOU NOT GIVING US THE INFORMATION WE NEED WITHIN A REASONABLE TIME OF US ASKING FOR IT.</p>\r\n\r\n<p><strong>YOUR RIGHTS TO END THE CONTRACT</strong></p>\r\n\r\n<p><strong>EXERCISING YOUR RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>IF YOU ARE ORDERING PRODUCTS FROM WITHIN THE EUROPEAN ECONOMIC AREA (EEA), FOR MOST PRODUCTS YOU HAVE A LEGAL RIGHT TO CHANGE YOUR MIND WITHIN 14 DAYS AND RECEIVE A REFUND.</p>\r\n\r\n<p><strong>WHEN YOU DON&#39;T HAVE THE RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>&nbsp;YOU DO NOT HAVE A RIGHT TO CHANGE YOUR MIND IN RESPECT OF:</p>\r\n\r\n<p>- PRODUCTS SEALED FOR HEALTH PROTECTION OR HYGIENE PURPOSES, ONCE THESE HAVE BEEN UNSEALED AFTER YOU RECEIVE THEM;</p>\r\n\r\n<p>- ANY PRODUCTS WHICH BECOME MIXED INSEPARABLY WITH OTHER ITEMS AFTER THEIR DELIVERY.</p>\r\n\r\n<p><strong>HOW LONG DO I HAVE TO CHANGE MY MIND?</strong></p>\r\n\r\n<p>YOU HAVE 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE PRODUCTS, UNLESS:</p>\r\n\r\n<p>- YOUR PRODUCTS ARE SPLIT INTO SEVERAL DELIVERIES OVER DIFFERENT DAYS. IN THIS CASE YOU HAVE UNTIL 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE LAST DELIVERY TO CHANGE YOUR MIND ABOUT THE PRODUCTS;</p>\r\n\r\n<p>- YOUR PRODUCTS ARE FOR REGULAR DELIVERY OVER A SET PERIOD. IN THIS CASE YOU HAVE UNTIL 14 DAYS AFTER THE DAY YOU (OR SOMEONE YOU NOMINATE) RECEIVES THE FIRST DELIVERY OF THE PRODUCTS.</p>\r\n\r\n<p>ENDING THE CONTRACT WHERE WE ARE NOT AT FAULT AND THERE IS NO RIGHT TO CHANGE YOUR MIND</p>\r\n\r\n<p>EVEN IF WE ARE NOT AT FAULT AND YOU DO NOT HAVE A RIGHT TO CHANGE YOUR MIND (SEE CLAUSE 8.1), YOU CAN STILL END THE CONTRACT BEFORE IT IS COMPLETED, BUT YOU MAY HAVE TO PAY US COMPENSATION. A CONTRACT FOR PRODUCTS IS COMPLETED WHEN THE PRODUCT IS DELIVERED AND PAID FOR. IF YOU WANT TO END A CONTRACT BEFORE IT IS COMPLETED WHERE WE ARE NOT AT FAULT AND YOU HAVE NOT CHANGED YOUR MIND, JUST CONTACT US TO LET US KNOW. THE CONTRACT WILL END IMMEDIATELY AND WE WILL REFUND ANY SUMS PAID BY YOU FOR PRODUCTS NOT PROVIDED BUT WE MAY DEDUCT FROM THAT REFUND (OR, IF YOU HAVE NOT MADE AN ADVANCE PAYMENT, CHARGE YOU) REASONABLE COMPENSATION FOR THE NET COSTS WE WILL INCUR AS A RESULT OF YOUR ENDING THE CONTRACT.</p>\r\n\r\n<p><strong>HOW TO END THE CONTRACT WITH US (INCLUDING IF YOU HAVE CHANGED YOUR MIND)</strong></p>\r\n\r\n<p>TELL US YOU WANT TO END THE CONTRACT. TO END THE CONTRACT WITH US, PLEASE LET US KNOW BY DOING ONE OF THE FOLLOWING:</p>\r\n\r\n<p>- SUBMIT A REFUND REQUEST BY GOING TO THE RETURNS SECTION IN THE FOOTER OF OUR WEBSITE;</p>\r\n\r\n<p>- EMAIL US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>. PLEASE PROVIDE YOUR NAME, HOME ADDRESS, DETAILS OF THE ORDER AND YOUR EMAIL ADDRESS;</p>\r\n\r\n<p>- BY POST. WRITE TO US AT THE ADDRESS IN CLAUSE 2.1, INCLUDING DETAILS OF WHAT YOU BOUGHT, WHEN YOU ORDERED OR RECEIVED IT AND YOUR NAME AND ADDRESS.</p>\r\n\r\n<p><strong>RETURNING PRODUCTS AFTER ENDING THE CONTRACT</strong></p>\r\n\r\n<p>IF YOU END THE CONTRACT FOR ANY REASON AFTER PRODUCTS HAVE BEEN DISPATCHED TO YOU OR YOU HAVE RECEIVED THEM, YOU MUST RETURN THEM TO US. YOU MUST POST THEM BACK TO US AT THE ADDRESS IN CLAUSE 2.1.&nbsp; IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND YOU MUST RETURN THE PRODUCTS WITHIN 14 DAYS OF TELLING US YOU WISH TO END THE CONTRACT. YOU ARE RESPONSIBLE FOR THE COSTS OF RETURNING PRODUCTS TO US, UNLESS THE PRODUCTS ARE FAULTY OR MISDESCRIBED, IN WHICH CASE WE WILL PAY THE COSTS OF RETURN.</p>\r\n\r\n<p><strong>HOW WE WILL REFUND YOU</strong></p>\r\n\r\n<p>IF YOU ARE A CUSTOMER, WE WILL REFUND YOU THE PRICE YOU PAID FOR THE PRODUCTS (INCLUDING DELIVERY COSTS IF THE PRODUCTS ARE FAULTY OR MISDESCRIBED), BY THE METHOD YOU USED FOR PAYMENT. HOWEVER, WE MAY MAKE DEDUCTIONS FROM THE PRICE, AS DESCRIBED BELOW.</p>\r\n\r\n<p><strong>DEDUCTIONS FROM REFUNDS IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND</strong></p>\r\n\r\n<p>IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND:</p>\r\n\r\n<p>- WE MAY REDUCE YOUR REFUND OF THE PRICE (EXCLUDING DELIVERY COSTS) TO REFLECT ANY REDUCTION IN THE VALUE OF THE PRODUCTS, IF THIS HAS BEEN CAUSED BY YOUR HANDLING THEM IN A WAY WHICH WOULD NOT BE PERMITTED IN A SHOP. IF WE REFUND YOU THE PRICE PAID BEFORE WE ARE ABLE TO INSPECT THE PRODUCTS AND LATER DISCOVER YOU HAVE HANDLED THEM IN AN UNACCEPTABLE WAY, YOU MUST PAY US AN APPROPRIATE AMOUNT;</p>\r\n\r\n<p>- IF THE PRODUCTS ARE FAULTY OR MISDESCRIBED, THE MAXIMUM REFUND FOR DELIVERY COSTS WILL BE THE COSTS OF DELIVERY BY THE LEAST EXPENSIVE DELIVERY METHOD WE OFFER. FOR EXAMPLE, IF WE OFFER DELIVERY OF A PRODUCT WITHIN 3-5 DAYS AT ONE COST BUT YOU CHOOSE TO HAVE THE PRODUCT DELIVERED WITHIN 24 HOURS AT A HIGHER COST, THEN WE WILL ONLY REFUND WHAT YOU WOULD HAVE PAID FOR THE CHEAPER DELIVERY OPTION.</p>\r\n\r\n<p><strong>WHEN YOUR REFUND WILL BE MADE</strong></p>\r\n\r\n<p>WE WILL MAKE ANY REFUNDS DUE TO YOU AS SOON AS POSSIBLE.&nbsp; IF YOU ARE EXERCISING YOUR RIGHT TO CHANGE YOUR MIND THEN:</p>\r\n\r\n<p>- YOUR REFUND WILL BE MADE WITHIN 14 DAYS FROM THE DAY ON WHICH WE RECEIVE THE PRODUCT BACK FROM YOU OR, IF EARLIER, THE DAY ON WHICH YOU PROVIDE US WITH EVIDENCE THAT YOU HAVE SENT THE PRODUCT BACK TO US. FOR INFORMATION ABOUT HOW TO RETURN A PRODUCT TO US, SEE CLAUSE 9.2;</p>\r\n\r\n<p>- IN ALL OTHER CASES, YOUR REFUND WILL BE MADE WITHIN 14 DAYS OF YOUR TELLING US YOU HAVE CHANGED YOUR MIND.</p>\r\n\r\n<p><strong>OUR RIGHTS TO END THE CONTRACT</strong></p>\r\n\r\n<p>WE MAY END THE CONTRACT IF YOU BREAK IT</p>\r\n\r\n<p>WE MAY END THE CONTRACT FOR A PRODUCT AT ANY TIME BY WRITING TO YOU IF:</p>\r\n\r\n<p>- YOU DO NOT MAKE ANY PAYMENT TO US WHEN IT IS DUE;</p>\r\n\r\n<p>- YOU DO NOT, WITHIN A REASONABLE TIME OF US ASKING FOR IT, PROVIDE US WITH INFORMATION THAT IS NECESSARY FOR US TO PROVIDE THE PRODUCTS;</p>\r\n\r\n<p>- YOU DO NOT, WITHIN A REASONABLE TIME, ALLOW US TO DELIVER THE PRODUCTS TO YOU.</p>\r\n\r\n<p>- IF WE END THE CONTRACT IN THE SITUATIONS SET OUT IN CLAUSE 1 WE WILL REFUND ANY MONEY YOU HAVE PAID FOR PRODUCTS WE HAVE NOT PROVIDED.</p>\r\n\r\n<p><strong>IF THERE IS A PROBLEM WITH THE PRODUCT</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>HOW TO TELL US ABOUT PROBLEMS</p>\r\n\r\n<p>IF YOU HAVE ANY QUESTIONS OR COMPLAINTS ABOUT THE PRODUCT, PLEASE CONTACT US. YOU CAN EMAIL US AT&nbsp;<a href=\"mailto:info@yelirworld.com\">INFO@YELIRWORLD.COM</a>&nbsp;OR WRITE TO US AT THE ADDRESS PROVIDED IN CLAUSE 2.1.</p>\r\n\r\n<p><strong>PRICE AND PAYMENTS</strong></p>\r\n\r\n<p><strong>WHERE TO FIND THE PRICE FOR THE&nbsp; PRODUCT</strong></p>\r\n\r\n<p>THE PRICE OF THE PRODUCT (WHICH INCLUDES VAT) WILL BE THE PRICE INDICATED ON THE ORDER PAGES WHEN YOU PLACED YOUR ORDER. WE TAKE ALL REASONABLE CARE TO ENSURE THAT THE PRICE OF THE PRODUCT ADVISED TO YOU IS CORRECT. HOWEVER PLEASE SEE CLAUSE 12.3 FOR WHAT HAPPENS IF WE DISCOVER AN ERROR IN THE PRICE OF THE PRODUCT YOU ORDER.</p>\r\n\r\n<p><strong>WE WILL PASS ON CHANGES IN THE RATE OF VAT</strong></p>\r\n\r\n<p>IF THE RATE OF VAT CHANGES BETWEEN YOUR ORDER DATE AND THE DATE WE SUPPLY THE PRODUCT, WE WILL ADJUST THE RATE OF VAT THAT YOU PAY, UNLESS YOU HAVE ALREADY PAID FOR THE PRODUCT IN FULL BEFORE THE CHANGE IN THE RATE OF VAT TAKES EFFECT.</p>\r\n\r\n<p><strong>WHAT HAPPENS IF WE GOT THE PRICE WRONG</strong></p>\r\n\r\n<p>IT IS ALWAYS POSSIBLE THAT, DESPITE OUR BEST EFFORTS, SOME OF THE PRODUCTS WE SELL MAY BE INCORRECTLY PRICED. WE WILL NORMALLY CHECK PRICES BEFORE ACCEPTING YOUR ORDER SO THAT, WHERE THE PRODUCT&#39;S CORRECT PRICE AT YOUR ORDER DATE IS LESS THAN OUR STATED PRICE AT YOUR ORDER DATE, WE WILL CHARGE THE LOWER AMOUNT. IF THE PRODUCT&#39;S CORRECT PRICE AT YOUR ORDER DATE IS HIGHER THAN THE PRICE STATED TO YOU, WE WILL CONTACT YOU FOR YOUR INSTRUCTIONS BEFORE WE ACCEPT YOUR ORDER.&nbsp; IF WE ACCEPT AND PROCESS YOUR ORDER WHERE A PRICING ERROR IS OBVIOUS AND UNMISTAKEABLE AND COULD REASONABLY HAVE BEEN RECOGNISED BY YOU AS A MISPRICING, WE MAY END THE CONTRACT, REFUND YOU ANY SUMS YOU HAVE PAID AND REQUIRE THE RETURN OF ANY PRODUCTS PROVIDED TO YOU.</p>\r\n\r\n<p><strong>WHEN YOU MUST PAY AND HOW YOU MUST PAY</strong></p>\r\n\r\n<p>WE ACCEPT PAYMENT FROM ALL MAJOR CREDIT AND DEBIT CARDS, APPLE PAY AND PAYPAL. YOU MUST PAY FOR THE PRODUCTS BEFORE WE DISPATCH THEM.</p>\r\n\r\n<p><strong>OUR RESPONSIBILITY FOR LOSS OR DAMAGE SUFFERED BY YOU</strong></p>\r\n\r\n<p>WE ARE RESPONSIBLE TO YOU FOR FORESEEABLE LOSS AND DAMAGE CAUSED BY US. IF WE FAIL TO COMPLY WITH THESE TERMS, WE ARE RESPONSIBLE FOR LOSS OR DAMAGE YOU SUFFER THAT IS A FORESEEABLE RESULT OF OUR BREAKING THIS CONTRACT OR OUR FAILING TO USE REASONABLE CARE AND SKILL, BUT WE ARE NOT RESPONSIBLE FOR ANY LOSS OR DAMAGE THAT IS NOT FORESEEABLE. LOSS OR DAMAGE IS FORESEEABLE IF EITHER IT IS OBVIOUS THAT IT WILL HAPPEN OR IF, AT THE TIME THE CONTRACT WAS MADE, BOTH WE AND YOU KNEW IT MIGHT HAPPEN, FOR EXAMPLE, IF YOU DISCUSSED IT WITH US DURING THE SALES PROCESS.</p>\r\n\r\n<p>WE DO NOT EXCLUDE OR LIMIT IN ANY WAY OUR LIABILITY TO YOU WHERE IT WOULD BE UNLAWFUL TO DO SO. THIS INCLUDES LIABILITY FOR DEATH OR PERSONAL INJURY CAUSED BY OUR NEGLIGENCE OR THE NEGLIGENCE OF OUR EMPLOYEES, AGENTS OR SUBCONTRACTORS; FOR FRAUD OR FRAUDULENT MISREPRESENTATION; FOR BREACH OF YOUR LEGAL RIGHTS IN RELATION TO THE PRODUCTS.</p>\r\n\r\n<p><strong>HOW WE MAY USE YOUR PERSONAL INFORMATION</strong></p>\r\n\r\n<ol>\r\n</ol>\r\n\r\n<p>HOW WE MAY USE YOUR PERSONAL INFORMATION.&nbsp;WE WILL ONLY USE YOUR PERSONAL INFORMATION AS SET OUT IN OUR PRIVACY POLICY.</p>\r\n\r\n<p><strong>OTHER IMPORTANT TERMS</strong></p>\r\n\r\n<p>WE MAY TRANSFER THIS AGREEMENT TO SOMEONE ELSE</p>\r\n\r\n<p>WE MAY TRANSFER OUR RIGHTS AND OBLIGATIONS UNDER THESE TERMS TO ANOTHER ORGANISATION.</p>\r\n\r\n<p>YOU NEED OUR CONSENT TO TRANSFER YOUR RIGHTS TO SOMEONE ELSE</p>\r\n\r\n<p>YOU MAY ONLY TRANSFER YOUR RIGHTS OR YOUR OBLIGATIONS UNDER THESE TERMS TO ANOTHER PERSON IF WE AGREE TO THIS IN WRITING.</p>\r\n\r\n<p>NOBODY ELSE HAS ANY RIGHTS UNDER THIS CONTRACT</p>\r\n\r\n<p>THIS CONTRACT IS BETWEEN YOU AND US. NO OTHER PERSON SHALL HAVE ANY RIGHTS TO ENFORCE ANY OF ITS TERMS.</p>\r\n\r\n<p>IF A COURT FINDS PART OF THIS CONTRACT ILLEGAL, THE REST WILL CONTINUE IN FORCE</p>\r\n\r\n<p>EACH OF THE PARAGRAPHS OF THESE TERMS OPERATES SEPARATELY. IF ANY COURT OR RELEVANT AUTHORITY DECIDES THAT ANY OF THEM ARE UNLAWFUL, THE REMAINING PARAGRAPHS WILL REMAIN IN FULL FORCE AND EFFECT.</p>\r\n\r\n<p>EVEN IF WE DELAY IN ENFORCING THIS CONTRACT, WE CAN STILL ENFORCE IT LATER</p>\r\n\r\n<p>IF WE DO NOT INSIST IMMEDIATELY THAT YOU DO ANYTHING YOU ARE REQUIRED TO DO UNDER THESE TERMS, OR IF WE DELAY IN TAKING STEPS AGAINST YOU IN RESPECT OF YOUR BREAKING THIS CONTRACT, THAT WILL NOT MEAN THAT YOU DO NOT HAVE TO DO THOSE THINGS AND IT WILL NOT PREVENT US TAKING STEPS AGAINST YOU AT A LATER DATE. FOR EXAMPLE, IF YOU MISS A PAYMENT AND WE DO NOT CHASE YOU BUT WE CONTINUE TO PROVIDE THE PRODUCTS, WE CAN STILL REQUIRE YOU TO MAKE THE PAYMENT AT A LATER DATE.</p>\r\n\r\n<p>WHICH LAWS APPLY TO THIS CONTRACT AND WHERE YOU MAY BRING LEGAL PROCEEDINGS.</p>\r\n\r\n<p>THESE TERMS ARE GOVERNED BY ENGLISH LAW AND YOU CAN BRING LEGAL PROCEEDINGS IN RESPECT OF THE PRODUCTS IN THE ENGLISH COURTS.</p>', 'default', NULL, 'terms-of-service', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 01:17:46', '2022-05-11 01:17:46'),
(47, 'DPD Giao hàng trong ngày làm việc tiếp theo', NULL, '', 'default', NULL, 'dpd-giao-hang-trong-ngay-lam-viec-tiep-theo', '1', NULL, '', 'slider-shipping-policy', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-10 12:40:17'),
(48, 'DPD Next working day delivery', NULL, '', 'default', NULL, 'dpd-next-working-day-delivery', '1', NULL, '', 'slider-shipping-policy', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-10 12:40:17'),
(49, 'SHOP THIS LOOK', NULL, NULL, 'default', NULL, 'shop-this-look', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 'shop-isolate', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:07:08'),
(50, 'SHOP THIS LOOK', NULL, NULL, 'default', NULL, 'shop-this-look-50', '1', NULL, '/kcfinder-master/upload/images/Black%20paris/278713727_151742217340808_8602826477670170144_n.jpg', 'shop-isolate', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:07:08');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(86, 'PRIVACY POLICY', NULL, '<p><strong>NTRODUCTION</strong></p>\r\n\r\n<p>YELIRWORLD RESPECTS YOUR PRIVACY AND IS COMMITTED TO PROTECTING YOUR PERSONAL DATA. THIS PRIVACY POLICY WILL TELL YOU HOW WE LOOK AFTER YOUR PERSONAL DATA WHEN YOU VISIT OUR WEBSITE AND INFORM YOU OF YOUR PRIVACY RIGHTS AND HOW THE LAW PROTECTS YOU.</p>\r\n\r\n<p>PLEASE USE THE GLOSSARY AT THE END OF THIS PRIVACY POLICY TO UNDERSTAND THE MEANING OF SOME OF THE TERMS USED IN IT.</p>\r\n\r\n<p>OUR COOKIES POLICY IS SET OUT BELOW, AT THE END OF THIS PRIVACY POLICY.</p>\r\n\r\n<p><strong>1. IMPORTANT INFORMATION AND WHO WE ARE</strong></p>\r\n\r\n<p><strong>PURPOSE OF THIS PRIVACY POLICY</strong></p>\r\n\r\n<p>THIS PRIVACY POLICY AIMS TO GIVE YOU INFORMATION ON HOW YELIR WORLD COLLECTS AND PROCESSES YOUR PERSONAL DATA THROUGH YOUR USE OF THIS WEBSITE, INCLUDING ANY DATA YOU MAY PROVIDE THROUGH THE WEBSITE WHEN YOU SIGN UP TO RECEIVE OUR MARKETING MATERIAL, PURCHASE A PRODUCT OR SERVICE OR TAKE PART IN A COMPETITION.</p>\r\n\r\n<p>THIS WEBSITE IS NOT INTENDED FOR CHILDREN AND WE DO NOT KNOWINGLY COLLECT DATA RELATING TO CHILDREN.</p>\r\n\r\n<p>IT IS IMPORTANT THAT YOU READ THIS PRIVACY POLICY TOGETHER WITH ANY OTHER PRIVACY NOTICE ON OUR WEBSITE FROM TIME TO TIME SO THAT YOU ARE FULLY AWARE OF HOW AND WHY WE ARE USING YOUR DATA.</p>\r\n\r\n<p><strong>CONTROLLER</strong></p>\r\n\r\n<p>YELIR WORLD IS THE CONTROLLER AND RESPONSIBLE FOR YOUR PERSONAL DATA (COLLECTIVELY REFERRED TO AS, &ldquo;WE&rdquo;, &ldquo;US&rdquo; OR &ldquo;OUR&rdquo; IN THIS PRIVACY POLICY).</p>\r\n\r\n<p><strong>CONTACT DETAILS</strong></p>\r\n\r\n<p>OUR FULL DETAILS ARE:</p>\r\n\r\n<p>FULL NAME OF LEGAL ENTITY: YELIR WORLD LTD, A LIMITED COMPANY WITH REGISTERED NUMBER 1105 9200. YELIR WORLD LTD IS REGISTERED, AND OPERATES, IN THE UNITED KINGDOM.</p>\r\n\r\n<p>POSTAL ADDRESS: UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM CW2 8UY</p>\r\n\r\n<p>YOU CAN ALSO CONTACT US VIA EMAIL:&nbsp;<em>INFO@YELIRWORLD.COM</em></p>\r\n\r\n<p>YOU HAVE THE RIGHT TO MAKE A COMPLAINT AT ANY TIME TO THE INFORMATION COMMISSIONER&rsquo;S OFFICE (ICO), THE UK SUPERVISORY AUTHORITY FOR DATA PROTECTION ISSUES (HTTPS://ICO.ORG.UK). IN THE UK, PLEASE READ: HTTPS://ICO.ORG.UK/FOR-THE-PUBLIC/RAISING-CONCERNS/ FOR DETAILS OF HOW TO DO THIS. WE WOULD, HOWEVER, APPRECIATE THE CHANCE TO DEAL WITH YOUR CONCERNS BEFORE YOU APPROACH THE ICO SO PLEASE CONTACT US IN THE FIRST INSTANCE.</p>\r\n\r\n<p><strong>CHANGES TO THE PRIVACY POLICY AND YOUR DUTY TO INFORM US OF CHANGES</strong></p>\r\n\r\n<p>WE MAY NEED TO UPDATE THIS POLICY AT ANY TIME AND WITHOUT NOTICE AND WHERE WE DO THIS WE WILL NOTIFY YOU BY INCLUDING POP UP BOXES ON THE WEBSITE AND/OR EMAILING OUR CUSTOMERS. THIS POLICY WAS LAST UPDATED ON 25 MAY 2018.</p>\r\n\r\n<p>IT IS IMPORTANT THAT THE PERSONAL DATA WE HOLD ABOUT YOU IS ACCURATE AND UP TO DATE. PLEASE KEEP US INFORMED IF YOUR PERSONAL DATA CHANGES DURING YOUR RELATIONSHIP WITH US AND PERIODICALLY REVIEW YOUR ACCOUNT SETTINGS ON OUR WEBSITE.</p>\r\n\r\n<p><strong>THIRD-PARTY LINKS</strong></p>\r\n\r\n<p>THIS WEBSITE MAY INCLUDE LINKS TO THIRD-PARTY WEBSITES, PLUG-INS AND APPLICATIONS. CLICKING ON THOSE LINKS OR ENABLING THOSE CONNECTIONS MAY ALLOW THIRD PARTIES TO COLLECT OR SHARE DATA ABOUT YOU. WE DO NOT CONTROL THESE THIRD-PARTY WEBSITES AND ARE NOT RESPONSIBLE FOR THEIR PRIVACY STATEMENTS. WHEN YOU LEAVE OUR WEBSITE, WE ENCOURAGE YOU TO READ THE PRIVACY POLICY OF EVERY WEBSITE YOU VISIT.</p>\r\n\r\n<p><strong>2. THE DATA WE COLLECT ABOUT YOU</strong></p>\r\n\r\n<p>PERSONAL DATA, OR PERSONAL INFORMATION, MEANS ANY INFORMATION ABOUT AN INDIVIDUAL FROM WHICH THAT PERSON CAN BE IDENTIFIED. IT DOES NOT INCLUDE DATA WHERE THE IDENTITY HAS BEEN REMOVED (ANONYMOUS DATA).</p>\r\n\r\n<p>WE MAY COLLECT, USE, STORE AND TRANSFER DIFFERENT KINDS OF PERSONAL DATA ABOUT YOU WHICH WE HAVE GROUPED TOGETHER FOLLOWS:</p>\r\n\r\n<p>&middot; IDENTITY DATA INCLUDES FIRST NAME AND LAST NAME.</p>\r\n\r\n<p>&middot; CONTACT DATA MEANS THE DATA WE USE TO CONTACT YOU INCLUDING YOUR BILLING ADDRESS, DELIVERY ADDRESS, EMAIL ADDRESS AND TELEPHONE NUMBER.</p>\r\n\r\n<p>&middot; FINANCIAL DATA MEANS THE DATA WE USE TO PROCESS YOUR PAYMENTS FOR YOUR ORDERS INCLUDING YOUR PAYMENT CARD DETAILS. WE DO NOT STORE OR PROCESS YOUR CARD DETAILS OURSELVES, THEY ARE PROCESSED AND STORED VIA ONE OF OUR CONTRACTED THIRD PARTY SERVICE PROVIDERS. WE ENCRYPT YOUR PAYMENT CARD DETAILS IN YOUR BROWSER AND SECURELY TRANSFER THIS DATA TO OUR RELEVANT THIRD PARTY PAYMENT PROVIDER TO PROCESS A PAYMENT.</p>\r\n\r\n<p>&middot; TRANSACTION DATA MEANS DETAILS ABOUT TRANSACTIONS YOU HAVE MADE ON OUR WEBSITE INCLUDING THE PAYMENTS TO AND FROM YOU ALONG WITH OTHER DETAILS OF PRODUCTS AND SERVICES YOU HAVE PURCHASED FROM US.</p>\r\n\r\n<p>&middot; TECHNICAL DATA MEANS DETAILS ABOUT THE DEVICE(S) YOU USE TO ACCESS OUR WEBSITE INCLUDING YOUR INTERNET PROTOCOL (IP) ADDRESS, BROWSER TYPE AND VERSION, LOCATION, BROWSER PLUG-IN TYPES AND VERSIONS, OPERATING SYSTEM AND PLATFORM AND OTHER TECHNOLOGY ON THE DEVICES YOU USE TO ACCESS THIS WEBSITE.</p>\r\n\r\n<p>&middot; PROFILE DATA INCLUDESYOUR USERNAME (EMAIL ADDRESS) AND PASSWORD, YOUR LOGIN DATA, PURCHASES OR ORDERS MADE BY YOU, YOUR INTERESTS, PREFERENCES, FEEDBACK AND SURVEY RESPONSES.</p>\r\n\r\n<p>&middot; USAGE DATA INCLUDES INFORMATION ABOUT HOW YOU USE OUR WEBSITE, PRODUCTS AND SERVICES. THIS INCLUDES YOUR BROWSING PATTERNS AND INFORMATION SUCH AS HOW LONG YOU MIGHT SPEND ON ONE OF OUR WEBPAGES AND WHAT YOU LOOK AT AND FOR ON OUR WEBSITE, THE CLICK STREAM TO AND FROM OUR WEBSITE, PAGE RESPONSE TIMES AND PAGE INTERACTION INFORMATION SUCH AS SCROLLING, CLICKS AND MOUSEOVERS.</p>\r\n\r\n<p>&middot; MARKETING AND COMMUNICATIONS DATA INCLUDES YOUR PREFERENCES IN RECEIVING MARKETING FROM US AND YOUR COMMUNICATION PREFERENCES.</p>\r\n\r\n<p>WE ALSO COLLECT, USE AND SHARE AGGREGATED AND/OR ANONYMISED DATA (&ldquo;AGGREGATED DATA&rdquo;) SUCH AS STATISTICAL OR DEMOGRAPHIC DATA FOR ANY PURPOSE. AGGREGATED DATA MAY BE DERIVED FROM YOUR PERSONAL DATA BUT IS NOT CONSIDERED PERSONAL DATA IN LAW AS THIS DATA DOES NOT DIRECTLY OR INDIRECTLY REVEAL YOUR IDENTITY. FOR EXAMPLE, WE MAY AGGREGATE YOUR USAGE DATA TO CALCULATE THE PERCENTAGE OF USERS ACCESSING A SPECIFIC WEBSITE FEATURE. HOWEVER, IF WE COMBINE OR CONNECT AGGREGATED DATA WITH YOUR PERSONAL DATA SO THAT IT CAN DIRECTLY OR INDIRECTLY IDENTIFY YOU, WE TREAT THE COMBINED DATA AS PERSONAL DATA WHICH WILL BE USED IN ACCORDANCE WITH THIS PRIVACY POLICY.</p>\r\n\r\n<p><strong>IF YOU FAIL TO PROVIDE PERSONAL DATA</strong></p>\r\n\r\n<p>WHERE WE NEED TO COLLECT PERSONAL DATA BY LAW, OR UNDER THE TERMS OF A CONTRACT WE HAVE WITH YOU AND YOU FAIL TO PROVIDE THAT DATA WHEN REQUESTED, WE MAY NOT BE ABLE TO PERFORM THE CONTRACT WE HAVE OR ARE TRYING TO ENTER INTO WITH YOU (FOR EXAMPLE, WHERE YOU DO NOT PROVIDE SUITABLE DELIVERY INSTRUCTIONS TO PROVIDE YOU WITH GOODS OR SERVICES). IN THIS CASE, WE MAY HAVE TO CANCEL A PRODUCT OR SERVICE YOU HAVE WITH US BUT WE WILL NOTIFY YOU IF THIS IS THE CASE AT THE TIME.</p>\r\n\r\n<p><strong>3. HOW IS YOUR PERSONAL DATA COLLECTED?</strong></p>\r\n\r\n<p>WE USE DIFFERENT METHODS TO COLLECT DATA FROM AND ABOUT YOU INCLUDING THROUGH:</p>\r\n\r\n<p>&middot; DIRECT INTERACTIONS. YOU MAY GIVE US YOUR IDENTITY DATA, CONTACT DATA, TRANSACTION DATA, PROFILE DATA, FINANCIAL DATA AND MARKETING AND COMMUNICATIONS DATA BY USING OUR WEBSITE, FILLING IN FORMS OR BY CORRESPONDING WITH US BY POST, PHONE, EMAIL OR OTHERWISE. THIS INCLUDES PERSONAL DATA YOU PROVIDE WHEN YOU</p>\r\n\r\n<p>&middot; PURCHASE A PRODUCT OR SERVICE (INCLUDING GIFT CARDS) THROUGH OUR WEBSITE;</p>\r\n\r\n<p>&middot; CREATE AN ACCOUNT ON OUR WEBSITE;</p>\r\n\r\n<p>&middot; REQUEST MARKETING TO BE SENT TO YOU;</p>\r\n\r\n<p>&middot; ENTER A COMPETITION; OR</p>\r\n\r\n<p>&middot; GIVE US SOME FEEDBACK.</p>\r\n\r\n<p>&middot; AUTOMATED TECHNOLOGIES OR INTERACTIONS. AS YOU INTERACT WITH OUR WEBSITE, WE MAY AUTOMATICALLY COLLECT USAGE DATA AND TECHNICAL DATA ABOUT YOUR EQUIPMENT, BROWSING ACTIONS AND PATTERNS. WE COLLECT THIS PERSONAL DATA BY USING COOKIES, SERVER LOGS AND OTHER SIMILAR TECHNOLOGIES. PLEASE SEE OUR COOKIES POLICY FOR FURTHER DETAILS.</p>\r\n\r\n<p><strong>4. THIRD PARTY SOURCES OF DATA/DATA SHARING:</strong></p>\r\n\r\n<p>WE ALSO COLLECT FROM AND SHARE DATA WITH THE FOLLOWING PROVIDERS:</p>\r\n\r\n<p>&middot; ESSENTIAL SERVICE PROVIDERS: SOMETIMES, OTHER BUSINESSES GIVE US DATA ABOUT YOU WHICH WE MAY NEED FOR OUR LEGITIMATE INTERESTS OF CONDUCTING BUSINESS WITH YOU AND ON OCCASION THEY ARE NECESSARY TO PERFORM OUR CONTRACT WITH YOU. IT USUALLY COMPRISES FINANCIAL DATA OR TRANSACTION DATA. THIS HAPPENS WHEN WE LINK THROUGH TO THIRD PARTY PAYMENT PROVIDERS. THEY TELL US THAT YOU HAVE PAID FOR YOUR PRODUCTS AND, WHERE RELEVANT AND/OR NECESSARY THEY WILL PROVIDE US WITH YOUR CONTACT DATA AND TRANSACTION DATA. WE ALSO MIGHT ENGAGE THIRD PARTY CONTRACTORS TO PROVIDE US WITH TECHNICAL OR DELIVERY SERVICES THAT ARE RELATED TO YOUR ACCOUNT WITH US.</p>\r\n\r\n<p>&middot; PROFESSIONAL ADVISERS AND INVESTORS: WE MAY ALSO SHARE YOUR DATA WITH PROFESSIONAL ADVISERS SUCH AS OUR LAWYERS AND INSURERS TO MANAGE RISKS AND LEGAL CLAIMS, AND/OR AS PART OF OUR RELATIONSHIP AND OBLIGATIONS TO OUR INVESTOR ORGANISATIONS. THIS IS IN OUR LEGITIMATE INTERESTS.</p>\r\n\r\n<p>&middot; GROUP: IT IS POSSIBLE WE COULD SELL OUR BUSINESS TO A THIRD PARTY OR RE-ORGANISE OUR BUSINESS OR BECOME INSOLVENT. IN THAT SCENARIO, OUR DATABASE OF CUSTOMERS IS ONE OF THE BIGGEST PARTS OF THAT BUSINESS AND SO WE WOULD NEED TO SHARE IT WITH THE THIRD-PARTY BUYER AND THEIR ADVISERS. THIS IS IN THE LEGITIMATE INTERESTS OF SELLING OUR BUSINESS. WE MAY ALSO EXPAND OUR GROUP OF COMPANIES AND IN THIS SCENARIO WE MAY SHARE YOUR DATA WITHIN OUR GROUP IN ORDER TO IMPROVE OUR PRODUCTS AND SERVICES AND BECAUSE OF SOME OF OUR INTERNAL SUPPORT SERVICES MAY BE SHARED ACROSS THE GROUP. THIS IS IN OUR LEGITIMATE INTERESTS OF COST EFFICIENCY AND GROWING OUR BUSINESS. WHERE THIS OCCURS, WE WILL POST A LINK TO ALL GROUP COMPANIES AND THEIR LOCATIONS IN THIS PRIVACY POLICY AND THEY WILL USE IT IN THE WAYS SET OUT IN THIS POLICY.</p>\r\n\r\n<p>&middot; LAW ENFORCEMENT/LEGAL COMPLIANCE: WE WILL COOPERATE WITH ALL THIRD PARTIES TO ENFORCE THEIR INTELLECTUAL PROPERTY OR OTHER RIGHTS. WE WILL ALSO COOPERATE WITH LAW ENFORCEMENT REQUESTS FROM WITHIN OR OUTSIDE YOUR COUNTRY OF RESIDENCE. THIS MAY INCLUDE DISCLOSING YOUR PERSONAL INFORMATION TO GOVERNMENT OR LAW ENFORCEMENT AGENCIES, OR PRIVATE PARTIES, WHEN WE HAVE A GOOD FAITH BELIEF THAT DISCLOSURE IS REQUIRED BY LAW OR WHEN WE, IN OUR DISCRETION, BELIEVE THAT DISCLOSURE IS NECESSARY TO PROTECT OUR LEGAL RIGHTS, OR THOSE OF THIRD PARTIES AND/OR TO COMPLY WITH A JUDICIAL PROCEEDING, COURT ORDER, FRAUD REDUCTION OR LEGAL PROCESS SERVED ON US. IN SUCH CASES, WE MAY RAISE OR WAIVE ANY LEGAL OBJECTION OR RIGHT AVAILABLE TO US. THESE USES OF YOUR DATA ARE IN OUR LEGITIMATE INTERESTS OF PROTECTING OUR BUSINESS SECURITY. WE MAY ALSO USE YOUR DATA AND SHARE IT WITH THE RECIPIENTS LISTED IN THIS PRIVACY POLICY FOR THE PURPOSE OF COMPLYING WITH OUR LEGAL OBLIGATIONS.</p>\r\n\r\n<p>THE LAWFUL BASES FOR SHARING AND PROCESSING THIS DATA IS SET OUT IN THE TABLE BELOW AND PLEASE REFER TO THE EXTERNAL THIRD PARTIES LISTED IN THE GLOSSARY FOR FURTHER INFORMATION.</p>\r\n\r\n<p><strong>5. HOW WE USE YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE WILL ONLY USE YOUR PERSONAL DATA WHEN THE LAW ALLOWS US TO. MOST COMMONLY, WE WILL USE YOUR PERSONAL DATA IN THE FOLLOWING CIRCUMSTANCES:</p>\r\n\r\n<p>&middot; WHERE WE NEED TO PERFORM THE CONTRACT WE ARE ABOUT TO ENTER INTO OR HAVE ENTERED INTO WITH YOU.</p>\r\n\r\n<p>&middot; WHERE IT IS NECESSARY FOR OUR LEGITIMATE INTERESTS (OR THOSE OF A THIRD PARTY) AND YOUR INTERESTS AND FUNDAMENTAL RIGHTS DO NOT OVERRIDE THOSE INTERESTS.</p>\r\n\r\n<p>&middot; WHERE WE NEED TO COMPLY WITH A LEGAL OR REGULATORY OBLIGATION.</p>\r\n\r\n<p>GENERALLY WE DO NOT RELY ON CONSENT AS A LEGAL BASIS FOR PROCESSING YOUR PERSONAL DATA OTHER THAN IN RELATION TO SENDING THIRD PARTY DIRECT MARKETING COMMUNICATIONS TO YOU VIA EMAIL OR TEXT MESSAGE. YOU HAVE THE RIGHT TO WITHDRAW CONSENT TO MARKETING AT ANY TIME BY SELECTING &lsquo;UNSUBSCRIBE&rsquo; AT THE BOTTOM OF OUR MARKETING EMAILS.</p>\r\n\r\n<p><strong>PURPOSES FOR WHICH WE WILL USE YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE HAVE SET OUT BELOW, IN A TABLE FORMAT, A DESCRIPTION OF ALL THE WAYS WE MAY USE YOUR PERSONAL DATA, AND WHICH OF THE LEGAL BASES WE RELY ON TO DO SO. WE HAVE ALSO IDENTIFIED WHAT OUR LEGITIMATE INTERESTS ARE WHERE APPROPRIATE.</p>\r\n\r\n<p>PURPOSE/ACTIVITY<br />\r\nTYPE OF DATA<br />\r\nLAWFUL BASIS FOR PROCESSING INCLUDING BASIS OF LEGITIMATE INTEREST<br />\r\nTO REGISTER YOU AS A NEW CUSTOMER<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU.<br />\r\nTO PROCESS AND DELIVER YOUR ORDER, INCLUDING:<br />\r\n1. MANAGING PAYMENTS, FEES AND CHARGES; AND</p>\r\n\r\n<p>2. MANAGING YOUR QUERIES THROUGH OUR CUSTOMER SERVICE TEAM &ndash; THIS MAY INCLUDE RECORDING CALLS TO OUR TEAMS.</p>\r\n\r\n<p>(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION<br />\r\n(E) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU. WE MAY ALSO USE SOME OF THE DATA RELATED TO YOUR QUERIES FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR CUSTOMER SERVICE QUALITY STANDARDS ARE MET.</p>\r\n\r\n<p>&nbsp;<br />\r\nTO COLLECT AND RECOVER MONEY OWED TO US IN RESPECT OF YOUR ORDER<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO RECOVER DEBTS DUE TO US).<br />\r\nTO CARRY OUT FRAUD ASSESSMENTS<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION<br />\r\n(E) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS OF ENSURING PAYMENTS ARE NOT FRAUDULENT<br />\r\nTO PROCESS YOUR PURCHASE OF A GIFT VOUCHER FROM US<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) FINANCIAL<br />\r\n(D) TRANSACTION</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU.<br />\r\nTO NOTIFY YOU IN RELATION TO OUR LEGAL OBLIGATIONS AND DOCUMENTS, INCLUDING CHANGES TO OUR TERMS OR PRIVACY POLICY<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR CUSTOMERS ARE UPDATED ON THESE CHANGES.<br />\r\nTO HELP US IMPROVE OUR OFFERING TO OUR CUSTOMERS, INCLUDING ASKING YOU TO LEAVE A REVIEW OR TAKE A SURVEY, OR PROVIDE CUSTOMER INSIGHTS<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO STUDY HOW CUSTOMERS USE OUR PRODUCTS/SERVICES, TO IMPROVE OUR OFFERING TO OUR CUSTOMERS, TO DEVELOP THEM AND GROW OUR BUSINESS).<br />\r\nTO ENABLE YOU TO PARTAKE IN A PRIZE DRAW OR COMPETITION<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) USAGE<br />\r\n(E) MARKETING AND COMMUNICATIONS</p>\r\n\r\n<p>&nbsp;<br />\r\nPERFORMANCE OF A CONTRACT WITH YOU TO FULFIL THE PROMOTION AND RUN THE COMPETITION/PRIZE DRAW. WE MAY ALSO SUBSEQUENTLY USE YOUR ENTRIES FOR THE LEGITIMATE INTERESTS OF UNDERSTANDING OUR CUSTOMER BASE MORE EFFECTIVELY.<br />\r\nTO ADMINISTER AND PROTECT OUR BUSINESS AND THIS WEBSITE (INCLUDING TROUBLESHOOTING, DATA ANALYSIS, TESTING, SYSTEM MAINTENANCE, SUPPORT, REPORTING AND HOSTING OF DATA)<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (FOR RUNNING OUR BUSINESS, PROVISION OF ADMINISTRATION AND IT SERVICES, NETWORK SECURITY, TO PREVENT FRAUD AND IN THE CONTEXT OF A BUSINESS REORGANISATION OR GROUP RESTRUCTURING EXERCISE).<br />\r\nTO DELIVER RELEVANT WEBSITE CONTENT, ADVERTISEMENTS AND OTHER MARKETING MATERIAL TO YOU AND MEASURE OR UNDERSTAND THE EFFECTIVENESS OF THE ADVERTISING WE SERVE TO YOU<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) PROFILE<br />\r\n(D) USAGE<br />\r\n(E) MARKETING AND COMMUNICATIONS<br />\r\n(F) TECHNICAL</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO STUDY HOW CUSTOMERS USE OUR PRODUCTS/SERVICES, TO DEVELOP THEM, TO GROW OUR BUSINESS TO INFORM OUR MARKETING STRATEGY AND TO IMPROVE OUR OFFERING TO YOU). PLEASE NOTE THAT WHERE COOKIES ARE USED FOR THIS PURPOSE, THIS IS COVERED SEPARATELY BY OUR COOKIES POLICY.<br />\r\nTO USE DATA ANALYTICS TO IMPROVE OUR WEBSITE, PRODUCTS/SERVICES, MARKETING, CUSTOMER RELATIONSHIPS AND EXPERIENCES<br />\r\n(A) TECHNICAL<br />\r\n(B) USAGE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO DEFINE TYPES OF CUSTOMERS FOR OUR PRODUCTS AND SERVICES, TO KEEP OUR WEBSITE UPDATED AND RELEVANT, TO DEVELOP OUR BUSINESS AND TO INFORM OUR MARKETING STRATEGY). PLEASE NOTE THAT WHERE COOKIES ARE USED FOR THIS PURPOSE, THIS IS COVERED BY OUR COOKIES POLICY.<br />\r\nTO MAKE SUGGESTIONS AND RECOMMENDATIONS TO YOU ABOUT GOODS OR SERVICES THAT MAY BE OF INTEREST TO YOU<br />\r\n(A) IDENTITY<br />\r\n(B) CONTACT<br />\r\n(C) TECHNICAL<br />\r\n(D) USAGE<br />\r\n(E) PROFILE</p>\r\n\r\n<p>&nbsp;<br />\r\nNECESSARY FOR OUR LEGITIMATE INTERESTS (TO DEVELOP OUR PRODUCTS/SERVICES AND GROW OUR BUSINESS, AND TO IMPROVE OUR OFFERING TO YOU).<br />\r\nWE DO NOT CONDUCT ANY AUTOMATED DECISION MAKING. WE MAY ON OCCASION PROFILE OUR CUSTOMERS FOR THE PURPOSES OF TARGETING MARKETING AT THEM AND WHERE THIS IS DONE, THIS IS UNDERTAKEN FOR OUR LEGITIMATE INTERESTS OF ENSURING OUR MARKETING IS RELEVANT TO ITS AUDIENCE. FOR EXAMPLE, WE MAY CLASSIFY AN APPROPRIATE AUDIENCE FOR A PROMOTION BY WHAT PRODUCTS ON OUR WEBSITE THEY HAVE PREVIOUSLY LOOKED AT OR EXPRESSED AN INTEREST IN. WE DO NOT CONDUCT ANY ONLINE BEHAVIOURAL TRACKING.</p>\r\n\r\n<p><strong>MARKETING</strong></p>\r\n\r\n<p>WE MAY USE YOUR IDENTITY, CONTACT, TECHNICAL, USAGE AND PROFILE DATA TO FORM A VIEW ON WHAT WE THINK YOU MAY WANT OR NEED, OR WHAT MAY BE OF INTEREST TO YOU. THIS IS HOW WE DECIDE WHICH PRODUCTS, SERVICES AND OFFERS MAY BE RELEVANT FOR YOU. WE ONLY USE THE DATA YOU PROVIDE TO US DIRECTLY FOR THIS PURPOSE ALONG WITH THE AGGREGATED DATA PROVIDED TO US BY OUR ANALYTICS PARTNERS AND WE DO NOT TRACK WHAT OTHER WEBSITES YOU MAY VISIT AFTER VISITING OUR SITE, THOUGH IN COMMON WITH MOST WEBSITES, WE MAY REGISTER THE SITE WHICH REFERRED YOU TO OUR SITE (E.G. A SEARCH ENGINE).</p>\r\n\r\n<p>WE STRIVE TO PROVIDE YOU WITH CHOICES REGARDING CERTAIN PERSONAL DATA USES, PARTICULARLY AROUND MARKETING AND ADVERTISING.</p>\r\n\r\n<p>WE GENERALLY ONLY SEND ELECTRONIC MARKETING - SUCH AS EMAIL MARKETING - TO PEOPLE WHO HAVE PREVIOUSLY BOUGHT SIMILAR PRODUCTS FROM US AND THIS IS IN OUR LEGITIMATE INTERESTS. WE WILL ALWAYS OFFER A WAY OUT OF RECEIVING THIS MARKETING WHEN YOU FIRST PURCHASE OUR PRODUCTS AND IN EVERY MARKETING COMMUNICATION AFTERWARDS. WE MAY ON OCCASION SEND OUT POSTAL MARKETING FOR THE PURPOSE OF GROWING OUR SALES WHICH IS IN OUR LEGITIMATE INTERESTS AND IN THIS SCENARIO WE WILL RELY ON YOU TO LET US KNOW IF YOU DO NOT WANT TO RECEIVE THIS BY OPTING OUT OF MARKETING (SEE OPTING OUT BELOW).</p>\r\n\r\n<p>WHERE YOU HAVE NOT PREVIOUSLY BOUGHT FROM US BUT HAVE REGISTERED YOUR DETAILS WITH US (FOR EXAMPLE BY ENTERING A COMPETITION OR SIGNING UP FOR A NEWSLETTER), WE WILL ONLY SEND YOU MARKETING COMMUNICATIONS IF YOU HAVE OPTED INTO RECEIVING MARKETING AND SO GIVEN US YOUR EXPRESS CONSENT (WHICH YOU MAY WITHDRAW AT ANY TIME &ndash; SEE OPTING OUT BELOW).</p>\r\n\r\n<p>WE MAY ALSO SHARE CERTAIN DATA WITH THIRD PARTY SOCIAL MEDIA PLATFORMS IN ORDER TO SHOW YOU TARGETED ADS WHEN YOU VISIT THEM. WE DO THIS BY:</p>\r\n\r\n<p>1. THE USE OF COOKIES WHICH CAPTURE YOUR VISITS TO OUR WEBSITE. PLEASE REFER TO OUR COOKIES POLICY FOR MORE INFORMATION; AND</p>\r\n\r\n<p>2. WE MAY ALSO PROVIDE THESE PLATFORMS WITH YOUR EMAIL ADDRESS TO CREATE &lsquo;AUDIENCES&rsquo; OF USERS FITTING WITHIN A CERTAIN DEMOGRAPHIC/CATEGORY SO THAT WE CAN TARGET OUR MARKETING. PLEASE CHECK THE SOCIAL MEDIA PLATFORMS&rsquo; TERMS FOR MORE DETAILS OF THESE SERVICES. THIS IS IN OUR LEGITIMATE INTERESTS OF SENDING YOU DIRECT MARKETING. SEE &lsquo;OPTING OUT&rsquo; BELOW FOR DETAILS OF HOW YOU CAN ADJUST YOUR MARKETING PREFERENCES. OUR COOKIES POLICY ALSO EXPLAINS HOW YOU CAN ADJUST YOUR COOKIES PREFERENCES.</p>\r\n\r\n<p><strong>OPTING OUT</strong></p>\r\n\r\n<p>YOU CAN ASK US TO STOP SENDING YOU MARKETING MESSAGES AT ANY TIME BY SELECTING &lsquo;UNSUBSCRIBE&rsquo; AT THE BOTTOM OF OUR MARKETING EMAILS</p>\r\n\r\n<p>IF YOU OPT OUT OF RECEIVING EMAIL MARKETING FROM US, WE WILL NO LONGER SHARE YOUR EMAIL ADDRESS WITH SOCIAL MEDIA PLATFORMS (SEE &lsquo;EXTERNAL THIRD PARTIES&rsquo; BELOW). HOWEVER, YOU MAY CONTINUE TO SEE OUR ADS THROUGH THEM, DUE TO THEIR GENERAL DEMOGRAPHIC TARGETING. PLEASE CHECK THE SOCIAL MEDIA PLATFORMS FOR MORE DETAIL OF HOW TO OPT OUT FROM SEEING THESE ADS.</p>\r\n\r\n<p>WHERE YOU OPT OUT OF RECEIVING THESE MARKETING MESSAGES, THIS WILL NOT APPLY TO PERSONAL DATA PROVIDED TO US AS A RESULT OF A PRODUCT/SERVICE PURCHASE, OR RELATED CORRESPONDENCE, AND WE WILL CONTINUE TO PROCESS SUCH DATA IN ACCORDANCE WITH THIS PRIVACY POLICY AND ONLY EVER AS PERMITTED BY LAW.</p>\r\n\r\n<p><strong>COOKIES</strong></p>\r\n\r\n<p>YOU CAN SET YOUR BROWSER TO REFUSE ALL OR SOME BROWSER COOKIES, OR TO ALERT YOU WHEN WEBSITES SET OR ACCESS COOKIES. IF YOU DISABLE OR REFUSE COOKIES, PLEASE NOTE THAT SOME PARTS OF THIS WEBSITE MAY BECOME INACCESSIBLE OR NOT FUNCTION PROPERLY.</p>\r\n\r\n<p><strong>CHANGE OF PURPOSE</strong></p>\r\n\r\n<p>WE WILL ONLY USE YOUR PERSONAL DATA FOR THE PURPOSES FOR WHICH WE COLLECTED IT, UNLESS WE REASONABLY CONSIDER THAT WE NEED TO USE IT FOR ANOTHER REASON AND THAT REASON IS COMPATIBLE WITH THE ORIGINAL PURPOSE. IF YOU WISH TO GET AN EXPLANATION AS TO HOW THE PROCESSING FOR THE NEW PURPOSE IS COMPATIBLE WITH THE ORIGINAL PURPOSE.</p>\r\n\r\n<p>IF WE NEED TO USE YOUR PERSONAL DATA FOR AN UNRELATED PURPOSE, WE WILL NOTIFY YOU AND WE WILL EXPLAIN THE LEGAL BASIS WHICH ALLOWS US TO DO SO.</p>\r\n\r\n<p>PLEASE NOTE THAT WE MAY PROCESS YOUR PERSONAL DATA WITHOUT YOUR KNOWLEDGE OR CONSENT, IN COMPLIANCE WITH THE ABOVE RULES, WHERE THIS IS REQUIRED OR PERMITTED BY LAW.</p>\r\n\r\n<p><strong>6. DISCLOSURES OF YOUR PERSONAL DATA</strong></p>\r\n\r\n<p>WE REQUIRE ALL THIRD PARTIES TO RESPECT THE SECURITY OF YOUR PERSONAL DATA AND TO TREAT IT IN ACCORDANCE WITH THE LAW AND THEY MAY ONLY USE YOUR DATA FOR THE PURPOSES WE SPECIFY IN OUR CONTRACT WITH THEM. WE WILL ALWAYS WORK WITH THEM TO PROTECT YOUR PRIVACY.</p>\r\n\r\n<p><strong>7. INTERNATIONAL TRANSFERS</strong></p>\r\n\r\n<p>SOME OF OUR EXTERNAL THIRD PARTIES ARE BASED OUTSIDE THE EUROPEAN ECONOMIC AREA (EEA) SO THEIR PROCESSING OF YOUR PERSONAL DATA WILL INVOLVE A TRANSFER OF DATA OUTSIDE THE EEA.</p>\r\n\r\n<p>WHENEVER WE TRANSFER YOUR PERSONAL DATA OUT OF THE EEA, WE ENSURE A SIMILAR DEGREE OF PROTECTION IS AFFORDED TO IT BY ENSURING AT LEAST ONE OF THE FOLLOWING SAFEGUARDS IS IMPLEMENTED:</p>\r\n\r\n<p>&middot; WE WILL ONLY TRANSFER YOUR PERSONAL DATA TO COUNTRIES THAT HAVE BEEN DEEMED TO PROVIDE AN ADEQUATE LEVEL OF PROTECTION FOR PERSONAL DATA BY THE EUROPEAN COMMISSION. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: ADEQUACY OF THE PROTECTION OF PERSONAL DATA IN NON-EU COUNTRIES.</p>\r\n\r\n<p>&middot; WHERE WE USE CERTAIN SERVICE PROVIDERS, WE MAY USE SPECIFIC CONTRACTS APPROVED BY THE EUROPEAN COMMISSION WHICH GIVE PERSONAL DATA THE SAME PROTECTION IT HAS IN EUROPE. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: MODEL CONTRACTS FOR THE TRANSFER OF PERSONAL DATA TO THIRD COUNTRIES.</p>\r\n\r\n<p>&middot; WHERE WE USE PROVIDERS BASED IN THE US, WE MAY TRANSFER DATA TO THEM IF THEY ARE PART OF THE PRIVACY SHIELD WHICH REQUIRES THEM TO PROVIDE SIMILAR PROTECTION TO PERSONAL DATA SHARED BETWEEN THE EUROPE AND THE US. FOR FURTHER DETAILS, SEE EUROPEAN COMMISSION: EU-US PRIVACY SHIELD.</p>\r\n\r\n<p>PLEASE CONTACT US IF YOU WANT FURTHER INFORMATION ON THE SPECIFIC MECHANISM USED BY US WHEN TRANSFERRING YOUR PERSONAL DATA OUT OF THE EEA.</p>\r\n\r\n<p><strong>8. DATA SECURITY</strong></p>\r\n\r\n<p>WE HAVE PUT IN PLACE APPROPRIATE SECURITY MEASURES TO PREVENT YOUR PERSONAL DATA FROM BEING ACCIDENTALLY LOST, USED OR ACCESSED IN AN UNAUTHORISED WAY, ALTERED OR DISCLOSED. IN ADDITION, WE LIMIT ACCESS TO YOUR PERSONAL DATA TO THOSE EMPLOYEES, AGENTS, CONTRACTORS AND OTHER THIRD PARTIES WHO HAVE A BUSINESS NEED TO KNOW. THEY WILL ONLY PROCESS YOUR PERSONAL DATA ON OUR INSTRUCTIONS AND THEY ARE SUBJECT TO A DUTY OF CONFIDENTIALITY.</p>\r\n\r\n<p>WE HAVE PUT IN PLACE PROCEDURES TO DEAL WITH ANY SUSPECTED PERSONAL DATA BREACH AND WILL NOTIFY YOU AND ANY APPLICABLE REGULATOR OF A BREACH WHERE WE ARE LEGALLY REQUIRED TO DO SO.</p>\r\n\r\n<p>YOU ACKNOWLEDGE THAT THE INTERNET IS NOT A COMPLETELY SECURE MEDIUM FOR COMMUNICATION AND, ACCORDINGLY, WE CANNOT GUARANTEE THE SECURITY OF ANY INFORMATION YOU SEND TO US (OR WE SEND TO YOU) VIA THE INTERNET. WE ARE NOT RESPONSIBLE FOR ANY DAMAGES WHICH YOU, OR OTHERS, MAY SUFFER AS A RESULT OF THE LOSS OF CONFIDENTIALITY OF SUCH INFORMATION.</p>\r\n\r\n<p><strong>9. DATA RETENTION</strong></p>\r\n\r\n<p><strong>HOW LONG WILL YOU USE MY PERSONAL DATA FOR?</strong></p>\r\n\r\n<p>WE WILL ONLY RETAIN YOUR PERSONAL DATA FOR AS LONG AS NECESSARY TO FULFIL THE PURPOSES WE COLLECTED IT FOR, INCLUDING FOR THE PURPOSES OF SATISFYING ANY LEGAL, ACCOUNTING, OR REPORTING REQUIREMENTS.</p>\r\n\r\n<p>TO DETERMINE THE APPROPRIATE RETENTION PERIOD FOR PERSONAL DATA, WE CONSIDER THE AMOUNT, NATURE, AND SENSITIVITY OF THE PERSONAL DATA, THE POTENTIAL RISK OF HARM FROM UNAUTHORISED USE OR DISCLOSURE OF YOUR PERSONAL DATA, THE PURPOSES FOR WHICH WE PROCESS YOUR PERSONAL DATA AND WHETHER WE CAN ACHIEVE THOSE PURPOSES THROUGH OTHER MEANS, AND THE APPLICABLE LEGAL REQUIREMENTS. FOR EXAMPLE, DETAILS OF YOUR ORDERS WILL BE KEPT FOR AS LONG AS WE NEED TO RETAIN THAT DATA TO COMPLY WITH OUR LEGAL AND REGULATORY REQUIREMENTS. THIS IS GENERALLY 7 YEARS UNLESS THE LAW PRESCRIBES A LONGER PERIOD.</p>\r\n\r\n<p>IN SOME CIRCUMSTANCES YOU CAN ASK US TO DELETE YOUR DATA: SEE &lsquo;YOUR LEGAL RIGHTS&rsquo; BELOW FOR FURTHER INFORMATION.</p>\r\n\r\n<p>IN SOME CIRCUMSTANCES WE MAY ANONYMISE YOUR PERSONAL DATA (SO THAT IT CAN NO LONGER BE ASSOCIATED WITH YOU) FOR RESEARCH OR STATISTICAL PURPOSES IN WHICH CASE WE MAY USE THIS INFORMATION INDEFINITELY WITHOUT FURTHER NOTICE TO YOU.</p>\r\n\r\n<p><strong>10. YOUR LEGAL RIGHTS</strong></p>\r\n\r\n<p>UNDER CERTAIN CIRCUMSTANCES, YOU HAVE RIGHTS UNDER UK DATA PROTECTION LAWS IN RELATION TO YOUR PERSONAL DATA.</p>\r\n\r\n<p>YOU HAVE THE RIGHT TO:</p>\r\n\r\n<p>REQUEST ACCESS TO YOUR PERSONAL DATA (COMMONLY KNOWN AS A &ldquo;DATA SUBJECT ACCESS REQUEST&rdquo;). THIS ENABLES YOU TO RECEIVE A COPY OF THE PERSONAL DATA WE HOLD ABOUT YOU AND TO CHECK THAT WE ARE LAWFULLY PROCESSING IT.</p>\r\n\r\n<p>REQUEST CORRECTION OF THE PERSONAL DATA THAT WE HOLD ABOUT YOU. THIS ENABLES YOU TO HAVE ANY INCOMPLETE OR INACCURATE DATA WE HOLD ABOUT YOU CORRECTED, THOUGH WE MAY NEED TO VERIFY THE ACCURACY OF THE NEW DATA YOU PROVIDE TO US.</p>\r\n\r\n<p>REQUEST ERASURE OF YOUR PERSONAL DATA. THIS ENABLES YOU TO ASK US TO DELETE OR REMOVE PERSONAL DATA WHERE THERE IS NO GOOD REASON FOR US CONTINUING TO PROCESS IT FOR EXAMPLE WHERE YOU CONSIDER THAT WE DO NOT NEED IT ANY LONGER FOR THE PURPOSES FOR WHICH WE ORIGINALLY COLLECTED IT AS EXPLAINED TO YOU IN THIS PRIVACY POLICY, WHERE YOU HAVE WITHDRAWN YOUR CONSENT TO OUR USING IT AND WE HAD RELIED ON THAT CONSENT ACCORDING TO THIS POLICY, WHERE YOU CONSIDER THAT WE CANNOT SHOW A &lsquo;LEGITIMATE INTEREST&rsquo; IN CONTINUING TO PROCESS IT AND WE HAVE RELIED ON THAT LEGITIMATE INTEREST TO PROCESS IT AS EXPLAINED TO YOU IN THIS POLICY . YOU ALSO HAVE THE RIGHT TO ASK US TO DELETE OR REMOVE YOUR PERSONAL DATA WHERE YOU HAVE SUCCESSFULLY EXERCISED YOUR RIGHT TO OBJECT TO PROCESSING (SEE BELOW), WHERE WE MAY HAVE PROCESSED YOUR INFORMATION UNLAWFULLY OR WHERE WE ARE REQUIRED TO ERASE YOUR PERSONAL DATA TO COMPLY WITH LOCAL LAW. NOTE, HOWEVER, THAT WE MAY NOT ALWAYS BE ABLE TO COMPLY WITH YOUR REQUEST OF ERASURE FOR SPECIFIC LEGAL REASONS WHICH WILL BE NOTIFIED TO YOU, IF APPLICABLE, AT THE TIME OF YOUR REQUEST.</p>\r\n\r\n<p>OBJECT TO PROCESSING OF YOUR PERSONAL DATA WHERE WE ARE RELYING ON A LEGITIMATE INTEREST (OR THOSE OF A THIRD PARTY) AND THERE IS SOMETHING ABOUT YOUR PARTICULAR SITUATION WHICH MAKES YOU WANT TO OBJECT TO PROCESSING ON THIS GROUND AS YOU FEEL IT IMPACTS ON YOUR FUNDAMENTAL RIGHTS AND FREEDOMS. YOU ALSO HAVE THE RIGHT TO OBJECT WHERE WE ARE PROCESSING YOUR PERSONAL DATA FOR DIRECT MARKETING PURPOSES. IN SOME CASES, WE MAY DEMONSTRATE THAT WE HAVE COMPELLING LEGITIMATE GROUNDS TO PROCESS YOUR INFORMATION WHICH OVERRIDE YOUR RIGHTS AND FREEDOMS.</p>\r\n\r\n<p>REQUEST RESTRICTION OF PROCESSING OF YOUR PERSONAL DATA. THIS ENABLES YOU TO ASK US TO SUSPEND THE PROCESSING OF YOUR PERSONAL DATA IN THE FOLLOWING SCENARIOS: (A) IF YOU WANT US TO ESTABLISH THE DATA&rsquo;S ACCURACY; (B) WHERE OUR USE OF THE DATA IS UNLAWFUL BUT YOU DO NOT WANT US TO ERASE IT; (C) WHERE YOU NEED US TO HOLD THE DATA EVEN IF WE NO LONGER REQUIRE IT AS YOU NEED IT TO ESTABLISH, EXERCISE OR DEFEND LEGAL CLAIMS; OR (D) YOU HAVE OBJECTED TO OUR USE OF YOUR DATA BUT WE NEED TO VERIFY WHETHER WE HAVE OVERRIDING LEGITIMATE GROUNDS TO USE IT.</p>\r\n\r\n<p>REQUEST THE TRANSFER OF YOUR PERSONAL DATA TO YOU OR TO A THIRD PARTY. WE WILL PROVIDE TO YOU, OR A THIRD PARTY YOU HAVE CHOSEN, YOUR PERSONAL DATA IN A STRUCTURED, COMMONLY USED, MACHINE-READABLE FORMAT. NOTE THAT THIS RIGHT ONLY APPLIES TO AUTOMATED INFORMATION WHICH YOU INITIALLY PROVIDED CONSENT FOR US TO USE OR WHERE WE USED THE INFORMATION TO PERFORM A CONTRACT WITH YOU.</p>\r\n\r\n<p>WITHDRAW CONSENT AT ANY TIME WHERE WE ARE RELYING ON CONSENT TO PROCESS YOUR PERSONAL DATA. HOWEVER, THIS WILL NOT AFFECT THE LAWFULNESS OF ANY PROCESSING CARRIED OUT BEFORE YOU WITHDRAW YOUR CONSENT.</p>\r\n\r\n<p>IF YOU WISH TO EXERCISE ANY OF THESE RIGHTS, PLEASE CONTACT US USING THE INFORMATION PROVIDED ABOVE.</p>\r\n\r\n<p><strong>NO FEE USUALLY REQUIRED</strong></p>\r\n\r\n<p>YOU WILL NOT HAVE TO PAY A FEE TO ACCESS YOUR PERSONAL DATA (OR TO EXERCISE ANY OF THE OTHER RIGHTS). HOWEVER, WE MAY CHARGE A REASONABLE FEE IF YOUR REQUEST IS CLEARLY UNFOUNDED, REPETITIVE OR EXCESSIVE. ALTERNATIVELY, WE MAY REFUSE TO COMPLY WITH YOUR REQUEST IN THESE CIRCUMSTANCES.</p>\r\n\r\n<p><strong>WHAT WE MAY NEED FROM YOU</strong></p>\r\n\r\n<p>WE MAY NEED TO REQUEST SPECIFIC INFORMATION FROM YOU TO HELP US CONFIRM YOUR IDENTITY AND ENSURE YOUR RIGHT TO ACCESS YOUR PERSONAL DATA (OR TO EXERCISE ANY OF YOUR OTHER RIGHTS). THIS IS A SECURITY MEASURE TO ENSURE THAT PERSONAL DATA IS NOT DISCLOSED TO ANY PERSON WHO HAS NO RIGHT TO RECEIVE IT. WE MAY ALSO CONTACT YOU TO ASK YOU FOR FURTHER INFORMATION IN RELATION TO YOUR REQUEST TO SPEED UP OUR RESPONSE.</p>\r\n\r\n<p><strong>TIME LIMIT TO RESPOND</strong></p>\r\n\r\n<p>WE TRY TO RESPOND TO ALL LEGITIMATE REQUESTS WITHIN ONE MONTH. OCCASIONALLY IT MAY TAKE US LONGER THAN A MONTH IF YOUR REQUEST IS PARTICULARLY COMPLEX OR YOU HAVE MADE A NUMBER OF REQUESTS. IN THIS CASE, WE WILL NOTIFY YOU AND KEEP YOU UPDATED.</p>\r\n\r\n<p><strong>11. GLOSSARY</strong></p>\r\n\r\n<p><strong>LAWFUL BASIS</strong></p>\r\n\r\n<p>LEGITIMATE INTEREST MEANS THE INTEREST OF OUR BUSINESS IN CONDUCTING AND MANAGING OUR BUSINESS TO ENABLE US TO GIVE YOU THE BEST SERVICE/PRODUCT AND THE BEST AND MOST SECURE EXPERIENCE. WE MAKE SURE WE CONSIDER AND BALANCE ANY POTENTIAL IMPACT ON YOU (BOTH POSITIVE AND NEGATIVE) AND YOUR RIGHTS BEFORE WE PROCESS YOUR PERSONAL DATA FOR OUR LEGITIMATE INTERESTS. WE DO NOT USE YOUR PERSONAL DATA FOR ACTIVITIES WHERE OUR INTERESTS ARE OVERRIDDEN BY THE IMPACT ON YOU (UNLESS WE HAVE YOUR CONSENT OR ARE OTHERWISE REQUIRED OR PERMITTED TO BY LAW). YOU CAN OBTAIN FURTHER INFORMATION ABOUT HOW WE ASSESS OUR LEGITIMATE INTERESTS AGAINST ANY POTENTIAL IMPACT ON YOU IN RESPECT OF SPECIFIC ACTIVITIES BY CONTACTING US, USING THE INFORMATION PROVIDED ABOVE.</p>\r\n\r\n<p>PERFORMANCE OF CONTRACT MEANS PROCESSING YOUR DATA WHERE IT IS NECESSARY FOR THE PERFORMANCE OF A CONTRACT TO WHICH YOU ARE A PARTY OR TO TAKE STEPS AT YOUR REQUEST BEFORE ENTERING INTO SUCH A CONTRACT.</p>\r\n\r\n<p>COMPLY WITH A LEGAL OR REGULATORY OBLIGATION MEANS PROCESSING YOUR PERSONAL DATA WHERE IT IS NECESSARY FOR COMPLIANCE WITH A LEGAL OR REGULATORY OBLIGATION THAT WE ARE SUBJECT TO.</p>\r\n\r\n<p><strong>THIRD PARTIES</strong></p>\r\n\r\n<p><strong>EXTERNAL THIRD PARTIES</strong></p>\r\n\r\n<p>PARTNERS - WHEN YOU PLACE AN ORDER, WE SHARE YOUR INFORMATION WITH THE RELEVANT SELLER ON OUR MARKETPLACE (&ldquo;PARTNER&rdquo;) SO THAT THEY CAN PROCESS AND DELIVER YOUR ORDER.</p>\r\n\r\n<p>GIFT VOUCHER PROVIDERS &ndash; WE MAY USE THIRD PARTIES TO PROCESS YOUR ORDER WHEN YOU PURCHASE A GIFT VOUCHER FROM US.</p>\r\n\r\n<p>CLOUD STORAGE PROVIDERS - WE USE CLOUD COMPUTING PLATFORMS THAT SECURELY STORE ALL OF OUR DATA, INCLUDING CUSTOMER DETAILS.</p>\r\n\r\n<p>EMAIL SERVICE PROVIDERS - IN ORDER TO SEND YOU MARKETING CONTENT AND TRANSACTIONAL EMAILS, WE SHARE YOUR DETAILS WITH OUR EMAIL SERVICE PROVIDERS.</p>\r\n\r\n<p>SOCIAL MEDIA PLATFORMS - WE MAY MAKE YOUR NAME AND EMAIL ADDRESS AVAILABLE TO COMPANIES IN ORDER TO ADVERTISE AND MARKET OUR SERVICES TO YOU THROUGH OTHER PLATFORMS ON THE INTERNET (E.G. FACEBOOK). SEE THE &lsquo;MARKETING&rsquo; SECTION OF THIS PRIVACY POLICY ABOVE.</p>\r\n\r\n<p>ANALYTICS TOOLS - WE USE ANALYTICS TOOLS TO TRACK THE WAY THAT USERS INTERACT WITH OUR WEBSITE.</p>\r\n\r\n<p>PROFILING TOOLS - WE USE PROFILING TOOLS TO UNDERSTAND HOW YOU ENGAGE WITH OUR WEBSITE AND SHOW YOU CONTENT WE THINK WILL BE MOST RELEVANT TO YOU, BASED ON OUR UNDERSTANDING OF YOUR INTERESTS AND PREFERENCES.</p>\r\n\r\n<p>PAYMENT PROVIDERS - IN ORDER TO FACILITATE ANY PAYMENTS MADE ON OUR SITE, WE FACILITATE THE SHARING OF YOUR FINANCIAL DATA WITH PAYMENT PROVIDERS.</p>\r\n\r\n<p>DELIVERY PROVIDERS - IN ORDER TO PACKAGE AND MAIL YOUR ORDERS TO YOU, IT IS NECESSARY TO SHARE YOUR INFORMATION WITH DELIVERY PROVIDERS.</p>\r\n\r\n<p>MARKETING AND INSIGHTS PROVIDERS - MARKETING AND INSIGHTS TOOLS ALLOW US TO UNDERSTAND OUR CUSTOMERS BETTER SO THAT WE MAY PROVIDE YOU WITH THE BEST POSSIBLE WEBSITE, PRODUCTS AND CUSTOMER SERVICE EXPERIENCE. WE MAY SHARE CERTAIN INFORMATION ABOUT OUR CUSTOMERS TO FACILITATE THIS PROCESS.</p>\r\n\r\n<p>CUSTOMER SERVICE PLATFORMS - WHEN YOU INTERACT WITH OUR CUSTOMER SERVICE TEAM, YOUR DETAILS ARE SHARED WITH OUR CUSTOMER SERVICE PLATFORM PROVIDERS.</p>\r\n\r\n<p><strong>YELIR WORLD COOKIES POLICY</strong></p>\r\n\r\n<p>BY VISITING THIS WEBSITE WITH YOUR BROWSER SETTINGS ADJUSTED TO ALLOW COOKIES, YOU ARE CONSENTING TO YELIR WORLD USING COOKIES FOR THE PURPOSES OUTLINED BELOW IN ORDER TO PROVIDE YOU WITH A FULLY FUNCTIONAL SHOPPING EXPERIENCE.</p>\r\n\r\n<p><strong>WHAT IS A COOKIE?</strong></p>\r\n\r\n<p>A COOKIE IS A SMALL TEXT FILE WHICH IS DOWNLOADED AND STORED ON YOUR COMPUTER OR MOBILE DEVICE BY WEBSITES THAT YOU VISIT. WHERE COOKIE TECHNOLOGY IS NOT AVAILABLE, AN ANONYMOUS IDENTIFIER MAY BE USED. AN ANONYMOUS IDENTIFIER IS A RANDOM STRING OF CHARACTERS USED FOR THE SAME PURPOSES AS A COOKIE.</p>\r\n\r\n<p>YOUR BROWSER ACCESSES THE COOKIE FILE ONLY WHEN YOU VISIT THE WEBSITE THAT GENERATED IT. THIS HELPS TO EASE YOUR NAVIGATION BY AUTOMATICALLY LOGGING YOU IN AND REMEMBERING THINGS LIKE YOUR PREFERENCES AND WHAT&rsquo;S IN YOUR SHOPPING BASKET. COOKIES ALLOW SITES LIKE YELIR WORLD TO DELIVER YOU A PERSONALISED SHOPPING EXPERIENCE.</p>\r\n\r\n<p>THE INFORMATION STORED WITHIN ANY GIVEN COOKIE CAN ONLY BE ACCESSED BY THE WEBSITE THAT CREATED IT AND COOKIES ARE LIMITED TO COMMUNICATING ONLY THE INFORMATION THAT YOU HAVE DISCLOSED TO THE SITE.</p>\r\n\r\n<p>WE USE THE FOLLOWING TYPES OF COOKIE:</p>\r\n\r\n<p>&middot; STRICTLY NECESSARY COOKIES. THESE ARE COOKIES THAT ARE REQUIRED FOR THE OPERATION OF OUR WEBSITE. THEY INCLUDE, FOR EXAMPLE, COOKIES THAT ENABLE YOU TO LOG INTO SECURE AREAS OF OUR WEBSITE, USE A SHOPPING CART OR MAKE USE OF E-BILLING SERVICES.</p>\r\n\r\n<p>&middot; PERFORMANCE COOKIES. THEY ALLOW US TO RECOGNISE AND COUNT THE NUMBER OF VISITORS AND TO SEE HOW VISITORS MOVE AROUND OUR WEBSITE WHEN THEY ARE USING IT. THIS HELPS US TO IMPROVE THE WAY OUR WEBSITE WORKS, FOR EXAMPLE, BY ENSURING THAT USERS ARE FINDING WHAT THEY ARE LOOKING FOR EASILY.</p>\r\n\r\n<p>THE LIST BELOW DETAILS THE COOKIES USED ON YELIR WORLD. WE HAVE OUTLINED WHO SETS THESE COOKIES AND THEIR PURPOSE. IF THE PARTY READS SOMETHING OTHER THAN YELIR WORLD, THESE ARE OUR THIRD PARTY BUSINESS PARTNERS WHO HELP US TO ENHANCE YOUR BROWSING EXPERIENCE.</p>\r\n\r\n<p>&nbsp;<br />\r\nYELIR WORLD USES COOKIES TO ENABLE SOME OF THE BASIC FUNCTIONALITY THAT IS REQUIRED FOR YOU TO BROWSE AND SHOP ON OUR WEBSITE, SUCH AS REMEMBERING WHICH PRODUCTS YOU HAVE ADDED TO YOUR BASKET. THE INFORMATION COLLECTED THROUGH THESE COOKIES IS ONLY USED FOR THIS PURPOSE AND IS NEVER SHARED OR SOLD ON TO THIRD PARTIES.</p>\r\n\r\n<p><strong>PERFORMANCE</strong><br />\r\nGOOGLE ADWORDS; MSN/BING; DOUBLE CLICK; YAHOO (RIGHT MEDIA); FACEBOOK, PINTEREST, TABOOLA, RAKUTEN (LINKSHARE)<br />\r\nGOOGLE ADWORDS, MSN/BING, DOUBLE CLICK,YAHOO, FACEBOOK, PINTEREST, TABOOLA AND RAKUTEN (LINKSHARE) USE COOKIES (OR, IF APPLICABLE, ANONYMOUS IDENTIFIERS) TO TRACK OUR OWN PAID ADVERTISING ACTIVITY. WE USE THE INFORMATION COLLECTED BY THESE COOKIES TO HELP US DETERMINE WHERE OUR ADS WILL BE MOST EFFECTIVE ONLINE. EACH INDIVIDUAL ADVERTISER USES ITS OWN TRACKING COOKIES AND THE DATA TAKEN IS NOT CONFIDENTIAL DATA OR INTERCHANGEABLE.</p>\r\n\r\n<p><br />\r\n<strong>PERFORMANCE</strong><br />\r\nGOOGLE ANALYTICS (INCLUDING UNIVERSAL ANALYTICS AND GOOGLE ANALYTICS FOR DISPLAY ADVERTISERS)<br />\r\nGOOGLE ANALYTICS USE COOKIES (OR, IF APPLICABLE, ANONYMOUS IDENTIFIERS) TO COLLECT DATA THAT HELPS US UNDERSTAND HOW PEOPLE ARE USING THE SITE. WE USE THIS INFORMATION TO IDENTIFY HOW AND WHERE WE CAN IMPROVE THE CUSTOMER EXPERIENCE, AND TO HELP US DETERMINE WHERE OUR ADS WILL BE MOST EFFECTIVE ONLINE. THE DATA COLLECTED THROUGH THESE COOKIES IS ANONYMOUS, DOES NOT COLLECT SPECIFIC CUSTOMER DATA AND IS NEVER SHARED WITH OTHER THIRD PARTIES, OTHER THAN DOUBLE CLICK CAMPAIGN MANAGER, WHICH IS A FULLY OWNED GOOGLE PRODUCT.</p>\r\n\r\n<p>&nbsp;<br />\r\n<strong>FUNCTIONALITY</strong><br />\r\nSHARE THIS ALLOWS CUSTOMERS TO SHARE CONTENT, PRODUCTS AND WEB PAGES FROM OUR WEBSITE WITH OTHER WEBSITES AND SOCIAL NETWORKING SITES. THE COOKIES USED BY SHARE THIS ALLOW US TO TRACK THE TYPE OF CONTENT, PRODUCTS AND PAGES THAT OUR USERS ARE SHARING TO HELP US BETTER UNDERSTAND WHICH CONTENT IS MOST ENGAGING FOR OUR CUSTOMERS SO THAT WE CAN IMPROVE THE CONTENT AND CUSTOMER EXPERIENCE IN OTHER AREAS OF THE WEBSITE.</p>\r\n\r\n<p><br />\r\n<strong>PERFORMANCE</strong><br />\r\nSOCIAL MEDIA PLUGINS<br />\r\nSITES SUCH AS FACEBOOK AND PINTEREST, SERVE COOKIES IN ORDER TO BE ABLE TO SHARE AND DISCUSS YELIR WORLD&rsquo;S PRODUCTS ON SOCIAL NETWORKS.</p>\r\n\r\n<p><strong>DURATION OF COOKIES:</strong></p>\r\n\r\n<p><strong>SESSION (OR TRANSIENT) COOKIES</strong></p>\r\n\r\n<p>SESSION COOKIES ARE STORED IN YOUR COMPUTER&#39;S MEMORY FOR THE LENGTH OF YOUR BROWSING SESSION. THEY BECOME INACCESSIBLE AFTER THE SESSION HAS BEEN INACTIVE FOR A TIME AND ARE AUTOMATICALLY DELETED FROM YOUR COMPUTER WHEN THE BROWSER IS CLOSED. THEY ALLOW YOU TO MOVE FROM PAGE TO PAGE WITHOUT HAVING TO LOG-IN REPEATEDLY.</p>\r\n\r\n<p><strong>PERSISTENT (OR PERMANENT) COOKIES</strong></p>\r\n\r\n<p>PERSISTENT COOKIES ARE STORED IN YOUR COMPUTER MEMORY AND ARE NOT DELETED WHEN THE BROWSER IS CLOSED. THEY ARE USED TO KEEP YOUR PREFERENCES FOR THE WEBSITE, SO THEY WILL BE REMEMBERED FOR NEXT TIME YOU VISIT THE WEBSITE. THEY ARE ALSO USED TO COLLECT INFORMATION ABOUT THE NUMBERS OF VISITORS, THE AVERAGE TIME SPENT ON A PARTICULAR PAGE AND ANALYSE SHOPPING BEHAVIOUR ON THE WEBSITE. THIS INFORMATION IS USED TO FIND OUT HOW WELL THE WEBSITE WORKS AND WHERE IT CAN BE IMPROVED.</p>\r\n\r\n<p><strong>FLASH COOKIES (OR LOCALLY SHARED OBJECTS)</strong></p>\r\n\r\n<p>YOU PROBABLY HAVE ADOBE FLASH INSTALLED ON YOUR COMPUTER. WEBSITES THAT CONTAIN FLASH CAN ALSO STORE SMALL FILES ON YOUR COMPUTER THAT ARE USED IN THE SAME WAY AS COOKIES.</p>\r\n\r\n<p>FLASH COOKIES CAN ALSO BACK UP THE DATA THAT IS STORED IN OTHER COOKIES. WHEN YOU DELETE COOKIES, YOUR FLASH COOKIES ARE NOT AFFECTED. SO A WEBSITE MAY STILL RECOGNISE YOU IF IT BACKED UP THE DELETED COOKIE INFORMATION ON A FLASH COOKIE.</p>\r\n\r\n<p><strong>SHARING WITH SOCIAL NETWORKS</strong></p>\r\n\r\n<p>IF YOU USE THE BUTTONS THAT ALLOW YOU TO SHARE PRODUCTS AND CONTENT WITH YOUR FRIENDS VIA SOCIAL NETWORKS LIKE TWITTER AND FACEBOOK, THESE COMPANIES MAY SET A COOKIE ON YOUR COMPUTER MEMORY. FIND OUT MORE ABOUT THESE HERE:</p>\r\n\r\n<p>HTTPS://WWW.FACEBOOK.COM/ABOUT/PRIVACY/</p>\r\n\r\n<p>HTTP://TWITTER.COM/PRIVACY</p>\r\n\r\n<p>HTTP://WWW.GOOGLE.COM/INTL/EN-GB/POLICIES/PRIVACY/</p>\r\n\r\n<p>MANAGING COOKIES:</p>\r\n\r\n<p>IF COOKIES AREN&#39;T ENABLED ON YOUR COMPUTER, IT WILL MEAN THAT YOUR SHOPPING EXPERIENCE ON OUR WEBSITE WILL BE LIMITED TO BROWSING AND RESEARCHING; YOU WON&#39;T BE ABLE TO ADD PRODUCTS TO YOUR BASKET OR BUY THEM. TO ENABLE AND MANAGE COOKIES, YOU CAN USE YOUR BROWSER TO DO THIS. EACH BROWSER IS DIFFERENT, SO CHECK THE &#39;HELP&#39; MENU OF YOUR PARTICULAR BROWSER (OR YOUR MOBILE PHONE&#39;S HANDSET MANUAL) TO LEARN HOW TO CHANGE YOUR COOKIE PREFERENCES.</p>\r\n\r\n<p><em>EDITED &amp; CUSTOMISED BY YELIR WORLD LTD, UNIT 2A, MARSHFIELD BANK, MIDDLEWICH ROAD, CREWE, UNITED KINGDOM CW2 8UY</em></p>\r\n\r\n<p><strong>LAST AMENDED 25 JUN&nbsp;2019</strong></p>', 'default', NULL, '-86', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 08:53:00', '2022-05-14 08:53:00'),
(87, 'Free ship nội thành', NULL, '', 'default', NULL, 'free-ship-noi-thanh', '1', NULL, '', 'slider-shipping-policy', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:14:25'),
(88, 'Free ship local', NULL, '', 'default', NULL, 'free-ship-local', '1', NULL, '', 'slider-shipping-policy', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-05-14 09:14:25');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `code` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `price` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_end` datetime DEFAULT NULL,
  `image_list` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `properties` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_together` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `buy_after` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `code`, `post_id`, `price`, `discount`, `updated_at`, `discount_start`, `discount_end`, `image_list`, `properties`, `buy_together`, `buy_after`) VALUES
(9, NULL, 51, '85', NULL, '2022-05-14 08:39:01', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/278772424_150581000790263_3806526086144562197_n.jpg,/kcfinder-master/upload/images/Black%20paris/274719722_139268575254839_6123737559190753960_n.jpg,/kcfinder-master/upload/images/Black%20paris/274835298_140028738512156_7681966629626654782_n.jpg', 's,m,l,xl', NULL, NULL),
(10, NULL, 52, '85', NULL, '2022-05-14 08:39:01', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/278772424_150581000790263_3806526086144562197_n.jpg,/kcfinder-master/upload/images/Black%20paris/274835298_140028738512156_7681966629626654782_n.jpg,/kcfinder-master/upload/images/Black%20paris/274862822_139268705254826_1774073334401928346_n.jpg', 's,m,l,xl', NULL, NULL),
(11, NULL, 53, '55', NULL, '2022-05-14 08:37:10', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/274719722_139268575254839_6123737559190753960_n.jpg,/kcfinder-master/upload/images/Black%20paris/275111210_140028715178825_8446653626786667896_n.jpg,/kcfinder-master/upload/images/Black%20paris/275044739_140028691845494_4548975117751402740_n.jpg', 'xs,s,m,l,xl', NULL, NULL),
(12, NULL, 54, '55', NULL, '2022-05-14 08:37:10', NULL, NULL, '/kcfinder-master/upload/.thumbs/images/Black%20paris/274719722_139268575254839_6123737559190753960_n.jpg,/kcfinder-master/upload/.thumbs/images/Black%20paris/275111210_140028715178825_8446653626786667896_n.jpg,/kcfinder-master/upload/.thumbs/images/Black%20paris/275044739_140028691845494_4548975117751402740_n.jpg', 'xs,s,m,l,xl', NULL, NULL),
(13, NULL, 55, '75', NULL, '2022-05-14 08:34:25', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg,/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg,/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg,/kcfinder-master/upload/images/Black%20paris/279419598_155500413631655_3391973299925306626_n.jpg', 'x,s,m,l', NULL, NULL),
(14, NULL, 56, '75', NULL, '2022-05-14 08:34:25', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg,/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg,/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg,/kcfinder-master/upload/images/Black%20paris/279419598_155500413631655_3391973299925306626_n.jpg', 'x,s,m,l', NULL, NULL),
(15, NULL, 57, '75', NULL, '2022-05-14 08:35:19', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/279763355_154334377081592_5374291620141024896_n.jpg,/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg,/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg,/kcfinder-master/upload/images/Black%20paris/280287407_155502256964804_5498666932856347867_n.jpg', 'x,s,m,l', NULL, NULL),
(16, NULL, 58, '75', NULL, '2022-05-14 08:35:19', NULL, NULL, '/kcfinder-master/upload/images/Black%20paris/279763355_154334377081592_5374291620141024896_n.jpg,/kcfinder-master/upload/images/Black%20paris/279649504_155500780298285_5957669988259275887_n.jpg,/kcfinder-master/upload/images/Black%20paris/279534810_155502003631496_1366022301221385148_n.jpg,/kcfinder-master/upload/images/Black%20paris/279765766_155499936965036_1039886079347093577_n.jpg', 'x,s,m,l', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `ratingable_id` int(10) UNSIGNED DEFAULT NULL,
  `ratingable_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_order`
--

CREATE TABLE `setting_order` (
  `setting_order_id` int(11) NOT NULL,
  `point_to_currency` int(11) DEFAULT NULL,
  `currency_give_point` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcribe_email`
--

CREATE TABLE `subcribe_email` (
  `subcribe_email_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcribe_email`
--

INSERT INTO `subcribe_email` (`subcribe_email_id`, `email`, `name`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'vietbt@vatgia.com', NULL, NULL, '2022-05-14 03:49:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_post`
--

CREATE TABLE `sub_post` (
  `sub_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type_sub_post_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_post`
--

INSERT INTO `sub_post` (`sub_post_id`, `post_id`, `type_sub_post_slug`) VALUES
(1, 1, 'slider'),
(2, 2, 'slider'),
(3, 3, 'slider'),
(4, 4, 'slider'),
(5, 5, 'slider'),
(6, 6, 'slider'),
(7, 7, 'slider'),
(8, 8, 'slider'),
(9, 9, 'slider'),
(10, 10, 'slider'),
(11, 11, 'slider'),
(12, 12, 'slider'),
(13, 13, 'slider'),
(14, 14, 'slider'),
(15, 15, 'video'),
(16, 16, 'video'),
(17, 17, 'video'),
(18, 18, 'video'),
(19, 19, 'video'),
(20, 20, 'video'),
(21, 45, 'gioi-thieu'),
(22, 46, 'gioi-thieu'),
(23, 47, 'slider-shipping-policy'),
(24, 48, 'slider-shipping-policy'),
(25, 49, 'shop-isolate'),
(26, 50, 'shop-isolate'),
(27, 59, 'shop-isolate'),
(28, 60, 'shop-isolate'),
(29, 61, 'shop-isolate'),
(30, 62, 'shop-isolate'),
(31, 63, 'insta-feed'),
(32, 64, 'insta-feed'),
(33, 65, 'insta-feed'),
(34, 66, 'insta-feed'),
(35, 67, 'insta-feed'),
(36, 68, 'insta-feed'),
(37, 69, 'insta-feed'),
(38, 70, 'insta-feed'),
(39, 71, 'insta-feed'),
(40, 72, 'insta-feed'),
(41, 73, 'insta-feed'),
(42, 74, 'insta-feed'),
(43, 75, 'insta-feed'),
(44, 76, 'insta-feed'),
(45, 77, 'insta-feed'),
(46, 78, 'insta-feed'),
(47, 87, 'slider-shipping-policy'),
(48, 88, 'slider-shipping-policy');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `template_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_hide` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_information`
--

CREATE TABLE `type_information` (
  `type_infor_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_information`
--

INSERT INTO `type_information` (`type_infor_id`, `title`, `type_input`, `placeholder`, `created_at`, `updated_at`, `slug`) VALUES
(4, 'Company name', 'one_line', NULL, NULL, '2022-05-14 06:16:47', 'company-name'),
(5, 'Banner desktop', 'image', NULL, NULL, '2022-05-10 12:41:24', 'banner-desktop'),
(6, 'Banner mobile', 'image', NULL, NULL, '2022-05-10 12:41:41', 'banner-mobile'),
(7, 'Button banner title', 'one_line', NULL, NULL, '2022-05-10 12:42:14', 'button-banner-title'),
(9, 'Description Product', 'one_line', NULL, NULL, '2022-05-10 12:43:56', 'description-product'),
(10, 'Button Product', 'one_line', NULL, NULL, '2022-05-10 12:46:00', 'button-product'),
(12, 'Description product 2', 'one_line', NULL, NULL, '2022-05-10 12:46:40', 'description-product-2'),
(13, 'Button Product 2', 'one_line', NULL, NULL, '2022-05-10 12:46:52', 'button-product-2'),
(24, 'icon', 'image', NULL, NULL, NULL, 'icon'),
(16, 'Content footer', 'one_line', NULL, NULL, '2022-05-10 12:47:28', 'content-footer'),
(19, 'Link button banner', 'one_line', NULL, NULL, NULL, 'link-button-banner'),
(20, 'Link list product', 'one_line', NULL, NULL, NULL, 'link-list-product'),
(21, 'Link list product 2', 'one_line', NULL, NULL, NULL, 'link-list-product-2'),
(22, 'Currency', 'one_line', NULL, NULL, NULL, 'currency');

-- --------------------------------------------------------

--
-- Table structure for table `type_input`
--

CREATE TABLE `type_input` (
  `type_input_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `general` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_input`
--

INSERT INTO `type_input` (`type_input_id`, `title`, `slug`, `type_input`, `placeholder`, `post_used`, `general`, `created_at`, `updated_at`) VALUES
(1, 'ADD TO CART', 'add-to-cart', 'one_line', NULL, 'language', NULL, NULL, '2022-05-14 06:53:28'),
(2, 'QUANTITY', 'quantity', 'one_line', NULL, 'language', 1, NULL, '2022-05-14 06:52:52'),
(3, 'PRODUCT', 'product', 'one_line', NULL, 'language', NULL, NULL, '2022-05-14 06:52:21'),
(4, 'FILTER', 'filter', 'one_line', NULL, 'language', NULL, NULL, '2022-05-14 06:51:47'),
(5, 'currency', 'currency', 'one_line', NULL, 'product', NULL, NULL, '2022-05-14 06:50:57'),
(6, 'CARE INSTRUCTIONS', 'care-instructions', 'multi_line', NULL, 'product', NULL, NULL, '2022-05-14 06:50:44'),
(7, 'SIZE GUIDE', 'size-guide', 'multi_line', NULL, 'product,language', NULL, NULL, '2022-05-14 08:17:19'),
(8, 'SHIPPING & RETURNS', 'shipping-returns', 'multi_line', NULL, 'product', NULL, NULL, '2022-05-14 06:50:29'),
(9, 'Status', 'status', 'one_line', NULL, 'product', NULL, NULL, '2022-05-14 06:50:24'),
(10, 'Ảnh 2', 'anh-2', 'image', NULL, 'product', NULL, NULL, '2022-05-14 06:50:19'),
(11, 'Ảnh Mobile', 'anh-mobile', 'image', NULL, 'shop-isolate', NULL, NULL, '2022-05-14 06:50:13'),
(12, 'Link', 'link', 'one_line', NULL, 'shop-isolate', NULL, NULL, '2022-05-14 06:50:10'),
(13, 'Button Title', 'ma-san-pham', 'one_line', NULL, 'shop-isolate', NULL, NULL, '2022-05-14 06:50:05'),
(14, 'ITEM ADDED TO YOUR CART', 'item-added-to-your-cart', 'one_line', NULL, 'language', NULL, NULL, NULL),
(15, 'VIEW MY CART', 'view-my-cart', 'one_line', NULL, 'language', NULL, NULL, NULL),
(16, 'CONTINUE SHOPPING', 'continue-shopping', 'one_line', NULL, 'language', NULL, NULL, NULL),
(17, 'SHIPPING AND RETURN', 'shipping-and-return', 'one_line', NULL, 'language', NULL, NULL, NULL),
(18, 'CARE INSTRUCTION', 'care-instruction', 'one_line', NULL, 'language', NULL, NULL, NULL),
(19, 'SHARE', 'share', 'one_line', NULL, 'language', NULL, NULL, NULL),
(20, 'YOUR CART', 'your-cart', 'one_line', NULL, 'language', NULL, NULL, NULL),
(21, 'Total', 'total', 'one_line', NULL, 'language', NULL, NULL, NULL),
(22, 'Check out', 'check-out', 'one_line', NULL, 'language', NULL, NULL, NULL),
(23, 'MORE PRODUCTS', 'more-products', 'one_line', NULL, 'language', NULL, NULL, NULL),
(24, 'Information', 'information', 'one_line', NULL, 'language', NULL, NULL, NULL),
(25, 'Payment', 'payment', 'one_line', NULL, 'language', NULL, NULL, NULL),
(26, 'Review', 'review', 'one_line', NULL, 'language', NULL, NULL, NULL),
(27, 'Contact information', 'contact-information', 'one_line', NULL, 'language', NULL, NULL, NULL),
(28, 'Already have an account', 'already-have-an-account', 'one_line', NULL, 'language', NULL, NULL, NULL),
(29, 'Shipping address', 'shipping-address', 'one_line', NULL, 'language', NULL, NULL, NULL),
(30, 'Country/region', 'country-region', 'one_line', NULL, 'language', NULL, NULL, NULL),
(31, 'First name', 'first-name', 'one_line', NULL, 'language', NULL, NULL, NULL),
(32, 'Last name', 'last-name', 'one_line', NULL, 'language', NULL, NULL, NULL),
(33, 'Address', 'address', 'one_line', NULL, 'language', NULL, NULL, NULL),
(34, 'City', 'city', 'one_line', NULL, 'language', NULL, NULL, NULL),
(35, 'Postcode', 'postcode', 'one_line', NULL, 'language', NULL, NULL, NULL),
(36, 'Phone', 'phone', 'one_line', NULL, 'language', NULL, NULL, NULL),
(37, 'Order summary', 'order-summary', 'one_line', NULL, 'language', NULL, NULL, NULL),
(38, 'Pay to bank', 'pay-to-bank', 'one_line', NULL, 'language', NULL, NULL, NULL),
(39, 'bank', 'bank', 'one_line', NULL, 'language', NULL, NULL, NULL),
(40, 'Bank account', 'bank-account', 'one_line', NULL, 'language', NULL, NULL, '2022-05-14 07:10:03'),
(41, 'Bank number', 'bank-number', 'one_line', NULL, 'language', NULL, NULL, NULL),
(42, 'Branch', 'branch', 'one_line', NULL, 'language', NULL, NULL, NULL),
(43, 'Content bank', 'content-bank', 'multi_line', NULL, 'language', NULL, NULL, NULL),
(44, 'Compelete', 'compelete', 'one_line', NULL, 'language', NULL, NULL, NULL),
(45, 'Compelete content', 'compelete-content', 'one_line', NULL, 'language', NULL, NULL, NULL),
(46, 'Reset your password', 'reset-your-password', 'one_line', NULL, 'language', NULL, NULL, NULL),
(47, 'LOGIN', 'login', 'one_line', NULL, 'language', NULL, NULL, NULL),
(48, 'Reset content', 'reset-content', 'one_line', NULL, 'language', NULL, NULL, NULL),
(49, 'Sign In', 'sign-in', 'one_line', NULL, 'language', NULL, NULL, NULL),
(50, 'FORGOT YOUR PASSWORD', 'forgot-your-password', 'one_line', NULL, 'language', NULL, NULL, NULL),
(51, 'CREATE ACCOUNT', 'create-account', 'one_line', NULL, 'language', NULL, NULL, NULL),
(52, 'Submit', 'submit', 'one_line', NULL, 'language', NULL, NULL, NULL),
(53, 'Cancel', 'cancel', 'one_line', NULL, 'language', NULL, NULL, NULL),
(54, 'Create', 'create', 'one_line', NULL, 'language', NULL, NULL, NULL),
(55, 'name', 'name', 'one_line', NULL, 'language', NULL, NULL, NULL),
(56, 'password', 'password', 'one_line', NULL, 'language', NULL, NULL, NULL),
(57, 'notice login content', 'notice-login-content', 'one_line', NULL, 'language', NULL, NULL, NULL),
(58, 'cart status', 'cart-status', 'one_line', NULL, 'language', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_sub_post`
--

CREATE TABLE `type_sub_post` (
  `type_sub_post_id` int(11) NOT NULL,
  `title` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `location` int(11) DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_default_used` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_sort` tinyint(4) DEFAULT NULL,
  `show_menu` tinyint(4) DEFAULT NULL,
  `is_index_hot` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_sub_post`
--

INSERT INTO `type_sub_post` (`type_sub_post_id`, `title`, `slug`, `location`, `template`, `input_default_used`, `have_sort`, `show_menu`, `is_index_hot`, `created_at`, `updated_at`) VALUES
(1, 'SLIDER SHIPPING POLICY', 'slider-shipping-policy', NULL, 'default', 'title', 0, 0, 0, NULL, '2022-05-10 12:37:05'),
(4, 'SHOP ISOLATE', 'shop-isolate', NULL, 'default', 'image', 0, 0, 0, NULL, '2022-05-10 12:53:03'),
(5, 'INSTA FEED', 'insta-feed', NULL, 'default', 'title,content,image,description', 0, 0, 0, NULL, '2022-05-10 15:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(254) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Null',
  `phone` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(45) DEFAULT NULL,
  `name` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `phone`, `image`, `role`, `name`, `updated_at`, `created_at`, `age`, `address`, `point`) VALUES
(1, 'vn3ctran@gmail.com', '$2y$10$LQEfgiaOF.1riQZHlmd91eZ7tzvxIRAlwYL8zwoOuj4BL1/td8I4m', '86k3eU3tuQFHM8azPV701tTosMVahk89WXhRTM7ykOeoOA1mhTUV0wRJKTxc', '12345678', 'upload/175246_mat-ngo-nghing3.jpg', 3, 'Quản trị viên', '2017-11-14 09:26:29', NULL, 'nam', 'Cổ đông sơn tây', 0),
(6, 'trannam.bachkhoa.k56@gmail.com', '$2y$10$C5V5M2Fj/fI2w4aaydaGJ.NbWaNpBqDvNeg6yuDvpNp/v4XmBKfdS', 'Null', '097 456 1735', NULL, 1, 'Trần hải nam', '2017-10-30 09:12:28', '2017-10-30 08:35:02', 'Nam', 'Cổ đông sơn tây, HN', 0),
(7, 'miaki088@gmail.com', '$2y$10$BFHb20ebpy5aQCNbC/PlReXT6RIr.5NbbMb97DGt2e3e4yci0BRZ6', 'Null', NULL, 'upload/1506954790690-9090-1506986120_500x300.jpg', 1, 'Nam Trần', '2017-11-01 09:38:16', '2017-11-01 09:37:36', NULL, NULL, 0),
(8, 'miaki01@gmail.com', '$2y$10$INbZp.ajMseONL/8IDtLgOpNyV/FTSEd7CCVLsKlQFmoSf8Glh4SS', 'JMWus6arLd88KgfwXtXrQrvjTpuu4SXU5jgA1HpZA31wBJoheVmtGeWD6Dzw', NULL, NULL, 1, 'Tran Hai Nam', '2018-03-14 09:26:12', '2018-03-14 09:26:12', NULL, NULL, 0),
(9, '123@gmail.com', '$2y$10$EARcVnYCpuCM23AxGIaap.4UkDnKgsVycp5tLQJMpCykuApb006Ea', 'R51JZHM5df2wsFSrEIe8OYcYj6w0ofZB1wnsJkLPxRVJakoenLwrrKFxmSQ4', NULL, NULL, 1, 'Tran Hai Nam', '2018-03-14 09:28:23', '2018-03-14 09:28:23', NULL, NULL, 0),
(10, '12312@gmail.com', '$2y$10$H7z4mZNkyM3zF7pJehtezutKo7iq5xDgJXfmOWkYJkgG5WSStHwW6', 'Null', '0974561735', NULL, 1, 'Tran Hai Nam', '2018-03-14 09:32:13', '2018-03-14 09:32:13', NULL, 'co dong', 0),
(11, '1@gmail.com', '$2y$10$eJPr.NO6lM4gxEI/8y1Ha.QsTCoMjgCE2InhrknkIk3P.hL9bvP2C', 'Null', '123456789', NULL, 1, 'Tran Hai Nam', '2018-03-14 09:34:02', '2018-03-14 09:34:02', NULL, 'co dong', 0),
(12, '21@gmail.com', '$2y$10$ma8I8lOSQVUoD2yliMInnuGd3eTJwGBy9IxL014pvSX.Zwxo9FT9q', 'vjDWS2JQmBHffy5C8dcFSWTzxCsLkamHqL6PoEBYCigdPNvYgHEPEis5IUO8', '2131313213', NULL, 1, 'Tran Hai Nam', '2018-03-14 09:36:16', '2018-03-14 09:36:16', NULL, 'co dong', 0),
(13, 'minhducit@micoem.vn', '$2y$10$jAynCX8gmfhoeI2UgjxjEuTa4UNu42qaBZ9ZvmNOD/zAoSnIfuzYy', 'WMx85QUueAnwtHSeHBx6V7e5CxhJtB7vA7Na8yYXSiebNwOLq0zQ9TAxTZ65', '0968868201', '/kcfinder-master/upload/images/logo-footer.png', NULL, 'Lê Minh Đức', NULL, NULL, NULL, NULL, 0),
(14, 'ntl22021999@gmail.com', '$2y$10$i4YwEMKC9hpTkjIPoOeP2eDCBrnqzBgZ5nVDTRvA2xLriCaeZvjZu', 'Null', '01696032156', NULL, 1, 'Nguyễn Thành Luân', '2018-04-21 15:03:53', '2018-04-21 15:03:53', NULL, 'Xã Tam Quan Nam ,hoài nhơn bình định', 0),
(15, 'lethicamtu261096@gmail.com', '$2y$10$pvN/CL2JTIdRH3AlcZWHEuhB16FkQfp.GJ0SWcO2Daulups5/RzFq', 'Null', '01228875706', NULL, 1, 'Lê Thị Cẩm Tú', '2018-04-22 15:10:14', '2018-04-22 15:10:14', NULL, 'Quangr Nam', 0),
(16, 'vietbt@vatgia.com', '$2y$10$yzFtVj3IOLdoiWXezrp.N.tdjphWwQIW2tSGhij2JCWVyZLNZNgZS', 'KXSRpBeET55DiT4dFfGjlwziI7a1I41fdcjSPNWYKDykd92ZdN2upQhPoFwn', 'Viet', NULL, 1, 'Bui Tuan Viet', '2022-05-14 05:54:02', '2022-05-14 05:54:02', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `group_mail`
--
ALTER TABLE `group_mail`
  ADD PRIMARY KEY (`group_mail_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`infor_id`);

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`input_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `language_save`
--
ALTER TABLE `language_save`
  ADD PRIMARY KEY (`language_save_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_element`
--
ALTER TABLE `menu_element`
  ADD PRIMARY KEY (`menu_element_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_bank`
--
ALTER TABLE `order_bank`
  ADD PRIMARY KEY (`order_bank_id`);

--
-- Indexes for table `order_code_sale`
--
ALTER TABLE `order_code_sale`
  ADD PRIMARY KEY (`order_code_sale_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order_ship`
--
ALTER TABLE `order_ship`
  ADD PRIMARY KEY (`order_ship_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_order`
--
ALTER TABLE `setting_order`
  ADD PRIMARY KEY (`setting_order_id`);

--
-- Indexes for table `subcribe_email`
--
ALTER TABLE `subcribe_email`
  ADD PRIMARY KEY (`subcribe_email_id`);

--
-- Indexes for table `sub_post`
--
ALTER TABLE `sub_post`
  ADD PRIMARY KEY (`sub_post_id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `type_information`
--
ALTER TABLE `type_information`
  ADD PRIMARY KEY (`type_infor_id`);

--
-- Indexes for table `type_input`
--
ALTER TABLE `type_input`
  ADD PRIMARY KEY (`type_input_id`);

--
-- Indexes for table `type_sub_post`
--
ALTER TABLE `type_sub_post`
  ADD PRIMARY KEY (`type_sub_post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `category_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `group_mail`
--
ALTER TABLE `group_mail`
  MODIFY `group_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `input`
--
ALTER TABLE `input`
  MODIFY `input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=837;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_save`
--
ALTER TABLE `language_save`
  MODIFY `language_save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu_element`
--
ALTER TABLE `menu_element`
  MODIFY `menu_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=335;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_bank`
--
ALTER TABLE `order_bank`
  MODIFY `order_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_code_sale`
--
ALTER TABLE `order_code_sale`
  MODIFY `order_code_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_ship`
--
ALTER TABLE `order_ship`
  MODIFY `order_ship_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting_order`
--
ALTER TABLE `setting_order`
  MODIFY `setting_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcribe_email`
--
ALTER TABLE `subcribe_email`
  MODIFY `subcribe_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_post`
--
ALTER TABLE `sub_post`
  MODIFY `sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type_information`
--
ALTER TABLE `type_information`
  MODIFY `type_infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `type_input`
--
ALTER TABLE `type_input`
  MODIFY `type_input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `type_sub_post`
--
ALTER TABLE `type_sub_post`
  MODIFY `type_sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
