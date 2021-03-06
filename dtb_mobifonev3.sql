-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 09:32 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dtb_mobifone`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_13_074130_create_tbl_admin_table', 1),
(5, '2021_06_21_094306_create_tbl_category', 2),
(6, '2021_06_21_094433_create_tbl_brand', 3),
(7, '2021_06_22_071136_create_tbl_product', 4),
(8, '2021_06_22_081232_create_tbl_product', 5),
(9, '2021_06_22_122137_create_tbl_service', 6),
(10, '2021_06_22_123317_create_tbl_service', 7),
(11, '2021_06_22_123227_create_tbl_service', 8),
(12, '2021_06_23_075929_create_tbl_data_service', 9),
(13, '2021_06_24_092726_create_tbl_call_service', 10),
(14, '2021_06_24_161842_create_tbl_service', 11),
(15, '2021_07_04_130122_create_tbl_customer', 12),
(16, '2021_07_04_132847_create_tbl_customers', 13),
(17, '2021_07_07_034859_create_tbl_slider', 14),
(18, '2021_07_07_035937_create_tbl_slider', 15),
(19, '2021_07_10_062507_create_tbl_sim', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '00123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(3, 'Apple', 'DT Apple', 0, NULL, NULL),
(4, 'Oppo', 'DT Oppoa', 0, NULL, NULL),
(5, 'Oppo', 'DT oppo', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_call_service`
--

