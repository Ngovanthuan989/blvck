-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2022 lúc 11:20 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book`
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
-- Đang đổ dữ liệu cho bảng `book`
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
-- Cấu trúc bảng cho bảng `categories`
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
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`category_id`, `title`, `slug`, `parent`, `template`, `icon`, `description`, `image`, `post_type`, `is_hide`, `language`, `created_at`, `updated_at`) VALUES
(1, 'MEN', 'men', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 03:31:46'),
(2, 'MEN', 'men', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 03:31:46'),
(39, 'WOMEN', 'women', 0, 'default', NULL, NULL, '/kcfinder-master/upload/images/casetify_6f1d1ac2-f7b4-450c-9a99-ebe7a5e62b6b.jpg', 'product', NULL, 'vn', NULL, '2022-11-17 06:40:44'),
(40, 'WOMEN', 'women', 0, 'default', NULL, NULL, '/kcfinder-master/upload/images/casetify_6f1d1ac2-f7b4-450c-9a99-ebe7a5e62b6b.jpg', 'product', NULL, 'en', NULL, '2022-11-17 06:40:44'),
(41, 'ACCESSORIES', 'accessories', 0, 'default', NULL, NULL, '/kcfinder-master/upload/images/Men-Nav_5aa642b7-259b-4343-bf6e-e062a5e8145b.jpg', 'product', NULL, 'vn', NULL, '2022-11-17 06:40:28'),
(42, 'ACCESSORIES', 'accessories', 0, 'default', NULL, NULL, '/kcfinder-master/upload/images/Men-Nav_5aa642b7-259b-4343-bf6e-e062a5e8145b.jpg', 'product', NULL, 'en', NULL, '2022-11-17 06:40:28'),
(43, 'WHTE', 'whte', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 03:32:39'),
(44, 'WHTE', 'whte', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 03:32:39'),
(45, 'READY-TO-WEAR', 'ready-to-wear', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 03:34:03'),
(46, 'READY-TO-WEAR', 'ready-to-wear', 0, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 03:34:03'),
(47, 'NEW ARRIVALS', 'new-arrivals', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 03:34:32'),
(48, 'NEW ARRIVALS', 'new-arrivals', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 03:34:32'),
(13, 'Blog', 'blog', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'vn', NULL, '2022-11-09 04:52:08'),
(14, 'Blog', 'blog', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'en', NULL, '2022-11-09 04:52:08'),
(50, 'HOODIES & SWEATERS', 'hoodies-sweaters', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 03:35:06'),
(49, 'HOODIES & SWEATERS', 'hoodies-sweaters', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 03:35:06'),
(51, 'PANTS', 'pants', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(52, 'PANTS', 'pants', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(53, 'OUTERWEAR', 'outerwear', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(54, 'OUTERWEAR', 'outerwear', 45, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(55, 'NEW ARRIVALS', 'new-arrivals', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(56, 'NEW ARRIVALS', 'new-arrivals', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(57, 'BAGS & LEATHER', 'bags-leather', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(58, 'BAGS & LEATHER', 'bags-leather', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(59, 'HIGH-TECH', 'high-tech', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(60, 'HIGH-TECH', 'high-tech', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(61, 'LIFESTYLE', 'lifestyle', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(62, 'LIFESTYLE', 'lifestyle', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(63, 'HEADWARE', 'headware', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(64, 'HEADWARE', 'headware', 41, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(65, 'MEN', 'men', 43, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, '2022-11-09 15:17:54'),
(66, 'MEN', 'men', 43, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, '2022-11-09 15:17:54'),
(67, 'WOMEN', 'women', 43, 'default', NULL, NULL, NULL, 'product', NULL, 'vn', NULL, NULL),
(68, 'WOMEN', 'women', 43, 'default', NULL, NULL, NULL, 'product', NULL, 'en', NULL, NULL),
(69, 'Information', 'information', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'vn', NULL, NULL),
(70, 'Information', 'information', 0, 'default', NULL, NULL, NULL, 'post', NULL, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `category_post_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_post`
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
(215, 1, 51, NULL, NULL),
(286, 49, 97, NULL, NULL),
(285, 47, 97, NULL, NULL),
(284, 45, 97, NULL, NULL),
(283, 55, 97, NULL, NULL),
(282, 41, 97, NULL, NULL),
(281, 1, 97, NULL, NULL),
(292, 49, 98, NULL, NULL),
(291, 47, 98, NULL, NULL),
(290, 45, 98, NULL, NULL),
(289, 55, 98, NULL, NULL),
(288, 41, 98, NULL, NULL),
(287, 1, 98, NULL, NULL),
(274, 49, 99, NULL, NULL),
(280, 49, 100, NULL, NULL),
(273, 47, 99, NULL, NULL),
(279, 47, 100, NULL, NULL),
(272, 45, 99, NULL, NULL),
(278, 45, 100, NULL, NULL),
(271, 55, 99, NULL, NULL),
(277, 55, 100, NULL, NULL),
(270, 41, 99, NULL, NULL),
(276, 41, 100, NULL, NULL),
(269, 1, 99, NULL, NULL),
(275, 1, 100, NULL, NULL),
(310, 49, 101, NULL, NULL),
(316, 49, 102, NULL, NULL),
(309, 47, 101, NULL, NULL),
(315, 47, 102, NULL, NULL),
(308, 45, 101, NULL, NULL),
(314, 45, 102, NULL, NULL),
(307, 55, 101, NULL, NULL),
(313, 55, 102, NULL, NULL),
(306, 41, 101, NULL, NULL),
(312, 41, 102, NULL, NULL),
(305, 1, 101, NULL, NULL),
(311, 1, 102, NULL, NULL),
(317, 1, 103, NULL, NULL),
(318, 1, 104, NULL, NULL),
(319, 39, 103, NULL, NULL),
(320, 39, 104, NULL, NULL),
(321, 41, 103, NULL, NULL),
(322, 41, 104, NULL, NULL),
(323, 55, 103, NULL, NULL),
(324, 55, 104, NULL, NULL),
(325, 45, 103, NULL, NULL),
(326, 45, 104, NULL, NULL),
(327, 47, 103, NULL, NULL),
(328, 47, 104, NULL, NULL),
(329, 49, 103, NULL, NULL),
(330, 49, 104, NULL, NULL),
(331, 1, 105, NULL, NULL),
(332, 1, 106, NULL, NULL),
(333, 39, 105, NULL, NULL),
(334, 39, 106, NULL, NULL),
(335, 41, 105, NULL, NULL),
(336, 41, 106, NULL, NULL),
(337, 55, 105, NULL, NULL),
(338, 55, 106, NULL, NULL),
(339, 45, 105, NULL, NULL),
(340, 45, 106, NULL, NULL),
(341, 47, 105, NULL, NULL),
(342, 47, 106, NULL, NULL),
(343, 49, 105, NULL, NULL),
(344, 49, 106, NULL, NULL),
(345, 13, 107, NULL, NULL),
(346, 13, 108, NULL, NULL),
(347, 13, 109, NULL, NULL),
(348, 13, 110, NULL, NULL),
(349, 13, 111, NULL, NULL),
(350, 13, 112, NULL, NULL),
(351, 13, 113, NULL, NULL),
(352, 13, 114, NULL, NULL),
(353, 69, 115, NULL, NULL),
(354, 69, 116, NULL, NULL),
(355, 69, 117, NULL, NULL),
(356, 69, 118, NULL, NULL),
(357, 69, 119, NULL, NULL),
(358, 69, 120, NULL, NULL),
(359, 69, 121, NULL, NULL),
(360, 69, 122, NULL, NULL),
(361, 69, 123, NULL, NULL),
(362, 69, 124, NULL, NULL),
(363, 69, 125, NULL, NULL),
(364, 69, 126, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
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
-- Cấu trúc bảng cho bảng `contact`
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
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `phone`, `email`, `address`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:29:44', '2022-05-14 04:29:44'),
(2, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:31:45', '2022-05-14 04:31:45'),
(3, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:32:09', '2022-05-14 04:32:09'),
(4, 'Bui Tuan Viet', '0357176405', 'vietbt@vatgia.com', NULL, 'hello', '2022-05-14 04:32:39', '2022-05-14 04:32:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_mail`
--

CREATE TABLE `group_mail` (
  `group_mail_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_mail`
--

INSERT INTO `group_mail` (`group_mail_id`, `name`, `description`) VALUES
(1, 'Mail Order', 'Mail Order');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `infor_id` int(11) NOT NULL,
  `slug_type_input` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(65) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`infor_id`, `slug_type_input`, `content`, `language`, `updated_at`) VALUES
