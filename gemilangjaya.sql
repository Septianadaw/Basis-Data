-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Mar 2025 pada 09.53
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gemilangjaya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ID_Produk` int(11) NOT NULL,
  `Nama_Produk` varchar(100) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ID_Produk`, `Nama_Produk`, `kategori`, `harga`) VALUES
(1, 'Kulkas', 'Elektronik', 3500.00),
(2, 'Laptop Asus', 'Elektronik', 9900.00),
(3, 'Susu UHT Full Cream', 'Makanan', 15.00),
(4, 'Coklat SilverQueen', 'Makanan', 25.00),
(5, 'Lipstik Maybelline Matte', 'Kecantikan', 85.00),
(6, 'Cushion Instaperfect', 'Kecantikan', 150.00),
(7, 'Sunscren Azarine', 'Kecantikan', 60.00),
(8, 'Raket Badminton', 'Olahraga', 400.00),
(9, 'Bola Basket', 'Olahraga', 80.00),
(10, 'Sofa 3 Seater', 'Furniture', 5000.00),
(11, 'Kasur Spring Bed', 'Furniture', 3500.00),
(12, 'Magic Com', 'Elektronik', 300.00);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_Produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `ID_Produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
