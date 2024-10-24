-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mansserv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin@gmail.com', '123456', '07-04-2023 05:28:27 PM');

-- --------------------------------------------------------

--
-- Table structure for table `employeelog`
--

CREATE TABLE `employeelog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `empname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `empEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `empname`, `address`, `nid`, `contactno`, `empEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'محمد طلعت فرحات', 'المنصورة', '344555667777', 123334445, 'mohamed@gmail.com', '123456', '2023-05-11 09:58:21', NULL),
(2, 'احمد طلعت فرحات ', 'المنصورة', '223344556677', 122334455, 'ahmed@gmail.com', '112233445566', '2023-06-03 21:15:57', NULL),
(3, 'admin@gmail.com', 'المنصورة', '223344556677', 122334455, 'admin@gmail.com', '123456', '2023-06-06 22:03:33', NULL),
(4, 'mohamed1', 'المنصورة', '434354354254', 12345678, 'mohamed1@gmail.com', '123456', '2023-06-11 08:50:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE `governorates` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `name`) VALUES
(1, 'الإسكندرية'),
(2, 'الإسماعيلية'),
(3, 'أسوان'),
(4, 'أسيوط'),
(5, 'الاقصر'),
(6, 'البحر الأحمر'),
(7, 'البحيرة'),
(8, 'بني سويف'),
(9, 'بورسعيد'),
(10, 'جنوب سيناء'),
(11, 'الجيزة'),
(12, 'الدقهلية'),
(13, 'دمياط'),
(14, 'سوهاج'),
(15, 'السويس'),
(16, 'الشرقية'),
(17, 'شمال سيناء '),
(18, 'الغربية'),
(19, 'الفيوم'),
(20, 'القاهرة'),
(21, 'القليوبية'),
(22, 'قنا'),
(23, 'كفر الشيخ'),
(24, 'مطروح'),
(25, 'المنوفية'),
(26, 'المنيا'),
(27, 'الوادي الجديد'),
(1, 'الإسكندرية'),
(2, 'الإسماعيلية'),
(3, 'أسوان'),
(4, 'أسيوط'),
(5, 'الاقصر'),
(6, 'البحر الأحمر'),
(7, 'البحيرة'),
(8, 'بني سويف'),
(9, 'بورسعيد'),
(10, 'جنوب سيناء'),
(11, 'الجيزة'),
(12, 'الدقهلية'),
(13, 'دمياط'),
(14, 'سوهاج'),
(15, 'السويس'),
(16, 'الشرقية'),
(17, 'شمال سيناء '),
(18, 'الغربية'),
(19, 'الفيوم'),
(20, 'القاهرة'),
(21, 'القليوبية'),
(22, 'قنا'),
(23, 'كفر الشيخ'),
(24, 'مطروح'),
(25, 'المنوفية'),
(26, 'المنيا'),
(27, 'الوادي الجديد'),
(1, 'الإسكندرية'),
(2, 'الإسماعيلية'),
(3, 'أسوان'),
(4, 'أسيوط'),
(5, 'الاقصر'),
(6, 'البحر الأحمر'),
(7, 'البحيرة'),
(8, 'بني سويف'),
(9, 'بورسعيد'),
(10, 'جنوب سيناء'),
(11, 'الجيزة'),
(12, 'الدقهلية'),
(13, 'دمياط'),
(14, 'سوهاج'),
(15, 'السويس'),
(16, 'الشرقية'),
(17, 'شمال سيناء '),
(18, 'الغربية'),
(19, 'الفيوم'),
(20, 'القاهرة'),
(21, 'القليوبية'),
(22, 'قنا'),
(23, 'كفر الشيخ'),
(24, 'مطروح'),
(25, 'المنوفية'),
(26, 'المنيا'),
(27, 'الوادي الجديد'),
(1, 'الإسكندرية'),
(2, 'الإسماعيلية'),
(3, 'أسوان'),
(4, 'أسيوط'),
(5, 'الاقصر'),
(6, 'البحر الأحمر'),
(7, 'البحيرة'),
(8, 'بني سويف'),
(9, 'بورسعيد'),
(10, 'جنوب سيناء'),
(11, 'الجيزة'),
(12, 'الدقهلية'),
(13, 'دمياط'),
(14, 'سوهاج'),
(15, 'السويس'),
(16, 'الشرقية'),
(17, 'شمال سيناء '),
(18, 'الغربية'),
(19, 'الفيوم'),
(20, 'القاهرة'),
(21, 'القليوبية'),
(22, 'قنا'),
(23, 'كفر الشيخ'),
(24, 'مطروح'),
(25, 'المنوفية'),
(26, 'المنيا'),
(27, 'الوادي الجديد');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `typeofserv` varchar(255) DEFAULT NULL,
  `servname` varchar(255) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `delDate` date DEFAULT NULL,
  `stateoforder` varchar(100) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `typeofserv`, `servname`, `customer`, `price`, `delDate`, `stateoforder`, `document`, `nid`, `postingDate`, `updationDate`) VALUES