CREATE TABLE `tbl_call_service` (
  `call_service_id` int(10) UNSIGNED NOT NULL,
  `call_service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_service_price` int(11) NOT NULL,
  `call_service_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_call_service`
--

INSERT INTO `tbl_call_service` (`call_service_id`, `call_service_name`, `call_service_price`, `call_service_content`, `call_service_status`, `created_at`, `updated_at`) VALUES
(3, 'Callme', 20000, 'Goi mien phi 20p', 0, NULL, NULL),
(4, 'CALL20', 20000, '20p/ th??ng', 0, NULL, NULL),
(5, 'CALL75', 75000, '75k/100phut', 0, NULL, NULL),
(6, 'CALL20', 20000, '60p/1ngay', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(4, '??i???n tho???i', '??i???n tho???i', 0, NULL, NULL),
(7, 'Sim ??i???n tho???i', 'Sim ??i???n tho???i', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(1, 'thaa', 'tantranstst@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '+84986340387', NULL, NULL),
(2, 'tan', 'tantranstst@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '12345', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_service`
--

CREATE TABLE `tbl_data_service` (
  `data_service_id` int(10) UNSIGNED NOT NULL,
  `data_service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_service_price` int(11) NOT NULL,
  `data_service_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_data_service`
--

INSERT INTO `tbl_data_service` (`data_service_id`, `data_service_name`, `data_service_price`, `data_service_content`, `data_service_status`, `created_at`, `updated_at`) VALUES
(1, 'Call20', 222222, '20k/50p goi', 0, NULL, NULL),
(2, 'DATA2', 299999, '50gb/th??ngd', 0, NULL, NULL),
(3, 'DATA30', 30000, '2GB/ 1 th??ng', 0, NULL, NULL),
(4, 'DATA15k', 15000, '2gb/1 ng??y', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `product_quantity`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_images`, `product_status`, `created_at`, `updated_at`) VALUES
(15, 'iphone 12', 4, 10, 3, '<ul>\r\n	<li>\r\n	<p>OLED6.1&quot;Super Retina XDR</p>\r\n	</li>\r\n	<li>\r\n	<p>H??? ??i???u h&agrave;nh:</p>\r\n\r\n	<p>iOS 14</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera sau:</p>\r\n\r\n	<p>2 camera 12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Camera tr?????c:</p>\r\n\r\n	<p>12 MP</p>\r\n	</li>\r\n	<li>\r\n	<p>Chip:</p>\r\n\r\n	<p>Apple A14 Bionic</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>4 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>B??? nh??? trong:</p>\r\n\r\n	<p>64 GB</p>\r\n	</li>\r\n	<li>\r\n	<p>SIM:</p>\r\n\r\n	<p>1 Nano SIM &amp; 1 eSIMH??? tr??? 5G</p>\r\n	</li>\r\n	<li>\r\n	<p>Pin, S???c:</p>\r\n\r\n	<p>2815 mAh20 W</p>\r\n	</li>\r\n</ul>', '<h3>Trong nh???ng th&aacute;ng cu???i n??m 2020,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham kh???o s???n ph???m ch??nh h??ng c???a Apple t???i Th??? Gi???i Di ?????ng\">Apple</a>&nbsp;??&atilde; ch&iacute;nh th???c gi???i thi???u ?????n ng?????i d&ugrave;ng c??ng nh?? iFan th??? h??? iPhone&nbsp;12&nbsp;series&nbsp;m???i v???i h&agrave;ng lo???t t&iacute;nh n??ng b???t ph&aacute;, thi???t k??? ???????c l???t x&aacute;c ho&agrave;n to&agrave;n, hi???u n??ng ?????y m???nh m??? v&agrave; m???t trong s??? ??&oacute; ch&iacute;nh l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-12\" target=\"_blank\" title=\"Tham kh???o ??i???n tho???i iPhone 12 ch??nh h??ng t???i Th??? Gi???i Di ?????ng\">iPhone 12 64GB</a>.</h3>\r\n\r\n<h3>Hi???u n??ng v?????t xa m???i gi???i h???n</h3>\r\n\r\n<p>Apple ??&atilde; trang b??? con chip m???i nh???t c???a h&atilde;ng (t&iacute;nh ?????n 11/2020) cho iPhone 12 ??&oacute; l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"T??m hi???u chip A14 Bionic l?? g???\">A14 Bionic</a>, ???????c s???n xu???t tr&ecirc;n ti???n tr&igrave;nh 5 nm v???i hi???u su???t ???n ?????nh h??n so v???i chip A13 ???????c trang b??? tr&ecirc;n phi&ecirc;n b???n ti???n nhi???m&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\" title=\"Tham kh???o ??i???n tho???i iPhone 11 ch??nh h??ng t???i Th??? Gi???i Di ?????ng\">iPhone 11</a>.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/213031/iphone-12-144220-044259.jpg\" onclick=\"return false;\"><img alt=\"Chip A14 Bionic m???nh m??? | iPhone 12\" src=\"https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-144220-044259.jpg\" title=\"Chip A14 Bionic m???nh m??? | iPhone 12\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"T??m hi???u v??? chip Apple A14 Bionic tr??n iPhone 12 v?? iPad Air 2020\">T&igrave;m hi???u v??? chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</a></p>\r\n\r\n<p>V???i CPU Apple A14 Bionic, b???n c&oacute; th??? d??? d&agrave;ng tr???i nghi???m m???i t???a game v???i nh???ng pha chuy???n c???nh m?????t m&agrave; hay h&agrave;ng lo???t hi???u ???ng ????? h???a tuy???t ?????p ??? m???c ????? h???a cao m&agrave; kh&ocirc;ng lo t&igrave;nh tr???ng gi???t lag.</p>', '15990000', '3a536745e4392618d2eef9634a66f20b6.jpg', 0, NULL, NULL),
(16, 'iphone11', 4, 2, 3, '<p>sadvsdvsadv</p>', '<p>sadvsdvsdv</p>', '20000000', 'confusednickyoung-1608526031074136992496983.jpg', 0, NULL, NULL),
(17, 'iphone x', 4, 4, 3, '<p>asfdsd</p>', '<p>sdvsdvdsv</p>', '20000000', 'm3-157407031889323267291837.jpg', 0, NULL, NULL),
(18, 'iphone 7', 4, 10, 3, '<p>asff</p>', '<p>vsdvsdv</p>', '2690000', 'lefkbovz26vjxwqb6fmyue5hwojpuueesfaign5q85.jpeg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `service_id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`service_id`, `service_name`, `service_images`, `service_content`, `service_status`, `created_at`, `updated_at`) VALUES
(11, 'MCA', 't???i xu???ng2.jpg', '<p>D???ch v??? Th&ocirc;ng b&aacute;o cu???c g???i nh??? (MCA) c???a MobiFone gi&uacute;p b???n bi???t th&ocirc;ng tin v??? c&aacute;c cu???c g???i nh??? t???i s??? thu&ecirc; bao c???a m&igrave;nh khi ??i???n tho???i di ?????ng c???a b???n ??ang t???t m&aacute;y, h???t pin ho???c ngo&agrave;i v&ugrave;ng ph??? s&oacute;ng....</p>', 0, NULL, NULL),
(13, 'Game Data', 'm3-157407031889323267291811.jpg', '<p>Game data l&agrave; g&oacute;i c?????c cho ph&eacute;p thu&ecirc; bao c???a MobiFone mi???n ph&iacute; data t???c ????? cao truy c???p ch??i game c???a c&aacute;c Nh&agrave; ph&aacute;t h&agrave;nh Game l???n t???i Vi???t Nam (danh s&aacute;ch game chi ti???t t???i data.mobifone.vn/game)</p>', 0, NULL, NULL),
(14, 'Tvplay', 'm3-157407031889323267291867.jpg', '<p>L&agrave; d???ch v??? gi&uacute;p kh&aacute;ch h&agrave;ng MobiFone xem tr???c ti???p c&aacute;c k&ecirc;nh truy???n h&igrave;nh, xem c&aacute;c n???i dung theo y&ecirc;u c???u v&agrave; c&oacute; th??? th???c hi???n t????ng t&aacute;c (tr??? l???i c&acirc;u h???i, d??? ??o&aacute;n k???t qu???,..) trong khi xem c&aacute;c n???i dung c???a d???ch v??? ngay tr&ecirc;n thi???t b??? di ?????ng (??i???n tho???i v&agrave; m&aacute;y t&iacute;nh b???ng).</p>', 0, NULL, NULL),
(15, 'iflix', 'lefkbovz26vjxwqb6fmyue5hwojpuueesfaign5q79.jpeg', '<p>Video data Iflix l&agrave; g&oacute;i c?????c cho ph&eacute;p thu&ecirc; bao c???a MobiFone kh&ocirc;ng gi???i h???n dung l?????ng t???c ????? cao truy c???p xem phim tr&ecirc;n iflix.com v&agrave; ???ng d???ng Iflix. Kh&aacute;ch h&agrave;ng c&oacute; th??? d&ugrave;ng song song c&ugrave;ng c&aacute;c g&oacute;i data kh&aacute;c.</p>', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sim`
--

CREATE TABLE `tbl_sim` (
  `sim_id` int(10) UNSIGNED NOT NULL,
  `sim_number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sim_price` float NOT NULL,
  `sim_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sim_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sim`
--

INSERT INTO `tbl_sim` (`sim_id`, `sim_number`, `sim_price`, `sim_desc`, `sim_status`, `created_at`, `updated_at`) VALUES
(1, '0483728444', 200000, 'Thoi gian: ko gioi han\r\nTai khoan hien co : 100.000vnc', 0, NULL, NULL),
(2, '0483728432', 200000, 'sadav??vb??b', 0, NULL, NULL),
(3, '034782829', 200000, 'sadvfd', 0, NULL, NULL),
(4, '047583322', 150000, 'dfljdsafva', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_status` int(11) NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_name`, `slider_status`, `slider_image`, `slider_desc`) VALUES
(2, 'banner1', 1, 'IMG_20200504_17425191.jpg', '123'),
(3, 'banner2', 1, 'sale_800x45033.jpg', '??d'),
(4, 'banner3', 1, 'slider-2-min2-257.png', '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_call_service`
--
ALTER TABLE `tbl_call_service`
  ADD PRIMARY KEY (`call_service_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_data_service`
--
ALTER TABLE `tbl_data_service`
  ADD PRIMARY KEY (`data_service_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_sim`
--
ALTER TABLE `tbl_sim`
  ADD PRIMARY KEY (`sim_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_call_service`
--
ALTER TABLE `tbl_call_service`
  MODIFY `call_service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_data_service`
--
ALTER TABLE `tbl_data_service`
  MODIFY `data_service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `service_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_sim`
--
ALTER TABLE `tbl_sim`
  MODIFY `sim_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
