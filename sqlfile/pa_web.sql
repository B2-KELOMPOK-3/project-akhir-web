-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2023 pada 14.38
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pa_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `username`, `password`, `id_staff`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$KCYSBYnzhP9RVfeP3MCtoOUg5L/EHZtK/NiR6KQbr.vNUKOw.JsaC', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '$2y$10$KCYSBYnzhP9RVfeP3MCtoOUg5L/EHZtK/NiR6KQbr.vNUKOw.JsaC'),
(3, 'kevin', 'kepin@gmail.com', 'kevin', '$2y$10$RXlq4UHVKGlIjTpKts0q0.u/YWc.cYNAszVmGfjOaObuJ5W5XdIxq'),
(4, 'Staff', 'staff@gmail.com', 'staff', '$2y$10$FkDF2YbXO2KntkJfeYLjtOxRhOPlHOhE9gRi97RqfMT6fJ25vJSQG'),
(5, 'Lois', 'email@gmail.com', 'lois', '$2y$10$vZfAYdn9wqLW055h1gY9xu5KStW4a0buRHJliFDIdbs1vkaZZhX3C'),
(6, 'kevin', 'Gantar42069@gmail.com', 'kevinn', '$2y$10$uNLFCHRQKzCydWT64F3WyOz62/fpr.hxoSlu8Zz7P3vjA.QJoNAdC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `total_bayar` int(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email_pembeli` varchar(255) NOT NULL,
  `alamat_pembeli` varchar(255) NOT NULL,
  `nomor_cc` int(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_produk`, `total_bayar`, `nama_lengkap`, `email_pembeli`, `alamat_pembeli`, `nomor_cc`, `tanggal_transaksi`) VALUES
(2, 'Mountain Bike Siskiu T7', 24000000, 'Kevin Sanjaya Lois', 'kevinsanjayalois@gmail.com', 'Jl. Palaran', 2147483647, '2023-04-17 08:21:11'),
(3, 'E-bike path E5 GENT', 50500000, 'Kevin Sanjaya', 'kepin@gmail.com', 'Jl. Biawan', 483759832, '2023-04-17 08:36:47'),
(4, 'E-bike path E5 GENT', 50500000, 'Kevin Sanjaya Lois', 'sanjaya009@gmail.com', 'JL Dimana saja', 2147483647, '2023-04-29 05:51:16'),
(5, 'Mountain Bike Siskiu T7', 25000000, 'Kevin Sanjaya Lois', 'sanjaya009@gmail.com', 'Jalan Dimana Saja', 23453452, '2023-05-01 05:40:54'),
(6, 'Mountain Bike Siskiu T7', 25000000, 'Kevin Sanjaya Lois', 'kevinsanjayalois@gmail.com', 'Jlan dima', 2147483647, '2023-05-01 06:05:21'),
(7, 'Mountain Bike Siskiu T7', 25000000, ' Lois', 'email@gmail.com', 'Jalan Menuju Surga', 90438509, '2023-05-14 14:30:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `harga_product` int(255) NOT NULL,
  `gambar_product` varchar(255) NOT NULL,
  `waktu_up` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `harga_product`, `gambar_product`, `waktu_up`) VALUES
(4, 'Road Bike polygon Helios A7', 70000000, 'Road Bike polygon Helios A8X.png', '2023-05-09 04:20:36'),
(5, 'Mountain Bike Siskiu T7', 25000000, 'Muntain Bike Siskiu T7.png', '2023-04-17 08:40:52'),
(6, 'E-bike path E5 GENT', 50500000, 'E-bike path E5 GENT.png', '2022-11-14 15:28:35'),
(7, 'Adventure bike BEND R2', 44000000, 'Adventure bike BEND R2.png', '2022-11-14 15:29:23'),
(9, 'MTB Kross K7', 80000000, 'Mountain Bike Kross T7.png', '2023-05-10 13:25:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_login`
--

CREATE TABLE `riwayat_login` (
  `id_riwayat` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `waktu_login` datetime NOT NULL,
  `waktu_logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `riwayat_login`
--

INSERT INTO `riwayat_login` (`id_riwayat`, `nama_user`, `waktu_login`, `waktu_logout`) VALUES
(27, 'kevin', '2023-04-17 14:20:41', '2023-04-17 14:22:25'),
(30, 'kevin', '2023-04-17 14:24:09', '2023-04-17 14:24:17'),
(31, 'kevin', '2023-04-17 14:24:22', '2023-04-17 14:27:30'),
(33, 'kevin', '2023-04-17 14:36:13', '2023-04-17 14:36:53'),
(37, 'admin', '2023-04-29 11:49:44', '2023-04-29 11:50:18'),
(38, 'kevin', '2023-04-29 11:50:38', '2023-04-29 11:51:23'),
(39, 'admin', '2023-04-29 11:51:31', '2023-04-29 11:52:03'),
(40, 'admin', '2023-04-29 11:52:52', '2023-04-29 11:58:25'),
(41, 'admin', '2023-04-29 11:59:20', '0000-00-00 00:00:00'),
(42, 'kevin', '2023-05-01 11:39:51', '2023-05-01 11:40:58'),
(43, 'admin', '2023-05-01 11:41:03', '2023-05-01 11:42:01'),
(44, 'kevin', '2023-05-01 11:42:05', '2023-05-01 11:42:11'),
(45, 'kevin', '2023-05-01 11:42:17', '2023-05-01 11:42:21'),
(46, 'admin', '2023-05-01 11:42:27', '2023-05-01 11:45:07'),
(47, 'kevin', '2023-05-01 12:04:53', '2023-05-01 12:05:34'),
(48, 'admin', '2023-05-01 12:05:43', '2023-05-01 12:08:12'),
(49, 'kevin', '2023-05-01 12:08:20', '2023-05-01 12:08:41'),
(50, 'admin', '2023-05-01 12:08:46', '0000-00-00 00:00:00'),
(51, 'admin', '2023-05-07 16:59:42', '2023-05-07 17:06:15'),
(52, 'staff', '2023-05-07 18:06:34', '2023-05-07 18:07:09'),
(53, 'staff', '2023-05-07 18:07:14', '2023-05-07 18:07:17'),
(54, 'admin', '2023-05-07 18:07:21', '2023-05-07 18:08:58'),
(55, 'staff', '2023-05-07 18:09:06', '2023-05-07 18:09:37'),
(56, 'staff', '2023-05-07 18:09:52', '2023-05-07 18:20:45'),
(57, 'admin', '2023-05-07 18:20:51', '2023-05-07 18:40:12'),
(58, 'staff', '2023-05-07 18:40:25', '2023-05-07 18:40:50'),
(59, 'staff', '2023-05-07 18:40:57', '2023-05-07 18:41:35'),
(60, 'staff', '2023-05-07 18:43:01', '2023-05-07 18:43:08'),
(61, 'staff', '2023-05-07 18:43:45', '2023-05-07 18:43:58'),
(62, 'staff', '2023-05-07 18:44:38', '0000-00-00 00:00:00'),
(63, 'staff', '2023-05-08 20:39:05', '2023-05-08 20:39:34'),
(64, 'kevin', '2023-05-08 20:39:40', '2023-05-08 20:40:38'),
(65, 'admin', '2023-05-08 20:40:44', '2023-05-08 20:41:19'),
(66, 'admin', '2023-05-08 20:41:31', '2023-05-08 20:44:55'),
(67, 'admin', '2023-05-08 20:47:41', '0000-00-00 00:00:00'),
(68, 'admin', '2023-05-09 09:42:28', '2023-05-09 10:25:18'),
(69, 'staff', '2023-05-09 10:25:39', '2023-05-09 10:26:08'),
(70, 'admin', '2023-05-09 10:26:16', '2023-05-09 10:28:25'),
(71, 'admin', '2023-05-09 10:28:29', '2023-05-09 10:28:34'),
(72, 'staff', '2023-05-09 10:28:38', '2023-05-09 10:28:53'),
(73, 'kevin', '2023-05-09 10:28:57', '2023-05-09 10:29:00'),
(74, 'admin', '2023-05-09 10:29:08', '0000-00-00 00:00:00'),
(75, 'kevin', '2023-05-10 19:17:06', '2023-05-10 19:17:25'),
(76, 'admin', '2023-05-10 19:19:54', '2023-05-10 19:21:03'),
(77, 'kevinn', '2023-05-10 19:21:12', '0000-00-00 00:00:00'),
(78, 'staff', '2023-05-10 19:23:39', '2023-05-10 19:24:13'),
(79, 'admin', '2023-05-10 19:24:37', '2023-05-10 19:34:49'),
(80, 'staff', '2023-05-10 19:34:56', '2023-05-10 19:35:32'),
(81, 'kevin', '2023-05-10 19:35:36', '2023-05-10 19:36:05'),
(82, 'staff', '2023-05-10 19:36:09', '0000-00-00 00:00:00'),
(83, 'admin', '2023-05-14 20:28:16', '2023-05-14 20:29:19'),
(84, 'staff', '2023-05-14 20:29:25', '2023-05-14 20:29:57'),
(85, 'kevin', '2023-05-14 20:30:02', '2023-05-14 20:30:51'),
(86, 'admin', '2023-05-14 20:30:56', '2023-05-14 20:31:19'),
(87, 'admin', '2023-05-14 20:33:22', '2023-05-14 20:33:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id_staff`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Staff', 'staff@gmail.com', 'staff', '$2y$10$FkDF2YbXO2KntkJfeYLjtOxRhOPlHOhE9gRi97RqfMT6fJ25vJSQG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indeks untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_staff`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
