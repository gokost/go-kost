
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2017 at 03:24 AM
-- Server version: 10.0.28-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u822000845_gokos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kat` int(2) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(50) NOT NULL,
  `tgl_input_kat` datetime NOT NULL,
  PRIMARY KEY (`id_kat`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kat`, `kategori`, `tgl_input_kat`) VALUES
(4, 'PUTRA', '2017-01-04 14:30:21'),
(5, 'PUTRI', '2017-01-04 14:30:27'),
(6, 'CAMPURAN', '2017-01-04 14:30:40'),
(7, 'PASUTRI', '2017-01-04 14:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `id_user` int(2) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(30) NOT NULL,
  `pass_user` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `nama_user`, `pass_user`, `nama`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'Admin Go-Kost', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_lokasi`
--

CREATE TABLE IF NOT EXISTS `tb_lokasi` (
  `id_lokasi` int(2) NOT NULL AUTO_INCREMENT,
  `lokasi` varchar(50) NOT NULL,
  `tgl_input_lokasi` datetime NOT NULL,
  PRIMARY KEY (`id_lokasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_lokasi`
--

INSERT INTO `tb_lokasi` (`id_lokasi`, `lokasi`, `tgl_input_lokasi`) VALUES
(3, 'TAHUNAN', '2017-01-04 14:34:11'),
(4, 'SENENAN', '2017-01-04 14:34:18'),
(5, 'LANGON', '2017-01-04 14:34:24'),
(6, 'PENGKOL', '2017-01-04 14:34:31'),
(7, 'JEPARA KOTA', '2017-01-04 14:34:40'),
(8, 'BANGSRI', '2017-01-04 15:07:08');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `id_produk` int(2) NOT NULL AUTO_INCREMENT,
  `judul` varchar(220) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `id_lokasi` int(2) NOT NULL,
  `id_kat` int(2) NOT NULL,
  `ket` text NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `counter` int(5) NOT NULL,
  `tgl_input_pro` datetime NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `judul`, `harga`, `jumlah`, `kondisi`, `id_lokasi`, `id_kat`, `ket`, `status`, `counter`, `tgl_input_pro`, `foto`) VALUES
(10, 'kost ibu desi', 500000, '12', 'kost ibu desi', 3, 6, 'kost nyaman tempat terbuka dan dekat dengan pertokoan seperti alfamart, indomaret dll', 'publish', 6, '2017-01-04 17:16:12', '2134_depan11.jpg'),
(11, 'kost maju mundur', 250000, '10', 'terawat', 5, 6, 'kami menyediakan kost untuk para pencari kost', 'publish', 1, '2017-01-04 17:52:16', 'Hal-Penting-Sebelum-Memilih-Rumah-Kost.jpg'),
(12, 'kost aming setiawan', 300000, '21', 'kost aming setiawan', 6, 4, 'tersedia bonus untuk anda jika kost di tempat kami', 'publish', 2, '2017-01-04 17:53:28', 'IMG_3479_m.jpg'),
(13, 'berkah kost', 500000, '11', 'berkah kost', 7, 5, 'tempat kost kita sangat dekat dengan pusat kota, jadi sangat cocok untuk anda yang suka dengan suasana keramaian ', 'publish', 2, '2017-01-04 17:55:07', 'bisnis-kost-eksklusif-3.jpg'),
(14, 'kost sederhana', 150000, '5', 'kost sederhana', 6, 6, 'kami menyediakan tempat tinggal ala kadarnya dengan biaya yang sangat hemat', 'publish', 3, '2017-01-04 17:56:45', '2psj2hw1.jpg'),
(15, 'mwantaps kost', 400000, '35', 'mwantaps kost', 3, 7, 'kost dengan pelayanan maksimal? anda datang ketempat yang tepat', 'publish', 2, '2017-01-04 17:58:18', 'rumah-kost-bengkulu.jpg'),
(16, 'Sin Kos Tan', 350000, '30', 'Sin Kos Tan', 4, 6, 'Menjamin keamanan tempat kost anda dengan baik.', 'publish', 4, '2017-01-04 18:13:44', 'gallery3.jpg'),
(17, 'Griya kost', 300000, '20', 'Griya kost', 4, 5, 'Dapatkan kost ini dengan fasilitas menarik salah satunya kamar mandi dalam.', 'publish', 3, '2017-01-04 18:14:50', 'gallery1.jpg'),
(18, 'Primadona Kost', 600000, '10', 'Primadona Kost', 7, 6, 'Kepuasan anda adalah tujuan kami', 'publish', 7, '2017-01-04 18:17:38', 'gallery2.jpg'),
(19, 'hjdskd', 12, '12', 'dasm ', 3, 4, 'dnsa', 'draft', 0, '2017-01-07 04:55:02', '4_jarjit.png'),
(20, 'asw', 12, '12', 'wdw', 3, 4, 'sdwd', 'draft', 0, '2017-01-07 05:19:43', 'Screenshot_7.png'),
(21, 'aaaa', 1111111, '1', 'aaaaa', 4, 4, 'aaaa', 'draft', 0, '2017-01-07 06:46:02', 'Screenshot_2.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitor`
--

CREATE TABLE IF NOT EXISTS `tb_visitor` (
  `no` int(7) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `tb_visitor`
--

INSERT INTO `tb_visitor` (`no`, `ip`, `os`, `browser`, `tanggal`) VALUES
(15, '::1', 'Unknown Windows OS', 'Chrome 43.0.2357.124', '2015-06-14 14:31:32'),
(16, '::1', 'Unknown Windows OS', 'Firefox 22.0', '2015-06-14 14:32:35'),
(17, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-04 14:24:48'),
(18, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-05 04:37:32'),
(19, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-05 06:26:28'),
(20, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-05 16:34:10'),
(21, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-05 18:54:24'),
(22, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 11:27:37'),
(23, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 12:05:24'),
(24, '::1', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 16:55:17'),
(25, '120.188.84.244', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:13:31'),
(26, '120.188.84.244', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:15:00'),
(27, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:19:24'),
(28, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:20:29'),
(29, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:21:13'),
(30, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:21:45'),
(31, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:23:51'),
(32, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:24:00'),
(33, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:24:04'),
(34, '64.233.173.7', 'Linux', 'Chrome 55.0.2883.91', '2017-01-06 17:24:20'),
(35, '64.233.173.3', 'Linux', 'Chrome 55.0.2883.91', '2017-01-06 17:24:28'),
(36, '64.233.173.17', 'Linux', 'Chrome 55.0.2883.91', '2017-01-06 17:24:34'),
(37, '64.233.173.18', 'Linux', 'Chrome 55.0.2883.91', '2017-01-06 17:24:37'),
(38, '64.233.173.19', 'Linux', 'Chrome 55.0.2883.91', '2017-01-06 17:24:49'),
(39, '120.188.84.244', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:32:05'),
(40, '120.188.84.244', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:32:30'),
(41, '120.188.84.244', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:32:33'),
(42, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:35:33'),
(43, '120.188.2.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:35:43'),
(44, '120.188.78.24', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-06 17:38:15'),
(45, '120.188.84.57', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 00:57:44'),
(46, '120.188.84.57', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:01:28'),
(47, '120.188.74.149', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:41:49'),
(48, '64.233.173.31', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:46:16'),
(49, '64.233.173.23', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:46:22'),
(50, '64.233.173.22', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:46:27'),
(51, '64.233.173.24', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:46:37'),
(52, '64.233.173.24', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:47:10'),
(53, '120.188.74.149', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 01:58:24'),
(54, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:04:37'),
(55, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:11:45'),
(56, '64.233.173.22', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 02:12:47'),
(57, '114.4.82.99', 'Unknown Windows OS', 'Chrome 46.0.2486.0', '2017-01-07 02:13:52'),
(58, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:20:13'),
(59, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:20:57'),
(60, '120.188.74.149', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:25:44'),
(61, '173.252.90.99', 'Unknown Platform', 'Unidentified User Agent', '2017-01-07 02:28:42'),
(62, '66.220.145.243', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:28:44'),
(63, '202.67.46.38', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 02:43:04'),
(64, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 03:05:01'),
(65, '114.4.82.99', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 03:58:29'),
(66, '112.215.153.53', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 04:14:00'),
(67, '202.67.46.19', 'Linux', 'Chrome 33.0.0.0', '2017-01-07 04:14:25'),
(68, '112.215.154.69', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 04:16:53'),
(69, '120.188.83.12', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 04:58:30'),
(70, '120.188.83.12', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 05:13:58'),
(71, '114.4.82.113', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 05:14:27'),
(72, '202.67.40.1', 'Linux', 'Chrome 46.0.2490.85', '2017-01-07 06:22:32'),
(73, '64.233.173.24', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 06:26:33'),
(74, '112.215.44.238', 'Linux', 'Chrome 55.0.2883.91', '2017-01-07 06:32:17'),
(75, '120.188.75.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 06:41:47'),
(76, '120.188.75.162', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 06:42:32'),
(77, '120.188.75.138', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2017-01-07 06:42:55');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
