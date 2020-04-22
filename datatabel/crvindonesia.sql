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
