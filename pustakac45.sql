-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2019 pada 05.04
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustakac45`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `noanggota` int(2) NOT NULL,
  `namaanggota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`noanggota`, `namaanggota`) VALUES
(10, 'yeni'),
(11, 'bolobolo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompokpustaka`
--

CREATE TABLE `kelompokpustaka` (
  `idkelompok` int(2) NOT NULL,
  `namakelompok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompokpustaka`
--

INSERT INTO `kelompokpustaka` (`idkelompok`, `namakelompok`) VALUES
(1, 'simdatamining'),
(2, 'algoritma');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `idpengguna` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `username`, `password`) VALUES
(1, 'yenny', 'sayatau'),
(2, 'bolobolo', 'tausaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustaka`
--

CREATE TABLE `pustaka` (
  `idpustaka` int(2) NOT NULL,
  `idkelompok` int(2) NOT NULL,
  `judulpustaka` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahunterbit` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pustaka`
--

INSERT INTO `pustaka` (`idpustaka`, `idkelompok`, `judulpustaka`, `pengarang`, `tahunterbit`) VALUES
(1, 1, 'algoritma', 'yenny', 2016),
(2, 2, 'mitode', 'bolobolo', 2017);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`noanggota`);

--
-- Indeks untuk tabel `kelompokpustaka`
--
ALTER TABLE `kelompokpustaka`
  ADD PRIMARY KEY (`idkelompok`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`);

--
-- Indeks untuk tabel `pustaka`
--
ALTER TABLE `pustaka`
  ADD PRIMARY KEY (`idpustaka`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
