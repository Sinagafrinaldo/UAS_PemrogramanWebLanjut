-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 06:48 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `literasikuy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
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
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin 1', 'joyravelo@gmail.com', '2022-04-22 01:20:28', '$2y$10$RVcEnWA.d/P3oKmPq0Rq8uTNpP.ycMW1gC3NW2LkE7s1cb7H1CtFW', 'rR4QJ6FMjymRqqdtdWTbDjGGJnFs43SqPRihrnXN7mffSuYd3LSSsVArOE3s', '2022-04-22 01:20:29', '2022-04-22 01:20:29'),
(2, 'Super Admin 2', 'admin2@admin.com', '2022-04-22 01:20:29', '$2y$10$QeQgK3J7pTDAJ18jd80NyedBpXQ3GlMnQW78gOVznRD2keXUhhvxO', 'QGno18LFYj', '2022-04-22 01:20:29', '2022-04-22 01:20:29');

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
-- Table structure for table `literasi`
--

CREATE TABLE `literasi` (
  `id_literasi` int(150) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `waktu_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(10000) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `literasi`
--

INSERT INTO `literasi` (`id_literasi`, `judul`, `isi`, `kategori`, `name`, `waktu_post`, `image`) VALUES
(8, 'Itulah', 'Hold my hand', 'Dongeng', '', '2022-04-15 02:54:56', ''),
(9, 'asd', 'asdasd ascsa', 'Dongeng', '', '2022-04-15 03:15:45', ''),
(10, 'Youre not helping e', 'adsd', 'Puisi', '', '2022-04-15 03:15:58', ''),
(11, 'asda', 'asdasd', 'Legenda', 'Naldzy', '2022-04-15 03:54:34', ''),
(13, 'testing', 'kategori', 'Dongeng', 'Naldzy', '2022-04-18 04:05:30', ''),
(14, 'testing1', 'asds', 'Dongeng', 'Naldzy', '2022-04-18 04:05:38', ''),
(15, 'testing2', 'adsd', 'Dongeng', 'Naldzy', '2022-04-18 04:05:46', ''),
(16, 'testing3', 'wdadasd', 'Dongeng', 'Naldzy', '2022-04-18 04:05:53', ''),
(17, 'testing4', 'adasdad', 'Dongeng', 'Naldzy', '2022-04-18 04:06:01', ''),
(18, 'testing52', 'asdasd', 'Dongeng', 'Naldzy', '2022-04-18 04:06:08', ''),
(19, 'sdf', 'sdf', 'sdfsdf', 'sdfdsf', '2022-04-21 08:34:57', 'default.png'),
(20, 'asdsdasda', 'asdfasdfsfd', 'Dongeng', 'Naldzy', '2022-04-21 08:50:42', 'C:\\xampp\\tmp\\phpDFCE.tmp'),
(21, 'edsfsdf', 'sdfsdf', 'Dongeng', 'Naldzy', '2022-04-21 08:57:09', 'C:\\xampp\\tmp\\phpC75D.tmp'),
(22, 'ini ada gambar', 'sss', 'Dongeng', 'Naldzy', '2022-04-21 09:04:39', 'C:\\xampp\\tmp\\phpA917.tmp'),
(23, 'asadsa', 'sdaasdsada', 'Dongeng', 'Naldzy', '2022-04-21 09:12:42', 'facebook (1).png'),
(24, 'Ini yang fikxx ada gambar', 'ssssssssadsd', 'Dongeng', 'Naldzy', '2022-04-21 09:14:16', 'lambang-pdi-perjuangan.jpg'),
(25, 'iyigigiug iugi', 'uuh ouhouh o', 'Dongeng', 'Naldzy', '2022-04-21 09:18:25', 'image-removebg-preview (6).png'),
(26, 'sdasdasd', 'Bila kamu tengah merasakan kepahitan, mungkin kata-kata Mutiara berikut dapat sedikit meringankan bebanmu\r\nDream - Kehidupan manusia tak terlepas dari berbagai peristiwa, tantangan, rintangan, kesempatan, dan pengalaman. Beberapa orang mungkin pernah merasakan fase kehidupan yang berat dan menyakitkan. Hidup seperti drama yang tak berkesudahan. Apalagi bagi mereka yang kurang bersyukur, pasti akan menganggap bahwa kehidupan ini sebagai sebuah kutukan berat.\r\n\r\nPada saat keadaan mental down inilah kita membutuhkan energi motivasi agar bisa bangkit kembali menjalani kehidupan. Motivasi tersebut salah satunya bisa kamu dapatkan ketika membawa kata-kata motivasi kehidupan. Walau hanya sekadar kalimat, kata-kata motivasi kehidupan dapat menjadi sumbu yang bisa membakar semangatmu.\r\n\r\nViral! 8 Potret Gadis Cantik 19 Tahun Tak Potong Rambut Dari Bayi, Dijuluki ‘Rapunzel Lokal’\r\nBila kamu tengah merasakan kepahitan itu, mungkin kata-kata Mutiara berikut dapat sedikit meringankan bebanmu. Selain itu, kata-kata Mutiara kehidupan setidaknya dapat menjadi bahan introspeksi untuk menjadi insan yang lebih baik lagi.', 'Dongeng', 'Naldzy', '2022-04-21 09:20:46', 'Cristiano-Ronaldo-removebg-preview.png');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_04_22_051719_create_admins_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'joy', 'joy@gmail.com', NULL, '$2y$10$mKWpROFySmmg6r7zR9qC4utGI1ubxz9KpxXf5c8k5zC7EEazgJTnS', NULL, '2022-04-22 01:21:14', '2022-04-22 01:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `literasi`
--
ALTER TABLE `literasi`
  ADD PRIMARY KEY (`id_literasi`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `literasi`
--
ALTER TABLE `literasi`
  MODIFY `id_literasi` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
