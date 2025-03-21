-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2025 pada 04.02
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
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ambil_matkul`
--

CREATE TABLE `ambil_matkul` (
  `nim` int(11) NOT NULL,
  `kode_mk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ambil_matkul`
--

INSERT INTO `ambil_matkul` (`nim`, `kode_mk`) VALUES
(101, 'PTI447'),
(103, 'TIK333'),
(104, 'PTI333'),
(104, 'PTI777'),
(105, 'PTI123'),
(107, 'PTI777');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dos` int(11) NOT NULL,
  `nama_dos` varchar(100) NOT NULL,
  `alamat_dos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dos`, `nama_dos`, `alamat_dos`) VALUES
(10, 'Suharto', 'Jl. Jombang'),
(11, 'Martono', 'Jl. Kalpataru'),
(12, 'Rahmawati', 'Jl. Jakarta'),
(13, 'Bambang', 'Jl. Bandung'),
(14, 'Nurul', 'Jl. Raya Tidar'),
(23, 'Faezya', 'Jl. Pangeran'),
(33, 'Septiana', 'Jl. Keindahan'),
(99, 'Wulandari', 'Jl. Smanjat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jur` varchar(10) NOT NULL,
  `nama_jur` varchar(100) NOT NULL,
  `kode_dos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode_jur`, `nama_jur`, `kode_dos`) VALUES
('TE', 'Teknik Elektro', 10),
('TM', 'Teknik Mesin', 13),
('TS', 'Teknik Sipil', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `alamat`) VALUES
(101, 'Arif', 'L', 'Jl. Kenangan'),
(102, 'Budi', 'L', 'Jl. Jombang'),
(103, 'Wati', 'P', 'Jl. Surabaya'),
(104, 'Ika', 'P', 'Jl. Jombang'),
(105, 'Tono', 'L', 'Jl. Jakarta'),
(106, 'Iwan', 'L', 'Jl. Bandung'),
(107, 'Sari', 'P', 'Jl. Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `kode_dos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`, `kode_dos`) VALUES
('PTI123', 'Grafika Multimedia', 3, 5, 12),
('PTI333', 'Basis Data Terdistribusi', 3, 5, 10),
('PTI447', 'Praktikum Basis Data', 1, 3, 11),
('PTI777', 'Sistem Informasi', 2, 3, 99),
('TIK123', 'Jaringan Komputer', 2, 5, 33),
('TIK333', 'Sistem Operasi', 3, 5, 10),
('TIK342', 'Praktikum Basis Data', 1, 3, 11);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ambil_matkul`
--
ALTER TABLE `ambil_matkul`
  ADD PRIMARY KEY (`nim`,`kode_mk`),
  ADD KEY `kode_mk` (`kode_mk`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dos`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jur`),
  ADD KEY `kode_dos` (`kode_dos`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`),
  ADD KEY `kode_dos` (`kode_dos`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ambil_matkul`
--
ALTER TABLE `ambil_matkul`
  ADD CONSTRAINT `ambil_matkul_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `ambil_matkul_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);

--
-- Ketidakleluasaan untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`kode_dos`) REFERENCES `dosen` (`kode_dos`);

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`kode_dos`) REFERENCES `dosen` (`kode_dos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
