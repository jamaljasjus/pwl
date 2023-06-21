-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 18.28
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cipwl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `foto` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `jumlah`, `keterangan`, `foto`) VALUES
(2, 'Surya 16', 32000, 17, 'rokok wenak', 'surya16.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ongkir` double NOT NULL,
  `status` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `username`, `total_harga`, `alamat`, `ongkir`, `status`, `created_by`, `created_date`) VALUES
(1, 'jamal', 127000, 'Pangkalanbun', 63000, 0, 'jamal', '2023-06-21 16:25:11'),
(2, 'jamal', 140000, 'Pangkalanbun', 76000, 0, 'jamal', '2023-06-21 16:26:03'),
(3, 'jamal', 172000, 'Pangkalanbun', 76000, 0, 'jamal', '2023-06-21 16:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` double NOT NULL,
  `diskon` double NOT NULL,
  `subtotal_harga` double NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `id_transaksi`, `id_barang`, `jumlah`, `diskon`, `subtotal_harga`, `created_by`, `created_date`) VALUES
(2, 3, 2, 3, 0, 96000, 'jamal', '2023-06-21 16:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `role`, `password`) VALUES
(1, 'jamal', 'admin', '7592628bce37dd14e0b36ea66d5ba847');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
