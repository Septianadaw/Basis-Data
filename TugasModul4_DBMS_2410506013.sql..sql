-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Mar 2025 pada 09.07
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
-- Database: `ptbersinar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `FULL_NAME` varchar(128) NOT NULL,
  `TELP` varchar(20) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `D_CREATED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `FULL_NAME`, `TELP`, `EMAIL`, `D_CREATED`) VALUES
('SDAW001', 'Septiana Wulandari', '085501090619', 'septianadaw19@gmail.com', '2025-02-25'),
('SDAW002', 'Lintang Surya', '085975661235', 'suryaa04@gmail.com', '2025-02-25'),
('SDAW003', 'Dini Putri', '085678912345', 'diniaput12@gmail.com', '2025-02-25'),
('SDAW004', 'Devi Apriliani', '085129895674', 'aprildev3@gmail.com', '2025-02-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) NOT NULL,
  `FULL_NAME` varchar(128) NOT NULL,
  `TMP_LAHIR` varchar(90) NOT NULL,
  `TGL_LAHIR` varchar(20) NOT NULL,
  `ALAMAT` mediumtext NOT NULL,
  `GENDER` enum('L','P') NOT NULL,
  `TELP` varchar(20) NOT NULL,
  `FOTO` varchar(100) NOT NULL,
  `D_CREATED` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('TI123456', 'SDAW001', 'Maulina Indah', 'Solo', '2006/01/01', 'Solo JATENG', 'P', '081523451236', 'maulina.jpg', '2025-02-27'),
('TI123457', 'SDAW002', 'Regita Ismu', 'Klaten', '2006/08/09', 'Klaten JATENG', 'P', '081523345671', 'regita.jpg', '2025-02-27'),
('TI123458', 'SDAW003', 'Diva Aisyah', 'Solo', '2006/04/08', 'Jogja DIY', 'P', '081678932341', 'diva.jpg', '2025-02-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitasmahasiswa`
--

CREATE TABLE `identitasmahasiswa` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `identitasmahasiswa`
--

INSERT INTO `identitasmahasiswa` (`NPM`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `No_Hp`) VALUES
('24105', 'Septiana Daw', 'Klaten', '2006-09-01', 'P', '081523456789'),
('24115', 'Lintang Surya', 'GunungKidul', '2006-07-27', 'P', '081234567856'),
('24125', 'Lina Indah', 'Solo', '2006-03-04', 'P', '081516172345'),
('24145', 'Faezya Fadhil', 'Tangerang', '2003-07-04', 'L', '083412567645'),
('24155', 'Devi Apriliani', 'Semarang', '2004-09-12', 'P', '085678453254'),
('24165', 'Khoirul Anam', 'Medan', '2002-10-07', 'L', '083456785623'),
('24175', 'Giovana Anditio', 'Bandung', '2003-11-30', 'L', '081546782312'),
('24185', 'Nova Dito', 'Surabaya', '2004-02-08', 'L', '081342356743'),
('24195', 'Syifa Ardina', 'Magelang', '2006-07-13', 'P', '081456783439');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`);

--
-- Indeks untuk tabel `identitasmahasiswa`
--
ALTER TABLE `identitasmahasiswa`
  ADD PRIMARY KEY (`NPM`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
