-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2017 lúc 07:35 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rento`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `admin_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `admin_avatar` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mota_chitiet`
--

CREATE TABLE `mota_chitiet` (
  `ID_SanPham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ID_LoaiSP` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Tang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Mota_ChiTiet` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ChieuNgang` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChieuDai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LoGioi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PhapLy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PhongNgu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PhongAn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Bep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SanThuong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ChoDeXeHoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ChinhChu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiDat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_HinhAnh` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID_SanPham` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NgayNhap` date NOT NULL,
  `Dientich` int(10) NOT NULL,
  `Gia` int(11) NOT NULL,
  `Mota_SoLuoc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_LoaiSP` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Vitri` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_QuanHuyen` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Huong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ID_Duan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` longblob NOT NULL,
  `ID_NGUOIDUNG` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `mota_chitiet`
--
ALTER TABLE `mota_chitiet`
  ADD PRIMARY KEY (`ID_Mota_ChiTiet`),
  ADD KEY `ID_SanPham` (`ID_SanPham`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID_SanPham`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `mota_chitiet`
--
ALTER TABLE `mota_chitiet`
  ADD CONSTRAINT `mota_chitiet_ibfk_1` FOREIGN KEY (`ID_SanPham`) REFERENCES `sanpham` (`ID_SanPham`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
