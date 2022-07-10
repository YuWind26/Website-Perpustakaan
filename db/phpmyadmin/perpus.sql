-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2021 at 02:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_sewa` double NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kode`, `judul_buku`, `harga_sewa`, `stok`, `gambar`, `pengarang`, `penerbit`, `tahun`, `tempat`, `status`, `created_at`, `updated_at`) VALUES
(2, 'B0001', 'Spiderman', 12000, 95, 'B0001_1611164120.png', 'Peter Parker', 'Tom Holland', 2025, 'New York City', 'Y', '2021-01-20 10:35:20', '2021-01-27 01:39:55'),
(3, 'B0002', 'Halilintar Jakarta', 15000, 100, 'B0002_1611213735.png', 'Halilintar Sejahtera', 'Andi Offset', 2022, 'Bandung', 'Y', '2021-01-20 10:39:44', '2021-02-02 23:58:17'),
(7, 'B0003', 'Buku Pedoman', 23000, 100, 'B0003_1611326110.png', 'Hehe', 'Mbuh', 2021, 'Bandung', 'Y', '2021-01-22 07:35:10', '2021-01-26 11:22:32'),
(8, 'B0004', 'Buku Gula', 15000, 95, NULL, 'Bind', 'Andi', 2021, 'Bandung', 'Y', '2021-01-22 22:50:55', '2021-02-02 23:58:17'),
(9, 'B0005', 'Jalan Jalan', 15000, 100, NULL, 'Andi', 'Andi', 2021, 'Bandung', 'N', '2021-01-22 22:51:07', '2021-02-02 23:41:18'),
(10, 'B0006', 'Javascript', 23000, 100, NULL, 'Edo', 'Andi', 2021, 'Jakarta', 'Y', '2021-01-22 22:51:21', '2021-01-26 11:22:32'),
(11, 'B0007', 'HTML', 40000, 95, 'B0007_1612333057.png', 'Hana', 'Andi', 2021, 'Pekalongan', 'Y', '2021-01-22 22:51:34', '2021-02-02 23:17:37'),
(12, 'B0008', 'PHP', 30000, 100, NULL, 'Harjo', 'ANDI', 2021, 'Bandung', 'Y', '2021-01-22 22:51:54', '2021-01-22 22:51:54'),
(13, 'B0009', 'Laravel', 25000, 100, NULL, 'Gunawan', 'Andi', 2021, 'Surabaya', 'Y', '2021-01-22 22:52:07', '2021-01-22 22:52:07'),
(14, 'B0010', 'Pemrograman', 45000, 100, NULL, 'Sukma', 'Andi', 2021, 'Semarang', 'Y', '2021-01-22 22:52:24', '2021-01-22 22:52:24'),
(15, 'B0011', 'Kuliner Kita', 20000, 100, NULL, 'Dolani', 'Andi', 2021, 'Jakarta', 'Y', '2021-01-22 22:52:44', '2021-01-22 22:52:44'),
(16, 'B0012', 'Rekreasi', 43000, 100, NULL, 'Panjul', 'Andi', 2020, 'Bandung', 'Y', '2021-01-22 22:53:00', '2021-01-26 02:23:10'),
(17, 'B0013', 'Kota Kami', 35000, 100, 'B0013_1611623601.png', 'Bind', 'Andi', 2020, 'Bandung', 'Y', '2021-01-25 18:13:00', '2021-01-25 18:13:21'),
(18, 'B0014', 'Magang Online', 15000, 100, 'B0014_1612334377.png', 'Bintang', 'Andi', 2024, 'Bandung', 'Y', '2021-02-02 23:37:49', '2021-02-02 23:40:22');

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 'Y', '2020-12-23 23:36:06', '2021-01-18 18:44:43'),
(2, 'Non-Staff', 'Y', '2020-12-23 23:36:12', '2021-01-19 02:26:40'),
(3, 'Manager', 'N', '2021-01-19 02:26:35', '2021-02-03 00:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `kembali`
--

CREATE TABLE `kembali` (
  `id` int(10) UNSIGNED NOT NULL,
  `pinjam_id` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `denda` double NOT NULL,
  `bayar` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kembali`
--

INSERT INTO `kembali` (`id`, `pinjam_id`, `tgl`, `denda`, `bayar`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 10, '2021-01-26', 0, 184000, 4, '2021-01-26 11:22:32', '2021-01-26 11:22:32'),
(8, 12, '2021-01-27', 0, 66000, 4, '2021-01-27 01:39:55', '2021-01-27 01:39:55'),
(9, 13, '2021-02-03', 0, 105000, 3, '2021-02-02 23:58:17', '2021-02-02 23:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `kode`, `kategori_id`, `nama`, `foto`, `alamat`, `hp`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'M0001', 1, 'Bintang Saputra', NULL, 'Pekalongan Bekasi Jakarta', '081513947715', 'bin@gmail.com', 'Y', '2021-01-06 06:25:54', '2021-02-01 00:50:55'),
(2, 'M0002', 2, 'Bulan', 'M0002_1611049005.png', 'JAKARTA BEKASI PEKALONGAN', '0815', 'bulan@gmail.com', 'Y', '2021-01-06 06:26:30', '2021-01-19 02:36:45'),
(3, 'M0003', 1, 'Maman', 'M0003_1610985442.png', 'BANDUNG BEKASI Cikarang', '022', 'maman@yahoo.com', 'Y', '2021-01-11 08:55:08', '2021-01-19 01:41:21'),
(4, 'M0004', 1, 'Iqbal', NULL, 'CENGKARENG', '8342', 'bintangsaputra531@gmail.com', 'N', '2021-01-11 02:13:03', '2021-02-02 22:01:59'),
(5, 'M0005', 2, 'Doni', NULL, 'BANDUNG JABAR', '021799430434', 'warmad@yahoo.co.id', 'Y', '2021-01-11 02:28:16', '2021-02-01 00:50:34'),
(17, 'M0006', 2, 'Gina', 'M0006_1611163945.png', 'Jakarta Raya Bogor', '0923', NULL, 'Y', '2021-01-20 10:32:25', '2021-01-20 10:32:38'),
(18, 'M0007', 1, 'Daniel', 'M0007_1612326997.png', 'Di sini aja', '345', 'bintang@gmail.com', 'Y', '2021-01-20 10:43:02', '2021-02-02 21:36:37');

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
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2020_12_17_104731_create_sessions_table', 2),
(8, '2020_12_18_113344_create_buku_table', 4),
(10, '2020_12_18_111909_create_kategori_table', 6),
(11, '2020_12_18_115438_create_pinjam_table', 7),
(12, '2020_12_18_120109_create_pinjam_detail_table', 8),
(13, '2020_12_18_120329_create_kembali_table', 9),
(14, '2020_12_18_114900_create_member_table', 10),
(15, '2021_01_22_014906_create_pinjam_cart_table', 11);

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
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` int(10) NOT NULL,
  `tgl` date NOT NULL,
  `duedate` date NOT NULL,
  `total` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id`, `kode`, `member_id`, `tgl`, `duedate`, `total`, `user_id`, `created_at`, `updated_at`) VALUES
(10, 'P2101-0001', 1, '2021-01-26', '2021-02-02', 184000, 4, '2021-01-26 11:08:36', '2021-01-26 11:08:36'),
(11, 'P2101-0002', 18, '2021-01-26', '2021-02-02', 335000, 4, '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(12, 'P2101-0003', 3, '2021-01-27', '2021-02-03', 66000, 4, '2021-01-27 01:38:29', '2021-01-27 01:38:29'),
(13, 'P2102-0004', 18, '2021-02-03', '2021-02-10', 105000, 3, '2021-02-02 23:57:42', '2021-02-02 23:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_cart`
--

CREATE TABLE `pinjam_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `buku_id` int(10) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjam_cart`
--

INSERT INTO `pinjam_cart` (`id`, `user_id`, `buku_id`, `qty`, `created_at`, `updated_at`) VALUES
(278, 4, 17, 3, '2021-02-07 20:16:21', '2021-02-07 20:18:16'),
(279, 4, 16, 1, '2021-02-07 21:17:57', '2021-02-07 21:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam_detail`
--

CREATE TABLE `pinjam_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `pinjam_id` int(11) NOT NULL,
  `buku_id` int(10) NOT NULL,
  `harga_sewa` double NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjam_detail`
--

INSERT INTO `pinjam_detail` (`id`, `pinjam_id`, `buku_id`, `harga_sewa`, `qty`, `created_at`, `updated_at`) VALUES
(16, 10, 7, 23000, 3, '2021-01-26 11:08:37', '2021-01-26 11:08:37'),
(17, 10, 10, 23000, 5, '2021-01-26 11:08:37', '2021-01-26 11:08:37'),
(18, 11, 2, 12000, 5, '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(19, 11, 11, 40000, 5, '2021-01-26 11:24:31', '2021-01-26 11:24:31'),
(20, 11, 8, 15000, 5, '2021-01-26 11:24:32', '2021-01-26 11:24:32'),
(21, 12, 2, 12000, 3, '2021-01-27 01:38:29', '2021-01-27 01:38:29'),
(22, 12, 8, 15000, 2, '2021-01-27 01:38:30', '2021-01-27 01:38:30'),
(23, 13, 3, 15000, 4, '2021-02-02 23:57:43', '2021-02-02 23:57:43'),
(24, 13, 8, 15000, 3, '2021-02-02 23:57:43', '2021-02-02 23:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fOJiCVS7fYEVmujxjIs6WGCgIeNeEj1YwQIDLAEB', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36 Edg/88.0.705.63', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYmJ5eGpFblRkSE9GMUtaRnVTYzhUbnk2NVl2Tm5WeXVqWXJNWW9MUiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGluamFtL3JlcG9ydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRMWk5zbFpDWGtBLnVOUTZZd1RxazV1Z1Z0REIuV0JJb1N3OTlKZHNQenVucjFnVlVtSUxzTyI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkTFpOc2xaQ1hrQS51TlE2WXdUcWs1dWdWdERCLldCSW9Tdzk5SmRzUHp1bnIxZ1ZVbUlMc08iO30=', 1612758498);

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bintang', 'bin@gmail.com', NULL, '$2y$10$./X0Yv.yE2Vi4UjwjZ7RwOvN50ASUVdMeNj.6FDHmi7yZfsjEscFK', NULL, NULL, NULL, '2020-12-17 04:32:23', '2020-12-17 04:33:00'),
(2, 'BINTANG', 'bin2@gmail.com', NULL, '$2y$10$Xy.Pb9KsfOyzs4pBDfhlF.f1m2FYl3YKT3mVyVbr68farnQuhetru', NULL, NULL, NULL, '2020-12-18 03:23:30', '2020-12-18 03:23:30'),
(3, 'Rifa', 'rifa@gmail.com', NULL, '$2y$10$/DJOCEv8NxvUYZr5qhGmxuzvqNJ1RiNRJcjivfeaTeoO.Yjlniwd.', NULL, NULL, NULL, '2020-12-18 04:00:50', '2020-12-19 03:47:00'),
(4, 'BINTANG', 'bintang@gmail.com', NULL, '$2y$10$LZNslZCXkA.uNQ6YwTqk5ugVtDB.WBIoSw99JdsPzunr1gVUmILsO', NULL, NULL, NULL, '2021-01-14 00:31:01', '2021-01-14 00:31:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kembali`
--
ALTER TABLE `kembali`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjam_id` (`pinjam_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `member_kategori_id_foreign` (`kategori_id`);

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
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`),
  ADD KEY `member_kode` (`member_id`) USING BTREE,
  ADD KEY `users_id` (`user_id`) USING BTREE;

--
-- Indexes for table `pinjam_cart`
--
ALTER TABLE `pinjam_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `buku_kode` (`buku_id`) USING BTREE;

--
-- Indexes for table `pinjam_detail`
--
ALTER TABLE `pinjam_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pinjam_kode` (`pinjam_id`) USING BTREE,
  ADD KEY `buku_kode` (`buku_id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `kembali`
--
ALTER TABLE `kembali`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pinjam_cart`
--
ALTER TABLE `pinjam_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `pinjam_detail`
--
ALTER TABLE `pinjam_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