(74, 'logo-den', '/kcfinder-master/upload/images/Blvck_Paris_Black.png', 'en', NULL),
(73, 'logo-den', '/kcfinder-master/upload/images/Blvck_Paris_Black.png', 'vn', NULL),
(71, 'currency', 'đ', 'vn', NULL),
(72, 'currency', '$', 'en', NULL),
(69, 'ten-shop', 'blvck.com', 'vn', '2022-11-17 06:21:33'),
(70, 'ten-shop', 'blvck.com', 'en', '2022-11-17 15:07:14'),
(67, 'logo', '/kcfinder-master/upload/images/Blvck_Paris_White_900x.png', 'vn', '2022-11-17 06:21:14'),
(68, 'logo', '/kcfinder-master/upload/images/Blvck_Paris_White_900x.png', 'en', '2022-11-17 15:07:14'),
(66, 'icon', '/kcfinder-master/upload/images/Blvck_Paris_White_900x.png', 'en', '2022-11-17 15:07:14'),
(65, 'icon', '/kcfinder-master/upload/images/Blvck_Paris_White_900x.png', 'vn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `input`
--

CREATE TABLE `input` (
  `input_id` int(11) NOT NULL,
  `type_input_slug` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `input`
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
(836, 'link', 'http://shop.local/vn/y-logo-shorts-moonstruck-miami-fit', 50, '2022-05-14 09:07:08'),
(837, 'button-1', 'SHOP THE COLLECTION', 91, NULL),
(838, 'button-1', 'SHOP THE COLLECTION', 92, NULL),
(839, 'link-button-1', '#', 91, NULL),
(840, 'link-button-1', '#', 92, NULL),
(841, 'button-1', 'SHOP MEN', 93, NULL),
(842, 'button-1', 'SHOP MEN', 94, '2022-11-09 02:49:20'),
(843, 'link-button-1', '#', 93, NULL),
(844, 'link-button-1', NULL, 94, NULL),
(845, 'button-2', 'SHOP WOMEN', 93, NULL),
(846, 'button-2', 'SHOP WOMEN', 94, '2022-11-09 02:49:20'),
(847, 'link-button-2', '#', 93, NULL),
(848, 'link-button-2', NULL, 94, NULL),
(849, 'button-1', 'SHOP THE COLLAB', 95, NULL),
(850, 'button-1', 'SHOP THE COLLAB', 96, NULL),
(851, 'link-button-1', '#', 95, NULL),
(852, 'link-button-1', '#', 96, NULL),
(853, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 97, '2022-11-09 04:08:58'),
(854, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 98, '2022-11-09 04:08:44'),
(855, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 97, '2022-11-09 04:08:44'),
(856, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 98, '2022-11-09 04:08:44'),
(857, 'giam-gia', '3683000', 97, '2022-11-09 04:18:41'),
(858, 'giam-gia', '3.683.000', 98, '2022-11-09 04:08:44'),
(859, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 99, NULL),
(860, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 100, NULL),
(861, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 99, NULL),
(862, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 100, NULL),
(863, 'giam-gia', '3990000', 99, NULL),
(864, 'giam-gia', '3990000', 100, NULL),
(865, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 101, NULL),
(866, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 102, NULL),
(867, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 101, NULL),
(868, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 102, NULL),
(869, 'giam-gia', '4910000', 101, NULL),
(870, 'giam-gia', '4910000', 102, NULL),
(871, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 103, NULL),
(872, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 104, NULL),
(873, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 103, NULL),
(874, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 104, NULL),
(875, 'giam-gia', '5524000', 103, NULL),
(876, 'giam-gia', '5524000', 104, NULL),
(877, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 105, NULL),
(878, 'shipping-returns', 'Fast International Shipping\r\n\r\nShipments are fulfilled as soon as your order is verified, it may take up to 72 hours to process and ship your order during business days (Monday - Friday).\r\n\r\nAfter your order has been shipped, delivery time is 2-7 business days.\r\n\r\nTo ensure the best delivery service, we ship using the top carriers (DHL Express, Fedex)\r\n\r\n*Depending on your country, import/customs fees may be applied to your order.\r\n\r\nOrders are shipped via our warehouse based in Hong Kong. \r\n\r\nAll applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won\'t be refunded. \r\n\r\nReturns\r\n\r\nBlvck Paris accepts International returns. All fees are the responsibility of the customer. To return your product, please contact us at support@blvck.com.', 106, NULL),
(879, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 105, NULL),
(880, 'size-chart', '/kcfinder-master/upload/images/Product/hoodie_13bafc86-d339-4f24-ac85-989ca1e606bd.jpg', 106, NULL),
(881, 'giam-gia', '5524000', 105, NULL),
(882, 'giam-gia', '5524000', 106, NULL),
(883, 'button-1', 'SHOP MEN', 127, NULL),
(884, 'button-1', 'SHOP MEN', 128, NULL),
(885, 'link-button-1', '#', 127, NULL),
(886, 'link-button-1', '#', 128, NULL),
(887, 'button-2', 'SHOP WOMEN', 127, NULL),
(888, 'button-2', 'SHOP WOMEN', 128, NULL),
(889, 'link-button-2', '#', 127, NULL),
(890, 'link-button-2', '#', 128, NULL),
(891, 'sub-title', 'Winter Sale', 127, NULL),
(892, 'sub-title', 'Winter Sale', 128, NULL),
(893, 'button-1', 'Shop the collection', 129, NULL),
(894, 'button-1', 'Shop the collection', 130, NULL),
(895, 'link-button-1', '#', 129, NULL),
(896, 'link-button-1', '#', 130, NULL),
(897, 'button-2', NULL, 129, NULL),
(898, 'button-2', NULL, 130, NULL),
(899, 'link-button-2', NULL, 129, NULL),
(900, 'link-button-2', NULL, 130, NULL),
(901, 'sub-title', 'Bring the lifestyle home', 129, NULL),
(902, 'sub-title', 'Bring the lifestyle home', 130, NULL),
(903, 'link', NULL, 135, NULL),
(904, 'link', NULL, 136, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `acronym` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`language_id`, `language`, `acronym`, `created_at`, `updated_at`) VALUES
(1, 'Vietnamese', 'vn', NULL, '2018-03-21 06:46:01'),
(2, 'English', 'en', NULL, '2018-03-21 06:45:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_save`
--

CREATE TABLE `language_save` (
  `language_save_id` int(11) NOT NULL,
  `element_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_id` int(11) DEFAULT NULL,
  `element_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='		';

--
-- Đang đổ dữ liệu cho bảng `language_save`
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
(430, '77,78', 77, 'post'),
(436, '89,90', 89, 'post'),
(437, '91,92', 91, 'post'),
(438, '93,94', 93, 'post'),
(439, '95,96', 95, 'post'),
(440, '51,52', 51, 'category'),
(441, '53,54', 53, 'category'),
(442, '55,56', 55, 'category'),
(443, '57,58', 57, 'category'),
(444, '59,60', 59, 'category'),
(445, '61,62', 61, 'category'),
(446, '63,64', 63, 'category'),
(447, '97,98', 97, 'product'),
(448, '99,100', 99, 'product'),
(449, '101,102', 101, 'product'),
(450, '103,104', 103, 'product'),
(451, '105,106', 105, 'product'),
(452, '107,108', 107, 'post'),
(453, '109,110', 109, 'post'),
(454, '111,112', 111, 'post'),
(455, '113,114', 113, 'post'),
(456, '65,66', 65, 'category'),
(457, '67,68', 67, 'category'),
(458, '115,116', 115, 'post'),
(459, '69,70', 69, 'category'),
(460, '117,118', 117, 'post'),
(461, '119,120', 119, 'post'),
(462, '121,122', 121, 'post'),
(463, '123,124', 123, 'post'),
(464, '125,126', 125, 'post'),
(465, '127,128', 127, 'post'),
(466, '129,130', 129, 'post'),
(467, '131,132', 131, 'post'),
(468, '133,134', 133, 'post'),
(469, '135,136', 135, 'post'),
(470, '137,138', 137, 'post');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
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
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`menu_id`, `title`, `slug`, `location`, `image`, `created_at`, `updated_at`) VALUES
(5, 'Menu chính', 'menu-chinh', 'menu-chinh', NULL, NULL, NULL),
(6, 'Menu mobile', 'menu-mobile', 'menu-top-1', NULL, NULL, '2022-05-11 00:48:54'),
(7, 'Menu footer giữa', 'menu-footer', 'category-home-center', NULL, NULL, '2022-11-09 15:32:55'),
(8, 'Menu footer phải', 'menu-footer-phai', 'category-home-right', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_element`
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
-- Đang đổ dữ liệu cho bảng `menu_element`
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
(402, 'menu-chinh', 'http://blvck.local/en/menus/accessories', 'ACCESSORIES', 1, NULL, 'en', NULL, NULL),
(400, 'menu-chinh', 'http://blvck.local/en/menus/women', 'WOMEN', 1, NULL, 'en', NULL, NULL),
(401, 'menu-chinh', 'http://blvck.local/vn/menus/accessories', 'ACCESSORIES', 1, NULL, 'vn', NULL, NULL),
(399, 'menu-chinh', 'http://blvck.local/vn/menus/women', 'WOMEN', 1, NULL, 'vn', NULL, NULL),
(397, 'menu-chinh', 'http://blvck.local/vn/menus/outerwear', 'OUTERWEAR', 3, NULL, 'vn', NULL, NULL),
(398, 'menu-chinh', 'http://blvck.local/en/menus/outerwear', 'OUTERWEAR', 3, NULL, 'en', NULL, NULL),
(396, 'menu-chinh', 'http://blvck.local/en/menus/pants', 'PANTS', 3, NULL, 'en', NULL, NULL),
(394, 'menu-chinh', 'http://blvck.local/en/menus/hoodies-sweaters', 'HOODIES & SWEATERS', 3, NULL, 'en', NULL, NULL),
(395, 'menu-chinh', 'http://blvck.local/vn/menus/pants', 'PANTS', 3, NULL, 'vn', NULL, NULL),
(393, 'menu-chinh', 'http://blvck.local/vn/menus/hoodies-sweaters', 'HOODIES & SWEATERS', 3, NULL, 'vn', NULL, NULL),
(392, 'menu-chinh', 'http://blvck.local/en/menus/new-arrivals', 'NEW ARRIVALS', 3, NULL, 'en', NULL, NULL),
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
(429, 'menu-footer', 'http://blvck.local/vn/tin-tuc/faq', 'FAQ', 1, NULL, 'vn', NULL, NULL),
(427, 'menu-footer', 'http://blvck.local/vn/tin-tuc/shipping-information', 'Shipping Information', 1, NULL, 'vn', NULL, NULL),
(428, 'menu-footer', 'http://blvck.local/en/news/shipping-information-118', 'Shipping Information', 1, NULL, 'en', NULL, NULL),
(426, 'menu-footer', 'http://blvck.local/en/news/terms-of-service-120', 'Terms of service', 1, NULL, 'en', NULL, NULL),
(425, 'menu-footer', 'http://blvck.local/vn/tin-tuc/terms-of-service', 'Terms of service', 1, NULL, 'vn', NULL, NULL),
(423, 'menu-footer', 'http://blvck.local/vn/tin-tuc/return-policy', 'Return Policy', 1, NULL, 'vn', NULL, NULL),
(424, 'menu-footer', 'http://blvck.local/en/news/return-policy-116', 'Return Policy', 1, NULL, 'en', NULL, NULL),
(422, 'menu-footer', 'http://blvck.local/en/news/privacy-statement-122', 'Privacy Statement', 1, NULL, 'en', NULL, NULL),
(391, 'menu-chinh', 'http://blvck.local/vn/menus/new-arrivals', 'NEW ARRIVALS', 3, NULL, 'vn', NULL, NULL),
(390, 'menu-chinh', 'http://blvck.local/en/menus/accessories', 'ACCESSORIES', 2, NULL, 'en', NULL, NULL),
(389, 'menu-chinh', 'http://blvck.local/vn/menus/accessories', 'ACCESSORIES', 2, NULL, 'vn', NULL, NULL),
(388, 'menu-chinh', 'http://blvck.local/en/menus/lifestyle', 'LIFESTYLE', 3, NULL, 'en', NULL, NULL),
(387, 'menu-chinh', 'http://blvck.local/vn/menus/lifestyle', 'LIFESTYLE', 3, NULL, 'vn', NULL, NULL),
(386, 'menu-chinh', 'http://blvck.local/en/menus/high-tech', 'HIGH-TECH', 3, NULL, 'en', NULL, NULL),
(385, 'menu-chinh', 'http://blvck.local/vn/menus/high-tech', 'HIGH-TECH', 3, NULL, 'vn', NULL, NULL),
(384, 'menu-chinh', 'http://blvck.local/en/menus/bags-leather', 'BAGS & LEATHER', 3, NULL, 'en', NULL, NULL),
(383, 'menu-chinh', 'http://blvck.local/vn/menus/bags-leather', 'BAGS & LEATHER', 3, NULL, 'vn', NULL, NULL),
(382, 'menu-chinh', 'http://blvck.local/en/menus/new-arrivals', 'NEW ARRIVALS', 3, NULL, 'en', NULL, NULL),
(381, 'menu-chinh', 'http://blvck.local/vn/menus/new-arrivals', 'NEW ARRIVALS', 3, NULL, 'vn', NULL, NULL),
(380, 'menu-chinh', 'http://blvck.local/en/menus/ready-to-wear', 'READY-TO-WEAR', 2, NULL, 'en', NULL, NULL),
(379, 'menu-chinh', 'http://blvck.local/vn/menus/ready-to-wear', 'READY-TO-WEAR', 2, NULL, 'vn', NULL, NULL),
(378, 'menu-chinh', 'http://blvck.local/en/menus/men', 'MEN', 1, NULL, 'en', NULL, NULL),
(377, 'menu-chinh', 'http://blvck.local/vn/menus/men', 'MEN', 1, NULL, 'vn', NULL, NULL),
(403, 'menu-chinh', NULL, 'BLVCK Home', 1, NULL, 'vn', NULL, NULL),
(404, 'menu-chinh', NULL, 'BLVCK Home', 1, NULL, 'en', NULL, NULL),
(405, 'menu-chinh', 'http://blvck.local/vn/menus/whte', 'WHTE', 1, NULL, 'vn', NULL, NULL),
(406, 'menu-chinh', 'http://blvck.local/en/menus/whte', 'WHTE', 1, NULL, 'en', NULL, NULL),
(407, 'menu-chinh', 'http://blvck.local/vn/menus/men', 'MEN', 2, NULL, 'vn', NULL, NULL),
(408, 'menu-chinh', 'http://blvck.local/en/menus/men', 'MEN', 2, NULL, 'en', NULL, NULL),
(409, 'menu-chinh', 'http://blvck.local/vn/menus/women', 'WOMEN', 2, NULL, 'vn', NULL, NULL),
(410, 'menu-chinh', 'http://blvck.local/en/menus/women', 'WOMEN', 2, NULL, 'en', NULL, NULL),
(421, 'menu-footer', 'http://blvck.local/vn/tin-tuc/privacy-statement', 'Privacy Statement', 1, NULL, 'vn', NULL, NULL),
(430, 'menu-footer', 'http://blvck.local/en/news/faq-124', 'FAQ', 1, NULL, 'en', NULL, NULL),
(437, 'menu-footer-phai', NULL, 'Contact', 1, NULL, 'vn', NULL, NULL),
(436, 'menu-footer-phai', 'http://blvck.local/en/news/about-us-126', 'About Us', 1, NULL, 'en', NULL, NULL),
(435, 'menu-footer-phai', 'http://blvck.local/vn/tin-tuc/about-us', 'About Us', 1, NULL, 'vn', NULL, NULL),
(438, 'menu-footer-phai', NULL, 'Contact', 1, NULL, 'en', NULL, NULL),
(439, 'menu-footer-phai', 'http://blvck.local/vn/danh-muc/blog', 'Blog', 1, NULL, 'vn', NULL, NULL),
(440, 'menu-footer-phai', 'http://blvck.local/en/danh-muc/blog', 'Blog', 1, NULL, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
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
-- Đang đổ dữ liệu cho bảng `orders`
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
-- Cấu trúc bảng cho bảng `order_bank`
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
-- Cấu trúc bảng cho bảng `order_code_sale`
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
-- Cấu trúc bảng cho bảng `order_items`
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
-- Đang đổ dữ liệu cho bảng `order_items`
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
-- Cấu trúc bảng cho bảng `order_ship`
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
-- Cấu trúc bảng cho bảng `posts`
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
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(130, 'BLVCK HOME', NULL, '', 'default', NULL, 'blvck-home-130', '1', NULL, '/kcfinder-master/upload/images/Home_8060a3f8-beff-4f61-ba4b-6c4602cefc55.jpg', 'banner', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:09:22'),
(129, 'BLVCK HOME', NULL, '', 'default', NULL, 'blvck-home-129', '1', NULL, '/kcfinder-master/upload/images/Home_8060a3f8-beff-4f61-ba4b-6c4602cefc55.jpg', 'banner', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:09:22'),
(128, 'READY-TO-WEAR', NULL, '', 'default', NULL, 'ready-to-wear-128', '1', NULL, '/kcfinder-master/upload/images/lifestyle05-desktop_2100x.jpg', 'banner', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:00:32'),
(127, 'READY-TO-WEAR', NULL, '', 'default', NULL, 'ready-to-wear', '1', NULL, '/kcfinder-master/upload/images/lifestyle05-desktop_2100x.jpg', 'banner', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:00:32'),
(126, 'About Us', NULL, '<p>Blvck Paris&nbsp;is a lifestyle apparel &amp; accessories brand, supported by millions of highly engaged social media followers and customers worldwide.<br />\r\n<br />\r\nThe brand was founded in 2017 by French designer, Julian O&rsquo;hayon and is known for its &#39;All Black&#39; clothing, accessories and leather goods for men and women.<br />\r\n<br />\r\nFrom visual content to merchandise, we strive to pioneer a new type of lifestyle focused on quality and design. The &#39;All Black Lifestyle&#39; is a culture shift to live life on your own terms free from vanity. The generic styles of traditional fashion have become obsolete, it&#39;s time to Blvckout your life.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Get In Touch&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<a href=\"https://www.instagram.com/black/\" title=\"Instagram\">Instagram</a>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/getblvck/\" title=\"Facebook\">- Facebook&nbsp;</a></p>\r\n\r\n<p><a href=\"https://www.pinterest.co.uk/blvck_paris/\" title=\"Pinterest\">- Pinterest&nbsp;</a></p>\r\n\r\n<h3>For PR Enquiries</h3>\r\n\r\n<p>POP LA | 8166 Melrose Ave, West Hollywood</p>\r\n\r\n<p>t:&nbsp;001 323 694 6267 |&nbsp;<a href=\"mailto:hello@thepop.group\" rel=\"noopener noreferrer\" target=\"_blank\">hello@thepop.group</a></p>', 'default', NULL, 'about-us-126', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:35:12', '2022-11-09 15:35:12'),
(125, 'About Us', NULL, '<p>Blvck Paris&nbsp;is a lifestyle apparel &amp; accessories brand, supported by millions of highly engaged social media followers and customers worldwide.<br />\r\n<br />\r\nThe brand was founded in 2017 by French designer, Julian O&rsquo;hayon and is known for its &#39;All Black&#39; clothing, accessories and leather goods for men and women.<br />\r\n<br />\r\nFrom visual content to merchandise, we strive to pioneer a new type of lifestyle focused on quality and design. The &#39;All Black Lifestyle&#39; is a culture shift to live life on your own terms free from vanity. The generic styles of traditional fashion have become obsolete, it&#39;s time to Blvckout your life.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Get In Touch&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;<a href=\"https://www.instagram.com/black/\" title=\"Instagram\">Instagram</a>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/getblvck/\" title=\"Facebook\">- Facebook&nbsp;</a></p>\r\n\r\n<p><a href=\"https://www.pinterest.co.uk/blvck_paris/\" title=\"Pinterest\">- Pinterest&nbsp;</a></p>\r\n\r\n<h3>For PR Enquiries</h3>\r\n\r\n<p>POP LA | 8166 Melrose Ave, West Hollywood</p>\r\n\r\n<p>t:&nbsp;001 323 694 6267 |&nbsp;<a href=\"mailto:hello@thepop.group\" rel=\"noopener noreferrer\" target=\"_blank\">hello@thepop.group</a></p>', 'default', NULL, 'about-us', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:35:12', '2022-11-09 15:35:12'),
(124, 'FAQ', NULL, '<h1>Orders</h1>\r\n\r\n<h4>How to place an order?</h4>\r\n\r\n<p>Select the desired product and ADD TO CART. You can continue shopping or EDIT BAG and then Proceed to Checkout. At checkout, you can either log into your account, create an account or checkout as a guest.</p>\r\n\r\n<h4>How fast will my order be processed &ndash; for international orders</h4>\r\n\r\n<p>Orders placed on weekdays will be processed within 1-3 business days after the order is placed. Please note that we do not process, ship orders on Saturdays and Sundays or on Holidays. Business days are Mondays through Fridays, excluding holidays.</p>\r\n\r\n<p>Orders may be subject to customs clearance, which may cause delays beyond provided delivery estimates.</p>\r\n\r\n<p>All applicable custom fees, taxes and duties are the sole responsibility of the customer. Customs authorities require that we state the value of the order directly on your package. It is at the sole discretion of customs agents to release your package.</p>\r\n\r\n<p>If your order takes longer, please email us at&nbsp;<a href=\"mailto:support@blvck.com\">support@blvck.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Can I cancel or change my order?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We process and complete orders as quickly as possible. If you have any modification requests or need to cancel, please contact immediately after placing your order at support@blvck.com. We cannot guarantee that we will be able to cancel or modify, but we will try our best to accommodate all requests.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>What to do if a product is sold out?</h4>\r\n\r\n<p>For products that are sold out, please find the &lsquo;notify me when available&rsquo; button on the product pages and add your e-mail address to the Waitlist. Once the product is back in stock, you will be notified via e-mail.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>I received my order and an item was damaged.</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If the product received is damaged, we can help. Please e-mail photos of the damaged products, a brief description of the damage, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>The items from my package are missing. What should I do?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>First, please check the package carefully.</strong></p>\r\n\r\n<p>In most cases, the items might still be in the box. Before you get worried that some items are missing from your parcel, make sure you have thoroughly checked the packing materials. In some cases, some items are shipped separately and you would receive different tracking numbers if it is the case.</p>\r\n\r\n<p><strong>Second, contact us</strong></p>\r\n\r\n<p>If a product is missing, we can help. Please e-mail photos of the shipping label and the box with the items received, a brief description of the situation, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>You can tell us about your missing item within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or reship.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How is my credit card information saved?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We do not store any of your credit card information on our website. We use Stripe Payments, a reputable and secure payment processor available, for processing all of our online transactions.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h1>Shipping</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>What shipping options do you have?</h4>\r\n\r\n<ul>\r\n	<li>Shipments are fulfilled&nbsp;as soon as your order is verified, it may take up to&nbsp;72 hours to process and ship your order&nbsp;during business days (Monday - Friday).</li>\r\n	<li>After your order has been shipped, delivery time is 2-7 business days. Please keep in mind that during holidays or limited edition launches, this time may vary.&nbsp;</li>\r\n	<li>To ensure the best delivery service, we ship using the top carriers (DHL Express,&nbsp;Fedex)</li>\r\n</ul>\r\n\r\n<h4>What countries do you deliver to?</h4>\r\n\r\n<p>We ship worldwide.&nbsp;</p>\r\n\r\n<h1>Returns &amp; Exchanges</h1>\r\n\r\n<h4>What is your return policy?</h4>\r\n\r\n<p>You can return your order within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or exchange.&nbsp;</p>\r\n\r\n<p>To be eligible for a return, the product must be unused and in the same condition that you received it. It must also be in the original packaging and the tag must be attached.</p>\r\n\r\n<p>Several types of goods are exempt from being returned. Perishable goods and personal care items i.e. soaps, other cosmetics and face masks cannot be returned. We also do not accept returns of products that are intimate, sanitary goods or hazardous materials i.e. condoms. &nbsp;Digital goods cannot be returned due to the nature of the product.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I make a return?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To return your product, you should contact our support at&nbsp;<a href=\"mailto:support@blvck.com\">support@blvck.com</a>&nbsp;and they will assist you with your return. Please state the reason of your return in your email and your order number.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I make an exchange?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you need to exchange a product, send us an email at&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>&nbsp;with your enquiry.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I get a refund?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\r\n\r\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n\r\n<p>Once you have received an email from us confirming your refund, please allow 2-7 business days for the money to reach your account.</p>', 'default', NULL, 'faq-124', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:31:47', '2022-11-09 15:31:47'),
(120, 'Terms of service', NULL, '<p><strong>OVERVIEW</strong>&nbsp;<br />\r\nThis website is operated by Blvck SRL. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to Blvck SRL. Blvck SRL offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.&nbsp;<br />\r\n<br />\r\nBy visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.&nbsp;<br />\r\n<br />\r\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.&nbsp;<br />\r\n<br />\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.&nbsp;<br />\r\n<br />\r\nOur store is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 1 - ONLINE STORE TERMS</strong>&nbsp;<br />\r\nBy agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use the Site.&nbsp;<br />\r\nYou may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).&nbsp;<br />\r\nYou must not transmit any worms or viruses or any code of a destructive nature.&nbsp;<br />\r\nA breach or violation of any of the Terms will result in an immediate termination of your Services.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 2 - GENERAL CONDITIONS</strong>&nbsp;<br />\r\nWe reserve the right to refuse service to anyone for any reason at any time.&nbsp;<br />\r\nYou understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.&nbsp;<br />\r\nYou agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.&nbsp;<br />\r\nThe headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</strong>&nbsp;<br />\r\nWe are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.&nbsp;<br />\r\nThis site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES</strong>&nbsp;<br />\r\nPrices for our products are subject to change without notice.&nbsp;<br />\r\nWe reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.&nbsp;<br />\r\nWe shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 5 - PRODUCTS OR SERVICES</strong><br />\r\nCertain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.&nbsp;<br />\r\nWe have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor&#39;s display of any color will be accurate.&nbsp;<br />\r\nWe reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.&nbsp;<br />\r\nWe do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 6 - ACCURACY OF BILLING AND ACCOUNT INFORMATION</strong>&nbsp;<br />\r\nWe reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e‑mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.&nbsp;<br />\r\n<br />\r\nYou agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.&nbsp;<br />\r\n<br />\r\nFor more detail, please review our Returns Policy.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 7 - OPTIONAL TOOLS</strong>&nbsp;<br />\r\nWe may provide you with access to third-party tools over which we neither monitor nor have any control nor input.&nbsp;<br />\r\nYou acknowledge and agree that we provide access to such tools &rdquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.&nbsp;<br />\r\nAny use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).&nbsp;<br />\r\nWe may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 8 - THIRD-PARTY LINKS</strong>&nbsp;<br />\r\nCertain content, products and services available via our Service may include materials from third-parties.&nbsp;<br />\r\nThird-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.&nbsp;<br />\r\nWe are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party&#39;s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 9 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</strong>&nbsp;<br />\r\nIf, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, &#39;comments&#39;), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.&nbsp;<br />\r\nWe may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.&nbsp;<br />\r\nYou agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e‑mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 10 - PERSONAL INFORMATION</strong>&nbsp;<br />\r\nYour submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 11 - ERRORS, INACCURACIES AND OMISSIONS</strong>&nbsp;<br />\r\nOccasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).&nbsp;<br />\r\nWe undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 12 - PROHIBITED USES</strong>&nbsp;<br />\r\nIn addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 13 - DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</strong>&nbsp;<br />\r\nWe do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.&nbsp;<br />\r\nWe do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.&nbsp;<br />\r\nYou agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.&nbsp;<br />\r\nYou expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided &#39;as is&#39; and &#39;as available&#39; for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.&nbsp;<br />\r\nIn no case shall Blvck SRL, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 14 - INDEMNIFICATION</strong>&nbsp;<br />\r\nYou agree to indemnify, defend and hold harmless Blvck SRL and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 15 - SEVERABILITY</strong>&nbsp;<br />\r\nIn the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 16 - TERMINATION</strong>&nbsp;<br />\r\nThe obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.&nbsp;<br />\r\nThese Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.&nbsp;<br />\r\nIf in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).&nbsp;<br />\r\n<br />\r\n<strong>SECTION 17 - ENTIRE AGREEMENT</strong>&nbsp;<br />\r\nThe failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.&nbsp;<br />\r\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).&nbsp;<br />\r\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 18 - GOVERNING LAW</strong>&nbsp;<br />\r\nThese Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of Belgium.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 19 - CHANGES TO TERMS OF SERVICE</strong>&nbsp;<br />\r\nYou can review the most current version of the Terms of Service at any time at this page.&nbsp;<br />\r\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 20 - CONTACT INFORMATION</strong>&nbsp;<br />\r\nQuestions about the Terms of Service should be sent to us at support@blvck.com.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>', 'default', NULL, 'terms-of-service-120', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:30:39', '2022-11-09 15:30:39'),
(121, 'Privacy Statement', NULL, '<p>&nbsp;</p>\r\n\r\n<p>This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from blvck.com (the &ldquo;Site&rdquo;).&nbsp;<br />\r\n<br />\r\n<strong>Personal information we collect</strong>&nbsp;<br />\r\nWhen you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as &ldquo;Device Information&rdquo;.&nbsp;<br />\r\n<br />\r\nWe collect Device Information using the following technologies:&nbsp;<br />\r\n- &ldquo;Cookies&rdquo; are data files that are placed on your device or computer and often include an anonymous unique identifier. For more information about cookies, and how to disable cookies, visit http://www.allaboutcookies.org.&nbsp;<br />\r\n- &ldquo;Log files&rdquo; track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.&nbsp;<br />\r\n- &ldquo;Web beacons&rdquo;, &ldquo;tags&rdquo;, and &ldquo;pixels&rdquo; are electronic files used to record information about how you browse the Site.&nbsp;<br />\r\n<br />\r\nAdditionally when you make a purchase or attempt to make a purchase through the Site, we collect certain information from you, including your name, billing address, shipping address, payment information (including credit card numbers, email address, and phone number. We refer to this information as &ldquo;Order Information&rdquo;.&nbsp;<br />\r\n<br />\r\nWhen we talk about &ldquo;Personal Information&rdquo; in this Privacy Policy, we are talking both about Device Information and Order Information.&nbsp;<br />\r\n<br />\r\n<strong>How do we use your personal information?</strong>&nbsp;<br />\r\nWe use the Order Information that we collect generally to fulfill any orders placed through the Site (including processing your payment information, arranging for shipping, and providing you with invoices and/or order confirmations). Additionally, we use this Order Information to:&nbsp;<br />\r\n- Communicate with you;&nbsp;<br />\r\n- Screen our orders for potential risk or fraud; and&nbsp;<br />\r\n- When in line with the preferences you have shared with us, provide you with information or advertising relating to our products or services.&nbsp;<br />\r\n<br />\r\nWe use the Device Information that we collect to help us screen for potential risk and fraud (in particular, your IP address), and more generally to improve and optimize our Site (for example, by generating analytics about how our customers browse and interact with the Site, and to assess the success of our marketing and advertising campaigns).&nbsp;<br />\r\n<br />\r\n<strong>Sharing your personal Information</strong>&nbsp;<br />\r\nWe share your Personal Information with third parties to help us use your Personal Information, as described above. For example, we use Shopify to power our online store--you can read more about how Shopify uses your Personal Information here: https://www.shopify.com/legal/privacy. We also use Google Analytics to help us understand how our customers use the Site -- you can read more about how Google uses your Personal Information here: https://www.google.com/intl/en/policies/privacy/. You can also opt-out of Google Analytics here: https://tools.google.com/dlpage/gaoptout.&nbsp;<br />\r\n<br />\r\nFinally, we may also share your Personal Information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to otherwise protect our rights.&nbsp;<br />\r\n<br />\r\n<strong>Behavioural advertising</strong>&nbsp;<br />\r\nAs described above, we use your Personal Information to provide you with targeted advertisements or marketing communications we believe may be of interest to you. For more information about how targeted advertising works, you can visit the Network Advertising Initiative&rsquo;s (&ldquo;NAI&rdquo;) educational page at http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work.&nbsp;<br />\r\n<br />\r\nYou can opt out of targeted advertising by using the links below:&nbsp;<br />\r\n- Facebook: https://www.facebook.com/settings/?tab=ads&nbsp;<br />\r\n- Google: https://www.google.com/settings/ads/anonymous&nbsp;<br />\r\n- Bing: https://advertise.bingads.microsoft.com/en-us/resources/policies/personalized-ads&nbsp;<br />\r\n<br />\r\nAdditionally, you can opt out of some of these services by visiting the Digital Advertising Alliance&rsquo;s opt-out portal at: http://optout.aboutads.info/.&nbsp;<br />\r\n<br />\r\n<strong>Do not track</strong>&nbsp;<br />\r\nPlease note that we do not alter our Site&rsquo;s data collection and use practices when we see a Do Not Track signal from your browser.&nbsp;<br />\r\n<br />\r\n<strong>Your rights</strong>&nbsp;<br />\r\nIf you are a European resident, you have the right to access personal information we hold about you and to ask that your personal information be corrected, updated, or deleted. If you would like to exercise this right, please contact us through the contact information below.&nbsp;<br />\r\n<br />\r\nAdditionally, if you are a European resident we note that we are processing your information in order to fulfill contracts we might have with you (for example if you make an order through the Site), or otherwise to pursue our legitimate business interests listed above. Additionally, please note that your information will be transferred outside of Europe, including to Canada and the United States.&nbsp;<br />\r\n<br />\r\n<strong>Data retention</strong>&nbsp;<br />\r\nWhen you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.&nbsp;<br />\r\n<br />\r\n<strong>Changes</strong>&nbsp;<br />\r\nWe may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.&nbsp;<br />\r\n<br />\r\n<strong>Minors</strong>&nbsp;<br />\r\nBy using this site, you warrant that you are of a minimum required age in your state, province or residence to access this site, or that you consent for any minor dependents to use the Site.&nbsp;<br />\r\n<br />\r\n<strong>Contact us</strong>&nbsp;<br />\r\nFor more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e‑mail at support@blvck.com or by mail using the details provided below:&nbsp;<br />\r\n<br />\r\nBlvck SRL&nbsp;<br />\r\n[Re: Privacy Compliance Officer]&nbsp;<br />\r\nBlvck SRL, 150 Chaussee de la Hulpe, 1170 Brussels, Belgium</p>', 'default', NULL, 'privacy-statement', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:31:08', '2022-11-09 15:31:08'),
(122, 'Privacy Statement', NULL, '<p>&nbsp;</p>\r\n\r\n<p>This Privacy Policy describes how your personal information is collected, used, and shared when you visit or make a purchase from blvck.com (the &ldquo;Site&rdquo;).&nbsp;<br />\r\n<br />\r\n<strong>Personal information we collect</strong>&nbsp;<br />\r\nWhen you visit the Site, we automatically collect certain information about your device, including information about your web browser, IP address, time zone, and some of the cookies that are installed on your device. Additionally, as you browse the Site, we collect information about the individual web pages or products that you view, what websites or search terms referred you to the Site, and information about how you interact with the Site. We refer to this automatically-collected information as &ldquo;Device Information&rdquo;.&nbsp;<br />\r\n<br />\r\nWe collect Device Information using the following technologies:&nbsp;<br />\r\n- &ldquo;Cookies&rdquo; are data files that are placed on your device or computer and often include an anonymous unique identifier. For more information about cookies, and how to disable cookies, visit http://www.allaboutcookies.org.&nbsp;<br />\r\n- &ldquo;Log files&rdquo; track actions occurring on the Site, and collect data including your IP address, browser type, Internet service provider, referring/exit pages, and date/time stamps.&nbsp;<br />\r\n- &ldquo;Web beacons&rdquo;, &ldquo;tags&rdquo;, and &ldquo;pixels&rdquo; are electronic files used to record information about how you browse the Site.&nbsp;<br />\r\n<br />\r\nAdditionally when you make a purchase or attempt to make a purchase through the Site, we collect certain information from you, including your name, billing address, shipping address, payment information (including credit card numbers, email address, and phone number. We refer to this information as &ldquo;Order Information&rdquo;.&nbsp;<br />\r\n<br />\r\nWhen we talk about &ldquo;Personal Information&rdquo; in this Privacy Policy, we are talking both about Device Information and Order Information.&nbsp;<br />\r\n<br />\r\n<strong>How do we use your personal information?</strong>&nbsp;<br />\r\nWe use the Order Information that we collect generally to fulfill any orders placed through the Site (including processing your payment information, arranging for shipping, and providing you with invoices and/or order confirmations). Additionally, we use this Order Information to:&nbsp;<br />\r\n- Communicate with you;&nbsp;<br />\r\n- Screen our orders for potential risk or fraud; and&nbsp;<br />\r\n- When in line with the preferences you have shared with us, provide you with information or advertising relating to our products or services.&nbsp;<br />\r\n<br />\r\nWe use the Device Information that we collect to help us screen for potential risk and fraud (in particular, your IP address), and more generally to improve and optimize our Site (for example, by generating analytics about how our customers browse and interact with the Site, and to assess the success of our marketing and advertising campaigns).&nbsp;<br />\r\n<br />\r\n<strong>Sharing your personal Information</strong>&nbsp;<br />\r\nWe share your Personal Information with third parties to help us use your Personal Information, as described above. For example, we use Shopify to power our online store--you can read more about how Shopify uses your Personal Information here: https://www.shopify.com/legal/privacy. We also use Google Analytics to help us understand how our customers use the Site -- you can read more about how Google uses your Personal Information here: https://www.google.com/intl/en/policies/privacy/. You can also opt-out of Google Analytics here: https://tools.google.com/dlpage/gaoptout.&nbsp;<br />\r\n<br />\r\nFinally, we may also share your Personal Information to comply with applicable laws and regulations, to respond to a subpoena, search warrant or other lawful request for information we receive, or to otherwise protect our rights.&nbsp;<br />\r\n<br />\r\n<strong>Behavioural advertising</strong>&nbsp;<br />\r\nAs described above, we use your Personal Information to provide you with targeted advertisements or marketing communications we believe may be of interest to you. For more information about how targeted advertising works, you can visit the Network Advertising Initiative&rsquo;s (&ldquo;NAI&rdquo;) educational page at http://www.networkadvertising.org/understanding-online-advertising/how-does-it-work.&nbsp;<br />\r\n<br />\r\nYou can opt out of targeted advertising by using the links below:&nbsp;<br />\r\n- Facebook: https://www.facebook.com/settings/?tab=ads&nbsp;<br />\r\n- Google: https://www.google.com/settings/ads/anonymous&nbsp;<br />\r\n- Bing: https://advertise.bingads.microsoft.com/en-us/resources/policies/personalized-ads&nbsp;<br />\r\n<br />\r\nAdditionally, you can opt out of some of these services by visiting the Digital Advertising Alliance&rsquo;s opt-out portal at: http://optout.aboutads.info/.&nbsp;<br />\r\n<br />\r\n<strong>Do not track</strong>&nbsp;<br />\r\nPlease note that we do not alter our Site&rsquo;s data collection and use practices when we see a Do Not Track signal from your browser.&nbsp;<br />\r\n<br />\r\n<strong>Your rights</strong>&nbsp;<br />\r\nIf you are a European resident, you have the right to access personal information we hold about you and to ask that your personal information be corrected, updated, or deleted. If you would like to exercise this right, please contact us through the contact information below.&nbsp;<br />\r\n<br />\r\nAdditionally, if you are a European resident we note that we are processing your information in order to fulfill contracts we might have with you (for example if you make an order through the Site), or otherwise to pursue our legitimate business interests listed above. Additionally, please note that your information will be transferred outside of Europe, including to Canada and the United States.&nbsp;<br />\r\n<br />\r\n<strong>Data retention</strong>&nbsp;<br />\r\nWhen you place an order through the Site, we will maintain your Order Information for our records unless and until you ask us to delete this information.&nbsp;<br />\r\n<br />\r\n<strong>Changes</strong>&nbsp;<br />\r\nWe may update this privacy policy from time to time in order to reflect, for example, changes to our practices or for other operational, legal or regulatory reasons.&nbsp;<br />\r\n<br />\r\n<strong>Minors</strong>&nbsp;<br />\r\nBy using this site, you warrant that you are of a minimum required age in your state, province or residence to access this site, or that you consent for any minor dependents to use the Site.&nbsp;<br />\r\n<br />\r\n<strong>Contact us</strong>&nbsp;<br />\r\nFor more information about our privacy practices, if you have questions, or if you would like to make a complaint, please contact us by e‑mail at support@blvck.com or by mail using the details provided below:&nbsp;<br />\r\n<br />\r\nBlvck SRL&nbsp;<br />\r\n[Re: Privacy Compliance Officer]&nbsp;<br />\r\nBlvck SRL, 150 Chaussee de la Hulpe, 1170 Brussels, Belgium</p>', 'default', NULL, 'privacy-statement-122', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:31:08', '2022-11-09 15:31:08');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(123, 'FAQ', NULL, '<h1>Orders</h1>\r\n\r\n<h4>How to place an order?</h4>\r\n\r\n<p>Select the desired product and ADD TO CART. You can continue shopping or EDIT BAG and then Proceed to Checkout. At checkout, you can either log into your account, create an account or checkout as a guest.</p>\r\n\r\n<h4>How fast will my order be processed &ndash; for international orders</h4>\r\n\r\n<p>Orders placed on weekdays will be processed within 1-3 business days after the order is placed. Please note that we do not process, ship orders on Saturdays and Sundays or on Holidays. Business days are Mondays through Fridays, excluding holidays.</p>\r\n\r\n<p>Orders may be subject to customs clearance, which may cause delays beyond provided delivery estimates.</p>\r\n\r\n<p>All applicable custom fees, taxes and duties are the sole responsibility of the customer. Customs authorities require that we state the value of the order directly on your package. It is at the sole discretion of customs agents to release your package.</p>\r\n\r\n<p>If your order takes longer, please email us at&nbsp;<a href=\"mailto:support@blvck.com\">support@blvck.com</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Can I cancel or change my order?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We process and complete orders as quickly as possible. If you have any modification requests or need to cancel, please contact immediately after placing your order at support@blvck.com. We cannot guarantee that we will be able to cancel or modify, but we will try our best to accommodate all requests.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>What to do if a product is sold out?</h4>\r\n\r\n<p>For products that are sold out, please find the &lsquo;notify me when available&rsquo; button on the product pages and add your e-mail address to the Waitlist. Once the product is back in stock, you will be notified via e-mail.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>I received my order and an item was damaged.</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If the product received is damaged, we can help. Please e-mail photos of the damaged products, a brief description of the damage, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>The items from my package are missing. What should I do?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>First, please check the package carefully.</strong></p>\r\n\r\n<p>In most cases, the items might still be in the box. Before you get worried that some items are missing from your parcel, make sure you have thoroughly checked the packing materials. In some cases, some items are shipped separately and you would receive different tracking numbers if it is the case.</p>\r\n\r\n<p><strong>Second, contact us</strong></p>\r\n\r\n<p>If a product is missing, we can help. Please e-mail photos of the shipping label and the box with the items received, a brief description of the situation, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>You can tell us about your missing item within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or reship.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How is my credit card information saved?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We do not store any of your credit card information on our website. We use Stripe Payments, a reputable and secure payment processor available, for processing all of our online transactions.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h1>Shipping</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>What shipping options do you have?</h4>\r\n\r\n<ul>\r\n	<li>Shipments are fulfilled&nbsp;as soon as your order is verified, it may take up to&nbsp;72 hours to process and ship your order&nbsp;during business days (Monday - Friday).</li>\r\n	<li>After your order has been shipped, delivery time is 2-7 business days. Please keep in mind that during holidays or limited edition launches, this time may vary.&nbsp;</li>\r\n	<li>To ensure the best delivery service, we ship using the top carriers (DHL Express,&nbsp;Fedex)</li>\r\n</ul>\r\n\r\n<h4>What countries do you deliver to?</h4>\r\n\r\n<p>We ship worldwide.&nbsp;</p>\r\n\r\n<h1>Returns &amp; Exchanges</h1>\r\n\r\n<h4>What is your return policy?</h4>\r\n\r\n<p>You can return your order within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or exchange.&nbsp;</p>\r\n\r\n<p>To be eligible for a return, the product must be unused and in the same condition that you received it. It must also be in the original packaging and the tag must be attached.</p>\r\n\r\n<p>Several types of goods are exempt from being returned. Perishable goods and personal care items i.e. soaps, other cosmetics and face masks cannot be returned. We also do not accept returns of products that are intimate, sanitary goods or hazardous materials i.e. condoms. &nbsp;Digital goods cannot be returned due to the nature of the product.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I make a return?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To return your product, you should contact our support at&nbsp;<a href=\"mailto:support@blvck.com\">support@blvck.com</a>&nbsp;and they will assist you with your return. Please state the reason of your return in your email and your order number.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I make an exchange?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you need to exchange a product, send us an email at&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>&nbsp;with your enquiry.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>How do I get a refund?</h4>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\r\n\r\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\r\n\r\n<p>Once you have received an email from us confirming your refund, please allow 2-7 business days for the money to reach your account.</p>', 'default', NULL, 'faq', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:31:47', '2022-11-09 15:31:47'),
(115, 'Return Policy', NULL, '<h1>Return Policy</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><strong>International&nbsp;Returns</strong></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Blvck Paris accepts International returns. All fees are the responsibility of the customer.</p>\r\n\r\n<p>To return your product, please contact us at support@blvck.com&nbsp;and someone from our support service will review and get back to you shortly with an unpaid return label if your claim is approved.&nbsp;</p>\r\n\r\n<p><strong><strong>International&nbsp;Exchanges</strong></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Blvck Paris does not offer exchanges on International orders.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h3>Questions?</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you have any questions or concerns, please contact us at&nbsp;support@blvck.com</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Refunds</strong><br />\r\n<br />\r\nOnce your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.&nbsp;<br />\r\nIf you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.&nbsp;<br />\r\n<br />\r\n<strong>Late or missing refunds</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Once you have received an email from us confirming your refund, please allow 2-7 business days for the money to reach your account, &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Missing Items</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>First, please check the package carefully.</p>\r\n\r\n<p>In most cases, the items might still be in the box. Before you get worried that some items are missing from your parcel, make sure you have thoroughly checked the packing materials. In some cases, some items are shipped separately and you would receive different tracking numbers if it is the case.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Second, contact us</p>\r\n\r\n<p>If a product is missing, we can help. Please e-mail photos of the shipping label and the box with the items received, a brief description of the situation, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>You can tell us about your missing item within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or reship.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lost Packages</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are&nbsp;not liable for any misplaced or stolen packages. If your tracking number reads as successfully shipped and the address provided to us upon checkout matches the exact address we have shipped your order to, we are not held responsible if your package has been misplaced. Stolen / lost packages are nonrefundable. If you have any questions, please contact us at support@blvck.com&nbsp;and we will try our best to assist you with this matter.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Can I cancel/amend my order after I&#39;ve placed it?</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>If your order is placed on a week day, our warehouse is really quick at packing your order up which means we can&#39;t make any changes or cancel it once you&#39;ve placed it. This includes changing the delivery option, delivery address or payment method.</p>\r\n\r\n<p>If your order is placed on a weekend or a bank holiday, you may be able to cancel your order and place a new one instead if informed within 24 hours of placing your order.</p>', 'default', NULL, 'return-policy', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:29:34', '2022-11-09 15:29:34'),
(116, 'Return Policy', NULL, '<h1>Return Policy</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><strong>International&nbsp;Returns</strong></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Blvck Paris accepts International returns. All fees are the responsibility of the customer.</p>\r\n\r\n<p>To return your product, please contact us at support@blvck.com&nbsp;and someone from our support service will review and get back to you shortly with an unpaid return label if your claim is approved.&nbsp;</p>\r\n\r\n<p><strong><strong>International&nbsp;Exchanges</strong></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Blvck Paris does not offer exchanges on International orders.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<h3>Questions?</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you have any questions or concerns, please contact us at&nbsp;support@blvck.com</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Refunds</strong><br />\r\n<br />\r\nOnce your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.&nbsp;<br />\r\nIf you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.&nbsp;<br />\r\n<br />\r\n<strong>Late or missing refunds</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Once you have received an email from us confirming your refund, please allow 2-7 business days for the money to reach your account, &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Missing Items</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>First, please check the package carefully.</p>\r\n\r\n<p>In most cases, the items might still be in the box. Before you get worried that some items are missing from your parcel, make sure you have thoroughly checked the packing materials. In some cases, some items are shipped separately and you would receive different tracking numbers if it is the case.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Second, contact us</p>\r\n\r\n<p>If a product is missing, we can help. Please e-mail photos of the shipping label and the box with the items received, a brief description of the situation, the order number to&nbsp;<a href=\"mailto:%20support@blvck.com\">support@blvck.com</a>. We will follow-up with next steps as soon as possible.</p>\r\n\r\n<p>You can tell us about your missing item within 14 days. If 14 days have gone by since you have received your purchase, unfortunately we can&rsquo;t offer you a refund or reship.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lost Packages</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are&nbsp;not liable for any misplaced or stolen packages. If your tracking number reads as successfully shipped and the address provided to us upon checkout matches the exact address we have shipped your order to, we are not held responsible if your package has been misplaced. Stolen / lost packages are nonrefundable. If you have any questions, please contact us at support@blvck.com&nbsp;and we will try our best to assist you with this matter.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Can I cancel/amend my order after I&#39;ve placed it?</strong><br />\r\n&nbsp;</p>\r\n\r\n<p>If your order is placed on a week day, our warehouse is really quick at packing your order up which means we can&#39;t make any changes or cancel it once you&#39;ve placed it. This includes changing the delivery option, delivery address or payment method.</p>\r\n\r\n<p>If your order is placed on a weekend or a bank holiday, you may be able to cancel your order and place a new one instead if informed within 24 hours of placing your order.</p>', 'default', NULL, 'return-policy-116', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:29:34', '2022-11-09 15:29:34'),
(117, 'Shipping Information', NULL, '<h4>Fast Shipping</h4>\r\n\r\n<p>Shipments are fulfilled&nbsp;as soon as your order is verified, it may take up to&nbsp;72 hours to process and ship your order&nbsp;during business days (Monday - Friday).</p>\r\n\r\n<p>After your order has been shipped, delivery time is 2-7 business days. Please keep in mind that during holidays or limited edition launches, this time may vary.&nbsp;</p>\r\n\r\n<p>To ensure the best delivery service, we ship using the top carriers (DHL,&nbsp;Fedex)</p>\r\n\r\n<p>You will be informed about the expected delivery date during checkout. Please note that shipments are only processed on&nbsp;week days.</p>\r\n\r\n<p>Additionally, we will send you an email the moment your shipment is handed over to shipping provider (typically within 1-3 business days). They will provide you with a tracking number so you can follow your shipment throughout its journey.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Information about customs</h4>\r\n\r\n<p>Depending on your country, import/customs fees may be applied to your order.</p>\r\n\r\n<p>All applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won&#39;t be refunded. Please note that we are not held liable for any custom fees in your country, hold times or incorrect shipping information provided. Allow 1 to 2 business days of processing your order to receive your tracking number.&nbsp;</p>\r\n\r\n<p>Blvck&nbsp;is not responsible for any shipping deliveries that may be affected by customs, natural occurrences, or air and ground transportation strikes or delays, nor any extra fees, customs or back end charges.&nbsp;</p>\r\n\r\n<h4>Lost Package</h4>\r\n\r\n<p>We are&nbsp;not liable for any misplaced or stolen packages. If your tracking number reads as successfully shipped and the address provided to us upon checkout matches the exact address we have shipped your order to, we are not held responsible if your package has been misplaced. Stolen / lost packages are nonrefundable. If you have any questions, please contact us at support@blvck.com&nbsp;and we will try our best to assist you with this matter</p>', 'default', NULL, 'shipping-information', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:30:07', '2022-11-09 15:30:07'),
(118, 'Shipping Information', NULL, '<h4>Fast Shipping</h4>\r\n\r\n<p>Shipments are fulfilled&nbsp;as soon as your order is verified, it may take up to&nbsp;72 hours to process and ship your order&nbsp;during business days (Monday - Friday).</p>\r\n\r\n<p>After your order has been shipped, delivery time is 2-7 business days. Please keep in mind that during holidays or limited edition launches, this time may vary.&nbsp;</p>\r\n\r\n<p>To ensure the best delivery service, we ship using the top carriers (DHL,&nbsp;Fedex)</p>\r\n\r\n<p>You will be informed about the expected delivery date during checkout. Please note that shipments are only processed on&nbsp;week days.</p>\r\n\r\n<p>Additionally, we will send you an email the moment your shipment is handed over to shipping provider (typically within 1-3 business days). They will provide you with a tracking number so you can follow your shipment throughout its journey.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4>Information about customs</h4>\r\n\r\n<p>Depending on your country, import/customs fees may be applied to your order.</p>\r\n\r\n<p>All applicable custom fees, taxes and duties are the sole responsibility of the customer and refused packages won&#39;t be refunded. Please note that we are not held liable for any custom fees in your country, hold times or incorrect shipping information provided. Allow 1 to 2 business days of processing your order to receive your tracking number.&nbsp;</p>\r\n\r\n<p>Blvck&nbsp;is not responsible for any shipping deliveries that may be affected by customs, natural occurrences, or air and ground transportation strikes or delays, nor any extra fees, customs or back end charges.&nbsp;</p>\r\n\r\n<h4>Lost Package</h4>\r\n\r\n<p>We are&nbsp;not liable for any misplaced or stolen packages. If your tracking number reads as successfully shipped and the address provided to us upon checkout matches the exact address we have shipped your order to, we are not held responsible if your package has been misplaced. Stolen / lost packages are nonrefundable. If you have any questions, please contact us at support@blvck.com&nbsp;and we will try our best to assist you with this matter</p>', 'default', NULL, 'shipping-information-118', '1', NULL, NULL, 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:30:07', '2022-11-09 15:30:07'),
(119, 'Terms of service', NULL, '<p><strong>OVERVIEW</strong>&nbsp;<br />\r\nThis website is operated by Blvck SRL. Throughout the site, the terms &ldquo;we&rdquo;, &ldquo;us&rdquo; and &ldquo;our&rdquo; refer to Blvck SRL. Blvck SRL offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.&nbsp;<br />\r\n<br />\r\nBy visiting our site and/ or purchasing something from us, you engage in our &ldquo;Service&rdquo; and agree to be bound by the following terms and conditions (&ldquo;Terms of Service&rdquo;, &ldquo;Terms&rdquo;), including those additional terms and conditions and policies referenced herein and/or available by hyperlink. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.&nbsp;<br />\r\n<br />\r\nPlease read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.&nbsp;<br />\r\n<br />\r\nAny new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.&nbsp;<br />\r\n<br />\r\nOur store is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 1 - ONLINE STORE TERMS</strong>&nbsp;<br />\r\nBy agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use the Site.&nbsp;<br />\r\nYou may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws).&nbsp;<br />\r\nYou must not transmit any worms or viruses or any code of a destructive nature.&nbsp;<br />\r\nA breach or violation of any of the Terms will result in an immediate termination of your Services.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 2 - GENERAL CONDITIONS</strong>&nbsp;<br />\r\nWe reserve the right to refuse service to anyone for any reason at any time.&nbsp;<br />\r\nYou understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks.&nbsp;<br />\r\nYou agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us.&nbsp;<br />\r\nThe headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</strong>&nbsp;<br />\r\nWe are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk.&nbsp;<br />\r\nThis site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES</strong>&nbsp;<br />\r\nPrices for our products are subject to change without notice.&nbsp;<br />\r\nWe reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time.&nbsp;<br />\r\nWe shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 5 - PRODUCTS OR SERVICES</strong><br />\r\nCertain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy.&nbsp;<br />\r\nWe have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor&#39;s display of any color will be accurate.&nbsp;<br />\r\nWe reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited.&nbsp;<br />\r\nWe do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 6 - ACCURACY OF BILLING AND ACCOUNT INFORMATION</strong>&nbsp;<br />\r\nWe reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e‑mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.&nbsp;<br />\r\n<br />\r\nYou agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.&nbsp;<br />\r\n<br />\r\nFor more detail, please review our Returns Policy.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 7 - OPTIONAL TOOLS</strong>&nbsp;<br />\r\nWe may provide you with access to third-party tools over which we neither monitor nor have any control nor input.&nbsp;<br />\r\nYou acknowledge and agree that we provide access to such tools &rdquo;as is&rdquo; and &ldquo;as available&rdquo; without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools.&nbsp;<br />\r\nAny use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s).&nbsp;<br />\r\nWe may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 8 - THIRD-PARTY LINKS</strong>&nbsp;<br />\r\nCertain content, products and services available via our Service may include materials from third-parties.&nbsp;<br />\r\nThird-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties.&nbsp;<br />\r\nWe are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party&#39;s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 9 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</strong>&nbsp;<br />\r\nIf, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, or other materials, whether online, by email, by postal mail, or otherwise (collectively, &#39;comments&#39;), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments that you forward to us. We are and shall be under no obligation (1) to maintain any comments in confidence; (2) to pay compensation for any comments; or (3) to respond to any comments.&nbsp;<br />\r\nWe may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party&rsquo;s intellectual property or these Terms of Service.&nbsp;<br />\r\nYou agree that your comments will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e‑mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments. You are solely responsible for any comments you make and their accuracy. We take no responsibility and assume no liability for any comments posted by you or any third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 10 - PERSONAL INFORMATION</strong>&nbsp;<br />\r\nYour submission of personal information through the store is governed by our Privacy Policy. To view our Privacy Policy.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 11 - ERRORS, INACCURACIES AND OMISSIONS</strong>&nbsp;<br />\r\nOccasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order).&nbsp;<br />\r\nWe undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 12 - PROHIBITED USES</strong>&nbsp;<br />\r\nIn addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 13 - DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</strong>&nbsp;<br />\r\nWe do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free.&nbsp;<br />\r\nWe do not warrant that the results that may be obtained from the use of the service will be accurate or reliable.&nbsp;<br />\r\nYou agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you.&nbsp;<br />\r\nYou expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided &#39;as is&#39; and &#39;as available&#39; for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement.&nbsp;<br />\r\nIn no case shall Blvck SRL, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 14 - INDEMNIFICATION</strong>&nbsp;<br />\r\nYou agree to indemnify, defend and hold harmless Blvck SRL and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys&rsquo; fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 15 - SEVERABILITY</strong>&nbsp;<br />\r\nIn the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 16 - TERMINATION</strong>&nbsp;<br />\r\nThe obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes.&nbsp;<br />\r\nThese Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site.&nbsp;<br />\r\nIf in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof).&nbsp;<br />\r\n<br />\r\n<strong>SECTION 17 - ENTIRE AGREEMENT</strong>&nbsp;<br />\r\nThe failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision.&nbsp;<br />\r\nThese Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service).&nbsp;<br />\r\nAny ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 18 - GOVERNING LAW</strong>&nbsp;<br />\r\nThese Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of Belgium.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 19 - CHANGES TO TERMS OF SERVICE</strong>&nbsp;<br />\r\nYou can review the most current version of the Terms of Service at any time at this page.&nbsp;<br />\r\nWe reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes.&nbsp;<br />\r\n<br />\r\n<strong>SECTION 20 - CONTACT INFORMATION</strong>&nbsp;<br />\r\nQuestions about the Terms of Service should be sent to us at support@blvck.com.</p>\r\n\r\n<p><strong>&nbsp;</strong></p>', 'default', NULL, 'terms-of-service', '1', NULL, NULL, 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 15:30:39', '2022-11-09 15:30:39'),
(110, 'Blvck Paris: Into the Metaverse', 'Blvck Paris has formed a partnership with Decentraland Games. If you are a Blvck Genesis NFT holder, you would have received a surprise airdrop for an exclusive NFT wearable!', '<h3><strong>Partnership with Decentraland Games</strong></h3>\r\n\r\n<p>Blvck Paris has formed a partnership with Decentraland Games. If you are a Blvck Genesis NFT holder, you would have received a surprise airdrop for an exclusive NFT wearable!</p>\r\n\r\n<p>With this NFT wearable, you can customise your avatar around Decentraland and even play in ICE Poker&#39;s new Tournament mode at&nbsp;<strong>no</strong>&nbsp;cost!</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/2252/3393/files/xO8QkTSgL0c6l2pDLwn5tbX0iwwGaXU_wla6kGtjqM5unEymjEb4zMHUkavT4jVJk-MmdwybPoVVHZSdNDVM_HWpJ06hj9SMwG7cLXg_480x480.webp?v=1666288685\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" id=\"twitter-widget-0\" scrolling=\"no\" src=\"https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfdGltZWxpbmVfbGlzdCI6eyJidWNrZXQiOlsibGlua3RyLmVlIiwidHIuZWUiLCJ0ZXJyYS5jb20uYnIiLCJ3d3cubGlua3RyLmVlIiwid3d3LnRyLmVlIiwid3d3LnRlcnJhLmNvbS5iciJdLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdGltZWxpbmVfMTIwMzQiOnsiYnVja2V0IjoidHJlYXRtZW50IiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9lZGl0X2JhY2tlbmQiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3JlZnNyY19zZXNzaW9uIjp7ImJ1Y2tldCI6Im9uIiwidmVyc2lvbiI6bnVsbH0sInRmd19jaGluX3BpbGxzXzE0NzQxIjp7ImJ1Y2tldCI6ImNvbG9yX2ljb25zIiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9yZXN1bHRfbWlncmF0aW9uXzEzOTc5Ijp7ImJ1Y2tldCI6InR3ZWV0X3Jlc3VsdCIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2Vuc2l0aXZlX21lZGlhX2ludGVyc3RpdGlhbF8xMzk2MyI6eyJidWNrZXQiOiJpbnRlcnN0aXRpYWwiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2V4cGVyaW1lbnRzX2Nvb2tpZV9leHBpcmF0aW9uIjp7ImJ1Y2tldCI6MTIwOTYwMCwidmVyc2lvbiI6bnVsbH0sInRmd19kdXBsaWNhdGVfc2NyaWJlc190b19zZXR0aW5ncyI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdmlkZW9faGxzX2R5bmFtaWNfbWFuaWZlc3RzXzE1MDgyIjp7ImJ1Y2tldCI6InRydWVfYml0cmF0ZSIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2hvd19ibHVlX3ZlcmlmaWVkX2JhZGdlIjp7ImJ1Y2tldCI6Im9mZiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdHdlZXRfZWRpdF9mcm9udGVuZCI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9fQ%3D%3D&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1582401146945097731&amp;lang=en&amp;origin=https%3A%2F%2Femea.blvck.com%2Fblogs%2Fblvck-paris%2Fblvck-paris-into-the-metaverse&amp;sessionId=202326b4b0a3ed23b32abee43f77182841213e08&amp;siteScreenName=BlvckParis&amp;theme=light&amp;widgetsVersion=a3525f077c700%3A1667415560940&amp;width=550px\" title=\"Twitter Tweet\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>What is the Metaverse?</strong></h3>\r\n\r\n<p>So, you&rsquo;ve read about the partnership, and the airdrop and got excited? That&rsquo;s great! But what now? To further understand the significance and benefits of this, you&rsquo;ll first need to grasp the concept of the metaverse in its entirety.</p>\r\n\r\n<p>The metaverse can be defined as a virtual space that is limited only by your imagination! Creators and companies can host digital stores, artists can host virtual events, concerts and so much more. Multi-platform virtual worlds might seem like a new concept today, but they have existed for years now ranging from video games to social media.</p>\r\n\r\n<p><strong>Case Study #1</strong></p>\r\n\r\n<p>Covid is rampant in the streets and many countries and cities are in lockdown. After several weeks&nbsp;of isolation, they&#39;ll&nbsp;start to feel angsty and claustrophobic at home. With the Metaverse and AR/VR, they can virtually meet their friends and even attend concerts that are happening in the virtual world &ndash; The Metaverse.</p>\r\n\r\n<h3><strong>Relationship between NFTs and the Metaverse</strong></h3>\r\n\r\n<p>Now that you have an understanding of what the metaverse is and what it&rsquo;s capable of, you might wonder how&nbsp;your NFT comes into play? Excellent question!</p>\r\n\r\n<p>Non-Fungible Tokens (NFTs) now have a wide range of applications but among them, one of the most promising utilities&nbsp;is as digital objects in the metaverse.</p>\r\n\r\n<p>With this, you can represent your Virtual self with your NFT in the Metaverse! You&nbsp;can attend digital parties, live virtual events and even interact with your friends using&nbsp;your favourite NFT as your avatar.</p>\r\n\r\n<p>NFTs in the Metaverse can also be used as proof for asset ownership &ndash; Let&rsquo;s take a look at a case study to further illustrate this point:</p>\r\n\r\n<p><strong>Case Study #2&nbsp;</strong></p>\r\n\r\n<p>Jane has been wanting to buy a Blvck Paris Outerwear for the longest time but has no physical stores near her to try it on. With the opening of Blvck Paris&rsquo;s Metaverse store, she can virtually proceed to try on the merchandise and purchase an NFT of the exact merchandise she wants to buy as proof of ownership. This NFT would allow her to redeem it for the respective physical product and as it is cryptographically verifiable, the Blvck Paris team can verify its authenticity on the spot.</p>\r\n\r\n<h3><strong>Live Event and Giveaways</strong></h3>\r\n\r\n<p><img alt=\"Blvck Paris X Decentraland Games Event Details\" src=\"https://cdn.shopify.com/s/files/1/2252/3393/files/Screenshot_2022-10-21_at_2.57.36_AM_600x600.png?v=1666292276\" /></p>\r\n\r\n<p>To celebrate this joyous occasion, we&rsquo;re hosting a party in Decentraland at DG&rsquo;s Venue!</p>\r\n\r\n<p>Come by with your Wearables and enjoy live music by DJ T-RAX and chill vibes with like-minded members of the Blvck Community!&nbsp;</p>\r\n\r\n<p>We&#39;ll also be doing a&nbsp;<strong><em>Giveaway&nbsp;</em></strong>where the winners get to pick between a full Blvck monogram physical tracksuit or a Blvck Genesis NFT &ndash; Your choice!</p>\r\n\r\n<p>To participate in the giveaway,&nbsp;simply spot Sloth from our community in Tominoya Casino and take a screenshot of him! Post that screenshot on Twitter with the hashtag #BlvckxDCG and finally&nbsp;post a screenshot of your tweet in the &quot;Proof&quot; Channel on Discord!</p>\r\n\r\n<p>Administrative details for&nbsp;the event are&nbsp;as follows:</p>\r\n\r\n<ul>\r\n	<li>Date: 21st October 2022 (Friday)</li>\r\n	<li>Time: 10 am EST</li>\r\n	<li>Location: Tominoya Casino in Decentraland (-119,136)&nbsp;</li>\r\n</ul>', 'default', NULL, 'blvck-paris-into-the-metaverse-110', '1', NULL, '/kcfinder-master/upload/images/Blog/Picture_1_540x.png', 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:00:43', '2022-11-09 07:00:43');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(111, 'Blvck x Asian TV Awards', 'Blvck welcomes the Asian TV Awards as an official collaborative partner. The collaboration will include a very limited edition \'Blvck x Asian TV Awards\'', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://www.facebook.com/sharer.php?u=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">SHARE ON FACEBOOK</a><a href=\"https://twitter.com/share?text=Blvck%20x%20Asian%20TV%20Awards&amp;url=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">TWEET ON TWITTER</a><a href=\"https://pinterest.com/pin/create/button/?url=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards&amp;media=//cdn.shopify.com/s/files/1/0600/3271/2869/articles/04208246_1024x1024.jpg?v=1665919511&amp;description=Blvck%20x%20Asian%20TV%20Awards\" rel=\"noopener\" target=\"_blank\">PIN ON PINTEREST</a><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">COPIED!</a></p>\r\n\r\n<p>Blvck welcomes the Asian TV Awards as an official collaborative partner.</p>\r\n\r\n<p>The collaboration will include a very limited edition &#39;Blvck x Asian TV Awards&#39; Teddy Bear, dressed for the occasion.</p>\r\n\r\n<p>There are only 200pc produced and some will be reserved for celebrities and partners of the brand. Holders of both NFT collections, Blvck and Glitzy Tribe, the Web3 community of Asian TV Awards will get priority and a 20% discount to purchase the item before it goes on sale to the public.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/products/Teddy_480x480.jpg?v=1665917395\" /></p>\r\n\r\n<p><strong>About the Asian TV Awards</strong>&nbsp;</p>\r\n\r\n<p>The Asian Television Awards was launched in 1996 and is the largest entertainment, content and Broadcast Awards in Asia Pacific.&nbsp;</p>\r\n\r\n<p>The awards celebrate and reward programming and production excellence in the Asian television industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>About Glitzy Tribe</strong></p>\r\n\r\n<p>The Asian TV Awards announced their NFT collection &#39;Glitzy Tribe&#39; going&nbsp;for sale on October 18th.&nbsp;</p>\r\n\r\n<p>Glitzy Tribe is a community of users who are into Asian entertainment &ndash; movies, drama, music, e-games, sports, animation and anime. They may be actors, actresses, hosts, e-gamers, athletes, singers, composers, film directors, scriptwriters, copywriters, digital artists, executive producers, investors in the entertainment industry and those who are entertainment lovers.</p>\r\n\r\n<p>The benefits of being part of this community includes:<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Access to Asian TV Awards events</strong></li>\r\n	<li><strong>Access to similar events</strong>&nbsp;HK Film Festival, Singapore Film Festival&nbsp;</li>\r\n	<li><strong>Micro Investment NFT&nbsp;</strong>the Asian TV Awards team will curate 4 projects annually and take an equity stake in them. This will in turn be fractionalized into 5000 pieces for Glitzy Tribe members to participate in.</li>\r\n	<li><strong>Luxury NFT&nbsp;</strong>the Asian TV Awards will work with one fashion / accessories / eye wear or sportswear brand to create exclusive merchandise only available to Glitzy Tribe members</li>\r\n	<li><strong>Social NFT&nbsp;</strong>10% of all proceeds will be put into an escrow account to fund internships for students in the media and communications industry. We will use our network to source internships for students at TV stations and production studios.</li>\r\n</ul>', 'default', NULL, 'blvck-x-asian-tv-awards', '1', NULL, '/kcfinder-master/upload/images/Blog/04208246_1728x.jpg', 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:02:48', '2022-11-09 07:02:48'),
(112, 'Blvck x Asian TV Awards', 'Blvck welcomes the Asian TV Awards as an official collaborative partner. The collaboration will include a very limited edition \'Blvck x Asian TV Awards\'', '<p><a href=\"https://www.facebook.com/sharer.php?u=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">SHARE ON FACEBOOK</a><a href=\"https://twitter.com/share?text=Blvck%20x%20Asian%20TV%20Awards&amp;url=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">TWEET ON TWITTER</a><a href=\"https://pinterest.com/pin/create/button/?url=https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards&amp;media=//cdn.shopify.com/s/files/1/0600/3271/2869/articles/04208246_1024x1024.jpg?v=1665919511&amp;description=Blvck%20x%20Asian%20TV%20Awards\" rel=\"noopener\" target=\"_blank\">PIN ON PINTEREST</a><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\" rel=\"noopener\" target=\"_blank\">COPIED!</a></p>\r\n\r\n<p>Blvck welcomes the Asian TV Awards as an official collaborative partner.</p>\r\n\r\n<p>The collaboration will include a very limited edition &#39;Blvck x Asian TV Awards&#39; Teddy Bear, dressed for the occasion.</p>\r\n\r\n<p>There are only 200pc produced and some will be reserved for celebrities and partners of the brand. Holders of both NFT collections, Blvck and Glitzy Tribe, the Web3 community of Asian TV Awards will get priority and a 20% discount to purchase the item before it goes on sale to the public.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/products/Teddy_480x480.jpg?v=1665917395\" /></p>\r\n\r\n<p><strong>About the Asian TV Awards</strong>&nbsp;</p>\r\n\r\n<p>The Asian Television Awards was launched in 1996 and is the largest entertainment, content and Broadcast Awards in Asia Pacific.&nbsp;</p>\r\n\r\n<p>The awards celebrate and reward programming and production excellence in the Asian television industry.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>About Glitzy Tribe</strong></p>\r\n\r\n<p>The Asian TV Awards announced their NFT collection &#39;Glitzy Tribe&#39; going&nbsp;for sale on October 18th.&nbsp;</p>\r\n\r\n<p>Glitzy Tribe is a community of users who are into Asian entertainment &ndash; movies, drama, music, e-games, sports, animation and anime. They may be actors, actresses, hosts, e-gamers, athletes, singers, composers, film directors, scriptwriters, copywriters, digital artists, executive producers, investors in the entertainment industry and those who are entertainment lovers.</p>\r\n\r\n<p>The benefits of being part of this community includes:<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Access to Asian TV Awards events</strong></li>\r\n	<li><strong>Access to similar events</strong>&nbsp;HK Film Festival, Singapore Film Festival&nbsp;</li>\r\n	<li><strong>Micro Investment NFT&nbsp;</strong>the Asian TV Awards team will curate 4 projects annually and take an equity stake in them. This will in turn be fractionalized into 5000 pieces for Glitzy Tribe members to participate in.</li>\r\n	<li><strong>Luxury NFT&nbsp;</strong>the Asian TV Awards will work with one fashion / accessories / eye wear or sportswear brand to create exclusive merchandise only available to Glitzy Tribe members</li>\r\n	<li><strong>Social NFT&nbsp;</strong>10% of all proceeds will be put into an escrow account to fund internships for students in the media and communications industry. We will use our network to source internships for students at TV stations and production studios.</li>\r\n</ul>', 'default', NULL, 'blvck-x-asian-tv-awards-112', '1', NULL, '/kcfinder-master/upload/images/Blog/04208246_1728x.jpg', 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:02:48', '2022-11-09 07:02:48'),
(113, 'Blvck x W Hotel Taipei', 'A preview of the collaboration between Blvck & the W Hotel in Taipei, releasing October 13. Join them for a branded all Blvck afternoon tea experience f', '<p>A preview of the collaboration between Blvck &amp; the W Hotel in Taipei, releasing October 13.</p>\r\n\r\n<p>Join them for a branded all Blvck afternoon tea experience for a limited time exclusively. The experience will be offered at the WOOBAR, until 12/31 and limited to 15 sets per day. The high tea design complies with the brand elements - different layers of black color with a bit of bright color to embellish.</p>\r\n\r\n<p>Comes with a Blvck collectible only offered at the W Taipei.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-3_2048x2048.jpg?v=1665660103\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-2_2048x2048.jpg?v=1665660111\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-4_2048x2048.jpg?v=1665660118\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-5_2048x2048.jpg?v=1665660126\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-6_2048x2048.jpg?v=1665660135\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-7_2048x2048.jpg?v=1665660144\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-8_2048x2048.jpg?v=1665660151\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-9_2048x2048.jpg?v=1665660159\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM_2048x2048.jpg?v=1665660166\" /></p>\r\n\r\n<h3>Recent Articles</h3>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-genesis-stake-to-win\"><strong>Blvck Genesis: Stake to Win</strong></a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-genesis-stake-to-win\">October 31, 2022</a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-paris-into-the-metaverse\"><strong>Blvck Paris: Into the Metaverse</strong></a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-paris-into-the-metaverse\">October 21, 2022</a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\"><strong>Blvck x Asian TV Awards</strong></a></p>', 'default', 'WEB3', 'blvck-x-w-hotel-taipei', '1', NULL, '/kcfinder-master/upload/images/Blog/WhatsApp_Image_2022-10-13_at_1.25.35_PM.jpg', 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:04:35', '2022-11-09 07:04:35'),
(114, 'Blvck x W Hotel Taipei', 'A preview of the collaboration between Blvck & the W Hotel in Taipei, releasing October 13. Join them for a branded all Blvck afternoon tea experience f', '<p>A preview of the collaboration between Blvck &amp; the W Hotel in Taipei, releasing October 13.</p>\r\n\r\n<p>Join them for a branded all Blvck afternoon tea experience for a limited time exclusively. The experience will be offered at the WOOBAR, until 12/31 and limited to 15 sets per day. The high tea design complies with the brand elements - different layers of black color with a bit of bright color to embellish.</p>\r\n\r\n<p>Comes with a Blvck collectible only offered at the W Taipei.</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-3_2048x2048.jpg?v=1665660103\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-2_2048x2048.jpg?v=1665660111\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-4_2048x2048.jpg?v=1665660118\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-5_2048x2048.jpg?v=1665660126\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-6_2048x2048.jpg?v=1665660135\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-7_2048x2048.jpg?v=1665660144\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-8_2048x2048.jpg?v=1665660151\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM-9_2048x2048.jpg?v=1665660159\" /><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/WhatsApp_Image_2022-10-13_at_1.25.35_PM_2048x2048.jpg?v=1665660166\" /></p>\r\n\r\n<h3>Recent Articles</h3>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-genesis-stake-to-win\"><strong>Blvck Genesis: Stake to Win</strong></a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-genesis-stake-to-win\">October 31, 2022</a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-paris-into-the-metaverse\"><strong>Blvck Paris: Into the Metaverse</strong></a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-paris-into-the-metaverse\">October 21, 2022</a></p>\r\n\r\n<p><a href=\"https://emea.blvck.com/blogs/blvck-paris/blvck-x-asian-tv-awards\"><strong>Blvck x Asian TV Awards</strong></a></p>', 'default', NULL, 'blvck-x-w-hotel-taipei-114', '1', NULL, '/kcfinder-master/upload/images/Blog/WhatsApp_Image_2022-10-13_at_1.25.35_PM.jpg', 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:04:35', '2022-11-09 07:04:35'),
(98, 'Blvck Evil Twin Teddy Bear Hoodie', NULL, '<p>The &#39;Blvck Evil Twin Teddy Bear Hoodie&#39;&nbsp;features a one-of-a-kind look with&nbsp;a Blvck teddy&nbsp;Illustration in an attentive embroidery on the front.</p>\r\n\r\n<p>Made from ultra-soft 100% Terry Cotton,&nbsp;this limited edition&nbsp;hoodie keeps you warm and stylish all day long.</p>\r\n\r\n<p>Limited supply.</p>\r\n\r\n<p>Fits regular size.</p>', 'default', NULL, 'blvck-evil-twin-teddy-bear-hoodie-98', '1', NULL, '/kcfinder-master/upload/images/Product/3_9ffdb763-9804-44cc-b80b-e75da54f8be9_3000x.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:18:41', '2022-11-09 04:18:41'),
(99, 'Essential Hoodie 2.0', NULL, '<p>We have just upgraded one of our best seller, the &nbsp;&#39;Essential Hoodie&#39; by&nbsp;adding our iconic logo&nbsp;across the chest for a minimalist, streetwear look. The hoodie&nbsp;features a logo on the&nbsp;hood that gives a defining look&nbsp;to any outfit.&nbsp;</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size.</p>', 'default', 'SALE', 'essential-hoodie-20', '1', NULL, '/kcfinder-master/upload/images/Product/02small_a0be6f18-7e9c-4ecc-9f1e-b4f7cc4ec51d_3000x.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:17:57', '2022-11-09 04:17:57'),
(100, 'Essential Hoodie 2.0', NULL, '<p>We have just upgraded one of our best seller, the &nbsp;&#39;Essential Hoodie&#39; by&nbsp;adding our iconic logo&nbsp;across the chest for a minimalist, streetwear look. The hoodie&nbsp;features a logo on the&nbsp;hood that gives a defining look&nbsp;to any outfit.&nbsp;</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size.</p>', 'default', 'SALE', 'essential-hoodie-20-100', '1', NULL, '/kcfinder-master/upload/images/Product/02small_a0be6f18-7e9c-4ecc-9f1e-b4f7cc4ec51d_3000x.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:17:57', '2022-11-09 04:17:57'),
(101, 'Blvck \'Morose\' Hoodie', NULL, '<p>The Blvck &#39;Morose&#39; Hoodie features&nbsp;a unique print at the back of the emblematic Blvck skull&nbsp;for a minimalist, streetwear look.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size for male.</p>\r\n\r\n<p>The model is wearing XL and is&nbsp;1m85.</p>', 'default', 'SALE', 'blvck-morose-hoodie', '1', NULL, '/kcfinder-master/upload/images/Product/01_d4a2b6c9-d981-4560-bdff-9f2add3c0724_3000x.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:25:34', '2022-11-09 04:25:34'),
(102, 'Blvck \'Morose\' Hoodie', NULL, '<p>The Blvck &#39;Morose&#39; Hoodie features&nbsp;a unique print at the back of the emblematic Blvck skull&nbsp;for a minimalist, streetwear look.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size for male.</p>\r\n\r\n<p>The model is wearing XL and is&nbsp;1m85.</p>', 'default', 'SALE', 'blvck-morose-hoodie-102', '1', NULL, '/kcfinder-master/upload/images/Product/03_d3251dd0-1937-4dde-a46e-113e6493d7e4_3000x.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:25:34', '2022-11-09 04:25:34'),
(103, 'Blvck Verse Hoodie', NULL, '<p>Part&nbsp;of the BLVCK07 Collection,&nbsp;the &#39;Blvck&nbsp;Verse&nbsp;Hoodie&#39;&nbsp;features&nbsp;a unique Roses&nbsp;artwork piece on the&nbsp;back of the&nbsp;hoodie with an extract from a poem from french poet, Paul Verlaine and a simple Blvck logo on the chest&nbsp;for a minimalist, streetwear look.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits true to size.</p>\r\n\r\n<p>The model is&nbsp;1.87cm and wears a size Large.&nbsp;</p>', 'default', 'SALE', 'blvck-verse-hoodie', '1', NULL, '/kcfinder-master/upload/images/Product/00-1_4100x.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:35:39', '2022-11-09 04:35:39'),
(104, 'Blvck Verse Hoodie', NULL, '<p>Part&nbsp;of the BLVCK07 Collection,&nbsp;the &#39;Blvck&nbsp;Verse&nbsp;Hoodie&#39;&nbsp;features&nbsp;a unique Roses&nbsp;artwork piece on the&nbsp;back of the&nbsp;hoodie with an extract from a poem from french poet, Paul Verlaine and a simple Blvck logo on the chest&nbsp;for a minimalist, streetwear look.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits true to size.</p>\r\n\r\n<p>The model is&nbsp;1.87cm and wears a size Large.&nbsp;</p>', 'default', 'SALE', 'blvck-verse-hoodie-104', '1', NULL, '/kcfinder-master/upload/images/Product/00-1_4100x.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:35:39', '2022-11-09 04:35:39'),
(105, 'Blvck Monogram Torn Hoodie', NULL, '<p>Part&nbsp;of the BLVCK06 Collection,&nbsp;the &#39;Blvck&nbsp;Monogram Torn&nbsp;Hoodie&#39;&nbsp;features our signature monograms&nbsp;embellished in selected areas and&nbsp;features a logo in embroidery on the&nbsp;hood that gives a defining look&nbsp;to any outfit.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size for male.</p>\r\n\r\n<p>The model is wearing L and is&nbsp;1m86.</p>', 'default', NULL, 'blvck-monogram-torn-hoodie', '1', NULL, '/kcfinder-master/upload/images/Product/01_89ce4efd-5069-4fec-8ea0-de010dad7ff8_3000x.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:42:00', '2022-11-09 04:42:00'),
(106, 'Blvck Monogram Torn Hoodie', NULL, '<p>Part&nbsp;of the BLVCK06 Collection,&nbsp;the &#39;Blvck&nbsp;Monogram Torn&nbsp;Hoodie&#39;&nbsp;features our signature monograms&nbsp;embellished in selected areas and&nbsp;features a logo in embroidery on the&nbsp;hood that gives a defining look&nbsp;to any outfit.</p>\r\n\r\n<p>Made&nbsp;from luxurious 100% Terry Cotton, all our&nbsp;hoodies are super soft to the touch&nbsp;and perfect for everyday wear.</p>\r\n\r\n<p>Fits regular size for male.</p>\r\n\r\n<p>The model is wearing L and is&nbsp;1m86.</p>', 'default', NULL, 'blvck-monogram-torn-hoodie-106', '1', NULL, '/kcfinder-master/upload/images/Product/01_89ce4efd-5069-4fec-8ea0-de010dad7ff8_3000x.jpg', 'product', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:42:00', '2022-11-09 04:42:00'),
(107, 'Blvck Genesis: Stake to Win', 'Crypto Staking – What is it?  Many well-known cryptocurrencies like Bitcoin and Ethereum(before the merge) use Proof-of-Work(PoW) as their means', '<h3><strong>Crypto Staking &ndash; What is it?</strong>&nbsp;</h3>\r\n\r\n<p>Many well-known cryptocurrencies like Bitcoin and Ethereum(before the merge) use Proof-of-Work(PoW) as their means of validating transactions. But what does this mean? For starters, to prevent someone from spending the same money twice and to ensure consensus and synergy throughout the network, people, called miners, use their computers to solve complex mathematical problems in hopes of adding their block of transactions to the blockchain and being rewarded in coins of the respective blockchain.</p>\r\n\r\n<p>Some of these miners require special hardware dedicated to mining which consumes large amounts of energy to operate. To circumvent this, Proof-of-Stake(PoS) has become the de-facto consensus mechanism for many projects. Ethereum has completed the merge from PoW to PoS. This resulted in their total energy consumption having dropped drastically by ~ 99.95%!&nbsp;<a href=\"https://blog.ethereum.org/2021/05/18/country-power-no-more\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Source\">Source</a></p>\r\n\r\n<p>PoS is starkly in contrast with PoW in that there is a drastic reduction in the number of computational resources needed to verify blocks. Without the need for expensive hardware, the barrier for entry to become a validator on the network has lowered. Validators are people who offer their coins as collateral to secure the network and be rewarded in the coin of the native blockchain&nbsp;- ETH for the Ethereum blockchain and Atom for the Cosmos blockchain.&nbsp;Some blockchains have a minimum stake requirement. For instance, Ethereum requires validators to stake 32 ETH. As you can imagine, not many people have that much. There are ways to circumvent this with the use of staking pools in which many people come together and pool their ETH and receive a cut of the distribution with a ratio proportional to their staked amount!<strong>&nbsp;</strong></p>\r\n\r\n<h3><strong>Staking with Blvck</strong></h3>\r\n\r\n<p>As you are probably aware, Blvck Paris launched their NFT Collection, Blvck Genesis, in May&nbsp;2022. Following&nbsp;suggestions from the community, Blvck introduced staking for their NFTs. To achieve this, Blvck takes a different approach to the conventional staking method where holders of Blvck Genesis for prolonged periods are rewarded with off-chain points which can then be redeemed for whitelist raffles, Monthly giveaway entries and even physical Blvck Merchandise &ndash; all simply by just having your NFT sitting in your wallet and being&nbsp;<strong>unlisted.&nbsp;</strong>To put it simply, your NFT must be kept in your wallet and not listed for sale on any NFT marketplace such as&nbsp;OpenSea and X2Y2.</p>\r\n\r\n<h2><strong>Navigating the Site</strong></h2>\r\n\r\n<p>Blvck unveiled a fully functional and aesthetically pleasing&nbsp;<a href=\"https://staking.blvck.com/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Staking website\">staking website</a>&nbsp;which is both user friendly and filled with utilities and perks!<strong>&nbsp;</strong></p>\r\n\r\n<p><img alt=\"Blvck Paris Staking Website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_12.13.40_AM_1024x1024.png?v=1666551632\" /></p>\r\n\r\n<p>Using a crypto wallet-compatible browser, such as Google Chrome or Brave Browser, will enable you to take advantage of everything this site has to offer. Begin by connecting your wallet to the staking site as illustrated in the figure below.</p>\r\n\r\n<p><img alt=\"Connecting your Wallet to the Staking Website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_2.58.16_AM_1024x1024.png?v=1666551519\" /></p>\r\n\r\n<p>You&#39;ll be asked to sign a transaction to verify ownership of your wallet.&nbsp;As this signature&nbsp;<em>does not</em>&nbsp;interact with the blockchain, it&#39;s completely&nbsp;<strong>free</strong>!</p>\r\n\r\n<p><img alt=\"Signing the transaction\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_3.09.27_AM_600x600.png?v=1666552491\" /></p>\r\n\r\n<p><strong>Safety Tip</strong>: Be mindful signing transactions which has gas fees as malicious actors&nbsp;can&nbsp;<em>potentially be able to steal your assets.</em></p>\r\n\r\n<p>Upon successfully connecting your wallet,&nbsp;you may customise your profile by clicking on the top right icon and selecting profile</p>\r\n\r\n<p><br />\r\n<strong><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_3.38.11_AM_480x480.png?v=1666553965\" /></strong></p>\r\n\r\n<p>Here, you&#39;ll be able to personalise your account with details such as your&nbsp;burner wallet address and shipping&nbsp;information. Doing so will streamline the process if you&#39;ve won the monthly giveaway or redeemed a physical product from the staking store! Only the&nbsp;<strong>core team</strong>&nbsp;at Blvck has access to these sensitive information and is&nbsp;<strong>not</strong>&nbsp;accessible to anyone else for privacy reasons.</p>\r\n\r\n<p>You will also be required to connect your&nbsp;<strong>Discord</strong>&nbsp;to the staking website under the Profile section.</p>\r\n\r\n<p><img alt=\"Connect your discord to the staking site\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_11.52.52_PM_480x480.png?v=1666626872\" /></p>\r\n\r\n<h3><strong>Staking your Blvck NFTs</strong></h3>\r\n\r\n<p>To be considered staked and continue to accrue points, you need to hold the NFT in your wallet and remain&nbsp;<strong>unlisted</strong>&nbsp;in any NFT marketplace. These points are accumulated in intervals of&nbsp;<strong>12 hours</strong>.</p>\r\n\r\n<p>The current&nbsp;<strong>Tokenomics</strong>&nbsp;of the points distributed every 12 hours are as follows:</p>\r\n\r\n<ul>\r\n	<li>25 Points for NFTs with Rank &gt; 9000</li>\r\n	<li>50 Points for NFTs between Rank 8001 to 9000</li>\r\n	<li>75 Points for NFTs between Rank 7001 to 8000</li>\r\n	<li>100 Points for NFTs between Rank 6001 to 7000</li>\r\n	<li>125&nbsp;Points for NFTs between Rank 5001 to 6000</li>\r\n	<li>150&nbsp;Points for NFTs between Rank 4001 to 5000</li>\r\n	<li>175&nbsp;Points for NFTs between Rank 3001 to 4000</li>\r\n	<li>200&nbsp;Points for NFTs between Rank 2001 to 3000</li>\r\n	<li>225&nbsp;Points for NFTs between Rank 1001 to 2000</li>\r\n	<li>250&nbsp;Points for NFTs between Rank 11 to 1000</li>\r\n	<li>500&nbsp;Points for NFTs between Rank 10 to 1</li>\r\n</ul>\r\n\r\n<p>To check your NFT rarity, please use&nbsp;<a href=\"https://raritysniper.com/blvck-genesis\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"RaritySniper\">RaritySniper</a>, our official rarity ranking partner.&nbsp;</p>\r\n\r\n<p><img alt=\"Guide to collecting Blvck Points\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_8.28.59_PM_1024x1024.png?v=1666614553\" /></p>\r\n\r\n<p>You can easily keep track of how many&nbsp;points you&#39;ve accumulated and the rate at which you&#39;re accumulating them with the status&nbsp;bar under the &quot;Rewards Earned&quot; section. You&#39;ll have to collect the&nbsp;points to spend them. To do so, simply&nbsp;click on the &quot;Collect&quot; button as depicted by Arrow 1 in the above figure. Upon&nbsp;signing a transaction similar to the one you did when connecting your wallet to the staking site, the points collected will be reflected on the top right as&nbsp;depicted by arrow 2.</p>\r\n\r\n<p>The status&nbsp;bar also shows the number of NFTs being staking and the combined points of all the staked NFTs every 12 Hours in your wallet. You might have noticed that the wallet in the figure above contained 10 NFTs but only shows 9 NFTs currently being staked. This is because NFT #1102 is listed on OpenSea and is thus not considered staked and will not accumulate any points until it is delisted.</p>\r\n\r\n<p><img alt=\"Refresh Metadata on the Staking website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-26_at_9.26.29_PM_600x600.png?v=1666790804\" /></p>\r\n\r\n<p>You may encounter issues such as being incorrectly identified as listed or even incorrect staking duration. Fret not, You can force a refresh of the metadata by clicking the refresh icon on the NFT that is displaying the incorrect information. This will fetch the most up-to-date&nbsp;data on the respective&nbsp;NFT ID in the blockchain and update accordingly.</p>\r\n\r\n<h3><strong>Blvck Marketplace</strong>&nbsp;</h3>\r\n\r\n<p>Now that you know how to accumulate and collect your points, let&#39;s learn how to spend them! For this, we&#39;ll visit the Blvck Marketplace where all the desirable goodies are located. &nbsp;</p>\r\n\r\n<p>In this section of the staking site, you&#39;ll see items that can be redeemed for Blvck Points. If you have won one of the Whitelist raffles, you&#39;ll be prompted to submit your wallet address in the respective project&#39;s tab. The Collab team at Blvck will then pass it over to the respective partner project to be added to their contracts allowing you to mint their project.</p>\r\n\r\n<p><img alt=\"Submit wallet address\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_11.56.28_PM_600x600.png?v=1666627016\" /></p>\r\n\r\n<p><strong>Safety Tip:</strong>&nbsp;Never mint a project with your main wallet - always use a burner wallet. A burner wallet can be interpreted&nbsp;as a throwaway wallet in which it holds no assets of significant value. There have been many instances of scam mint projects being wallet drainers. This means&nbsp;upon interaction&nbsp;with their contract, all other assets in your wallet will be stolen and transferred to the malicious actor. To safeguard against this, always use a burner wallet when minting&nbsp;<strong>any&nbsp;</strong>project.</p>\r\n\r\n<p><img alt=\"Blvck Marketplace\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_4.13.59_AM_600x600.png?v=1666556093\" /></p>\r\n\r\n<p><img alt=\"Redeem A Blvck Hoodie\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/BlvckHoodieStaking_600x600.png?v=1666556128\" /></p>\r\n\r\n<p>On the 1st and 15th of every month, we&#39;ll host&nbsp;our<em>&nbsp;<strong>giveaways</strong>&nbsp;</em>on the staking site!&nbsp;Here, winners can pick&nbsp;<strong>any 2 pieces&nbsp;</strong>of Blvck Merchandise, excluding collaboration items, in stock, and in their size and have it shipped to them at&nbsp;<strong>no</strong>&nbsp;cost!&nbsp;The giveaway on the 1st is open to&nbsp;<strong>all</strong>&nbsp;Blvck Genesis NFT holders while the second giveaway on the 15th is open to sharks and above!</p>\r\n\r\n<p>The requirements for the different tiers are as follows:</p>\r\n\r\n<ul>\r\n	<li>Sharks: Hold 5 Blvck Genesis NFTs</li>\r\n	<li>Whale: Hold 10 Blvck Genesis NFTs</li>\r\n	<li>Humpback: Hold 20 Blvck Genesis NFTs</li>\r\n</ul>\r\n\r\n<p>We&nbsp;<strong>strongly&nbsp;</strong>recommend getting your holder status verified under the &quot;Holder-verification&quot; channel in the discord. Our&nbsp;Discord offers a myriad of benefits like Alpha calls, feedback sessions, and weekly team AMAs that keep you engaged with like-minded community members.&nbsp;It&#39;s the best place to keep up-to-date with all the latest information in the WEB3 space for Blvck.</p>\r\n\r\n<h3><strong>Special Giveaway</strong></h3>\r\n\r\n<p>You may have noticed a banner on the bottom right of the staking site stating you can claim a set of playing cards. As an incentive, we are offering a set of limited edition&nbsp;<strong>Black Genesis-themed playing cards</strong>&nbsp;to all Black Genesis NFT holders. Holders whose NFTs have been staked for more than 90 days will be eligible for this giveaway!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" id=\"twitter-widget-0\" scrolling=\"no\" src=\"https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfdGltZWxpbmVfbGlzdCI6eyJidWNrZXQiOlsibGlua3RyLmVlIiwidHIuZWUiLCJ0ZXJyYS5jb20uYnIiLCJ3d3cubGlua3RyLmVlIiwid3d3LnRyLmVlIiwid3d3LnRlcnJhLmNvbS5iciJdLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdGltZWxpbmVfMTIwMzQiOnsiYnVja2V0IjoidHJlYXRtZW50IiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9lZGl0X2JhY2tlbmQiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3JlZnNyY19zZXNzaW9uIjp7ImJ1Y2tldCI6Im9uIiwidmVyc2lvbiI6bnVsbH0sInRmd19jaGluX3BpbGxzXzE0NzQxIjp7ImJ1Y2tldCI6ImNvbG9yX2ljb25zIiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9yZXN1bHRfbWlncmF0aW9uXzEzOTc5Ijp7ImJ1Y2tldCI6InR3ZWV0X3Jlc3VsdCIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2Vuc2l0aXZlX21lZGlhX2ludGVyc3RpdGlhbF8xMzk2MyI6eyJidWNrZXQiOiJpbnRlcnN0aXRpYWwiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2V4cGVyaW1lbnRzX2Nvb2tpZV9leHBpcmF0aW9uIjp7ImJ1Y2tldCI6MTIwOTYwMCwidmVyc2lvbiI6bnVsbH0sInRmd19kdXBsaWNhdGVfc2NyaWJlc190b19zZXR0aW5ncyI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdmlkZW9faGxzX2R5bmFtaWNfbWFuaWZlc3RzXzE1MDgyIjp7ImJ1Y2tldCI6InRydWVfYml0cmF0ZSIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2hvd19ibHVlX3ZlcmlmaWVkX2JhZGdlIjp7ImJ1Y2tldCI6Im9mZiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdHdlZXRfZWRpdF9mcm9udGVuZCI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9fQ%3D%3D&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1572224618953326592&amp;lang=en&amp;origin=https%3A%2F%2Femea.blvck.com%2Fblogs%2Fblvck-paris%2Fblvck-genesis-stake-to-win&amp;sessionId=8b111cf6c9a89a22acf73e77870c26504fda5429&amp;siteScreenName=BlvckParis&amp;theme=light&amp;widgetsVersion=a3525f077c700%3A1667415560940&amp;width=550px\" title=\"Twitter Tweet\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In order to remain staked, you must unlist your NFTs from any NFT marketplace and simply keep them in your wallet. The total time staked for your NFT can be found by hovering over one of your NFTs on the staking page as illustrated below.</p>\r\n\r\n<p><img alt=\"Blvck Genesis Total Staked Time\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-26_at_6.04.38_AM_600x600.png?v=1666735640\" /></p>\r\n\r\n<p>By taking the timestamp difference between the last transaction on the respective NFT ID and the present time, we calculate staked time. As a result, any interaction on the blockchain for the NFT will reset the total staked time.&nbsp;Actions like transfers, listing, and selling are some of the examples that will reset this counter.</p>\r\n\r\n<p>As with all things in the world, nothing is perfect and there are always kinks to be ironed out. Blvck council members and the team beta-tested the platform before it was pushed live, allowing holders to enjoy all the benefits previously described. Blvck is committed to our community, taking all feedback and suggestions seriously and reviewing them thoroughly - always looking for ways to improve the platform - whether it be through enhancing the features or improving the overall user experience!</p>', 'default', 'WEB3', 'blvck-genesis-stake-to-win', '1', NULL, '/kcfinder-master/upload/images/Blog/Screenshot_2022-10-31_at_20.46.32_1950x.png', 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:56:00', '2022-11-09 04:56:00');
INSERT INTO `posts` (`post_id`, `title`, `description`, `content`, `template`, `tags`, `slug`, `user_id`, `is_hide`, `image`, `post_type`, `visiable`, `language`, `sort`, `index_hot`, `meta_title`, `meta_description`, `meta_keyword`, `product_list`, `created_at`, `updated_at`) VALUES
(108, 'Blvck Genesis: Stake to Win', 'Crypto Staking – What is it?  Many well-known cryptocurrencies like Bitcoin and Ethereum(before the merge) use Proof-of-Work(PoW) as their means', '<h3><strong>Crypto Staking &ndash; What is it?</strong>&nbsp;</h3>\r\n\r\n<p>Many well-known cryptocurrencies like Bitcoin and Ethereum(before the merge) use Proof-of-Work(PoW) as their means of validating transactions. But what does this mean? For starters, to prevent someone from spending the same money twice and to ensure consensus and synergy throughout the network, people, called miners, use their computers to solve complex mathematical problems in hopes of adding their block of transactions to the blockchain and being rewarded in coins of the respective blockchain.</p>\r\n\r\n<p>Some of these miners require special hardware dedicated to mining which consumes large amounts of energy to operate. To circumvent this, Proof-of-Stake(PoS) has become the de-facto consensus mechanism for many projects. Ethereum has completed the merge from PoW to PoS. This resulted in their total energy consumption having dropped drastically by ~ 99.95%!&nbsp;<a href=\"https://blog.ethereum.org/2021/05/18/country-power-no-more\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Source\">Source</a></p>\r\n\r\n<p>PoS is starkly in contrast with PoW in that there is a drastic reduction in the number of computational resources needed to verify blocks. Without the need for expensive hardware, the barrier for entry to become a validator on the network has lowered. Validators are people who offer their coins as collateral to secure the network and be rewarded in the coin of the native blockchain&nbsp;- ETH for the Ethereum blockchain and Atom for the Cosmos blockchain.&nbsp;Some blockchains have a minimum stake requirement. For instance, Ethereum requires validators to stake 32 ETH. As you can imagine, not many people have that much. There are ways to circumvent this with the use of staking pools in which many people come together and pool their ETH and receive a cut of the distribution with a ratio proportional to their staked amount!<strong>&nbsp;</strong></p>\r\n\r\n<h3><strong>Staking with Blvck</strong></h3>\r\n\r\n<p>As you are probably aware, Blvck Paris launched their NFT Collection, Blvck Genesis, in May&nbsp;2022. Following&nbsp;suggestions from the community, Blvck introduced staking for their NFTs. To achieve this, Blvck takes a different approach to the conventional staking method where holders of Blvck Genesis for prolonged periods are rewarded with off-chain points which can then be redeemed for whitelist raffles, Monthly giveaway entries and even physical Blvck Merchandise &ndash; all simply by just having your NFT sitting in your wallet and being&nbsp;<strong>unlisted.&nbsp;</strong>To put it simply, your NFT must be kept in your wallet and not listed for sale on any NFT marketplace such as&nbsp;OpenSea and X2Y2.</p>\r\n\r\n<h2><strong>Navigating the Site</strong></h2>\r\n\r\n<p>Blvck unveiled a fully functional and aesthetically pleasing&nbsp;<a href=\"https://staking.blvck.com/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Staking website\">staking website</a>&nbsp;which is both user friendly and filled with utilities and perks!<strong>&nbsp;</strong></p>\r\n\r\n<p><img alt=\"Blvck Paris Staking Website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_12.13.40_AM_1024x1024.png?v=1666551632\" /></p>\r\n\r\n<p>Using a crypto wallet-compatible browser, such as Google Chrome or Brave Browser, will enable you to take advantage of everything this site has to offer. Begin by connecting your wallet to the staking site as illustrated in the figure below.</p>\r\n\r\n<p><img alt=\"Connecting your Wallet to the Staking Website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_2.58.16_AM_1024x1024.png?v=1666551519\" /></p>\r\n\r\n<p>You&#39;ll be asked to sign a transaction to verify ownership of your wallet.&nbsp;As this signature&nbsp;<em>does not</em>&nbsp;interact with the blockchain, it&#39;s completely&nbsp;<strong>free</strong>!</p>\r\n\r\n<p><img alt=\"Signing the transaction\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_3.09.27_AM_600x600.png?v=1666552491\" /></p>\r\n\r\n<p><strong>Safety Tip</strong>: Be mindful signing transactions which has gas fees as malicious actors&nbsp;can&nbsp;<em>potentially be able to steal your assets.</em></p>\r\n\r\n<p>Upon successfully connecting your wallet,&nbsp;you may customise your profile by clicking on the top right icon and selecting profile</p>\r\n\r\n<p><br />\r\n<strong><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_3.38.11_AM_480x480.png?v=1666553965\" /></strong></p>\r\n\r\n<p>Here, you&#39;ll be able to personalise your account with details such as your&nbsp;burner wallet address and shipping&nbsp;information. Doing so will streamline the process if you&#39;ve won the monthly giveaway or redeemed a physical product from the staking store! Only the&nbsp;<strong>core team</strong>&nbsp;at Blvck has access to these sensitive information and is&nbsp;<strong>not</strong>&nbsp;accessible to anyone else for privacy reasons.</p>\r\n\r\n<p>You will also be required to connect your&nbsp;<strong>Discord</strong>&nbsp;to the staking website under the Profile section.</p>\r\n\r\n<p><img alt=\"Connect your discord to the staking site\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_11.52.52_PM_480x480.png?v=1666626872\" /></p>\r\n\r\n<h3><strong>Staking your Blvck NFTs</strong></h3>\r\n\r\n<p>To be considered staked and continue to accrue points, you need to hold the NFT in your wallet and remain&nbsp;<strong>unlisted</strong>&nbsp;in any NFT marketplace. These points are accumulated in intervals of&nbsp;<strong>12 hours</strong>.</p>\r\n\r\n<p>The current&nbsp;<strong>Tokenomics</strong>&nbsp;of the points distributed every 12 hours are as follows:</p>\r\n\r\n<ul>\r\n	<li>25 Points for NFTs with Rank &gt; 9000</li>\r\n	<li>50 Points for NFTs between Rank 8001 to 9000</li>\r\n	<li>75 Points for NFTs between Rank 7001 to 8000</li>\r\n	<li>100 Points for NFTs between Rank 6001 to 7000</li>\r\n	<li>125&nbsp;Points for NFTs between Rank 5001 to 6000</li>\r\n	<li>150&nbsp;Points for NFTs between Rank 4001 to 5000</li>\r\n	<li>175&nbsp;Points for NFTs between Rank 3001 to 4000</li>\r\n	<li>200&nbsp;Points for NFTs between Rank 2001 to 3000</li>\r\n	<li>225&nbsp;Points for NFTs between Rank 1001 to 2000</li>\r\n	<li>250&nbsp;Points for NFTs between Rank 11 to 1000</li>\r\n	<li>500&nbsp;Points for NFTs between Rank 10 to 1</li>\r\n</ul>\r\n\r\n<p>To check your NFT rarity, please use&nbsp;<a href=\"https://raritysniper.com/blvck-genesis\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"RaritySniper\">RaritySniper</a>, our official rarity ranking partner.&nbsp;</p>\r\n\r\n<p><img alt=\"Guide to collecting Blvck Points\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_8.28.59_PM_1024x1024.png?v=1666614553\" /></p>\r\n\r\n<p>You can easily keep track of how many&nbsp;points you&#39;ve accumulated and the rate at which you&#39;re accumulating them with the status&nbsp;bar under the &quot;Rewards Earned&quot; section. You&#39;ll have to collect the&nbsp;points to spend them. To do so, simply&nbsp;click on the &quot;Collect&quot; button as depicted by Arrow 1 in the above figure. Upon&nbsp;signing a transaction similar to the one you did when connecting your wallet to the staking site, the points collected will be reflected on the top right as&nbsp;depicted by arrow 2.</p>\r\n\r\n<p>The status&nbsp;bar also shows the number of NFTs being staking and the combined points of all the staked NFTs every 12 Hours in your wallet. You might have noticed that the wallet in the figure above contained 10 NFTs but only shows 9 NFTs currently being staked. This is because NFT #1102 is listed on OpenSea and is thus not considered staked and will not accumulate any points until it is delisted.</p>\r\n\r\n<p><img alt=\"Refresh Metadata on the Staking website\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-26_at_9.26.29_PM_600x600.png?v=1666790804\" /></p>\r\n\r\n<p>You may encounter issues such as being incorrectly identified as listed or even incorrect staking duration. Fret not, You can force a refresh of the metadata by clicking the refresh icon on the NFT that is displaying the incorrect information. This will fetch the most up-to-date&nbsp;data on the respective&nbsp;NFT ID in the blockchain and update accordingly.</p>\r\n\r\n<h3><strong>Blvck Marketplace</strong>&nbsp;</h3>\r\n\r\n<p>Now that you know how to accumulate and collect your points, let&#39;s learn how to spend them! For this, we&#39;ll visit the Blvck Marketplace where all the desirable goodies are located. &nbsp;</p>\r\n\r\n<p>In this section of the staking site, you&#39;ll see items that can be redeemed for Blvck Points. If you have won one of the Whitelist raffles, you&#39;ll be prompted to submit your wallet address in the respective project&#39;s tab. The Collab team at Blvck will then pass it over to the respective partner project to be added to their contracts allowing you to mint their project.</p>\r\n\r\n<p><img alt=\"Submit wallet address\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_11.56.28_PM_600x600.png?v=1666627016\" /></p>\r\n\r\n<p><strong>Safety Tip:</strong>&nbsp;Never mint a project with your main wallet - always use a burner wallet. A burner wallet can be interpreted&nbsp;as a throwaway wallet in which it holds no assets of significant value. There have been many instances of scam mint projects being wallet drainers. This means&nbsp;upon interaction&nbsp;with their contract, all other assets in your wallet will be stolen and transferred to the malicious actor. To safeguard against this, always use a burner wallet when minting&nbsp;<strong>any&nbsp;</strong>project.</p>\r\n\r\n<p><img alt=\"Blvck Marketplace\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-24_at_4.13.59_AM_600x600.png?v=1666556093\" /></p>\r\n\r\n<p><img alt=\"Redeem A Blvck Hoodie\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/BlvckHoodieStaking_600x600.png?v=1666556128\" /></p>\r\n\r\n<p>On the 1st and 15th of every month, we&#39;ll host&nbsp;our<em>&nbsp;<strong>giveaways</strong>&nbsp;</em>on the staking site!&nbsp;Here, winners can pick&nbsp;<strong>any 2 pieces&nbsp;</strong>of Blvck Merchandise, excluding collaboration items, in stock, and in their size and have it shipped to them at&nbsp;<strong>no</strong>&nbsp;cost!&nbsp;The giveaway on the 1st is open to&nbsp;<strong>all</strong>&nbsp;Blvck Genesis NFT holders while the second giveaway on the 15th is open to sharks and above!</p>\r\n\r\n<p>The requirements for the different tiers are as follows:</p>\r\n\r\n<ul>\r\n	<li>Sharks: Hold 5 Blvck Genesis NFTs</li>\r\n	<li>Whale: Hold 10 Blvck Genesis NFTs</li>\r\n	<li>Humpback: Hold 20 Blvck Genesis NFTs</li>\r\n</ul>\r\n\r\n<p>We&nbsp;<strong>strongly&nbsp;</strong>recommend getting your holder status verified under the &quot;Holder-verification&quot; channel in the discord. Our&nbsp;Discord offers a myriad of benefits like Alpha calls, feedback sessions, and weekly team AMAs that keep you engaged with like-minded community members.&nbsp;It&#39;s the best place to keep up-to-date with all the latest information in the WEB3 space for Blvck.</p>\r\n\r\n<h3><strong>Special Giveaway</strong></h3>\r\n\r\n<p>You may have noticed a banner on the bottom right of the staking site stating you can claim a set of playing cards. As an incentive, we are offering a set of limited edition&nbsp;<strong>Black Genesis-themed playing cards</strong>&nbsp;to all Black Genesis NFT holders. Holders whose NFTs have been staked for more than 90 days will be eligible for this giveaway!&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" id=\"twitter-widget-0\" scrolling=\"no\" src=\"https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfdGltZWxpbmVfbGlzdCI6eyJidWNrZXQiOlsibGlua3RyLmVlIiwidHIuZWUiLCJ0ZXJyYS5jb20uYnIiLCJ3d3cubGlua3RyLmVlIiwid3d3LnRyLmVlIiwid3d3LnRlcnJhLmNvbS5iciJdLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdGltZWxpbmVfMTIwMzQiOnsiYnVja2V0IjoidHJlYXRtZW50IiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9lZGl0X2JhY2tlbmQiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3JlZnNyY19zZXNzaW9uIjp7ImJ1Y2tldCI6Im9uIiwidmVyc2lvbiI6bnVsbH0sInRmd19jaGluX3BpbGxzXzE0NzQxIjp7ImJ1Y2tldCI6ImNvbG9yX2ljb25zIiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9yZXN1bHRfbWlncmF0aW9uXzEzOTc5Ijp7ImJ1Y2tldCI6InR3ZWV0X3Jlc3VsdCIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2Vuc2l0aXZlX21lZGlhX2ludGVyc3RpdGlhbF8xMzk2MyI6eyJidWNrZXQiOiJpbnRlcnN0aXRpYWwiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2V4cGVyaW1lbnRzX2Nvb2tpZV9leHBpcmF0aW9uIjp7ImJ1Y2tldCI6MTIwOTYwMCwidmVyc2lvbiI6bnVsbH0sInRmd19kdXBsaWNhdGVfc2NyaWJlc190b19zZXR0aW5ncyI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdmlkZW9faGxzX2R5bmFtaWNfbWFuaWZlc3RzXzE1MDgyIjp7ImJ1Y2tldCI6InRydWVfYml0cmF0ZSIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2hvd19ibHVlX3ZlcmlmaWVkX2JhZGdlIjp7ImJ1Y2tldCI6Im9mZiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdHdlZXRfZWRpdF9mcm9udGVuZCI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9fQ%3D%3D&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1572224618953326592&amp;lang=en&amp;origin=https%3A%2F%2Femea.blvck.com%2Fblogs%2Fblvck-paris%2Fblvck-genesis-stake-to-win&amp;sessionId=8b111cf6c9a89a22acf73e77870c26504fda5429&amp;siteScreenName=BlvckParis&amp;theme=light&amp;widgetsVersion=a3525f077c700%3A1667415560940&amp;width=550px\" title=\"Twitter Tweet\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In order to remain staked, you must unlist your NFTs from any NFT marketplace and simply keep them in your wallet. The total time staked for your NFT can be found by hovering over one of your NFTs on the staking page as illustrated below.</p>\r\n\r\n<p><img alt=\"Blvck Genesis Total Staked Time\" src=\"https://cdn.shopify.com/s/files/1/0600/3271/2869/files/Screenshot_2022-10-26_at_6.04.38_AM_600x600.png?v=1666735640\" /></p>\r\n\r\n<p>By taking the timestamp difference between the last transaction on the respective NFT ID and the present time, we calculate staked time. As a result, any interaction on the blockchain for the NFT will reset the total staked time.&nbsp;Actions like transfers, listing, and selling are some of the examples that will reset this counter.</p>\r\n\r\n<p>As with all things in the world, nothing is perfect and there are always kinks to be ironed out. Blvck council members and the team beta-tested the platform before it was pushed live, allowing holders to enjoy all the benefits previously described. Blvck is committed to our community, taking all feedback and suggestions seriously and reviewing them thoroughly - always looking for ways to improve the platform - whether it be through enhancing the features or improving the overall user experience!</p>', 'default', NULL, 'blvck-genesis-stake-to-win-108', '1', NULL, '/kcfinder-master/upload/images/Blog/Screenshot_2022-10-31_at_20.46.32_1950x.png', 'post', 0, 'en', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:56:00', '2022-11-09 04:56:00'),
(109, 'Blvck Paris: Into the Metaverse', NULL, '<h3><strong>Partnership with Decentraland Games</strong></h3>\r\n\r\n<p>Blvck Paris has formed a partnership with Decentraland Games. If you are a Blvck Genesis NFT holder, you would have received a surprise airdrop for an exclusive NFT wearable!</p>\r\n\r\n<p>With this NFT wearable, you can customise your avatar around Decentraland and even play in ICE Poker&#39;s new Tournament mode at&nbsp;<strong>no</strong>&nbsp;cost!</p>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.shopify.com/s/files/1/2252/3393/files/xO8QkTSgL0c6l2pDLwn5tbX0iwwGaXU_wla6kGtjqM5unEymjEb4zMHUkavT4jVJk-MmdwybPoVVHZSdNDVM_HWpJ06hj9SMwG7cLXg_480x480.webp?v=1666288685\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" id=\"twitter-widget-0\" scrolling=\"no\" src=\"https://platform.twitter.com/embed/Tweet.html?dnt=false&amp;embedId=twitter-widget-0&amp;features=eyJ0ZndfdGltZWxpbmVfbGlzdCI6eyJidWNrZXQiOlsibGlua3RyLmVlIiwidHIuZWUiLCJ0ZXJyYS5jb20uYnIiLCJ3d3cubGlua3RyLmVlIiwid3d3LnRyLmVlIiwid3d3LnRlcnJhLmNvbS5iciJdLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2hvcml6b25fdGltZWxpbmVfMTIwMzQiOnsiYnVja2V0IjoidHJlYXRtZW50IiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9lZGl0X2JhY2tlbmQiOnsiYnVja2V0Ijoib24iLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X3JlZnNyY19zZXNzaW9uIjp7ImJ1Y2tldCI6Im9uIiwidmVyc2lvbiI6bnVsbH0sInRmd19jaGluX3BpbGxzXzE0NzQxIjp7ImJ1Y2tldCI6ImNvbG9yX2ljb25zIiwidmVyc2lvbiI6bnVsbH0sInRmd190d2VldF9yZXN1bHRfbWlncmF0aW9uXzEzOTc5Ijp7ImJ1Y2tldCI6InR3ZWV0X3Jlc3VsdCIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2Vuc2l0aXZlX21lZGlhX2ludGVyc3RpdGlhbF8xMzk2MyI6eyJidWNrZXQiOiJpbnRlcnN0aXRpYWwiLCJ2ZXJzaW9uIjpudWxsfSwidGZ3X2V4cGVyaW1lbnRzX2Nvb2tpZV9leHBpcmF0aW9uIjp7ImJ1Y2tldCI6MTIwOTYwMCwidmVyc2lvbiI6bnVsbH0sInRmd19kdXBsaWNhdGVfc2NyaWJlc190b19zZXR0aW5ncyI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdmlkZW9faGxzX2R5bmFtaWNfbWFuaWZlc3RzXzE1MDgyIjp7ImJ1Y2tldCI6InRydWVfYml0cmF0ZSIsInZlcnNpb24iOm51bGx9LCJ0Zndfc2hvd19ibHVlX3ZlcmlmaWVkX2JhZGdlIjp7ImJ1Y2tldCI6Im9mZiIsInZlcnNpb24iOm51bGx9LCJ0ZndfdHdlZXRfZWRpdF9mcm9udGVuZCI6eyJidWNrZXQiOiJvbiIsInZlcnNpb24iOm51bGx9fQ%3D%3D&amp;frame=false&amp;hideCard=false&amp;hideThread=false&amp;id=1582401146945097731&amp;lang=en&amp;origin=https%3A%2F%2Femea.blvck.com%2Fblogs%2Fblvck-paris%2Fblvck-paris-into-the-metaverse&amp;sessionId=202326b4b0a3ed23b32abee43f77182841213e08&amp;siteScreenName=BlvckParis&amp;theme=light&amp;widgetsVersion=a3525f077c700%3A1667415560940&amp;width=550px\" title=\"Twitter Tweet\"></iframe></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>What is the Metaverse?</strong></h3>\r\n\r\n<p>So, you&rsquo;ve read about the partnership, and the airdrop and got excited? That&rsquo;s great! But what now? To further understand the significance and benefits of this, you&rsquo;ll first need to grasp the concept of the metaverse in its entirety.</p>\r\n\r\n<p>The metaverse can be defined as a virtual space that is limited only by your imagination! Creators and companies can host digital stores, artists can host virtual events, concerts and so much more. Multi-platform virtual worlds might seem like a new concept today, but they have existed for years now ranging from video games to social media.</p>\r\n\r\n<p><strong>Case Study #1</strong></p>\r\n\r\n<p>Covid is rampant in the streets and many countries and cities are in lockdown. After several weeks&nbsp;of isolation, they&#39;ll&nbsp;start to feel angsty and claustrophobic at home. With the Metaverse and AR/VR, they can virtually meet their friends and even attend concerts that are happening in the virtual world &ndash; The Metaverse.</p>\r\n\r\n<h3><strong>Relationship between NFTs and the Metaverse</strong></h3>\r\n\r\n<p>Now that you have an understanding of what the metaverse is and what it&rsquo;s capable of, you might wonder how&nbsp;your NFT comes into play? Excellent question!</p>\r\n\r\n<p>Non-Fungible Tokens (NFTs) now have a wide range of applications but among them, one of the most promising utilities&nbsp;is as digital objects in the metaverse.</p>\r\n\r\n<p>With this, you can represent your Virtual self with your NFT in the Metaverse! You&nbsp;can attend digital parties, live virtual events and even interact with your friends using&nbsp;your favourite NFT as your avatar.</p>\r\n\r\n<p>NFTs in the Metaverse can also be used as proof for asset ownership &ndash; Let&rsquo;s take a look at a case study to further illustrate this point:</p>\r\n\r\n<p><strong>Case Study #2&nbsp;</strong></p>\r\n\r\n<p>Jane has been wanting to buy a Blvck Paris Outerwear for the longest time but has no physical stores near her to try it on. With the opening of Blvck Paris&rsquo;s Metaverse store, she can virtually proceed to try on the merchandise and purchase an NFT of the exact merchandise she wants to buy as proof of ownership. This NFT would allow her to redeem it for the respective physical product and as it is cryptographically verifiable, the Blvck Paris team can verify its authenticity on the spot.</p>\r\n\r\n<h3><strong>Live Event and Giveaways</strong></h3>\r\n\r\n<p><img alt=\"Blvck Paris X Decentraland Games Event Details\" src=\"https://cdn.shopify.com/s/files/1/2252/3393/files/Screenshot_2022-10-21_at_2.57.36_AM_600x600.png?v=1666292276\" /></p>\r\n\r\n<p>To celebrate this joyous occasion, we&rsquo;re hosting a party in Decentraland at DG&rsquo;s Venue!</p>\r\n\r\n<p>Come by with your Wearables and enjoy live music by DJ T-RAX and chill vibes with like-minded members of the Blvck Community!&nbsp;</p>\r\n\r\n<p>We&#39;ll also be doing a&nbsp;<strong><em>Giveaway&nbsp;</em></strong>where the winners get to pick between a full Blvck monogram physical tracksuit or a Blvck Genesis NFT &ndash; Your choice!</p>\r\n\r\n<p>To participate in the giveaway,&nbsp;simply spot Sloth from our community in Tominoya Casino and take a screenshot of him! Post that screenshot on Twitter with the hashtag #BlvckxDCG and finally&nbsp;post a screenshot of your tweet in the &quot;Proof&quot; Channel on Discord!</p>\r\n\r\n<p>Administrative details for&nbsp;the event are&nbsp;as follows:</p>\r\n\r\n<ul>\r\n	<li>Date: 21st October 2022 (Friday)</li>\r\n	<li>Time: 10 am EST</li>\r\n	<li>Location: Tominoya Casino in Decentraland (-119,136)&nbsp;</li>\r\n</ul>', 'default', NULL, 'blvck-paris-into-the-metaverse', '1', NULL, '/kcfinder-master/upload/images/Blog/Picture_1_540x.png', 'post', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 07:00:43', '2022-11-09 07:00:43'),
(97, 'Blvck Evil Twin Teddy Bear Hoodie', NULL, '<p>The &#39;Blvck Evil Twin Teddy Bear Hoodie&#39;&nbsp;features a one-of-a-kind look with&nbsp;a Blvck teddy&nbsp;Illustration in an attentive embroidery on the front.</p>\r\n\r\n<p>Made from ultra-soft 100% Terry Cotton,&nbsp;this limited edition&nbsp;hoodie keeps you warm and stylish all day long.</p>\r\n\r\n<p>Limited supply.</p>\r\n\r\n<p>Fits regular size.</p>', 'default', 'SALE', 'blvck-evil-twin-teddy-bear-hoodie', '1', NULL, '/kcfinder-master/upload/images/Product/3_9ffdb763-9804-44cc-b80b-e75da54f8be9_3000x.jpg', 'product', 0, 'vn', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-09 04:18:41', '2022-11-09 04:18:41'),
(89, 'Instagram', 'instagram', NULL, 'default', NULL, 'instagram', '1', NULL, NULL, 'mang-xa-hoi', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:12:29'),
(90, 'Instagram', 'instagram', NULL, 'default', NULL, 'instagram-90', '1', NULL, NULL, 'mang-xa-hoi', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:12:29'),
(131, 'Pinterest', 'pinterest', '', 'default', NULL, 'pinterest', '1', NULL, '', 'mang-xa-hoi', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:12:47'),
(132, 'pinterest', 'pinterest', '', 'default', NULL, 'pinterest-132', '1', NULL, '', 'mang-xa-hoi', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:12:47'),
(133, 'Facebook', 'facebook', '', 'default', NULL, 'facebook', '1', NULL, '', 'mang-xa-hoi', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:13:06'),
(134, 'Facebook', 'facebook', '', 'default', NULL, 'facebook-134', '1', NULL, '', 'mang-xa-hoi', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:13:06'),
(135, 'Twitter', 'twitter', NULL, 'default', NULL, 'twitter', '1', NULL, NULL, 'mang-xa-hoi', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:17:29'),
(136, 'Twitter', 'twitter', NULL, 'default', NULL, 'twitter-136', '1', NULL, NULL, 'mang-xa-hoi', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:17:29'),
(137, 'Youtube', 'youtube', '', 'default', NULL, 'youtube', '1', NULL, '', 'mang-xa-hoi', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:13:46'),
(138, 'Youtube', 'youtube', '', 'default', NULL, 'youtube-138', '1', NULL, '', 'mang-xa-hoi', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-17 06:13:46'),
(91, 'BLVCK HOME', 'All shades of black available.', '', 'default', NULL, 'blvck-home', '1', NULL, '/kcfinder-master/upload/images/social_share_74_d4088aec-1ac0-4f07-a1b7-0ceb116e0577.jpg', 'block-1', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:45:26'),
(92, 'BLVCK HOME', 'All shades of black available.', '', 'default', NULL, 'blvck-home-92', '1', NULL, '/kcfinder-master/upload/images/social_share_74_d4088aec-1ac0-4f07-a1b7-0ceb116e0577.jpg', 'block-1', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:45:26'),
(93, 'WHTE', 'Welcome to the bright side.', NULL, 'default', NULL, 'whte', '1', NULL, '/kcfinder-master/upload/images/whte.jpg', 'block-2', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:49:20'),
(94, 'WHTE', 'Welcome to the bright side.', NULL, 'default', NULL, 'whte-94', '1', NULL, '/kcfinder-master/upload/images/whte.jpg', 'block-2', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:49:20'),
(95, 'BLVCK X CASETIFY', 'Limited collab.', '', 'default', NULL, 'blvck-x-casetify', '1', NULL, '/kcfinder-master/upload/images/casetify_6f1d1ac2-f7b4-450c-9a99-ebe7a5e62b6b_1512x.jpg', 'block-3', 0, 'vn', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:51:03'),
(96, 'BLVCK X CASETIFY', 'Limited collab.', '', 'default', NULL, 'blvck-x-casetify-96', '1', NULL, '/kcfinder-master/upload/images/casetify_6f1d1ac2-f7b4-450c-9a99-ebe7a5e62b6b_1512x.jpg', 'block-3', 0, 'en', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-11-09 02:51:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
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
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `code`, `post_id`, `price`, `discount`, `updated_at`, `discount_start`, `discount_end`, `image_list`, `properties`, `buy_together`, `buy_after`) VALUES
(25, NULL, 105, '4419000', NULL, NULL, NULL, NULL, '/kcfinder-master/upload/images/Product/01_89ce4efd-5069-4fec-8ea0-de010dad7ff8_3000x.jpg,/kcfinder-master/upload/images/Product/02_6f788706-0ec4-49af-8b29-deee25d79ff9_3000x.jpg,/kcfinder-master/upload/images/Product/03_38431b57-7fb2-4a93-bc5a-1be0ef3c5f6a_3000x.jpg', NULL, NULL, NULL),
(24, NULL, 104, '4419000', NULL, NULL, NULL, NULL, '/kcfinder-master/upload/images/Product/00-1_4100x.jpg,/kcfinder-master/upload/images/Product/00-2_3000x.jpg,/kcfinder-master/upload/images/Product/01_99eb7094-43f3-43b1-8384-cd6e9411b0a0_3000x.jpg,/kcfinder-master/upload/images/Product/02_dbd019a7-9df7-43de-8cf2-cd392b4b90ab_3000x.jpg', NULL, NULL, NULL),
(23, NULL, 103, '4419000', NULL, NULL, NULL, NULL, '/kcfinder-master/upload/images/Product/00-1_4100x.jpg,/kcfinder-master/upload/images/Product/00-2_3000x.jpg,/kcfinder-master/upload/images/Product/01_99eb7094-43f3-43b1-8384-cd6e9411b0a0_3000x.jpg,/kcfinder-master/upload/images/Product/02_dbd019a7-9df7-43de-8cf2-cd392b4b90ab_3000x.jpg', NULL, NULL, NULL),
(22, NULL, 102, '3928000', NULL, '2022-11-09 04:25:34', NULL, NULL, '/kcfinder-master/upload/images/Product/01_d4a2b6c9-d981-4560-bdff-9f2add3c0724_3000x.jpg,/kcfinder-master/upload/images/Product/02_de2c8ad4-87c6-43f6-89d0-1aeb8dd21ef0_3000x.jpg,/kcfinder-master/upload/images/Product/03_d3251dd0-1937-4dde-a46e-113e6493d7e4_3000x.jpg,/kcfinder-master/upload/images/Product/04_5e448542-8f1a-4601-8f38-9c5098cfd47a_3000x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(21, NULL, 101, '3928000', NULL, '2022-11-09 04:25:34', NULL, NULL, '/kcfinder-master/upload/images/Product/01_d4a2b6c9-d981-4560-bdff-9f2add3c0724_3000x.jpg,/kcfinder-master/upload/images/Product/02_de2c8ad4-87c6-43f6-89d0-1aeb8dd21ef0_3000x.jpg,/kcfinder-master/upload/images/Product/03_d3251dd0-1937-4dde-a46e-113e6493d7e4_3000x.jpg,/kcfinder-master/upload/images/Product/04_5e448542-8f1a-4601-8f38-9c5098cfd47a_3000x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(19, NULL, 99, '3192000', NULL, '2022-11-09 04:17:57', NULL, NULL, '/kcfinder-master/upload/images/Product/00_3000x.jpg,/kcfinder-master/upload/images/Product/01_d5fe4c51-1dda-43b0-8f43-788eac00386c_3750x.png,/kcfinder-master/upload/images/Product/02small_a0be6f18-7e9c-4ecc-9f1e-b4f7cc4ec51d_3000x.jpg,/kcfinder-master/upload/images/Product/06_fb123cbf-e9ba-48c9-bd87-2d38110bfc04_3000x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(20, NULL, 100, '3192000', NULL, '2022-11-09 04:17:57', NULL, NULL, '/kcfinder-master/upload/images/Product/00_3000x.jpg,/kcfinder-master/upload/images/Product/01_d5fe4c51-1dda-43b0-8f43-788eac00386c_3750x.png,/kcfinder-master/upload/images/Product/02small_a0be6f18-7e9c-4ecc-9f1e-b4f7cc4ec51d_3000x.jpg,/kcfinder-master/upload/images/Product/06_fb123cbf-e9ba-48c9-bd87-2d38110bfc04_3000x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(17, NULL, 97, '2946000', NULL, '2022-11-09 04:18:41', NULL, NULL, '/kcfinder-master/upload/images/Product/3_9ffdb763-9804-44cc-b80b-e75da54f8be9_3000x.jpg,/kcfinder-master/upload/images/Product/front_53fd5622-4fd4-441d-a1dc-59a706224d67_4100x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(18, NULL, 98, '2.946.000', NULL, '2022-11-09 04:18:41', NULL, NULL, '/kcfinder-master/upload/images/Product/3_9ffdb763-9804-44cc-b80b-e75da54f8be9_3000x.jpg,/kcfinder-master/upload/images/Product/front_53fd5622-4fd4-441d-a1dc-59a706224d67_4100x.jpg', 'XS,S,M,L,XL,2XL', NULL, NULL),
(26, NULL, 106, '4419000', NULL, NULL, NULL, NULL, '/kcfinder-master/upload/images/Product/01_89ce4efd-5069-4fec-8ea0-de010dad7ff8_3000x.jpg,/kcfinder-master/upload/images/Product/02_6f788706-0ec4-49af-8b29-deee25d79ff9_3000x.jpg,/kcfinder-master/upload/images/Product/03_38431b57-7fb2-4a93-bc5a-1be0ef3c5f6a_3000x.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
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
-- Cấu trúc bảng cho bảng `setting_order`
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
-- Cấu trúc bảng cho bảng `subcribe_email`
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
-- Đang đổ dữ liệu cho bảng `subcribe_email`
--

INSERT INTO `subcribe_email` (`subcribe_email_id`, `email`, `name`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'vietbt@vatgia.com', NULL, NULL, '2022-05-14 03:49:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_post`
--

CREATE TABLE `sub_post` (
  `sub_post_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type_sub_post_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_post`
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
(48, 88, 'slider-shipping-policy'),
(49, 89, 'mang-xa-hoi'),
(50, 90, 'mang-xa-hoi'),
(51, 91, 'block-1'),
(52, 92, 'block-1'),
(53, 93, 'block-2'),
(54, 94, 'block-2'),
(55, 95, 'block-3'),
(56, 96, 'block-3'),
(57, 127, 'banner'),
(58, 128, 'banner'),
(59, 129, 'banner'),
(60, 130, 'banner'),
(61, 131, 'mang-xa-hoi'),
(62, 132, 'mang-xa-hoi'),
(63, 133, 'mang-xa-hoi'),
(64, 134, 'mang-xa-hoi'),
(65, 135, 'mang-xa-hoi'),
(66, 136, 'mang-xa-hoi'),
(67, 137, 'mang-xa-hoi'),
(68, 138, 'mang-xa-hoi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `template`
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
-- Cấu trúc bảng cho bảng `type_information`
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
-- Đang đổ dữ liệu cho bảng `type_information`
--

INSERT INTO `type_information` (`type_infor_id`, `title`, `type_input`, `placeholder`, `created_at`, `updated_at`, `slug`) VALUES
(29, 'Currency', 'one_line', NULL, NULL, NULL, 'currency'),
(27, 'Tên shop', 'one_line', NULL, NULL, NULL, 'ten-shop'),
(26, 'Logo', 'image', NULL, NULL, NULL, 'logo'),
(25, 'Icon', 'image', NULL, NULL, NULL, 'icon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_input`
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
-- Đang đổ dữ liệu cho bảng `type_input`
--

INSERT INTO `type_input` (`type_input_id`, `title`, `slug`, `type_input`, `placeholder`, `post_used`, `general`, `created_at`, `updated_at`) VALUES
(67, 'link', 'link', 'one_line', NULL, 'mang-xa-hoi', NULL, NULL, NULL),
(65, 'Giảm giá', 'giam-gia', 'one_line', NULL, 'product', NULL, NULL, NULL),
(64, 'SIZE CHART', 'size-chart', 'image', NULL, 'product', NULL, NULL, '2022-11-09 04:06:54'),
(63, 'SHIPPING & RETURNS', 'shipping-returns', 'multi_line', NULL, 'product', NULL, NULL, '2022-11-09 04:05:11'),
(62, 'Link button 2', 'link-button-2', 'one_line', NULL, 'block-2,banner', NULL, NULL, '2022-11-17 05:56:31'),
(61, 'Button 2', 'button-2', 'one_line', NULL, 'block-2,banner', NULL, NULL, '2022-11-17 05:56:41'),
(66, 'sub title', 'sub-title', 'one_line', NULL, 'banner', NULL, NULL, NULL),
(60, 'Link button 1', 'link-button-1', 'one_line', NULL, 'block-3,block-2,block-1,banner', NULL, NULL, '2022-11-17 05:56:46'),
(59, 'Button 1', 'button-1', 'one_line', NULL, 'block-3,block-2,block-1,banner', NULL, NULL, '2022-11-17 05:56:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_sub_post`
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
-- Đang đổ dữ liệu cho bảng `type_sub_post`
--

INSERT INTO `type_sub_post` (`type_sub_post_id`, `title`, `slug`, `location`, `template`, `input_default_used`, `have_sort`, `show_menu`, `is_index_hot`, `created_at`, `updated_at`) VALUES
(1, 'Mạng xã hội', 'mang-xa-hoi', NULL, 'default', 'title,image,description', 0, 0, 0, NULL, '2022-11-09 02:23:00'),
(4, 'Banner', 'banner', NULL, 'default', 'image', 0, 0, 0, NULL, '2022-11-09 02:24:22'),
(5, 'Block 1', 'block-1', NULL, 'default', 'title,image,description', 0, 0, 0, NULL, '2022-11-09 02:40:01'),
(6, 'Block 2', 'block-2', NULL, 'default', 'image,description', 0, 0, 0, NULL, NULL),
(7, 'Block 3', 'block-3', NULL, 'default', 'image,description', 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `phone`, `image`, `role`, `name`, `updated_at`, `created_at`, `age`, `address`, `point`) VALUES
(1, 'vn3ctran@gmail.com', '$2y$10$LQEfgiaOF.1riQZHlmd91eZ7tzvxIRAlwYL8zwoOuj4BL1/td8I4m', 'mgwgym0lSXPaCihh5WXPXsfY0FCSMt0UaH3POIIKhlgjtg9cRupm6AQeJggT', '12345678', 'upload/175246_mat-ngo-nghing3.jpg', 3, 'Quản trị viên', '2017-11-14 09:26:29', NULL, 'nam', 'Cổ đông sơn tây', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_post_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  ADD PRIMARY KEY (`group_mail_id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`infor_id`);

--
-- Chỉ mục cho bảng `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`input_id`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Chỉ mục cho bảng `language_save`
--
ALTER TABLE `language_save`
  ADD PRIMARY KEY (`language_save_id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  ADD PRIMARY KEY (`menu_element_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  ADD PRIMARY KEY (`order_bank_id`);

--
-- Chỉ mục cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  ADD PRIMARY KEY (`order_code_sale_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Chỉ mục cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  ADD PRIMARY KEY (`order_ship_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  ADD PRIMARY KEY (`setting_order_id`);

--
-- Chỉ mục cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  ADD PRIMARY KEY (`subcribe_email_id`);

--
-- Chỉ mục cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  ADD PRIMARY KEY (`sub_post_id`);

--
-- Chỉ mục cho bảng `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`template_id`);

--
-- Chỉ mục cho bảng `type_information`
--
ALTER TABLE `type_information`
  ADD PRIMARY KEY (`type_infor_id`);

--
-- Chỉ mục cho bảng `type_input`
--
ALTER TABLE `type_input`
  ADD PRIMARY KEY (`type_input_id`);

--
-- Chỉ mục cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  ADD PRIMARY KEY (`type_sub_post_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `category_post`
--
ALTER TABLE `category_post`
  MODIFY `category_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_mail`
--
ALTER TABLE `group_mail`
  MODIFY `group_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `information`
--
ALTER TABLE `information`
  MODIFY `infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `input`
--
ALTER TABLE `input`
  MODIFY `input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=905;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `language_save`
--
ALTER TABLE `language_save`
  MODIFY `language_save_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `menu_element`
--
ALTER TABLE `menu_element`
  MODIFY `menu_element_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `order_bank`
--
ALTER TABLE `order_bank`
  MODIFY `order_bank_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_code_sale`
--
ALTER TABLE `order_code_sale`
  MODIFY `order_code_sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `order_ship`
--
ALTER TABLE `order_ship`
  MODIFY `order_ship_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_order`
--
ALTER TABLE `setting_order`
  MODIFY `setting_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subcribe_email`
--
ALTER TABLE `subcribe_email`
  MODIFY `subcribe_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sub_post`
--
ALTER TABLE `sub_post`
  MODIFY `sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `template`
--
ALTER TABLE `template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `type_information`
--
ALTER TABLE `type_information`
  MODIFY `type_infor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `type_input`
--
ALTER TABLE `type_input`
  MODIFY `type_input_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `type_sub_post`
--
ALTER TABLE `type_sub_post`
  MODIFY `type_sub_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
