-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2019 at 07:16 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualanlara`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_09_093329_create_tbl_distributors_table', 1),
(4, '2019_04_09_093411_create_tbl_petugas_table', 1),
(5, '2019_04_09_093427_create_tbl_barang_masuks_table', 1),
(6, '2019_04_09_093455_create_tbl_jenis_barangs_table', 1),
(7, '2019_04_09_093506_create_tbl_barangs_table', 1),
(8, '2019_04_09_093528_create_tbl_detail_barang_masuks_table', 1),
(9, '2019_04_09_093542_create_tbl_penjualans_table', 1),
(10, '2019_04_09_093614_create_tbl_detail_penjualans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangs`
--

CREATE TABLE `tbl_barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jenis` bigint(20) UNSIGNED NOT NULL,
  `harga_net` bigint(20) NOT NULL,
  `harga_jual` bigint(20) NOT NULL,
  `stok` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang_masuks`
--

CREATE TABLE `tbl_barang_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_nota` bigint(20) UNSIGNED NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_distributor` bigint(20) UNSIGNED NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_barang_masuks`
--

CREATE TABLE `tbl_detail_barang_masuks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_nota` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` bigint(20) UNSIGNED NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualans`
--

CREATE TABLE `tbl_detail_penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_faktur` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` bigint(20) UNSIGNED NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_distributors`
--

CREATE TABLE `tbl_distributors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_distributor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_distributor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_asal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_barangs`
--

CREATE TABLE `tbl_jenis_barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualans`
--

CREATE TABLE `tbl_penjualans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_faktur` bigint(20) UNSIGNED NOT NULL,
  `tgl_penjualan` date NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `bayar` bigint(20) NOT NULL,
  `sisa` bigint(20) NOT NULL,
  `total` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_petugas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petugas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telpon` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_barangs`
--
ALTER TABLE `tbl_barangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_barangs_kode_jenis_foreign` (`kode_jenis`);

--
-- Indexes for table `tbl_barang_masuks`
--
ALTER TABLE `tbl_barang_masuks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_barang_masuks_no_nota_foreign` (`no_nota`),
  ADD KEY `tbl_barang_masuks_id_distributor_foreign` (`id_distributor`),
  ADD KEY `tbl_barang_masuks_id_petugas_foreign` (`id_petugas`);

--
-- Indexes for table `tbl_detail_barang_masuks`
--
ALTER TABLE `tbl_detail_barang_masuks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_barang_masuks_no_nota_foreign` (`no_nota`),
  ADD KEY `tbl_detail_barang_masuks_kode_barang_foreign` (`kode_barang`);

--
-- Indexes for table `tbl_detail_penjualans`
--
ALTER TABLE `tbl_detail_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_detail_penjualans_no_faktur_foreign` (`no_faktur`),
  ADD KEY `tbl_detail_penjualans_kode_barang_foreign` (`kode_barang`);

--
-- Indexes for table `tbl_distributors`
--
ALTER TABLE `tbl_distributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_barangs`
--
ALTER TABLE `tbl_jenis_barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_penjualans`
--
ALTER TABLE `tbl_penjualans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_penjualans_no_faktur_foreign` (`no_faktur`),
  ADD KEY `tbl_penjualans_id_petugas_foreign` (`id_petugas`);

--
-- Indexes for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_barangs`
--
ALTER TABLE `tbl_barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang_masuks`
--
ALTER TABLE `tbl_barang_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_detail_barang_masuks`
--
ALTER TABLE `tbl_detail_barang_masuks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_detail_penjualans`
--
ALTER TABLE `tbl_detail_penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_distributors`
--
ALTER TABLE `tbl_distributors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jenis_barangs`
--
ALTER TABLE `tbl_jenis_barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_penjualans`
--
ALTER TABLE `tbl_penjualans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barangs`
--
ALTER TABLE `tbl_barangs`
  ADD CONSTRAINT `tbl_barangs_kode_jenis_foreign` FOREIGN KEY (`kode_jenis`) REFERENCES `tbl_jenis_barangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_barang_masuks`
--
ALTER TABLE `tbl_barang_masuks`
  ADD CONSTRAINT `tbl_barang_masuks_id_distributor_foreign` FOREIGN KEY (`id_distributor`) REFERENCES `tbl_distributors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_masuks_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `tbl_petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_masuks_no_nota_foreign` FOREIGN KEY (`no_nota`) REFERENCES `tbl_barang_masuks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_barang_masuks`
--
ALTER TABLE `tbl_detail_barang_masuks`
  ADD CONSTRAINT `tbl_detail_barang_masuks_kode_barang_foreign` FOREIGN KEY (`kode_barang`) REFERENCES `tbl_barangs` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_barang_masuks_no_nota_foreign` FOREIGN KEY (`no_nota`) REFERENCES `tbl_barang_masuks` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_penjualans`
--
ALTER TABLE `tbl_detail_penjualans`
  ADD CONSTRAINT `tbl_detail_penjualans_kode_barang_foreign` FOREIGN KEY (`kode_barang`) REFERENCES `tbl_barangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_penjualans_no_faktur_foreign` FOREIGN KEY (`no_faktur`) REFERENCES `tbl_penjualans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_penjualans`
--
ALTER TABLE `tbl_penjualans`
  ADD CONSTRAINT `tbl_penjualans_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `tbl_petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_penjualans_no_faktur_foreign` FOREIGN KEY (`no_faktur`) REFERENCES `tbl_penjualans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