(8, '1', 'طلب حصول على شهادة عقارية', 'ابراهيم طلعت فرحات ', 2000, NULL, 'معلق', 'Screenshot 2023-06-13 051047.png', 'Screenshot 2023-06-13 051047.png', '2023-06-13 12:20:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `servicelist`
--

CREATE TABLE `servicelist` (
  `id` int(11) NOT NULL,
  `servname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicelist`
--

INSERT INTO `servicelist` (`id`, `servname`, `detail`, `price`, `typeid`, `document`, `creationDate`, `updationDate`) VALUES
(1, 'توصيل عداد مياه', '1- يجيب ان يقوم المالك بتقديم الطلب', 1700, 0, '1- صورة البطاقة 2- ملكية العقار', '2023-05-11 09:36:48', NULL),
(2, 'توصيل عداد كهرباء', '1- يجيب ان يقوم المالك بتقديم الطلب', 1700, 2, '1- صورة البطاقة 2- ملكية العقار', '2023-05-11 09:46:31', NULL),
(3, 'هدم عقار', '1- يجيب ان يقوم المالك بتقديم الطلب', 1700, 1, '1- صورة البطاقة 2- ملكية العقار', '2023-05-11 09:59:12', NULL),
(4, 'طلب اعفاء من الضريبة نظير الاستغلال فى الاغراض السكنية', 'طلب اعفاء', 1200, 2, 'صورة ملكية السكن', '2023-06-06 11:47:45', '2023-06-12 19:42:04'),
(5, 'السكن', 'بيان حالة ', 2000, 0, 'بناء ', '2023-06-11 10:31:27', '2023-06-11 10:33:40'),
(6, 'الحصول على نقل قيد ملكية مركبة', 'نقل ملكية مركبة', 500, 4, '1- صورة البطاقة 2- ملف نقل الملكية 3- ورق الفحص', '2023-06-12 19:45:44', NULL),
(7, 'تراخيص المحلات', 'تجديد رخصة المحل', 1800, 3, '1- صورة البطاقة 2-صورة البطاقة الضريبية 3-تراخيص المحل', '2023-06-12 19:48:55', NULL),
(8, 'طلب حصول على شهادة عقارية', 'لا يوجد', 2000, 1, '1- صورة البطاقة الشخصية 2- نموذج الطلب', '2023-06-12 19:52:00', NULL),
(9, 'نقل تكاليف عقار', 'امتلاط عقار ومستندات اثبات ملكية', 100, 1, '1-عقد مسجل 2-شهادة تصرفات عقارية حديثة 3-نقل تكاليف 4-نموذج طلب', '2023-06-12 19:54:33', NULL),
(10, 'طلب التظلم من تقدير القيمة الايجارية للعقار', 'امتلاك عقار ومستندات اثبات الملكية كاملة', 300, 1, '1-اثبات ملكية العقار 2-بطاقة الرقم القومى', '2023-06-12 19:58:10', NULL),
(11, 'التظلم من الغرامة المفروضة على العقارات المبنية', 'امتلاك عقار ومستندات اثبات ملكية و غرامة عدم الابلاغ لايجوز التظلم عليها', 100, 1, '1-اثبات ملكية العقار  2- الرقم القومى', '2023-06-12 20:01:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `id` int(10) NOT NULL,
  `empid` int(10) DEFAULT NULL,
  `custName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `custContno` bigint(10) DEFAULT NULL,
  `custEmail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `custGender` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `custAddress` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `custAge` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `typeofservice`
--

CREATE TABLE `typeofservice` (
  `id` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typeofservice`
--

INSERT INTO `typeofservice` (`id`, `type`, `creationDate`, `updationDate`) VALUES
(1, 'العقار', '2023-05-11 09:33:44', NULL),
(2, 'السكن', '2023-05-11 09:33:44', NULL),
(3, 'المحل', '2023-05-11 09:33:44', NULL),
(4, 'المركبة', '2023-05-11 09:33:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nid` int(14) NOT NULL,
  `address` longtext CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Govern_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contactno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `nid`, `address`, `Govern_name`, `contactno`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'ابراهيم طلعت فرحات ', 2147483647, 'المنصورة', 'الدقهلية', '0122334455', 'ذكر', 'ebrhim@gmail.com', '123456', '2023-05-12 21:17:59', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employeelog`
--
ALTER TABLE `employeelog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servicelist`
--
ALTER TABLE `servicelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typeofservice`
--
ALTER TABLE `typeofservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeelog`
--
ALTER TABLE `employeelog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `servicelist`
--
ALTER TABLE `servicelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofservice`
--
ALTER TABLE `typeofservice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
