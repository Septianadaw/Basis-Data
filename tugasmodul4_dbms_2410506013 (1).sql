-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2025 pada 13.30
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
-- Database: `tugasmodul4_dbms_2410506013`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `ID_KRS` int(11) NOT NULL,
  `ID_Mahasiswa` varchar(10) NOT NULL,
  `ID_Matakuliah` varchar(10) NOT NULL,
  `Nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`ID_KRS`, `ID_Mahasiswa`, `ID_Matakuliah`, `Nilai`) VALUES
(1, 'S001', '101', 85),
(2, 'S001', '102', 90),
(3, 'S002', '103', 88),
(4, 'S002', '104', 75),
(5, 'S003', '105', 92),
(6, 'S003', '101', 80),
(7, 'S004', '102', 78),
(8, 'S004', '103', 89),
(9, 'S005', '104', 83),
(10, 'S005', '105', 95),
(11, 'S006', '101', 87),
(12, 'S006', '102', 93),
(13, 'S007', '103', 76),
(14, 'S007', '104', 85),
(15, 'S008', '105', 88),
(16, 'S008', '101', 79);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID_Mahasiswa` varchar(10) NOT NULL,
  `Nama_Mahasiswa` varchar(100) NOT NULL,
  `Jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID_Mahasiswa`, `Nama_Mahasiswa`, `Jurusan`) VALUES
('S001', 'Septiana', 'Teknologi informasi'),
('S002', 'Wulandari', 'Teknologi informasi'),
('S003', 'Diyah Ayu', 'Teknologi informasi'),
('S004', 'Lintang', 'Teknik Elektro'),
('S005', 'Wijayanti', 'Teknik Elektro'),
('S006', 'Faezya', 'Sistem Informasi'),
('S007', 'Fadil', 'Sistem Informasi'),
('S008', 'Annam', 'Teknik Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `ID_Matakuliah` varchar(10) NOT NULL,
  `Nama_Matakuliah` varchar(100) NOT NULL,
  `SKS` enum('1','2','3') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`ID_Matakuliah`, `Nama_Matakuliah`, `SKS`) VALUES
('101', 'Basis Data', '2'),
('102', 'Algoritma Pemrograman', '3'),
('103', 'Jaringan Komputer', '3'),
('104', 'Fisika', '2'),
('105', 'Kalkulus', '3'),
('106', 'Kimia', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`ID_KRS`),
  ADD KEY `ID_Mahasiswa` (`ID_Mahasiswa`),
  ADD KEY `ID_Matakuliah` (`ID_Matakuliah`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID_Mahasiswa`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`ID_Matakuliah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `ID_KRS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`ID_Mahasiswa`) REFERENCES `mahasiswa` (`ID_Mahasiswa`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`ID_Matakuliah`) REFERENCES `mata_kuliah` (`ID_Matakuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
