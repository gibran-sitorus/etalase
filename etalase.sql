-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2013 at 05:38 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `etalase`
--

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE IF NOT EXISTS `iklan` (
  `id_iklan` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `sub_kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `p_utama` varchar(255) NOT NULL,
  `kondisi` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status_nego` varchar(255) NOT NULL,
  `photo1` varchar(255) NOT NULL,
  `photo2` varchar(255) NOT NULL,
  `photo3` varchar(255) NOT NULL,
  `photo4` varchar(255) NOT NULL,
  `photo5` varchar(255) NOT NULL,
  `photo6` varchar(255) NOT NULL,
  `waktu_tayang` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_iklan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Mobil'),
(2, 'Alat-alat Musik'),
(3, 'Anak dan Bayi'),
(4, 'Buku'),
(5, 'Elektronik Konsumen'),
(6, 'Fashion Pria'),
(7, 'Fashion Wanita'),
(8, 'Film'),
(9, 'Fotografi'),
(10, 'Games dan Consoles'),
(11, 'Handicrafts'),
(12, 'Handphone dan Gadget'),
(13, 'Handphone Aksesoris'),
(14, 'Hewan Piaraan dan Aksesoris'),
(15, 'Jam dan Periasan'),
(16, 'Jasa'),
(17, 'Kesehatan dan Kecantikan'),
(18, 'Koleksi'),
(19, 'Konstruksi dan Taman'),
(20, 'Libuaran dan Bepergian'),
(21, 'Lowongan Pekerjaan'),
(22, 'Makanan dan Minuman'),
(23, 'Mobil dan Aksesoris'),
(24, 'Mobil dan Onderdil'),
(25, 'Motor dan Sekuter'),
(26, 'Properti'),
(27, 'Komputer'),
(28, 'Perlengkapan Rumah'),
(29, 'TV dan Audio'),
(30, 'Sepeda dan Aksesoris');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE IF NOT EXISTS `password_reset` (
  `id_reset` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `random` varchar(1000) NOT NULL,
  `used` int(11) NOT NULL COMMENT '0 = belum dipake, 1 = sudah dipake, 2=timeout',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_reset`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE IF NOT EXISTS `provinsi` (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(255) NOT NULL,
  PRIMARY KEY (`id_provinsi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Aceh D.I'),
(2, 'Bali'),
(3, 'Bangka Belitung'),
(4, 'Banten'),
(5, 'Bengkulu'),
(6, 'Gorontalo'),
(7, 'Jakarta D.K.I'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengan'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Timur'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nusa Tenggara Barat'),
(22, 'Nusa Tenggara Timur'),
(23, 'Papua'),
(24, 'Papua Barat'),
(25, 'Riau'),
(26, 'Sulawesi Barat'),
(27, 'Sulawesi Tengah'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tenggara'),
(30, 'Sulawesi Utara'),
(31, 'Sumatera Barat'),
(32, 'Sumatera Selatan'),
(33, 'Sumatera Utara'),
(34, 'Yogyakarta D.I');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kategori`
--

CREATE TABLE IF NOT EXISTS `sub_kategori` (
  `id_sub_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) NOT NULL,
  `nama_sub_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`id_sub_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nama_depan` varchar(255) NOT NULL,
  `nama_belakang` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabkota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `yahoo` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `pin_bb` varchar(255) NOT NULL,
  `kode_pos` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `tgl_gabung` date NOT NULL,
  `status_dipercaya` varchar(255) NOT NULL,
  `tampilkan_no_tlp` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
