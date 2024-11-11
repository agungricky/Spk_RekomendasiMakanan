-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 03:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_stunting`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_makanan`
--

CREATE TABLE `data_makanan` (
  `idData_makanan` int(11) NOT NULL,
  `paket` varchar(45) NOT NULL,
  `waktu_makan` varchar(15) NOT NULL,
  `menu` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_makanan`
--

INSERT INTO `data_makanan` (`idData_makanan`, `paket`, `waktu_makan`, `menu`) VALUES
(31, 'A', 'makan pagi', 'sayur bening bayam'),
(32, 'A', 'makan siang', 'sayur sop'),
(33, 'A', 'makan malam', 'sayur bayam tumis'),
(34, 'A', 'selingan pagi', 'susu'),
(35, 'A', 'selingan sore', 'nugget'),
(36, 'B', 'makan pagi', 'sayur asem'),
(37, 'B', 'makan siang', 'capcay'),
(38, 'B', 'makan malam', 'tumis bayam'),
(39, 'B', 'selingan pagi', 'pudding coklat'),
(40, 'B', 'selingan sore', 'susu'),
(41, 'C', 'makan pagi', 'sup kubis'),
(42, 'C', 'makan siang', 'tumis buncis'),
(43, 'C', 'makan malam', 'capcay'),
(44, 'C', 'selingan pagi', 'risol'),
(45, 'C', 'selingan sore', 'bolu pisang'),
(46, 'D', 'makan pagi', 'tomat'),
(47, 'D', 'makan siang', 'selada'),
(48, 'D', 'makan malam', 'bayam rebus'),
(49, 'D', 'selingan pagi', 'pudding coklat'),
(50, 'D', 'selingan sore', 'serabi'),
(61, 'E', 'makan pagi', 'Nasi Goreng'),
(62, 'E', 'makan siang', 'Ayam Goreng'),
(63, 'E', 'makan malam', 'Sup Suwir Ayam'),
(64, 'E', 'selingan pagi', 'Sereal'),
(65, 'E', 'selingan sore', 'bola tahu');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selingan`
--

CREATE TABLE `selingan` (
  `id` int(11) NOT NULL,
  `nama_selingan` varchar(20) NOT NULL,
  `protein` varchar(10) NOT NULL,
  `karbohidrat` varchar(10) NOT NULL,
  `lemak` varchar(10) NOT NULL,
  `energi` varchar(10) NOT NULL,
  `Data_makanan_idData_makanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selingan`
--

INSERT INTO `selingan` (`id`, `nama_selingan`, `protein`, `karbohidrat`, `lemak`, `energi`, `Data_makanan_idData_makanan`) VALUES
(5, 'susu', '3.29', '4.71', '2', '50', 34),
(6, 'nugget', '15.59', '16.32', '18.82', '297', 35),
(7, 'pudding coklat', '2.7', '23', '4', '139', 39),
(8, 'susu', '3.29', '4.71', '2', '50', 40),
(9, 'risol', '10.54', '14.43', '6.25', '160', 44),
(10, 'bolu pisang', '3.46', '56.54', '7.27', '299', 45),
(11, 'pudding coklat', '2.7', '23', '4', '139', 49),
(12, 'serabi', '3.17', '42.1', '3.59', '216', 50),
(15, 'Sereal', '7.24', '83.02', '3.38', '376', 64),
(16, 'bola tahu', '11.81', '3.39', '12.99', '173', 65);

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `nama_makanan` varchar(30) DEFAULT NULL,
  `jenis_makanan` enum('makananpokok','lauk','sayur','buah') NOT NULL,
  `protein` varchar(10) NOT NULL,
  `karbohidrat` varchar(10) NOT NULL,
  `lemak` varchar(10) NOT NULL,
  `energi` varchar(10) NOT NULL,
  `Data_makanan_idData_makanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_menu`
--

INSERT INTO `sub_menu` (`id`, `nama_makanan`, `jenis_makanan`, `protein`, `karbohidrat`, `lemak`, `energi`, `Data_makanan_idData_makanan`) VALUES
(88, 'nasi putih', 'makananpokok', '2.66', '27.9', '0.28', '129', 31),
(89, 'tempe goreng tepung', 'lauk', '241', '18.61', '14.09', '241', 31),
(90, 'sayur bening bayam', 'sayur', '1.79', '7.46', '0.37', '36', 31),
(91, 'pepaya', 'buah', '0.14', '9.81', '0.14', '39', 31),
(92, 'nasi putih', 'makananpokok', '2.66', '27.9', '0.28', '129', 32),
(93, 'ikan bandeng', 'lauk', '18.08', '2.38', '16.4', '233', 32),
(94, 'sayur sop', 'sayur', '0.8', '4.8', '0.3', '22', 32),
(95, 'jeruk', 'buah', '0.94', '11.75', '0.12', '47', 32),
(96, 'nasi putih', 'makananpokok', '2.66', '27.9', '0.28', '129', 33),
(97, 'omelet mie', 'lauk', '4.48', '24.43', '2.03', '138', 33),
(98, 'sayur bayam tumis', 'sayur', '3.3', '4.68', '6.81', '86', 33),
(99, 'apel', 'buah', '0.17', '13.81', '0.26', '52', 33),
(100, 'nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 36),
(101, 'nugget ayam', 'lauk', '15.59', '16.32', '18.82', '297', 36),
(102, 'sayur asem', 'sayur', '1.32', '5.38', '1.15', '33', 36),
(103, 'pisang', 'buah', '1.09', '22.84', '0.33', '89', 36),
(104, 'nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 37),
(105, 'perkedel tahu', 'lauk', '13.15', '20.5', '8.79', '207', 37),
(106, 'capcay', 'sayur', '1.58', '9.67', '2.59', '67', 37),
(107, 'apel', 'buah', '0.36', '19.06', '0.23', '72', 37),
(108, 'nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 38),
(109, 'telur rebus', 'lauk', '12.53', '1.12', '10.57', '154', 38),
(110, 'tumis bayam', 'sayur', '3.3', '4.68', '6.81', '86', 38),
(111, 'pepaya', 'buah', '0.14', '9.81', '0.14', '39', 38),
(112, 'nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 41),
(113, 'telur dadar', 'lauk', '6.48', '0.42', '7.33', '93', 41),
(114, 'sub kubis ', 'sayur', '1.6', '3.14', '1.33', '29', 41),
(115, 'pisang', 'buah', '1.09', '22.84', '0.33', '89', 41),
(116, 'nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 42),
(117, 'telur ceplok', 'lauk', '13.63', '0.88', '15.31', '201', 42),
(118, 'tumis buncis', 'sayur', '1.97', '8.15', '3.45', '65', 42),
(119, 'jeruk', 'buah', '0.94', '11.75', '0.12', '47', 42),
(120, 'nasi goreng', 'makananpokok', '12.47', '41.7', '12.34', '333', 43),
(121, 'ayam suwir', 'lauk', '30', '6', '3.5', '180', 43),
(122, 'capcay', 'sayur', '1.58', '9.67', '2.59', '67', 43),
(123, 'pepaya', 'buah', '0.14', '9.81', '0.14', '39', 43),
(124, 'roti gandum', 'makananpokok', '9.13', '47.14', '4.11', '259', 46),
(125, 'keju chedar', 'lauk', '24.9', '1.28', '33.14', '403', 46),
(126, 'tomat', 'sayur', '0.88', '3.92', '0.2', '18', 46),
(127, 'anggur', 'buah', '0.72', '18.1', '0.16', '69', 46),
(128, 'bubur ', 'makananpokok', '1.5', '15.26', '0.54', '72', 47),
(129, 'tahu bulat', 'lauk', '11.81', '3.39', '12.99', '173', 47),
(130, 'selada', 'sayur', '0.9', '2.97', '0.14', '14', 47),
(131, 'kiwi', 'buah', '1.14', '14.66', '0.52', '61', 47),
(132, 'nasi merah', 'makananpokok', '2.56', '22.78', '0.89', '110', 48),
(133, 'oseng tahu', 'lauk', '10.19', '9.42', '18.64', '232', 48),
(134, 'bayam rebus', 'sayur', '2.65', '9.73', '0.97', '56', 48),
(135, 'jeruk', 'buah', '0.94', '11.75', '0.12', '47', 48),
(160, 'Nasi', 'makananpokok', '6.3', '21.06', '6.23', '168', 61),
(161, 'telur dadar', 'lauk', '6.48', '0.42', '7.33', '93', 61),
(162, 'selada', 'sayur', '0.9', '2.97', '0.14', '14', 61),
(163, 'kiwi', 'buah', '1.14', '14.66', '0.52', '61', 61),
(164, 'Nasi', 'makananpokok', '2.66', '27.9', '0.28', '129', 62),
(165, 'ayam goreng', 'lauk', '21.93', '10.76', '14.55', '260', 62),
(166, 'sayur asem', 'sayur', '1.32', '5.38', '1.15', '33', 62),
(167, 'nanas', 'buah', '0.54', '12.63', '0.12', '48', 62),
(168, 'bihun', 'makananpokok', '0.91', '24.9', '0.2', '109', 63),
(169, 'ayam suwir', 'lauk', '30', '6', '3.5', '180', 63),
(170, 'kubis', 'sayur', '0.99', '4.36', '2.79', '42', 63),
(171, 'apel', 'buah', '0.26', '13.81', '0.17', '52', 63);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_makanan`
--
ALTER TABLE `data_makanan`
  ADD PRIMARY KEY (`idData_makanan`),
  ADD UNIQUE KEY `idData_makanan_UNIQUE` (`idData_makanan`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `selingan`
--
ALTER TABLE `selingan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_selingan_Data_makanan` (`Data_makanan_idData_makanan`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_sub_menu_Data_makanan1` (`Data_makanan_idData_makanan`);

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
-- AUTO_INCREMENT for table `data_makanan`
--
ALTER TABLE `data_makanan`
  MODIFY `idData_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selingan`
--
ALTER TABLE `selingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `selingan`
--
ALTER TABLE `selingan`
  ADD CONSTRAINT `fk_selingan_Data_makanan` FOREIGN KEY (`Data_makanan_idData_makanan`) REFERENCES `data_makanan` (`idData_makanan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD CONSTRAINT `fk_sub_menu_Data_makanan1` FOREIGN KEY (`Data_makanan_idData_makanan`) REFERENCES `data_makanan` (`idData_makanan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
