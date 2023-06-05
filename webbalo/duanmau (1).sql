-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 02, 2023 at 02:04 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanmau`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `email` varchar(225) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(3, 'vu', '12345', 'thevu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hinh` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `iduser` int NOT NULL,
  `idsp` int NOT NULL,
  `noidung` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `postdate` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `hinh`, `iduser`, `idsp`, `noidung`, `postdate`, `name`) VALUES
(15, 'images (4).jfif', 38, 7, 'Balo đẹp chất lượng', '01/06/2023', 'The Vu');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `iddanhmuc` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  PRIMARY KEY (`iddanhmuc`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`iddanhmuc`, `tendanhmuc`) VALUES
(1, 'BALO'),
(2, 'VALI KÉO'),
(3, 'TÚI XÁCH'),
(4, 'CẶP CÁC LOẠI'),
(5, 'PHỤ KIỆN');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hinh` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `tensp` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `gia` int NOT NULL,
  `iddanhmuc` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `hinh`, `tensp`, `gia`, `iddanhmuc`) VALUES
(1, 'balonike1.jfif', 'Balo laptop Simplecarry A-City 2 Grey', 670000, 1),
(2, 'download (1).jfif', 'Balo Tomtoc FLIX HT APPROVED 40L 17.3', 2449000, 1),
(3, 'download.jfif', 'Balo laptop khóa số Reeyee RY1007 Black', 1200000, 1),
(4, 'images.jfif', 'Balo Simplecarry P9 Grey', 799000, 1),
(5, 'images (2).jfif', 'Balo laptop Sakos i15 Hero xanh phối nâu', 1342000, 1),
(6, 'images (3).jfif', 'Balo Tresette 5C205SZ Purple', 960000, 1),
(7, 'balo_mikkor_the_eli_mau_xanh_navy2_thumb.png', 'Balo Laptop Mikkor The Eli Backpack Navy', 649000, 1),
(8, 'images (4).jfif', 'Balo Tomtoc Unisex travel MB Pro 15', 755300, 1),
(9, 'images (5).jfif', 'Balo nam nữ Simplecarry ISSAC 2 L.Navy', 540000, 1),
(10, 'images (6).jfif', 'Balo Laptop Mikkor The Gibson Graphite', 1290000, 1),
(11, 'nike-nike-heritage-backpack-25l-red-black-ix0bonvtej.jpg', 'Balo Simplecarry Credo 5 Red', 400000, 1),
(12, 'images (8).jfif', 'Balo nam nữ Simplecarry K7 Black', 690000, 1),
(14, 'Ao-vali-thoi-trang-Sport.jpg', 'Vali kéo Stargo Diamant Z22 Gold', 945000, 2),
(15, 'Sunny-Vali-SV07-Xanh-Ngoc-6-scaled.jpg', 'Vali kéo Sakos GARNET Z26 Grey', 1595000, 2),
(16, 'vali-heys-amourlite-size-s-21-inch-grey3268.jpg', 'Vali kéo Stargo Diamant 26 Black', 1100000, 2),
(17, 'vali-keo-du-lich-bamozo-8801-chiu-luc-tot-627dcf22bdbdc-13052022102314.jpg', 'Vali kéo Sakos Paralle 30 Blue', 2150000, 2),
(18, 'vali-keo-nhua-sakos-porta-cam-1.png', 'Vali kéo Sakos Essenza 22 Red', 950000, 2),
(19, 'vali-nhua-sakos-khung-day-keo-sapphire-z26-24-inch-1.jpg', 'Vali kéo Stargo Xavan Z22 màu đen', 990000, 2),
(20, 'vali-keo-nhua-Stargo-Essenza-vang-1.png', 'Vali kéo nhựa Stargo KATANA Z26 Black', 1015000, 2),
(21, 'VL037_G_2-min.jpg', 'Vali kéo nhựa Stargo KATANA Z26 Navy', 1015000, 2),
(22, 'vali-keo-hang-hieu-louis-vuitton-01.jpg', 'Vali kéo nhựa Stargo KATANA Z22 Blue', 1015000, 2),
(23, 'vali_keo_nhua_stargo_xavan_z22_den_thumb.jpg', 'Vali kéo Sakos Essenza 22 Black', 995000, 2),
(24, 'vali_keo_nhua_stargo_xavan_z22_xanh_thumb.jpg', 'Vali kéo Stargo Xavan Z22 màu xanh', 990000, 2),
(25, '2023-L2-CK2-80782073-06-1.jpg', 'Túi đeo chéo Tomtoc Urban Ultrabook 13', 1539000, 3),
(26, '2022-L6-CK2-70701231-3-09-1.jpg', 'Túi đeo Simplecarry Credo City Pouch Red', 340000, 3),
(27, '20211215_2rZkgpEum79uVxzoEGVxBqaF.jpg', 'Túi du lịch Simplecarry Duffle SD5 Black', 749000, 3),
(28, '56793062c0a80eff3733cc86b0761db1.jpg', 'Túi du lịch Simplecarry Duffle SD3 Castle Rock', 640000, 3),
(29, 'cl0033_wht_1000x1000_1317788460.jpg', 'Túi du lịch Simplecarry Duffle SD2 Castle Rock', 640000, 3),
(30, 'tui_deo_cheo_tomtoc_h14_black_15_inch.jpg', 'Túi đeo chéo Tomtoc Urban Ultrabook 15\" Black H14-E02D', 1790000, 3),
(31, 'f6819bdc586d5e7c9da1fa6bf78173ca.jfif', 'Túi đựng Passport Simplecarry unicam', 169000, 3),
(32, 'tui-xach-nu-day-xich-bac-cidu-cd18-11-1676817120.jpg', 'Túi du lịch cần kéo Sakos Gigant Nâu', 1320000, 3),
(33, 'tui_cap_tomtoc_A25_E01G.jpg', 'Túi đeo chéo Tomtoc Eva for Macbook Pro Gray A25-E01G', 1199000, 3),
(34, 'tui_du_lich_trek_khaki.jpg', 'Túi du lịch phối da Sakos Trek màu Khaki Rêu', 950000, 3),
(35, 'tui_du_lich_reeyee_3006_anh.jpg', 'Túi du lịch Reeyee 3006', 1150000, 3),
(36, 'tui_du_lich_reeyee_3007_f.jpg', 'Túi du lịch Reeyee 3007', 1155000, 3),
(37, 'Cap_so_Prince__70248-removebg-preview.png', 'Cặp số Prince 70248', 1080000, 4),
(38, 'cap_laptop_balos_alpha_3_loai_15_6_inch.jpg', 'Cặp laptop Balos Alpha 3 loại 15.6 inch', 640000, 4),
(39, 'cap_cong_so_laptop_sakos_legend_02_ng01_Den_soc.jpg', 'Cặp công sở laptop Sakos Legend 02 NG01 Đen sọc', 1690000, 4),
(40, 'cap_solo_cao_cap_nau.jpg', 'Cặp Laptop Solo 15.6\" Bradford Nâu- EXE336-3', 2450000, 4),
(41, 'cap_gco_002_br_h01.jpg', 'Cặp laptop Stargo Dranken 5 i14 đen phối đỏ', 500000, 4),
(42, 'cap_gco_002_bg_h01.jpg', 'Cặp laptop Stargo Dranken 5 i14 đen vàng chanh', 500000, 4),
(43, 'cap_laptop_dranken_7_den_phoi_vang_chanh.jpg', 'Cặp laptop Stargo Dranken 7 i14 đen vàng chanh', 500000, 4),
(44, 'cap_kco_026_br_h01.jpg', 'Cặp laptop Sakos Amery i14 đen phối đỏ', 640000, 4),
(45, 'cap_laptop_mong_sakos_xanh.png', 'Cặp Laptop Stargo Ledger Xanh Navy', 199000, 4),
(46, 'cap_mikkor_the_ralph_briefcase_black11_550x550.jpg', 'Cặp Laptop Mikkor The Ralph Briefcase Black', 690000, 4),
(47, 'cap_van_phong_bestlife_simple_capacity2.jpg', 'Cặp laptop Bestlife Simple Capacity 15.6 Đen BBC3312', 835000, 4),
(48, 'cap_bestlife_business_mau_xam1.jpg', 'Cặp laptop Bestlife Business 15.6 Xám BBC3246IG', 315000, 4),
(49, 'phukien_hop_dung_but_penbox_red_700x700.jpg', 'Túi đựng bút Mikkor The Penbox Red', 149000, 5),
(50, 'phukien_tui_khoa_keo.jpg', 'Túi khóa kéo đa năng FC4100-B8 120x90mm', 35000, 5),
(51, 'phukien_tui_lunch_box_bag_navy1.jpg', 'Túi Lunch Box Bag Navy', 95000, 5),
(52, 'phukien_tui_garment_bag.png', 'Túi đựng áo Vest Garment Bag', 490000, 5),
(53, 'phukien_tui_lunch_box_bag_purple1.jpg', 'Túi Lunch Box Bag Purple', 95000, 5),
(54, 'phukien_vi_cam_tay_sakos_compact_do.png', 'Túi công cụ đa năng Compact Màu Đỏ', 149000, 5),
(55, 'phukien_vi_cam_tay_sakos_compact_hong.png', 'Túi công cụ đa năng Compact Màu Hồng', 149000, 5),
(56, 'phukien_tui_bao_tu_tomtoc.png', 'Túi bao tử Tomtoc Basic Unisex Black A01-006D', 590000, 5),
(57, 'phukien_kanken_hippack.png', 'Túi bao tử kanken hippack nhiều màu', 230000, 5),
(58, 'phukien_tui_bao_tu_credo_sling_3_do.jpg', 'Túi bao tử Credo Sling 3 BGD màu đỏ', 440000, 5),
(59, 'phukien_vi_cam_tay_ezra_wallet_graphite_700x700.jpg', 'Ví cầm tay Mikkor The Ezra Wallet Graphite', 245000, 5),
(60, 'phukien_hu_mw_cs1_rfid_coc_4.jpg', 'Ví Magic Hunterson Classic Cognac HUNCS1', 1200000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `name` varchar(225) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `avata` varchar(225) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `avata`) VALUES
(39, 'Vu', '123', 'The Vu', 'nguyenthevu0201@gmail.com', 'images (4).jfif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
