-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 08, 2022 lúc 11:38 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_a`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `phone_number` char(20) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `username`, `password`, `address`, `phone_number`, `photo`, `level`) VALUES
(3, 'viet anh', 'vietanhtp99@gmail.com', 'superadmin', '123', 'Ha Noi', '123456789', '1645701994.jpg', 1),
(4, 'abc', 'admin@gmail.com', 'admin', '123', 'TP HCM', '123456789', '1645702194.jpg', 0),
(5, 'BREAKFAST', 'vietanhtp99@gmail.com', 'admin', '123', 'Ha Noi', '0971934321', '1646298684.jpg', 0),
(8, 'BREAKFAST', 'vietanhit99@gmail.com', 'abcd', '123', 'Ha Noi', '0971934321', '1646312700.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `photo`, `description`) VALUES
(1, 'lunch', '1645545326.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.\r\n\r\n'),
(2, 'dinner', '1645545408.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.'),
(3, 'desserts', '1645545430.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.'),
(4, 'wine card', '1645545469.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.'),
(5, 'drink&tea', '1645545502.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.'),
(6, 'breakfast', '1645546773.jpg', 'Deserunt fugiat aliquip reprehenderit pariatur. Enim reprehenderit duis mollit officia nulla exercitation laboris ipsum id. Officia dolor et magna culpa laboris do aliqua eiusmod commodo culpa qui cillum.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forgot_password`
--

CREATE TABLE `forgot_password` (
  `admin_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meal`
--

CREATE TABLE `meal` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `description_detail` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `meal`
--

INSERT INTO `meal` (`id`, `name`, `photo`, `price`, `description`, `description_detail`, `category_id`) VALUES
(4, 'Beef Roast Source', '1645546848.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(5, 'Beef Roast Source', '1645546980.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(6, 'Beef Roast Source', '1645547023.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(7, 'Beef Roast Source', '1645547166.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(8, 'Beef Roast Source', '1645547210.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(9, 'Beef Roast Source', '1645547223.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(10, 'Beef Roast Source', '1645547240.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(11, 'Beef Roast Source', '1645547255.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 6),
(12, 'Beef Roast Source', '1645547294.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(13, 'Beef Roast Source', '1645547313.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(14, 'Beef Roast Source', '1645547337.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(15, 'Beef Roast Source', '1645547351.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(16, 'Beef Roast Source', '1645547360.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(17, 'Beef Roast Source', '1645547372.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(18, 'Beef Roast Source', '1645547384.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(19, 'Beef Roast Source', '1645547395.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 1),
(20, 'Beef Roast Source', '1645547429.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(21, 'Beef Roast Source', '1645547445.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(22, 'Beef Roast Source', '1645547468.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(23, 'Beef Roast Source', '1645547487.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(24, 'Beef Roast Source', '1645547499.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(25, 'Beef Roast Source', '1645547513.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 2),
(26, 'Beef Roast Source', '1645547553.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 3),
(27, 'Beef Roast Source', '1645547566.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 3),
(28, 'Beef Roast Source', '1645547579.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 3),
(29, 'Beef Roast Source', '1645547590.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 3),
(30, 'Beef Roast Source', '1645547605.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 3),
(31, 'Beef Roast Source', '1645547886.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(32, 'Beef Roast Source', '1645548000.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(33, 'Beef Roast Source', '1645548015.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(34, 'Beef Roast Source', '1645548027.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(35, 'Beef Roast Source', '1645548038.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(36, 'Beef Roast Source', '1645548057.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(37, 'Beef Roast Source', '1645548099.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(38, 'Beef Roast Source', '1645548109.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 4),
(39, 'Beef Roast Source', '1645548130.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(40, 'Beef Roast Source', '1645548141.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(41, 'Beef Roast Source', '1645548152.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(42, 'Beef Roast Source', '1645548177.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(43, 'Beef Roast Source', '1645548196.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(44, 'Beef Roast Source', '1645548215.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5),
(45, 'Beef Roast Source', '1645548287.jpg', 29, 'Meat, Potatoes, Rice, Tomatoe', 'Labore magna occaecat voluptate enim consectetur officia excepteur ea. Minim est minim dolore ad officia. Non enim ad proident laborum deserunt cillum laboris do. Do proident minim nulla mollit fugiat quis reprehenderit deserunt irure voluptate minim.', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `forgot_password`
--
ALTER TABLE `forgot_password`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Chỉ mục cho bảng `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `meal`
--
ALTER TABLE `meal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `meal`
--
ALTER TABLE `meal`
  ADD CONSTRAINT `meal_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
