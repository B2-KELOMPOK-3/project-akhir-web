-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Apr 2023 pada 14.24
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
(3, 'kevin', 'kepin@gmail.com', 'kevin', '$2y$10$RXlq4UHVKGlIjTpKts0q0.u/YWc.cYNAszVmGfjOaObuJ5W5XdIxq');

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
(4, 'E-bike path E5 GENT', 50500000, 'Kevin Sanjaya Lois', 'sanjaya009@gmail.com', 'JL Dimana saja', 2147483647, '2023-04-29 05:51:16');

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
(4, 'Road Bike polygon Helios A8', 6000000, 'Road Bike polygon Helios A8X.png', '2023-04-29 05:53:07'),
(5, 'Mountain Bike Siskiu T7', 25000000, 'Muntain Bike Siskiu T7.png', '2023-04-17 08:40:52'),
(6, 'E-bike path E5 GENT', 50500000, 'E-bike path E5 GENT.png', '2022-11-14 15:28:35'),
(7, 'Adventure bike BEND R2', 44000000, 'Adventure bike BEND R2.png', '2022-11-14 15:29:23');

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
(41, 'admin', '2023-04-29 11:59:20', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `riwayat_login`
--
ALTER TABLE `riwayat_login`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
