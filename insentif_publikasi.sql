-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jun 2021 pada 13.58
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insentif_publikasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `nidn` varchar(40) NOT NULL,
  `jurusan` varchar(75) NOT NULL,
  `program_studi` varchar(75) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `sinta` varchar(255) NOT NULL,
  `scopus` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `email`, `nama_lengkap`, `nidn`, `jurusan`, `program_studi`, `no_hp`, `sinta`, `scopus`, `user_id`) VALUES
(1, 'email', 'nama_lengkap', 'nidn', 'jurusan', 'program_studi', 'no_hp', 'sinta', 'scopus', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurnal`
--

CREATE TABLE `jurnal` (
  `id_jurnal` int(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `nidn` varchar(40) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `program_studi` varchar(40) NOT NULL,
  `no_hp` varchar(25) NOT NULL,
  `sinta` varchar(255) NOT NULL,
  `scopus` varchar(255) NOT NULL,
  `kontribusi` varchar(35) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `nama_jurnal` varchar(100) NOT NULL,
  `kualifikasi` varchar(255) NOT NULL,
  `url_artikel` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `upload_artikel` varchar(255) NOT NULL,
  `upload_surat` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurnal`
--

INSERT INTO `jurnal` (`id_jurnal`, `email`, `nama_lengkap`, `nidn`, `jurusan`, `program_studi`, `no_hp`, `sinta`, `scopus`, `kontribusi`, `judul_artikel`, `nama_jurnal`, `kualifikasi`, `url_artikel`, `name`, `upload_artikel`, `upload_surat`, `user_id`, `status`) VALUES
(1, 'admin@admin.com', 'addina nurul', '15342', 'Teknologi Informasi', 'Teknik Informatika', '09148752353', ' http://sinta.ristekbrin.go.id', 'Contoh: https://www.scopus.com/authid/detail.uri', 'Penulis Pertama', 'publikasi ilimiah', 'sistem informasi publikasi ilmiah', 'Jurnal Internasional bereputasi/terindeks Q1', 'Contoh: https://www.scopus.com/authid/detail.uri', '', '', '', 123456, 'Success'),
(2, 'admin@admin.com', 'addina nurul', '11223', 'Teknologi Informasi', 'Teknik Informatika', '09148752353', ' http://sinta.ristekbrin.go.id', 'Contoh: https://www.scopus.com/authid/detail.uri', 'Penulis Pertama', 'publikasi ilimiah', 'sistem informasi publikasi ilmiah', 'Jurnal Internasional bereputasi/terindeks Q1', 'Contoh: https://www.scopus.com/authid/detail.uri', '', '', '', 123456, 'tidak valid'),
(3, 'admin@admin.com', 'addina nurul', '11223', 'Teknologi Informasi', 'Teknik Informatika', '09148752353', ' http://sinta.ristekbrin.go.id', 'Contoh: https://www.scopus.com/authid/detail.uri', 'Penulis Korespondensi', 'publikasi ilimiah', 'sistem informasi publikasi ilmiah', 'Jurnal Nasional terakreditasi sinta 5', 'Contoh: https://www.scopus.com/authid/detail.uri', '', 'files/', '', 123456, 'tidak disetujui'),
(5, 'admin@admin.com', 'addina nurul', '15342', 'Teknologi Informasi', 'Teknik Informatika', '09148752353', ' http://sinta.ristekbrin.go.id', 'Contoh: https://www.scopus.com/authid/detail.uri', 'Penulis Korespondensi', 'publikasi ilimiah', 'sistem informasi publikasi ilmiah', 'Jurnal Internasional bereputasi/terindeks Q1', 'Contoh: https://www.scopus.com/authid/detail.uri', '6_1941720240_AddinaNurulMawaddah', 'files/6_1941720240_AddinaNurulMawaddah.pdf', '', 123456, 'disetujui'),
(6, 'revinur@gmail.com', 'revi Nur', '12345', 'Teknik Elektro', 'Teknik Elektro', '067954543223', 'http://sinta.ristekbrin.go.id/authors', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', 'Co-author', 'artikel elektro', 'elektro magnet', 'Jurnal Internasional bereputasi/terindeks Q4', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', '03 View Rev 2021 ID', 'files/03 View Rev 2021 ID.pdf', '', 12345, 'valid'),
(7, 'revinur@gmail.com', 'revi Nur', '12345', 'Teknik Elektro', 'Teknik Elektro', '067954543223', 'http://sinta.ristekbrin.go.id/authors', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', 'Co-author', 'artikel elektro', 'elektro magnet', 'Jurnal Internasional bereputasi/terindeks Q2', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', '5_6276285814733275655', 'files/5_6276285814733275655.pdf', '', 12345, 'verif'),
(8, 'revinur@gmail.com', 'revi Nur', '12345', 'Teknik Elektro', 'Teknik Elektro', '067954543223', 'http://sinta.ristekbrin.go.id/authors', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', 'Co-author', 'artikel elektro', 'elektro magnet', 'Jurnal Internasional bereputasi/terindeks Q3', ' https://www.scopus.com/authid/detail.uri?authorId=46461783800 ', 'Galih Wicaksono_155100034_UTS_TESTING&IMPLEMENTASI', 'files/Galih Wicaksono_155100034_UTS_TESTING&IMPLEMENTASI.pdf', '', 12345, 'verif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `nidn` varchar(40) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nidn`, `username`, `password`, `email`, `status`) VALUES
(0, '12345', '12345', '12345', '12345@gmail.com', 'dosen'),
(1, '123456', '123456', '123456', '123456@gmail.com', 'dosen'),
(2, '98765', 'verifikator', 'verifikator2021', '98765@gmail.com', 'verifikator'),
(3, '111222', 'admin', 'admin2021', '111222@gmail.com', 'admin'),
(4, '991122', 'uptp2m', 'upt2021', '991122', 'upt'),
(5, '15342', '15342', '15342', '15342@gmail.com', 'dosen'),
(6, '11223', '11223', '11223', '11223@gmail.com', 'dosen');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`id_jurnal`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jurnal`
--
ALTER TABLE `jurnal`
  MODIFY `id_jurnal` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15344;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
