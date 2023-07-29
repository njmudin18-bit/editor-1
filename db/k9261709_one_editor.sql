-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2023 at 09:33 AM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k9261709_one_editor`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_fasilitas_uji`
--

CREATE TABLE `table_fasilitas_uji` (
  `id` int(12) NOT NULL,
  `nama` varchar(125) NOT NULL,
  `image` varchar(125) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` int(11) NOT NULL,
  `insert_by` int(11) NOT NULL,
  `update_date` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_fasilitas_uji`
--

INSERT INTO `table_fasilitas_uji` (`id`, `nama`, `image`, `deskripsi`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Microscope', 'microscope.jpg', 'Mikroskop adalah alat laboratorium yang digunakan untuk mengamati benda yang sangat kecil dan benda yang tidak tampak oleh indra penglihatan secara langsung. Ukuran bayangan atau gambar yang dihasilkan oleh mikroskop dapat mencapai jutaan kali ukuran benda aslinya. Wikipedia', 'AKTIF', 2023, 9, NULL, NULL),
(2, 'PVC Elongation', 'pvc_elongation.jpg', '-', 'AKTIF', 2023, 9, NULL, NULL),
(3, 'Glow Wire Tester', 'glow_wire_tester.jpg', '-', 'AKTIF', 2023, 9, 2023, 9),
(4, 'Flexing Tester', 'flexing_tester.jpg', '-', 'AKTIF', 2023, 9, NULL, NULL),
(5, 'Aging Chamber', 'aging_chamber.jpg', '', 'AKTIF', 2023, 9, 2023, 9);

-- --------------------------------------------------------

--
-- Table structure for table `table_jenis_produk`
--

CREATE TABLE `table_jenis_produk` (
  `id` int(12) NOT NULL,
  `jenis_produk` varchar(75) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_jenis_produk`
--

INSERT INTO `table_jenis_produk` (`id`, `jenis_produk`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Tusuk Kontak SNI', 'AKTIF', '2023-02-08 07:42:29', '9', '2023-05-30 08:52:35', '9'),
(2, 'Wiring Assy', 'AKTIF', '2023-02-08 07:42:40', '9', '2023-02-08 07:43:01', '9'),
(3, 'Kabel SNI', 'TIDAK', '2023-05-30 08:52:24', '9', '2023-07-11 10:53:37', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_logo_pelanggan`
--

CREATE TABLE `table_logo_pelanggan` (
  `id` int(12) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(25) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_logo_pelanggan`
--

INSERT INTO `table_logo_pelanggan` (`id`, `nama`, `logo`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(5, 'DENPOO', 'logo-denpoo.webp', 'AKTIF', '2023-02-04 10:59:17', '9', '2023-07-20 15:17:36', '9'),
(6, 'KIRIN', 'logo-kirin.webp', 'AKTIF', '2023-02-04 10:59:30', '9', '2023-07-20 15:17:42', '9'),
(8, 'LG Electronics', 'logo-lg.webp', 'AKTIF', '2023-02-04 11:01:55', '9', '2023-07-20 15:17:48', '9'),
(9, 'RINNAI', 'logo-rinnai.webp', 'AKTIF', '2023-02-04 11:02:16', '9', '2023-07-20 15:17:55', '9'),
(10, 'MIYAKO', 'logo-miyako.webp', 'AKTIF', '2023-02-04 11:02:40', '9', '2023-07-20 15:18:01', '9'),
(11, 'PANASONIC', 'logo-panasonic.webp', 'AKTIF', '2023-02-04 11:03:00', '9', '2023-07-20 15:21:19', '9'),
(12, 'POLYTRON', 'logo-polytron.webp', 'AKTIF', '2023-02-04 11:10:00', '9', '2023-07-20 15:21:11', '9'),
(13, 'SHARP', 'logo-sharp.webp', 'AKTIF', '2023-02-04 11:13:05', '9', '2023-07-20 15:21:04', '9'),
(14, 'SANKEN', 'logo-sanken.webp', 'AKTIF', '2023-03-13 12:42:25', '9', '2023-07-20 15:20:58', '9'),
(15, 'MODENA', 'logo-modena.webp', 'AKTIF', '2023-03-13 12:44:41', '9', '2023-07-20 15:45:27', '9'),
(16, 'SHIMIZU', 'logo-shimizus.webp', 'AKTIF', '2023-03-13 12:45:18', '9', '2023-07-20 15:47:56', '9'),
(17, 'BROCO', 'logo-broco.webp', 'AKTIF', '2023-03-13 12:46:29', '9', '2023-07-20 15:47:50', '9'),
(18, 'FRIGIGATE', 'logo-frigigate.webp', 'AKTIF', '2023-03-13 12:47:17', '9', '2023-07-20 15:47:44', '9'),
(19, 'XIAOMI', 'logo-mi.webp', 'AKTIF', '2023-03-13 12:49:42', '9', '2023-07-20 15:14:30', '9'),
(20, 'TCL', 'logo-tcl.webp', 'AKTIF', '2023-03-13 12:50:32', '9', '2023-07-20 15:14:22', '9'),
(21, 'ARISA', 'logo-arisa.webp', 'AKTIF', '2023-03-13 12:51:41', '9', '2023-07-20 15:14:17', '9'),
(22, 'COSMOS', 'logo-cosmos.webp', 'AKTIF', '2023-03-13 12:55:21', '9', '2023-07-20 15:14:11', '9'),
(23, 'AKARI', 'logo-akari.webp', 'AKTIF', '2023-03-13 12:56:53', '9', '2023-07-20 15:14:02', '9'),
(24, 'PISCES', 'logo-pisces.webp', 'AKTIF', '2023-03-13 13:45:19', '9', '2023-07-20 15:10:48', '9'),
(25, 'PT. RAJAWALI ANUGRAH NUSANTARA SELARAS', 'logo-rans.webp', 'AKTIF', '2023-03-14 09:43:36', '9', '2023-07-20 15:10:37', '9'),
(26, 'UTICON', 'logo-uticon.webp', 'AKTIF', '2023-03-14 09:44:36', '9', '2023-07-20 15:10:31', '9'),
(27, 'PT. FUJISEI PLASTIK SEITEK', 'logo-fps.webp', 'AKTIF', '2023-03-14 09:48:59', '3029', '2023-07-20 15:10:25', '9'),
(28, 'SPC', 'logo-spc.webp', 'AKTIF', '2023-03-14 10:02:58', '3029', '2023-07-20 15:10:17', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_main_slider`
--

CREATE TABLE `table_main_slider` (
  `id` int(12) NOT NULL,
  `urutan` int(12) DEFAULT NULL,
  `slider_name` varchar(75) DEFAULT NULL,
  `slider_image` varchar(75) DEFAULT NULL,
  `main_title` varchar(75) DEFAULT NULL,
  `sub_title` varchar(75) DEFAULT NULL,
  `button_text` varchar(25) DEFAULT NULL,
  `button_link` text DEFAULT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime DEFAULT NULL,
  `insert_by` varchar(25) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_main_slider`
--

INSERT INTO `table_main_slider` (`id`, `urutan`, `slider_name`, `slider_image`, `main_title`, `sub_title`, `button_text`, `button_link`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 2, 'Slider Power Cord', 'Banner_Utama_PC_Baru_resize_50_1_50.webp', 'PT. Multi Arta Sekawan', 'Suku cadang terbaik untuk produk Anda', 'Selengkapnya', 'company-profile', 'AKTIF', '2023-02-03 08:49:09', NULL, '2023-07-20 12:46:35', '9'),
(2, 3, 'Slider Wiring Assy.', 'Banner_Utama_WA_Baru_resize_501.webp', 'PT. Multi Arta Sekawan', 'Berbagai pilihan kabel tersedia di sini', 'Selengkapnya', 'company-profile', 'AKTIF', '2023-02-03 13:08:15', NULL, '2023-07-20 12:40:58', '9'),
(3, 1, 'Slider Utama', 'Banner_Utama_Baru_resize_50_1_50.webp', 'PT. Multi Arta Sekawan', 'Manufaktur Tusuk kontak SNI, Kabel SNI dan Wiring assy.', 'Selengkapnya', 'company-profile', 'AKTIF', '2023-04-05 13:16:11', '9', '2023-07-20 12:45:33', '9'),
(4, 1, 'Utama', 'slider_utama_bg.png', 'PT. Multi Arta Sekawan', 'Manufactur of Power Cord & Wiring Assy', 'Learn More', 'company-profile', 'TIDAK', '2023-04-06 13:35:51', '9', '2023-04-06 13:36:28', '9'),
(5, 5, 'Test 2', 'Banner_Utama_WA_Baru_resize_50.webp', 'Test 2', 'test 2', 'test 2', 'test-2', 'TIDAK', '2023-07-20 08:49:24', '9', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_metode_pdca`
--

CREATE TABLE `table_metode_pdca` (
  `id` int(12) NOT NULL,
  `text` text NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_metode_pdca`
--

INSERT INTO `table_metode_pdca` (`id`, `text`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(2, 'Pengembangan dimulai dari individu dengan usaha dan komunikasi yang baik serta training dan dukungan data yang benar dan tepat.', 'AKTIF', '2023-02-08 11:23:56', '9', '0000-00-00 00:00:00', ''),
(3, 'Pengembangan dimulai dari hal yang terkecil dan harus dilakukan secara rutin dengan semangat serta tujuan yang baik untuk segenap karyawan tanpa terkecuali.', 'AKTIF', '2023-02-08 11:24:30', '9', '0000-00-00 00:00:00', ''),
(4, 'Pengembangan terjadi dengan kerjasama yang baik dengan Pelanggan dalam mengikuti tuntutan pasar dan menerapkan kemajuan teknologi.', 'AKTIF', '2023-02-08 11:24:40', '9', '0000-00-00 00:00:00', ''),
(5, 'Lingkungan kerja adalah rumah kedua kami yang bersih, sehat dan menunjang produktivas usaha.', 'AKTIF', '2023-02-08 11:24:47', '9', '0000-00-00 00:00:00', ''),
(6, 'Qualitas dan ketepatan waktu adalah kunci dari kepuasan pelanggan kami.', 'AKTIF', '2023-02-08 11:24:55', '9', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_misi`
--

CREATE TABLE `table_misi` (
  `id` int(12) NOT NULL,
  `text` text NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_misi`
--

INSERT INTO `table_misi` (`id`, `text`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Menambah nilai pelanggan, karyawan, dan shareholder.', 'AKTIF', '2023-02-08 11:08:29', '9', '0000-00-00 00:00:00', ''),
(2, 'Menambah nilai produksi dengan data, inovasi, dan perbaikan berkelanjutan.', 'AKTIF', '2023-02-08 11:08:42', '9', '0000-00-00 00:00:00', ''),
(3, 'Menambah nilai dan semangat SDM dengan rekruitment dan training.', 'AKTIF', '2023-02-08 11:08:52', '9', '0000-00-00 00:00:00', ''),
(4, 'Menambah nilai lingkungan kerja agar aman, sehat, dan produktif.', 'AKTIF', '2023-02-08 11:09:05', '9', '0000-00-00 00:00:00', ''),
(5, 'Menambah nilai lingkungan sekitar pabrik.', 'AKTIF', '2023-02-08 11:09:12', '9', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_pertanyaan`
--

CREATE TABLE `table_pertanyaan` (
  `id` int(12) NOT NULL,
  `pengirim` varchar(150) NOT NULL,
  `email` varchar(75) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `type` enum('NORMAL','CALL BACK') NOT NULL DEFAULT 'NORMAL',
  `status_answer` enum('ASK','ANSWER','HOLD') DEFAULT 'ASK',
  `judul` varchar(250) NOT NULL,
  `isi` text DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_pertanyaan`
--

INSERT INTO `table_pertanyaan` (`id`, `pengirim`, `email`, `phone`, `type`, `status_answer`, `judul`, `isi`, `create_date`, `update_date`, `update_by`) VALUES
(48, 'Rudi', 'admin@mail.com', '', 'NORMAL', 'ANSWER', 'Test from localhost', 'Lengkapi dan submit form pelanggan di samping dan Tim sales kami akan menghubungi anda, diwaktu yang nyaman bagi anda.', '2023-02-10 13:45:12', '2023-02-13 09:32:14', '9'),
(49, 'Mudin', NULL, '08129806112', 'CALL BACK', 'ASK', 'Cara memesan produk', NULL, '2023-02-10 13:45:39', NULL, NULL),
(50, 'Dewa', NULL, '08129806112', 'CALL BACK', 'ASK', 'Pertanyaan seputar produk', NULL, '2023-02-13 09:26:40', NULL, NULL),
(51, 'Dewa', 'dewa@gmail.com', '', 'NORMAL', 'ASK', 'Kirimin dong please', 'Lengkapi dan submit form pelanggan di samping dan Tim sales kami akan menghubungi anda, diwaktu yang nyaman bagi anda.', '2023-02-13 09:29:31', '2023-02-13 10:17:22', '9'),
(52, 'Dwi', 'dwi@gmail.com', '', 'NORMAL', 'ASK', 'Hi, saya dwi', 'Kirimi kami permintaan Anda kapan saja!', '2023-02-13 09:30:58', NULL, NULL),
(53, 'Server', NULL, '08134500123', 'CALL BACK', 'ASK', 'Pertanyaan seputar produk', NULL, '2023-02-13 12:53:01', NULL, NULL),
(54, 'Reza', NULL, '08153000400', 'CALL BACK', 'HOLD', 'Hubungi saya', NULL, '2023-02-13 13:51:02', '2023-02-13 13:51:43', '9'),
(55, 'Tito Ramadhani', NULL, '08121829575', 'CALL BACK', 'ASK', 'Diskusi dengan tim sales', NULL, '2023-05-02 09:34:53', NULL, NULL),
(56, '', NULL, '', 'CALL BACK', 'ASK', '', NULL, '2023-07-13 09:18:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_perusahaan`
--

CREATE TABLE `table_perusahaan` (
  `id` int(12) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `nama` varchar(75) NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `handphone` varchar(25) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text DEFAULT NULL,
  `icon_name` varchar(100) DEFAULT NULL,
  `logo_name` varchar(100) NOT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `pinterest` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `insert_date` date NOT NULL,
  `insert_by` varchar(25) NOT NULL,
  `update_date` date DEFAULT NULL,
  `update_by` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_perusahaan`
--

INSERT INTO `table_perusahaan` (`id`, `aktivasi`, `nama`, `telepon`, `handphone`, `fax`, `email`, `alamat`, `maps`, `icon_name`, `logo_name`, `twitter`, `facebook`, `instagram`, `pinterest`, `youtube`, `skype`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(5, 'AKTIF', 'PT. Multi Arta Sekawan', '+6221 596 0335', '+6281298061129', '+6221 596 0336', 'sales@omas-mfg.com', 'Jl. Raya Serang KM 18,6 Cikupa Tangerang, Banten - Indonesia.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.336420019074!2d106.4934196!3d-6.2195985!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c5bd12989d99803!2sPT.%20MULTI%20ARTA%20SEKAWAN!5e0!3m2!1sid!2sid!4v1673943488009!5m2!1sid!2sid\" width=\"100%\" height=\"350\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'icon.webp', 'logo-mas.webp', 'tw', 'fb', 'in', 'pin', 'yt', 'sk', '2023-02-06', '9', '2023-07-21', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_produk`
--

CREATE TABLE `table_produk` (
  `id` int(12) NOT NULL,
  `id_jenis` int(12) NOT NULL,
  `nama_produk` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `images` varchar(150) NOT NULL,
  `nominal_voltage` varchar(50) NOT NULL,
  `available_types` text NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') DEFAULT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_produk`
--

INSERT INTO `table_produk` (`id`, `id_jenis`, `nama_produk`, `slug`, `images`, `nominal_voltage`, `available_types`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 1, 'Tusuk Kontak SNI (M-003)', 'tusuk-kontak-sni-m-003', '2_Pin_Euro_Plug_M-003.webp', '2.5 A || 250 V~', '60227 IEC 52 / H03VVH2-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VVH2-F 2x0.75 mm² 300/500 V', 'AKTIF', '2023-02-08 08:48:33', '9', '2023-07-20 15:55:12', '9'),
(2, 1, 'Tusuk Kontak SNI (M-001)', 'tusuk-kontak-sni-m-001', '2_Pin_Euro_Plug_M-001.webp', '2.5 A || 250 V~', '60227 IEC 52 / H03VVH2-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VVH2-F 2x0.75 mm² 300/500 V;60227 IEC 52 / H03VV-F 2x0.5 mm² 300/300 V', 'AKTIF', '2023-02-08 08:50:40', '9', '2023-07-20 15:55:19', '9'),
(3, 1, 'Tusuk Kontak SNI (M-008)', 'tusuk-kontak-sni-m-008', 'pc3.jpg', '2.5 A || 250 V~', '60227 IEC 52 / H03VVVH2-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H03VVVH2-F 2x0.75 mm² 300/500 V', 'TIDAK', '2023-02-08 10:14:37', '9', '2023-05-30 09:11:38', '9'),
(4, 1, 'Tusuk Kontak SNI (M-002)', 'tusuk-kontak-sni-m-002', '2_Pin_Euro_Plug_M-002.webp', '16 A || 250 V~', '60227 IEC 53 / H05VVH2-F 2x0.75 mm² 300/500 V;60227 IEC 52 / H03VV-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VV-F 2x0.75 mm² 300/500 V', 'AKTIF', '2023-02-08 10:17:19', '9', '2023-07-20 15:55:26', '9'),
(5, 1, 'Tusuk Kontak SNI (M-004)', 'tusuk-kontak-sni-m-004', '2_Pin_Euro_Plug_M-004.webp', '16 A || 250 V~', '60227 IEC 52 / H03VVH2-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VVH2-F 2x0.75 mm² 300/500 V;60227 IEC 52 / H03VV-F 2x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VV-F 2x0.75 mm² 300/500 V;60245 IEC 66 / H07RN-F 2x1.0 mm² 450/750 V', 'AKTIF', '2023-02-08 10:19:12', '9', '2023-07-20 15:55:33', '9'),
(6, 1, 'Tusuk Kontak SNI (M-006A)', 'tusuk-kontak-sni-m-006a', '2_Pin_Euro_Plug_M-006A.webp', '16 A || 250 V~', '60227 IEC 52 / H03VVH2-F 3x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VV-F 3x0.75 - 1.00 mm² 300/500 V;60227 IEC 53 / H05RR-F 3x0.75 - 1.00 mm² 300/500 V;60227 IEC 57 / H05RN-F 3x0.75 - 1.00 mm² 300/500 V;60245 IEC 66 / H07RN-F 3x1.0 mm² 450/750 V', 'AKTIF', '2023-02-08 10:20:11', '9', '2023-07-20 15:55:43', '9'),
(8, 1, 'Tusuk Kontak SNI (M-005)', 'tusuk-kontak-sni-m-005', '2_Pin_Euro_Plug_M-005.webp', '16 A || 250 V~', '60227 IEC 52 / H03VVH2-F 3x0.5 - 0.75 mm² 300/300 V;60227 IEC 53 / H05VV-F 3x0.75 - 1.00 mm² 300/500 V;60245 IEC 53 / H05RR-F 3x0.75 mm² 300/500 V;60245 IEC 57 / H05RN-F 3x0.75 - 1.00 mm² 300/500 V;60245 IEC 66 / H07RN-F 3x1.00 mm² 450/750 V;60245 IEC 89 / H03RT-H 3x0.75 mm² 300/300 V;60227 IEC 53 / H05VV-F 3x1.50 mm² 300/500 V', 'AKTIF', '2023-02-08 12:44:33', '9', '2023-07-20 15:55:01', '9'),
(9, 2, 'Heating - Rice Cookers', 'heating---rice-cookers', 'Heating_-_Rice_Cookers.webp', '-', '-', 'AKTIF', '2023-02-22 09:11:35', '9', '2023-07-21 07:03:30', '9'),
(10, 2, 'Heating - Water Dispenser', 'heating---water-dispenser', 'Heating_-_Water_Dispenser.webp', '-', '-', 'AKTIF', '2023-02-22 09:11:53', '9', '2023-07-21 07:03:42', '9'),
(11, 2, 'Top Element Wire Assy', 'top-element-wire-assy', 'Top_Element_Wire_Assy.webp', '-', '-', 'AKTIF', '2023-02-22 09:12:14', '9', '2023-07-21 07:03:54', '9'),
(12, 2, 'Element Wire Assy', 'element-wire-assy', 'Element_Wire_Assy.webp', '-', '-', 'AKTIF', '2023-02-22 09:12:50', '9', '2023-07-21 07:04:02', '9'),
(13, 2, 'PCB Assy - Rice Cookers', 'pcb-assy---rice-cookers', 'PCB_Assy_-_Rice_Cookers11.webp', '-', '-', 'AKTIF', '2023-02-22 09:13:21', '9', '2023-07-21 07:04:38', '9'),
(14, 2, 'PCB Assy - Rice Cookers', 'pcb-assy---rice-cookers', 'PCB_Assy_-_Rice_Cookers.webp', '-', '-', 'AKTIF', '2023-02-22 09:13:43', '9', '2023-07-21 07:04:31', '9'),
(15, 2, 'PCB Assy - Water Dispenser', 'pcb-assy---water-dispenser', 'PCB_Assy_-_Water_Dispensers.webp', '-', '-', 'AKTIF', '2023-02-22 09:14:05', '9', '2023-07-21 07:07:42', '9'),
(16, 1, 'Tusuk Kontak SNI (M-006A) + Konektor', 'tusuk-kontak-sni-m-006a-konektor', '2_Pin_Euro_Plug_M-006A_+_Connector.webp', '16A || 250V', '-', 'AKTIF', '2023-07-11 13:09:02', '9', '2023-07-20 15:54:45', '9'),
(17, 1, 'Tusuk Kontak SNI (M-003) + Konektor', 'tusuk-kontak-sni-m-003-konektor', '2_Pin_Euro_Plug_M-003_+_Connector.webp', '2.5A || 250V', '-', 'AKTIF', '2023-07-11 13:23:30', '9', '2023-07-20 15:54:28', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_produk_tags`
--

CREATE TABLE `table_produk_tags` (
  `id` int(12) NOT NULL,
  `urutan` int(12) DEFAULT NULL,
  `main_title` varchar(75) NOT NULL,
  `sub_title` text NOT NULL,
  `icon` varchar(25) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_produk_tags`
--

INSERT INTO `table_produk_tags` (`id`, `urutan`, `main_title`, `sub_title`, `icon`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 1, 'Berkualitas', 'Produk yang kami hasilkan telah melewati inspeksi Quality Control yang ketat, sehingga memastikan bahwa produk yang anda terima adalah produk dengan kualitas terbaik.', 'flaticon-checklist', 'AKTIF', '2023-02-07 09:02:14', '9', '2023-02-10 09:35:22', '9'),
(2, 2, 'Bergaransi', 'Produk yang anda terima mendapatkan garansi pengembalian produk dari kami, sehingga memberikan ketenangan dan kenyamanan bagi anda dalam menggunakan produk kami.', 'flaticon-audit', 'AKTIF', '2023-02-07 09:02:57', '9', '2023-02-10 09:35:26', '9'),
(3, 3, 'Berlisensi', 'Produk yang kami hasilkan telah mendapatkan lisensi Standar Nasional Indonesia (SNI) dari pemerintah RI dan Sucofindo. Sehingga memastikan produk kami terdaftar.', 'flaticon-checklist-1', 'AKTIF', '2023-02-07 09:03:22', '9', '2023-02-10 09:35:34', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_produk_trust`
--

CREATE TABLE `table_produk_trust` (
  `id` int(12) NOT NULL,
  `main_title` varchar(75) NOT NULL,
  `sub_title` text NOT NULL,
  `button_text` varchar(25) NOT NULL,
  `button_link` text DEFAULT NULL,
  `images` varchar(150) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_produk_trust`
--

INSERT INTO `table_produk_trust` (`id`, `main_title`, `sub_title`, `button_text`, `button_link`, `images`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Kami dipercaya oleh banyak perusahaan besar', 'PT. Multi Arta Sekawan telah memproduksi Tusuk kontak SNI, Kabel SNI dan Wiring Assy.  yang telah digunakan oleh banyak perusahaan besar yang tersebar diseluruh Indonesia.', 'Selengkapnya', 'our-customer', 'trust_bg2.png', 'AKTIF', '2023-02-07 09:42:06', '9', '2023-05-30 08:57:41', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_profile`
--

CREATE TABLE `table_profile` (
  `id` int(12) NOT NULL,
  `main_title` varchar(150) NOT NULL,
  `contents` text NOT NULL,
  `images` varchar(125) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_profile`
--

INSERT INTO `table_profile` (`id`, `main_title`, `contents`, `images`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Kepuasan anda adalah tujuan kami', '<p>Sejak 2010, <b>PT Multi Arta Sekawan</b> adalah perusahaan <i><b>PMA</b></i> yang bergerak\r\ndalam pabrik pembuatan Kabel, Tusuk Kontak, dan Wiring harness untuk\r\nindustri elektronik Indonesia, khususnya industri peralatan rumah tangga. </p><p>Didirikan dengan total investasi 50 millar rupiah,&nbsp;<span style=\"font-weight: 700; font-size: 14.4px;\">PT Multi Arta Sekawan</span>&nbsp;membawa bendera\r\nOMAS sebagai merk utama kami, dan pada saat ini perusahaan telah\r\nberkembang dengan 250 karyawan di area sebesar 3,000 m2. </p><p>Dari awal berdiri,&nbsp;<span style=\"font-weight: 700; font-size: 14.4px;\">PT Multi Arta Sekawan</span>&nbsp;menjalankan sistem managemen ISO dan telah\r\nmenjalan kerja sama dengan Sucofindo untuk audit dan sertifikasi produk.&nbsp;<br></p>', 'mas.jpg', 'AKTIF', '2023-02-14 09:03:06', '9', '2023-07-11 11:05:20', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_profile_header`
--

CREATE TABLE `table_profile_header` (
  `id` int(12) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `images` varchar(150) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_profile_header`
--

INSERT INTO `table_profile_header` (`id`, `nama`, `images`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'Profil Perusahaan', 'company_profile_bg_resize.webp', 'AKTIF', '2023-02-06 13:09:08', '9', '2023-07-25 08:43:11', '9'),
(2, 'Visi Dan Misi', 'visi_misi_bg_resize.webp', 'AKTIF', '2023-02-06 13:09:54', '9', '2023-07-25 08:45:52', '9'),
(3, 'Pelanggan Kami', 'our_customers_bg_resize.webp', 'AKTIF', '2023-02-06 13:10:13', '9', '2023-07-25 08:46:00', '9'),
(4, 'Fasilitas Uji', 'fasilitas_uji_bg2_resize.webp', 'AKTIF', '2023-02-06 13:10:59', '9', '2023-07-25 08:47:11', '9'),
(6, 'Kontak Kami', 'contact_us_bg_resize.webp', 'AKTIF', '2023-02-09 08:53:15', '9', '2023-07-25 08:40:50', '9'),
(7, 'Karir', 'career_bg_resize.webp', 'AKTIF', '2023-02-09 09:14:40', '9', '2023-07-25 08:42:05', '9'),
(8, 'Tusuk Kontak', 'Power_cord.webp', 'AKTIF', '2023-02-09 09:22:59', '9', '2023-07-25 08:49:09', '9'),
(9, 'Wiring Assy', 'Wiring_Assy.webp', 'AKTIF', '2023-02-09 10:28:32', '9', '2023-07-25 08:49:02', '9'),
(10, 'Tidak ditemukan', '404.png', 'AKTIF', '2023-02-15 09:46:41', '9', '2023-04-06 14:49:35', '3029');

-- --------------------------------------------------------

--
-- Table structure for table `table_sertified_by`
--

CREATE TABLE `table_sertified_by` (
  `id` int(12) NOT NULL,
  `urutan` int(12) DEFAULT NULL,
  `nama` varchar(75) NOT NULL,
  `nomor_lisensi` varchar(50) NOT NULL,
  `images` varchar(150) NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_sertified_by`
--

INSERT INTO `table_sertified_by` (`id`, `urutan`, `nama`, `nomor_lisensi`, `images`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 1, 'Sucofindo QSC', 'QSC 01290', 'sertifikasi_1_resize.webp', 'AKTIF', '2023-02-07 11:00:47', '9', '2023-07-20 12:54:16', '9'),
(3, 2, 'Sucofindo', 'PCS 00114.01', 'sertifikasi_2_resize.webp', 'AKTIF', '2023-02-10 09:23:41', '9', '2023-07-20 12:54:10', '9'),
(4, 3, 'SNI', 'IEC 60884-1', 'sertifikasi_3_resize.webp', 'AKTIF', '2023-02-10 09:24:11', '9', '2023-07-20 12:54:01', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_sinopsis_produk`
--

CREATE TABLE `table_sinopsis_produk` (
  `id` int(12) NOT NULL,
  `urutan` int(12) DEFAULT NULL,
  `product_name` varchar(125) NOT NULL,
  `product_desc` text NOT NULL,
  `product_images` varchar(150) DEFAULT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `types` enum('IMAGES','TEXT') NOT NULL,
  `link` text NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(25) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_sinopsis_produk`
--

INSERT INTO `table_sinopsis_produk` (`id`, `urutan`, `product_name`, `product_desc`, `product_images`, `aktivasi`, `types`, `link`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(19, 3, 'Apa yang bisa kami lakukan untuk Anda', 'PT. Multi Arta Sekawan merupakan perusahaan manufaktur untuk mensupply Tusuk kontak SNI, Kabel SNI dan rangkaian kabel kepada perusahaan - perusahaan yang memproduksi alat - alat listrik rumah tangga terutama di Indonesia.', '', 'AKTIF', 'TEXT', 'company-profile', '2023-02-04 10:09:05', '9', '2023-05-30 08:54:50', '9'),
(25, 1, 'Tusuk Kontak SNI', 'Kami memproduksi tusuk kontak dengan kualitas tinggi yang telah dipakai oleh banyak perusahaan besar di Indonesia.', 'Tusuk_Kontak_Sinopsis.webp', 'AKTIF', 'IMAGES', 'power-cord-series', '2023-05-31 15:03:07', '9', '2023-07-13 14:56:09', '9'),
(26, 2, 'Wiring Assy.', 'Kami juga memproduksi wiring assy yang digunakan oleh banyak \r\nperusahaan elektronik didalam produk-produk buatan nya.', 'Wiring_Assy_Sinopsis.webp', 'AKTIF', 'IMAGES', 'wiring-assy-series', '2023-05-31 15:04:41', '9', '2023-07-13 14:56:02', '9');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `id` int(12) NOT NULL,
  `nip` varchar(75) NOT NULL,
  `email_pegawai` varchar(75) NOT NULL,
  `username` varchar(75) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` enum('sa','admin','user') NOT NULL,
  `aktivasi` enum('Aktif','Block') NOT NULL,
  `last_login` datetime NOT NULL,
  `insert_date` date NOT NULL,
  `insert_by` varchar(25) NOT NULL,
  `update_date` date NOT NULL,
  `update_by` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`id`, `nip`, `email_pegawai`, `username`, `password`, `level`, `aktivasi`, `last_login`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(9, '2022111401', 'nj.mudin18@gmail.com', 'njmudin', '$2y$10$j.xoSAQieiUIl9nJAzd0F.DrbJlNLdiFAu1QLRBIEtct8Y2w37ZN.', 'sa', 'Aktif', '2023-07-25 08:39:21', '2023-02-01', 'nj.mudin18@gmail.com', '2023-02-13', '9'),
(10, '0988888', 'riki@gmail.com', 'riki', '$2y$10$/e/OekEIyHV2Tylnj8h6Ee25jpdMpH1.dN8Qaa3V0ry6iVbwYJcrS', 'sa', 'Aktif', '0000-00-00 00:00:00', '2023-02-02', '9', '0000-00-00', ''),
(13, '2022110001', 'reza@gmail.com', 'reza', '$2y$10$apz866DPn8Uq6BZpm5OG8u91CJNJT2t0fiJhLEdzESqiPdpU1MLk.', 'user', 'Block', '0000-00-00 00:00:00', '2023-02-02', '9', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_visi`
--

CREATE TABLE `table_visi` (
  `id` int(12) NOT NULL,
  `text` text NOT NULL,
  `aktivasi` enum('AKTIF','TIDAK') NOT NULL,
  `insert_date` datetime NOT NULL,
  `insert_by` varchar(15) NOT NULL,
  `update_date` datetime NOT NULL,
  `update_by` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_visi`
--

INSERT INTO `table_visi` (`id`, `text`, `aktivasi`, `insert_date`, `insert_by`, `update_date`, `update_by`) VALUES
(1, 'VALUE + TIME', 'AKTIF', '2023-02-08 10:58:31', '9', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_fasilitas_uji`
--
ALTER TABLE `table_fasilitas_uji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_jenis_produk`
--
ALTER TABLE `table_jenis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_logo_pelanggan`
--
ALTER TABLE `table_logo_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_main_slider`
--
ALTER TABLE `table_main_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_metode_pdca`
--
ALTER TABLE `table_metode_pdca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_misi`
--
ALTER TABLE `table_misi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_pertanyaan`
--
ALTER TABLE `table_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_perusahaan`
--
ALTER TABLE `table_perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_produk`
--
ALTER TABLE `table_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_produk_tags`
--
ALTER TABLE `table_produk_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_produk_trust`
--
ALTER TABLE `table_produk_trust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_profile`
--
ALTER TABLE `table_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_profile_header`
--
ALTER TABLE `table_profile_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_sertified_by`
--
ALTER TABLE `table_sertified_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_sinopsis_produk`
--
ALTER TABLE `table_sinopsis_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_visi`
--
ALTER TABLE `table_visi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_fasilitas_uji`
--
ALTER TABLE `table_fasilitas_uji`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_jenis_produk`
--
ALTER TABLE `table_jenis_produk`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_logo_pelanggan`
--
ALTER TABLE `table_logo_pelanggan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `table_main_slider`
--
ALTER TABLE `table_main_slider`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_metode_pdca`
--
ALTER TABLE `table_metode_pdca`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table_misi`
--
ALTER TABLE `table_misi`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_pertanyaan`
--
ALTER TABLE `table_pertanyaan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `table_perusahaan`
--
ALTER TABLE `table_perusahaan`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `table_produk`
--
ALTER TABLE `table_produk`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `table_produk_tags`
--
ALTER TABLE `table_produk_tags`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_produk_trust`
--
ALTER TABLE `table_produk_trust`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_profile`
--
ALTER TABLE `table_profile`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_profile_header`
--
ALTER TABLE `table_profile_header`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_sertified_by`
--
ALTER TABLE `table_sertified_by`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_sinopsis_produk`
--
ALTER TABLE `table_sinopsis_produk`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `table_visi`
--
ALTER TABLE `table_visi`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
