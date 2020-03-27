-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 09:03 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crvindonesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id_chapter` int(11) NOT NULL,
  `namachapter` varchar(30) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `propinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `nowa` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `passfacebook` varchar(50) NOT NULL,
  `ig` varchar(100) NOT NULL,
  `passig` varchar(50) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `passtwitter` varchar(50) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `idaktif` int(11) NOT NULL,
  `ketaktif` varchar(200) NOT NULL,
  `aktifdate` varchar(20) NOT NULL,
  `insertdate` varchar(20) NOT NULL,
  `editdate` varchar(20) NOT NULL,
  `idinsert` int(11) NOT NULL,
  `idedit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id_chapter`, `namachapter`, `keterangan`, `propinsi`, `kabupaten`, `alamat`, `kodepos`, `nama`, `nohp`, `nowa`, `email`, `facebook`, `passfacebook`, `ig`, `passig`, `twitter`, `passtwitter`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idinsert`, `idedit`) VALUES
(3, 'Banda Aceh', '', 11, 14, '', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581511866', '1584721700', 1, 1),
(4, 'Sumatra Utara', '', 12, 34, '', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581511900', '', 1, 0),
(5, 'Ranah Minang', '-', 13, 90, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581511951', '', 1, 0),
(6, 'Riau', '-', 14, 78, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581511978', '', 1, 0),
(7, 'Bangka', '-', 19, 138, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512036', '', 1, 0),
(8, 'Paliko', 'Payakumbuh dan lima puluh kota', 13, 106, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512189', '', 1, 0),
(9, 'Jambi', '-', 15, 67, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512235', '', 1, 0),
(10, 'Palembang', '-', 16, 109, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512297', '', 1, 0),
(11, 'Lampung', '-', 18, 124, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512339', '', 1, 0),
(12, 'Banten', '-', 36, 152, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512392', '', 1, 0),
(13, 'Jakarta', '-', 31, 188, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512463', '', 1, 0),
(14, 'Bekasi Raya', '-', 32, 162, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512502', '', 1, 0),
(15, 'Bogor', '-', 32, 163, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512535', '', 1, 0),
(16, 'Bandung', '-', 32, 160, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512573', '', 1, 0),
(17, 'Priangan Timur', '-', 32, 167, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512661', '', 1, 0),
(18, 'Cirebon', '-', 32, 166, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512695', '', 1, 0),
(19, 'Purwokerto', '-', 33, 193, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512795', '1581513954', 1, 1),
(20, 'Yogyakarta', '-', 34, 269, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512862', '', 1, 0),
(21, 'Solo', '-', 33, 225, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512908', '1581513226', 1, 1),
(22, 'Semarang', '-', 33, 224, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581512957', '', 1, 0),
(23, 'Jawa Timur', '-', 35, 227, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581513048', '', 1, 0),
(24, 'Kalimantan Timur', '-', 64, 361, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581513107', '', 1, 0),
(25, 'Makasar', '-', 73, 392, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '', 1, 0, '', '', '1581513153', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `datachapter`
--

CREATE TABLE `datachapter` (
  `id` int(11) NOT NULL,
  `chapter` varchar(50) NOT NULL,
  `kodechapter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datachapter`
--

INSERT INTO `datachapter` (`id`, `chapter`, `kodechapter`) VALUES
(1, 'Banten', 12),
(2, 'Bogor', 15),
(3, 'Bekasi Raya', 14),
(4, 'Sumatra Utara', 4),
(5, 'Irian Jaya', 2),
(6, 'Kalimantan Timur', 24),
(7, 'Jakarta', 13),
(8, 'Yogyakarta', 20),
(9, 'Sumatra Selatan', 10),
(10, 'Jawa Timur', 23),
(11, 'Cirebon', 18),
(12, 'Bandung', 16),
(13, 'Semarang', 23),
(14, 'Lampung', 11),
(15, 'Palembang', 10),
(16, 'Bangka', 7),
(17, 'Kalimantan Selatan', 2),
(18, 'Priangan Timur', 17),
(19, 'Aceh', 3),
(20, 'Jambi', 9),
(21, 'Riau', 6),
(22, 'Bali', 2),
(23, 'Purwokerto', 19),
(24, 'Batam', 2),
(25, 'NTT', 2),
(26, '', 2),
(27, 'Makassar', 25),
(28, 'Manado', 0),
(29, 'Jawa Barat', 16),
(30, 'Kalimantan Tengah', 2),
(31, 'Jabodetabek', 2),
(32, 'Sumatera Barat', 5),
(33, 'Sumatra Barat', 5),
(34, 'Solo', 21),
(35, 'Priatim', 17),
(36, 'Kepulauan Riau', 6),
(37, 'Yogjakarta', 20),
(38, 'Ranah Minang', 5);

-- --------------------------------------------------------

--
-- Table structure for table `datadomisili`
--

CREATE TABLE `datadomisili` (
  `id` int(11) NOT NULL,
  `domisili` varchar(50) NOT NULL,
  `domkota` int(11) NOT NULL,
  `domprov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `datakota`
--

CREATE TABLE `datakota` (
  `id` int(11) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kodekota` int(11) NOT NULL,
  `kodeprov` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakota`
--

INSERT INTO `datakota` (`id`, `kota`, `kodekota`, `kodeprov`) VALUES
(1, 'Jakbar', 0, 0),
(2, 'DKI Jakarta', 0, 0),
(3, 'Cikarang', 0, 0),
(4, 'Jaksel', 0, 0),
(5, 'Tanggerang', 0, 0),
(6, 'Bekasi', 0, 0),
(7, 'Depok', 0, 0),
(8, 'Medan', 0, 0),
(9, 'Jayapura', 0, 0),
(10, 'Bontang', 0, 0),
(11, 'Bogor', 0, 0),
(12, 'Kerawang', 0, 0),
(13, 'Jakut', 0, 0),
(14, 'Yogyakarta', 0, 0),
(15, 'Palembang', 0, 0),
(16, 'Surabaya', 0, 0),
(17, 'Bintaro', 0, 0),
(18, 'Jaktim', 0, 0),
(19, 'Tegal', 0, 0),
(20, 'Cibubur', 0, 0),
(21, 'Bandung', 0, 0),
(22, 'Semarang', 0, 0),
(23, 'Lampung', 0, 0),
(24, 'Balikpapan', 0, 0),
(25, 'Lubuk Linggau', 0, 0),
(26, 'Jakpus', 0, 0),
(27, 'Bangka', 0, 0),
(28, 'Banjarmasin', 0, 0),
(29, 'Tasikmalaya', 0, 0),
(30, 'Cilegon', 0, 0),
(31, 'Aceh', 0, 0),
(32, 'Jambi', 0, 0),
(33, 'Pekanbaru', 0, 0),
(34, 'Malang', 0, 0),
(35, 'Kutai', 0, 0),
(36, 'Bali', 0, 0),
(37, 'Cilacap', 0, 0),
(38, 'Batam', 0, 0),
(39, 'Sidoarjo', 0, 0),
(40, 'Serang', 0, 0),
(41, 'Kupang', 0, 0),
(42, '', 0, 0),
(43, 'Makassar', 0, 0),
(44, 'Manado', 0, 0),
(45, 'Indramayu', 0, 0),
(46, 'Kediri', 0, 0),
(47, 'Jonggol', 0, 0),
(48, 'Cibinong', 0, 0),
(49, 'Pandegelang', 0, 0),
(50, 'Prabumulih', 0, 0),
(51, 'Denpasar', 0, 0),
(52, 'Sukabumi', 0, 0),
(53, 'Karawang', 0, 0),
(54, 'Pekalongan', 0, 0),
(55, 'Gowa', 0, 0),
(56, 'Garut', 0, 0),
(57, 'Sungai Lilin', 0, 0),
(58, 'Tanjung Pinang', 0, 0),
(59, 'Banjarnegara', 0, 0),
(60, 'Samarinda', 0, 0),
(61, 'Makasar', 0, 0),
(62, 'Banjarbaru', 0, 0),
(63, 'Dumai', 0, 0),
(64, 'Mojokerto', 0, 0),
(65, 'Tulungagung', 0, 0),
(66, 'Madiun', 0, 0),
(67, 'Magelang', 0, 0),
(68, 'Mamuju', 0, 0),
(69, 'Padang', 0, 0),
(70, 'Sukoharjo', 0, 0),
(71, 'Ngawi', 0, 0),
(72, 'Banten', 0, 0),
(73, 'Gunung Putri', 0, 0),
(74, 'Agam', 0, 0),
(75, 'Kebumen', 0, 0),
(76, 'Cirebon', 0, 0),
(77, 'Palangka Raya', 0, 0),
(78, 'Cimahi', 0, 0),
(79, 'Kendal', 0, 0),
(80, 'Purwokerto', 0, 0),
(81, 'Jepara', 0, 0),
(82, 'Banyuasin', 0, 0),
(83, 'Sleman', 0, 0),
(84, 'Sampang', 0, 0),
(85, 'Tanjung-pinang', 0, 0),
(86, 'Jakarta', 0, 0),
(87, 'tangsel', 0, 0),
(88, 'ponorogo', 0, 0),
(89, 'tangerang', 0, 0),
(90, 'Cilangkap', 0, 0),
(91, 'Cipayung', 0, 0),
(92, 'Bukit Tinggi', 0, 0),
(93, 'Jogjakarta', 0, 0),
(94, 'Sangatta Utara', 0, 0),
(95, 'Jember', 0, 0),
(96, 'Batang', 0, 0),
(97, 'grobogan', 0, 0),
(98, 'solo', 0, 0),
(99, 'kaltim', 0, 0),
(100, 'kudus', 0, 0),
(101, 'Tasik Malaya', 0, 0),
(102, 'gowa/makasar', 0, 0),
(103, 'salatiga', 0, 0),
(104, 'sidoardjo', 0, 0),
(105, 'jombang', 0, 0),
(106, 'lamongan', 0, 0),
(107, 'tuban', 0, 0),
(108, 'kuningan', 0, 0),
(109, 'banyuwangi', 0, 0),
(110, 'gorontalo', 0, 0),
(111, 'demak', 0, 0),
(112, 'majalengka', 0, 0),
(113, 'tasik', 0, 0),
(114, 'gresik', 0, 0),
(115, 'pangkal pinang', 0, 0),
(116, 'Cianjur', 0, 0),
(117, 'goa', 0, 0),
(118, 'rangkasbitung', 0, 0),
(119, 'sumedang', 0, 0),
(120, 'pekqalongan', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `datatipe`
--

CREATE TABLE `datatipe` (
  `id` int(11) NOT NULL,
  `typeken` varchar(50) NOT NULL,
  `kodetype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatipe`
--

INSERT INTO `datatipe` (`id`, `typeken`, `kodetype`) VALUES
(1, 'GEN 2', 3),
(2, 'GEN 3', 4),
(3, '', 2),
(4, 'GEN 1', 3),
(5, 'GEN3', 4),
(6, 'GEN 4', 4),
(7, 'gen2', 3),
(8, 'gen4', 4),
(9, 'gen  1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `datawarna`
--

CREATE TABLE `datawarna` (
  `id` int(11) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `kodewarna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datawarna`
--

INSERT INTO `datawarna` (`id`, `warna`, `kodewarna`) VALUES
(1, 'Hitam', 3),
(2, 'PUTIH', 1),
(3, '', 0),
(4, 'White Pearl', 1),
(5, 'Polish Metal', 0),
(6, 'Silver Stone', 0),
(7, 'Bourrego Beige', 0),
(8, 'Coklat Metalik', 0),
(9, 'Metalic', 0),
(10, 'Carbon Bronze', 0),
(11, 'Champagne', 0),
(12, 'Abu-abu Tua', 0),
(13, 'Ungu', 0),
(14, 'Urban', 0),
(15, 'Abu Metal', 0),
(16, 'Abu-abu Metalik', 0),
(17, 'Merah Metalik', 2),
(18, 'Grey Polished', 0),
(19, 'Urban Titanium', 0),
(20, 'Abaster Silver', 0),
(21, 'Dark Mocca', 0),
(22, 'Biru', 0),
(23, 'Mocca Metalic', 0),
(24, 'Dark Blue', 0),
(25, 'Hijau Metalik', 0),
(26, 'Gold', 0),
(27, 'Silver', 0),
(28, 'Gray', 0),
(29, 'Champaign', 0),
(30, 'Bronze', 0),
(31, 'Merah Tua Mutiara', 0),
(32, 'Silver Alabaster', 0),
(33, 'Cokelat', 0),
(34, 'Abu-abu Muda Metalic', 0),
(35, 'ABU ABU METALIK', 0),
(36, 'Putih Metalik', 0),
(37, 'Putih Mutiara', 0),
(38, 'Cokelat Metalik', 0),
(39, 'Cokelat Muda Metalik', 0),
(40, 'Abu-abu Tua Metalik', 0),
(41, 'Abu-abu Muda Metalik', 0),
(42, 'Abu-abu Tua Metalic', 0),
(43, 'grey metalik', 0),
(44, 'Coklat', 0),
(45, 'Abu2 metalik', 0),
(46, 'Coklat Tua Metalik', 0),
(47, 'abu abu muda', 0),
(48, 'hitam mutiara', 0),
(49, 'campange', 0),
(50, 'coklatmuda metalik', 0),
(51, 'merah', 0),
(52, 'abu2 muda', 0),
(53, 'hitam metalik', 0),
(54, 'abu tua metalik', 0),
(55, 'Abu Metalik', 0),
(56, 'Abu abu muda metalik', 0),
(57, 'coklat metal', 0),
(58, 'Abu-Abu', 0),
(59, 'abu abu tua metalik', 0),
(60, 'abu2 tua', 0),
(61, 'abu abu metalic', 0),
(62, 'biru metalik', 0),
(63, 'abu2', 0),
(64, 'coklat tua', 0),
(65, 'hitam metalic', 0),
(66, 'Dark brown', 0),
(67, 'silver metalic', 0),
(68, 'Biru Tua', 0),
(69, 'Mocca', 0),
(70, 'abu2 metalic', 0),
(71, 'puith', 0),
(72, 'silver metalk', 0),
(73, 'silver metalik', 0),
(74, 'Silver metallic', 0),
(75, 'Coklat Muda Metalik', 0),
(76, 'Abu muda metalik', 0),
(77, 'madern steel', 0),
(78, 'abu2 muda metalik', 0),
(79, 'abu abu', 0),
(80, 'Merah Cherry Mutiara', 0),
(81, 'silverstone', 0),
(82, 'coklat metalik mocca', 0),
(83, 'Grey', 0),
(84, 'Dark moca', 0),
(85, 'abu-abu muda', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `idrool` int(11) NOT NULL,
  `memail` tinyint(1) NOT NULL,
  `akses` varchar(3) NOT NULL,
  `insertdate` varchar(20) NOT NULL,
  `editdate` varchar(20) NOT NULL,
  `idinsert` int(11) NOT NULL,
  `idedit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama`, `keterangan`, `idrool`, `memail`, `akses`, `insertdate`, `editdate`, `idinsert`, `idedit`) VALUES
(1, 'Ketua Umum', 'Ketua Umum CR-V Club Indonesia', 1, 1, '257', '1581586165', '', 0, 0),
(2, 'Bendara Umum', 'Bendahara Umum', 1, 1, '257', '1581591664', '', 0, 0),
(3, 'Korchap', 'Kordinator Chapter', 3, 1, '100', '1581591743', '', 0, 0),
(4, 'Anggota', 'Anggota CR-V Club Indonesia', 4, 0, '100', '1581591796', '1581592279', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `id_provinsi` int(11) NOT NULL,
  `urutan_kab` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `kabupaten`, `id_provinsi`, `urutan_kab`, `type`) VALUES
(1, 'Kabupaten Bengkulu Selatan', 17, 1, 1),
(2, 'Kabupaten Bengkulu Tengah', 17, 2, 1),
(3, 'Kabupaten Bengkulu Utara', 17, 3, 1),
(4, 'Kabupaten Kaur', 17, 4, 1),
(5, 'Kabupaten Kepahiang', 17, 5, 1),
(6, 'Kabupaten Lebong', 17, 6, 1),
(7, 'Kabupaten Mukomuko', 17, 7, 1),
(8, 'Kabupaten Rejang Lebong', 17, 8, 1),
(9, 'Kabupaten Seluma', 17, 9, 1),
(10, 'Kota Bengkulu', 17, 10, 2),
(11, 'Kabupaten Aceh Barat', 11, 1, 1),
(12, 'Kabupaten Aceh Barat Daya', 11, 2, 1),
(13, 'Kabupaten Aceh Besar', 11, 3, 1),
(14, 'Kabupaten Aceh Jaya', 11, 4, 1),
(15, 'Kabupaten Aceh Selatan', 11, 5, 1),
(16, 'Kabupaten Aceh Singkil', 11, 6, 1),
(17, 'Kabupaten Aceh Tamiang', 11, 7, 1),
(18, 'Kabupaten Aceh Tengah', 11, 8, 1),
(19, 'Kabupaten Aceh Tenggara', 11, 9, 1),
(20, 'Kabupaten Aceh Timur', 11, 10, 1),
(21, 'Kabupaten Aceh Utara', 11, 11, 1),
(22, 'Kabupaten Bener Meriah', 11, 12, 1),
(23, 'Kabupaten Bireuen', 11, 13, 1),
(24, 'Kabupaten Gayo Lues', 11, 14, 1),
(25, 'Kabupaten Nagan Raya', 11, 15, 1),
(26, 'Kabupaten Pidie', 11, 16, 1),
(27, 'Kabupaten Pidie Jaya', 11, 17, 1),
(28, 'Kabupaten Simeulue', 11, 18, 1),
(29, 'Kota Banda Aceh', 11, 19, 2),
(30, 'Kota Langsa', 11, 20, 2),
(31, 'Kota Lhokseumawe', 11, 21, 2),
(32, 'Kota Sabang', 11, 22, 2),
(33, 'Kota Subulussalam', 11, 23, 2),
(34, 'Kabupaten Asahan', 12, 1, 1),
(35, 'Kabupaten Batu Bara', 12, 2, 1),
(36, 'Kabupaten Dairi', 12, 3, 1),
(37, 'Kabupaten Deli Serdang', 12, 4, 1),
(38, 'Kabupaten Humbang Hasundutan', 12, 5, 1),
(39, 'Kabupaten Karo', 12, 6, 1),
(40, 'Kabupaten Labuhanbatu', 12, 7, 1),
(41, 'Kabupaten Labuhanbatu Selatan', 12, 8, 1),
(42, 'Kabupaten Labuhanbatu Utara', 12, 9, 1),
(43, 'Kabupaten Langkat', 12, 10, 1),
(44, 'Kabupaten Mandailing Natal', 12, 11, 1),
(45, 'Kabupaten Nias', 12, 12, 1),
(46, 'Kabupaten Nias Barat', 12, 13, 1),
(47, 'Kabupaten Nias Selatan', 12, 14, 1),
(48, 'Kabupaten Nias Utara', 12, 15, 1),
(49, 'Kabupaten Padang Lawas', 12, 16, 1),
(50, 'Kabupaten Padang Lawas Utara', 12, 17, 1),
(51, 'Kabupaten Pakpak Bharat', 12, 18, 1),
(52, 'Kabupaten Samosir', 12, 19, 1),
(53, 'Kabupaten Serdang Bedagai', 12, 20, 1),
(54, 'Kabupaten Simalungun', 12, 21, 1),
(55, 'Kabupaten Tapanuli Selatan', 12, 22, 1),
(56, 'Kabupaten Tapanuli Tengah', 12, 23, 1),
(57, 'Kabupaten Tapanuli Utara', 12, 24, 1),
(58, 'Kabupaten Toba Samosir', 12, 25, 1),
(59, 'Kota Binjai', 12, 26, 2),
(60, 'Kota Gunung Sitoli', 12, 27, 2),
(61, 'Kota Medan', 12, 28, 2),
(62, 'Kota Padang Sidempuan', 12, 29, 2),
(63, 'Kota Pematangsiantar', 12, 30, 2),
(64, 'Kota Sibolga', 12, 31, 2),
(65, 'Kota Tanjung Balai', 12, 32, 2),
(66, 'Kota Tebing Tinggi', 12, 33, 2),
(67, 'Kabupaten Batanghari', 15, 1, 1),
(68, 'Kabupaten Bungo', 15, 2, 1),
(69, 'Kabupaten Kerinci', 15, 3, 1),
(70, 'Kabupaten Merangin', 15, 4, 1),
(71, 'Kabupaten Muaro Jambi', 15, 5, 1),
(72, 'Kabupaten Sarolangun', 15, 6, 1),
(73, 'Kabupaten Tanjung Jabung Barat', 15, 7, 1),
(74, 'Kabupaten Tanjung Jabung Timur', 15, 8, 1),
(75, 'Kabupaten Tebo', 15, 9, 1),
(76, 'Kota Jambi', 15, 10, 2),
(77, 'Kota Sungai Penuh', 15, 11, 2),
(78, 'Kabupaten Bengkalis', 14, 1, 1),
(79, 'Kabupaten Indragiri Hilir', 14, 2, 1),
(80, 'Kabupaten Indragiri Hulu', 14, 3, 1),
(81, 'Kabupaten Kampar', 14, 4, 1),
(82, 'Kabupaten Kuantan Singingi', 14, 5, 1),
(83, 'Kabupaten Pelalawan', 14, 6, 1),
(84, 'Kabupaten Rokan Hilir', 14, 7, 1),
(85, 'Kabupaten Rokan Hulu', 14, 8, 1),
(86, 'Kabupaten Siak', 14, 9, 1),
(87, 'Kabupaten Kepulauan Meranti', 14, 10, 1),
(88, 'Kota Pekanbaru', 14, 11, 2),
(89, 'Kota Dumai', 14, 12, 2),
(90, 'Kabupaten Agam', 13, 1, 1),
(91, 'Kabupaten Dharmasraya', 13, 2, 1),
(92, 'Kabupaten Kepulauan Mentawai', 13, 3, 1),
(93, 'Kabupaten Lima Puluh Kota', 13, 4, 1),
(94, 'Kabupaten Padang Pariaman', 13, 5, 1),
(95, 'Kabupaten Pasaman', 13, 6, 1),
(96, 'Kabupaten Pasaman Barat', 13, 7, 1),
(97, 'Kabupaten Pesisir Selatan', 13, 8, 1),
(98, 'Kabupaten Sijunjung', 13, 9, 1),
(99, 'Kabupaten Solok', 13, 10, 1),
(100, 'Kabupaten Solok Selatan', 13, 11, 1),
(101, 'Kabupaten Tanah Datar', 13, 12, 1),
(102, 'Kota Bukittinggi', 13, 13, 1),
(103, 'Kota Padang', 13, 14, 2),
(104, 'Kota Padangpanjang', 13, 15, 2),
(105, 'Kota Pariaman', 13, 16, 2),
(106, 'Kota Payakumbuh', 13, 17, 2),
(107, 'Kota Sawahlunto', 13, 18, 2),
(108, 'Kota Solok', 13, 19, 2),
(109, 'Kabupaten Banyuasin', 16, 1, 1),
(110, 'Kabupaten Empat Lawang', 16, 2, 1),
(111, 'Kabupaten Lahat', 16, 3, 1),
(112, 'Kabupaten Muara Enim', 16, 4, 1),
(113, 'Kabupaten Musi Banyuasin', 16, 5, 1),
(114, 'Kabupaten Musi Rawas', 16, 6, 1),
(115, 'Kabupaten Ogan Ilir', 16, 7, 1),
(116, 'Kabupaten Ogan Komering Ilir', 16, 8, 1),
(117, 'Kabupaten Ogan Komering Ulu', 16, 9, 1),
(118, 'Kabupaten Ogan Komering Ulu Selatan', 16, 10, 1),
(119, 'Kabupaten Ogan Komering Ulu Timur', 16, 11, 1),
(120, 'Kota Lubuklinggau', 16, 12, 2),
(121, 'Kota Pagar Alam', 16, 13, 2),
(122, 'Kota Palembang', 16, 14, 2),
(123, 'Kota Prabumulih', 16, 15, 2),
(124, 'Kabupaten Lampung Barat', 18, 1, 1),
(125, 'Kabupaten Lampung Selatan', 18, 2, 1),
(126, 'Kabupaten Lampung Tengah', 18, 3, 1),
(127, 'Kabupaten Lampung Timur', 18, 4, 1),
(128, 'Kabupaten Lampung Utara', 18, 5, 1),
(129, 'Kabupaten Mesuji', 18, 6, 1),
(130, 'Kabupaten Pesawaran', 18, 7, 1),
(131, 'Kabupaten Pringsewu', 18, 8, 1),
(132, 'Kabupaten Tanggamus', 18, 9, 1),
(133, 'Kabupaten Tulang Bawang', 18, 10, 1),
(134, 'Kabupaten Tulang Bawang Barat', 18, 11, 1),
(135, 'Kabupaten Way Kanan', 18, 12, 1),
(136, 'Kota Bandar Lampung', 18, 13, 2),
(137, 'Kota Metro', 18, 14, 2),
(138, 'Kabupaten Bangka', 19, 1, 1),
(139, 'Kabupaten Bangka Barat', 19, 2, 1),
(140, 'Kabupaten Bangka Selatan', 19, 3, 1),
(141, 'Kabupaten Bangka Tengah', 19, 4, 1),
(142, 'Kabupaten Belitung', 19, 5, 1),
(143, 'Kabupaten Belitung Timur', 19, 6, 1),
(144, 'Kota Pangkal Pinang', 19, 7, 2),
(145, 'Kabupaten Bintan', 21, 1, 1),
(146, 'Kabupaten Karimun', 21, 2, 1),
(147, 'Kabupaten Kepulauan Anambas', 21, 3, 1),
(148, 'Kabupaten Lingga', 21, 4, 1),
(149, 'Kabupaten Natuna', 21, 5, 1),
(150, 'Kota Batam', 21, 6, 2),
(151, 'Kota Tanjung Pinang', 21, 7, 2),
(152, 'Kabupaten Lebak', 36, 1, 1),
(153, 'Kabupaten Pandeglang', 36, 2, 1),
(154, 'Kabupaten Serang', 36, 3, 1),
(155, 'Kabupaten Tangerang', 36, 4, 1),
(156, 'Kota Cilegon', 36, 5, 2),
(157, 'Kota Serang', 36, 6, 2),
(158, 'Kota Tangerang', 36, 7, 2),
(159, 'Kota Tangerang Selatan', 36, 8, 2),
(160, 'Kabupaten Bandung', 32, 1, 1),
(161, 'Kabupaten Bandung Barat', 32, 2, 1),
(162, 'Kabupaten Bekasi', 32, 3, 1),
(163, 'Kabupaten Bogor', 32, 4, 1),
(164, 'Kabupaten Ciamis', 32, 5, 1),
(165, 'Kabupaten Cianjur', 32, 6, 1),
(166, 'Kabupaten Cirebon', 32, 7, 1),
(167, 'Kabupaten Garut', 32, 8, 1),
(168, 'Kabupaten Indramayu', 32, 9, 1),
(169, 'Kabupaten Karawang', 32, 10, 1),
(170, 'Kabupaten Kuningan', 32, 11, 1),
(171, 'Kabupaten Majalengka', 32, 12, 1),
(172, 'Kabupaten Purwakarta', 32, 13, 1),
(173, 'Kabupaten Subang', 32, 14, 1),
(174, 'Kabupaten Sukabumi', 32, 15, 1),
(175, 'Kabupaten Sumedang', 32, 16, 1),
(176, 'Kabupaten Tasikmalaya', 32, 17, 1),
(177, 'Kota Bandung', 32, 18, 2),
(178, 'Kota Banjar', 32, 19, 2),
(179, 'Kota Bekasi', 32, 20, 2),
(180, 'Kota Bogor', 32, 21, 2),
(181, 'Kota Cimahi', 32, 22, 2),
(182, 'Kota Cirebon', 32, 23, 2),
(183, 'Kota Depok', 32, 24, 2),
(184, 'Kota Sukabumi', 32, 25, 2),
(185, 'Kota Tasikmalaya', 32, 26, 2),
(186, 'Kabupaten Administrasi Kepulauan Seribu', 31, 1, 1),
(187, 'Kota Administrasi Jakarta Barat', 31, 2, 2),
(188, 'Kota Administrasi Jakarta Pusat', 31, 3, 2),
(189, 'Kota Administrasi Jakarta Selatan', 31, 4, 2),
(190, 'Kota Administrasi Jakarta Timur', 31, 5, 2),
(191, 'Kota Administrasi Jakarta Utara', 31, 6, 2),
(192, 'Kabupaten Banjarnegara', 33, 1, 1),
(193, 'Kabupaten Banyumas', 33, 2, 1),
(194, 'Kabupaten Batang', 33, 3, 1),
(195, 'Kabupaten Blora', 33, 4, 1),
(196, 'Kabupaten Boyolali', 33, 5, 1),
(197, 'Kabupaten Brebes', 33, 6, 1),
(198, 'Kabupaten Cilacap', 33, 7, 1),
(199, 'Kabupaten Demak', 33, 8, 1),
(200, 'Kabupaten Grobogan', 33, 9, 1),
(201, 'Kabupaten Jepara', 33, 10, 1),
(202, 'Kabupaten Karanganyar', 33, 11, 1),
(203, 'Kabupaten Kebumen', 33, 12, 1),
(204, 'Kabupaten Kendal', 33, 13, 1),
(205, 'Kabupaten Klaten', 33, 14, 1),
(206, 'Kabupaten Kudus', 33, 15, 1),
(207, 'Kabupaten Magelang', 33, 16, 1),
(208, 'Kabupaten Pati', 33, 17, 1),
(209, 'Kabupaten Pekalongan', 33, 18, 1),
(210, 'Kabupaten Pemalang', 33, 19, 1),
(211, 'Kabupaten Purbalingga', 33, 20, 1),
(212, 'Kabupaten Purworejo', 33, 21, 1),
(213, 'Kabupaten Rembang', 33, 22, 1),
(214, 'Kabupaten Semarang', 33, 23, 1),
(215, 'Kabupaten Sragen', 33, 24, 1),
(216, 'Kabupaten Sukoharjo', 33, 25, 1),
(217, 'Kabupaten Tegal', 33, 26, 1),
(218, 'Kabupaten Temanggung', 33, 27, 1),
(219, 'Kabupaten Wonogiri', 33, 28, 1),
(220, 'Kabupaten Wonosobo', 33, 29, 1),
(221, 'Kota Magelang', 33, 30, 2),
(222, 'Kota Pekalongan', 33, 31, 2),
(223, 'Kota Salatiga', 33, 32, 2),
(224, 'Kota Semarang', 33, 33, 2),
(225, 'Kota Surakarta', 33, 34, 2),
(226, 'Kota Tegal', 33, 35, 2),
(227, 'Kabupaten Bangkalan', 35, 1, 1),
(228, 'Kabupaten Banyuwangi', 35, 2, 1),
(229, 'Kabupaten Blitar', 35, 3, 1),
(230, 'Kabupaten Bojonegoro', 35, 4, 1),
(231, 'Kabupaten Bondowoso', 35, 5, 1),
(232, 'Kabupaten Gresik', 35, 6, 1),
(233, 'Kabupaten Jember', 35, 7, 1),
(234, 'Kabupaten Jombang', 35, 8, 1),
(235, 'Kabupaten Kediri', 35, 9, 1),
(236, 'Kabupaten Lamongan', 35, 10, 1),
(237, 'Kabupaten Lumajang', 35, 11, 1),
(238, 'Kabupaten Madiun', 35, 12, 1),
(239, 'Kabupaten Magetan', 35, 13, 1),
(240, 'Kabupaten Malang', 35, 14, 1),
(241, 'Kabupaten Mojokerto', 35, 15, 1),
(242, 'Kabupaten Nganjuk', 35, 16, 1),
(243, 'Kabupaten Ngawi', 35, 17, 1),
(244, 'Kabupaten Pacitan', 35, 18, 1),
(245, 'Kabupaten Pamekasan', 35, 19, 1),
(246, 'Kabupaten Pasuruan', 35, 20, 1),
(247, 'Kabupaten Ponorogo', 35, 21, 1),
(248, 'Kabupaten Probolinggo', 35, 22, 1),
(249, 'Kabupaten Sampang', 35, 23, 1),
(250, 'Kabupaten Sidoarjo', 35, 24, 1),
(251, 'Kabupaten Situbondo', 35, 25, 1),
(252, 'Kabupaten Sumenep', 35, 26, 1),
(253, 'Kabupaten Trenggalek', 35, 27, 1),
(254, 'Kabupaten Tuban', 35, 28, 1),
(255, 'Kabupaten Tulungagung', 35, 29, 1),
(256, 'Kota Batu', 35, 30, 2),
(257, 'Kota Blitar', 35, 31, 2),
(258, 'Kota Kediri', 35, 32, 2),
(259, 'Kota Madiun', 35, 33, 2),
(260, 'Kota Malang', 35, 34, 2),
(261, 'Kota Mojokerto', 35, 35, 2),
(262, 'Kota Pasuruan', 35, 36, 2),
(263, 'Kota Probolinggo', 35, 37, 2),
(264, 'Kota Surabaya', 35, 38, 2),
(265, 'Kabupaten Bantul', 34, 1, 1),
(266, 'Kabupaten Gunung Kidul', 34, 2, 1),
(267, 'Kabupaten Kulon Progo', 34, 3, 1),
(268, 'Kabupaten Sleman', 34, 4, 1),
(269, 'Kota Yogyakarta', 34, 5, 2),
(270, 'Kabupaten Badung', 51, 1, 1),
(271, 'Kabupaten Bangli', 51, 2, 1),
(272, 'Kabupaten Buleleng', 51, 3, 1),
(273, 'Kabupaten Gianyar', 51, 4, 1),
(274, 'Kabupaten Jembrana', 51, 5, 1),
(275, 'Kabupaten Karangasem', 51, 6, 1),
(276, 'Kabupaten Klungkung', 51, 7, 1),
(277, 'Kabupaten Tabanan', 51, 8, 1),
(278, 'Kota Denpasar', 51, 9, 2),
(279, 'Kabupaten Bima', 52, 1, 1),
(280, 'Kabupaten Dompu', 52, 2, 1),
(281, 'Kabupaten Lombok Barat', 52, 3, 1),
(282, 'Kabupaten Lombok Tengah', 52, 4, 1),
(283, 'Kabupaten Lombok Timur', 52, 5, 1),
(284, 'Kabupaten Lombok Utara', 52, 6, 1),
(285, 'Kabupaten Sumbawa', 52, 7, 1),
(286, 'Kabupaten Sumbawa Barat', 52, 8, 1),
(287, 'Kota Bima', 52, 9, 2),
(288, 'Kota Mataram', 52, 10, 2),
(289, 'Kabupaten Kupang', 53, 1, 1),
(290, 'Kabupaten Timor Tengah Selatan', 53, 2, 1),
(291, 'Kabupaten Timor Tengah Utara', 53, 3, 1),
(292, 'Kabupaten Belu', 53, 4, 1),
(293, 'Kabupaten Alor', 53, 5, 1),
(294, 'Kabupaten Flores Timur', 53, 6, 1),
(295, 'Kabupaten Sikka', 53, 7, 1),
(296, 'Kabupaten Ende', 53, 8, 1),
(297, 'Kabupaten Ngada', 53, 9, 1),
(298, 'Kabupaten Manggarai', 53, 10, 1),
(299, 'Kabupaten Sumba Timur', 53, 11, 1),
(300, 'Kabupaten Sumba Barat', 53, 12, 1),
(301, 'Kabupaten Lembata', 53, 13, 1),
(302, 'Kabupaten Rote Ndao', 53, 14, 1),
(303, 'Kabupaten Manggarai Barat', 53, 15, 1),
(304, 'Kabupaten Nagekeo', 53, 16, 1),
(305, 'Kabupaten Sumba Tengah', 53, 17, 1),
(306, 'Kabupaten Sumba Barat Daya', 53, 18, 1),
(307, 'Kabupaten Manggarai Timur', 53, 19, 1),
(308, 'Kabupaten Sabu Raijua', 53, 20, 1),
(309, 'Kota Kupang', 53, 21, 2),
(310, 'Kabupaten Bengkayang', 61, 1, 1),
(311, 'Kabupaten Kapuas Hulu', 61, 2, 1),
(312, 'Kabupaten Kayong Utara', 61, 3, 1),
(313, 'Kabupaten Ketapang', 61, 4, 1),
(314, 'Kabupaten Kubu Raya', 61, 5, 1),
(315, 'Kabupaten Landak', 61, 6, 1),
(316, 'Kabupaten Melawi', 61, 7, 1),
(317, 'Kabupaten Pontianak', 61, 8, 1),
(318, 'Kabupaten Sambas', 61, 9, 1),
(319, 'Kabupaten Sanggau', 61, 10, 1),
(320, 'Kabupaten Sekadau', 61, 11, 1),
(321, 'Kabupaten Sintang', 61, 12, 1),
(322, 'Kota Pontianak', 61, 13, 2),
(323, 'Kota Singkawang', 61, 14, 2),
(324, 'Kabupaten Balangan', 63, 1, 1),
(325, 'Kabupaten Banjar', 63, 2, 1),
(326, 'Kabupaten Barito Kuala', 63, 3, 1),
(327, 'Kabupaten Hulu Sungai Selatan', 63, 4, 1),
(328, 'Kabupaten Hulu Sungai Tengah', 63, 5, 1),
(329, 'Kabupaten Hulu Sungai Utara', 63, 6, 1),
(330, 'Kabupaten Kotabaru', 63, 7, 1),
(331, 'Kabupaten Tabalong', 63, 8, 1),
(332, 'Kabupaten Tanah Bumbu', 63, 9, 1),
(333, 'Kabupaten Tanah Laut', 63, 10, 1),
(334, 'Kabupaten Tapin', 63, 11, 1),
(335, 'Kota Banjarbaru', 63, 12, 2),
(336, 'Kota Banjarmasin', 63, 13, 2),
(337, 'Kabupaten Barito Selatan', 62, 1, 1),
(338, 'Kabupaten Barito Timur', 62, 2, 1),
(339, 'Kabupaten Barito Utara', 62, 3, 1),
(340, 'Kabupaten Gunung Mas', 62, 4, 1),
(341, 'Kabupaten Kapuas', 62, 5, 1),
(342, 'Kabupaten Katingan', 62, 6, 1),
(343, 'Kabupaten Kotawaringin Barat', 62, 7, 1),
(344, 'Kabupaten Kotawaringin Timur', 62, 8, 1),
(345, 'Kabupaten Lamandau', 62, 9, 1),
(346, 'Kabupaten Murung Raya', 62, 10, 1),
(347, 'Kabupaten Pulang Pisau', 62, 11, 1),
(348, 'Kabupaten Sukamara', 62, 12, 1),
(349, 'Kabupaten Seruyan', 62, 13, 1),
(350, 'Kota Palangka Raya', 62, 14, 2),
(351, 'Kabupaten Berau', 64, 1, 1),
(352, 'Kabupaten Bulungan', 64, 2, 1),
(353, 'Kabupaten Kutai Barat', 64, 3, 1),
(354, 'Kabupaten Kutai Kartanegara', 64, 4, 1),
(355, 'Kabupaten Kutai Timur', 64, 5, 1),
(356, 'Kabupaten Malinau', 64, 6, 1),
(357, 'Kabupaten Nunukan', 64, 7, 1),
(358, 'Kabupaten Paser', 64, 8, 1),
(359, 'Kabupaten Penajam Paser Utara', 64, 9, 1),
(360, 'Kabupaten Tana Tidung', 64, 10, 1),
(361, 'Kota Balikpapan', 64, 11, 2),
(362, 'Kota Bontang', 64, 12, 2),
(363, 'Kota Samarinda', 64, 13, 2),
(364, 'Kota Tarakan', 64, 14, 2),
(365, 'Kabupaten Boalemo', 75, 1, 1),
(366, 'Kabupaten Bone Bolango', 75, 2, 1),
(367, 'Kabupaten Gorontalo', 75, 3, 1),
(368, 'Kabupaten Gorontalo Utara', 75, 4, 1),
(369, 'Kabupaten Pohuwato', 75, 5, 1),
(370, 'Kota Gorontalo', 75, 6, 2),
(371, 'Kabupaten Bantaeng', 73, 1, 1),
(372, 'Kabupaten Barru', 73, 2, 1),
(373, 'Kabupaten Bone', 73, 3, 1),
(374, 'Kabupaten Bulukumba', 73, 4, 1),
(375, 'Kabupaten Enrekang', 73, 5, 1),
(376, 'Kabupaten Gowa', 73, 6, 1),
(377, 'Kabupaten Jeneponto', 73, 7, 1),
(378, 'Kabupaten Kepulauan Selayar', 73, 8, 1),
(379, 'Kabupaten Luwu', 73, 9, 1),
(380, 'Kabupaten Luwu Timur', 73, 10, 1),
(381, 'Kabupaten Luwu Utara', 73, 11, 1),
(382, 'Kabupaten Maros', 73, 12, 1),
(383, 'Kabupaten Pangkajene dan Kepulauan', 73, 13, 1),
(384, 'Kabupaten Pinrang', 73, 14, 1),
(385, 'Kabupaten Sidenreng Rappang', 73, 15, 1),
(386, 'Kabupaten Sinjai', 73, 16, 1),
(387, 'Kabupaten Soppeng', 73, 17, 1),
(388, 'Kabupaten Takalar', 73, 18, 1),
(389, 'Kabupaten Tana Toraja', 73, 19, 1),
(390, 'Kabupaten Toraja Utara', 73, 20, 1),
(391, 'Kabupaten Wajo', 73, 21, 1),
(392, 'Kota Makassar', 73, 22, 2),
(393, 'Kota Palopo', 73, 23, 2),
(394, 'Kota Parepare', 73, 24, 2),
(395, 'Kabupaten Bombana', 74, 1, 1),
(396, 'Kabupaten Buton', 74, 2, 1),
(397, 'Kabupaten Buton Utara', 74, 3, 1),
(398, 'Kabupaten Kolaka', 74, 4, 1),
(399, 'Kabupaten Kolaka Utara', 74, 5, 1),
(400, 'Kabupaten Konawe', 74, 6, 1),
(401, 'Kabupaten Konawe Selatan', 74, 7, 1),
(402, 'Kabupaten Konawe Utara', 74, 8, 1),
(403, 'Kabupaten Muna', 74, 9, 1),
(404, 'Kabupaten Wakatobi', 74, 10, 1),
(405, 'Kota Bau-Bau', 74, 11, 2),
(406, 'Kota Kendari', 74, 12, 2),
(407, 'Kabupaten Banggai', 72, 1, 1),
(408, 'Kabupaten Banggai Kepulauan', 72, 2, 1),
(409, 'Kabupaten Buol', 72, 3, 1),
(410, 'Kabupaten Donggala', 72, 4, 1),
(411, 'Kabupaten Morowali', 72, 5, 1),
(412, 'Kabupaten Parigi Moutong', 72, 6, 1),
(413, 'Kabupaten Poso', 72, 7, 1),
(414, 'Kabupaten Tojo Una-Una', 72, 8, 1),
(415, 'Kabupaten Toli-Toli', 72, 9, 1),
(416, 'Kabupaten Sigi', 72, 10, 1),
(417, 'Kota Palu', 72, 11, 2),
(418, 'Kabupaten Bolaang Mongondow', 71, 1, 1),
(419, 'Kabupaten Bolaang Mongondow Selatan', 71, 2, 1),
(420, 'Kabupaten Bolaang Mongondow Timur', 71, 3, 1),
(421, 'Kabupaten Bolaang Mongondow Utara', 71, 4, 1),
(422, 'Kabupaten Kepulauan Sangihe', 71, 5, 1),
(423, 'Kabupaten Kepulauan Siau Tagulandang Biaro', 71, 6, 1),
(424, 'Kabupaten Kepulauan Talaud', 71, 7, 1),
(425, 'Kabupaten Minahasa', 71, 8, 1),
(426, 'Kabupaten Minahasa Selatan', 71, 9, 1),
(427, 'Kabupaten Minahasa Tenggara', 71, 10, 1),
(428, 'Kabupaten Minahasa Utara', 71, 11, 1),
(429, 'Kota Bitung', 71, 12, 2),
(430, 'Kota Kotamobagu', 71, 13, 2),
(431, 'Kota Manado', 71, 14, 2),
(432, 'Kota Tomohon', 71, 15, 2),
(433, 'Kabupaten Majene', 76, 1, 1),
(434, 'Kabupaten Mamasa', 76, 2, 1),
(435, 'Kabupaten Mamuju', 76, 3, 1),
(436, 'Kabupaten Mamuju Utara', 76, 4, 1),
(437, 'Kabupaten Polewali Mandar', 76, 5, 1),
(438, 'Kabupaten Buru', 81, 1, 1),
(439, 'Kabupaten Buru Selatan', 81, 2, 1),
(440, 'Kabupaten Kepulauan Aru', 81, 3, 1),
(441, 'Kabupaten Maluku Barat Daya', 81, 4, 1),
(442, 'Kabupaten Maluku Tengah', 81, 5, 1),
(443, 'Kabupaten Maluku Tenggara', 81, 6, 1),
(444, 'Kabupaten Maluku Tenggara Barat', 81, 7, 1),
(445, 'Kabupaten Seram Bagian Barat', 81, 8, 1),
(446, 'Kabupaten Seram Bagian Timur', 81, 9, 1),
(447, 'Kota Ambon', 81, 10, 2),
(448, 'Kota Tual', 81, 11, 2),
(449, 'Kabupaten Halmahera Barat', 82, 1, 1),
(450, 'Kabupaten Halmahera Tengah', 82, 2, 1),
(451, 'Kabupaten Halmahera Utara', 82, 3, 1),
(452, 'Kabupaten Halmahera Selatan', 82, 4, 1),
(453, 'Kabupaten Kepulauan Sula', 82, 5, 1),
(454, 'Kabupaten Halmahera Timur', 82, 6, 1),
(455, 'Kabupaten Pulau Morotai', 82, 7, 1),
(456, 'Kota Ternate', 82, 8, 2),
(457, 'Kota Tidore Kepulauan', 82, 9, 2),
(458, 'Kabupaten Asmat', 92, 1, 1),
(459, 'Kabupaten Biak Numfor', 92, 2, 1),
(460, 'Kabupaten Boven Digoel', 92, 3, 1),
(461, 'Kabupaten Deiyai', 92, 4, 1),
(462, 'Kabupaten Dogiyai', 92, 5, 1),
(463, 'Kabupaten Intan Jaya', 92, 6, 1),
(464, 'Kabupaten Jayapura', 92, 7, 1),
(465, 'Kabupaten Jayawijaya', 92, 8, 1),
(466, 'Kabupaten Keerom', 92, 9, 1),
(467, 'Kabupaten Kepulauan Yapen', 92, 10, 1),
(468, 'Kabupaten Lanny Jaya', 92, 11, 1),
(469, 'Kabupaten Mamberamo Raya', 92, 12, 1),
(470, 'Kabupaten Mamberamo Tengah', 92, 13, 1),
(471, 'Kabupaten Mappi', 92, 14, 1),
(472, 'Kabupaten Merauke', 92, 15, 1),
(473, 'Kabupaten Mimika', 92, 16, 1),
(474, 'Kabupaten Nabire', 92, 17, 1),
(475, 'Kabupaten Nduga', 92, 18, 1),
(476, 'Kabupaten Paniai', 92, 19, 1),
(477, 'Kabupaten Pegunungan Bintang', 92, 20, 1),
(478, 'Kabupaten Puncak', 92, 21, 1),
(479, 'Kabupaten Puncak Jaya', 92, 22, 1),
(480, 'Kabupaten Sarmi', 92, 23, 1),
(481, 'Kabupaten Supiori', 92, 24, 1),
(482, 'Kabupaten Tolikara', 92, 25, 1),
(483, 'Kabupaten Waropen', 92, 26, 1),
(484, 'Kabupaten Yahukimo', 92, 27, 1),
(485, 'Kabupaten Yalimo', 92, 28, 1),
(486, 'Kota Jayapura', 92, 29, 2),
(487, 'Kabupaten Fakfak', 91, 1, 1),
(488, 'Kabupaten Kaimana', 91, 2, 1),
(489, 'Kabupaten Manokwari', 91, 3, 1),
(490, 'Kabupaten Maybrat', 91, 4, 1),
(491, 'Kabupaten Raja Ampat', 91, 5, 1),
(492, 'Kabupaten Sorong', 91, 6, 1),
(493, 'Kabupaten Sorong Selatan', 91, 7, 1),
(494, 'Kabupaten Tambrauw', 91, 8, 1),
(495, 'Kabupaten Teluk Bintuni', 91, 9, 1),
(496, 'Kabupaten Teluk Wondama', 91, 10, 1),
(497, 'Kota Sorong', 91, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kpsmesin`
--

CREATE TABLE `kpsmesin` (
  `id_kpsmesin` int(11) NOT NULL,
  `kpsmesin` varchar(20) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpsmesin`
--

INSERT INTO `kpsmesin` (`id_kpsmesin`, `kpsmesin`, `keterangan`) VALUES
(2, '1500 cc turbo', '\r\n'),
(3, '2000 cc', ''),
(4, '2400 cc', '');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hpwa` varchar(20) NOT NULL,
  `kemeja` varchar(4) NOT NULL,
  `prodomisilih` int(11) NOT NULL,
  `kabdomisilih` int(11) NOT NULL,
  `tgllahir` varchar(20) NOT NULL,
  `proalamat` int(11) NOT NULL,
  `kabalamat` int(11) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `idjabatan` int(11) NOT NULL,
  `idchapter` int(11) NOT NULL,
  `idnonchapter` int(11) NOT NULL,
  `idtahununit` int(11) NOT NULL,
  `idkapasitasunit` int(11) NOT NULL,
  `idwarnaunit` int(11) NOT NULL,
  `nopolisi` varchar(12) NOT NULL,
  `norangka` varchar(50) NOT NULL,
  `nomesin` varchar(50) NOT NULL,
  `ktpsim` varchar(100) NOT NULL,
  `stnk` varchar(100) NOT NULL,
  `buktitransfer` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `ppok` tinyint(1) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `idaktif` int(11) NOT NULL,
  `ketaktif` varchar(100) NOT NULL,
  `aktifdate` varchar(20) NOT NULL,
  `insertdate` varchar(20) NOT NULL,
  `editdate` varchar(20) NOT NULL,
  `idedit` int(11) NOT NULL,
  `nopung` varchar(10) NOT NULL,
  `statusnopung` varchar(1) NOT NULL DEFAULT '0',
  `statusregis` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `email`, `hpwa`, `kemeja`, `prodomisilih`, `kabdomisilih`, `tgllahir`, `proalamat`, `kabalamat`, `alamat`, `kodepos`, `idjabatan`, `idchapter`, `idnonchapter`, `idtahununit`, `idkapasitasunit`, `idwarnaunit`, `nopolisi`, `norangka`, `nomesin`, `ktpsim`, `stnk`, `buktitransfer`, `photo`, `ppok`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idedit`, `nopung`, `statusnopung`, `statusregis`) VALUES
(12, 'machudh', 'sadsadsad', '', 's', 11, 0, '0', 0, 0, '', '', 0, 3, 0, 1, 2, 1, '', '', '', 'ktp_12.', 'stnk_12.', 'transfer_12.', 'photo_12.', 0, 0, 0, '', '', '1581568812', '', 0, '', '0', '0'),
(13, 'Moh Machfudh', 'machfudh@gmail.com', '0812811198222', 's', 12, 45, '31510800', 0, 0, 'dfgdgdf dfg ', '12341', 3, 12, 0, 6, 2, 1, 'B000932', '12414121212', '123131231', 'ktp_13.png', 'stnk_13.jpg', 'transfer_13.png', 'photo_13.jpg', 1, 1, 1, 'Registrasi Ulang', '1584431635', '1581581088', '', 0, '0000', '0', '0'),
(970, 'Retno Ayu Larasati', 'r.ayularasati@yahoo.com', '0817701910', '', 0, 0, '403808400', 0, 0, 'Jl. Palapa V/2 kedoya komp.DEPAG Kebon Jeruk - Jak Bar', '', 4, 12, 0, 11, 3, 3, 'B1910QK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0001', '0', '1'),
(971, 'M. Teguh Pribadi', 'rasawarnapelangi@gmail.com', '08111496257', '', 0, 0, '49222800', 0, 0, 'Cirende', '', 4, 15, 0, 11, 4, 3, 'B8977CH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0002', '0', '1'),
(972, 'Ana Silvana', 'susantiaru@yahoo.co.id', '08111747440811100776', '', 0, 0, '213123600', 0, 0, 'Jl. Cisadane 2 No. 2 Taman Cibodas Lippo Cikarang', '', 4, 14, 0, 11, 4, 1, 'B1014FJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0003', '0', '1'),
(973, 'Maulistian Nur Wibowo', 'chuwaw@yahoo.com', '081585743580', '', 0, 0, '413485200', 0, 0, 'Pejaten', '', 4, 15, 0, 11, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0004', '0', '1'),
(974, 'I Gusti Putu Brahmaputra', 'dubeswpg@yahoo.com', '0818722255', '', 0, 0, '422557200', 0, 0, 'Jl. Maleo V, Blok JB7/12A, Bintaro Sek.9 Tanggerang 15229', '', 4, 12, 0, 11, 4, 3, 'B45WY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0005', '0', '1'),
(975, 'Very Radian Wicaksono', 'v_radian@yahoo.co.id', '0816561746', '', 0, 0, '388083600', 0, 0, 'Jl. Joglo Raya Taman Alfa Indah Blok B8/2 Jak-Bar', '', 4, 12, 0, 11, 3, 3, 'B8529H', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0006', '0', '1'),
(976, 'Totok Sediyantoro', 'totok@hotmail.com', '08551086869021720879', '', 0, 0, '-75366000', 0, 0, 'Jl. Saraswati K-6 Cipete Utara Jak-Sel', '', 4, 15, 0, 11, 4, 3, 'B1710LV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837419', '', 0, '0007', '0', '1'),
(977, 'Yurike Kustanti', 'tanti_cmi@yahoo.co.id', '08177525300218657065', '', 0, 0, '354128400', 0, 0, 'Jl. Bouhiria Estate Jatibening', '', 4, 14, 0, 11, 4, 1, 'B233IG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0008', '0', '1'),
(978, 'Budi Dwisakti', 'budi.dwisakti@gmail.com', '0811913817', '', 0, 0, '-39510000', 0, 0, 'Jl. Jatayu No.8 Hankam Cimanggis Depok', '', 4, 15, 0, 15, 3, 3, 'B743BS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0009', '0', '1'),
(979, 'Recardo Leatemia', 'recardo.leatemia@yahoo.com', '08161990815021837861', '', 0, 0, '14144400', 0, 0, 'Taman Rasuna 1127A, Jak-Sel', '', 4, 15, 0, 11, 4, 0, 'B1316SJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0010', '0', '1'),
(980, 'Octanvianus', 'octa@dinamika.com', '08117638770217463328', '', 0, 0, '-101804400', 0, 0, 'Villa Pamulang Mas Blok 03/7, Pamulang, Tanggerang Selatan', '', 4, 12, 0, 11, 3, 0, 'B8756IN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0011', '0', '1'),
(981, 'Sonny Ryanto', 'sryanto.ohiostate@gmail.com', '08151117103002156718', '', 0, 0, '225910800', 0, 0, 'JL. Tanjung Duren Barat 2  No. 25 Jak - Bar', '', 4, 12, 0, 11, 3, 0, 'B8542QE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0012', '0', '1'),
(982, 'Herroejanto Setijoso', 'herroe_st@yahoo.com', '08128886775102159809', '', 0, 0, '-598433400', 0, 0, 'Jl. Pangi 17 Sukabakti Curug Tanggerang', '', 4, 12, 0, 11, 4, 0, 'B8090BC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0013', '0', '1'),
(983, 'Totot Prihartono', 'tototprihartono@yahoo.com', '08128534231021882883', '', 0, 0, '-146559600', 0, 0, 'Graha Taman Kebayoran, Jl. Prapanca III/18 Setia mekar Bekasi Timur', '', 4, 14, 0, 11, 4, 0, 'B115TT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0014', '0', '1'),
(984, 'Toddy C Siburian', 'siburiantoddy@yahoo.co.id', '08196007006', '', 0, 0, '274467600', 0, 0, 'Perumahan Rencong Mas No.23 Medan', '', 4, 4, 0, 11, 3, 3, 'D456GR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0015', '0', '1'),
(985, 'Reindert Mawuntu', 'ranmawan@hotmail.com', '0811973135', '', 0, 0, '26154000', 0, 0, 'Villa Cinere Mas. Jl Jupiter II/21 Pisangan Ciputat Tanggerang', '', 4, 12, 0, 11, 4, 0, 'B152RU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0016', '0', '1'),
(986, 'Eko Budhi Ariyanto', 'eccho300@yahoo.com', '0811483106', '', 0, 0, '-143535600', 0, 0, 'Jl. Angsa Selatan No. 158 Furia kotaraja, Jayapura', '', 4, 2, 0, 11, 3, 0, 'B8567EH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0017', '0', '1'),
(987, 'Made Sumarjaya', 'made.sumarjaya@gmail.com', '0811971789', '', 0, 0, '-127292400', 0, 0, 'Pondok Pekayon Indah Blok CC-1 Bekasi', '', 4, 14, 0, 11, 4, 0, 'B1755IW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0018', '0', '1'),
(988, 'Rizami Ichwan Lubis', 'ichwan@badaking.co.id', '0811801631', '', 0, 0, '-247044600', 0, 0, 'PC 3-130 Komp. PT Badak, Bontang Kal-Tim', '', 4, 24, 0, 11, 4, 0, 'D787BY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0019', '0', '1'),
(989, 'Mohammad Tagar Nusapitu ', 'tagart_n@yahoo.com', '08158049237', '', 0, 0, '62096400', 0, 0, 'Jl. Duku 1 No. 6 Bogor Jawa Barat', '', 4, 15, 0, 11, 4, 0, 'F1023BZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0020', '0', '1'),
(990, 'S. Erik Pratama', 's.erikpratama@yahoo.com', '08161976706', '', 0, 0, '213296400', 0, 0, 'Bogor dan Bintaro', '', 4, 15, 0, 11, 4, 0, 'F1048BW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0021', '0', '1'),
(991, 'Dora Apriani', 'apriani.dora@yahoo.com', '081513113238', '', 0, 0, '260730000', 0, 0, 'Dusun Kalen asem rt 10/04, Kerawang', '', 4, 13, 0, 11, 4, 3, 'B1137FJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0022', '0', '1'),
(992, 'Aryo Bimo Gunaprawiro', 'aryoflash@yahoo.com', '0811156095', '', 0, 0, '53197200', 0, 0, 'Jl. Ranjau No.9 Kodam Sumur batu Jakarta 10640', '', 4, 13, 0, 11, 3, 0, 'B121BS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0023', '0', '1'),
(993, 'Agam Nindya Rahdi', 'agam.nr@gmail.com', '081575119966', '', 0, 0, '126118800', 0, 0, 'Vila Dago Tol E1/5 Sarua, Ciputat', '', 4, 12, 0, 11, 3, 0, 'B2995MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0024', '0', '1'),
(994, 'VT. Denny', 'denziga@gmail.com', '085694568001', '', 0, 0, '55270800', 0, 0, 'Chalcedony Barat 1 No. 8, Chalcedony Residence, Pondok Hijau Golf', '', 4, 15, 0, 11, 4, 1, 'B1551BJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0025', '0', '1'),
(995, 'Nata Tanuwidjaja', 'nata_tanuwidjaja@yahoo.com', '0816921898', '', 0, 0, '53888400', 0, 0, 'Taman Aries E10 No.28 Jakarta - Barat 11620', '', 4, 12, 0, 11, 4, 0, 'B1291LV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0026', '0', '1'),
(996, 'Suherli', 'herli_su@yahoo.com', '0811902270', '', 0, 0, '54147600', 0, 0, 'Raffles Hills Blok J6/10 Cibubur-Depok', '', 4, 13, 0, 11, 4, 0, 'B8055US', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0027', '0', '1'),
(997, 'Adi Krisnawan', 'adikrisnawan@yahoo.com', '0817260972', '', 0, 0, '440355600', 0, 0, 'Jl. Diponegoro 77 Yogyakarta', '', 4, 20, 0, 11, 3, 3, 'H8000JA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0028', '0', '1'),
(998, 'Dwi Arso Utomo(Tommy)', 'sweden_fi@yahoo.com', '085588777707', '', 0, 0, '389811600', 0, 0, 'Wisma Pondok Aren Jl. Kasuari A NO. 16 Jakarta 15224', '', 4, 12, 0, 11, 4, 3, 'B808C', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0029', '0', '1'),
(999, 'Andi ', 'sinar_ab@yahoo.com', '08128135198', '', 0, 0, '254163600', 0, 0, 'Kelapa kopyor barat 6 CJ 1 No. 11 Kelapa Gading', '', 4, 13, 0, 11, 4, 0, 'B1059IM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0030', '0', '1'),
(1000, 'Mirza Dalando', 'mirza_daindo@yahoo.com', '0811787090', '', 0, 0, '339267600', 0, 0, 'Jl. Tanjung Barangan Lr Tj Barangan I No. 10A, Soekarno Hatta Palembang', '', 4, 10, 0, 11, 4, 3, 'BG205A', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0031', '0', '1'),
(1001, 'M. Cahyono Widyastono', 'widyastono@yahoo.com', '0811876823', '', 0, 0, '125427600', 0, 0, 'Jl. Gedung Hijau IX/2 Pondok Indah Jakarta Selatan', '', 4, 15, 0, 11, 4, 0, 'B2511WF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0032', '0', '1'),
(1002, 'Johan Delano Taufik, Ph.D', 'johandelano_phd@yahoo.com', '08151839082', '', 0, 0, '-194081400', 0, 0, 'Perumahan Bangun Reksa Indah Blok K No.11 Cileduk, Tanggerang', '', 4, 12, 0, 11, 3, 0, 'B2249JI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0033', '0', '1'),
(1003, 'Milanto Simanjuntak', 'mapak225@yahoo.com', '02192342341', '', 0, 0, '169923600', 0, 0, 'Jl. Pengadilan C/14 Kav. Pengadilan', '', 4, 13, 0, 11, 3, 0, 'B2134BD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0034', '0', '1'),
(1004, 'Sutrisno Nyotosardjono', 'sutrisno_ns@yahoo.com', '0811324464', '', 0, 0, '-84956400', 0, 0, 'Jl. Pacuan Kuda 20 Surabaya', '', 4, 23, 0, 11, 3, 3, 'L1123HK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0035', '0', '1'),
(1005, 'Syafnedi', 'kapetong@yahoo.com', '08551006000', '', 0, 0, '-217755000', 0, 0, 'Tebet barat 8 No. 47A Jakarta', '', 4, 15, 0, 11, 4, 0, 'B1399MZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0036', '0', '1'),
(1006, 'Zainul Hamzah', 'inoenk2005@yahoo.com', '08551003735', '', 0, 0, '41878800', 0, 0, 'Jl. Kasuari 9 Blok HB-11 No.9 Bintaro Jaya Sek. 9', '', 4, 12, 0, 11, 4, 3, 'B2579BH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0037', '0', '1'),
(1007, 'Ollie Natayandi', 'ollie_nata@yahoo.com', '081384899808', '', 0, 0, '156877200', 0, 0, 'Puri Nirwana III AG 19 Karadena, Bogor', '', 4, 15, 0, 11, 3, 3, 'B8903SS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0038', '0', '1'),
(1008, 'Wiam Satriawan', 'wiamsatriawan@yahoo.com', '08158010324', '', 0, 0, '-44175600', 0, 0, 'Jl. Murni 8F Joglo Kembangan Jak-Bar 11640', '', 4, 12, 0, 11, 3, 0, 'B1309BLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0039', '0', '1'),
(1009, 'Diko Pramayudha', 'dco_venom@yahoo.com', '081933150840', '', 0, 0, '568486800', 0, 0, 'Perumahan Griya Kuantan Blok M No. 9 Jombor Sleman', '', 4, 20, 0, 11, 4, 0, 'DR234SG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0040', '0', '1'),
(1010, 'Benny FM', 'benny.markus@gmail.com', '0816898455', '', 0, 0, '-27068400', 0, 0, 'Jl. Sutera Jelita I/72 Alam Sutra Serpong', '', 4, 12, 0, 11, 4, 3, 'B183FM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0041', '0', '1'),
(1011, 'Ari Wibowo', 'ariperbanas@yahoo.com', '08121388810', '', 0, 0, '464374800', 0, 0, 'Perum Rorotan Mas No.18 Rt.02/07 Jakarta Utara', '', 4, 13, 0, 11, 3, 0, 'B8598PJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0042', '0', '1'),
(1012, 'Nyoman Sudika', 'n_sudika@yahoo.com', '0811850789', '', 0, 0, '-238145400', 0, 0, 'Jl. Raya pulo Gebang RT15/04,90 Jakarta Timur', '', 4, 13, 0, 11, 3, 3, 'B8742KL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0043', '0', '1'),
(1013, 'Teddy Kurniawan', 'myownblue138@yahoo.com', '08158184224', '', 0, 0, '403981200', 0, 0, 'Jl. Raya Timur No 11 Adiwerna, Tegal Jawa Tengah', '', 4, 18, 0, 11, 3, 3, 'H8283NA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837420', '', 0, '0044', '0', '1'),
(1014, 'Christian Silman', 'silman.christian@yahoo.com', '08161306209', '', 0, 0, '124995600', 0, 0, 'Jl. Cempaka Putih Tengah 33/12 Jakarta', '', 4, 13, 0, 11, 4, 0, 'B1323PJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0045', '0', '1'),
(1015, 'Zainal Arifin', 'zai_rb@yahoo.co.id', '08179987888', '', 0, 0, '175021200', 0, 0, 'Jl. Squadron Halim RT 005/03 No. 38 Jakarta Timur', '', 4, 13, 0, 11, 4, 0, 'B1668XT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0046', '0', '1'),
(1016, 'Danar Amrizal', 'danar_rara@yahoo.com', '081808322485', '', 0, 0, '471373200', 0, 0, 'Jl. Narada III No. 10-11', '', 4, 13, 0, 11, 4, 3, 'B711RD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0047', '0', '1'),
(1017, 'Anton Widiatmoko', 'antonwidiatmoko@gmail.com', '0811268353', '', 0, 0, '-178786800', 0, 0, 'Perum Grand Century C-3, Sidoarum. Jl. Godean KM 6. yogyakarta 55564', '', 4, 20, 0, 11, 4, 0, 'AB1100GF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0048', '0', '1'),
(1018, 'Tommy', 'tomy_chandra85@yahoo.com', '08159009220', '', 0, 0, '493232400', 0, 0, 'Teluk Gong Jl. O No. 40 Rt 002/008 Jakarta-Utara', '', 4, 13, 0, 11, 3, 3, 'B1987FJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0049', '0', '1'),
(1019, 'Suranta Ginting', 'suranta_ginting@hotmail.com', '081511399629', '', 0, 0, '-260609400', 0, 0, 'Jl.. Lumbu Permai 9 Blok 1/26 Bumi Bekasi Baru', '', 4, 14, 0, 11, 4, 3, 'B1902XY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0050', '0', '1'),
(1020, 'Ade Makmursyah', 'hofner66@yahoo.com', '085888910844', '', 0, 0, '205174800', 0, 0, 'Jl. Sungai Lamandau 168 Taman Venesia - Sentul City', '', 4, 15, 0, 11, 4, 1, 'B1107UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0051', '0', '1'),
(1021, 'Hega Noviantana', 'hega.noviantana@gmail.com', '08388880555', '', 0, 0, '122490000', 0, 0, 'Legenda Wisata Cibubur', '', 4, 13, 0, 11, 4, 3, 'B1611BJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0052', '0', '1'),
(1022, 'Roy Kurniawan', 'ignatius_6767@yahoo.com', '0818426767', '', 0, 0, '230922000', 0, 0, 'Jl. Parakan Mas IV No. 17 Bandung', '', 4, 16, 0, 11, 3, 3, 'D1832FQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0053', '0', '1'),
(1023, 'Ima Imarani', 'mima_luthu@yahoo.com', '087877662268', '', 0, 0, '496083600', 0, 0, 'Apartemen Mediterania', '', 4, 15, 0, 11, 4, 0, 'B21MAA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0054', '0', '1'),
(1024, 'Devi Sumarhadi', 'devi.sumarhadi@yahoo.com', '081225131999', '', 0, 0, '132598800', 0, 0, 'Jl. Cinde Raya Dalam No.14 Semarang', '', 4, 23, 0, 11, 4, 0, 'H7016QG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0055', '0', '1'),
(1025, 'Aulia Firmansyah Hadis', 'aulz@yahoo.com', '0818854797', '', 0, 0, '267987600', 0, 0, 'Jl. Siaga 2 No.23 Rt 002//05 Pejaten Pasar-minggu', '', 4, 15, 0, 11, 4, 0, 'B1883NW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0056', '0', '1'),
(1026, 'Eka Antasari Nugraha', 'ekaantasari@yahoo.com', '081387429573', '', 0, 0, '-25167600', 0, 0, 'Komp. Candrabaga Blok AP 2 No.15 Bekasi', '', 4, 14, 0, 11, 4, 0, 'B1705BJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0057', '0', '1'),
(1027, 'Deddy Syahriza', 'dedisyahrizal@yahoo.com', '081310335885', '', 0, 0, '-8406000', 0, 0, 'Villa Bintaro Regency Blok G4 No. 26', '', 4, 12, 0, 11, 4, 0, 'B1129WJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0058', '0', '1'),
(1028, 'Erick Budi Santoso', 'el_khadafi@ymail.com', '0811799916', '', 0, 0, '44211600', 0, 0, 'Perumahan Tanjung Mas Cluster D6 No.17 Lenteng Agung ', '', 4, 15, 0, 11, 4, 0, 'BK9JQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0059', '0', '1'),
(1029, 'Angky', 'yohanesangky@honda-imora.com', '081395099922', '', 0, 0, '351968400', 0, 0, 'Batununggal Elok III / 12', '', 4, 15, 0, 11, 3, 0, 'D1876FO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0060', '0', '1'),
(1030, 'Hardianto', 'adhiepru@yahoo.co.id', '08121887526502199331', '', 0, 0, '176144400', 0, 0, 'Jl. Betung Raya No.16 RT.011/05 Pondok Bambu Duren Sawit', '', 4, 13, 0, 11, 4, 3, 'B1620TJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0061', '0', '1'),
(1031, 'Indra Eko Saputro', 'cajiva_17@yahoo.com', '081584129272', '', 0, 0, '308941200', 0, 0, 'Jl. Tutul I/306 Pondok Bambu, Jakarta Timur', '', 4, 13, 0, 11, 4, 0, 'B6CO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0062', '0', '1'),
(1032, 'Gilbert Gunawan', 'gilbert.gunawan@yahoo.com', '0811958555', '', 0, 0, '223578000', 0, 0, 'Pulo Nangka Tengah No.33 Jakarta Timur', '', 4, 13, 0, 11, 4, 3, 'B777ID', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0063', '0', '1'),
(1033, 'Eka Chandrawatie', 'vfro_angel9@yahoo.com', '087881445410', '', 0, 0, '259088400', 0, 0, 'Mega Persada Residence Blok C No, 6', '', 4, 13, 0, 11, 4, 3, 'B1604UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0064', '0', '1'),
(1034, 'Fandrizal', 'fand2404@yahoo.co.id', '08161898484', '', 0, 0, '-21798000', 0, 0, 'Pesona Khayangan Blok AA No. 10 Depok', '', 4, 15, 0, 11, 4, 3, 'B1282EJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0065', '0', '1'),
(1035, 'Ecko Adi Dharma', 'my_echo78@yahoo.com', '0816701178', '', 0, 0, '281379600', 0, 0, 'Jl. Tebet Dalam III/49 Tebet Barat', '', 4, 15, 0, 11, 3, 0, 'B210CD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0066', '0', '1'),
(1036, 'Yosef Setiawan', 'yosef_setiawan@yahoo.com', '081808056913', '', 0, 0, '346266000', 0, 0, 'Jl. Dahlia 3 No. 4 Perum Tigaraksa, Tangerang', '', 4, 12, 0, 11, 3, 0, 'B1139CLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0067', '0', '1'),
(1037, 'Sudarmanto Gularso', 'anto_ops_Yes@yahoo.com', '081388435355', '', 0, 0, '-4431600', 0, 0, 'Perum Pondok Mitra Lestari Blok A3 No. 5 Jakasetia-Jatiasih', '', 4, 14, 0, 11, 4, 3, 'B1652UJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0068', '0', '1'),
(1038, 'Yo Eric Hadyanto', 'erik.plasagroup@gmail.com', '08159993649', '', 0, 0, '385923600', 0, 0, 'Perum Taman Aries Blok B2 No.46 Jakarta - Barat', '', 4, 12, 0, 11, 4, 0, 'B288IZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0069', '0', '1'),
(1039, 'Handy Setiawan', 'magnecor@bdg.centrin.net.id', '08122031689', '', 0, 0, '180896400', 0, 0, 'Jl. Pungkur 169, Bandung', '', 4, 16, 0, 11, 3, 3, 'D168GK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0070', '0', '1'),
(1040, 'Muhammad Akbar Riu', 'abhariu@yahoo.com', '08161689787', '', 0, 0, '152643600', 0, 0, 'Apartemen Rasuna Tower 8 Lantai 25G', '', 4, 15, 0, 11, 4, 0, 'B2132AS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0071', '0', '1'),
(1041, 'Mohammad Ircham', 'ircham77@yahoo.co.id', '081382644400', '', 0, 0, '250448400', 0, 0, 'Jl. Seroja L-8 Palembang', '', 4, 11, 0, 11, 3, 0, 'BE1314AG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0072', '0', '1'),
(1042, 'Dede Surya Fandy', 'platinum_soundperformance@yahoo.com', '0817778334', '', 0, 0, '565635600', 0, 0, 'Jl. Cideng Barat No. 9B', '', 4, 12, 0, 11, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0073', '0', '1'),
(1043, 'Anton B Priyantoro', 'ab_priyantoro@yahoo.com', '08179167764', '', 0, 0, '159642000', 0, 0, 'Taman Permata 2 Blok A4/22 Bintaro Sek. 9', '', 4, 12, 0, 11, 4, 0, 'B1651GF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0074', '0', '1'),
(1044, 'Vicko Hadian', 'vicko.hadian@gmail.com', '0818700306', '', 0, 0, '111776400', 0, 0, 'Tebet timur dalam IV J No. 11 Jakarta - Selatan', '', 4, 15, 0, 11, 3, 0, 'B8133NB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0075', '0', '1'),
(1045, 'Dehotman Purba', 'dhotman@msn.com', '0811144041', '', 0, 0, '-117183600', 0, 0, 'Perumahan Mutiara Depok, Blok GA-1 Sukmajaya Depok', '', 4, 15, 0, 11, 4, 0, 'B466DE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0076', '0', '1'),
(1046, 'F. Adi Nugroho', 'fadnug@yahoo.com', '0818127522', '', 0, 0, '186771600', 0, 0, 'Jl. Bambu Betung VIII No. 2 Jakarta Barat', '', 4, 12, 0, 11, 3, 0, 'B2518YI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0077', '0', '1'),
(1047, 'Adi Nawer Siagian', 'an.siagian@gmail.com', '0811909017', '', 0, 0, '41446800', 0, 0, 'Jl. Mawar 2 No. 2c Rt.003/014 Bintaro Rempoa Jakarta 12330', '', 4, 12, 0, 11, 4, 3, 'B19FLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837421', '', 0, '0078', '0', '1'),
(1048, 'Abas Sabar Sukardi', 'mirza_oke@gmail.com', '0811135680', '', 0, 0, '-30610800', 0, 0, 'Pesona Florida 04/9, Kota Wisata Cibubur', '', 4, 13, 0, 11, 4, 0, 'B1167NQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0079', '0', '1'),
(1049, 'Sri Pranoto, S.Sit. MM', 'spranoto@bpn.go.id', '081513826677', '', 0, 0, '175626000', 0, 0, 'Jl. Amd X No. 59 Kreo Larangan Tangerang', '', 4, 12, 0, 11, 4, 0, 'B8006GU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0080', '0', '1'),
(1050, 'Fahrudin', 'dudik33@yahoo.com', '08115409897', '', 0, 0, '-11257200', 0, 0, 'Jl. Tarakan No. 345 Kebunbunga Balikpapan - Kal-tim', '', 4, 24, 0, 11, 3, 0, 'B8417UL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0081', '0', '1'),
(1051, 'Widie', 'wito@firebuild.com', '08128230001', '', 0, 0, '121971600', 0, 0, 'Piruss D-433, Kalimalang', '', 4, 13, 0, 11, 3, 0, 'B2834OK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0082', '0', '1'),
(1052, 'Andrieka Marsal K', 'Andrieka@hotmail.com', '08111000565', '', 0, 0, '207507600', 0, 0, 'Jl. Pinguin III Blok CF Sek.3 Bintaro Jaya', '', 4, 12, 0, 11, 3, 3, 'B345SI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0083', '0', '1'),
(1053, 'Galung Priyo Santosa', 'gps2112@yahoo.com', '0811148556', '', 0, 0, '-87116400', 0, 0, 'Perumahan Palem Semi, Jl. Palem Sawit No. 57 Karawaci', '', 4, 12, 0, 11, 3, 2, 'B186jQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0084', '0', '1'),
(1054, 'Ruddy C. Kojongian', 'rddyko@aol.com', '081585573666', '', 0, 0, '-118134000', 0, 0, 'Pesona Anggrek Blok F3/22 Harapan Jaya Bekasi', '', 4, 14, 0, 11, 4, 3, 'B1709KJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0085', '0', '1'),
(1055, 'Sudianto Hartono', 'sudianto.hartono', '08558886966', '', 0, 0, '-95583600', 0, 0, 'Villa Melati Mas T4/5 Serpong', '', 4, 13, 0, 11, 4, 0, 'B1047SJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0086', '0', '1'),
(1056, 'Ardian Asmar', 'asmarard@yahoo.com', '0811807324', '', 0, 0, '75574800', 0, 0, 'Jl. Menteng III/23A Komp. AL Cakrawala I Lagoa Tj. Priok 14270', '', 4, 13, 0, 11, 4, 0, 'B1632UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0087', '0', '1'),
(1057, 'Fauzan El Hakiki, SE', 'fauzanelhakiki@ymail.com', '0819686851', '', 0, 0, '481914000', 0, 0, 'Jl. Yos Sudarso No.05 RT 06 LK II Kel. Simpang Priuk Kota', '', 4, 10, 0, 11, 4, 0, 'BG1818HM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0088', '0', '1'),
(1058, 'Adhy Iswara', 'adhyiswara@yahoo.com', '085664178000', '', 0, 0, '618253200', 0, 0, 'Jl. Busi No.11 Medan', '', 4, 4, 0, 11, 4, 3, 'BK417HY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0089', '0', '1'),
(1059, 'Eka Febrianuz', 'escape_253@yahoo.com', '08161123071', '', 0, 0, '34189200', 0, 0, 'Jl. Kebon Sirih Barat 1 No. 47 Jakarta Pusat', '', 4, 13, 0, 11, 4, 3, 'B877FM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0090', '0', '1'),
(1060, 'Rifandi Rusli', 'irif_alfarecords@yahoo.com', '0811869368', '', 0, 0, '99334800', 0, 0, 'Tebet Barat Dalam I A No. 29', '', 4, 15, 0, 11, 4, 0, 'B241RIF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0091', '0', '1'),
(1061, 'Charli Gunawan', 'gunchg@yahoo.com', '081905573788', '', 0, 0, '361731600', 0, 0, 'JL. Sinar Jaya No. 88 Sungailiat, Bangka', '', 4, 7, 0, 11, 4, 0, 'B1230BJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0092', '0', '1'),
(1062, 'Suryadi', 'den.suryadi@gmail.com', '0811922301', '', 0, 0, '21920400', 0, 0, 'Jl. Aren II No. 2 Rt.01/01, Pondok Aren - Bintaro', '', 4, 12, 0, 11, 4, 0, 'B1262WJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0093', '0', '1'),
(1063, 'Rizal Syafriadi', 'rizaldi_syafriadi@yahoo.com.sg', '081511111995', '', 0, 0, '257187600', 0, 0, 'Harapan Indah Blok HN5/66 Bekasi Barat', '', 4, 14, 0, 11, 3, 0, 'B1046FLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0094', '0', '1'),
(1064, 'Hendra Firmansyah', 'hendra_brasco72@yahoo.com', '08125092928', '', 0, 0, '72291600', 0, 0, 'Komp. Keruwing Indah Jalan Murai Blok T No.3 Banjarmasin', '', 4, 2, 0, 11, 3, 0, 'DA8002TO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0095', '0', '1'),
(1065, 'Prasetya Hardhani', 'prasetya.hardhani@gmail.com', '08111772424', '', 0, 0, '199126800', 0, 0, 'The Royal Residence Jl. Davallia II Blok D4/31 Cakung', '', 4, 13, 0, 11, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0096', '0', '1'),
(1066, 'Edi Suryansyah', 'edihazza@yahoo.co.id', '0811560013', '', 0, 0, '156099600', 0, 0, 'Jl. A. Yani KM. 7.6 Komp. Bunyamin III Residence B-93, Banjarmasin', '', 4, 2, 0, 11, 4, 0, 'B1676TJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0097', '0', '1'),
(1067, 'Lukman Syarif', 'syariflukman@yahoo.com', '08122896446', '', 0, 0, '330714000', 0, 0, 'Komp. Bumi Resik Apnglayungan No.102 Kota Tasikmalaya', '', 4, 17, 0, 11, 4, 3, 'H423L', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0098', '0', '1'),
(1068, 'Sudirman', 'sudirman2010@yahoo.com', '08158754054', '', 0, 0, '108925200', 0, 0, 'Villa Taman Bandara M9 No.8, Dadap', '', 4, 12, 0, 11, 3, 0, 'B1723NLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0099', '0', '1'),
(1069, 'Masani', 'masani2001@yahoo.com', '081311134318', '', 0, 0, '148496400', 0, 0, 'Jl. Ciparahiang No. 4 Cidangiang Bogor', '', 4, 15, 0, 11, 4, 0, 'B1666SD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0100', '0', '1'),
(1070, 'Sigit Tri Asmoro', 'sigit_triasmoro@yahoo.com', '081350642781', '', 0, 0, '172256400', 0, 0, 'Jl. Kartowinangun RT.23/RW.09 Talang Betutu Palembang 30155', '', 4, 10, 0, 11, 3, 3, 'BG1761LK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0101', '0', '1'),
(1071, 'Roliyawan Supriadi', 'gagan4401@yahoo.co.id', '0818849392', '', 0, 0, '241722000', 0, 0, 'Komp. Puri Krakatau Hijau, Jl. Puri Intan I Blok E3 No. 16 Cilegon Banten 42436', '', 4, 12, 0, 15, 4, 0, 'B199CRV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0102', '0', '1'),
(1072, 'Uliyanto', 'moveonuli@yahoo.com', '08179101321', '', 0, 0, '284317200', 0, 0, 'Jl. Kosambi No.3 RT 10/03, Kalibaru Cilincing', '', 4, 13, 0, 11, 3, 3, 'B2454YH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0103', '0', '1'),
(1073, 'Abraham Mustika', 'abraham_mustika@yahoo.com', '08159900077', '', 0, 0, '363286800', 0, 0, 'Janur Hijau 12 TP2/23 Kelapa Gading  - Jakarta Utara', '', 4, 13, 0, 11, 4, 0, 'B977GOD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0104', '0', '1'),
(1074, 'Hidayat. S.sos/Abua', 'hidayat.mba@gmail.com', '08116856140811687456', '', 0, 0, '-243070200', 0, 0, 'Jl. TP Nyakmakam 47 (sebelah IBEX) Lampineung Banda Aceh', '', 4, 3, 0, 11, 4, 0, 'BK48UA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0105', '0', '1'),
(1075, 'Yulia Fitriana Yunus', 'yuliayunus@gmail.com', '08111666315', '', 0, 0, '206816400', 0, 0, 'Bumi Dirgantara Permai Jl. Durian CK-3, Jatisari, Jatiasih Bekasi 17426', '', 4, 14, 0, 11, 4, 0, 'B8998YB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0106', '0', '1'),
(1076, 'Tamyiz (Tomy)', 'tamyis07@yahoo.co.id', '081332000720', '', 0, 0, '92509200', 0, 0, 'Jl. Kedung Asam 18 Rungkut Surabaya 60298', '', 4, 23, 0, 11, 3, 3, 'L1343CY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0107', '0', '1'),
(1077, 'Daniel Marsudi', '', '081278817898', '', 0, 0, '-309943800', 0, 0, 'Jl. Waiskampu No. 96 Tanjung Karang Bandar Lampung', '', 4, 11, 0, 11, 4, 3, 'B1049TJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0108', '0', '1'),
(1078, 'Beatrice Wiratno', 's3v3nheaven@hotmail.com', '081514797777', '', 0, 0, '268592400', 0, 0, 'Jl. U/38 Jelambar Jaya 2 Jakarta Barat 11460', '', 4, 12, 0, 11, 4, 1, 'B777BEA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0109', '0', '1'),
(1079, 'Handaru', 'rhandarus@yahoo.com', '0818863188', '', 0, 0, '-84092400', 0, 0, 'Vila Ciater C7/16 Puri Gading Jatiwarna Bekasi', '', 4, 14, 0, 11, 3, 0, 'B1651YH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0110', '0', '1'),
(1080, 'Bayu Dwi Nugroho', 'bayudwinugroho@hotmail.com', '087883972022', '', 0, 0, '352746000', 0, 0, 'Jl. Mutaharun No. 14 RT 08/10 Jatirahayu, Pondok Melati - Bekasi 17414', '', 4, 14, 0, 11, 4, 0, 'B2265BY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0111', '0', '1'),
(1081, 'Aswin Harahap', 'aswin_h@rocketmail.com', '0811888586', '', 0, 0, '-478251000', 0, 0, 'Jl. Sukun No. 50, Blok A Cinere', '', 4, 15, 0, 11, 4, 0, 'B1284SG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0112', '0', '1'),
(1082, 'Farizal, SH,MH', 'farizalsh.mh-r@yahoo.com', '082184117070', '', 0, 0, '-6418800', 0, 0, 'Komp. Bumi Mendalo Mas RT 33 Mendalo Darat Muaro Jambi', '', 4, 9, 0, 11, 4, 3, 'D396', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0113', '0', '1'),
(1083, 'Rizki Nugraha Aryodamar', 'athazki@gmail.com', '08129184071', '', 0, 0, '281206800', 0, 0, 'Jl. Raya Srengseng No. 45 RT 002/02 Kembangan Jakarta Barat 11630', '', 4, 12, 0, 11, 3, 0, 'B279HE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0114', '0', '1'),
(1084, 'Ambar Dwi Arrie, K', 'ambartya96@yahoo.com', '081927222900', '', 0, 0, '-140857200', 0, 0, 'Jl. Duyung Perumahan Villa Putri Duyung Blok I No. 4 Pekanbaru', '', 4, 6, 0, 11, 4, 3, 'BM412NI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0115', '0', '1'),
(1085, 'Leony Chandra', 'leonychandra@yahoo.com', '08131116111608777079', '', 0, 0, '335120400', 0, 0, 'Perum Viyasa Valley C No. 2 - Jl. Guru Muchtar, Cimahpar, Bogor Utara. Bogor - 16155', '', 4, 15, 0, 11, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837422', '', 0, '0116', '0', '1'),
(1086, 'Bayu Prasetya', 'N1_b4yu@yahoo.com', '081333765857', '', 0, 0, '519584400', 0, 0, 'Perum Griyashanta A-203 Malang, Jawa Timur 65141', '', 4, 23, 0, 11, 3, 3, 'N439CM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0117', '0', '1'),
(1087, 'Ari Tedjo', 'aritedjo@yahoo.co.id', '08161450540', '', 0, 0, '78944400', 0, 0, 'Jl. Kusuma VII/37F Wisma Kusuma Indah Pondok Gede 17414', '', 4, 13, 0, 11, 4, 3, 'B1864WB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0118', '0', '1'),
(1088, 'Siti Chumaira', 'meachouw@yahoo.com', '082160000147', '', 0, 0, '731437200', 0, 0, 'JL. Seulawah Lr.KM.Yunus No. 1 Seutui Banda Aceh', '', 4, 3, 0, 11, 4, 0, 'BL174RA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0119', '0', '1'),
(1089, 'Levi Simanjutak', 'ceerpeku@gmail.com', '08176027265', '', 0, 0, '-57567600', 0, 0, 'Perum Satwika Permai C4/5, Jatiluhur, Jatiasih, Bekasi', '', 4, 14, 0, 11, 3, 0, 'B8436XL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0120', '0', '1'),
(1090, 'Rudi Riang Hepat', 'rudi.rhpt@yahoo.com', '081211681120', '', 0, 0, '21315600', 0, 0, 'Kota Wisata Cibubur', '', 4, 13, 0, 11, 4, 3, 'B1252BJD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0121', '0', '1'),
(1091, 'Gerry Tifandi', 'gerrytifandi@yahoo.com', '085640029505', '', 0, 0, '518806800', 0, 0, 'Komp. Bumi Malaka Asri, Jl.Melati I No. 2 Klender Jakarta Timur', '', 4, 13, 0, 11, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0122', '0', '1'),
(1092, 'Toni Rajagukguk', 'toni.rajagukguk@gmail.com', '08151853333', '', 0, 0, '217184400', 0, 0, 'Jl. Melati Indah I/2 Jakarta Barat 11720', '', 4, 12, 0, 11, 4, 3, 'B1854BJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0123', '0', '1'),
(1093, 'Dr. Tirto Prakoso, Meng', 'tirto.prakoso@yahoo.com', '081809621300', '', 0, 0, '-13762800', 0, 0, 'Jl. Tubagus Ismail VI/18, Bandung', '', 4, 16, 0, 11, 4, 0, 'D1550KB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0124', '0', '1'),
(1094, 'Ivan Reyhansyah, SE', 'ivan_reyhansyah@wanhai.com', '08111985353', '', 0, 0, '412016400', 0, 0, 'Jl. Pondasi Raya No. 59 Jakarta Timur', '', 4, 13, 0, 11, 4, 3, 'B1510TJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0125', '0', '1'),
(1095, 'Jhasrie Tambusai', 'jtambusai@yahoo.com', '08128393938', '', 0, 0, '45421200', 0, 0, '***OFFICE : PT Rokan Citra Valutama : Gd. Wisma Bayuadji - Jl. Gandaria Tengah III No. 44 Kebayoran Baru, JakSel ***HOME : Villa Bintaro Indah Blok C 20 No. 24', '', 4, 12, 0, 12, 4, 3, 'B1889OT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0126', '0', '1'),
(1096, 'Aditya Taruna', 'adityalivina@yahoo.com', '0816771597', '', 0, 0, '213642000', 0, 0, 'Jl. Mandolin - Komplek Puri Intan Kav. 66 Kelapa Gading', '', 4, 13, 0, 12, 4, 0, 'B808MYV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0127', '0', '1'),
(1097, 'Sartono', 'tono_nih@yahoo.com', '08121034697', '', 0, 0, '242326800', 0, 0, 'Jl. Perikani II No. 17A Cipinang', '', 4, 13, 0, 12, 4, 3, 'B1244TJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0128', '0', '1'),
(1098, 'Oji Fauzi', 'o_fauzi@yahoo.com', '0818885402', '', 0, 0, '105037200', 0, 0, 'Jl. Kelapa Muda II Blok K No. 23 RT/RW : 007/007 Jakarta Utara', '', 4, 13, 0, 12, 4, 3, 'B1854UJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0129', '0', '1'),
(1099, 'Andi Hakim Nasution, SE', 'dihak28@yahoo.com', '081387651100', '', 0, 0, '467744400', 0, 0, 'Jl. Negara Lingkungan Va. Yakum Jaya Lampung Tengah', '', 4, 11, 0, 15, 4, 0, 'BE1275AH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0130', '0', '1'),
(1100, 'Nurul Yaqin', 'nrl_yaqin@yahoo.com', '0811840364', '', 0, 0, '-111135600', 0, 0, 'Jl. Masjid Arriyad No. 48 Cimanggis ciputat Tang - sel', '', 4, 12, 0, 12, 4, 3, 'B317HOK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0131', '0', '1'),
(1101, 'Bernard Simorangkir', 'bernard_simorangkir@yahoo.co.id', '08122397840', '', 0, 0, '-69231600', 0, 0, 'Jl. Elang V Blok HG no. 5 Sek. IX Bintaro Jaya', '', 4, 12, 0, 12, 4, 0, 'D800JS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0132', '0', '1'),
(1102, 'Bambang Soepriyadi, S. Hut', 'broe19782000@yahoo.com', '08125392792', '', 0, 0, '276368400', 0, 0, 'Jl. Karya Etam Gg. Merdeka II RT.15 No. 24 Sangatta Kutai Kal Tim', '', 4, 24, 0, 12, 3, 0, 'KT389AC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0133', '0', '1'),
(1103, 'Rudy Hudin', 'hudin@cbn.net.id', '0811132507', '', 0, 0, '-127378800', 0, 0, 'Jl. Cempaka No. 9 Tomang Raya Jakarta Barat', '', 4, 12, 0, 12, 4, 3, 'B1648BJD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0134', '0', '1'),
(1104, 'Hendrick', 'onevega8668@ymail.com', '08159111172', '', 0, 0, '130784400', 0, 0, 'Apartemen Wesling Kedoya, Tower A Lt.8 No. 25 Jak- bar 11520', '', 4, 12, 0, 12, 4, 0, 'B161FA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0135', '0', '1'),
(1105, 'Wandi Soelaiman', 'onedie79@yahoo.com', '08197884949', '', 0, 0, '310755600', 0, 0, 'Jl. Kebun Bunga Irg. Mekar sari 1 No. 1532-1533 Rt.15/05 Palembang', '', 4, 10, 0, 12, 4, 0, 'BG81GS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0136', '0', '1'),
(1106, 'I Made Dirgayasa', 'kadek@villa-damai-bali.com', '081223632500', '', 0, 0, '267901200', 0, 0, 'Jl. Kebo Iwa Utara, Gang Danau Buyan No. 3 Banjar Umak-lungkung, Bali', '', 4, 2, 0, 12, 4, 0, 'DK111DG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0137', '0', '1'),
(1107, 'Rusi Astri', 'rusiastri_02@yahoo.co.id', '082116048105', '', 0, 0, '-143967600', 0, 0, 'Jl. Cihanjuang, Gang Atib Rt05/011 No. 47B Cimahi', '', 4, 16, 0, 12, 4, 3, 'B112USI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0138', '0', '1'),
(1108, 'Ir. Acep Rohmat', 'anakbidan@rocketmail.com', '087736800001', '', 0, 0, '103309200', 0, 0, 'Jl. H. Ibrahim No. 46 Salebu - Majenang Cilacap 53257', '', 4, 19, 0, 12, 3, 0, 'B1010IJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0139', '0', '1'),
(1109, 'H. Agus Cahyoo SE', 'agustcahyono@yahoo.co.id', '081911097488', '', 0, 0, '-3222000', 0, 0, 'Kp Sepatan Rt 01/02 Sepatan - Tangerang', '', 4, 12, 0, 12, 3, 0, 'B1799NLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0140', '0', '1'),
(1110, 'Affan Rasyid Baharuddin', 'affangv@sji.or.id', '085711111872', '', 0, 0, '406227600', 0, 0, 'Jl. Raya Kelurahan Jatimakmur No. 15 Jatimakmur Pondok Gede', '', 4, 14, 0, 12, 4, 0, 'B8112Ny', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0141', '0', '1'),
(1111, 'Pongky Praditya', 'pauluspongky@yahoo.com', '081314888998', '', 0, 0, '358534800', 0, 0, 'Jl. Perkici 7 Blok AE 7 No. 1 Bintaro Jaya Sektor 5', '', 4, 12, 0, 12, 4, 3, 'B13BRO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0142', '0', '1'),
(1112, 'Nanank Akholy', 'nanank@marco-trend.com', '0811855122', '', 0, 0, '261939600', 0, 0, 'Komp. Puribeta Cluster Hujan Mas No. 21 Cileduk, Tangerang 15154', '', 4, 12, 0, 12, 4, 0, 'B22WH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0143', '0', '1'),
(1113, 'Cepi Budi Mansyur', 'cbmansyur@yahoo.com', '08122045637', '', 0, 0, '11034000', 0, 0, 'Komp. Buah Batu Regensi F5-2 Bandung', '', 4, 16, 0, 12, 4, 0, 'D159QV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0144', '0', '1'),
(1114, 'Erika Dewi Roestam', 'im_erika@yahoo.com', '0817464690', '', 0, 0, '348166800', 0, 0, 'Pesona Florida O2/22, Kota Wisata Cibubur', '', 4, 13, 0, 12, 4, 3, 'B20IQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0145', '0', '1'),
(1115, 'M.K Oktariana', 'andrian_ju@live.com', '0811432956', '', 0, 0, '150742800', 0, 0, 'Jl. Sari Indah II No. 36 B - Babakan Sari I - Bandung', '', 4, 16, 0, 12, 3, 0, 'B8987WB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0146', '0', '1'),
(1116, 'Arya Mahardika Pradhana', 'prof_hefta08@yahoo.com', '0811998684', '', 0, 0, '454525200', 0, 0, 'Komp. Bangun Lestari Asri Blok B/5 RT 004/002 Ciputat Timur', '', 4, 13, 0, 12, 3, 3, 'B2092OR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0147', '0', '1'),
(1117, 'Deddy Pramono', 'pramonod@indosat.blackberry.com', '08164841860', '', 0, 0, '190486800', 0, 0, 'Jl. Petojo VIY No. 14 Jakarta Pusat 10150', '', 4, 13, 0, 12, 3, 0, 'B1405UR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0148', '0', '1'),
(1118, 'Daniel Budijanto SE. MBA', 'danielbudijanto@yahoo.com', '081905352020', '', 0, 0, '-28364400', 0, 0, 'Gn Rinjani (Taman Dago Lippo Cikarang Bekasi)', '', 4, 14, 0, 12, 4, 3, 'B8476YX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0149', '0', '1'),
(1119, 'Nanan Diana', 'na2nsdp@gmail.com', '081514356129', '', 0, 0, '172515600', 0, 0, 'Lambang sari permai RT 002/006 No. 90 A/101 Tambun Selatan Bekasi 17510', '', 4, 14, 0, 12, 4, 0, 'B27YQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0150', '0', '1'),
(1120, 'Ir. Suparman', 'mamnppy@yahoo.com', '081227779292', '', 0, 0, '-23007600', 0, 0, 'Jl. Renjana IV/25 P4A PundakPayung Semarang', '', 4, 23, 0, 12, 4, 0, 'H7184QG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0151', '0', '1'),
(1121, 'Tontowi Ahmad', 'ahmadtantowi@yahoo.com', '087889223699', '', 0, 0, '553539600', 0, 0, 'PBSI Jl. Damai Raya Cipayung Jakarta Timur', '', 4, 13, 0, 12, 4, 3, 'B70FE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0152', '0', '1'),
(1122, 'P.G. Raymond Turnip', 'raymond@alumni.ui.ac.id', '081210050000', '', 0, 0, '236365200', 0, 0, 'Perum Jatibening Satu Jl. Cempaka No. 6 Bekasi - 17412', '', 4, 14, 0, 12, 3, 3, 'B1074MI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0153', '0', '1'),
(1123, 'Son Ani, SE. MM', 'son_ani007@yahoo.com', '08197612597', '', 0, 0, '31510800', 0, 0, 'Jl. Perkasa No. 43 Lembah sari, Rumbai Pesisir Kodia Pekanbaru - Riau', '', 4, 6, 0, 12, 4, 1, 'BM111II', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0154', '0', '1'),
(1124, 'Muhammad Taufik', 'topik_mr@yahoo.com', '0811702522', '', 0, 0, '361731600', 0, 0, 'Cluster Puri Legenda A8 No. 21 Batam Center', '', 4, 2, 0, 12, 3, 0, 'BP317II', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0155', '0', '1'),
(1125, 'Daniel Liyadi', 'daniel_liyadi@yahoo.com', '085880236565', '', 0, 0, '22179600', 0, 0, 'Jl. Raya Kedoya No. 2, Kebon Jeruk', '', 4, 12, 0, 12, 4, 0, 'B159DF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837423', '', 0, '0156', '0', '1'),
(1126, 'Handrick', 'chan_handrick@yahoo.com', '02197499780', '', 0, 0, '31510800', 0, 0, 'Muara Karang', '', 4, 13, 0, 12, 4, 0, 'B788RY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0157', '0', '1'),
(1127, 'Rika Trikania', 'rka3knia@yahoo.com.sg', '08161916002', '', 0, 0, '267210000', 0, 0, 'Citylofts Sudirman 2106B Jakarta Pusat 10220', '', 4, 13, 0, 12, 4, 0, 'B216TRI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0158', '0', '1'),
(1128, 'Endra', 'me@endra.ws', '08172347722', '', 0, 0, '73328400', 0, 0, 'Jl. Pasir Wangi Raya 15 Bandung 40254', '', 4, 16, 0, 12, 4, 3, 'D3EZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0159', '0', '1'),
(1129, 'Fifik Taofik', 'fix_cool4@yahoo.com', '081395559818', '', 0, 0, '466016400', 0, 0, 'Jl. Kandaatmaja No. 143 B Cimahi Utara Kota Cimahi', '', 4, 16, 0, 12, 3, 0, 'B2627HD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0160', '0', '1'),
(1130, 'Dini Maryono', 'dini.maryono@gmail.com', '0818989687', '', 0, 0, '225133200', 0, 0, 'Pesona Khayangan Blok DB No. 10-11 Depok 16411', '', 4, 15, 0, 12, 4, 0, 'B277ADE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0161', '0', '1'),
(1131, 'Hendra Kirana', 'Hendrakiranamuluk@gmail.com', '081310501656', '', 0, 0, '541357200', 0, 0, 'Jl. Bukit Hijau 3 No. 10 Pondok Indah Jakarta Selatan 12310', '', 4, 15, 0, 12, 4, 0, 'B607AM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0162', '0', '1'),
(1132, 'Deni Nursani', 'deninursani@yahoo.com', '08170229463', '', 0, 0, '-212484600', 0, 0, 'Jl. Pagarsih Barat Gg. Madrasah No. 10 Bandung', '', 4, 16, 0, 12, 4, 1, 'D1477OB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0163', '0', '1'),
(1133, 'Andrie a.k.a Jon', 'Jjonjablug@yahoo.com', '0818651311', '', 0, 0, '201891600', 0, 0, 'Bintaro Permai No. 7 Jaksel', '', 4, 15, 0, 12, 4, 1, 'B1808KJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0164', '0', '1'),
(1134, 'FX.Triagus S. Wibowo', 'bowo_triagus71@yahoo.com', '08151820871', '', 0, 0, '52074000', 0, 0, 'Jl. Kusuma Indah Blok A20 No. 9-10 PCI, Jatibening Pondok Gede 17414', '', 4, 14, 0, 12, 4, 0, 'B1013KJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0165', '0', '1'),
(1135, 'Mohamad Erfan', 'erfan252@gmail.com', '0811928217', '', 0, 0, '-26809200', 0, 0, 'Bumi Alam Hijau Jl. Durian VII/D8 -15 Pendurenan RT. 04 RW.16', '', 4, 14, 0, 12, 4, 0, 'B1220TJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0166', '0', '1'),
(1136, 'Aji Putra Sulistyo', 'ajiputrasulistyo@yahoo.com', '0818941842', '', 0, 0, '750618000', 0, 0, 'Vila Taman Bandara Blok M9 No.10 RT02/010 Kosambi - 15211', '', 4, 12, 0, 12, 3, 0, 'B2076OP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0167', '0', '1'),
(1137, 'Andreas Ari Aviata', 'aviata@cbn.net.id', '0816933522', '', 0, 0, '-123577200', 0, 0, 'Kav. DKI Blok 42 No. 23 Meruya Utara Jakarta Barat ', '', 4, 12, 0, 12, 4, 0, 'B747A', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0168', '0', '1'),
(1138, 'Syafriandy', 'andy_ppcab3@yahoo.com', '0818414545', '', 0, 0, '16045200', 0, 0, 'Perumahan Griya Jakarta Blok I 5 No. 6 Pamulang', '', 4, 12, 0, 12, 4, 1, 'B545DEA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0169', '0', '1'),
(1139, 'Dwi Tista Firdauziah', 'tistafirdauziah@yahoo.co.id', '085718713800', '', 0, 0, '220381200', 0, 0, 'Jl. Cipinang Pulo No. 70 Jakarta Timur', '', 4, 13, 0, 12, 4, 0, 'B715TAF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0170', '0', '1'),
(1140, 'Tengku Syahputra', 'tengkusyahputra@gmail.com', '0816710888', '', 0, 0, '211741200', 0, 0, 'Jl. Raya Sawangan Perumahan Telaga Golf Blok Fv No 11 Depok 16435', '', 4, 15, 0, 12, 4, 3, 'B515QR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0171', '0', '1'),
(1141, 'Anggi Dwiyoga', '', '', '', 0, 0, '568573200', 0, 0, 'Jl. Melati IX No. 5', '', 4, 13, 0, 12, 4, 0, 'B2202WX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0172', '0', '1'),
(1142, 'Patrick Santosa', 'patrick_santosa@summarecon.com', '08170089347', '', 0, 0, '394909200', 0, 0, 'Danau Indah 2 Blok B 17 No. 12 Sunter Jaya 14350', '', 4, 13, 0, 12, 3, 3, 'B1057LC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0173', '0', '1'),
(1143, 'Frans Christian', 'useless_guy@hotmail.com', '081585004321', '', 0, 0, '550429200', 0, 0, 'Jl. Angke Jaya 8 No. 16', '', 4, 12, 0, 12, 4, 3, 'B198IZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0174', '0', '1'),
(1144, 'Raymond A. Hutapea', 'Ray.Hutapea@gmail.com', '08111893272', '', 0, 0, '74970000', 0, 0, 'Legenda Wisata Zona Enstein R 09/05 - Cibubur', '', 4, 13, 0, 12, 4, 3, 'B2685U', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0175', '0', '1'),
(1145, 'Purno Widodo', 'purno.widodo@gmail.com', '08123280308', '', 0, 0, '259520400', 0, 0, 'Pondok Jati Blok CR No. 20 Sidoarjo Jatim', '', 4, 23, 0, 12, 4, 3, 'AB1353TE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0176', '0', '1'),
(1146, 'Ricky Satrianto', 'rickysatrianto@rocketmail.com', '081802402495', '', 0, 0, '583088400', 0, 0, 'Jalan Kalimas 4/172 Semarang 50177', '', 4, 23, 0, 12, 4, 0, 'H25SF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0177', '0', '1'),
(1147, 'Ardhi Dharma Suryadi', 'ardhids@yahoo.com', '085881883000', '', 0, 0, '-114246000', 0, 0, 'Melati Mas Vista Blok V2 No. 46 Serpong Utara Tangerang Selatan', '', 4, 12, 0, 12, 4, 0, 'B1268PL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0178', '0', '1'),
(1148, 'Muldalyanto', 'muldalyanto@gmail.com', '08170400415', '', 0, 0, '287773200', 0, 0, 'Gang Pergiwo JG V/390 RT 10 RW 34, Jurugentong, Banguntapan, Bantul. Jawa Tengah', '', 4, 20, 0, 12, 3, 3, 'B1988VE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0179', '0', '1'),
(1149, 'Ali Kusno Arifin', 'akusno66@yahoo.com', '08164611060', '', 0, 0, '-120466800', 0, 0, 'Jl. Purna Bakti, Desa Lialang RT 015/RW 01 Kec Taktakan Serang', '', 4, 12, 0, 12, 3, 3, 'B8713MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0180', '0', '1'),
(1150, 'Khusaini', 'khusaini39@yahoo.com', '081514377623', '', 0, 0, '80154000', 0, 0, 'Taman Harapan Baru Blok A No. 22 Bekasi', '', 4, 14, 0, 12, 4, 3, 'B196WEN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0181', '0', '1'),
(1151, 'Ferdinandus Angkiriwan', 'ferdi_hung@yahoo.com', '081339433111', '', 0, 0, '423248400', 0, 0, 'Jl. El Tari II No. 69 Kupang, NTT - 85111', '', 4, 2, 0, 12, 3, 0, 'DH1823KA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0182', '0', '1'),
(1152, 'Erik Fadriana', 'erickfadriana@gmail.com', '0811883383', '', 0, 0, '386874000', 0, 0, 'Parakan Mas Indah - Alam Melati No. A8 Parakan Saat Antapani Bandung', '', 4, 16, 0, 12, 4, 0, 'D8835', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0183', '0', '1'),
(1153, 'Budiyono Suteja', 'budiyono_suteja@hotmail.com', '0818181253', '', 0, 0, '123786000', 0, 0, 'Layar Mediterania (Layar Permai) LP BA No 21 PIK', '', 4, 13, 0, 12, 4, 0, 'B1260ULO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0184', '0', '1'),
(1154, 'Ali Ghufron', 'mrguponk@yahoo.co.uk', '0818980340', '', 0, 0, '234637200', 0, 0, 'Comp. PT Chevron Pasific Indonesia Teladan Office Room 279', '', 4, 2, 0, 12, 3, 0, 'BM1155TD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0185', '0', '1'),
(1155, 'Eko Novianto', 'e3koz@yahoo.com', '081519036535', '', 0, 0, '122317200', 0, 0, 'Jl. Lawu Kav 839 Bukit Nusa Indah, Sarua Ciputat Tang Sel', '', 4, 12, 0, 12, 4, 0, 'B8388XC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0186', '0', '1'),
(1156, 'Anastasia Esti Yoeswoadi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 12, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0187', '0', '1'),
(1157, 'Yose Rizal', 'yose_ray@razi-group.com', '08151617215', '', 0, 0, '89053200', 0, 0, 'JL. Taman Asri II No. 2 Jatinegara Baru, Jakarta Timur', '', 4, 13, 0, 12, 4, 0, 'B2122QN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0188', '0', '1'),
(1158, 'Ray Rendyago', 'rayim3@yahoo.com', '085697482100', '', 0, 0, '598208400', 0, 0, 'Jl. Mede No. 20 Utan Komp Kehakiman Utan Kayu, Jakarta Timur', '', 4, 13, 0, 12, 4, 0, 'B333RAY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0189', '0', '1');
INSERT INTO `member` (`id_member`, `nama`, `email`, `hpwa`, `kemeja`, `prodomisilih`, `kabdomisilih`, `tgllahir`, `proalamat`, `kabalamat`, `alamat`, `kodepos`, `idjabatan`, `idchapter`, `idnonchapter`, `idtahununit`, `idkapasitasunit`, `idwarnaunit`, `nopolisi`, `norangka`, `nomesin`, `ktpsim`, `stnk`, `buktitransfer`, `photo`, `ppok`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idedit`, `nopung`, `statusnopung`, `statusregis`) VALUES
(1159, 'Rico Fabio', 'abynouva@yahoo.com', '0818941697', '', 0, 0, '627843600', 0, 0, 'Jl. Utama Raya BF 19 Kemang Pratama, Bekasi', '', 4, 14, 0, 12, 4, 3, 'B305CZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0190', '0', '1'),
(1160, 'Prashant Krishna Gangtani', 'gangtani@gmail.com', '08159977979', '', 0, 0, '343933200', 0, 0, 'Jl. Sunter Mas Barat II E, Blok H-10 No. 1 Jakarta Utara', '', 4, 13, 0, 12, 4, 3, 'B12HEA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0191', '0', '1'),
(1161, 'Jeffry Andi Lolo', 'juliusjeffry@rocketmail.com', '085399966888', '', 0, 0, '115491600', 0, 0, 'Komp. Griya Barombong Blok C2 No. 3 Sulawesi Selatan', '', 4, 25, 0, 12, 4, 0, 'DD888UA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0192', '0', '1'),
(1162, 'Wendy Ibrahim', 'crv.wendy@yahoo.com', '083131110238', '', 0, 0, '353523600', 0, 0, 'Mountain View Manado', '', 4, 0, 0, 12, 4, 1, 'DB3625AD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0193', '0', '1'),
(1163, 'Jenry', 'jenrey>advokat@gmail.com', '087888338165', '', 0, 0, '31510800', 0, 0, 'Jl. Surabaya No. 62 menteng Jakarta Pusat', '', 4, 13, 0, 12, 4, 0, 'B73NRY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0194', '0', '1'),
(1164, 'Ryan Topan', 'ry_mr_k4ruhun@yahoo.com', '08128443605', '', 0, 0, '351709200', 0, 0, 'Jl. Kayu Manis 8 No. 5 RT.007/07 Matraman', '', 4, 13, 0, 12, 3, 3, 'B8944PH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837424', '', 0, '0195', '0', '1'),
(1165, 'Harius Sukanto', 'hriuss18@gmail.com', '08127860830', '', 0, 0, '209149200', 0, 0, 'Komp. Pusri Mayor Zen - Jl. Bakung No. 12A Palembang 30118', '', 4, 10, 0, 12, 3, 3, 'BG1064MD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0196', '0', '1'),
(1166, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 12, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0197', '0', '1'),
(1167, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 12, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0198', '0', '1'),
(1168, 'Irsan Harrie Hasanal Fadjri', 'irsan.hf@gmail.com', '08122150618', '', 0, 0, '405018000', 0, 0, 'Mahdgany Residence Blok A No. 11', '', 4, 16, 0, 12, 3, 3, 'BG1786MA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0199', '0', '1'),
(1169, 'Suhaydro Widodo (Aay)', 'singhay_oey@yahoo.com', '0818209333', '', 0, 0, '137610000', 0, 0, 'Jl. Bola Voli No. 13 Arcamanik Bandung 40293', '', 4, 16, 0, 12, 3, 0, 'D1008AY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0200', '0', '1'),
(1170, 'Lukman Deddy Sutanto', 'lukman_sky@yahoo.com', '08122848960', '', 0, 0, '390675600', 0, 0, 'Abdulrahman saleh No. 63 Semarang', '', 4, 23, 0, 12, 4, 3, 'H777YH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0201', '0', '1'),
(1171, 'Rochmat Ismiyarto', 'cipta_instrument@yahoo.com', '08179891111', '', 0, 0, '73155600', 0, 0, 'Villa Ilham Blok Mina J1 No. 06 Islamic Karawaci', '', 4, 12, 0, 12, 3, 0, 'B386MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0202', '0', '1'),
(1172, 'Feri Danil', 'feri_danil@yahoo.com', '081391564384', '', 0, 0, '-7628400', 0, 0, 'Jl. Puspogiwang I No 48 Semarang 50149', '', 4, 23, 0, 12, 3, 0, 'B117JE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0203', '0', '1'),
(1173, 'Ni\'mat Hikmatillah', 'niehikmatillah@yahoo.com', '08128717344', '', 0, 0, '440096400', 0, 0, 'Jl. H. Husin No. 5 RT 003 RW 02 Poris Plawad Indah Tangerang', '', 4, 12, 0, 12, 4, 3, 'B13NIE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0204', '0', '1'),
(1174, 'Ganis Armoyo', 'detective_as@yahoo.co.id', '085646078000', '', 0, 0, '669574800', 0, 0, 'Jl. Kalikepiting No. 19 Surabaya Jawa Timur', '', 4, 23, 0, 12, 3, 3, 'W1718AN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0205', '0', '1'),
(1175, 'Zacky Riyadi', 'zackyriyadi@yahoo.com', '081399343435', '', 0, 0, '304621200', 0, 0, 'Jl. Kutilang Raya L5/21 Bintaro Jaya', '', 4, 12, 0, 12, 3, 0, 'B1415JW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0206', '0', '1'),
(1176, 'Mukhamad Barkah', 'barkahbarkah@gmail.com', '08551000403', '', 0, 0, '100026000', 0, 0, 'Jl. Malaka Raya No. 94 Blok 2 RT 001/06 Duren Sawit', '', 4, 13, 0, 12, 4, 3, 'B812BAR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0207', '0', '1'),
(1177, 'James RK', 'jimpot61@yahoo.com', '08125323811', '', 0, 0, '31510800', 0, 0, 'Jl. Bunyu No. 7 Rawamangun Jakarta', '', 4, 13, 0, 12, 4, 0, 'B104JIM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0208', '0', '1'),
(1178, 'Jockie Thurana', 'jockie@gmail.com', '081221345678', '', 0, 0, '301597200', 0, 0, 'Perumahan Batutulis Residence Blok A No. 5 Bogor 16135', '', 4, 15, 0, 12, 3, 0, 'B8093YT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0209', '0', '1'),
(1179, 'Anantyo', 'aanantyo@yahoo.com', '08551060869', '', 0, 0, '-12812400', 0, 0, 'Jl. Rantai Mas III G-40 KPAD Bulak Rantai, Kramatjati, Jakarta Timur. DKI Jakarta - 13540', '', 4, 13, 0, 12, 4, 3, 'B27MDE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0210', '0', '1'),
(1180, 'Drajat Permana', 'dora_permana@yahoo.co.id', '081382732102', '', 0, 0, '250016400', 0, 0, 'Jl. Kemang Anggrek 3, AN 23 Kemang Pratama, Bekasi', '', 4, 14, 0, 12, 3, 0, 'B1361ELO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0211', '0', '1'),
(1181, 'Mujahidin', 'dmudjahidin@yahoo.com', '081564926907', '', 0, 0, '-68972400', 0, 0, 'Jl. Bunyu II No. 27 Bumi Patra Indramayu', '', 4, 18, 0, 12, 4, 0, 'E1730PJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0212', '0', '1'),
(1182, 'Muchtarudin Rachmanto', 'm_rachmanto@yahoo.co.id', '081320489999', '', 0, 0, '381258000', 0, 0, 'Jl. Sari Indah II No. 36 B - Babakan Sari I - Bandung', '', 4, 16, 0, 15, 4, 3, 'B8029XV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0213', '0', '1'),
(1183, 'Arief Syaiful Ramdhan', 'arief_1831@yahoo.co.id', '0828222824', '', 0, 0, '457290000', 0, 0, 'Jl. Sukagalih gg. Sukabakti 1 No. 636 Sukajadi Bandung', '', 4, 16, 0, 15, 4, 0, 'D1831JP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0214', '0', '1'),
(1184, 'Fuad', 'id.fuad@ymail.com', '0811902599', '', 0, 0, '31510800', 0, 0, 'Kemayoran Jakarta Pusat', '', 4, 13, 0, 13, 3, 3, 'B8836BK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0215', '0', '1'),
(1185, 'Hamonangan', 'hamonangansilaban@gmail.com', '08111484245', '', 0, 0, '274986000', 0, 0, 'Jl. Bangka 1 No. 370 RT. 05 RW.16 Perumnas 3 Kel. Aren Jaya, Bekasi Timur', '', 4, 14, 0, 13, 3, 3, 'B899KR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0216', '0', '1'),
(1186, 'Irawati Chandra', 'irawati.chandra@gmail.com', '08118470860815116084', '', 0, 0, '-60159600', 0, 0, 'Perumahan Griya Sarana Husada Kav. 21 Jl. Bukit Cinere Raya, Gandul, Depok', '', 4, 15, 0, 13, 4, 0, 'B52IC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0217', '0', '1'),
(1187, 'Irvan P. Manik', 'ear_funsz@yahoo.com', '081351011818', '', 0, 0, '195152400', 0, 0, 'Jl. Kuripan RT.08 No. 13 Banjarmasin', '', 4, 2, 0, 15, 4, 3, 'DA517VA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0218', '0', '1'),
(1188, 'Andry Setiawan', 'andri_s09@yahoo.co.id', '085710348889', '', 0, 0, '208371600', 0, 0, 'Jl. Peninggaran Timur II No.21 RT 009/09 Kebayoran Lama Utara 12240', '', 4, 15, 0, 13, 4, 0, 'B801WI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0219', '0', '1'),
(1189, 'Dwi Bagus Wicaksono', 'masbagus80@gmail.com', '081251356777', '', 0, 0, '337626000', 0, 0, 'Jl. A. Yani No. 67 Gurah Kediri Jawa Timur 64181', '', 4, 23, 0, 13, 3, 0, 'AE1586EJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0220', '0', '1'),
(1190, 'Risco Herlambang Matulessy', ' - ', '0817426483', '', 0, 0, '64774800', 0, 0, 'Komp. Griya Caraka Blok F120 Parakan Saat Cingised Bandung', '', 4, 16, 0, 13, 4, 3, 'D333FE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0221', '0', '1'),
(1191, 'Linkin Steven Lie', 'autorotarypusat@yahoo.com', '0811879279', '', 0, 0, '66675600', 0, 0, 'Jl. Pelangi Kuning B9T No. 33 The Gading Residence Jak-ut 14250', '', 4, 13, 0, 13, 4, 0, 'B2226QB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0222', '0', '1'),
(1192, 'Konikurniayunus', 'koni_aza.1000ligir@yahoo.co.id', '082126130009', '', 0, 0, '353955600', 0, 0, 'Jl. Jinggakomara Wetan No. 2 Kota Baru Parahyangan', '', 4, 16, 0, 13, 4, 0, 'B2622I', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0223', '0', '1'),
(1193, 'Agus Adhari Prihastanto', 'prihast@gmail.com', '08156021276', '', 0, 0, '218307600', 0, 0, 'Sukamulya No. 66 Sukagalih, Sukajadi Bandung', '', 4, 16, 0, 13, 3, 0, 'D490ES', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0224', '0', '1'),
(1194, 'Hanny Kartanegara', 'hannykartanegara@yahoo.com', '085210000066', '', 0, 0, '110134800', 0, 0, 'Jl. Raya Cileungsi - Jonggol Kav 168', '', 4, 15, 0, 13, 3, 0, 'B2648TQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0225', '0', '1'),
(1195, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 13, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0226', '0', '1'),
(1196, 'F. Rogan (Doopy)', 'doopyroganteng@yahoo.co.id', '087770051333', '', 0, 0, '342205200', 0, 0, 'Jl. Tumapel 24 Cimanggu Permai Bogor 16164', '', 4, 15, 0, 11, 4, 0, 'F1165CG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0227', '0', '1'),
(1197, 'Aman Leonard Hendrick', '', '', '', 0, 0, '31510800', 0, 0, ' ', '', 4, 13, 0, 13, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0228', '0', '1'),
(1198, 'Rudy Jusuf', 'ray2912@gmail.com', '02132351212', '', 0, 0, '473101200', 0, 0, 'Jl. Danau Sunter Utara J 12 No. 25-26 Sunter', '', 4, 13, 0, 13, 4, 3, 'B1688MS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0229', '0', '1'),
(1199, 'R. Ismiyarto', 'cipta_instrument@yahoo.com', '08170935555', '', 0, 0, '73155600', 0, 0, 'Blok Mina JI No. 06 Ilhami Karawaci Tangerang', '', 4, 12, 0, 13, 3, 0, 'B386MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0230', '0', '1'),
(1200, 'Faa Arzhianty', 'faa_arzhianty@yahoo.com', '085759955558', '', 0, 0, '689274000', 0, 0, 'Jl. Carina Sayang 83 Bojong RT 09/12 Rawa Buaya Cengkareng', '', 4, 12, 0, 13, 2, 3, 'B174AYU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0231', '0', '1'),
(1201, 'Ruyatno', 'ardafa@gmail.com', '081514636490', '', 0, 0, '-19119600', 0, 0, 'Jl. Bukit Tiram Blok O No. 18 Jatiwaringin Asri', '', 4, 14, 0, 13, 4, 0, 'B464RUY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0232', '0', '1'),
(1202, 'Wahyu Wigati', 'wigati_wahyu@yahoo.com', '085719765946', '', 0, 0, '-9961200', 0, 0, 'Pondok Widyatama Indah Blok C No. 8 Pondok Rajeg, Cibinong Bogor', '', 4, 15, 0, 13, 4, 3, 'F1101GU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0233', '0', '1'),
(1203, 'Rayner Ambat Santoso', 'rayner_as@yahoo.com', '081321111058', '', 0, 0, '499626000', 0, 0, 'Villa Istana Bunga N-3A/O-10 Bandung', '', 4, 16, 0, 13, 4, 3, 'D1241RS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0234', '0', '1'),
(1204, 'Jonjon Muhamad Nurzan', 'jonjonmuhamad@yahoo.com', '0878871720918', '', 0, 0, '21315600', 0, 0, 'Komp. Cigadung Indah Jl. Teratai Blok D/25 Pandeglang Banten', '', 4, 12, 0, 13, 3, 0, 'B1418TLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837425', '', 0, '0235', '0', '1'),
(1205, 'Franki', 'franki_wen@yahoo.com', '081808182268', '', 0, 0, '-26895600', 0, 0, 'Summarecon Serpong Cluster Turquiose, Jl. Turquiose Barat No. 8', '', 4, 12, 0, 13, 4, 0, 'B277FRA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0236', '0', '1'),
(1206, 'Petrus Kurniawan', 'petruskurniawan@yahoo.com', '08811230037', '', 0, 0, '37213200', 0, 0, 'Jl. Musik Raya Blok E No. 7 RT 08/10 Kelapa Gading 14250', '', 4, 13, 0, 13, 4, 0, 'B1936PJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0237', '0', '1'),
(1207, 'Hendra Hutabarat', 'alanis.barat@yahoo.com', '08129173921', '', 0, 0, '31510800', 0, 0, 'Jl. Cililitan Besar No. 9 Kel Kebon Pala', '', 4, 13, 0, 13, 3, 0, 'B703DY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0238', '0', '1'),
(1208, 'David Lin', 'davidoffbali@yahoo.com', '08123802228', '', 0, 0, '238438800', 0, 0, 'Jl. By Pass Ngurah Rai gg. Karangsari No. 8 Kedonganan - Bali', '', 4, 2, 0, 13, 4, 0, 'DK24RA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0239', '0', '1'),
(1209, 'Andrianto Tetuko Putro', 'andrie_tetuko@yahoo.com', '081214471946', '', 0, 0, '498589200', 0, 0, 'Jl. Tawekal No. 12 RT 03/08 Kel Pasteur Kec. Sukajadi Bandung', '', 4, 16, 0, 13, 3, 3, 'D1320LA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0240', '0', '1'),
(1210, 'Erwin Kurniadi', 'erwin0021@yahoo.com', '087881168168', '', 0, 0, '183747600', 0, 0, 'Kacapiring No. 21 Tomang Jakarta Barat', '', 4, 12, 0, 13, 4, 0, 'B1431HZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0241', '0', '1'),
(1211, 'Ardiman', 'ardimansone@yahoo.com', '0811742665', '', 0, 0, '-48841200', 0, 0, 'Jl. Yos Sudarso No. 54 Kerinci', '', 4, 9, 0, 13, 4, 0, 'BA50NE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0242', '0', '1'),
(1212, 'Albert Wijaya', 'alberthzt@yahoo.com', '08170785670', '', 0, 0, '625597200', 0, 0, 'Taman Alfa Indah', '', 4, 13, 0, 13, 3, 0, 'B8858AW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0243', '0', '1'),
(1213, 'Anantyo', 'anantyokez@yahoo.com', '08551060869', '', 0, 0, '-12812400', 0, 0, 'Jl Rantai Mas III G-40 KPAD Bulak Rantai Kramat Jati Jakarta 13540', '', 4, 13, 0, 13, 4, 3, 'B281KEZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0244', '0', '1'),
(1214, 'Ashadi Maryanto', 'adhie_dik@yahoo.com', '08117207297', '', 0, 0, '259866000', 0, 0, 'Jl. Dempo 3 No 19B Labuhan Ratu Kedaton - Bandar Lampung', '', 4, 13, 0, 13, 3, 3, 'B8483KS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0245', '0', '1'),
(1215, 'Ridlwan Khairul', 'erka_702@yahoo.com', '0811177626', '', 0, 0, '288550800', 0, 0, 'Kalibata Residence Tower Cendana Lt. 12', '', 4, 13, 0, 13, 3, 0, 'B8163FF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0246', '0', '1'),
(1216, 'Andi Santoso', 'andi@sdi.net.id', '0817131386', '', 0, 0, '31510800', 0, 0, 'Perumahan Pondok Cibubur', '', 4, 13, 0, 13, 4, 0, 'B640MAR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0247', '0', '1'),
(1217, 'Deddy Pramono', 'pramonod@indosat.blackberry.com', '08164841860', '', 0, 0, '190486800', 0, 0, 'Jl. Petojo VIY IV No. 14 C Jakarta Pusat 10150', '', 4, 13, 0, 13, 3, 0, 'B1405UR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0248', '0', '1'),
(1218, 'M. Denny Hamdani', 'm.dennyha@gmail.com', '0811219419', '', 0, 0, '289760400', 0, 0, 'Kebagusan Kecil No. 35 Lenteng Agung Jakarta Selatan', '', 4, 15, 0, 13, 3, 3, 'B910WZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0249', '0', '1'),
(1219, 'Teguh Arif Hidayat', 'teguharif.h@gmail.com', '08119950971', '', 0, 0, '429296400', 0, 0, 'Jl. AMD V No. 47b RT002/10 Pertukangan Pesanggrahan', '', 4, 15, 0, 13, 4, 1, 'B451ANA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0250', '0', '1'),
(1220, 'Indra Fauzi', 'indra_fauzi@sigma.co.id', '081380661040', '', 0, 0, '183315600', 0, 0, 'Perum Tataka Puri Blok J14 No. 55 Bitung Tangerang', '', 4, 12, 0, 13, 3, 0, 'B8817LJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0251', '0', '1'),
(1221, 'Michael Jonathan Gani', 'm_jonathan_gani_86@yahoo.com', '0818860106', '', 0, 0, '517942800', 0, 0, 'Jl. Jeruk Manis 1 No. 18 TR001/006 Duri Kepa Jakarta Barat', '', 4, 12, 0, 13, 3, 0, 'B8316MZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0252', '0', '1'),
(1222, 'Syamsul Bahri', 'syamsulife@gmail.com', '08176845858', '', 0, 0, '0', 0, 0, 'Kota Wisata Pesona Orlando Blok RB 5/8 Cibubur 16968', '', 4, 13, 0, 13, 3, 0, 'B8381DA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0253', '0', '1'),
(1223, 'Gatot Eka Soemarno', 'mgttcrv@yahoo.com', '08176460371', '', 0, 0, '-26463600', 0, 0, 'Jl. Mertilang XV/KA-9 No. 22 Bintaro IX Tangerang', '', 4, 12, 0, 13, 3, 0, 'B1113BLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0254', '0', '1'),
(1224, 'Bagus', 'baguspanular@gmail.com', '081218531385', '', 0, 0, '31510800', 0, 0, 'Perumahan Kenari Blok 2C No. 3', '', 4, 13, 0, 13, 3, 3, 'B2474SS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0255', '0', '1'),
(1225, 'Maryadi', 'maryadi_atm@yahoo.com', '081945000999', '', 0, 0, '-245835000', 0, 0, 'Masnaga Blok B/21 Pulo Gebang Cakung Jakarta Timur', '', 4, 13, 0, 13, 4, 0, 'B1903GP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0256', '0', '1'),
(1226, 'Muamar Kadafi', 'mr.khadafi@gmail.com', '085693333282', '', 0, 0, '560106000', 0, 0, 'Jl. Fatahillah No. 3 Ciwandan Cilegon', '', 4, 12, 0, 13, 4, 0, 'A1719VE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0257', '0', '1'),
(1227, 'Aly Rasyid', 'aly.rasyid@gmail.com', '08111085034', '', 0, 0, '135968400', 0, 0, 'Komp. Purigading Blok PGUR No. 29 Pondok Melati Bekasi', '', 4, 14, 0, 13, 4, 0, 'B1548KJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0258', '0', '1'),
(1228, 'Budi Darmawan', 'budi_darmawan8@yahoo.com', '0811602523', '', 0, 0, '226602000', 0, 0, 'Jl. Pramuka No. 331-B Komp. Pertamina Prabumulih, Kota Prabumulih', '', 4, 10, 0, 13, 4, 0, 'B1114CJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0259', '0', '1'),
(1229, 'Pepep Rukmana', 'prukmana2012@gmail.com', '087819368444', '', 0, 0, '75488400', 0, 0, 'Jl. Merkuri Selatan No. 22 Margahyu Raya Bandung', '', 4, 16, 0, 13, 4, 0, 'D1403QX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0260', '0', '1'),
(1230, 'Benny Dwinanto', 'benny.dwinanto@yahoo.com', '085888117771', '', 0, 0, '497552400', 0, 0, 'Jl. Jamblang Indah II No. 7 Jakarta Barat', '', 4, 12, 0, 13, 4, 3, 'B1225OL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0261', '0', '1'),
(1231, 'Zulyan Imansyah', 'z_ims@yahoo.com', '0811710791', '', 0, 0, '159987600', 0, 0, 'Jl. Petang No. 8 Komp. Pusri Palembang', '', 4, 10, 0, 13, 4, 0, 'BG1975AI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0262', '0', '1'),
(1232, 'Andi Amarta Legawa Saoutra', 'andy_amarta@yahoo.co.id', '0811190878', '', 0, 0, '272307600', 0, 0, 'Jl. Mertilang VII Blok KA 5 No. 10 Bintaro Jaya', '', 4, 12, 0, 13, 4, 0, 'B41RFP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0263', '0', '1'),
(1233, 'Anasthasia Sri Handayani', 'thasia@theelysian.com', '081338010070', '', 0, 0, '31510800', 0, 0, 'Jl. Kerta Winangung II No. 10 Sidakarya, Denpasar Bali', '', 4, 2, 0, 13, 4, 0, 'DK648EA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0264', '0', '1'),
(1234, 'Hari Wibowo', 'wibowo_ir@yahoo.com', '081808030108', '', 0, 0, '276627600', 0, 0, 'Jl. Kampus VII No. 26 Bandung', '', 4, 16, 0, 13, 3, 0, 'D1348NL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0265', '0', '1'),
(1235, 'Ade Gumilar', 'agumlr@yahoo.co.id', '081280612789', '', 0, 0, '150829200', 0, 0, 'Jl. Pelabuhan II KM 6 Warungkalapa No. 7 Sukabumi', '', 4, 15, 0, 13, 4, 0, 'F13SV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0266', '0', '1'),
(1236, 'Rusmin Widjaja', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 13, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0267', '0', '1'),
(1237, 'Triatmojo Widyo Saputro', 'modjo_sahara@yahoo.com', '081285277510', '', 0, 0, '560797200', 0, 0, 'Griya Kencana II Blok P/28 003/015 Sudimora Barat - Tangerang', '', 4, 12, 0, 13, 4, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0268', '0', '1'),
(1238, 'Arman Z ST SH MH CFE', 'arman_st@yahoo.com', '081260101060', '', 0, 0, '52678800', 0, 0, 'Jl. Demang Lebar Daun Komp. Puri Demang Raya Blok Flamboyan - Palembang - Sumatra Selatan ', '', 4, 10, 0, 13, 4, 1, 'BG721CA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0269', '0', '1'),
(1239, 'Astri Nurdin', 'astri2310@gmail.com', '0811172310', '', 0, 0, '31510800', 0, 0, 'Jl. Madrasah, Taman Gandaria No. 23 Jakarta Selatan', '', 4, 15, 0, 13, 4, 3, 'B23TRI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0270', '0', '1'),
(1240, 'Razi Permana', 'razi_jakarta@yahoo.com', '08118112396', '', 0, 0, '14490000', 0, 0, 'Mutiara Deposk Blok CD-5 RT/RW001/013 Sukmajaya Depok 16412', '', 4, 15, 0, 13, 4, 3, 'B222NRZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0271', '0', '1'),
(1241, 'Mohammad Firdaus', 'firdaus_idos@yahoo.com', '081286594942', '', 0, 0, '519152400', 0, 0, 'Jl. Qrisdoren 2 No. 11 Sukabumi Utara', '', 4, 15, 0, 13, 4, 3, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0272', '0', '1'),
(1242, 'Mangasatua Sianipar', 'napunitano@yahoo.com', '08129638817', '', 0, 0, '-122454000', 0, 0, 'Medang Lestari Blok D.14/G-11 Tangerang 15820', '', 4, 12, 0, 13, 3, 0, 'B819XF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0273', '0', '1'),
(1243, 'Rizwan Nur Hamzah', 'rizwan.nurhamzah@yahoo.com', '081281112387', '', 0, 0, '566931600', 0, 0, 'Pavillion Residence Blok A5/05 BSD', '', 4, 12, 0, 13, 3, 0, 'B8679DY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0274', '0', '1'),
(1244, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 13, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0275', '0', '1'),
(1245, 'Sunarto', '5caknarto@gmail.com', '081219762627', '', 0, 0, '168714000', 0, 0, 'Jl. Pepaya 12 Komp. Paninggilan Permai, Parung Tangerang', '', 4, 12, 0, 13, 4, 0, 'B1511VJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0276', '0', '1'),
(1246, 'Dibyo Saputro', 'ab1818ib@yahoo.com', '08122997489', '', 0, 0, '298832400', 0, 0, 'Jetis, Bantul, Jogjakarta', '', 4, 20, 0, 13, 3, 0, 'AB1818IB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837426', '', 0, '0277', '0', '1'),
(1247, 'Asiang', 'asiank@bosen-gadget.com', '081385737473', '', 0, 0, '482432400', 0, 0, 'Kavling Polri Blok DX No. 1083 A Jelambar Jakarta Barat', '', 4, 12, 0, 14, 4, 1, 'B13CRV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0278', '0', '1'),
(1248, 'Sabur Nugraha', '', '081398903888', '', 0, 0, '31510800', 0, 0, 'Mutiara Gading Timur C19/10 Rt 04/24 Mustika Jaya Bekasi', '', 4, 14, 0, 14, 4, 0, 'B1004KLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0279', '0', '1'),
(1249, ' ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0280', '0', '1'),
(1250, 'Ery Junaidi M', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0281', '0', '1'),
(1251, 'Eski', 'tidoris@gmail.com', '0818404535', '', 0, 0, '-71391600', 0, 0, 'BSD City Puspitaloka G8 No. 10 Serpong', '', 4, 12, 0, 14, 4, 3, 'B35KI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0282', '0', '1'),
(1252, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0283', '0', '1'),
(1253, '', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0284', '0', '1'),
(1254, 'Moch. Tolchah Amin', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0285', '0', '1'),
(1255, 'Asep Sunara', 'asep_sunara@yahoo.com', '08997203256', '', 0, 0, '541357200', 0, 0, 'Jarong kulon RT. 009 RW. 004 Desa Kiara Kec. Cilamaya Kulon Kab. Karawang 41384', '', 4, 13, 0, 14, 3, 0, 'B1077CP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0286', '0', '1'),
(1256, 'Susana Kezia', '', '', '', 0, 0, '31510800', 0, 0, '  ', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0287', '0', '1'),
(1257, 'Wahyu Pambudi Wicaksono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0288', '0', '1'),
(1258, 'Ahmad Khuroni', 'ronny_ahmad45@yahoo.com', '083871676364', '', 0, 0, '9478800', 0, 0, 'Pondok Kopi RT 006/07 Kel. Pondok Kopi', '', 4, 13, 0, 14, 3, 0, 'B8264OG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0289', '0', '1'),
(1259, 'Umar Asegaf', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0290', '0', '1'),
(1260, 'Muhammad Aditya Pramana', 'mrpramana@yahoo.com', '082112798100', '', 0, 0, '692125200', 0, 0, 'Komp. BDN Jl. Transfer A4 No. 8 RT 06 RW 07 Kec. Pancoran Mas', '', 4, 15, 0, 14, 3, 0, 'B3QO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0291', '0', '1'),
(1261, 'Lambok Simanjuntak', 'lambok.simanjuntak@gmail.com', '081410065562', '', 0, 0, '31510800', 0, 0, 'Apartemen Cempaka Mas Tower A1 Lt. 19 No. 8', '', 4, 13, 0, 14, 4, 3, 'B264BBY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0292', '0', '1'),
(1262, 'Rudi Wage Suparman', 'ruddywage@yahoo.co.id', '0817202542', '', 0, 0, '39286800', 0, 0, 'Jl. Cibangkong 270/120 RT 08/07 Gatot Subroto Bandung', '', 4, 16, 0, 14, 4, 0, 'D1302JS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0293', '0', '1'),
(1263, 'Herry Priyono', 'herry560rfs@yahoo.com', '0811817708', '', 0, 0, '-304327800', 0, 0, 'Jl. Tirta Raya F 306 PAM Jaya', '', 4, 12, 0, 14, 4, 3, 'B560RFS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0294', '0', '1'),
(1264, 'Anto Kadyanto', 'anto.kadyanto@gmail.com', '081354119308', '', 0, 0, '-119602800', 0, 0, 'Kampung Ubud Blok F7 No. 20 Bali View Cirendeu', '', 4, 15, 0, 14, 4, 3, 'B319ANT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0295', '0', '1'),
(1265, 'Gunawan', 'archiguna@ymail.ocm', '085647020222', '', 0, 0, '566586000', 0, 0, 'Paesan Tengah RT 03/06 Kedungwuni pekalongan', '', 4, 23, 0, 14, 4, 0, 'AD70EN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0296', '0', '1'),
(1266, 'Hery Sutjahjo', 'hery.sutjahjo@len.co.id', '081321208761', '', 0, 0, '-71910000', 0, 0, 'Jl. Hasan Saputra III No. 8 Bandung 40264', '', 4, 16, 0, 14, 4, 0, 'D308HES', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0297', '0', '1'),
(1267, 'Bambang S.', 'supriyadi.bambang@rocketmail.com', '0811161603', '', 0, 0, '-113382000', 0, 0, 'Pavilion Residence A1 No. 3 BSD Tangerang', '', 4, 12, 0, 14, 4, 1, 'B305BMB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0298', '0', '1'),
(1268, 'Indra Sukmawi jaya', 'indra_produksi@yahoo.com', '0811204945', '', 0, 0, '69181200', 0, 0, 'Jl. Alipin No. 6 Lengkong Kecil Bandung', '', 4, 16, 0, 14, 4, 0, 'D1839NE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0299', '0', '1'),
(1269, 'Setiono Pambudi Utomo', 'setio_p@yahoo.com', '08561182770', '', 0, 0, '143917200', 0, 0, 'Jl. Percetakan Nrgara VI/21 Jakpus', '', 4, 13, 0, 14, 4, 1, 'B752SET', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0300', '0', '1'),
(1270, 'Daud Radhitya Cieptanto', 'dradto_st@yahoo.com', '08129775710', '', 0, 0, '373568400', 0, 0, 'Jl. Cipinang Bali II No. 17 Cipinang Muara Jakarta Timur', '', 4, 13, 0, 14, 4, 0, 'B8564MU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0301', '0', '1'),
(1271, 'Immanuel Adam ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0302', '0', '1'),
(1272, 'Iwan Hartono', 'mioireng@gmail.com', '081329179343', '', 0, 0, '217962000', 0, 0, 'Mangunharjo RT01/02 Kel. Tugu Semarang', '', 4, 23, 0, 14, 4, 0, 'H7182KH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0303', '0', '1'),
(1273, 'Aditiajaya', 'adtjaya67@gmail.com', '081807912136', '', 0, 0, '-81500400', 0, 0, 'Jl. Cempedak IV No. 154 Perumahan Jatimulya', '', 4, 15, 0, 14, 3, 0, 'B8332BM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0304', '0', '1'),
(1274, 'Helmi Hosen', 'he;mi.hosen@gmail.com', '087889811229', '', 0, 0, '513363600', 0, 0, 'Jl. Asem Baris Raya No. 171', '', 4, 12, 0, 14, 3, 0, 'B2626RY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0305', '0', '1'),
(1275, 'Barliaman', 'barlie.lagi@gmail.com', '081808771002', '', 0, 0, '282157200', 0, 0, 'Jl. Kenangan II No. 8 Jatibening II Pd. Gede Bekasi', '', 4, 14, 0, 15, 3, 0, 'B1101WCV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0306', '0', '1'),
(1276, 'Yudarwin Tridarmawan', 'ytridarmawan@yahoo.fr/triyudi@gmail.com', '081298749914', '', 0, 0, '110480400', 0, 0, 'Jl. Anggur Barat V/2 Cipete Jakarta Selatan 12410', '', 4, 15, 0, 14, 4, 3, 'B1897SJH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0307', '0', '1'),
(1277, 'Teguh Imam S', 'teguh_imam88@yahoo.co.id', '081310222015', '', 0, 0, '474915600', 0, 0, 'Jl. Kramat gg. Mushola RT15/011 Cilandak Timur Jakarta Selatan', '', 4, 15, 0, 15, 3, 0, 'B8400LZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0308', '0', '1'),
(1278, 'Lisanudin', 'lisanudin17@yahoo.co.id', '08124849346', '', 0, 0, '44470800', 0, 0, 'Jl. Urip Sumoharjo Perum Panglima Sudirman Regency No.A14 Tulungagung - Jawa Timur', '', 4, 23, 0, 15, 4, 3, 'AG1591RL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0309', '0', '1'),
(1279, 'Budisetiawan Muchtar', 'budisetiawan97@gmail.com', '081385209892', '', 0, 0, '-150706800', 0, 0, 'Villa Galaxy Jl. Taman Edelweis Barat Blok B7 No. 33 Bekasi 17147', '', 4, 14, 0, 14, 4, 3, 'B1623KJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0310', '0', '1'),
(1280, 'Fauridz Umabuana (Ferry)', 'fauridz@yahoo.com', '0811836785', '', 0, 0, '-353489400', 0, 0, 'Jl. H. Naman 69 RT 010/03 Pondok Kelapa Jakarta Timur', '', 4, 13, 0, 14, 3, 0, 'B8133GD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0311', '0', '1'),
(1281, 'Agus Saptono', 'saptonoseven@yahoo.com', '081381935475', '', 0, 0, '173898000', 0, 0, 'Cluster Blossom Ville W3 No. 3 Citra Raya Tangerang', '', 4, 12, 0, 14, 4, 0, 'B8668SB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0312', '0', '1'),
(1282, 'Hendra Cahya', 'hendrabumida@hotmail.com', '08128313790', '', 0, 0, '357325200', 0, 0, 'Pulo Gebang Permai Blok G6 No. 26 Pulo Gebang Cakung', '', 4, 13, 0, 14, 4, 0, 'B1250JJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0313', '0', '1'),
(1283, 'Hindrawan', 'hindrawan.ari@gmail.com', '081510813220', '', 0, 0, '355942800', 0, 0, 'Perumahan Griya Cilodong Kota Depok', '', 4, 15, 0, 14, 3, 0, 'B1910ELO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0314', '0', '1'),
(1284, 'Wawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0315', '0', '1'),
(1285, 'Vicky', 'khouw_v@yahoo.com', '087887740928', '', 0, 0, '784400400', 0, 0, 'Jl. Sinar Hati VII No. 25 Karawaci Tangerang', '', 4, 12, 0, 14, 4, 1, 'B805VKY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0316', '0', '1'),
(1286, 'May Reza Arafah, SE', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0317', '0', '1'),
(1287, 'Mas Basthomi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 14, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0318', '0', '1'),
(1288, 'Ikhsan Pratama HM', 'ikhsan.pratama@gmail.com', '02278321370857214721', '', 0, 0, '470768400', 0, 0, 'Cigending No.6 RT 01/10 Kel. Pasirwangi Kec. Ujungberung Kota Bandung', '', 4, 16, 0, 14, 3, 3, 'D1501WR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837427', '', 0, '0319', '0', '1'),
(1289, 'Ilham', 'ilhamnairfa@gmail.com', '081380800932', '', 0, 0, '48704400', 0, 0, 'Grand Prima Bintara C4 No. 10 Bekasi Barat', '', 4, 14, 0, 14, 4, 0, 'B1330PT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0320', '0', '1'),
(1290, 'Abdul Muis Mappalotteng', 'abdulmuism@gmail.com', '0811418101', '', 0, 0, '-6505200', 0, 0, 'BTN Manggarupi Permai Blok B5 No.1 Sungguminasa Gowa', '', 4, 10, 0, 14, 3, 0, 'DD414JW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0321', '0', '1'),
(1291, 'Imran Kadis', 'bonky2903@gmail.com', '081288869007', '', 0, 0, '-24044400', 0, 0, 'Perumahan Persada Depok Blok A3/7 Cimanggis Depok', '', 4, 15, 0, 14, 4, 0, 'B988LY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0322', '0', '1'),
(1292, 'A.Firdaus Assyairozi', 'idos_crv@yahoo.com', '08122667107', '', 0, 0, '361040400', 0, 0, 'Perumahan Pakembaran Regency No.1 Jl. K.S Tubun Slawi Tegal', '', 4, 18, 0, 14, 3, 3, 'D1220HO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0323', '0', '1'),
(1293, 'Linda Sartika', 'linda.sartika@gmail.com', '081572169299', '', 0, 0, '19674000', 0, 0, 'Jl. Riung Mungpulung III No 144 Komp. Riung Bandung', '', 4, 16, 0, 14, 4, 0, 'D803DS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0324', '0', '1'),
(1294, 'Doni Ramdhani', 'dony.ramdhani@gmail.com', '087888960642', '', 0, 0, '362854800', 0, 0, 'Jl. Krukut Raya Gg Galur No. 91 Cinere Depok', '', 4, 15, 0, 14, 4, 0, 'B1177XY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0325', '0', '1'),
(1295, 'Yohanees Hutagalung', 'yohanees.hutagalung@gmail.com', '0811117178', '', 0, 0, '454784400', 0, 0, 'Jl. Radar Auri Komp. DEPKOP B/21 RT01/15 Cimanggis Depok', '', 4, 15, 0, 14, 4, 0, 'B361GA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0326', '0', '1'),
(1296, 'Wahyu Hidayat S.Psi.,M.A', 'wehaweha@ymail.com', '08197397299908132937', '', 0, 0, '221504400', 0, 0, 'Jl. Godean KM 4.5 Perumahan Tata Bumi Patran Regency 2 No. B5', '', 4, 20, 0, 14, 4, 1, 'AB123NE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0327', '0', '1'),
(1297, 'Puguh Yuniantoko', 'puguh.yuniantoko@yahoo.com', '08129445634908129181', '', 0, 0, '644173200', 0, 0, 'Perumahan Bukit Cengkeh 1 Jalan Tanjung Karang B6 No. 2 Depok', '', 4, 15, 0, 14, 4, 0, 'B8287TS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0328', '0', '1'),
(1298, 'Erwinsah', 'teserwin@gmail.com', '085764577755', '', 0, 0, '655059600', 0, 0, 'Jl. Pipa RT.11/03 No. 3664 Lembang Siarang Kec. Sukabumi Palembang 30151', '', 4, 10, 0, 14, 4, 3, 'BG1629K', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0329', '0', '1'),
(1299, 'Anton Hartono', 'antonhar68@yahoo.com', '0811882887', '', 0, 0, '-35622000', 0, 0, 'Perum Permata Mediterania Jl. Safir Raya No. 2', '', 4, 13, 0, 15, 4, 0, 'B1567LH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0330', '0', '1'),
(1300, 'Heryadi Susanto', 'heryadi.susanto@yahoo.com', '08131238032408121308', '', 0, 0, '145472400', 0, 0, 'Komp. Polri Cipinang Empang No.22', '', 4, 13, 0, 15, 4, 0, 'B2955MG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0331', '0', '1'),
(1301, 'Santoso', 'santoso_mag@yahoo.com', '081314642177', '', 0, 0, '-58604400', 0, 0, 'Mutiara Gading Timur C15/10 Bekasi Timur', '', 4, 14, 0, 15, 3, 0, 'B8390V', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0332', '0', '1'),
(1302, 'Andar Teguh Arifin ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0333', '0', '1'),
(1303, 'Bambang Permadi (Doddy)', 'rafsanbp@yahoo.co.id', '08127864281', '', 0, 0, '-66121200', 0, 0, 'Perumnas Prabu Indah Blok E3 No. 6 Prabumulih - SumSel', '', 4, 10, 0, 15, 3, 3, 'BG1065MD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0335', '0', '1'),
(1304, 'Bambang Novinato', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0336', '0', '1'),
(1305, 'Indra Kurniawan', 'indra.finro@gmail.com', '082262621971', '', 0, 0, '57171600', 0, 0, 'Komp. Kehakiman Jl. Pengayoman I/69H Jakarta Timur', '', 4, 13, 0, 15, 4, 0, 'B1559SJD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0337', '0', '1'),
(1306, 'Hadeas Hopi Asari', 'hadeas@yahoo.com', '08122030742', '', 0, 0, '249238800', 0, 0, 'Perumahan The Address Cluster 2 Blok G No. 36 Depok - 16456', '', 4, 15, 0, 15, 4, 1, 'B424DEA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0338', '0', '1'),
(1307, 'Chaca Darmawan', 'lisa.darmawan@anggana.co.id', '087782008183', '', 0, 0, '356893200', 0, 0, 'Jl. Pluit Raya Kav. 20-21, Penjaringan, Jakarta Utara - 14440', '', 4, 13, 0, 15, 4, 3, 'B8988MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0339', '0', '1'),
(1308, 'Rendi Rijaldi Purnama Purwansa', 'rendi_06@yahoo.com', '085726586304', '', 0, 0, '647197200', 0, 0, 'Jl. Setiarasa No. 6A RT. 001 / RW. 003 Desa Sukamulya Kec. Bungursari - Tasikmalaya', '', 4, 16, 0, 15, 3, 0, 'D1862PT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0341', '0', '1'),
(1309, 'Arif Nur Anwar', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0342', '0', '1'),
(1310, 'Heru Iswanto ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0343', '0', '1'),
(1311, 'Defi Rustami', 'd.rustami@yahoo.com', '081219178611', '', 0, 0, '451760400', 0, 0, 'Pondok Pekayon Indah Jl. Pakis Raya Blok AA.15 No. 01 Bekasi Selatan', '', 4, 14, 0, 15, 4, 0, 'B1638YE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0344', '0', '1'),
(1312, 'Dino Novianto', 'dinov16@gmail.com', '082111019397', '', 0, 0, '59072400', 0, 0, 'Jl. Jati Emas Blok E2 No. A3, Kav. UI sektor Barat, Tanah Baru - Depok 16426', '', 4, 12, 0, 15, 4, 3, 'B1511OO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0345', '0', '1'),
(1313, 'Mujahidin Nur', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0347', '0', '1'),
(1314, 'Vidi Asa Januarsa', 'neo_ulyanov@yahoo.co.id', '082131114420', '', 0, 0, '821638800', 0, 0, 'Mojoranagung RT02/04 Winoayu sidoarjo', '', 4, 23, 0, 15, 3, 0, 'W909NA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0348', '0', '1'),
(1315, 'Khairunnas Chaniago', 'anaschaniago@ymail.com', '081289411055', '', 0, 0, '391626000', 0, 0, 'Jl. Sekip Ujung No. 16 RT03/07 Matraman Jakarta Timur', '', 4, 13, 0, 15, 4, 0, 'B2640DJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0349', '0', '1'),
(1316, 'Evyline Angela', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 12, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0350', '0', '1'),
(1317, 'Aris Joko Pronoto', 'aris.pranoto@gmail.com', '081545911728', '', 0, 0, '232736400', 0, 0, 'Perum Sendok Indah KG II/No. 431, Kota Gede Yogyakarta', '', 4, 20, 0, 15, 4, 3, 'H7146JA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0351', '0', '1'),
(1318, 'Hermawan Budisusilo', 'h3rmaw4n_b@yahoo.com', '082110883108', '', 0, 0, '12070800', 0, 0, 'Kav. DKI Blok 76 No. 3 Meruya Utara Kembangan Jakarta Barat', '', 4, 12, 0, 14, 4, 0, 'B238MRB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0352', '0', '1'),
(1319, 'Ridho Elsag', 'ridho.elsag@yahoo.com', '085697104434', '', 0, 0, '739126800', 0, 0, 'Jl. Pangandaran Raya No. 9 RT05/04 Perum Suradita Kec. Cisauk Kab.Tangerang', '', 4, 12, 0, 15, 4, 3, 'B1094GLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0353', '0', '1'),
(1320, 'Alamsyah', 'alamsyahjkt@gmail.com', '087841933337', '', 0, 0, '31510800', 0, 0, 'Perum Graha Banguntapan GG, Duren Blok B.9 Yogjakarta', '', 4, 20, 0, 15, 3, 0, 'AB1033NA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0354', '0', '1'),
(1321, 'Andika Anshori Adil', 'andikanst@gmail.com', '08126326503', '', 0, 0, '31510800', 0, 0, 'Jl. Raya Menteng Gg. Setia No. 2E Medan', '', 4, 4, 0, 15, 3, 0, 'BK99H', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0355', '0', '1'),
(1322, 'Muklas Aris', 'muklasaris@gmail.com', '0811160491', '', 0, 0, '100112400', 0, 0, 'Taman Tanah Baru No. 99 A Blok A3/7 Tanah Baru Beji, Depok - 16426', '', 4, 15, 0, 15, 4, 3, 'B1501EJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0356', '0', '1'),
(1323, 'Daud Setiawan', 'indodatasejahtera@gmail.com', '081803120209', '', 0, 0, '335034000', 0, 0, 'Nginden Intan Barat C4/11 Surabaya', '', 4, 23, 0, 15, 4, 0, 'L555DS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0357', '0', '1'),
(1324, 'Ali Sodikin', 'alisodikinf@gmail.com', '081222305352', '', 0, 0, '31510800', 0, 0, 'Kp Pamoyana RT 04/03 Mekarmanik Cimeyan', '', 4, 16, 0, 15, 4, 1, 'D1538VZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0358', '0', '1'),
(1325, 'Edry Afnand', 'afnand89@gmail.com', '085365040070', '', 0, 0, '31510800', 0, 0, 'Jl. Lumba lumba No. 40 Tangkerang Selatan Pekanbaru - Riau', '', 4, 6, 0, 15, 4, 3, 'BM1266CB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0359', '0', '1'),
(1326, 'Tufeil Yuandra Junus', 'tufeil_yuandra@yahoo.co.id', '081332347282', '', 0, 0, '440614800', 0, 0, 'Jl. Ikan Gurami 5/32 Perak Barat ', '', 4, 23, 0, 15, 3, 0, 'B8777FF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0360', '0', '1'),
(1327, 'Tatan Taryana', 'arsyatan@gmail.com', '081312562489', '', 0, 0, '504896400', 0, 0, 'Permata Hijau Land C 05 RT006/011 Garut', '', 4, 17, 0, 15, 4, 3, 'D1000JN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0361', '0', '1'),
(1328, 'Janto Widjaya', 'wijayajanto@yahoo.com', '08113929199', '', 0, 0, '-30956400', 0, 0, 'Jl. Imam Bonjol Perum Sungai Gangga No. 36 Denpasar', '', 4, 2, 0, 15, 4, 1, 'DK574AM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0362', '0', '1'),
(1329, 'Ades Pamungkas', 'ades21pamungkas@gmail.com', '085267066137', '', 0, 0, '605466000', 0, 0, 'Jl. Palembang Jambi KM. 121 Sungai Lilin Kab. Muba', '', 4, 10, 0, 15, 3, 0, 'BG1977', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837428', '', 0, '0363', '0', '1'),
(1330, 'Arief Gondowibowo', 'arief_gond@yahoo.com', '081329102770', '', 0, 0, '335293200', 0, 0, 'Jl. Pala 3 No. 44 Mejasem Barat Tegal', '', 4, 18, 0, 15, 3, 3, 'G8367VP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0364', '0', '1'),
(1331, 'Agung Kristantyo Budiono', 'agoonkbudiono@gmail.com', '085739736308', '', 0, 0, '335466000', 0, 0, 'Perumahan Pucang Indah Blok T No. 19 Sidorajo 61219', '', 4, 23, 0, 15, 3, 0, 'P1406ZS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0365', '0', '1'),
(1332, 'Ivanaxis Mardianfaous', 'ivanaxismardianfaous@ymail.com', '087877294799', '', 0, 0, '297190800', 0, 0, 'Vila Kenali Permai Blok H10/1 Jambi', '', 4, 9, 0, 15, 4, 0, 'B1122XZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0366', '0', '1'),
(1333, 'Andante Candra', 'andan_97@yahoo.co.id', '0816693231', '', 0, 0, '283366800', 0, 0, 'Perumahan Griya I Blok Q1 RT04/04 Kel. Pendurenan', '', 4, 12, 0, 15, 3, 0, 'AD7499KB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0367', '0', '1'),
(1334, 'Dodi Lukman', 'dodilukman@gmail.com', '081314664131', '', 0, 0, '38077200', 0, 0, ' Jakarta', '', 4, 13, 0, 15, 4, 1, 'B511DLK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0368', '0', '1'),
(1335, 'Lufty Mohamad Lut', 'lutfyml@yahoo.co.id', '081909858212', '', 0, 0, '184006800', 0, 0, 'Kampung Rancatales RT4/4 Kelurahan Dragong - Serang', '', 4, 12, 0, 15, 4, 3, 'A124VY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0369', '0', '1'),
(1336, 'Farid Romadoni', 'donilockheart73@gmail.com', '082244104515', '', 0, 0, '486061200', 0, 0, 'Baratjaya 3 Nomor 74 Surabaya', '', 4, 23, 0, 15, 3, 0, 'L1799LV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0370', '0', '1'),
(1337, 'Selvan Martadinata, SE', 'sm_d33@yahoo.com', '081328069792', '', 0, 0, '383936400', 0, 0, 'Jl. Nangka Gg. Nangka VI No. 125 Kel. Kampung Baru Tanjung Pinang Riau', '', 4, 6, 0, 15, 4, 3, 'BP1067', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0371', '0', '1'),
(1338, 'Nanang Anton Nur Azis', 'nank_2011@yahoo.com', '081227722220', '', 0, 0, '501267600', 0, 0, 'Jl. Raya Grigak Kedawung RT. 01 RW. 04 Susukan Banjarnegara No. 12 Jateng', '', 4, 13, 0, 15, 4, 0, 'R8055DD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0372', '0', '1'),
(1339, 'M. Rusydi Ahmad', '', '08125850820', '', 0, 0, '31510800', 0, 0, 'Jl. Pakis I/11 Komp. Unmul Sidomulyo Samarinda 75116', '', 4, 24, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0373', '0', '1'),
(1340, 'Chairul Andriyan', 'chairulandriyan@yahoo.co.id', '081398777616', '', 0, 0, '317581200', 0, 0, 'Jl. Gandaria I No. 74 Ratu Jaya Depok', '', 4, 15, 0, 15, 3, 0, 'B8079DD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0374', '0', '1'),
(1341, 'Hari Mawardi', 'houmpahpah@yahoo.com', '081294633138', '', 0, 0, '123354000', 0, 0, 'Perum Bougenville Residence No. B2 Jl. Mesjid At Taqwa Gandul Cinere', '', 4, 15, 0, 15, 4, 3, 'B1447ZJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0375', '0', '1'),
(1342, 'Gatot Kotjo Nanggala', 'gatot@ksigarment.com', '08128186365', '', 0, 0, '-160729200', 0, 0, 'Anggrek Rosliana IV-H12 Kemanggisan Jakarta Barat 11480', '', 4, 12, 0, 15, 4, 3, 'B68DP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0376', '0', '1'),
(1343, 'Budi Murianto', 'bmurianto@gmail.com', '081387773645', '', 0, 0, '-177490800', 0, 0, 'Komp. Migas 55 No. 33 Joglo Jakarta Barat', '', 4, 12, 0, 15, 4, 0, 'B232ARS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0377', '0', '1'),
(1344, 'Romi Setiawan', 'romi1275@gmail.com', '081355158868', '', 0, 0, '31510800', 0, 0, 'Komp. Griya Tata Asri Blok A No. 1 Jl. Daeng Tata IV - Makasar, Sulawesi Selatan - 90224', '', 4, 25, 0, 15, 4, 0, 'DD1275XL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0378', '0', '1'),
(1345, 'Evander Hansen', ' - ', '08564713770', '', 0, 0, '721328400', 0, 0, 'Jl. Raya Wiyung Indah No. 17 (B-6) Surabaya', '', 4, 23, 0, 15, 4, 0, 'AD8387FF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0379', '0', '1'),
(1346, 'Yacob Sumardian Sumule', 'yacobsumardians@gmail.com', '081365505700', '', 0, 0, '-611652600', 0, 0, 'BTN Manggarupi Permai Blok B5 No.1 Sungguminasa Gowa Sul-sel', '', 4, 25, 0, 15, 4, 1, 'DD1494', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0380', '0', '1'),
(1347, 'Herry Kurniawan', 'kurniawanherry1313@gmail.com', '0813349330661', '', 0, 0, '432234000', 0, 0, 'Jl. Karang Anyar No. 17 RT19/008. Kel. Loktabat Utara, Banjarbaru', '', 4, 2, 0, 15, 4, 0, 'DA7041TPA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0381', '0', '1'),
(1348, 'Syahrullah', 'daenglau0310@gmail.com', '082348383374', '', 0, 0, '479235600', 0, 0, 'Gandul, Cinere Depok', '', 4, 15, 0, 15, 3, 0, 'DD462OJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0382', '0', '1'),
(1349, 'Keliq Riyantoro, SE', 'qlick88@gmail.com', '0817468837', '', 0, 0, '92422800', 0, 0, 'Jl. Pedes Godean KM.02 Kemusuk No. 88 Jogjakarta 55753', '', 4, 20, 0, 15, 4, 0, 'AB1858HB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0383', '0', '1'),
(1350, 'Bryand Ery E M Sianipar', 'bryand.sianipar@yahoo.com', '081382333428', '', 0, 0, '717958800', 0, 0, 'Jl. Kelapa Hibrida V Blok RA 15 No. 1 Kelapa gading Jakarta Utara', '', 4, 13, 0, 15, 4, 0, 'B1268JN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0384', '0', '1'),
(1351, 'Willy Hendra Nugraha', 'willy.nugraha8182@gmail.com', '082389012900', '', 0, 0, '347130000', 0, 0, 'Jl. Mangga Blok C/D 62 B RT 023 Kel. Bukit Datuk Kec. Dumai Selatan - Riau', '', 4, 6, 0, 15, 4, 1, 'BM1917RK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0385', '0', '1'),
(1352, 'Fiona Heni S', 'claudya.chasell@gmail.com', '08129926260878887886', '', 0, 0, '80154000', 0, 0, 'Kauman Gg 2 No. 26 Prajurit Kulon, Mojokerto, Jatim', '', 4, 23, 0, 15, 4, 3, 'L1358MZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0386', '0', '1'),
(1353, 'Wawan Setiyawan', 'wawan762002@gmail.com', '082191522801', '', 0, 0, '175626000', 0, 0, 'BTN Gn Empat RT 38 No. 18 Kelurahan Margomulyo Balikpapan', '', 4, 24, 0, 15, 4, 0, 'KT1759ZA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0387', '0', '1'),
(1354, 'Sarly Fong', 'Fontana88@yahoo.com', '081310101818', '', 0, 0, '221072400', 0, 0, 'Jl. Cemara Hijau 3 No. 39 Meadow Green Lippo Cikarang 17550', '', 4, 14, 0, 15, 4, 3, 'B888FFF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0388', '0', '1');
INSERT INTO `member` (`id_member`, `nama`, `email`, `hpwa`, `kemeja`, `prodomisilih`, `kabdomisilih`, `tgllahir`, `proalamat`, `kabalamat`, `alamat`, `kodepos`, `idjabatan`, `idchapter`, `idnonchapter`, `idtahununit`, `idkapasitasunit`, `idwarnaunit`, `nopolisi`, `norangka`, `nomesin`, `ktpsim`, `stnk`, `buktitransfer`, `photo`, `ppok`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idedit`, `nopung`, `statusnopung`, `statusregis`) VALUES
(1355, 'Cecep Suhaemi', 'evriojayadwitama@yahoo.co.id', '081911035036', '', 0, 0, '177699600', 0, 0, 'Lingkungan Beringin GG Perintis III No. 14 RT03/016 Kel. Serang Banten 42116', '', 4, 12, 0, 15, 4, 1, 'B1027CJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0389', '0', '1'),
(1356, 'Bambang Permadiyansach', 'n4n4nk@gmail.com', '08811216669', '', 0, 0, '249498000', 0, 0, 'Jl. Pangadengan Raya No. 1 RT 4/4 - 12770', '', 4, 15, 0, 15, 4, 0, 'B1319BJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0390', '0', '1'),
(1357, 'Idha Sudianto', 'idhasudianto@gmail.com', '081331212115', '', 0, 0, '31510800', 0, 0, 'Perum Mutiara Citra Asri Blok N4 No. 3 Sidoarjo Jatim 61272', '', 4, 23, 0, 15, 3, 0, 'L1306DY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0391', '0', '1'),
(1358, 'Fitri Ika Yulia', 'picca_117@yahoo.com', '0831177007700', '', 0, 0, '426704400', 0, 0, 'Cluster Harmoni - Kota Harapan Indah 2 Blok HZ-6/19 Tarumajaya Bekasi', '', 4, 14, 0, 15, 4, 0, 'B117RYU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0392', '0', '1'),
(1359, 'Rudy Kincoko', 'zulkifly999@gmail.com', '081282172199', '', 0, 0, '47926800', 0, 0, 'Jl. Taman Asri RT11/01 Blok M No. 27 Cipadu Larangan', '', 4, 12, 0, 15, 4, 0, 'B2592QP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0393', '0', '1'),
(1360, 'Arif Hidayat', 'arifsongep@gmail.com', '085643461888', '', 0, 0, '31510800', 0, 0, 'Kabunan Widodomartani Ngemplak Sleman Jogjakarta', '', 4, 20, 0, 15, 3, 3, 'AB1683WH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0394', '0', '1'),
(1361, 'S. Riady', 'adyy1989@gmail.com', '082376473838', '', 0, 0, '622832400', 0, 0, 'Jl. Apel 2 No. 65 Sukarame Bandar Lampung', '', 4, 11, 0, 15, 4, 0, 'B918AN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0395', '0', '1'),
(1362, 'Moh. Iqbal', 'iqbal_cyber@yahoo.com', '081284438989', '', 0, 0, '11034000', 0, 0, 'Komp. Kehutanan Sela kopi Blok C 14 pasir Mulya Bogor Barat 16118', '', 4, 2, 0, 15, 3, 1, 'F1331AW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0396', '0', '1'),
(1363, 'Adityo Kuncorojati', 'adityokuncorojati@gmail.com', '085648256453', '', 0, 0, '675622800', 0, 0, 'Rungkut Menanggal Harapan R-18 Surabaya', '', 4, 23, 0, 15, 3, 3, 'L1586EV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0397', '0', '1'),
(1364, 'Edi Suranta T', 'edstarg@gmail.com', '081294111451', '', 0, 0, '122058000', 0, 0, 'Apt Sudirman Park Unit B46 BHN Jl. KH Mas Mansyur', '', 4, 13, 0, 15, 4, 0, 'B1425BJF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0398', '0', '1'),
(1365, 'Rachmat Sudrajat', 'rsudrajat@gmail.com', '081212341008', '', 0, 0, '-153298800', 0, 0, 'Grand wisata Sunrise Paradise AD 6 No. 11 Bekasi', '', 4, 14, 0, 15, 4, 1, 'B124CHA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0399', '0', '1'),
(1366, 'Addinal Putra', 'addinalxl@yahoo.com', '082159686956', '', 0, 0, '300560400', 0, 0, 'Dsn Jaranmati I RT 3/1 Kel. Karangmojo Wonosari Jogjakarta', '', 4, 20, 0, 15, 4, 1, 'B2009DD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0400', '0', '1'),
(1367, 'Erri Mitra', 'erri.mn@gmail.com', '081370056888', '', 0, 0, '174243600', 0, 0, 'Jl. Sei Bagerpang No. 47 Medan 20154', '', 4, 4, 0, 15, 3, 0, 'BK343FM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0401', '0', '1'),
(1368, 'Muhamad Aditya Aulia, S.H', 'aditya.aulia@gmail.com', '08123121487', '', 0, 0, '588445200', 0, 0, 'Ngagel Kebonsari I/16 Surabaya', '', 4, 23, 0, 15, 3, 3, 'B8983AA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0402', '0', '1'),
(1369, 'Mawan Harianto', 'thelemink@gmail.com', '087858995669', '', 0, 0, '641840400', 0, 0, 'Ds Bendo Kec Gondang Kab. Tulungagung', '', 4, 23, 0, 15, 3, 0, 'AG1785RY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0403', '0', '1'),
(1370, 'Prayudi Ananda Sufna', 'prayudiananda@yahoo.com', '081320629056', '', 0, 0, '502650000', 0, 0, 'Jl. Raya Ciloto Puncak 101 - Bogor', '', 4, 15, 0, 15, 4, 0, 'B110VD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837429', '', 0, '0404', '0', '1'),
(1371, 'Daden Suhendi', 'daden_suhendi@yahoo.com', '085759922000', '', 0, 0, '36349200', 0, 0, 'Puri Cibeureum Permai I Jl. Gn. Bromo No. 6 RT4/11 Cibeureum Hilir - Sukabumi', '', 4, 15, 0, 15, 4, 1, 'F1111SP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0405', '0', '1'),
(1372, 'Ari Sugiharto Nugroho', 'sugihartoari@yahoo.com', '08119109469', '', 0, 0, '31510800', 0, 0, 'BSD Sektor 12.4 P5/3 Serpong Tangsel', '', 4, 12, 0, 15, 4, 0, 'B1844NJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0406', '0', '1'),
(1373, 'Huda Faisal', 'hudafaisal43@gmail.com', '08128125201', '', 0, 0, '386442000', 0, 0, 'BBS II Jl. Sakura No. 7 Ciwedus Cilegon Banten', '', 4, 12, 0, 15, 4, 3, 'B1366BJD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0407', '0', '1'),
(1374, 'Hendri, S.T', 'h3ndr1@hotmail.com', '081274828858', '', 0, 0, '31510800', 0, 0, 'Jl. Kolonel Abunjani No. 17A RT22 Sipin Ujung - Jambi', '', 4, 9, 0, 15, 4, 0, 'BG10DS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0408', '0', '1'),
(1375, 'Age Erliando Anggatara', 'afgerliando_14@yahoo.com', '081224197111', '', 0, 0, '31510800', 0, 0, 'Jl. Raden Gunawan Komp. PLN D4 Hajimena Bandar Lampung', '', 4, 11, 0, 15, 3, 0, 'BE1439AQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0409', '0', '1'),
(1376, 'Dimas Aditya', 'dimas.aditya108@gmail.com', '0811134734', '', 0, 0, '31510800', 0, 0, 'Kota Wisata Pesona Monaco W4/8 Cibubur 1697', '', 4, 13, 0, 15, 4, 1, 'B812PSD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0410', '0', '1'),
(1377, 'Doni Saputra Selebes', 'doni.tradisa@gmail.com', '08170943514', '', 0, 0, '31510800', 0, 0, 'Komp. Pondok Surya Blok Q5 Karang Tengah Cileduk Tangerang 15157', '', 4, 12, 0, 15, 3, 0, 'B1582VLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0411', '0', '1'),
(1378, 'Abdul Gani Sugiri, dr', 'dokterganz@yahoo.co.id', '081216353525', '', 0, 0, '65293200', 0, 0, 'Jl. Majapahit No. 76 Kodya Madiun Jawa Timur', '', 4, 23, 0, 15, 3, 0, 'L1279WN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0412', '0', '1'),
(1379, 'Louis Soegihartono', 'louis62.guntur@gmail.com', '082128799000', '', 0, 0, '-223630200', 0, 0, 'Jl. Brotokusuman Mg 3 No. 185 x Jogjakarta', '', 4, 20, 0, 15, 3, 3, 'AD7891AF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0413', '0', '1'),
(1380, 'Dudi Wahyudi', 'dudi.jakarta@gmail.com', '08176923931', '', 0, 0, '343069200', 0, 0, 'Perum Summarecon Bekasi Cluster Acacia Blok BI-17 (Jl. Acacia 5) Bekasi Utara', '', 4, 14, 0, 15, 4, 0, 'B10UDI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0414', '0', '1'),
(1381, 'Arif Eko Sancoko', 'sancaka221196@gmail.com', '02747421972', '', 0, 0, '184870800', 0, 0, 'Gamping Lor RT 03/11 No. 61 Ambarketawang Gamping Sleman Jogjakarta', '', 4, 20, 0, 15, 4, 3, 'AB1972CN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0415', '0', '1'),
(1382, 'Arip Budiman', 'aripbsatriani@yahoo.com', '081380888545', '', 0, 0, '292352400', 0, 0, 'Villa Cendana Asri BB03 Jl. Pramuka Bandar Lampung', '', 4, 11, 0, 15, 4, 3, 'BE731YA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0416', '0', '1'),
(1383, 'Jeffri Antoni Hidajat', 'jeffrihidajat@gmail.com', '081320023444', '', 0, 0, '323715600', 0, 0, 'Cluster Fujiama No. 28 Komp. Pinus Regensi Soekarno Hatta Bandung', '', 4, 16, 0, 15, 3, 0, 'D1161XL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0417', '0', '1'),
(1384, 'Tejo Utomo', 'tejo2802@gmail.com', '0811598375', '', 0, 0, '162752400', 0, 0, 'Pandansari RT16 No. 24 Balikpapan', '', 4, 24, 0, 15, 4, 1, 'L1943QV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0418', '0', '1'),
(1385, 'Nunung Nuvan', 'nunung.smg@gmail.com', '081234600700', '', 0, 0, '214419600', 0, 0, 'Perum semawis Blok R No. 2 kedungmundu Semarang', '', 4, 23, 0, 15, 4, 1, 'H7018AF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0419', '0', '1'),
(1386, 'Santosa', 'maszzbroo72@gmail.com', '08164811747', '', 0, 0, '74624400', 0, 0, 'Jl. Saco 2 No. 68/88 RT1/4 Kamp. Pisangan Ragunan Jakarta Selatan', '', 4, 15, 0, 15, 3, 0, 'B17TF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0420', '0', '1'),
(1387, 'Victor Ritonga', 'viktorritonga@gmail.com', '085216661690', '', 0, 0, '466275600', 0, 0, 'Dsn Kalangan RT03/01 No. 31 Kec. Grabag Kab. Magelang ', '', 4, 23, 0, 15, 3, 0, 'H7497F', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0421', '0', '1'),
(1388, 'Arief Siswanto', 'masarief74@gmail.com', '081297458999', '', 0, 0, '46630800', 0, 0, 'Jl. Cemara RT11/05 No. 1 Ragunan Pasar Minggu Jakarta Selatan', '', 4, 13, 0, 15, 3, 0, 'B711DF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0422', '0', '1'),
(1389, 'H. Heru', 'heruherul98@gmail.com', '08124214996', '', 0, 0, '411930000', 0, 0, 'Jl. Ahmad Kirang Kel. Kalukku, Kab. Mamuju Prop Sulawesi Barat', '', 4, 25, 0, 15, 4, 1, 'DC477HD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0423', '0', '1'),
(1390, 'Tito Sumitro', 'titokeren13@gmail.com', '081286245313', '', 0, 0, '127242000', 0, 0, 'Jl. HR. Rasuna Said RT03/01 Kel. Pakojan Kec. Pinang Tangerang', '', 4, 12, 0, 15, 3, 0, 'B8240HT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0424', '0', '1'),
(1391, 'Budi Arif Fakhruddin', 'budibaf@gmail.com', '081378882272', '', 0, 0, '126378000', 0, 0, 'Griya Timoho Asri II E.14 Yogjakarta - JaTeng', '', 4, 20, 0, 15, 4, 3, 'B585SB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0425', '0', '1'),
(1392, 'Ivan Tamara', 'tamboen1@gmail.com', '081703167959', '', 0, 0, '571510800', 0, 0, 'Jl. Raya Taman Asri No. 64 Pondok Candra Sidoarjo', '', 4, 23, 0, 15, 4, 1, 'W1859RA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0426', '0', '1'),
(1393, 'Sandi Kamadjaya', 'sandikamadjaya@gmail.com', '085313306262', '', 0, 0, '275590800', 0, 0, 'Apt. Gateway B1906 Jl. Cileduk Raya No. 15A', '', 4, 15, 0, 15, 4, 3, 'B1178SA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0427', '0', '1'),
(1394, 'Andhika Darmawan, S.E., M.M.', 'dicha_25@yahoo.co.id', '081210014321', '', 0, 0, '472755600', 0, 0, 'Jl. Mandor Salim RT.002/02 No. 20 Kel. Srengseng Kec. Kembangan JakBar', '', 4, 12, 0, 15, 3, 3, 'B1949AR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0428', '0', '1'),
(1395, 'Ervan Jaya', 'ervancargo@yahoo.com', '08128552911', '', 0, 0, '-37004400', 0, 0, 'Kepiting 2 No. 213 Bekasi', '', 4, 14, 0, 15, 4, 3, 'B1876KJD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0429', '0', '1'),
(1396, 'Sukarno', 'sukarno@dmc-indonesia.com', '0811833148', '', 0, 0, '-258449400', 0, 0, 'Taman Narogong Indah Blok D 144 No. 8 RT 04/23 Pengasinan Rawalumbu - Bekasi', '', 4, 14, 0, 15, 4, 3, 'D10MC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0430', '0', '1'),
(1397, 'Sunarno Shindu', 'sunarno34@yahoo.co.id', '081280791052', '', 0, 0, '44384400', 0, 0, 'Kota Harapan Indah Jl. Nusa Indah XIII Blok MG No. 5 Bekasi', '', 4, 14, 0, 15, 3, 3, 'B2551OP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0431', '0', '1'),
(1398, 'Clarissa Edo Saputra', 'clarissaedosaputra@gmail.com', '08116682005', '', 0, 0, '681325200', 0, 0, 'Jl. Banjarmasin 022 Ulak Karang Selatan, Kec. Padang Utara, Padang', '', 4, 5, 0, 15, 4, 0, 'BA1175RS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0432', '0', '1'),
(1399, 'Andi Ikhsan', 'andi.ikhsan@gmail.com', '08561222282', '', 0, 0, '31510800', 0, 0, 'Jl. PKP Kiwi Al. Amin No. 6 RT. 05 / RW. 12 Cibubur - JakTim', '', 4, 13, 0, 15, 3, 3, 'B8560MT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0433', '0', '1'),
(1400, 'Muhammad Husni S', 'muhammadhusnis@yahoo.co.id', '085728111551', '', 0, 0, '305139600', 0, 0, 'Graha Estetika Damai No. 7 Krikilan Sariharjo Ngaglik Sleman Jogjakarta', '', 4, 20, 0, 15, 4, 1, 'AA7905NK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0434', '0', '1'),
(1401, 'Deva Anggarda Henditya', 'dhevadhitya@gmail.com', '08118162716', '', 0, 0, '607107600', 0, 0, 'Jl. Rungkut Asri Tengah 1/22 Surabaya - 60293', '', 4, 23, 0, 15, 4, 1, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0435', '0', '1'),
(1402, 'Dody Riyanto', 'dody_ry@yahoo.com', '08111109757', '', 0, 0, '300733200', 0, 0, 'Jl. Raya Citayam Ratujaya RT03/03 Cipatung Depok', '', 4, 15, 0, 15, 4, 0, 'B1802ELO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0436', '0', '1'),
(1403, 'Fitra Prasetya Murni Adityas', ' - ', '081567900123', '', 0, 0, '426704400', 0, 0, 'Jl. Kenanga 2 No.4 Sanggrahan RT.01/04 Grogol Sukoharjo', '', 4, 23, 0, 15, 3, 0, 'AD7025LA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0437', '0', '1'),
(1404, 'Arie Setyawan', 'setya_12@yahoo.co.id', '081335802838', '', 0, 0, '324320400', 0, 0, 'Jl. Raya Suryo 10 RT.01/RW.02 Mojorejo Grudo Ngawi 63214', '', 4, 23, 0, 15, 4, 1, 'AE1168KA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0438', '0', '1'),
(1405, 'Yudi Mulyadi', 'yudim1991@gmail.com', '08122309064', '', 0, 0, '71168400', 0, 0, 'Jl. Kecamatan 91 RT. 02 RW. 09 Cimahi, Bandung - Jawa Barat', '', 4, 16, 0, 15, 4, 3, 'D1841RD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0439', '0', '1'),
(1406, 'Taufiq Syam', 'ro.taufiqsyamza@gmail.com', '081363223141', '', 0, 0, '417200400', 0, 0, 'Jl. M. Yamin No. 132 A (optik Busyra) Padang', '', 4, 5, 0, 15, 4, 0, 'BA17KR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0440', '0', '1'),
(1407, 'Rifky Seliawan', 'sendy0030@yahoo.com', '081244699477', '', 0, 0, '373654800', 0, 0, 'Perum Griya Aster 4 Jl. Camar 1 Blok H No. 12 RT. 04/RW. 05 Caringin Kec. Legok -Tanggerang', '', 4, 12, 0, 15, 4, 3, 'B1166KLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0441', '0', '1'),
(1408, 'Alan Farona', 'alan_twelve@yahoo.com', '08117213132', '', 0, 0, '524595600', 0, 0, 'Jl. KH Mas Mansyur No. 60 Rawa Laut Kec. Eggal Kota Bandar Lampung', '', 4, 11, 0, 15, 4, 1, 'BE1042', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0442', '0', '1'),
(1409, 'Yulius Selvester', 'yulius.selvester@gmail.com', '08988891919', '', 0, 0, '658083600', 0, 0, 'Perumahan Rosela Indah DD 7 A Jelambar', '', 4, 12, 0, 15, 4, 1, 'F132LH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837430', '', 0, '0443', '0', '1'),
(1410, 'Erianto', 'otnaire@yahoo.com', '0811753533', '', 0, 0, '153334800', 0, 0, 'Perum Permata Ratu Blok i.i No 1 Jl. Parit Indah Pekanbaru Riau', '', 4, 6, 0, 15, 4, 1, 'BM1639NQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0444', '0', '1'),
(1411, 'R. Lulik Adi Chandra', 'rlulikacandra@gmail.com', '0816401456', '', 0, 0, '263754000', 0, 0, 'Perum Griya Asri Blok B No. 6 Kec. Segala Mider Kel. Tanjungkarang Barat, Bandar Lampung', '', 4, 11, 0, 15, 4, 3, 'AB1528QH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0445', '0', '1'),
(1412, 'Fikri Firdaus S.Sos, M.Si', 'fickrdw@yahoo.com', '087772222627', '', 0, 0, '496947600', 0, 0, 'Jl. Raya Labuan KM. 9,5 RT02/03 Kp. Cihideung Ds. Batubantar Kec. Cimanuk', '', 4, 12, 0, 15, 3, 0, 'B454FKR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0446', '0', '1'),
(1413, 'Habibur Rakhman (Abie)', 'habibur.rakhman@gmail.com', '081806414188', '', 0, 0, '495565200', 0, 0, 'Jl. Ambulombo Raya No. 5 Komp. Dep. Keuangan RI, Karang Tengah, Tanggerang', '', 4, 12, 0, 15, 3, 0, 'B8921AK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0447', '0', '1'),
(1414, 'Zaenal Abidin', 'zaenalabidinz@yahoo.com', '08115400184', '', 0, 0, '-39769200', 0, 0, 'Jl. Soekarno Hatta KM 4.5  RT 25 No 88 Kel. Batu Ampar - Balikpapan 76126', '', 4, 24, 0, 15, 4, 0, 'KT23ND', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0448', '0', '1'),
(1415, 'Tri Fatah Suryono', 'trifatah@yahoo.com', '08170431499', '', 0, 0, '43434000', 0, 0, 'Griya Tamanan Asri B.06 Grojogan Jl. Imogiri Timur KM.7 Jogjakarta', '', 4, 20, 0, 15, 4, 3, 'AB999FI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0449', '0', '1'),
(1416, 'Dwi Hariyanto', 'hariyantodwi09@gmail.com', '081250516922', '', 0, 0, '31510800', 0, 0, 'Perum Pagar Alam Residance Kav. 37 Jl. ZA. Pagar Alam Gg. PU', '', 4, 2, 0, 15, 4, 0, 'BE1324AH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0450', '0', '1'),
(1417, 'Chandra Satrya Ananda', 'chandrabucks@gmail.com', '08170724499', '', 0, 0, '293130000', 0, 0, 'Villa Nusa Indah V, Cluster Garuda, Blok SA3/37, Ciangsana, Gn. Putri - Bogor 16969', '', 4, 15, 0, 15, 4, 3, 'B274RIE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0451', '0', '1'),
(1418, 'Delfi Yandra', 'delfiyandra@gmail.com', '08137415897708787227', '', 0, 0, '397414800', 0, 0, 'Jl. A. K. Gani - Komp. Kehakiman 3 No. 36 Sawah Dangka Tilatang Kamang Kab. Agam - Sumatra Barat', '', 4, 5, 0, 15, 4, 0, 'B11RDS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0452', '0', '1'),
(1419, 'Dedy Syaifullah', 'dedy.lah85@yahoo.com', '081272371010', '', 0, 0, '475606800', 0, 0, 'Perum Puri Hijau Blok DA 46 Kel. Sukabumi Bandar Lampung', '', 4, 11, 0, 15, 3, 3, 'BE14NR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0453', '0', '1'),
(1420, 'dr. H. Rudi Ruhdiat', 'drruhdiat@gmail.com', '0811980249', '', 0, 0, '-67849200', 0, 0, 'Bumi Anggrek Blok P No. 32 Karangsatria Tambun Bekasi', '', 4, 14, 0, 15, 4, 1, 'B1623FJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0454', '0', '1'),
(1421, 'Ifan Arifiansyah, SE', 'ifanarifiansyah@yahoo.com', '081272746408', '', 0, 0, '286909200', 0, 0, 'Perum Abdi Negara Blok BB No. 21 Sukabumi Bandar Lampung', '', 4, 11, 0, 15, 4, 3, 'BE1722AC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0455', '0', '1'),
(1422, 'Fikri Miftah ', 'fikrimiftah@gmail.com', '081271855508', '', 0, 0, '412880400', 0, 0, 'Sumber Jaya Lampung Barat', '', 4, 11, 0, 15, 4, 3, 'B119AGS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0456', '0', '1'),
(1423, 'Ridwan Haryadi', 'ridwankementrianpubwss3@gmail.com', '08538490999', '', 0, 0, '436986000', 0, 0, 'Jl. Tury Raya Perum Griya Madu Pesona Cluster 3 No 44  -Lampung', '', 4, 11, 0, 15, 4, 1, 'BE1513AH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0457', '0', '1'),
(1424, 'HJ. Rina rahmawati', 'reina_yuliana@yahoo.com', '087871983999', '', 0, 0, '301510800', 0, 0, 'JL. H. Eman 2 No. 20 RT. 002 RW. 06 Kebayoran Lama, Pondok Pinang, Jakarta Selatan', '', 4, 15, 0, 15, 4, 3, 'B89CN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0458', '0', '1'),
(1425, 'Teuku Adam ', '', '082177581222', '', 0, 0, '287600400', 0, 0, 'Jl. Turi Raya, Perum Gunung Madu Cluster 2 No. 53 Tanjung Senang Way Halim, Bandar Lampung', '', 4, 11, 0, 15, 4, 3, 'B1215UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0459', '0', '1'),
(1426, 'H. Muh. Zulvian Ikvina', '', '081227014567', '', 0, 0, '31510800', 0, 0, 'SMK Al - Falah - Jl. Pondok Pesantren Al-Falah PO. Box 42 No. 156 RT. 01 RW. 02 Somolangu Wetan, Sumberadi, Kebumen - 54300', '', 4, 23, 0, 15, 4, 1, 'R8005PK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0460', '0', '1'),
(1427, 'M. Chotami', '', '', '', 0, 0, '389984400', 0, 0, 'Komp. Kiara Asri II No. 12 Bandung', '', 4, 16, 0, 15, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0461', '0', '1'),
(1428, 'Agus Untoro', 'agus.untoro@gmail.com', '08558203838021294706', '', 0, 0, '390330000', 0, 0, 'Villa Gading Harapan 5 Blok H16 no 5 Satria Mekar, Tambun Utara, Bekasi', '', 4, 14, 0, 15, 3, 0, 'B1940KLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0462', '0', '1'),
(1429, 'Desta Sukara', 'destasukara@outlook.com', '08778383378202129023', '', 0, 0, '405968400', 0, 0, 'Jl. Cipinang Kebembem II No. 13 RW.013 Pulogadung, 13230', '', 4, 13, 0, 15, 4, 0, 'B1006MI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0463', '0', '1'),
(1430, 'Arie Stiawan', 'arie.stiawan@semenbaturaja.co.id', '081279282807', '', 0, 0, '556995600', 0, 0, 'Jl. Gatot Subroto No. 70 Blok D.7 - Lampung', '', 4, 11, 0, 15, 4, 3, 'BE1275AO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0464', '0', '1'),
(1431, 'Kevin Septi Stefiano', 'kevinsepti7@gmail.com', '08112993094024354925', '', 0, 0, '780858000', 0, 0, 'Jl. Wotgandul Dalam 2/84 Semarang - Jawa Tengah', '', 4, 23, 0, 15, 4, 3, 'H8168MM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0465', '0', '1'),
(1432, 'Christian Yokung', 'cyokung@gmail.com', '08999909990043187313', '', 0, 0, '464288400', 0, 0, 'Grand Meridian , Jln San Pedro No.7 , Manado - SULUT', '', 4, 0, 0, 15, 4, 1, 'DB1060AP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0466', '0', '1'),
(1433, 'Ruchiyat ', 'ruchiyat68@gmail.com', '081287973121', '', 0, 0, '-25200', 0, 0, 'Jl. RA Kosasih No. 76 Sukabumi - JaBar', '', 4, 15, 0, 15, 4, 0, 'D999KT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0467', '0', '1'),
(1434, 'Muhammad Rifqi Failasuf', 'muhammadrifky507@yahoo.co.id', '087717445901', '', 0, 0, '781894800', 0, 0, 'Blok Karanganyar. RT. 010 RW. 003. Desa Karangmangu Kec. Susukanlebak - Cirebon.', '', 4, 18, 0, 15, 4, 0, 'B1628ULO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0468', '0', '1'),
(1435, 'Heriyanto', 'mk.heri.yanto@pertamina.com', '087811605000', '', 0, 0, '350067600', 0, 0, 'Jl. Jaya 7 Lrng. Ilham Perumahan Grenn Plaju Estate Blok E No. 20', '', 4, 10, 0, 15, 3, 3, 'BG1409LO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0469', '0', '1'),
(1436, 'Candra Afanda Rianto', 'candragate28@gmail.com', '085722116242', '', 0, 0, '0', 0, 0, 'Jl. Evakuasi Gg Al Karomah No 74. RT. 002 RW. 002 Cirebon', '', 4, 18, 0, 15, 3, 3, 'E55AY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0470', '0', '1'),
(1437, 'Mona Subagja', 'monasubagja@gmail.com', '08170576662', '', 0, 0, '279392400', 0, 0, 'Perum Sekargading Blok H-8 Kel. Kalisegoro, Semarang', '', 4, 23, 0, 15, 3, 0, 'H8252VW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0471', '0', '1'),
(1438, 'Fieldy', 'fieldy_fieldy_fieldy@yahoo.com', '081410169686', '', 0, 0, '254595600', 0, 0, 'Permata Bintaro, Sektor 9, Bintaro Jaya', '', 4, 12, 0, 15, 4, 3, 'B146P', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0472', '0', '1'),
(1439, 'Nabil Jaidi', 'nabil_jaidi@yahoo.co.id', '081316789864', '', 0, 0, '454006800', 0, 0, 'Jl. Kebon Kacang 6 No. 40, Tanah Abang, Jakarta Pusat', '', 4, 13, 0, 15, 4, 0, 'B2342BD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0473', '0', '1'),
(1440, 'Ernanda Satriadi (Dennis)', 'dennis.ernanda@gmail.com', '089660600679', '', 0, 0, '70995600', 0, 0, 'Bintaro Terrace Kav 10, Pondok Aren, Bintaro', '', 4, 12, 0, 15, 4, 3, 'B1748NLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0474', '0', '1'),
(1441, 'Abdulloh Ido Saputra', 'abd_idho_ia@yahoo.co.id', '08526973999807217884', '', 0, 0, '405882000', 0, 0, 'Jl. Turi Raya, Gg. Turi III No. 25 RT. 005 (Depan SLTP 19) Tanjung Seneng - Bandar Lampung 35141', '', 4, 11, 0, 15, 3, 0, 'BE1574AN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0475', '0', '1'),
(1442, 'M. Rachmatullah', 'Vetra.Venesia@Yahoo.com', '081384700900', '', 0, 0, '31597200', 0, 0, 'Jln.Puspita 12,Blok Q,No 24 (Komplek Mekar Indah) RT. 005 RW. 011, Mekar Mukti, Cikarang Baru - BEKASI', '', 4, 14, 0, 15, 4, 1, 'B1841FJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0476', '0', '1'),
(1443, 'Ferry Ferdian', 'ferdiankoe@gmail.com', '082221396696', '', 0, 0, '338230800', 0, 0, 'PT Home Center Indonesia (Informa Furnishings) Mall Puri Indah, Lt. 1 – Jl. Puri Agung, Jakarta Barat - 1 1 6 1 0\n', '', 4, 12, 0, 15, 4, 3, 'D203KY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0477', '0', '1'),
(1444, 'Arief Kusdianto M.Mar.Eng', 'rachdianto_idola@yahoo.com', '08133560037908133168', '', 0, 0, '251139600', 0, 0, 'Jl. Panglima sudirman No. 6C RT. 07 RW. 05 Kel. Kiduldalem, Kec. Klojen (Dpn Armed / Blkng Stasiun Kota Baru) - Malang 65119', '', 4, 23, 0, 15, 4, 1, 'N308HI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0478', '0', '1'),
(1445, 'Ridwandoni', 'ridwandoni86@gmail.com', '085393236363', '', 0, 0, '527187600', 0, 0, 'Jl. Yos Sudarso IX No. 5 kelurahan Menteng, kecamatan Jekan Raya, Palangka Raya 73111', '', 4, 2, 0, 15, 4, 1, 'DA7041AV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0479', '0', '1'),
(1446, 'Herri Mu’min ', 'herrife@gmail.com', '081394174769', '', 0, 0, '-118306800', 0, 0, 'Perum UNJANI No. 28 RT. 001 RW. 015 Kel. Leuwi Gajah, Cimahi Selatan - Cimahi', '', 4, 16, 0, 16, 3, 0, 'D909FR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0480', '0', '1'),
(1447, 'Saifullah', 'reangrais@gmail.com', '0818268608', '', 0, 0, '373741200', 0, 0, 'Nitikan UH6 No. 488 B Rt.48 Rw.12 Sorosutan, UH, Yogyakarta', '', 4, 20, 0, 16, 4, 0, 'AB1085RS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0481', '0', '1'),
(1448, 'H. Suyanto', 'aguungwn@ymail.com / suyantosarinadi@gmail.com', '0852330106029', '', 0, 0, '-422868600', 0, 0, 'Perumahan Wisma Sarinadi Jl. Sepak Bola A/17 Sidoarjo RT. 28 RW. 06 Kel. Magersari Kec. Sidoarjo - Sidoarjo', '', 4, 23, 0, 16, 4, 1, 'N333S', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0482', '0', '1'),
(1449, 'Abe Ronado', '', '082185444144', '', 0, 0, '610650000', 0, 0, 'Jl. Cengkeh 5C No. 5 Gedung Meneng - Bandar Lampung', '', 4, 11, 0, 16, 4, 3, 'B1404UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837431', '', 0, '0483', '0', '1'),
(1450, 'Dikky Try Achmadie', 'dikky_consultant@yahoo.com', '081316335911', '', 0, 0, '282589200', 0, 0, 'Jl. Rela No. 5 RT. 015 RW. 009 Kel. Menteng Atas Kec. Setiabudi ', '', 4, 13, 0, 16, 4, 1, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0484', '0', '1'),
(1451, 'Teguh W', 'lafalinindonesia@yahoo.com', '08129796483', '', 0, 0, '31510800', 0, 0, 'The Jalimbar Residence Kav. A 19 – Jl. Imogiri Barat KM 7,5 Bantul - Yogyakarta', '', 4, 20, 0, 16, 4, 1, 'AB1075RK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0485', '0', '1'),
(1452, 'Ibnu Affan', 'affan_ib@yahoo.co.id', '08127211499', '', 0, 0, '75315600', 0, 0, 'Jl. Pramuka Gg. Darfa - Perum Villa Cendana Asri Blok AA No. 2 LK III RT. 04 Langkapura, Kemiling Balam - Bandar Lampung', '', 4, 11, 0, 16, 4, 0, 'BE218NU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0486', '0', '1'),
(1453, 'Sapto Galih', 'sapto.galih.a@gmail.com', '081931953344', '', 0, 0, '558637200', 0, 0, 'Dusun Gentan Lor  Rt. 04 Rw. 03 Kel. Boja  Kec. Boja - Kendal ', '', 4, 23, 0, 16, 4, 0, 'H8128D', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0487', '0', '1'),
(1454, 'Muhammad Syukur', 'syukur.arifin@gmail.com', '0817868606', '', 0, 0, '529779600', 0, 0, 'Ketintang Timur PTT V / 9A Kel. Ketintang, Kec. Gayungan, Surabaya - 60231', '', 4, 23, 0, 16, 4, 3, 'B28MIN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0488', '0', '1'),
(1455, 'Melanie Hapsari', 'melanie.hapsari@gmail.com', '08174400110816422661', '', 0, 0, '371235600', 0, 0, 'Kemala Regency A2 Jl. Kebon Agng, Sendangadi, Mlati, Sleman', '', 4, 20, 0, 16, 4, 0, 'AB1000MY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0489', '0', '1'),
(1456, 'Budiono Slamet', 'pakpo@yahoo.com', '081219495758', '', 0, 0, '112640400', 0, 0, 'Jl. Sunandar Ps 4 / No.9 Perum taman Jenggala RT. 18  RW.04 Kel.Sidokare Kec. Sidoarjo – Sidoarjo', '', 4, 23, 0, 16, 4, 0, 'W441SH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0490', '0', '1'),
(1457, 'Erwin Alamsyah', 'erwinbdg79@yahoo.com', '082115996674', '', 0, 0, '18464400', 0, 0, 'Bumi Pesona Asri Blok A4/02 RT. 004 RW. 012 Linggar, Rancaekek - Kab. Bandung, Jawa Barat', '', 4, 16, 0, 16, 3, 0, 'D1648EY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0491', '0', '1'),
(1458, 'Awidiya Adi Pratama', 'awidiyaadipratama@gmail.com', '08569355754908886668', '', 0, 0, '739386000', 0, 0, 'Jl. Pandawa No 52 Perum Griya Tegal Sari Indah RT. 1 Kel.  Dukuhwaluh Kec. Kembaran – Purwokerto, Jawa Tengah', '', 4, 19, 0, 16, 3, 3, 'AB1881XZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0492', '0', '1'),
(1459, 'Oma Miharja Rizki ', 'asepsunara@tri.blackberry.com', '081316230999', '', 0, 0, '255546000', 0, 0, 'Dusun Rawarengas RT.008 RW.004 Kel. Sukaluyu Kec. Telukjambe Timur – Karawang , Jabar  41361', '', 4, 14, 0, 16, 4, 1, 'T10MR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0493', '0', '1'),
(1460, 'Hariyanto', 'hariyanto.azatha@gmail.com / hariyantowiro@yahoo.com ', '08133118700508122522', '', 0, 0, '-308820600', 0, 0, 'Perum Kuwasharjo Rt. 007 Rw. 002 Kel. Mulyoharjo Kec. Jepara - Jepara, Jawa Tengah', '', 4, 21, 0, 16, 4, 0, 'H422YI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0494', '0', '1'),
(1461, 'Eka Nurdani', 'gultor81parako@gmail.com', '082112569465', '', 0, 0, '434912400', 0, 0, 'Jl. Angkasa 1 No 13 Halim Perdana Kusuma, Komp. TNI AU, RT. 001 / RW. 009 Kec. Makasar,  JakTim 13610', '', 4, 13, 0, 16, 4, 1, 'B1031TJI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0495', '0', '1'),
(1462, 'Aditya Wardhana', 'aditya_wardhana@yahoo.com', '08129978593081399307', '', 0, 0, '167590800', 0, 0, 'Jl. Potlot 1 No. 8 RT. 001 RW. 06 Kel. Duren Tiga, Pancoran', '', 4, 15, 0, 16, 3, 0, 'B1869OJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0496', '0', '1'),
(1463, 'Juli Purwanto', 'juli.purwanto@gmail.com', '08113520936', '', 0, 0, '-14540400', 0, 0, 'Ploso Timur X-A No. 43 Surabaya 60133', '', 4, 23, 0, 16, 4, 0, 'L1758HB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0497', '0', '1'),
(1464, 'Willy Johan', 'willyjhn@yahoo.com', '08122141742708562215', '', 0, 0, '370112400', 0, 0, 'Jl. Moch.Iwan 90 RT.003 RW.003 Kel. Ancol Kec.Regol – Bandung', '', 4, 16, 0, 16, 4, 1, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0498', '0', '1'),
(1465, 'Makrufatun Solikhah Iskak ', 'icha.ylineindonesia@gmail.com', '081328720293', '', 0, 0, '565030800', 0, 0, 'Ngadiretno RT. 02 RW. 17 Kel. Tamanagung Kec. Muntilan - Magelang  Jateng', '', 4, 20, 0, 16, 4, 0, 'B799KKO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0499', '0', '1'),
(1466, 'Muhammad Fikri, S.T', 'fikri_banyuasin@yahoo.co.id ', '08127390928', '', 0, 0, '254163600', 0, 0, 'Jl. Pasar Baru No 42 RT. 08 RW. 02 Kel. Kedondong Raye Kec. Banyuasin III - Pangkalan Balai Banyuasin, Sumatera Selatan', '', 4, 10, 0, 16, 4, 1, 'BG1742JB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837432', '', 0, '0500', '0', '1'),
(1467, 'Syahrul Khoiri', 'syahrulkh58@gmail.com cc dewi.poedjiastuti@gmail.com', '02130040512081178197', '', 0, 0, '-355476600', 0, 0, 'Apartemen Casablanca Mansion Lantai 5 Unit 12 - Jl. Casablanca Kav 9 RT. 009 RW 005 Kel.Menteng Dalam Kec. Tebet, JakSel 12870', '', 4, 15, 0, 16, 4, 0, 'B2512XW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0501', '0', '1'),
(1468, 'Eko Basudewo', 'eckobasudewo@gmail.com', '02486602810819144544', '', 0, 0, '423853200', 0, 0, 'Jl. Kapri Barat II/4 RT. 06 RW. 10 Kel. Ttambakaji Kec. Ngaliyan – Semarang, Jateng', '', 4, 23, 0, 16, 3, 0, 'E14MJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0502', '0', '1'),
(1469, 'Firdaus Silahla', 'daus.intikon@gmail.com', '081318992800', '', 0, 0, '613501200', 0, 0, 'Jl. Hr. Rasuna Said RT. 005 RW. 05 Kel. Cipete Kec. Pinang - Tangerang Kota, Banten', '', 4, 12, 0, 16, 4, 0, 'B2836WA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0503', '0', '1'),
(1470, 'M. Wildan Ardiansyah', '', '081297967790', '', 0, 0, '888944400', 0, 0, 'Perum Korpri Blok C3 No. 29 Sukarame RT. 008 RW. II  Kel. Harapan Jaya Kec. Sukarame - Bandar Lampung, Lampung', '', 4, 11, 0, 16, 4, 0, 'BE1014BW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0504', '0', '1'),
(1471, 'Slamet Supranadi (Ichsan)', 'ichsan_hitoshi@yahoo.com', '08112542227', '', 0, 0, '279478800', 0, 0, 'Perum Citra Sun Garden CS-5 No. 16 Juwangen RT. 006 RW. 002 Kel. Purwomartani Kec. Kalasan – Sleman, Yogyakarta', '', 4, 20, 0, 16, 4, 1, 'AB1999Y', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0505', '0', '1'),
(1472, 'Achmad Roiyan Fauzi', '', '085231006688', '', 0, 0, '654886800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0506', '0', '1'),
(1473, 'Fandy Harianto', 'fandy_lamp@yahoo.com', '08578019198708128338', '', 0, 0, '565117200', 0, 0, 'Jl. M. Kahfi 1 Gang Nangka No.15 J RT. 03 RW. 06 Kel. Kampung Kandang Kec. Jagakarsa - Jakarta Selatan, DKI Jakarta', '', 4, 15, 0, 16, 4, 1, 'B601KK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0507', '0', '1'),
(1474, '', '', '08170406264', '', 0, 0, '31510800', 0, 0, 'Ambil waktu kopdar di Yogyakarta', '', 4, 20, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837493', '', 0, '0508', '0', '1'),
(1475, 'Petrus Istiyono', '-', '081386535786', '', 0, 0, '-756631800', 0, 0, 'Perum Pondok Cemara - Jl. Cemara Raya No.11 RT. 004 RW. 010 Jatiwarna, Pondok Melati, Bekasi', '', 4, 14, 0, 16, 3, 3, 'B1750KLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0509', '0', '1'),
(1476, 'Doan Tegar Prasetyawan', 'doan.tegar@gmail.com', '081232320153', '', 0, 0, '612118800', 0, 0, 'Jl. Pelikan Z-06, Rewin, Waru RT. 11 RW. 08 Kel. Wedoro Kec. Waru - Sidoarjo, Jawa Timur', '', 4, 23, 0, 16, 3, 3, 'L1109P', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0510', '0', '1'),
(1477, 'Muhar Surono', 'muharlagiii@yahoo.com', '081316177574', '', 0, 0, '530557200', 0, 0, 'Jl. Kalibaru Timur No 12 RT. 03 RW. 03 Kel. Kalibaru Kec. Cilincing - Jakarta Utara', '', 4, 13, 0, 16, 4, 3, 'B1920UJH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0511', '0', '1'),
(1478, 'Bob Mangde', 'compact_marketing@yahoo.com', '081330770928', '', 0, 0, '189018000', 0, 0, 'Pesona Sekar Gading U-9 (Green Park Regency) RT. 26 RW. 08 Kel.  Sekardangan Kec. Sidoarjo - Sidoarjo, Jawa Timur', '', 4, 23, 0, 16, 4, 0, 'W808SC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0512', '0', '1'),
(1479, 'Yusuf Effendi (Baba)', '', '081217777957', '', 0, 0, '397933200', 0, 0, 'Dusun Berguh Kel. Taddan Kec. Camplong – Sampang, Jatim', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0513', '0', '1'),
(1480, 'Andi Wijaya', 'andiwijaya1609@gmail.com', '02163853589081314733', '', 0, 0, '653418000', 0, 0, 'Jl. Angke Indah 5 No 299 RT.13 RW. 02 Kel. Angke Kec.  Tambora - JakBar', '', 4, 12, 0, 16, 4, 0, 'B16WOO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0514', '0', '1'),
(1481, 'Dani Firmansyah', 'danifirmasyah10@gmail.com', '081221118887', '', 0, 0, '502995600', 0, 0, 'Jl. Raya Klari No. 308 Dusun Krajan RT. 002 RW. 002 Kel. Gintung Kerta Kec. Klari - Karawang, Jawa Barat ', '', 4, 13, 0, 16, 4, 0, 'B2211OH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0515', '0', '1'),
(1482, 'Roland Jayanto', 'roland_jayanto@yahoo.com', '081212733320', '', 0, 0, '726253200', 0, 0, 'Taman Beverly Golf - Jl. Danaumedara No. 16 , Lippo Karawaci, Tangerang.', '', 4, 12, 0, 16, 3, 0, 'B8064TN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0516', '0', '1'),
(1483, 'Agassi Septian', '-', '081230062022', '', 0, 0, '-5468400', 0, 0, 'Graha Anggrek Mas Regency Blok B2 No. 17 RT. 48 RW. 12 Kel. Pagerwojo Kec. Buduran – Sidoarjo, Jawa Timur', '', 4, 23, 0, 16, 4, 0, 'W464SI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0517', '0', '1'),
(1484, 'Irawan Trimulya', 'irawan.trimulia@gmail.com', '081322941599', '', 0, 0, '155062800', 0, 0, 'Komplek Padasuka Indah II Blok F5 No. 21 RT. 7 RW. 9  Kel. Gadobangkong Kec. Ngamprah – Bandung, Jawa Barat ', '', 4, 16, 0, 16, 3, 0, 'D1071GC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0518', '0', '1'),
(1485, 'Cahyo Fuad Purnomo', 'cahyo.satria@ymail.com', '081804373971', '', 0, 0, '541011600', 0, 0, 'Krapyak RT. 005 RW. 055 Kel. Wedomartani Kec. Ngemplak – Sleman, D.I. Yogyakarta', '', 4, 20, 0, 16, 4, 1, 'AB999CY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0519', '0', '1'),
(1486, 'Wayan Kharisma', 'kharismarustika@gmail.com', '08563030700', '', 0, 0, '514054800', 0, 0, 'Puri Gunung Anyar Regency  K-18 Kel. Gunung Anyar Kec. Gunung Anyar Tambak  – Surabaya, Jawa Timur', '', 4, 23, 0, 16, 3, 0, 'L1800BU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0520', '0', '1'),
(1487, 'A. Deni Alfadhiel ', 'adenalfadhiel@ymail.com', '08562953771', '', 0, 0, '536086800', 0, 0, 'Komplek Rabbany Regency Blok J No. 12 RT. 05 RW. 02 Kel. Godog Kec. Karangpawitan –  Garut, Jawa Barat', '', 4, 17, 0, 16, 3, 0, 'D1616FH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0521', '0', '1'),
(1488, 'Hartono Teng', 'hartono.teng@hotmail.com', '082326318888', '', 0, 0, '682275600', 0, 0, 'Jl. Soekarno Hatta Gg. Rambutan No.9  RT. 1 RW. 5 Kel. Kampung Baru Kec. Tanjungpinang Barat – Tanjungpinang, Kepulauan Riau', '', 4, 6, 0, 16, 4, 0, 'BP619HT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0522', '0', '1'),
(1489, 'Ibnu Hasan ', 'ibnu_hasa@yahoo.co.id', '08131486828108190611', '', 0, 0, '484506000', 0, 0, 'Jl. Inpres 16 no. 28 RT.03 RW.08 Kel. Larangan Selatan Kec. Larangan -  Tangerang, Banten', '', 4, 12, 0, 16, 4, 0, 'D99QX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0523', '0', '1'),
(1490, 'Wahyu Widodo', 'wwidCG@yahoo.com', '08510240877808165103', '', 0, 0, '233168400', 0, 0, 'Jl. Teuku Umar 22 Sidoarjo RT. 08 RW. 03 Kel. Magersari Kec. Sidoarjo – Sidoarjo, Jatim', '', 4, 23, 0, 16, 4, 0, 'W1888NW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0524', '0', '1'),
(1491, 'Riki Basuki', 'rieQ.baszt@yahoo.co.id', '08111201976', '', 0, 0, '330886800', 0, 0, 'Taman Graha Asri blok EE7 no 13 RT. 11 RW. 19 Kel. Cipocok Jaya Kec. Cipocok Jaya – Serang, Banten', '', 4, 12, 0, 16, 4, 0, 'B1000KJF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0525', '0', '1'),
(1492, 'Erik Agustinus', 'erik.agustinus@gmail.com', '081231112222', '', 0, 0, '524768400', 0, 0, 'Simo Kalangan 1/165-K RT. 002 RW. 007 Kel. Sido Mulyo Kec. Sukomanunggal - Surabaya, Jawa Timur ', '', 4, 23, 0, 16, 4, 3, 'L9EA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0526', '0', '1'),
(1493, 'Doddy Primanda Kadarisman', 'doddy.primanda@gmail.com', '02748805600878707040', '', 0, 0, '178390800', 0, 0, 'Jl. Pandega Asih I No. A5, Perum Sari Asih RT. 016 RW. 006 Kel. Caturtunggal Kec. Depok – Sleman, DI Yogyakarta', '', 4, 20, 0, 16, 4, 0, 'AB288NQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0527', '0', '1'),
(1494, 'Eric Raficana', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0528', '0', '1'),
(1495, 'Didi  Setiady', 'didisetiady@yahoo.com', '02171102100081671434', '', 0, 0, '35053200', 0, 0, 'Jl. Bukit Cinere  Raya No. 169D Kel. Cinere Kec. Cinere – Depok, Jawa Barat', '', 4, 15, 0, 16, 4, 0, 'B2687RP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0530', '0', '1'),
(1496, 'Abdul Muis', 'muisforever100@yahoo.com', '08153320210008227772', '', 0, 0, '121712400', 0, 0, 'Jl. Jend. Sudirman, Komp. Balikpapan Permai Blok L No. 8 Kel. Gunung Bahagia Kec. Balikpapan Selatan – Balikpapan, KalTim', '', 4, 24, 0, 16, 4, 0, 'BK100D', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0535', '0', '1'),
(1497, 'Dimas Sasongko', 'd_sasongko@yahoo.com', '08559950029', '', 0, 0, '106074000', 0, 0, 'Jl. Jatipadang Poncol, Gang Poncol VIII Rt 05 Rw 08 No. 12 Jatipadang, Pasar Minggu – Jakarta Selatan. 12540', '', 4, 15, 0, 16, 4, 0, 'B54ZKI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0555', '0', '1'),
(1498, 'Paul Ganda Doloksaribu', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0563', '0', '1'),
(1499, 'Gatot Syamsurizal', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0571', '0', '1'),
(1500, 'Raden MasDwi Tjandra', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 24, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0574', '0', '1'),
(1501, 'Teguh S', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0575', '0', '1'),
(1502, 'Hijrachman', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 24, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0576', '0', '1'),
(1503, 'Rachmady Ady', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 24, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0580', '0', '1'),
(1504, 'Ade Putra', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0581', '0', '1'),
(1505, 'Robi Aria Samudra', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0582', '0', '1'),
(1506, 'Johan Tuwankotta', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0583', '0', '1'),
(1507, 'Eka Mujana', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0584', '0', '1'),
(1508, 'Budiman', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0585', '0', '1'),
(1509, 'Velif Nikolas', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0586', '0', '1'),
(1510, 'Handri Priyanto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837494', '', 0, '0587', '0', '1'),
(1511, 'Andry Prihartono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0588', '0', '1'),
(1512, 'Dwityas Poerbaya', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0589', '0', '1'),
(1513, 'Rico Franata', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0590', '0', '1'),
(1514, 'Panji Prabowo K ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0591', '0', '1'),
(1515, 'Anthony Sigalingging', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0608', '0', '1'),
(1516, 'Gaga Agung', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0609', '0', '1'),
(1517, 'Oxsi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0610', '0', '1'),
(1518, 'Randi Nova Yandri', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0611', '0', '1'),
(1519, 'Yoga Mahendra Dwiyanto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0612', '0', '1'),
(1520, 'Dadi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0613', '0', '1'),
(1521, 'Cindy Bally', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 15, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0614', '0', '1'),
(1522, 'Maki', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0615', '0', '1'),
(1523, 'Hutomo', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0616', '0', '1'),
(1524, 'Ferdiansyah', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 12, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0617', '0', '1'),
(1525, 'Mirza Ulfa', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0618', '0', '1'),
(1526, 'Ardian Sri Hartono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0619', '0', '1'),
(1527, 'Hery Tri Fidianto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0620', '0', '1'),
(1528, 'Moch Ichwan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0621', '0', '1'),
(1529, 'Rina', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0622', '0', '1'),
(1530, 'Chairul Fikri', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0623', '0', '1'),
(1531, 'Videlis', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0624', '0', '1'),
(1532, 'Ringga', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0625', '0', '1'),
(1533, 'Johnson', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0626', '0', '1'),
(1534, 'Arief Pietoyo', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0627', '0', '1'),
(1535, 'M. Fahri ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0628', '0', '1'),
(1536, 'Rizky Aperta', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0629', '0', '1'),
(1537, 'Ahmed Imanul Kamil', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0630', '0', '1'),
(1538, 'Fadli', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0631', '0', '1'),
(1539, 'Teuku Cahrol M Bayumi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0632', '0', '1'),
(1540, 'Faldy', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0633', '0', '1'),
(1541, 'Ismu', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0634', '0', '1'),
(1542, 'Rama', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837495', '', 0, '0635', '0', '1'),
(1543, 'Mohit', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0636', '0', '1'),
(1544, 'Mendrison', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0637', '0', '1'),
(1545, 'KH. Ahmad Djauzi M.A', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0638', '0', '1'),
(1546, 'Pierre Lesli Kawegian', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0639', '0', '1'),
(1547, 'Bagus', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0640', '0', '1'),
(1548, 'Anton Wijaya', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0644', '0', '1'),
(1549, 'Deriko Toretto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0645', '0', '1'),
(1550, 'Rizkhiven', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0646', '0', '1'),
(1551, 'Lucky Sie', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0648', '0', '1');
INSERT INTO `member` (`id_member`, `nama`, `email`, `hpwa`, `kemeja`, `prodomisilih`, `kabdomisilih`, `tgllahir`, `proalamat`, `kabalamat`, `alamat`, `kodepos`, `idjabatan`, `idchapter`, `idnonchapter`, `idtahununit`, `idkapasitasunit`, `idwarnaunit`, `nopolisi`, `norangka`, `nomesin`, `ktpsim`, `stnk`, `buktitransfer`, `photo`, `ppok`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idedit`, `nopung`, `statusnopung`, `statusregis`) VALUES
(1552, 'Riwan Rudiyatmoko', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0649', '0', '1'),
(1553, 'Ari Angrita', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0650', '0', '1'),
(1554, 'Alfien', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0659', '0', '1'),
(1555, 'Vita Susan Arie', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0660', '0', '1'),
(1556, 'Aditya Lakminto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0679', '0', '1'),
(1557, 'Ari Sudharsono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0682', '0', '1'),
(1558, 'Gregorius Ivan ', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0683', '0', '1'),
(1559, 'Nico', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0684', '0', '1'),
(1560, 'Arie Abimanyu', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0688', '0', '1'),
(1561, 'Moeraditya P Poetra', '', '85775324438', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0694', '0', '1'),
(1562, 'Radityo T. Nugroho', 'radityo.trinugroho@gmail.com', '81288257383', '', 0, 0, '31510800', 0, 0, 'Jl. Selat Bali F3 No.12 Kav.TNI AL Duren Sawit, Jakarta Timur.\nRT 004/ 017\nKel.Duren Sawit\nKec.Duren Sawit', '', 4, 13, 0, 16, 4, 0, 'B1221KI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0697', '0', '1'),
(1563, 'Syamsul Arifin', 'syamsularifin1012@gmail.com', '81296677371', '', 0, 0, '31510800', 0, 0, 'Jl. Pahlawan Komarudin No. 149 Cakung Timur, Jakarta Timur', '', 4, 13, 0, 16, 4, 0, 'B586TI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0700', '0', '1'),
(1564, 'Asdin (Abiem Abiza)', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0702', '0', '1'),
(1565, 'Bogie Arianto', 'bogie.ariyanto@gmail.com', '81310067849', '', 0, 0, '31510800', 0, 0, 'Jl. Penegak 1 no. 67, bekasi', '', 4, 14, 0, 16, 4, 0, 'B1687KLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0703', '0', '1'),
(1566, 'Dona Romadhona', '', '81288037423', '', 0, 0, '31510800', 0, 0, '', '', 4, 12, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0704', '0', '1'),
(1567, 'M. Akasyahrani', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0705', '0', '1'),
(1568, 'Jacinta Dck Kadarisman', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0706', '0', '1'),
(1569, 'Nanang Widyatmoko', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0707', '0', '1'),
(1570, 'Hafid Eko Hardiyanto', 'hafidhardiyanto@gmail.com', '64988584411688', '', 0, 0, '31510800', 0, 0, 'Jl.cipeucang II/1 rt. 004/012 Kel. Koja Kec. Koja Tanjung Priuk Jakarta Utara 14220', '', 4, 13, 0, 16, 4, 0, 'B1083MP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0708', '0', '1'),
(1571, 'Puspo Tri Anggoro', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 24, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0709', '0', '1'),
(1572, 'Dhirgahayu Nugrahpaketa', '', '85218555212', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0710', '0', '1'),
(1573, 'Achmat Yazid', 'Yazidmunika99@gmail.com', '81326475888', '', 0, 0, '31510800', 0, 0, 'Perum griya wisnu citra tama no 2\nBantulan RT 4 RW 4 sido arum\nKec.godean\nKab.sleman YOGYAKARTA\n', '', 4, 20, 0, 16, 3, 0, 'B111CN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0711', '0', '1'),
(1574, 'Hendra Arif Hidayat', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0712', '0', '1'),
(1575, 'Hasriyana', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0713', '0', '1'),
(1576, 'Juan Kaspar', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0714', '0', '1'),
(1577, 'Mirza Ulfa', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0715', '0', '1'),
(1578, 'Romi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0716', '0', '1'),
(1579, 'Eko Prasetyo', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0717', '0', '1'),
(1580, 'Yudi Bebe Huang', 'yudibb7@gmail.com', '81368827887', '', 0, 0, '31510800', 0, 0, 'Jln. Inspektur Marzuki No.141 A Palembang', '', 4, 10, 0, 16, 4, 3, 'BG1869QO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0718', '0', '1'),
(1581, 'Sulthani', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0719', '0', '1'),
(1582, 'Alex Fauzan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0720', '0', '1'),
(1583, 'Ardy Kurniawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0721', '0', '1'),
(1584, 'Ahmad Riyadh Dermawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0722', '0', '1'),
(1585, 'Teta', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837496', '', 0, '0723', '0', '1'),
(1586, 'Abel - Abdullah', 'abelabdalah@yahoo.com', '81358449917', '', 0, 0, '31510800', 0, 0, 'Tambak dalam baru 1/18 asemrowo surabaya', '', 4, 23, 0, 16, 4, 0, 'M48EL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0724', '0', '1'),
(1587, 'Indah Setyorini', 'Indahemarkno@ymail.com', '81259051313', '', 0, 0, '31510800', 0, 0, 'Jl ks suitubun No 15A kel. Banyudono Kec. Ponorogo Kab. Ponorogo', '', 4, 23, 0, 16, 4, 1, 'AE1431SJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0725', '0', '1'),
(1588, 'Joanne Weiyn', 'joweiyn@gmail.com', '811190997', '', 0, 0, '31510800', 0, 0, 'Apartment Pancoran Riverside, Jakarta Selatan', '', 4, 15, 0, 16, 4, 3, 'B601FJR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0726', '0', '1'),
(1589, 'Syarifahtul Azmi', 'syarifah_azmi@yahoo.com', '8129959507', '', 0, 0, '31510800', 0, 0, 'Jl. AMD X No.16A, Komplek City Terrace Unit 10. Kreo, Larangan Joglo', '', 4, 13, 0, 16, 4, 0, 'B1344BLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0727', '0', '1'),
(1590, 'Teghar Firmansyah', 'teghar99@rocketmail.com', '08211241366308573568', '', 0, 0, '31510800', 0, 0, 'Griya Japan Raya Jl.Gatotkaca D27. Mojokerto', '', 4, 23, 0, 16, 4, 3, 'S1673PD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0728', '0', '1'),
(1591, 'Hendri Iman Pratama', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0729', '0', '1'),
(1592, 'Hendry Ival', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 12, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0730', '0', '1'),
(1593, 'Fadhila Maya Sari', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0731', '0', '1'),
(1594, 'Deni Rachmat Suhro', 'imagedsgn7@gmail.com', '8112039773', '', 0, 0, '31510800', 0, 0, 'Jalan Rancabentang Utara No. 156d. Rt. 04/23 Kec. Cimahi Selatan - Kota Cimahi', '', 4, 16, 0, 16, 3, 0, 'D1888FW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0732', '0', '1'),
(1595, 'Fery Achsan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0733', '0', '1'),
(1596, 'Enang Sutriyadi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 15, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0734', '0', '1'),
(1597, 'Handri Adiwilaga', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0735', '0', '1'),
(1598, 'Venny', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0736', '0', '1'),
(1599, 'Aditya Gama Putri', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0738', '0', '1'),
(1600, 'Sandy Nugraha', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0741', '0', '1'),
(1601, 'Yanyan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0742', '0', '1'),
(1602, 'Teguh Tri Wahyono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0743', '0', '1'),
(1603, 'Adjib Al Hakim', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0744', '0', '1'),
(1604, 'Arif Wibowo', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0745', '0', '1'),
(1605, 'Kholid Zawawi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0746', '0', '1'),
(1606, 'Dwi Handoko', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0747', '0', '1'),
(1607, 'Roby Wira Krisna Yoga', '', '085739347526', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0748', '0', '1'),
(1608, 'Heni Herawati', '', '081273838888', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0749', '0', '1'),
(1609, 'Alva De Canserta', '', '08127150911', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0750', '0', '1'),
(1610, 'Novyra Malintan', '', '81273591180', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0751', '0', '1'),
(1611, 'Machmud Samsudin', '', '082226250777', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0752', '0', '1'),
(1612, 'Ketut Ponco Margono', '', '081262101876', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0753', '0', '1'),
(1613, 'Budi Widarko', '', '08129366374', '', 0, 0, '31510800', 0, 0, '', '', 4, 12, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837497', '', 0, '0754', '0', '1'),
(1614, 'Amam Zuhdi', 'amam.behappy@gmail.com', '81330504131', '', 0, 0, '31510800', 0, 0, 'jl. sidotopo wetan 1 luar no. 26 b sby', '', 4, 23, 0, 16, 3, 0, 'L1910Tx', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0755', '0', '1'),
(1615, 'Wibowo Budi Santoso', '', '08122797663', '', 0, 0, '252176400', 0, 0, 'Griya Cinere I Jl. Camar I Blok E2 No 7 Cinere Depok', '', 4, 15, 0, 16, 4, 0, 'AD8226HF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0756', '0', '1'),
(1616, 'Suryadi', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0757', '0', '1'),
(1617, 'Aryansyah', '', '', '', 0, 0, '234896400', 0, 0, 'Jl. Cengkeh 2 Blok K No. 13 RT.031/013 Kel Sako Kec. Sako Palembang', '', 4, 10, 0, 16, 4, 0, 'BG1809IW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0758', '0', '1'),
(1618, 'Johny Johnson', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0759', '0', '1'),
(1619, 'Thress Winardo', '', '081933322068', '', 0, 0, '516646800', 0, 0, 'Jl. Semeru No. 549 RT.012/010 Kel. 17 Ilir Kec. Ilir Timur Palembang', '', 4, 10, 0, 16, 4, 0, 'BG1180DG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0760', '0', '1'),
(1620, 'Stefanus Fedriek', '', '082177827700', '', 0, 0, '723574800', 0, 0, 'Jl. Semeru No. 549 RT.012/010 Kel. 17 Ilir Kec. Ilir Timur Palembang', '', 4, 10, 0, 16, 4, 0, 'BG1349MP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0761', '0', '1'),
(1621, 'Hendra Minkcu', '', '', '', 0, 0, '334256400', 0, 0, 'Komp. Taman Hidup Baru 4 No. 97 Pademangan Jakarta Utara', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0762', '0', '1'),
(1622, 'Agus Setiadi', '', '081908121112', '', 0, 0, '145126800', 0, 0, 'Komp. Graha Indah, Jl. Mahoni Blok H No. 6 Kedunghalang Bogor Utara - 16158', '', 4, 15, 0, 16, 4, 1, 'B484SWS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0763', '0', '1'),
(1623, 'Adi Fitra Wirajaya', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 6, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0764', '0', '1'),
(1624, 'Ade Sofian', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0765', '0', '1'),
(1625, 'Aris Suyono', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0766', '0', '1'),
(1626, 'M. Yusuf Suparman', '', '081367342277', '', 0, 0, '-134204400', 0, 0, 'Jl. Amphibi No. 1096 RT.034/004 Kel. 20 Ilir II Kec. Kemuning Palembang', '', 4, 10, 0, 16, 4, 0, 'BG266YS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0767', '0', '1'),
(1627, 'Lukman Hermanto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0768', '0', '1'),
(1628, 'Sigit Santoso', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0769', '0', '1'),
(1629, 'Lydia Sofyan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 16, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0770', '0', '1'),
(1630, 'Panji Prasadana', '', '081381884897', '', 0, 0, '31510800', 0, 0, '', '', 4, 15, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0771', '0', '1'),
(1631, 'Nugroho Setyawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0772', '0', '1'),
(1632, 'Ernaldi Fazrie', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0773', '0', '1'),
(1633, 'Andhika Putra', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0774', '0', '1'),
(1634, 'Wawan Aji Purwanto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 18, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0775', '0', '1'),
(1635, 'Ihsan Suciawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0776', '0', '1'),
(1636, 'Arief Al Hakim', '', '085659625535', '', 0, 0, '31510800', 0, 0, '', '', 4, 11, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0777', '0', '1'),
(1637, 'Hengki Setiaji Wibowo', '', '081326558686', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0778', '0', '1'),
(1638, 'Benny', '', '081905655779', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0779', '0', '1'),
(1639, 'Sonny Chandra', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0780', '0', '1'),
(1640, 'Danang', '', '0818291948', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0781', '0', '1'),
(1641, 'Emery Fajar Dhyan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0782', '0', '1'),
(1642, 'Hambali', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 15, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0783', '0', '1'),
(1643, 'Aditya Laksminto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0784', '0', '1'),
(1644, 'Pramugari', '', '081228108228', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0785', '0', '1'),
(1645, 'Devi Johana', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 14, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0786', '0', '1'),
(1646, 'Yuliyanti', '', '081227888811', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0787', '0', '1'),
(1647, 'Andre Nya Pristine', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0788', '0', '1'),
(1648, 'Yudhistira', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0789', '0', '1'),
(1649, 'Fitriani', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 5, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0790', '0', '1'),
(1650, 'I Gusti Ketut Yuma Grawiartha', '', '082144120888', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0791', '0', '1'),
(1651, 'Sudono Sinaga', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837498', '', 0, '0792', '0', '1'),
(1652, 'Iwan Ridwan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 16, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0793', '0', '1'),
(1653, 'Muhammad Syarifuddin', '', '081228473388', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0794', '0', '1'),
(1654, 'Bayu G Nugroho', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0795', '0', '1'),
(1655, 'Dwi Candra Rosita', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0796', '0', '1'),
(1656, 'Susilo Ahmad Widodo', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0797', '0', '1'),
(1657, 'M. Arifin', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 2, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0798', '0', '1'),
(1658, 'Oce Albar', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0799', '0', '1'),
(1659, 'Erlisa Saraswati', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0800', '0', '1'),
(1660, 'Sunarjo', '', '081327282399', '', 0, 0, '31510800', 0, 0, '', '', 4, 20, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0801', '0', '1'),
(1661, 'Hari Hilman', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 16, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0802', '0', '1'),
(1662, 'Achmad Farid', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 10, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0803', '0', '1'),
(1663, 'Ari Gudel', '', '08119168911', '', 0, 0, '31510800', 0, 0, '', '', 4, 13, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0804', '0', '1'),
(1664, 'Narotama Yuarli', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 20, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0805', '0', '1'),
(1665, 'Aldhy Supit', '', '82293950008', '', 0, 0, '31510800', 0, 0, 'Kantor Dinas Pendidikan Kota Manado.Jln Pingkan Matindas No.135 Kel,Dendengan Dalam Kec,Paal Dua,Kota Manado Sulawesi Utara', '', 4, 0, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0806', '0', '1'),
(1666, 'Roesli Firmansyah', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0807', '0', '1'),
(1667, 'Ibnu Yusmara', '', '081250696666', '', 0, 0, '31510800', 0, 0, '', '', 4, 24, 0, 16, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0808', '0', '1'),
(1668, 'Jauhari Eka Kusuma', '', '82185555588', '', 0, 0, '31510800', 0, 0, ' jauhari/ari bri unit blambangan umpu jln lintas sumatera desa bumi ratu kecamatan blambangan umpu kab Way Kanan lampung ', '', 4, 11, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0809', '0', '1'),
(1669, 'Rodi Afriniko', '', '85268268265', '', 0, 0, '31510800', 0, 0, 'Silvia Anggaran BPOM Pangkal pinang Jl.Pulau Bangka Komplek Pemprov BABEL', '', 4, 7, 0, 17, 2, 0, 'B1464KJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0810', '0', '1'),
(1670, 'Dikky mulyadi', '', '81289071114', '', 0, 0, '31510800', 0, 0, 'Jl. Banda No.30 gedung wahana bhakti pos Lt.5', '', 4, 16, 0, 17, 4, 1, 'D1617AAO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0811', '0', '1'),
(1671, 'Siswoyo', '', '81249496016', '', 0, 0, '31510800', 0, 0, 'jl.langsep raya blok. E No.9 Jember kodepos 68111', '', 4, 23, 0, 17, 4, 3, 'N1592AX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0812', '0', '1'),
(1672, 'RIQY ENDRIYANSYA', '', '85311892320', '', 0, 0, '31510800', 0, 0, 'Jl.kh.a dahlan no 18 rt/rw 02/02 kel prabujaya kec prabumulih timur kota prabumulih SUMSEL', '', 4, 10, 0, 17, 3, 0, 'BG1084CC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0813', '0', '1'),
(1673, 'Tri Sediyono Ibnu Sutopo', '', '81219178408', '', 0, 0, '31510800', 0, 0, 'Krajan RT 040/10, kalibeluk, Warungasem, batang 51252', '', 4, 23, 0, 17, 4, 1, 'G44FA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0814', '0', '1'),
(1674, 'ahrob saepudin', '', '81111789920857104040', '', 0, 0, '31510800', 0, 0, 'Jln raya pasar cilamaya dusun krajan no 43 rt 04/04 ds cilamaya kec cilamaya wetan kab karawang 41383 jawa barat', '', 4, 13, 0, 17, 4, 0, 'D613EBY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0815', '0', '1'),
(1675, 'MUsarokah', '', '85226278779', '', 0, 0, '31510800', 0, 0, 'kapung RT 002/004 Tanggungharjo', '', 4, 23, 0, 17, 4, 3, 'K415AH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0816', '0', '1'),
(1676, 'christanto dwi nugroho', '', '8170100070', '', 0, 0, '31510800', 0, 0, 'Jl.tanah baru rt 005\\01 kelurahan tanah baru , kec.beji depok 16426', '', 4, 15, 0, 16, 3, 0, 'B2803GS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0817', '0', '1'),
(1677, 'Herwanto', '', '82218831888', '', 0, 0, '31510800', 0, 0, 'Jln Jawa no 11A', '', 4, 16, 0, 17, 3, 3, 'D1888QU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0818', '0', '1'),
(1678, 'Tommy Alexander, ST', '', '081212129669', '', 0, 0, '31510800', 0, 0, 'Perumahan Permata\nJl.Meranti blok DC-15 no.33\nVilla regency 2 ps.kemis\nTangerang 15132', '', 4, 12, 0, 17, 3, 3, 'B8897BY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0819', '0', '1'),
(1679, 'Choirul mifftah', '', '8129077130', '', 0, 0, '31510800', 0, 0, 'Perumahan nuri blok E2 no. 5 pondok ranji...', '', 4, 14, 0, 17, 3, 0, 'B20HIM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0820', '0', '1'),
(1680, 'Bobbi Andrianto', '', '85327755911', '', 0, 0, '31510800', 0, 0, 'jl.candi permata raya no.206 rt 003/009 kalipancur/ngaliyan semarang', '', 4, 23, 0, 17, 4, 3, 'H99MJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0821', '0', '1'),
(1681, 'Denni wahyu risdiarto', 'denni.cool73@yahoo.com', '85692229999', '', 0, 0, '31510800', 0, 0, 'Komp. BSK jln Nakula 7 blok30 no 5 kayuringin jaya bekasi selatan bekasi', '', 4, 14, 0, 17, 4, 3, 'B1417OP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0822', '0', '1'),
(1682, 'Setija Dharma', 'dharmasetija_05@yahoo.co.id', '81233445725', '', 0, 0, '31510800', 0, 0, 'Barata jaya 18/23 rt 008/0005 Barata Jaya - Gubeng _surabaya', '', 4, 23, 0, 17, 4, 3, 'S1112GO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0823', '0', '1'),
(1683, 'putu ananda mahagita', '', '8122038320', '', 0, 0, '31510800', 0, 0, 'Jln.sukaati permai III no.2 bandung', '', 4, 16, 0, 17, 4, 0, 'D1801JZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0824', '0', '1'),
(1684, 'Astri Hartini', 'Asrti87@rocketmail.com', '82116328496', '', 0, 0, '31510800', 0, 0, 'Kp. Jati no 3, rt04/03, kec. Margaasih, Bandung', '', 4, 16, 0, 17, 4, 1, 'D18RW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0825', '0', '1'),
(1685, 'Dino Avinsa Anggara Putra', 'dinoavinsaanggaraputra@yahoo.com', '85727388282', '', 0, 0, '31510800', 0, 0, 'Jalan Kaliurang km.14 Perumahan Pamungkas A.109, Yogyakarta', '', 4, 20, 0, 17, 4, 1, 'AB1266MN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0826', '0', '1'),
(1686, 'Reza Suhendra', 'reza.suhendra25@gmail.com', '81261305553', '', 0, 0, '31510800', 0, 0, '\"Perumahan Taman Lestari blok D12 No.1\nKelurahan Kibing, kecamatan Batu aji. Batam\"', '', 4, 2, 0, 17, 4, 0, 'BP1427IM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0827', '0', '1'),
(1687, 'Andre Hertanto', 'Andre.octora@yahoo.com', '82117177998', '', 0, 0, '31510800', 0, 0, 'Anyelir 1 no 52 blok 14, bandung', '', 4, 16, 0, 17, 4, 0, 'D126H', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0828', '0', '1'),
(1688, 'Bramada Dharmawangsa', '', '8117803030', '', 0, 0, '31510800', 0, 0, 'Jl.Gresik No.32 Rt.21 rw 008 kelurahan 9 ilir  kec.ilir timur Palembang', '', 4, 10, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0829', '0', '1'),
(1689, 'Resti Selya', 'Reresesilya39@gmail.com', '81295999309', '', 0, 0, '31510800', 0, 0, 'Jl.Jendral Ahmad Yani apatement Mutiara Tower B unit 101 ', '', 4, 14, 0, 17, 4, 3, 'B2101NJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0831', '0', '1'),
(1690, 'M Amirudin', '', '81368998986', '', 0, 0, '31510800', 0, 0, 'jl.lingkaran 1 Lrg pedonman no 405 rt 09/02 kelurahan 15 ilir kecamatan ilir timur 1 ', '', 4, 10, 0, 17, 4, 0, 'BG888XT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0832', '0', '1'),
(1691, 'Wahyu Budi Sugiharto', '', '82242209761', '', 0, 0, '31510800', 0, 0, 'ngijo kulon rt 002/001 ngijo-tasikmadu', '', 4, 21, 0, 17, 4, 3, 'D1676QV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0833', '0', '1'),
(1692, 'Nurriffar kritia audhy', 'Nurriffar_audhy@yahoo.com', '8157133376', '', 0, 0, '31510800', 0, 0, 'Jl persatuan no 5 \nCilandak homestay\nCilandak jakarta', '', 4, 15, 0, 17, 4, 3, 'D183O', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0834', '0', '1'),
(1693, 'Tanty Octianingsih Supomo', 'tanty_supomo@yahoo.co.id', '81252444984', '', 0, 0, '31510800', 0, 0, 'Jl. Anyelir No. 08 Panorama\nSwarga Bara, Sangatta\nKalimantan Timur 75611', '', 4, 24, 0, 17, 3, 3, 'KT1645RL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837499', '', 0, '0835', '0', '1'),
(1694, 'bambang sambodo', '', '8161160504', '', 0, 0, '31510800', 0, 0, 'jl.permata indah 3 no 31 rt 007/003 cijantung pasar rebo', '', 4, 13, 0, 17, 4, 1, 'B510din', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0836', '0', '1'),
(1695, 'Dade W Permadi', 'wildan28.dw@gmail.com', '8122147819', '', 0, 0, '31510800', 0, 0, 'Cicalengka no 77, Bandung', '', 4, 16, 0, 17, 4, 3, 'D138AY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0837', '0', '1'),
(1696, 'Mochammad Iqbal', 'iqbal_sc@ymail.com', '818993381', '', 0, 0, '31510800', 0, 0, 'Teluk Langsa 4/C7/9, Kav AL, Duren Sawit, Jakarta Timur 13440', '', 4, 13, 0, 17, 4, 0, 'B195VIQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0838', '0', '1'),
(1697, 'M Irwan Hermansyah', '', '85273086688', '', 0, 0, '31510800', 0, 0, 'Jl.Belibis 5 dalam tanah kavling rt oo3/001 Bukit merapen kexcamatan Gerunggan pakalpinang bangka', '', 4, 7, 0, 17, 3, 0, 'BN1580LW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0839', '0', '1'),
(1698, 'KELIEK AGUSTYONO LUMAKSONO', 'Keliek_a@yahoo.com ', '81210887878', '', 0, 0, '31510800', 0, 0, 'Pondok Kukusan Permai E11, Kukusan, Beji, Depok', '', 4, 15, 0, 17, 3, 0, 'B8228E', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0840', '0', '1'),
(1699, 'Bambang Wijanarko', '', '', '', 0, 0, '31510800', 0, 0, 'desa lari krejo rt 002/003 larikrejo undaan', '', 4, 23, 0, 17, 4, 3, 'K739ER', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0841', '0', '1'),
(1700, 'Muhammad Sandi', '', '8117103431', '', 0, 0, '31510800', 0, 0, 'jl.Raya bukit sejahtera blok BO no. 06 rt 14 rw 004 lelurahan karang jaya -gandus-palembang', '', 4, 10, 0, 17, 4, 0, 'BG1128MI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0842', '0', '1'),
(1701, 'Alexander Sabastian Ginting', '', '81271415544', '', 0, 0, '31510800', 0, 0, 'Jl.kampar blok O no.02 komplek pusri sukamaju rt 28. rw 11 kelurahan sukamaju kecamatan sako palembang', '', 4, 10, 0, 17, 4, 1, 'BG1521IA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0843', '0', '1'),
(1702, 'Tethiys Setiawan ', '', '', '', 0, 0, '31510800', 0, 0, 'lrg  sriraya II no.14 rt 041/015 plaju ulu plaju', '', 4, 10, 0, 17, 4, 1, 'BG1862PK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0844', '0', '1'),
(1703, 'R. Sidik Junarso', 'radenj@yahoo.com, caksidiku@gmail.com', '81276067341', '', 0, 0, '31510800', 0, 0, 'Green Bintaro Residence II, Blok C8 atas Jalan Elang Raya, kampung Sawah. CIPUTAT', '', 4, 12, 0, 17, 3, 3, 'B37Q', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0845', '0', '1'),
(1704, 'Dedy jefriko', 'Dedyjefriko@gmail.com', '81213832470', '', 0, 0, '31510800', 0, 0, 'Jl h rohimin no 56 rt 08 rw 03 pesanggrahan jakarta selatan', '', 4, 13, 0, 17, 4, 0, 'B8156SN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0846', '0', '1'),
(1705, 'Dicky Hidayat', 'abangdicky71@gmail.com', '8112111508', '', 0, 0, '31510800', 0, 0, 'Perumahan Cisalak Pratama clusster Jasmine blok. DD.04 Sukamanah Cipedes Tasikmalaya kota. kode pos 46151', '', 4, 17, 0, 17, 4, 1, 'Z484NG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0847', '0', '1'),
(1706, 'Hendro Susilo', 'Hensusilo1807@gmail.com', '82126370818', '', 0, 0, '31510800', 0, 0, 'Sauyunan II no 4, Bojongloa Kidul, Bandung', '', 4, 2, 0, 17, 4, 0, 'D296AF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0848', '0', '1'),
(1707, 'Chandra Martha ', '', '', '', 0, 0, '31510800', 0, 0, 'jl.Merdeka  LK 1 no.005 Cinta Raja  rt 02 cintarus - kayu agung', '', 4, 10, 0, 17, 3, 0, 'BG1161NI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0849', '0', '1'),
(1708, 'Boy Suzanto', 'boysuzanto@gmail.com', '81222238099', '', 0, 0, '31510800', 0, 0, 'Buana Ciwastra Residence B1 No 9 Ciwastra Bandung', '', 4, 16, 0, 17, 3, 0, 'D1462RF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0850', '0', '1'),
(1709, 'Raden Adi cahyadi', 'r.adicahyadi@gmail.com', '81218603328', '', 0, 0, '31510800', 0, 0, 'Jl.Kuning Mas D4/1, Kelapa Gading Timur, Kelapa Gading, Jakarta Utara.', '', 4, 13, 0, 17, 3, 0, 'B1754ULO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0851', '0', '1'),
(1710, 'A wasono Budi Santosa', 'antoniuswasonobudi@gmail.com', '8157698682', '', 0, 0, '31510800', 0, 0, 'Jl. Emerald Indah IV Blok C 2 no 5 Bukit Emerald Indah Meteseh Tembalang Semarang', '', 4, 23, 0, 17, 3, 0, 'H8308RG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0852', '0', '1'),
(1711, 'Mikail Miko', 'mikotoei@yahoo.com', '81354649464041189602', '', 0, 0, '31510800', 0, 0, 'Jl.Bontotangnga pao-pao no.101 kab gowa sulsel', '', 4, 25, 0, 17, 4, 1, 'DD13Ly', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0853', '0', '1'),
(1712, 'Agus Setiadi', 'aguss964@gmail.com ', '81325202870', '', 0, 0, '31510800', 0, 0, 'Perum Argamas Timur no 282 rt 02 rw 09 Kel Ledok Kec Argomulyo Salatiga Jawa Tengah ', '', 4, 23, 0, 17, 4, 0, 'H8062FB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0854', '0', '1'),
(1713, 'Sony Witjaksono', 'sony.wimas@gmail.com', '8122813959', '', 0, 0, '31510800', 0, 0, 'Jl. Trunojoyo IX/A-20\nSemarang 50267', '', 4, 23, 0, 17, 4, 0, 'H845YT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0855', '0', '1'),
(1714, 'BUDI SANTOSO', 'Eka_putrabudi@yahoo.com', '81327556974', '', 0, 0, '31510800', 0, 0, 'Jl. Srigunting No 5 Parakancanggah RT. 01 / RW 06 Banjarnegara Jawa tengah', '', 4, 23, 0, 17, 3, 0, 'AD8060JB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0856', '0', '1'),
(1715, 'Hendra Renaldy', 'renaldy23.hr@gmail.com', '8115583612', '', 0, 0, '31510800', 0, 0, 'Jalan aminah syukur gg mekar mulia 2 no 63', '', 4, 24, 0, 17, 4, 1, 'B1325TJK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0857', '0', '1'),
(1716, 'Maulana Yusup', 'dedeng69@gmail.com', '', '', 0, 0, '31510800', 0, 0, 'Jl. Sukamaju No 16 Sukajadi Bandung', '', 4, 16, 0, 17, 4, 3, 'D999MW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0858', '0', '1'),
(1717, 'Imam Akbar', 'Putridona923@gmail.com', '85368888025', '', 0, 0, '31510800', 0, 0, 'Jln.letnan simanjuntak no.1345 rt.20/rw.08 kelurahan pahlawan kecamatan kemuning palembang.', '', 4, 10, 0, 17, 4, 0, 'BG1455IU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0859', '0', '1'),
(1718, 'Joko Prasetyo', '', '8112653334', '', 0, 0, '31510800', 0, 0, 'Alam Citra Estate Blok E21 jl.parangtritis KM 7 ,desa panggungharjo kec sewon kab bantul yogyakarta', '', 4, 20, 0, 17, 4, 0, 'B1735WH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0860', '0', '1'),
(1719, 'Imam Buchori', 'saranasuryaasih@gmail.com ', '81330916161', '', 0, 0, '31510800', 0, 0, 'graha al iklhas blok G5 sedati gede sidoarjo ', '', 4, 23, 0, 17, 4, 0, 'W359RG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0861', '0', '1'),
(1720, 'Tito riswoyo', 'abu abu tua metalik', '0811990022', '', 0, 0, '135277200', 0, 0, 'Griya Argo Kencana, No. 30. Jl. Diponegoro - Ungaran. Kab. Semarang-Jawa Tengah.', '', 4, 23, 0, 17, 4, 0, 'H8118ER', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0862', '0', '1'),
(1721, 'Isnain Fuadhy', 'ifuadhy@gmail.com', '6285225042891', '', 0, 0, '31510800', 0, 0, 'Jl. Sultan adam (depan rumah makan H. Fauzan)\nKomplek mandiri lestari\nBlok B3 RT.47 no.76 banjarmasin kalimantan selatan', '', 4, 2, 0, 17, 4, 3, 'DA8425TAB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0863', '0', '1'),
(1722, 'yogi komar purnawanto', '', '82180010107', '', 0, 0, '31510800', 0, 0, 'Taman Indah talang kelapa komp.kehutanan 1 jalan mangga V blok BC 12 rt 043/001 kelurahan talang kelapa kecamtan alang -alang lebar maskarebet  km 10 palembang', '', 4, 10, 0, 17, 4, 3, 'BG1688PJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0864', '0', '1'),
(1723, 'Muh Taufiq Ridlo', '', '82123363344', '', 0, 0, '31510800', 0, 0, 'Komplek Kunciran Indah Permai Blok K, Jl.Gunung Lawu 3 No.10, RT 010/RW02, Pinang-Tangerang', '', 4, 12, 0, 17, 3, 0, 'B1239VLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0865', '0', '1'),
(1724, 'Subari', 'Cv.ranggasejati@gmail.com', '8121006664', '', 0, 0, '31510800', 0, 0, 'Jl blok duku no 10HT komplek rawakuda cibubur', '', 4, 13, 0, 17, 4, 0, 'B1132TJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0866', '0', '1'),
(1725, 'Eka Andreas ', 'eka@kaos-banten.com', '877772648881', '', 0, 0, '31510800', 0, 0, 'puri serang hijau blok A9 no.6 rt.05/13 cipocok jaya kota serang', '', 4, 12, 0, 17, 4, 1, 'B1158WJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0867', '0', '1'),
(1726, 'chitra Pamungkas', '', '', '', 0, 0, '31510800', 0, 0, 'Jl.Puspa barat 1 No.21 003/003 jatisari buahbatu', '', 4, 16, 0, 17, 3, 0, 'D298CF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0868', '0', '1'),
(1727, 'Rizal ikhsan ', 'Ikhsan.rizkyawan@gmail.com', '8224023730', '', 0, 0, '31510800', 0, 0, 'Jalan kolonel masturi komplek griya asri cahaya cipageran blok k 22', '', 4, 16, 0, 17, 3, 0, 'D1470UI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0869', '0', '1'),
(1728, 'Suko Wardoyo', 'diryogodir@yahoo.co.id', '81234196555', '', 0, 0, '31510800', 0, 0, 'Perum Graha Palam Indah Blok D No. 3\nKel. Jelak Ombo, Kec. Jombang\nRt. 01 Rw. 04\nKab. Jombang - Jawa Timur', '', 4, 23, 0, 17, 3, 0, 'S419WL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0870', '0', '1'),
(1729, 'Agus Saiful Hadi /pupung', '', '08533555557208560600', '', 0, 0, '31510800', 0, 0, 'Jl.Wates Permai 07 kabdangsemangkon paciran lamongan', '', 4, 23, 0, 17, 4, 0, 'w189HP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0871', '0', '1'),
(1730, 'Fajar widyatma nugrahanto', 'f.widyatma@yahoo.com', '2943687796', '', 0, 0, '31510800', 0, 0, 'Jl tentara pelajar no 117 \nPurin kendal\n', '', 4, 23, 0, 17, 4, 3, 'H1443PJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0872', '0', '1'),
(1731, 'ranggana tito alyasin', 'ranggakenyot@yahoo.co.id', '85268472741', '', 0, 0, '31510800', 0, 0, 'Jl lebay hasan rt 13 rw 04 kel. Batang bungo, kec. Pasar muara bungo. Jambi', '', 4, 9, 0, 17, 4, 0, 'B8779MR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0873', '0', '1'),
(1732, 'Fathur Shafly', 'faturshafly@yahoo.co.id', '8990044775', '', 0, 0, '31510800', 0, 0, 'Jalan bawal 1 no 9 rawamangun\nJakarta timur', '', 4, 13, 0, 17, 3, 0, 'B8299PN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0874', '0', '1'),
(1733, 'Iwan Julian Nur Huda', '', '', '', 0, 0, '31510800', 0, 0, 'gang pinggir 79 rt 002/004 kranggan semarang', '', 4, 23, 0, 17, 4, 1, 'H7571QG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837500', '', 0, '0875', '0', '1'),
(1734, 'bambang hariyadi', 'b2hariyadi@gmail.com', '81342681060', '', 0, 0, '31510800', 0, 0, 'Jl. Cilallang 7 no. 16a, rapocini, makassar 90222', '', 4, 25, 0, 17, 4, 1, 'DD84MZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0876', '0', '1'),
(1735, 'Alvitania - Tin Alnia', 'Bbmtin77@gmail.com', '2189109273', '', 0, 0, '31510800', 0, 0, 'Jl.Industri utara blok ss ruko pavilion niaga no15 jababeka 2 cikarang bekasi', '', 4, 13, 0, 17, 3, 0, 'B8240zl', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0877', '0', '1'),
(1736, 'Saditya Nugraha', '', '', '', 0, 0, '31510800', 0, 0, 'Jl.kawaluyaan indah VI no.11 A RT 004/005 Buah batu', '', 4, 16, 0, 17, 3, 3, 'D1455RP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0878', '0', '1'),
(1737, 'Bukhori Muslim', 'murahjayagroup@gmail.com', '87856820001', '', 0, 0, '31510800', 0, 0, 'jl.mangga rt 005 /003 desa pocar kecamatan bagil', '', 4, 23, 0, 17, 3, 0, 'N1669Vr', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0879', '0', '1'),
(1738, 'Daniel Ahendra Suwandi', 'danielahendra@hotmail.com', '822441227465', '', 0, 0, '31510800', 0, 0, 'perumahan puri surya jaya cluster taman athena blok 12 no.41 gedangan sidoarjo', '', 4, 23, 0, 17, 3, 0, 'B2892LB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0880', '0', '1'),
(1739, 'Danny setyadi', 'Fransiskus_Xaverius_DannySetiadi@yahoo.co.id', '81285320287', '', 0, 0, '31510800', 0, 0, 'Jalan pemuda no.152A , Muntilan ', '', 4, 20, 0, 17, 3, 0, 'AB1647LT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0882', '0', '1'),
(1740, 'Ariston Silalahi', 'ariston.mku@gmail.com', '81380883000', '', 0, 0, '31510800', 0, 0, 'Jl. Kusen IV No. 19. RT. 01 / RW. 02. \nKel. Kayu Putih. Kec. Pulo Gadung.\nJakarta Timur.\nDKI Jakarta. 13210', '', 4, 13, 0, 17, 4, 0, 'B1595TJH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0883', '0', '1'),
(1741, 'Mulyanto', '', '81216016857', '', 0, 0, '31510800', 0, 0, 'perum mutira citra asri blok i4/18 sumorame candi sidoarjo', '', 4, 23, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0884', '0', '1'),
(1742, 'parjana', 'parjana11@gmail. com', '87838120020', '', 0, 0, '31510800', 0, 0, 'ngireng_ngireng rt4. panggung harjo sewon. bantul. yogyakarta\n', '', 4, 20, 0, 17, 3, 3, 'B899sp', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0885', '0', '1'),
(1743, 'bambang m. supriyanto', 'supriyantob47@yahoo.com', '08112424185087899701', '', 0, 0, '31510800', 0, 0, 'desa karangmulya rt.05 rw.04 kec.plumbon.kab. cirebon', '', 4, 18, 0, 17, 4, 0, 'E84MS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0886', '0', '1'),
(1744, 'Marcus Elvando Lumban Gaol', 'markvangaol@gmail.com', '87722296888', '', 0, 0, '31510800', 0, 0, 'Apartemen Metro Sunter Blok 1 Lt.14 unit 1404', '', 4, 13, 0, 17, 2, 0, 'B8520BP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0887', '0', '1'),
(1745, 'ACHMAD  ZAIDAN  HIDAYAT', 'zaidan@taikisha.co.id', '811974415', '', 0, 0, '31510800', 0, 0, 'Green Andara  Residence Blok C6/5,  Jl. Andara No17 Pondok Labu\nCilandak  Jakarta Selatan 12450. DKI  Jakarta', '', 4, 15, 0, 17, 4, 0, 'B75EIS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0888', '0', '1'),
(1746, 'E.Dewi cintami', 'edewicintami@gmail.com', '81908902888', '', 0, 0, '31510800', 0, 0, 'Matoa Resident Blok A8, Jl.Timbul kelurahan ciganjur-jagakarsa-jaksel - 12630', '', 4, 15, 0, 17, 4, 1, 'B888EDC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0889', '0', '1'),
(1747, 'aprizal syam', 'aprizalsyam@yahoo.com', '81363188291', '', 0, 0, '31510800', 0, 0, 'RSD Kolonel Abun Jani Bangko ,Jl.Kesehatan no.20 Pematang Kandis,kab Merangin ,prov Jambi', '', 4, 9, 0, 17, 4, 0, 'BA550KA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0890', '0', '1'),
(1748, 'Hidayat Kemal', 'hidayat.kemal@gmail.com', '8112636967', '', 0, 0, '31510800', 0, 0, 'Perum Tiara B-3 Pelemburan RT14 RW25 kel.Sariharjo kec.Ngaglik kec.Sleman DIY', '', 4, 20, 0, 17, 4, 0, 'F113NA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0891', '0', '1'),
(1749, 'Jonathan Oei Joeng', 'jonathan.oeijoeng@gmail.com', '8121542430', '', 0, 0, '31510800', 0, 0, 'Taman Kopo Indah\nBlok D4 No 115\nBandung', '', 4, 16, 0, 17, 4, 0, 'B1953PJJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0892', '0', '1'),
(1750, 'Chiko irwanto', '', '85203212111', '', 0, 0, '31510800', 0, 0, 'desa prunggahan kulon.kec.semanding rw 2 tuban jawa timur', '', 4, 23, 0, 17, 4, 0, 'N1110HK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0893', '0', '1'),
(1751, 'Edi Santoso', 'sales.lestari@gmail.com', '81325630757', '', 0, 0, '31510800', 0, 0, 'Desa Mindahan RT.03/01 \nBatealit Jepara 59461\nJawa Tengah', '', 4, 23, 0, 17, 4, 3, 'G7902AA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0894', '0', '1'),
(1752, 'teuku wan muharram', 'teuku.muharram@gmail.com', '85277805440', '', 0, 0, '31510800', 0, 0, 'Jl. Rukun no. 29 Medan Petisah, Medan.', '', 4, 18, 0, 17, 3, 0, 'Bk1442af', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0895', '0', '1'),
(1753, 'Dadang efendi', '', '85231911228', '', 0, 0, '31510800', 0, 0, 'Jl.suningrat rt.12 rw.03 desa ketegan, kec.taman ,kab sidoarjo', '', 4, 23, 0, 17, 4, 0, 'W1098PW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0896', '0', '1'),
(1754, 'Erna sitit Khotimah', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 16, 0, 17, 4, 1, 'D1073OE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0897', '0', '1'),
(1755, 'Okta Riansyah', '', '', '', 0, 0, '31510800', 0, 0, 'jl.prof Dr.Soepomo no.549 rt.009/004 kel.pahlawan kec.kemuning kota palembang', '', 4, 10, 0, 17, 4, 0, 'BG734CT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0898', '0', '1'),
(1756, 'Wawan Hermawan ', 'onesleed@yahoo.com', '81320362435', '', 0, 0, '31510800', 0, 0, 'Dusun Pahing RT/RW 08/04\nDesa Ciawilor\nKec. Ciawigebang\nKab. Kuningan\nJawa barat', '', 4, 18, 0, 17, 4, 1, 'E8YC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0899', '0', '1'),
(1757, 'Hartono Sufi', '', '', '', 0, 0, '31510800', 0, 0, 'Taman Duta Mas blok.B 7/20 Rt.003/009 Wijaya Kusuma Jakbar', '', 4, 12, 0, 17, 4, 1, 'B1077SJJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0900', '0', '1'),
(1758, 'efanny firdaus', 'evan_jha@yahoo.com', '85271924924', '', 0, 0, '31510800', 0, 0, 'Jl seroja no 32 arengka', '', 4, 6, 0, 17, 4, 0, 'bm1532do', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0901', '0', '1'),
(1759, 'Anang Afyudi', 'Bhon_nank007@yahoo.con', '85258711111', '', 0, 0, '31510800', 0, 0, 'Jln Sultan agung no 30-34 Temuguruh - Genteng - Banyuwangi - Jawa Timur \n68465', '', 4, 23, 0, 17, 4, 1, 'L1339WU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0902', '0', '1'),
(1760, 'Wahyu dwi pramana ', 'wdpramana12@gmail.com', '81299367696', '', 0, 0, '31510800', 0, 0, 'Jl.rs.ashobrin tangerang, kp.cihuni rt 02/03, no 45. Kec.pegedangan. kab.tangerang.\nKode pos: 15338\nBanten', '', 4, 12, 0, 17, 4, 0, 'B1418SJH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0903', '0', '1'),
(1761, 'Vheli yanto seru', 'Vhelyx@gmail.com', '85299920103', '', 0, 0, '31510800', 0, 0, 'Jl.perintis kemerdekaan.\nPerumahan pury yuhana permai,blok yuhana 3,no.60', '', 4, 25, 0, 17, 4, 0, 'DD515II', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0904', '0', '1'),
(1762, 'Saptyan Choirul Mustakim', 'rian857@gmail.com', '82232224898', '', 0, 0, '31510800', 0, 0, 'perum alam sari blok D 1 Jenesari Genteng,banyuwangi,jatim', '', 4, 23, 0, 17, 4, 0, 'P471Z', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0905', '0', '1'),
(1763, 'Arif zaenal abidin', 'arif.zaenalabidin@yahoo.com', '08156407111081312121', '', 0, 0, '31510800', 0, 0, 'Komplek pilang perdana blok b1 no 6 rt 02 rw 06 adidharma cirebon', '', 4, 18, 0, 17, 4, 1, 'E12IF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0906', '0', '1'),
(1764, 'Agung Rubiyanto', 'ar.arsitek@gmail.com', '81317442578', '', 0, 0, '31510800', 0, 0, 'Jl. Pejaten Barat 4 no 30 Jakarta Selatan', '', 4, 13, 0, 17, 4, 1, 'D34NIS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0907', '0', '1'),
(1765, 'dr.Dedi Supriadi M hum', 'dedi70@yahoo.com', '8122355233', '', 0, 0, '31510800', 0, 0, 'jl Ciburial rt 03/21 Cileunyi ,kab bandung', '', 4, 16, 0, 17, 4, 3, 'D1216AAO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0908', '0', '1'),
(1766, 'Ipnu Djoko Hartono', 'ipnudh@yahoo.com', '81222566756', '', 0, 0, '31510800', 0, 0, 'Jl.Sanggar kencana XII /18 bandung', '', 4, 16, 0, 17, 3, 3, 'D1188YB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0909', '0', '1'),
(1767, 'Yayan Sudianto', '0811209285 / 02287303551', '08112092850228730355', '', 0, 0, '31510800', 0, 0, '\"Komp. Griya Bandung Asri GBA 1 blok F77 RT01/RW15. Bojongsoang.Bandung.\nKode pos 40288\"', '', 4, 16, 0, 17, 4, 0, 'D1892JR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0910', '0', '1'),
(1768, 'Akhmad Fauzi', 'fauzi.crvclubindonesia@gmail.com', '8999336267', '', 0, 0, '31510800', 0, 0, 'Taman Kota Ciperna\nCluster Mawar Blok J.2\nKel. Ciperna Kec. Talun\nKab. Cirebon', '', 4, 18, 0, 17, 4, 1, 'F34R', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0911', '0', '1');
INSERT INTO `member` (`id_member`, `nama`, `email`, `hpwa`, `kemeja`, `prodomisilih`, `kabdomisilih`, `tgllahir`, `proalamat`, `kabalamat`, `alamat`, `kodepos`, `idjabatan`, `idchapter`, `idnonchapter`, `idtahununit`, `idkapasitasunit`, `idwarnaunit`, `nopolisi`, `norangka`, `nomesin`, `ktpsim`, `stnk`, `buktitransfer`, `photo`, `ppok`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `insertdate`, `editdate`, `idedit`, `nopung`, `statusnopung`, `statusregis`) VALUES
(1769, 'Imas Rahayu', 'rahayuimas22@yahoo.com', '87776262442', '', 0, 0, '31510800', 0, 0, 'Jl. Komp.pam lama no. 27C Rt 08 Rw 06 Bendungan Hilir Tanah Abang Jakarta Pusat', '', 4, 13, 0, 17, 4, 0, 'B843AYU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0912', '0', '1'),
(1770, 'Purwanta', 'yahpur@gmail.com', '8122772732', '', 0, 0, '31510800', 0, 0, 'Potrobangsan IV No. 15 Kota Magelang Jawa Tengah', '', 4, 23, 0, 17, 4, 0, 'AB1510ET', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837501', '', 0, '0913', '0', '1'),
(1771, 'Haerul', 'muhammadbaran290989@yahoo.co.id', '85695636060', '', 0, 0, '31510800', 0, 0, 'Kp.jati rt o4/02 kec cibodas kota tangerang', '', 4, 12, 0, 17, 4, 0, 'B1995UJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0914', '0', '1'),
(1772, 'Dian Prasetyowati', 'dianprasetyowati@gmail.com', '8158906345', '', 0, 0, '31510800', 0, 0, 'Pondok Aren, Tangsel.', '', 4, 12, 0, 17, 4, 0, 'B1028WLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0915', '0', '1'),
(1773, 'Krisdianto guna setiawan', 'krisdian.77@gmail.com', '', '', 0, 0, '31510800', 0, 0, 'Jl. Warga gg T No 26. RT 06/03. Pejaten barat. PS minggu. Jaksel', '', 4, 14, 0, 17, 3, 0, 'B1863KLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0920', '0', '1'),
(1774, 'Rahmi farida', 'rida2607@yahoo.com', '81519118889', '', 0, 0, '31510800', 0, 0, 'Apt. Season city tower A 10 Aa\nJln. Latumenten Jakarta Barat', '', 4, 12, 0, 17, 4, 1, 'B778RF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0921', '0', '1'),
(1775, 'anto subandi', 'ant.subandi@gmail.com', '81808047979', '', 0, 0, '31510800', 0, 0, 'Komplek griya caraka blok a4 no.09 kedawung cirebon', '', 4, 18, 0, 17, 4, 0, 'E1815YO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0922', '0', '1'),
(1776, 'Korry purnaikha', 'Korrydiera11@yahoo.com', '81320018911', '', 0, 0, '31510800', 0, 0, 'Ds.suranenggala kulon blok III rt 09/03 kec.suranenggala kab.cirebon', '', 4, 18, 0, 17, 4, 1, 'E616IT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0923', '0', '1'),
(1777, 'khorisna krishartanto', 'khorisna@yahoo.co.id', '811299179', '', 0, 0, '31510800', 0, 0, 'Jl. Ganesha Selatan II no. 63 RT.04 RW.04 PEDURUNGAN TENGAH - SEMARANG', '', 4, 23, 0, 17, 4, 0, 'H7894SG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0924', '0', '1'),
(1778, 'Dian hermansyah', '', '81357484878', '', 0, 0, '31510800', 0, 0, 'perum mendut regenci blok n 15 rt 3 rw 5 kecamatan kota banyuwangi', '', 4, 23, 0, 17, 4, 0, 'L1489OK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0925', '0', '1'),
(1779, 'Otniel Frans Royce Alim', 'Margarethaliemz15@gmail.com', '81977700200', '', 0, 0, '31510800', 0, 0, 'BCF Sekawan Elok b4 no.38 sidoarjo', '', 4, 23, 0, 17, 4, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0926', '0', '1'),
(1780, 'Herry Sumarsono', '', '81230008898', '', 0, 0, '31510800', 0, 0, 'jl.gajah no.29 rt.12 rw.04 magersari sidoarjo', '', 4, 23, 0, 17, 4, 0, 'L1771MC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0927', '0', '1'),
(1781, 'heru iskandar dzulkarnain', 'humas.ccijatim@gmail.com', '85730152400', '', 0, 0, '31510800', 0, 0, 'istana mentari blok b4 no 11, cemengkalang sidoarjo', '', 4, 23, 0, 17, 3, 3, 'L1405TT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0928', '0', '1'),
(1782, 'Agus wahyono', '', '', '', 0, 0, '31510800', 0, 0, 'jl.merdeka utara H 17 rt 004/014 sideroje lor -siderejo, Salatiga , Jawa Tengah 50714', '', 4, 23, 0, 17, 4, 3, 'H8055WT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0929', '0', '1'),
(1783, 'ardinal saputra', 'archsaputra@gmail.com', '85322036900', '', 0, 0, '31510800', 0, 0, 'Jl. RE. Martadinata Komp. Bina Marga No. 05 Rt. 002 Rw. 001 Kel. Kalidoni Kec. Kalidoni Kota Palembang Kode Pos 30118', '', 4, 10, 0, 17, 3, 0, 'BG1472LO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0930', '0', '1'),
(1784, 'Muhammad Rizky', 'kickyjan@icloud.com', '82188197077', '', 0, 0, '31510800', 0, 0, 'Zahran rent car dusun simpang tiga desa limbato kecamatan tilamuta kabupaten boalemo provinsi gorontalo', '', 4, 25, 0, 17, 4, 0, 'DM73Y', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0931', '0', '1'),
(1785, 'Martimbul Rahman', 'rahmandoor@gmail.com', '81287773500', '', 0, 0, '31510800', 0, 0, 'Jalan masjid al husna no.126\nRT.004 RW.01\nKel. Kelapa dua wetan\nKec. Ciracas\nJakarta Timur\n13740', '', 4, 13, 0, 17, 4, 3, 'B369DDY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0932', '0', '1'),
(1786, 'Cahyo Sukarno', 'cahyo.sukarno@yahoo.com', '81229611186', '', 0, 0, '31510800', 0, 0, 'Stasiun gang 2 no.40 rt 09 rw 02 bintoro demak', '', 4, 23, 0, 17, 3, 3, 'H8398KS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0933', '0', '1'),
(1787, 'Charles Allagan', 'charles.macho73@gmail.com', '81381224138', '', 0, 0, '31510800', 0, 0, 'Permata Timur 1 blok K/10 kel.pondok kelapa, kec.duren sawit - jakarta timur', '', 4, 13, 0, 17, 3, 3, 'B1702KLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0934', '0', '1'),
(1788, 'M Ridho Susilo Putra', 'ridho_putra@yahoo.co.id', '85322351995', '', 0, 0, '31510800', 0, 0, 'Jl mawar no 21  ds. Sutawangi kec. Jatiwangi . Kab. Majalengka', '', 4, 18, 0, 17, 4, 1, 'E1612vq', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0935', '0', '1'),
(1789, 'Soseno Wijokongko', 'soseno.wijokongko@gmail.com', '8161443495', '', 0, 0, '31510800', 0, 0, 'Dukuh Zamrud R13 no 20\nKel. Padurenan \nKec. Mustika jaya\nBekasi 17156', '', 4, 14, 0, 17, 4, 0, 'B121FNA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0936', '0', '1'),
(1790, 'Yudha', 'Lahuda79@yahoo.com', '8567598854', '', 0, 0, '31510800', 0, 0, 'Jl.Pramuka sari 1, kp.jawa Rawasari , Gg.kabel atas rt.09/09 No.19. Rawasari, Cempaka putih. Jakarta Pusat. 10570', '', 4, 13, 0, 17, 3, 0, 'B2942WY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0937', '0', '1'),
(1791, 'Hary wibowo', 'Martutiyuli@yahoo.co.id', '817225742', '', 0, 0, '31510800', 0, 0, 'Jl jendral sudirman rt01/03 gang haji rasam 1 no 82 kranji bekasi barat', '', 4, 14, 0, 17, 3, 0, 'B1065KLR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0938', '0', '1'),
(1792, 'fifik firmansyah', 'firmansyah.fifik@gmail.com', '81662884', '', 0, 0, '31510800', 0, 0, 'Bukepin 11 blok e 2 no 10 rt oo4 rw oo6 kel kepongpongan kec talun kab cirebon', '', 4, 18, 0, 17, 4, 1, 'E1789KZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0939', '0', '1'),
(1793, 'Zulfa Hendri', '', '821778667491', '', 0, 0, '31510800', 0, 0, 'Jl.Abadi no.461 sidomulyo 2 talang jawa,kec. lawang kidul,kab.muara enimsumatera selatan', '', 4, 10, 0, 17, 3, 0, 'BG678AM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0940', '0', '1'),
(1794, 'R Panji', 'phanjhie@gmail.com', '8119447933', '', 0, 0, '31510800', 0, 0, 'JL karet pasar baru timur 5 RT 015 RW 09 No 28 karet tengsin Jakarta pusat', '', 4, 13, 0, 17, 4, 3, 'B1394BJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0941', '0', '1'),
(1795, 'Azwir', 'azwir.zubir@gmail.com', '8129994255', '', 0, 0, '31510800', 0, 0, 'Jl. Thin IV no 4C Komplek Islamik Village Kelapa Dua Tangerang', '', 4, 12, 0, 17, 4, 0, 'B1341NLR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0942', '0', '1'),
(1796, 'Supriyadi ', 'Auto.techno123@Gmail.com ', '8128805985', '', 0, 0, '31510800', 0, 0, 'Villa gading harapan blok i1 nmr 28 bahagia babelan, Bekasi ', '', 4, 14, 0, 17, 3, 0, 'B1478flo', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0943', '0', '1'),
(1797, 'teguh winoto', 'teguhwinoto23@gmail.com', '85777727494', '', 0, 0, '31510800', 0, 0, 'aspol semarang utara blok c no 14, purwodinatan, semarang tengah', '', 4, 23, 0, 17, 3, 0, 'H8044GS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0944', '0', '1'),
(1798, 'Agustinus Chandra Pietama', 'chanz.stik67@gmail.com', '82133996000', '', 0, 0, '31510800', 0, 0, 'Polres Dumai jl.sudirman, dumai,riau', '', 4, 6, 0, 17, 4, 1, 'AD7355Y', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0945', '0', '1'),
(1799, 'Sifa sidhayatra', 'Sidhayatra@gmail.com', '81296622911', '', 0, 0, '31510800', 0, 0, 'Vilanusa indah 5 blok SD 2 no.24 rt 4 rw 29 cluster maleo ciangsana gn.putri Bogor 16968', '', 4, 15, 0, 17, 3, 0, 'B8905HQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0946', '0', '1'),
(1800, 'Arman syafii', 'Arsya0109@gmail.com', '81220900300', '', 0, 0, '31510800', 0, 0, 'Jln. Dusun kiwon rt 005 rw 003. Ciledug kulon. Kec. Ciledug. Kab. Cirebon.', '', 4, 18, 0, 17, 4, 3, 'D9IB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0947', '0', '1'),
(1801, 'Tipyanto', 'tipyanto@gmail.com', '85224913456', '', 0, 0, '31510800', 0, 0, 'Perum bunga lestari blok A.37 Rt 17 Rw 03 kel.ciporang. kec.kuningan. kab kuningan .jawabarat', '', 4, 18, 0, 17, 4, 0, 'E474MM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0948', '0', '1'),
(1802, 'Hendra Mulyana', '', '81324082004', '', 0, 0, '31510800', 0, 0, 'Jl. Kruing VIII No.172 BAS\nKel. Cirebon Girang\nKec. Talun\nKab. Cirebon', '', 4, 18, 0, 17, 4, 0, 'E1358VD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0949', '0', '1'),
(1803, 'Dedi wahyudi', 'dewa1969@gmail.com', '81324084529', '', 0, 0, '31510800', 0, 0, 'Graha Tanjung Residen kav 27 Rt.01/05 Harjamulya kota Cirebon', '', 4, 18, 0, 17, 4, 0, 'D1644ABT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0950', '0', '1'),
(1804, 'Wakhrudin', 'wakhrudin2006@yahoo.co.id', '81269214000', '', 0, 0, '31510800', 0, 0, 'pegambiran residence gardenia B IX /10 LMWK kota cirebon', '', 4, 18, 0, 17, 4, 3, 'E124NW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0951', '0', '1'),
(1805, 'Ari Krismana', 'arikrismana@gmail.com', '8116106060', '', 0, 0, '31510800', 0, 0, 'Jl. Karya Wisata Komp. J City Metropolis V no.1 Medan Johor', '', 4, 4, 0, 17, 4, 3, 'BK73ND', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0952', '0', '1'),
(1806, 'Harry novarianto', 'Lollpopcomm@gmail.com', '81808913148', '', 0, 0, '31510800', 0, 0, 'Jl. H. Soleh 1a dalam no 40 kebonjeruk jakarta barata', '', 4, 12, 0, 17, 4, 0, 'B1819kf', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0953', '0', '1'),
(1807, 'Deni Setiawan', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 17, 3, 0, 'B1176PLO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0954', '0', '1'),
(1808, 'Suharyadi SE.MH', 'pdamsuharyadi@gmail.com', '08231888840308522222', '', 0, 0, '31510800', 0, 0, 'Jl.Raya Desa Surakarta Rt.04 Rw.07 Kec.Suranenggala Kab.Cirebon 45152', '', 4, 18, 0, 17, 4, 1, 'E4IR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0955', '0', '1'),
(1809, 'Tri Heru Purwanto', 'triheru.85@gmail.com', '85288351100', '', 0, 0, '31510800', 0, 0, 'Jl.Bororbudur Rt 003/012 kembangarum,semarang barat,50148', '', 4, 23, 0, 17, 3, 0, 'H8260QA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837502', '', 0, '0956', '0', '1'),
(1810, 'M. Dzaky F. Surapranata', 'Dzaky Surapranata', '8562210800', '', 0, 0, '31510800', 0, 0, 'Komplek Griya Tugu Asri Blok A1/14 Rt.01/19 Kel. Tugu Kec. Cimanggis Depok 16451 Jawa Barat', '', 4, 15, 0, 17, 4, 0, 'D19DS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0957', '0', '1'),
(1811, 'Rizki Wibawa Mukti', 'sabiansgentawibawa@yahoo.co.id', '81223719451', '', 0, 0, '31510800', 0, 0, '-Home 1 : Jl Kidang Pananjung No 49 Pangandaran,Jawa Barat\n\n-Home 2 : Jl Re Martadinata,Perum Permata Intan Regency,Intan Berlian Blok 1,No 22 Tasikmalaya', '', 4, 17, 0, 17, 4, 0, 'D431MI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0958', '0', '1'),
(1812, 'Fitrianto Budi Nurjaya', 'nurjaya_geologi@yahoo.com', '81326370615', '', 0, 0, '31510800', 0, 0, 'Jl.Wahyu temurun 8 no 11 Rt.03/021\nTlogosari KLN, Semarang, Jawa Tengah\n', '', 4, 23, 0, 17, 4, 0, 'H8369JA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0959', '0', '1'),
(1813, 'Billy jinawi', 'billy_sinyo_yoi@yahoo.co.id', '8157676438', '', 0, 0, '31510800', 0, 0, 'Jl. Mintojiwo Timur no. 9 Semarang', '', 4, 23, 0, 17, 4, 3, 'B144NL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0960', '0', '1'),
(1814, 'Imawan eko setyadi', 'Imawan.eko@gmail.com', '8151679713', '', 0, 0, '31510800', 0, 0, 'Perum pemda blok c 10 no 15 jatiasih kota bekasi17423', '', 4, 14, 0, 17, 4, 1, 'B27NJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0961', '0', '1'),
(1815, 'Polycarpus Fery ', 'polycarpusfery@gmail.com ', '81294385281', '', 0, 0, '31510800', 0, 0, 'Montreal YC 4 no. 5 Kota Wisata, Cibubur , Kab Bogor', '', 4, 15, 0, 17, 4, 1, 'B1001', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0962', '0', '1'),
(1816, 'H sumiadi', 'verdhimtourandtravel@gmail.com', '81217200806', '', 0, 0, '31510800', 0, 0, 'pekingan 36 sumbersono 01/01 dlanggu mojokerto 61371 ', '', 4, 23, 0, 17, 4, 0, 'S1717NN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0963', '0', '1'),
(1817, 'doni cahyono', 'cahyono.doni@gmail.com', '8157050108', '', 0, 0, '31510800', 0, 0, 'Desa hulaan rt18/rw07 kec menganti gresik', '', 4, 23, 0, 17, 3, 0, 's1834we', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0964', '0', '1'),
(1818, 'Diah Mayarani ', 'diah.mayarani@yahoo.com', '8122849986', '', 0, 0, '31510800', 0, 0, 'Taman Bukit Hijau FW 22 Greenwood Manyaran Semarang ', '', 4, 23, 0, 17, 4, 3, 'H7695RY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0965', '0', '1'),
(1819, 'Rismi Yulianto', '', '81373679727', '', 0, 0, '31510800', 0, 0, 'aris / Maesya kerudung, Basement Ramayana blok D74 Pangkal pinang,bangka', '', 4, 7, 0, 17, 4, 0, 'Bn1325TN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0966', '0', '1'),
(1820, 'Bisma Agung Saputra', 'bismaagungsaputra@gmail.com', '85322884992', '', 0, 0, '31510800', 0, 0, 'Jl.dr setiabudi pegagan kec palimanan kab. Cirebon no 90 rt02 rw02', '', 4, 18, 0, 17, 4, 0, 'D18FB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0967', '0', '1'),
(1821, 'Riky Hendriyansah Kusman', 'ricky.hendriansyah@gmail.com', '81909925119', '', 0, 0, '31510800', 0, 0, 'Bale Palinggihan Regency Bblok D.6\nRT/RW 001/003 Kel. Kalijaga Kec. Harjamukti\nKota Cirebon', '', 4, 18, 0, 17, 4, 0, 'E1236BC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0968', '0', '1'),
(1822, 'Bima adhiputranto', 'Biiimooo@yahoo.com', '81803203082', '', 0, 0, '31510800', 0, 0, 'Grand Pinang Cirendeu Blok H\nCirendeu, Ciputat, Tangerang Selatan', '', 4, 12, 0, 17, 3, 0, 'B8524BM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0969', '0', '1'),
(1823, 'Juliadi Wijaya', 'juliadi.wijaya@yahoo.com', '85723000033', '', 0, 0, '31510800', 0, 0, 'Jln. Ir. H. Juanda No.70/C Rt.03/Rw.03 Desa Mekarsari Kec. Cianjur Kab. Cianjur', '', 4, 16, 0, 17, 4, 0, 'D1234RS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0970', '0', '1'),
(1824, 'HADI SETIAWAN', 'hadi.setia24@yahoo.co.id', '81330392277', '', 0, 0, '31510800', 0, 0, 'Jl raya beji 98 batu malang', '', 4, 23, 0, 17, 4, 3, 'L1116JO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0971', '0', '1'),
(1825, 'Harianto', 'anto_coz33@yahoo.com', '8114188668', '', 0, 0, '31510800', 0, 0, 'perumahan citra garden blok E2 no 29\nkab gowa', '', 4, 25, 0, 17, 4, 0, 'DD114M', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0972', '0', '1'),
(1826, 'Ifan Santana', 'vansantana@gmail.com', '81322825111', '', 0, 0, '31510800', 0, 0, 'Komp. Puri\nJln. Suryalaya 3\nBandung', '', 4, 16, 0, 17, 4, 0, 'D1231RO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0973', '0', '1'),
(1827, 'Razak Catur Putra', 'oky@bundar.net', '8122385428', '', 0, 0, '31510800', 0, 0, 'Jl. Warung muncang no 2\nBandung', '', 4, 16, 0, 17, 3, 0, 'D188NN', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0974', '0', '1'),
(1828, 'EUIS MAS\'UDIYAH', '', '81285700080', '', 0, 0, '31510800', 0, 0, 'Jl. Siliwangi BTN Pasir Ona Blok B9 no.8 Rt.01/Rw.06 Rangkasbitung - Banten kode pos 42313', '', 4, 12, 0, 17, 4, 0, 'A1364TL', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0975', '0', '1'),
(1829, 'Herlambang', '', '', '', 0, 0, '31510800', 0, 0, 'Jalan raya pecenongan kost atap merah b10 jakarta pusat', '', 4, 13, 0, 17, 4, 1, 'B1197KJF', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0976', '0', '1'),
(1830, 'Budiman widjaja', 'Budiman.widjaja.sh@gmail.com', '8128030580', '', 0, 0, '31510800', 0, 0, 'Perum.taman cipto b1.no.22 cirebon', '', 4, 18, 0, 17, 4, 0, 'B1064bjd', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0977', '0', '1'),
(1831, 'Ika Komalasari', '', '82214160144', '', 0, 0, '31510800', 0, 0, 'Moch toha GG. Salpiah no 83, Bandung', '', 4, 16, 0, 17, 4, 0, 'D1773PU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0978', '0', '1'),
(1832, 'R Anandita Noorman Pranawa', 'andytnoorman@gmail.com', '8122195915', '', 0, 0, '31510800', 0, 0, 'Golf Raya no 3, Bandung', '', 4, 16, 0, 17, 4, 0, 'D1888FX', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0979', '0', '1'),
(1833, 'singgah gutama', 'singgahsan@gmail.com', '81328381422', '', 0, 0, '31510800', 0, 0, 'Perum Purbayan Paradise blok L Purbayan Baki Sukoharjo', '', 4, 20, 0, 17, 4, 3, 'B1026BB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0980', '0', '1'),
(1834, 'Roland Koesnando', 'rolandkoesnandi@gmail.com', '81294450397', '', 0, 0, '31510800', 0, 0, 'Jl. Fatmawati no 02 air salemba pangkalpinang ( blakang rmh wagub - gud. Unilever)', '', 4, 7, 0, 17, 3, 3, 'BN1061LE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0981', '0', '1'),
(1835, 'Didit Aditya Hermawanto', 'didit.aditya.notaris@gmail.com', '08133548964903186692', '', 0, 0, '31510800', 0, 0, 'Delta Mandala 1 nomor 11, Semambung-Sidoarjo, Jawa Timur', '', 4, 23, 0, 17, 4, 3, 'L1742KH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0982', '0', '1'),
(1836, 'Fatma karunia', 'Fatmakarunia@yahoo.com', '81332294999', '', 0, 0, '31510800', 0, 0, 'Jln. Bendul merisi selatan 3 nomor 93 surabaya', '', 4, 23, 0, 17, 4, 0, 'L1305DD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0983', '0', '1'),
(1837, 'wawan gunawan', 'jabbar.WG@gmail.com', '81321988444', '', 0, 0, '31510800', 0, 0, 'Komp gpa blok A3 no 1 rt 01 rw 13 desa lengkong,kec bojongsoang kab bandung', '', 4, 16, 0, 17, 4, 0, 'D748BAR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0984', '0', '1'),
(1838, 'Adytya eka wirawan', 'aditnitro03@gmail.com', '87851158185', '', 0, 0, '31510800', 0, 0, 'Kahuripan nirwana blok BB5 no 11\nEntalsewu - buduran\nSidoarjo\n61252', '', 4, 23, 0, 17, 3, 0, 'W1595RE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0985', '0', '1'),
(1839, 'Defi Saepul Hayat', 'deficoy13@gmail.com', '82319396655', '', 0, 0, '31510800', 0, 0, 'Jl.  Sutomo No.  18 Kesambi Cirebon', '', 4, 18, 0, 17, 3, 0, 'D1074RJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0986', '0', '1'),
(1840, 'Qomar Ibrahim', 'Baim76@gmail.com', '81222048248', '', 0, 0, '31510800', 0, 0, 'Blok Kligung no 87 Setukulon Weru kab.Cirebon', '', 4, 18, 0, 17, 4, 3, 'B8666DR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0987', '0', '1'),
(1841, 'Yosi Wicahyo', 'Yossibaztian@yahoo.com', '8122035083', '', 0, 0, '31510800', 0, 0, 'Jl.sisingamangaraja gg.cucut no 63 Rt 002/Rw 001 Kel.Panjunan Kec.Lemahwungkuk Kota Cirebon', '', 4, 18, 0, 17, 4, 1, 'E1559BM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0988', '0', '1'),
(1842, 'rudy stiabudhy', 'rudy.123211@gmail.com', '81282696800', '', 0, 0, '31510800', 0, 0, 'jln.raya desa cikedung rt 08 rw 01. kec.cikedung', '', 4, 18, 0, 17, 4, 0, 'E1095PG', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0989', '0', '1'),
(1843, 'purnomo, st', 'poernomo98@gmail.com', '08521941525388971213', '', 0, 0, '31510800', 0, 0, 'Taman mula sakti/alinda kencana,blok j1 no 06,rt 09/021,kaliabang tengah,bekasi utara,kota bekasi,17125', '', 4, 14, 0, 17, 4, 0, 'B1233BJJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0990', '0', '1'),
(1844, 'anzar', '', '85222670007', '', 0, 0, '31510800', 0, 0, 'Lingk saluyu no 03, Sumedang', '', 4, 16, 0, 17, 4, 0, 'D1442XD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0991', '0', '1'),
(1845, 'Dimas Adrian Oktafianto', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837503', '', 0, '0992', '0', '1'),
(1846, 'Sudarman', 'dharman.jamsostek@gmail.com', '8114006889', '', 0, 0, '31510800', 0, 0, 'd/a BPJS Ketenagakerjaan Cabang Pekalongan, jl Majapahit Kompleks Perkantoran Podosugih Kota pekalongan 51111', '', 4, 23, 0, 17, 4, 0, 'H8000IY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0993', '0', '1'),
(1847, 'Raka Rukmana', 'rakarukmana.94@gmail.com', '811749449', '', 0, 0, '31510800', 0, 0, 'Jl. Urip Sumoharjo, gg. Wartawan No. 3A, Wayhalim, Bandar Lampung (Dekat Studio Musik)', '', 4, 11, 0, 17, 4, 0, 'BH1994RR', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0994', '0', '1'),
(1848, 'Muhammad Fathurrakhman ', '', '', '', 0, 0, '31510800', 0, 0, 'Jl.Gelatik Rt 002/001 kel.Air Kepala Tujuh ,Gerunggang, Pangkal Pinang, kepulauan Bangka belitung', '', 4, 7, 0, 17, 4, 0, 'BN1134LD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0995', '0', '1'),
(1849, 'Dewi fatimah', '', '85799754509', '', 0, 0, '31510800', 0, 0, '', '', 4, 23, 0, 17, 4, 3, 'H8386GC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0996', '0', '1'),
(1850, 'iwan', '', '81221480454', '', 0, 0, '31510800', 0, 0, 'Elang Raya no 32, Bandung', '', 4, 16, 0, 17, 4, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0997', '0', '1'),
(1851, 'Donaf Firman', '', '', '', 0, 0, '31510800', 0, 0, '', '', 4, 16, 0, 17, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0998', '0', '1'),
(1852, 'Dien Alia Puspita', 'dap_perfection@yahoo.com', '82231822260', '', 0, 0, '31510800', 0, 0, 'Kemangsari IV KAV AURI No : 9 Jatimakmur Pdk. Gede Bekasi Selatan', '', 4, 14, 0, 17, 4, 1, 'B175DAP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837504', '', 0, '0999', '0', '1'),
(1853, 'Desy Styawan ', '', '', '', 0, 0, '31510800', 0, 0, 'Jl.purwa III blok Q 28 RT 005/006 Cipedak, Jakarsa, Jaksel', '', 4, 13, 0, 0, 3, 3, 'B7JP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1001', '0', '3'),
(1854, 'Hadi Irawan', '', '87882380179', '', 0, 0, '31510800', 0, 0, 'jalan swasembada timur 20 no.23 rt 015/05 tanjung priok jakarta utara', '', 4, 13, 0, 17, 4, 1, 'T1047P', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1014', '0', '3'),
(1855, 'Teddy Koeswendy', 't.koeswendy@gmail.com', '85883231263', '', 0, 0, '31510800', 0, 0, 'Perumahan Citra Gran  Cluster Nusa Dua Blok B6 no 35, Jl alternatif cibubur cileungsi Kota Bekasi', '', 4, 13, 0, 17, 4, 0, 'B1541JK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1018', '0', '3'),
(1856, 'David Kertasasmita', 'David@goldengeneralcontractor.com', '87888618889', '', 0, 0, '31510800', 0, 0, 'Jln. Jeruk garut no.4 . duri kepa. ', '', 4, 13, 0, 17, 4, 0, 'B668mey', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1022', '0', '3'),
(1857, 'Yudhi Setiawan Amir', 'yudhi.amir78@gmail.com', '81311172295', '', 0, 0, '31510800', 0, 0, 'Jl. Raya boulevard barat, MOI City home apartment, Tower santa monica 0602\nKelapa Gading, Jakarta Utara \nDKI Jakarta 14240', '', 4, 13, 0, 17, 4, 1, 'B1809UJM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1040', '0', '3'),
(1858, 'Sri Cahyo Kasihono', 'cahyo_iyo@yahoo.com', '81514131115', '', 0, 0, '31510800', 0, 0, 'Jl. Raya Srengseng Sawah No. 36 RT.012 RW.07 Kel. Srengseng Sawah Kec. Jagakarsa Jakarta Selatan', '', 4, 13, 0, 17, 4, 3, 'B2271RJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1041', '0', '3'),
(1859, 'Sucipto', 'sucip_top10@yahoo.com', '81806078441', '', 0, 0, '31510800', 0, 0, 'Jl.saibun no.15 rt/rw 008/004 kel susukan kec ciracas jakarta timur\n13750', '', 4, 13, 0, 0, 3, 0, 'B279CV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1044', '0', '3'),
(1860, 'Vidi Wijiastuti', '', '6283874767581', '', 0, 0, '31510800', 0, 0, 'Jl. Budi swadaya II No. 41 Rt.02/04 Kebon jeruk', '', 4, 13, 0, 0, 4, 0, 'B8112TJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1049', '0', '3'),
(1861, 'HASBIALLAH S.Th.I', 'hkstenda79@gmail.com', '81286858159', '', 0, 0, '31510800', 0, 0, 'Jln Raya Pulo Gebang No.84 rt 006 rw 06 .Pulo Gebang Cakung Jakarta Timur', '', 4, 13, 0, 0, 4, 0, 'B1649UJA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837688', '', 0, '1052', '0', '3'),
(1862, 'Farhan', '', '8111110844', '', 0, 0, '31510800', 0, 0, 'Komplek palapa\nJl. Palapa 2 No. 4\nPasar minggu \nJakarta selatan', '', 4, 13, 0, 18, 4, 0, 'B1775ELP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583837841', '', 0, '1140', '0', '3'),
(1863, 'Yudi Wirawan\n', 'ywira0103@gmail.com\n', '8118882629', '', 0, 0, '5072400', 0, 0, 'Jalan. Biduri Bulan no.32 RT.015/RW.03 Sumur Batu, Kec. Kemayoran Jakarta Pusat', '', 4, 13, 0, 18, 4, 0, 'B1077PJJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1156', '0', '3'),
(1864, 'I Gede Agus Sudarmaji\n', 'gdeagus02@gmail.com\n', '87839603111', '', 0, 0, '452797200', 0, 0, 'Jln swadaya raya 8 blok C no1 jati cempaka pondok gede, Jakarta', '', 4, 13, 0, 18, 4, 3, 'B228JOE', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1159', '0', '3'),
(1865, 'David Tenggara', 'davetegra@gmail.com\n', '82233234234', '', 0, 0, '378752400', 0, 0, 'Cluster garden house GM7/15 PIK\n', '', 4, 13, 0, 18, 4, 0, 'B1715ULO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1174', '0', '3'),
(1866, 'Albar Latief', 'albarlatiefs@gmail.com\n', '816945935', '', 0, 0, '208717200', 0, 0, 'Jl. Lodan Dalam 1C No. 13 RT 07/08 Kel. Ancol, Kec. Pademangan Jakarta Utara 14430\n', '', 4, 13, 0, 18, 4, 0, 'B1023BJC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1189', '0', '3'),
(1867, 'Hari Astu Anggoro\n', 'hariastu@gmail.com\n', '0811160012', '', 0, 0, '224182800', 0, 0, 'Jl. Anggrek Neli Murni 7 blok A54\n', '', 4, 13, 0, 18, 4, 0, 'B1716UJB', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1209', '0', '3'),
(1868, 'Etin Rodiana', 'etin_rodiana@yahoo.com', '81910107100', '', 0, 0, '264272400', 0, 0, 'PT San Fu Indonesia,\nKp Ciater Desa Ciparungsari Kec Cibatu Kab Purwakarta Jawa Barat', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1210', '0', '3'),
(1869, 'Iis Anita Puspitasari', '', '81219682121', '', 0, 0, '31510800', 0, 0, 'Apartemen kemang view jl pekayon no 01 bekasi', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1211', '0', '3'),
(1870, 'Syarif Hidayatullah', '', '81288688102', '', 0, 0, '31510800', 0, 0, 'Jln boulevard barat blok rrg 5 no 58 grand galaxi park pekayon bekasi barat', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1219', '0', '3'),
(1871, 'Bintang Adhini', 'allysaribi@gmail.com', '81288988869', '', 0, 0, '466966800', 0, 0, 'pearl garden residen Blok C no 27 cimanggis Tapos \nDepok', '', 4, 13, 0, 18, 4, 0, 'B1271ELQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1223', '0', '3'),
(1872, 'Richard Immanuel', 'Tigerrich@gmail.com', '818301274', '', 0, 0, '157568400', 0, 0, 'Agung Permai 11 Blok C11 / No. 29 - Sunter \nJakarta Utara', '', 4, 13, 0, 18, 4, 0, 'B239JRY', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1226', '0', '3'),
(1873, 'Zulkarnaen', 'zulkarnaen666@gmail.com', '89613702839', '', 0, 0, '803149200', 0, 0, 'Kp pegaulan desa sukaresmi kec.cikarang selatan kab. Bekasi', '', 4, 13, 0, 18, 4, 1, 'D1219AAC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1231', '0', '3'),
(1874, 'Panji prasanto', 'Panjiprast@yahoo.co.id', '8561703800', '', 0, 0, '404672400', 0, 0, 'Komplek pakuwon blok t14 rt.06/09 jelambar baru, grogol petamburan,jakbar.11460', '', 4, 13, 0, 18, 4, 3, 'B54S', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1236', '0', '3'),
(1875, 'Ira Sulistya ST.', '', '8111216888', '', 0, 0, '177699600', 0, 0, 'Jl. Rawa Pule lll No. 9 RT.04/02 Kukusan Beji Kota Depok', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1250', '0', '3'),
(1876, 'Uci Sanusi', '', '81287596111', '', 0, 0, '-65343600', 0, 0, 'Kelapa Dua gg. Langgar No.39 RT.005/005 Kelapa Dua Kebon Jeruk', '', 4, 12, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1251', '0', '3'),
(1877, 'Linsia', 'Linsia86@gmail.com', '811880445', '', 0, 0, '546886800', 0, 0, 'Apertemen green palace tower sakura 11 bd kalibata city', '', 4, 13, 0, 18, 4, 1, 'B1039TJK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1253', '0', '3'),
(1878, 'Nanang Setiyabudi', 'Nanangsetyabudi43@gmail.com', '81314440736', '', 0, 0, '412189200', 0, 0, 'Jl masjid al umar no.16B rt.o6 rw.12 lubang buaya kec.cipayung Jaktim', '', 4, 13, 0, 18, 3, 3, 'B1618KLP', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1254', '0', '3'),
(1879, 'Eko Yuli Purnomo', 'e.yulipurnomo@gmail.com', '81316472963', '', 0, 0, '519325200', 0, 0, 'Perumahan sudirman indah Blok E 10 no. 7, RT/rw 06/06. Tigaraksa Tangerang', '', 4, 13, 0, 18, 3, 3, 'A1050ZM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1255', '0', '3'),
(1880, 'Ajie Hikmat Falahuddin', '', '8121037277', '', 0, 0, '305658000', 0, 0, 'Springs Summarecon Serpong Cluster Canary Jl. Canary Timur 3 No. 23\nGading Serpong - Tangerang 15332', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1259', '0', '3'),
(1881, 'Deni Jaelani', '', '81290881633', '', 0, 0, '224355600', 0, 0, 'Jl.Pulomas Barat V B No.24 Kayu putih Pulogadung Jakarta Timur 13210', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1260', '0', '3'),
(1882, 'Sugi Tamtomo', '', '82210204422', '', 0, 0, '591814800', 0, 0, 'gg. pp ds ciketing selatan Rt/Rw 03/06 kel. ciketing udik Bantargebang kota Bekasi', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1265', '0', '3'),
(1883, 'Suparman', '', '81318298881', '', 0, 0, '283885200', 0, 0, 'jalan johar baru utara rt 14 rw 03 no 09 kelurahan johar baru kecamatan johar baru jakarta pusat', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1274', '0', '3'),
(1884, 'Nilwan Mauldi', '', '81286756107', '', 0, 0, '531680400', 0, 0, 'Pondok Jurang mangu Indah, Jl. Cendrawasih VII B23/3 RT-001, RW. 007 Jurang Mangu Timur, Pondok Aren Tangerang, Kode Pos 15222', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1277', '0', '3'),
(1885, 'Dany Senandana', '', '87771806848', '', 0, 0, '-153212400', 0, 0, 'Jln kayu puti IX F no. 43 Jakarta timur Rt / RW. :009 / 005 Kecamatan : Pologadung Kelurahan Pologadung 13260', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1282', '0', '3'),
(1886, 'Novayanti Rosalina', '', '8111698900', '', 0, 0, '562870800', 0, 0, 'Taman Wisma Asri Jl. Apel 4 Blok C9 No. 95 RT 03 RW 09 Kel. Teluk Pucung Kec. Bekasi Utara', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1284', '0', '3'),
(1887, 'Achmad firdaus', '', '87771010610', '', 0, 0, '559414800', 0, 0, 'Kantor Badan Pengelolaan Keuangan dan Aset Daerah (BPKAD) Komp Sukmajaya Mandiri Kavling 7 Jl Achmad Yani Kota Cilegon Prov Banten', '', 4, 13, 0, 18, 2, 0, '', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838207', '', 0, '1285', '0', '3'),
(1888, 'AS NOVIEYANTI', 'asnovieyanti1122@yahoo.co.id', '85959662226', '', 0, 0, '372877200', 0, 0, 'GADING GRIYA LESTARI BLOK D3/1 RT 02/12 SUKAPURA CILINCING JAKARTA', '', 4, 13, 0, 19, 0, 0, 'B1922MM', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1294', '0', '3'),
(1889, 'Anna Susiana', 'a_susiana@yahoo.com', '811849625', '', 0, 0, '302547600', 0, 0, 'Jl. Kencana Permai VIII No. 11, Kel. Pondok Pinang, Kec. Kebayoran Lama, Rt. 005 / Rw. 015\nJakarta Selatan 12310', '', 4, 13, 0, 19, 0, 0, 'B8091JH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1309', '0', '3'),
(1890, 'Heri mawanto', 'herimawanto43@gmail.com', '83892564033', '', 0, 0, '518720400', 0, 0, 'Jl. D no. 54 Rt.005 Rw.003 kelurahan slipi kecamatan palmerah kodya jakarta barat,, (belakang wisma 77 tower 2)', '', 4, 13, 0, 19, 0, 3, 'B1972MH', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1310', '0', '3'),
(1891, 'Fatih Wadya Saelan', 'fw.saelan@yahoo.com', '81808599599', '', 0, 0, '-28018800', 0, 0, 'jalan saraswati no 21,\nRT 07/ RW 07\ncipete utara\nkebayoran baru\njakarta selatan\n12150', '', 4, 13, 0, 19, 0, 3, 'B2736SBK', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1316', '0', '3'),
(1892, 'Muhammad Aditya', 'muhammadaditya.sip@gmail.com', '8111536234', '', 0, 0, '565290000', 0, 0, 'Jl. Bima Blok B III no 6 RT 003 RW 011 Kel. Klender, Kec. Duren Sawit, Jakarta Timur. Kode Pos 13470', '', 4, 13, 0, 19, 0, 0, 'B674DIT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1318', '0', '3'),
(1893, 'Alexander pujo kuatno', 'alexpujo671@gmail.com', '08111873770877822000', '', 0, 0, '21229200', 0, 0, 'Jalan kelapa hijau\nKav 55. No. 17\nKel..utan kayu selatan\nJak tim', '', 4, 13, 0, 19, 0, 3, 'B2278SI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1320', '0', '3'),
(1894, 'Charles Johnhart', 'charlesjohnhart13@gmail.com', '82123512356', '', 0, 0, '463856400', 0, 0, 'Apartemen Pancoran Riverside', '', 4, 13, 0, 18, 0, 1, 'B2888PO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1325', '0', '3'),
(1895, 'DARA TARUNAWATY', 'phinestood.ra03@gmail.com', '81808389563', '', 0, 0, '531334800', 0, 0, 'Jl Peta Selatan No.20 RT 09/01 Kalideres Jakarta Barat', '', 4, 13, 0, 19, 0, 0, 'B2605XO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1327', '0', '3'),
(1896, 'Rahmat Sulaeman Basalmah', 'rsbasalmah@gmail.com', '818870507', '', 0, 0, '475866000', 0, 0, 'Jalan raya lenteng agung. Gang haji ali rt 05 rw 05\nNo. 20 Lenteng agung Jagakarsa\nJakarta Selatan\n126q0', '', 4, 13, 0, 19, 0, 0, 'B1618SJU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1332', '0', '3'),
(1897, 'Arianto Sugandi', 'Ariantosugandi@yahoo.co.id', '81510233110', '', 0, 0, '35830800', 0, 0, 'Jalan Raya Kebayoran Lama Pal 7 no 2... Bengkel Mobil PT.Bintang Bijaksana.kode pos 11540.Jakarta Barat', '', 4, 13, 0, 19, 0, 3, 'B1238BJS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1348', '0', '3'),
(1898, 'Ahmad Syaefuddin', 'ahmadsyafuddin45@gmail.com', '81806437731', '', 0, 0, '619635600', 0, 0, 'Jl. Ranco indah No 86 RT/RW 002/008 Tanjung Barat Jagakarsa Jak - Sel\n\n( samping SD 03 Tanjung Barat)', '', 4, 13, 0, 19, 0, 0, 'B8670EQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1369', '0', '3'),
(1899, 'Dandy Setya Anggara', 'dandy.setya@gmail.com', '81223455750', '', 0, 0, '713293200', 0, 0, 'Jalan Batu Ampar IV No. 37 RT 006 RW 005, Kramat Jati, Jakarta Timur 13520', '', 4, 13, 0, 0, 0, 0, 'B2530SBA', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1418', '0', '3'),
(1900, 'Dudy Efendy', 'Dudy.efendy@yahoo.co.id', '8999191515', '', 0, 0, '5763600', 0, 0, 'Jln.H.Muchtar Raya Petukangan Utara Rt 02 Rw 01 No. 57 Pesanggrahan Jakarta Selatan kode pos 12260', '', 4, 13, 0, 0, 0, 1, 'B1536BJT', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1419', '0', '3'),
(1901, 'Ali Mulyadi', 'ali.mulyadi123@gmail.com', '81908008683', '', 0, 0, '247251600', 0, 0, 'Jl. Pulau Selayar 1 blok i-3 no.12A, Jakarta Barat', '', 4, 13, 0, 0, 0, 1, 'B1933BJI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1425', '0', '3'),
(1902, 'Joe Turangan', 'b120joe@hotmail.com', '811158822', '', 0, 0, '240858000', 0, 0, 'Jl madu no 20 Rt06 Rw 08 kel pondok kelapa kec duren sawit Jakarta Timur', '', 4, 13, 0, 0, 0, 3, 'B117AYI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1429', '0', '3'),
(1903, 'Muhamad Fauzi', 'ojiesaad@gmail.com', '82111111071', '', 0, 0, '-214299000', 0, 0, 'Gandaria Residence,\nJalan Hidup Baru No.24H\nJakarta.12140', '', 4, 13, 0, 0, 0, 0, 'B1083SJV', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1535', '0', '3'),
(1904, 'Robby chandra', 'robbychandra77@gmail.com', '8129430833', '', 0, 0, '243968400', 0, 0, 'Jl. Mirinda Blok i 1 no.21, Tegal Alur - Kalideres, Jakarta Barat 11820', '', 4, 13, 0, 0, 0, 1, 'B1449BJU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1539', '0', '3'),
(1905, 'RUDY HARIYANTO', 'rudyh2068@gmail.com', '81807943422', '', 0, 0, '-40460400', 0, 0, 'JLN M SAIDI 1 RT 05 RW 01 NO 9 PETUKANGAN SELATAN PESANGGRAHAN JAKARTA SELATAN 12270', '', 4, 13, 0, 0, 0, 0, 'B2125SU', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1555', '0', '3'),
(1906, 'wisnu saputro', 'wishnew240378@yahoo.co.id', '82110760153', '', 0, 0, '259520400', 0, 0, 'pondok kopi blok D5/5, duren sawit, jakarta timur', '', 4, 13, 0, 0, 0, 1, 'B2072SBD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1560', '0', '3'),
(1907, 'Mohammad Hafiz', 'mohammadhafiz2030@gmail.com', '81385301262', '', 0, 0, '152125200', 0, 0, 'Mahogany residence Blok. C no:8 Jl. Alternatif Cibubur Kel. Harjamukti Kec. Cimanggis KOTA DEPOK', '', 4, 13, 0, 0, 0, 0, 'B919NRZ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1567', '0', '3'),
(1908, 'adrian akbar', 'adriantonner197@gmail.com', '81372114303', '', 0, 0, '656701200', 0, 0, 'Jln Gading Raya no.6 TOKO PERCETAKAN UTAMA KARYA.RAWAMANGUN (JAKARTA TIMUR)', '', 4, 13, 0, 0, 0, 0, 'B2398TBD', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838459', '', 0, '1571', '0', '3'),
(1909, 'Rama setiawan pamuji', 'rspamuji81@yahoo.com', '87885525581', '', 0, 0, '364842000', 0, 0, 'Jl Rawajati barat III/gg.kujang No.7 Rt.01/04 Kel.rawajati, kec.pancoran Jakarta Selatan 12750', '', 4, 13, 0, 0, 0, 0, 'B1575SJJ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1574', '0', '3'),
(1910, 'Nining Herawati', 'Nining.herawaty@yahoo.com', '81290435004', '', 0, 0, '206470800', 0, 0, 'ADW 2 Residence Blok A no 1 jln. sreng sawah Gang Pete no. 89 Rt 03 Rw 07 kel. Srengseng sawah kec. Jagakarsa jakarta Selatan kode pos 12640', '', 4, 13, 0, 0, 0, 0, 'B2227STC', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1583', '0', '3'),
(1911, 'Fadjar Djatmika', 'pramudikaputrautama@yahoo.com', '816999618', '', 0, 0, '-136796400', 0, 0, 'Jl.Pendidikan Raya 7 no.7, RT.01/ RW.14, Komplek IKIP Duren Sawit, Jaktim - 13440', '', 4, 13, 0, 0, 0, 0, 'B1417TJO', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1597', '0', '3'),
(1912, 'Ifan Munawar', 'Ifanmunawar84@gmail.com', '87782573712', '', 0, 0, '461005200', 0, 0, 'Jl haji ahyar No 35 c, RT/05/06, duren sawit , Jakarta timur', '', 4, 13, 0, 0, 0, 3, 'B508DOI', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1598', '0', '3'),
(1913, 'SONI HARTANTO', 'sonihartanto9@gmail.com', '85727090720', '', 0, 0, '544899600', 0, 0, 'Kaisar bintaro4 blok c no10. Jl.babussalam Pondok Kacang timur Pondok Aren', '', 4, 13, 0, 0, 0, 3, 'B8346C', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1602', '0', '3'),
(1914, 'Arfan Salahudin R', 'ndoeth9@gmail.com', '08129876587021848688', '', 0, 0, '230058000', 0, 0, 'Perumahan Jatibening Satu, jl. Merapi no. 120, RT.010/RW.005, Kelurahan Jatibening Baru, Kecamatan Pondok Gede, Bekasi 17412', '', 4, 13, 0, 0, 0, 0, 'B1163KLQ', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1605', '0', '3'),
(1915, 'Sapto Yusman Putra', 'sapto.yp@gmail.com', '81291740858', '', 0, 0, '-1926000', 0, 0, 'Komplek AKABRI, 2.A - Jl Dr Saharjo - Jakarta Selatan', '', 4, 13, 0, 0, 0, 0, 'B1918ME', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1617', '0', '3'),
(1916, ',', 'endah.haedah@gmail.com', '81316626364', '', 0, 0, '725130000', 0, 0, 'Apartemen season city Tower B 20-CE, Grogol, Jakarta Barat.', '', 4, 13, 0, 0, 0, 0, 'T1718FS', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1627', '0', '3'),
(1917, 'Handay Zulkarnain (Zul)', 'zulprambors8@gmail.com', '8129535909', '', 0, 0, '204138000', 0, 0, 'Jl Jamblang No 22 .RT 10 RW 09. Kel Srengseng Sawah Kec Jagakarsa.Jakarta Selatan', '', 4, 13, 0, 0, 0, 1, 'B1005SJW', '', '', '', '', '', '', 0, 1, 0, '', '', '1583838460', '', 0, '1631', '0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `menucrv`
--

CREATE TABLE `menucrv` (
  `id_menucrv` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `linkurl` varchar(100) NOT NULL,
  `kelompok` varchar(2) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menucrv`
--

INSERT INTO `menucrv` (`id_menucrv`, `nama`, `keterangan`, `linkurl`, `kelompok`, `urutan`) VALUES
(1, 'Warna Kendaraan', '', 'warnaunit', '1', 1),
(2, 'Tahun Kendaraan', '', 'thnunit', '1', 2),
(3, 'Kapasitas Mesin', '', 'kpsmesin', '1', 3),
(4, 'Nopung Cantik', '', 'nopungbagus', '1', 4),
(5, 'Jabatan', '', 'jabatan', '1', 5),
(6, 'Chapter', '', 'chapter', '2', 1),
(7, 'Non Chapter', '', 'nonchapter', '2', 2),
(8, 'Member', '', 'member', '2', 3),
(9, 'New Member', '', 'newmember', '2', 4),
(10, 'Registrasi Ulang', 'Registrasi Ulang', 'regulmember', '2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nonchapter`
--

CREATE TABLE `nonchapter` (
  `id_nonchapter` int(11) NOT NULL,
  `namachapter` varchar(30) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `propinsi` int(11) NOT NULL,
  `kabupaten` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `idaktif` int(11) NOT NULL,
  `ketaktif` varchar(200) NOT NULL,
  `aktifdate` varchar(20) NOT NULL,
  `editdate` varchar(20) NOT NULL,
  `idinsert` int(11) NOT NULL,
  `idedit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nonchapter`
--

INSERT INTO `nonchapter` (`id_nonchapter`, `namachapter`, `keterangan`, `propinsi`, `kabupaten`, `aktif`, `idaktif`, `ketaktif`, `aktifdate`, `editdate`, `idinsert`, `idedit`) VALUES
(1, 'zpppp', 'zcz', 92, 458, 1, 0, '', '1581349408', '', 1, 0),
(2, 'No CHapter Aceh Jauh', 'Blom chapter masih aceh jauh', 11, 27, 1, 0, '', '1581376747', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nopungbagus`
--

CREATE TABLE `nopungbagus` (
  `id_nopungbagus` int(11) NOT NULL,
  `nopungbagus` varchar(6) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `idbooking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nopungbagus`
--

INSERT INTO `nopungbagus` (`id_nopungbagus`, `nopungbagus`, `keterangan`, `idbooking`) VALUES
(1, '3000', '', 0),
(2, '2222', '', 20),
(3, '3333', '', 0),
(4, '4567', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `kode` int(11) NOT NULL,
  `provinsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `kode`, `provinsi`) VALUES
(1, 11, 'Nanggroe Aceh Darussalam'),
(2, 12, 'Sumatera Utara'),
(3, 13, 'Sumatera Barat'),
(4, 14, 'Riau'),
(5, 15, 'Jambi'),
(6, 16, 'Sumatera Selatan'),
(7, 17, 'Bengkulu'),
(8, 18, 'Lampung'),
(9, 19, 'Kepulauan Bangka Belitung'),
(10, 21, 'Kepulauan Riau'),
(11, 31, 'DKI Jakarta'),
(12, 32, 'Jawa Barat'),
(13, 33, 'Jawa Tengah'),
(14, 34, 'DI Yogyakarta'),
(15, 35, 'Jawa Timur'),
(16, 36, 'Banten'),
(17, 51, 'Bali'),
(18, 52, 'Nusa Tenggara Barat'),
(19, 53, 'Nusa Tenggara Timur'),
(20, 61, 'Kalimantan Barat'),
(21, 62, 'Kalimantan Tengah'),
(22, 63, 'Kalimantan Selatan'),
(23, 64, 'Kalimantan Timur'),
(24, 71, 'Sulawesi Utara'),
(25, 72, 'Sulawesi Tengah'),
(26, 73, 'Sulawesi Selatan'),
(27, 74, 'Sulawesi Tenggara'),
(28, 75, 'Gorontalo'),
(29, 76, 'Sulawesi Barat'),
(30, 81, 'Maluku'),
(31, 82, 'Maluku Utara'),
(32, 91, 'Papua Barat'),
(33, 92, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `roolcrv`
--

CREATE TABLE `roolcrv` (
  `id_roolcrv` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roolcrv`
--

INSERT INTO `roolcrv` (`id_roolcrv`, `nama`, `keterangan`) VALUES
(1, 'Admin', 'Menu Admin'),
(2, 'Supervisor', 'Menu Supervisor'),
(3, 'Operator', 'Menu Operator'),
(4, 'Anggota', 'Menu Anggota');

-- --------------------------------------------------------

--
-- Table structure for table `roolmenu`
--

CREATE TABLE `roolmenu` (
  `id_roolmenu` int(11) NOT NULL,
  `idroolcrv` int(11) NOT NULL,
  `idmenucrv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roolmenu`
--

INSERT INTO `roolmenu` (`id_roolmenu`, `idroolcrv`, `idmenucrv`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 3, 8),
(11, 3, 9),
(12, 4, 8),
(13, 4, 9),
(14, 3, 10),
(15, 4, 10),
(16, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tabelsemetara`
--

CREATE TABLE `tabelsemetara` (
  `id` int(11) NOT NULL,
  `tahuhken` varchar(4) NOT NULL,
  `telpon` varchar(50) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `kotakota` int(11) NOT NULL,
  `kotapov` int(11) NOT NULL,
  `chapter` varchar(100) NOT NULL,
  `kodechapter` int(11) NOT NULL,
  `domisili` varchar(100) NOT NULL,
  `domkota` int(11) NOT NULL,
  `domprov` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `kodewarna` int(11) NOT NULL,
  `tipeken` int(11) NOT NULL,
  `kodetipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `thnunit`
--

CREATE TABLE `thnunit` (
  `id_thnunit` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thnunit`
--

INSERT INTO `thnunit` (`id_thnunit`, `tahun`, `keterangan`) VALUES
(1, '2000', ''),
(2, '2001', ''),
(3, '2002', ''),
(4, '2003', ''),
(5, '2004', ''),
(6, '2005', ''),
(7, '2006', ''),
(8, '2007', ''),
(9, '2008', ''),
(10, '2009', ''),
(11, '2010', ''),
(12, '2011', ''),
(13, '2012', ''),
(14, '2013', ''),
(15, '2014', ''),
(16, '2015', ''),
(17, '2016', ''),
(18, '2017', ''),
(19, '2018', ''),
(20, '2019', ''),
(21, '2020', ''),
(22, '2021', ''),
(23, '2022', ''),
(24, '2023', ''),
(25, '2024', ''),
(26, '2025', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `userlogin` varchar(30) NOT NULL,
  `userpass` varchar(50) NOT NULL,
  `salt` varchar(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `refreshtoken` varchar(50) NOT NULL,
  `akses` varchar(3) NOT NULL,
  `tokendate` varchar(20) NOT NULL,
  `logindate` varchar(20) NOT NULL,
  `idmember` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `keterangan`, `userlogin`, `userpass`, `salt`, `token`, `refreshtoken`, `akses`, `tokendate`, `logindate`, `idmember`) VALUES
(1, 'Machfudh', 'xxx', 'machfudh', '13ecf518d3bf892b17877fab846da649', '', '', '', '257', '', '', 0),
(11, 'Machfudh', '', 'topanaja', 'bf455635d3716c2cb57fb0a4a1113019', 'i8i0a', '', '', '257', '', '', 13),
(12, 'Moh Machfudh', '', 'machfudh@gmail.com', '5a2ef7d90eddc709883ce808ac53fd03', 'OCO9B', '', '', '257', '', '', 13);

-- --------------------------------------------------------


--
-- Table structure for table `warnaunit`
--

CREATE TABLE `warnaunit` (
  `id_warnaunit` int(11) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warnaunit`
--

INSERT INTO `warnaunit` (`id_warnaunit`, `warna`, `keterangan`) VALUES
(1, 'White Orchid Pearl', ''),
(2, 'Passion Red Pearl', ''),
(3, 'Crystal Black Pearl', ''),
(4, 'Pink', ''),
(5, 'Lunar Silver Metalic', ''),
(6, 'Modern Steel Metalli', ''),
(7, 'Deep Ocean Blue', ''),
(8, 'Dark Olive Metallic', ''),
(9, 'Yellow', '');

-- --------------------------------------------------------

--
-- Structure for view `vb_nopungbagus`
--
DROP TABLE IF EXISTS `vb_nopungbagus`;

CREATE VIEW `vb_nopungbagus`  AS  select `nopungbagus`.`id_nopungbagus` AS `id_nopungbagus`,`nopungbagus`.`nopungbagus` AS `nopungbagus`,`nopungbagus`.`keterangan` AS `keterangan`,`nopungbagus`.`idbooking` AS `idbooking` from `nopungbagus` where (`nopungbagus`.`idbooking` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_chapter`
--
DROP TABLE IF EXISTS `v_chapter`;

CREATE VIEW `v_chapter`  AS  select `c`.`id_chapter` AS `id_chapter`,`c`.`namachapter` AS `namachapter`,`c`.`keterangan` AS `keterangan`,`p`.`provinsi` AS `provinsi`,`k`.`kabupaten` AS `kabupaten`,`c`.`alamat` AS `alamat`,`c`.`kodepos` AS `kodepos`,`c`.`nama` AS `nama`,`c`.`nohp` AS `nohp`,`c`.`nowa` AS `nowa`,`c`.`email` AS `email` from ((`chapter` `c` join `provinsi` `p` on((`c`.`propinsi` = `p`.`kode`))) join `kabupaten` `k` on((`c`.`kabupaten` = `k`.`id`))) where (`c`.`aktif` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `v_emailmember`
--
DROP TABLE IF EXISTS `v_emailmember`;

CREATE VIEW `v_emailmember`  AS  select `m`.`id_member` AS `id_member`,`m`.`email` AS `email`,`m`.`idchapter` AS `idchapter` from (`member` `m` join `jabatan` `j` on((`j`.`id_jabatan` = `m`.`idjabatan`))) where (`j`.`memail` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `v_getnopung`
--
DROP TABLE IF EXISTS `v_getnopung`;

CREATE VIEW `v_getnopung`  AS  select `member`.`nopung` AS `nopung` from `member` where (`member`.`statusnopung` = 0) order by `member`.`nopung` desc limit 1 ;

-- --------------------------------------------------------

--
-- Structure for view `v_jabatan`
--
DROP TABLE IF EXISTS `v_jabatan`;

CREATE VIEW `v_jabatan`  AS  select `j`.`id_jabatan` AS `id_jabatan`,`j`.`nama` AS `nama`,`j`.`keterangan` AS `keterangan`,`j`.`memail` AS `memail`,`j`.`akses` AS `akses`,`r`.`nama` AS `roolmenu` from (`jabatan` `j` join `roolcrv` `r` on((`j`.`idrool` = `r`.`id_roolcrv`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kpsmesin`
--
DROP TABLE IF EXISTS `v_kpsmesin`;

CREATE VIEW `v_kpsmesin`  AS  select `kpsmesin`.`id_kpsmesin` AS `id_kpsmesin`,`kpsmesin`.`kpsmesin` AS `kpsmesin`,`kpsmesin`.`keterangan` AS `keterangan` from `kpsmesin` order by `kpsmesin`.`id_kpsmesin` ;

-- --------------------------------------------------------

--
-- Structure for view `v_member`
--
DROP TABLE IF EXISTS `v_member`;

CREATE VIEW `v_member`  AS  select `m`.`id_member` AS `id_member`,`m`.`nopung` AS `nopung`,`m`.`nama` AS `nama`,`m`.`idchapter` AS `idchapter`,`c`.`namachapter` AS `namachapter`,`m`.`nopolisi` AS `nopolisi`,`m`.`idjabatan` AS `idjabatan`,`j`.`nama` AS `jabatan`,`t`.`tahun` AS `tahun`,`w`.`warna` AS `warna`,`s`.`kpsmesin` AS `kpsmesin`,`m`.`prodomisilih` AS `prodomisilih`,`p`.`provinsi` AS `provinsi`,`m`.`kabdomisilih` AS `kabdomisilih`,`k`.`kabupaten` AS `kabupaten`,`m`.`aktifdate` AS `aktifdate` from (((((((`member` `m` join `provinsi` `p` on((`m`.`prodomisilih` = `p`.`kode`))) join `kabupaten` `k` on((`m`.`kabdomisilih` = `k`.`id`))) join `thnunit` `t` on((`m`.`idtahununit` = `t`.`id_thnunit`))) join `warnaunit` `w` on((`m`.`idwarnaunit` = `w`.`id_warnaunit`))) join `kpsmesin` `s` on((`m`.`idkapasitasunit` = `s`.`id_kpsmesin`))) join `chapter` `c` on((`m`.`idchapter` = `c`.`id_chapter`))) join `jabatan` `j` on((`m`.`idjabatan` = `j`.`id_jabatan`))) where (`m`.`aktif` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `v_membertoday`
--
DROP TABLE IF EXISTS `v_membertoday`;

CREATE VIEW `v_membertoday`  AS  select `member`.`id_member` AS `id_member`,`member`.`nopung` AS `nopung`,`member`.`aktifdate` AS `aktifdate` from `member` where (`member`.`aktif` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `v_menu`
--
DROP TABLE IF EXISTS `v_menu`;

CREATE VIEW `v_menu`  AS  select `r`.`id_roolmenu` AS `id_roolmenu`,`r`.`idroolcrv` AS `idroolcrv`,`r`.`idmenucrv` AS `idmenucrv`,`m`.`nama` AS `nama`,`m`.`linkurl` AS `linkurl`,`m`.`kelompok` AS `kelompok`,`m`.`urutan` AS `urutan` from (`roolmenu` `r` join `menucrv` `m` on((`m`.`id_menucrv` = `r`.`idmenucrv`))) order by `m`.`urutan` ;

-- --------------------------------------------------------

--
-- Structure for view `v_menudata`
--
DROP TABLE IF EXISTS `v_menudata`;

CREATE VIEW `v_menudata`  AS  select `v_menu`.`id_roolmenu` AS `id_roolmenu`,`v_menu`.`idroolcrv` AS `idroolcrv`,`v_menu`.`idmenucrv` AS `idmenucrv`,`v_menu`.`nama` AS `nama`,`v_menu`.`linkurl` AS `linkurl`,`v_menu`.`kelompok` AS `kelompok`,`v_menu`.`urutan` AS `urutan` from `v_menu` where (`v_menu`.`kelompok` = '2') ;

-- --------------------------------------------------------

--
-- Structure for view `v_menumaster`
--
DROP TABLE IF EXISTS `v_menumaster`;

CREATE VIEW `v_menumaster`  AS  select `v_menu`.`id_roolmenu` AS `id_roolmenu`,`v_menu`.`idroolcrv` AS `idroolcrv`,`v_menu`.`idmenucrv` AS `idmenucrv`,`v_menu`.`nama` AS `nama`,`v_menu`.`linkurl` AS `linkurl`,`v_menu`.`kelompok` AS `kelompok`,`v_menu`.`urutan` AS `urutan` from `v_menu` where (`v_menu`.`kelompok` = '1') ;

-- --------------------------------------------------------

--
-- Structure for view `v_newmember`
--
DROP TABLE IF EXISTS `v_newmember`;

CREATE VIEW `v_newmember`  AS  select `m`.`id_member` AS `id_member`,`m`.`nopung` AS `nopung`,`m`.`nama` AS `nama`,`m`.`idchapter` AS `idchapter`,`c`.`namachapter` AS `namachapter`,`m`.`nopolisi` AS `nopolisi`,`m`.`idjabatan` AS `idjabatan`,`j`.`nama` AS `jabatan`,`t`.`tahun` AS `tahun`,`w`.`warna` AS `warna`,`s`.`kpsmesin` AS `kpsmesin`,`m`.`prodomisilih` AS `prodomisilih`,`p`.`provinsi` AS `provinsi`,`m`.`kabdomisilih` AS `kabdomisilih`,`k`.`kabupaten` AS `kabupaten`,`m`.`aktifdate` AS `aktifdate` from (((((((`member` `m` join `provinsi` `p` on((`m`.`prodomisilih` = `p`.`kode`))) join `kabupaten` `k` on((`m`.`kabdomisilih` = `k`.`id`))) join `thnunit` `t` on((`m`.`idtahununit` = `t`.`id_thnunit`))) join `warnaunit` `w` on((`m`.`idwarnaunit` = `w`.`id_warnaunit`))) join `kpsmesin` `s` on((`m`.`idkapasitasunit` = `s`.`id_kpsmesin`))) join `chapter` `c` on((`m`.`idchapter` = `c`.`id_chapter`))) join `jabatan` `j` on((`m`.`idjabatan` = `j`.`id_jabatan`))) where (`m`.`aktif` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_nonchapter`
--
DROP TABLE IF EXISTS `v_nonchapter`;

CREATE VIEW `v_nonchapter`  AS  select `c`.`id_nonchapter` AS `id_nonchapter`,`c`.`namachapter` AS `namachapter`,`c`.`keterangan` AS `keterangan`,`p`.`provinsi` AS `provinsi`,`k`.`kabupaten` AS `kabupaten` from ((`nonchapter` `c` join `provinsi` `p` on((`c`.`propinsi` = `p`.`kode`))) join `kabupaten` `k` on((`c`.`kabupaten` = `k`.`id`))) where (`c`.`aktif` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `v_nopungbagus`
--
DROP TABLE IF EXISTS `v_nopungbagus`;

CREATE VIEW `v_nopungbagus`  AS  select `nopungbagus`.`id_nopungbagus` AS `id_nopungbagus`,`nopungbagus`.`nopungbagus` AS `nopungbagus`,`nopungbagus`.`keterangan` AS `keterangan` from `nopungbagus` ;

-- --------------------------------------------------------

--
-- Structure for view `v_regulang`
--
DROP TABLE IF EXISTS `v_regulang`;

CREATE VIEW `v_regulang`  AS  select `member`.`id_member` AS `id_member`,`member`.`nama` AS `nama`,`member`.`email` AS `email`,`member`.`hpwa` AS `hpwa`,`member`.`kemeja` AS `kemeja`,`member`.`prodomisilih` AS `prodomisilih`,`member`.`kabdomisilih` AS `kabdomisilih`,`member`.`tgllahir` AS `tgllahir`,`member`.`proalamat` AS `proalamat`,`member`.`kabalamat` AS `kabalamat`,`member`.`alamat` AS `alamat`,`member`.`kodepos` AS `kodepos`,`member`.`idjabatan` AS `idjabatan`,`member`.`idchapter` AS `idchapter`,`member`.`idnonchapter` AS `idnonchapter`,`member`.`idtahununit` AS `idtahununit`,`member`.`idkapasitasunit` AS `idkapasitasunit`,`member`.`idwarnaunit` AS `idwarnaunit`,`member`.`nopolisi` AS `nopolisi`,`member`.`norangka` AS `norangka`,`member`.`nomesin` AS `nomesin`,`member`.`ktpsim` AS `ktpsim`,`member`.`stnk` AS `stnk`,`member`.`buktitransfer` AS `buktitransfer`,`member`.`photo` AS `photo`,`member`.`ppok` AS `ppok`,`member`.`aktif` AS `aktif`,`member`.`idaktif` AS `idaktif`,`member`.`ketaktif` AS `ketaktif`,`member`.`aktifdate` AS `aktifdate`,`member`.`insertdate` AS `insertdate`,`member`.`editdate` AS `editdate`,`member`.`idedit` AS `idedit`,`member`.`nopung` AS `nopung`,`member`.`statusnopung` AS `statusnopung`,`member`.`statusregis` AS `statusregis` from `member` where (`member`.`statusregis` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_regulmember`
--
DROP TABLE IF EXISTS `v_regulmember`;

CREATE VIEW `v_regulmember`  AS  select `m`.`id_member` AS `id_member`,`m`.`nopung` AS `nopung`,`m`.`nama` AS `nama`,`m`.`idchapter` AS `idchapter`,`c`.`namachapter` AS `namachapter`,`m`.`nopolisi` AS `nopolisi`,`t`.`tahun` AS `tahun`,`w`.`warna` AS `warna`,`s`.`kpsmesin` AS `kpsmesin`,`p`.`provinsi` AS `provinsi`,`k`.`kabupaten` AS `kabupaten`,`m`.`insertdate` AS `insertdate` from ((((((`member` `m` left join `thnunit` `t` on((`m`.`idtahununit` = `t`.`id_thnunit`))) left join `warnaunit` `w` on((`m`.`idwarnaunit` = `w`.`id_warnaunit`))) left join `kpsmesin` `s` on((`m`.`idkapasitasunit` = `s`.`id_kpsmesin`))) join `chapter` `c` on((`m`.`idchapter` = `c`.`id_chapter`))) left join `provinsi` `p` on((`m`.`prodomisilih` = `p`.`kode`))) left join `kabupaten` `k` on((`m`.`kabdomisilih` = `k`.`id`))) where (`m`.`statusregis` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_thnunit`
--
DROP TABLE IF EXISTS `v_thnunit`;

CREATE VIEW `v_thnunit`  AS  select `thnunit`.`id_thnunit` AS `id_thnunit`,`thnunit`.`tahun` AS `tahun`,`thnunit`.`keterangan` AS `keterangan` from `thnunit` ;

-- --------------------------------------------------------

--
-- Structure for view `v_user`
--
DROP TABLE IF EXISTS `v_user`;

CREATE VIEW `v_user`  AS  select `u`.`id_user` AS `id_user`,`u`.`nama` AS `nama`,`u`.`keterangan` AS `keterangan`,`u`.`userlogin` AS `userlogin`,`u`.`userpass` AS `userpass`,`u`.`salt` AS `salt`,`u`.`token` AS `token`,`u`.`refreshtoken` AS `refreshtoken`,`u`.`akses` AS `akses`,`u`.`tokendate` AS `tokendate`,`u`.`logindate` AS `logindate`,`u`.`idmember` AS `idmember`,`m`.`idchapter` AS `idchapter`,`m`.`idjabatan` AS `idjabatan`,`j`.`idrool` AS `idrool` from ((`user` `u` join `member` `m` on((`m`.`id_member` = `u`.`idmember`))) join `jabatan` `j` on((`j`.`id_jabatan` = `m`.`idjabatan`))) order by `m`.`idchapter` ;

-- --------------------------------------------------------

--
-- Structure for view `v_warnaunit`
--
DROP TABLE IF EXISTS `v_warnaunit`;

CREATE VIEW `v_warnaunit`  AS  select `warnaunit`.`id_warnaunit` AS `id_warnaunit`,`warnaunit`.`warna` AS `warna`,`warnaunit`.`keterangan` AS `keterangan` from `warnaunit` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id_chapter`);

--
-- Indexes for table `datachapter`
--
ALTER TABLE `datachapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datadomisili`
--
ALTER TABLE `datadomisili`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datakota`
--
ALTER TABLE `datakota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatipe`
--
ALTER TABLE `datatipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datawarna`
--
ALTER TABLE `datawarna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpsmesin`
--
ALTER TABLE `kpsmesin`
  ADD PRIMARY KEY (`id_kpsmesin`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `menucrv`
--
ALTER TABLE `menucrv`
  ADD PRIMARY KEY (`id_menucrv`);

--
-- Indexes for table `nonchapter`
--
ALTER TABLE `nonchapter`
  ADD PRIMARY KEY (`id_nonchapter`);

--
-- Indexes for table `nopungbagus`
--
ALTER TABLE `nopungbagus`
  ADD PRIMARY KEY (`id_nopungbagus`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode` (`kode`);

--
-- Indexes for table `roolcrv`
--
ALTER TABLE `roolcrv`
  ADD PRIMARY KEY (`id_roolcrv`);

--
-- Indexes for table `roolmenu`
--
ALTER TABLE `roolmenu`
  ADD PRIMARY KEY (`id_roolmenu`);

--
-- Indexes for table `tabelsemetara`
--
ALTER TABLE `tabelsemetara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thnunit`
--
ALTER TABLE `thnunit`
  ADD PRIMARY KEY (`id_thnunit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `warnaunit`
--
ALTER TABLE `warnaunit`
  ADD PRIMARY KEY (`id_warnaunit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id_chapter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `datachapter`
--
ALTER TABLE `datachapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `datadomisili`
--
ALTER TABLE `datadomisili`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datakota`
--
ALTER TABLE `datakota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `datatipe`
--
ALTER TABLE `datatipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `datawarna`
--
ALTER TABLE `datawarna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `kpsmesin`
--
ALTER TABLE `kpsmesin`
  MODIFY `id_kpsmesin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1918;

--
-- AUTO_INCREMENT for table `menucrv`
--
ALTER TABLE `menucrv`
  MODIFY `id_menucrv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nonchapter`
--
ALTER TABLE `nonchapter`
  MODIFY `id_nonchapter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nopungbagus`
--
ALTER TABLE `nopungbagus`
  MODIFY `id_nopungbagus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `roolcrv`
--
ALTER TABLE `roolcrv`
  MODIFY `id_roolcrv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roolmenu`
--
ALTER TABLE `roolmenu`
  MODIFY `id_roolmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tabelsemetara`
--
ALTER TABLE `tabelsemetara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thnunit`
--
ALTER TABLE `thnunit`
  MODIFY `id_thnunit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warnaunit`
--
ALTER TABLE `warnaunit`
  MODIFY `id_warnaunit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
