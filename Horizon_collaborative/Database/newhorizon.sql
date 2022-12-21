-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 02:46 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newhorizon`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 4),
(2, 2),
(2, 3),
(2, 10101),
(2, 10102),
(2, 10103),
(2, 10104),
(2, 10105),
(2, 10107),
(2, 10108),
(2, 10109),
(2, 10110),
(2, 10111),
(2, 10112),
(2, 10113),
(2, 10114),
(2, 10114),
(2, 10115),
(2, 10116),
(2, 10117),
(2, 10118),
(2, 10119),
(2, 10120),
(2, 10121),
(2, 10122),
(2, 10123),
(2, 10124),
(2, 10124),
(2, 10125),
(2, 10126),
(2, 10127),
(2, 10128),
(2, 10129),
(2, 10130),
(2, 10131),
(2, 10132),
(2, 10133),
(2, 10134),
(2, 10135),
(2, 10136),
(2, 10137),
(2, 10138),
(2, 10139),
(2, 10140),
(2, 10141),
(2, 10142),
(2, 10143),
(2, 10144),
(2, 10145),
(2, 10146),
(2, 10147),
(2, 10148),
(2, 10149),
(2, 10150),
(2, 10151),
(2, 10152),
(2, 10153),
(2, 10154),
(2, 10155),
(2, 10156),
(2, 10157),
(2, 10158),
(2, 10159),
(2, 10160),
(2, 10161),
(2, 10162),
(2, 10175),
(2, 10176),
(2, 10177),
(2, 10178),
(2, 10179),
(2, 10180),
(2, 10181),
(2, 10182),
(2, 10183),
(2, 10184),
(2, 10185),
(2, 10186),
(2, 10187),
(2, 10188),
(2, 10189),
(2, 10190),
(2, 10191),
(2, 10192),
(2, 10193),
(2, 10194),
(2, 10195),
(2, 10196),
(2, 10197),
(2, 10198),
(2, 10199),
(2, 10200),
(2, 10201),
(2, 10202),
(2, 10203),
(2, 10204),
(2, 10205),
(2, 10206),
(2, 10207),
(2, 10208),
(2, 10209),
(2, 10210),
(2, 10211),
(2, 10212),
(2, 10213),
(2, 10214),
(2, 10215),
(2, 10216),
(2, 10217),
(2, 10218),
(2, 10219);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'admin@gmail.com', 4, '2022-12-14 09:15:20', 1),
(2, '::1', 'admin@gmail.com', 4, '2022-12-14 18:56:49', 1),
(3, '::1', 'admin@gmail.com', 4, '2022-12-14 19:05:32', 1),
(4, '::1', 'user1@example.com', 10101, '2022-12-14 19:06:52', 1),
(5, '::1', 'yanuarmufid@gmail.com', 3, '2022-12-14 19:07:55', 1),
(6, '::1', 'user1@example.com', 10101, '2022-12-14 21:27:57', 1),
(7, '::1', 'admin@gmail.com', 4, '2022-12-14 21:36:39', 1),
(8, '::1', 'yanuarmufid@gmail.com', 3, '2022-12-14 21:41:41', 1),
(9, '::1', 'retnoekayanti15@gmail.com', 2, '2022-12-14 21:42:18', 1),
(10, '::1', 'retnoekayanti15@gmail.com', 2, '2022-12-14 21:43:27', 1),
(11, '::1', 'admin@gmail.com', 4, '2022-12-14 22:01:24', 1),
(12, '::1', 'user1@example.com', 10101, '2022-12-14 22:10:27', 1),
(13, '::1', 'yanuarmufid@gmail.com', 3, '2022-12-15 03:57:20', 1),
(14, '::1', 'admin@gmail.com', 4, '2022-12-15 06:30:27', 1),
(15, '::1', 'yanuarmufid@gmail.com', 3, '2022-12-15 10:54:33', 1),
(16, '::1', 'admin@gmail.com', 4, '2022-12-16 06:52:33', 1),
(17, '::1', 'user1@example.com', 10101, '2022-12-16 08:50:22', 1),
(18, '::1', 'admin@gmail.com', 4, '2022-12-20 07:58:44', 1),
(19, '::1', 'admin@gmail.com', 4, '2022-12-20 18:45:06', 1),
(20, '::1', 'admin@gmail.com', 4, '2022-12-20 19:32:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` varchar(255) NOT NULL,
  `induk_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `induk_kategori`) VALUES
(1, 'Tour Harian', 'Merupakan paket tour singkat selama 1 hari', 'tour'),
(2, 'Paket Tour ', 'Merupakan paket tour selama lebih dari 1 hari', 'tour'),
(3, 'Trekking Harian', 'Merupakan paket trekking singkat selama 1 hari', 'trekking'),
(4, 'Paket Trekking ', 'Merupakan paket trekking selama lebih dari 1 hari', 'trekking');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `tanggal_tour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1671029563, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prediksi`
--

CREATE TABLE `prediksi` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `nilai_prediksi` float NOT NULL DEFAULT 0,
  `nilai_mae` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prediksi`
--

INSERT INTO `prediksi` (`id`, `id_user`, `id_produk`, `nilai_prediksi`, `nilai_mae`) VALUES
(0, 10101, 20101, 1.69408, 1.69408),
(0, 10101, 20105, 2.51412, 1.48588),
(0, 10101, 20104, 0.671273, 0.671273),
(0, 10101, 20103, 2.67395, 0.326046),
(0, 10101, 20102, 0.189699, 0.189699),
(0, 10102, 20103, 3.65168, 1.34832),
(0, 10102, 20101, 1.78492, 1.21508),
(0, 10102, 20104, 1.19293, 1.19293),
(0, 10102, 20105, 1.08281, 1.08281),
(0, 10102, 20102, -0.431321, 0.431321),
(0, 10103, 20104, -0.827365, 0.827365),
(0, 10103, 20103, 0.545957, 0.545957),
(0, 10103, 20102, 2.58646, 0.413537),
(0, 10103, 20105, 4.11849, 0.118494),
(0, 10103, 20101, 4.08351, 0.0835133),
(0, 10104, 20102, -0.938168, 0.938168),
(0, 10104, 20105, 0.436425, 0.436425),
(0, 10104, 20101, 0.409546, 0.409546),
(0, 10104, 20104, 2.73151, 0.268491),
(0, 10104, 20103, 4.26483, 0.264827),
(0, 10105, 20102, 1.59333, 1.59333),
(0, 10105, 20101, 4.02795, 0.972055),
(0, 10105, 20103, 0.863581, 0.863581),
(0, 10105, 20104, -0.76835, 0.76835),
(0, 10105, 20105, 3.84815, 0.151854);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `harga` decimal(10,0) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `nilai_mae` float NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `deskripsi_produk`, `harga`, `sampul`, `nilai_mae`, `created_at`, `updated_at`) VALUES
(20101, 2, '2 Hari 1 Malam [Camping Desa Sembalun]', '<p>Kami menyediakan tour dengan waktu 2 hari 1 malam di daratan tinggi sembalun. Tour ini disajikan untuk anda yang ingin merasakan sensasi camping tapi males mendaki, paket trip ini menjadi solusi yang tepat.</p>\n\n<hr />\n<p><strong>Rencana Perjalanan&nbsp;</strong></p>\n\n<p>Day 1 :</p>\n\n<ul>\n	<li>Penjemputan di meeting point</li>\n	<li>Menuju Desa Sembalun</li>\n	<li>Mendirikan tenda</li>\n	<li>Menikmati suasana malam di camping ground</li>\n	<li>Makan malam</li>\n	<li>Istirahat</li>\n</ul>\n\n<p>Day 2 :</p>\n\n<ul>\n	<li>Bangun lebih pagi</li>\n	<li>Menikmati susana pagi Sembalun</li>\n	<li>Menuju Punck Sembalun</li>\n	<li>Petik strawberry</li>\n	<li>Sarapan di Kedai Sawah</li>\n	<li>Menuju Bukit Selong</li>\n	<li>Pengantaran ke meeting point</li>\n	<li>Sayonara see you next trip</li>\n</ul>\n\n<hr />\n<p>Paket ini memiliki include dan exclude tersendiri.</p>\n\n<p>Include :</p>\n\n<ul>\n	<li>Mobil + Driver</li>\n	<li>Tour Guide</li>\n	<li>Perlengkapan camping</li>\n	<li>Perlengkapan masak</li>\n	<li>Tiket petik strawberry</li>\n	<li>Kopi</li>\n	<li>Tiket masuk wisata</li>\n	<li>Parkir</li>\n</ul>\n\n<p>Exclude :</p>\n\n<ul>\n	<li>Makanan ringan</li>\n	<li>Tipping untuk tour guide</li>\n	<li>Kebutuhan pribadi</li>\n</ul>\n\n<hr />\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\n\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\n', '470000', '62886f682fc2a (1).jpg', 0.874855, '0000-00-00 00:00:00', '2022-12-20 19:44:44'),
(20102, 2, '3 Hari 2 Malam [Explore Gili]', '<p>Kami menyediakan tour dengan waktu 3 hari 2 malam didaerah gili Lombok. JIka anda yang ingin merasakan sensasi pantai, dan laut, paket trip ini menjadi solusi yang tepat.</p>\r\n\r\n<hr />\r\n<p><strong>Rencana Perjalanan :</strong></p>\r\n\r\n<p>Day 1:</p>\r\n\r\n<ul>\r\n	<li>Penjemputan di titik jemput</li>\r\n	<li>Desa Sukarare</li>\r\n	<li>Desa Sade</li>\r\n	<li>Pantai Kuta&nbsp;</li>\r\n	<li>Bukit Merese (Pilihan 1)</li>\r\n	<li>Pantai Tanjung Aan (Pilihan 1)</li>\r\n	<li>Pantai Mawun (Pilihan 2)</li>\r\n	<li>Pantai Selong Belanak (Pilihan2)</li>\r\n</ul>\r\n\r\n<p>Day 2:</p>\r\n\r\n<ul>\r\n	<li>Villa Hantu</li>\r\n	<li>Bukit Malimbu&nbsp;</li>\r\n	<li>Bukit Malaka&nbsp;</li>\r\n	<li>Bukit Kecinan&nbsp;</li>\r\n	<li>Gili Air, Meno, dan Trawangan (Snorkeling)</li>\r\n</ul>\r\n\r\n<p>Day 3:</p>\r\n\r\n<ul>\r\n	<li>Souvenir Center</li>\r\n	<li>Islamic Centre NTB</li>\r\n	<li>Antar ke bandara atau hotel</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Paket ini memiliki include dan exclude tersendiri.</p>\r\n\r\n<p>Include :</p>\r\n\r\n<ul>\r\n	<li>Mobil + Driver</li>\r\n	<li>Tour Guide</li>\r\n	<li>Perlengkapan camping</li>\r\n	<li>Perlengkapan masak</li>\r\n	<li>Tiket petik strawberry</li>\r\n	<li>Kopi</li>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Parkir</li>\r\n</ul>\r\n\r\n<p>Exclude :</p>\r\n\r\n<ul>\r\n	<li>Makanan ringan</li>\r\n	<li>Tipping untuk tour guide</li>\r\n	<li>Kebutuhan pribadi</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>Persediaan:</strong></p>\r\n\r\n<ul>\r\n	<li>Harga sesuai dengan hotel yang dipilih dan harga diatas adalah per orang.</li>\r\n	<li>Harga dapat berubah sewaktu-waktu mengikuti season (LS/HS/PS)</li>\r\n	<li>Ada biaya tambahan untuk upgrade kamar.</li>\r\n	<li>Jika jumlah peserta ganjil, maka 1 peserta akan menggunakan extra bed.<br />\r\n	Contoh :<br />\r\n	3 peserta mendapatkan 1 kamar dengan extra bed<br />\r\n	5 peserta mendapatkan 2 kamar dengan extra bed<br />\r\n	Trip ini bersifat private, tidak digabung dengan peserta lain.<br />\r\n	Bersyarat: rencana perjalanan di atas bersyarat<br />\r\n	Opsional : Pilih tujuan</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Notes:&nbsp;</p>\r\n\r\n<p>Untuk kedatangan sebaiknya menggunakan pesawat pagi sebelum jam 12. Untuk pulang, sebaiknya menggunakan pesawat pagi setelah jam 12. Sebelum melakukan pemesanan, akan lebih baik untuk berkonsultasi dengan admin.</p>\r\n\r\n<hr />\r\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\r\n\r\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\r\n', '1380000', 'IMG_313.jpeg', 0.71321, '2022-11-15 08:16:53', '2022-12-20 19:44:44'),
(20103, 1, '1 Hari di Gili Kondo', '<p>Kami menyediakan tour dengan waktu singkat didaerah gili Kondo. JIka anda yang ingin merasakan sensasi pantai, dan laut, paket trip ini menjadi solusi yang tepat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p>Paket ini memiliki include dan exclude tersendiri.</p>\r\n\r\n<p>Include :</p>\r\n\r\n<ul>\r\n	<li>Mobil + Driver</li>\r\n	<li>Tour Guide</li>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Parkir</li>\r\n	<li>Penjemputan di Hotel atau Bandara</li>\r\n	<li>Gili kondo Harbor</li>\r\n	<li>Gili Bidara (snorkling)</li>\r\n	<li>Gili Petagan (snorkling)</li>\r\n	<li>Gili Pasir</li>\r\n	<li>Gili Kondo (snorkling)</li>\r\n	<li>Kembali Harbor</li>\r\n	<li>Antar ke Hotel</li>\r\n</ul>\r\n\r\n<p>Exclude :</p>\r\n\r\n<ul>\r\n	<li>Makanan ringan</li>\r\n	<li>Tipping untuk tour guide</li>\r\n	<li>Kebutuhan pribadi</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>Persediaan:</strong></p>\r\n\r\n<ul>\r\n	<li>Harga sesuai dengan hotel yang dipilih dan harga diatas adalah per orang.</li>\r\n	<li>Harga dapat berubah sewaktu-waktu mengikuti season (LS/HS/PS)</li>\r\n	<li>Ada biaya tambahan untuk upgrade kamar.</li>\r\n	<li>Jika jumlah peserta ganjil, maka 1 peserta akan menggunakan extra bed.<br />\r\n	Contoh :<br />\r\n	3 peserta mendapatkan 1 kamar dengan extra bed<br />\r\n	5 peserta mendapatkan 2 kamar dengan extra bed<br />\r\n	Trip ini bersifat private, tidak digabung dengan peserta lain.<br />\r\n	Bersyarat: rencana perjalanan di atas bersyarat<br />\r\n	Opsional : Pilih tujuan</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><img alt=\"\" src=\"https://horizontourtravel.com/wp-content/uploads/2022/10/Gili-Kondo-Gili-Bidara-and-Gili-Petagan-Island-Hopping-Trip-from-Lombok.jpg\" style=\"height:158px; width:300px\" />&nbsp;<img alt=\"\" src=\"https://horizontourtravel.com/wp-content/uploads/2022/07/gili-nanggu.jpg\" style=\"height:158px; width:211px\" /></p>\r\n\r\n<hr />\r\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\r\n\r\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\r\n', '855000', 'gili kondo 1.jpg', 0.669746, '2022-11-15 08:38:15', '2022-12-20 19:44:44'),
(20104, 1, '1 Hari di Mandalika', '<p>Cukup hanya satu hari anda bisa menjelajahi daerah ekonomi khusus mandalika, dengan mengunjungi tempat-tempat yang menjadi favorit wisatawan</p>\r\n\r\n<p>Mandalika merupakan daerah pesisir pulau Lombok, Mandalika menyimpan segudang keindahan alam dengan hamaparan pasir putih yang sangat indah di semua pantainya. Cukup hanya satu hari anda bisa menjelajahi daerah ekonomi khusus mandalika, dengan mengunjungi tempat-tempat yang menjadi favorit wisatawan, seperti pantai Tanjung Aan, Bukit Merese, Pantai Kuta, Bukit Seger,&nbsp; Pantai Selong Belanak, dan tentunya Sirkuit Mandalika. Tidak hanya sampai disitu di paket trip explore mandalika ini kami akan mengajak anda untuk belajar sejarah suku Sasak di desa Sade dan Desa Sukarara.</p>\r\n\r\n<hr />\r\n<p><strong>Rencana Perjalanan:</strong></p>\r\n\r\n<ul>\r\n	<li>Penjemputan bandara/hotel ( max jam 9.00 wita )</li>\r\n	<li>Menuju desa Sukarara&nbsp;</li>\r\n	<li>Makan siang</li>\r\n	<li>Menuju Desa Sade</li>\r\n	<li>Menuju pantai Kuta Mandalika&nbsp;</li>\r\n	<li>Bukit Seger&nbsp;</li>\r\n	<li>Sirkuit Mandalika</li>\r\n	<li>Bukit Merese dan Pantai Tanjung Aan</li>\r\n	<li>Makan malam&nbsp;</li>\r\n	<li>Kembali ke Hotel</li>\r\n	<li>Sayonara see you next trip</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>Notes:</strong></p>\r\n\r\n<ul>\r\n	<li>Premium dokumentasi with drone dan kamera DSLR tambahan biaya 600.000*</li>\r\n	<li>Free premium dokumentasi booking diatas 9 paket&nbsp;</li>\r\n	<li>Start trip max jam 9.00 Witan&nbsp;&nbsp;</li>\r\n	<li>Rescedule maksimal&nbsp; konfirmasi H-3 trip*</li>\r\n	<li>Anak &ndash; anak usia di bawah 6 th free&nbsp;</li>\r\n	<li>English tour guide tambahan biaya 450.000*</li>\r\n</ul>\r\n\r\n<p>*Konfirmasi kepada admin melalui whatsapp</p>\r\n\r\n<hr />\r\n<p><img alt=\"\" src=\"https://horizontourtravel.com/wp-content/uploads/2022/07/pantai-Tanjung-Aan.jpg\" style=\"height:158px; width:223px\" />&nbsp;<img alt=\"\" src=\"https://horizontourtravel.com/wp-content/uploads/2022/07/bukit-merese.jpg\" style=\"height:158px; width:281px\" />&nbsp;<img alt=\"\" src=\"https://horizontourtravel.com/wp-content/uploads/2022/07/bukit-merese.jpg\" style=\"height:158px; width:281px\" /></p>\r\n\r\n<hr />\r\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\r\n\r\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\r\n', '450000', 'Bukit Seger (3).JPG', 0.745682, '2022-11-15 09:07:23', '2022-12-20 19:44:44'),
(20105, 3, 'Trek to Pergasingan Hill[Harian]', '<p>Bukit Pergasingan terletak di desa Sembalun, Lombok Timur, dengan ketinggian 1806 mdpl, bukit Pergasingan menawarkan suasana pendakian yang tidak kalah menyenangkan dari bukit atau gunung lain yang ada di Lombok, dari atas bukit Anda dapat menikmati suasana di atas mendung, melintasi persawahan desa Sembalun dan Gunung Rinjani yang gagah, sunset disini tidak kalah indahnya dengan tempat lain.</p>\r\n\r\n<hr />\r\n<ul>\r\n	<li>Penjemputan &ndash; Desa Sembalun &ndash; Puncak Pergasingan</li>\r\n	<li>Penjemputan Anda di hotel atau pelabuhan/bandara di Lombok pada pukul 6</li>\r\n	<li>Kami mulai trekking maksimal jam 10</li>\r\n	<li>Kami akan mendapatkan puncak setelah 3 jam trekking</li>\r\n	<li>Nikmati waktu di atas sambil makan buah dan minuman segar</li>\r\n	<li>Setelah 1 jam di puncak kemudian bersiap untuk turun ke Desa Sembalun</li>\r\n	<li>Mentransfer Anda ke tujuan berikutnya.</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>HARGA SUDAH TERMASUK HARGA TREKKING RINJANI :</p>\r\n\r\n<ul>\r\n	<li>Menjemput Anda pada hari 0 dan mentransfer Anda setelah perjalanan Selesai,</li>\r\n	<li>Panduan Pendakian</li>\r\n	<li>Buah segar</li>\r\n	<li>Konsumsi air setiap hari dari air minum kemasan yang aman</li>\r\n	<li>Biaya masuk</li>\r\n</ul>\r\n\r\n<p>HARGA TIDAK TERMASUK HARGA TREKKING RINJANI:</p>\r\n\r\n<ul>\r\n	<li>Sepatu trekking</li>\r\n	<li>Makan siang</li>\r\n	<li>Jaket trekking</li>\r\n	<li>Pesawat tiket</li>\r\n	<li>Celana/celana panjang</li>\r\n	<li>Tip untuk guide dan porter</li>\r\n</ul>\r\n\r\n<hr />\r\n<ul>\r\n	<li>Pendakian ini cocok untuk pemula dan anak-anak</li>\r\n	<li>Cocok untuk anda yang tidak lama berada di lombok tapi ingin merasakan pendakian</li>\r\n	<li>Harganya tergantung dimana meeting pointnya</li>\r\n</ul>\r\n\r\n<hr />\r\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\r\n\r\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\r\n', '998000', 'Salinan-Pergasingan-54.jpg', 0.655093, '2022-11-21 03:53:50', '2022-12-20 19:44:44'),
(20114, 4, 'Trekking [Rinjani to Sangkareang] 2 hari 1 malam', '<p>Paket Pendakian Baru Trekking Rinjani ke tepi Kawah Senaru dan Puncak ke-2 gunung sangkareang 3.126 mdpl selama 2 hari 1 malam dimulai dari desa Senaru ke tepi kawah, puncak ke-2 (Gunung Sangkareang) dan kembali ke desa Senaru keesokan harinya.</p>\r\n\r\n<p>Program ini cocok untuk pendaki pemula maupun bagi anda yang ingin menikmati keindahan pemandangan dari bibir kawah Senaru dan 2nd Summit.</p>\r\n\r\n<hr />\r\n<p>Hari Kedatangan :</p>\r\n\r\n<p>Kami akan menjemput Anda di bandara Lombok atau tempat lain di pulau Lombok dan mengantar Anda ke hotel di Senaru. Temui Pemandu trekking Anda akan memberikan panduan untuk lebih mempersiapkan Anda dalam perjalanan.</p>\r\n\r\n<p>Hari Pertama:</p>\r\n\r\n<p>Bangun jam 6:30 pagi dan sarapan. Setelah itu kita jalan kaki 10 menit ke Rinjani Trek Center Senaru untuk registrasi.<br />\r\nTrekking Rinjani dimulai dari Rinjani Trek Center Senaru sekitar pukul 08:00, mulai berjalan melalui hutan tropis yang lebat kaya akan flora, burung, dan berbagai jenis kupu-kupu. Berhentilah sejenak di Pos 2 Halte SATAS Montong (1.500 m) untuk minum teh dan biskuit. Setelah istirahat lanjutkan trekking selama 2 jam menuju Pos 3 Mondokan Lolak (2.000 m) untuk istirahat dan makan siang.<br />\r\nSetelah makan siang kita akan langsung meninggalkan Pos 3 dan menuju bibir kawah Senaru (2641m) selama 2 jam. Kawah Senaru memiliki pemandangan paling spektakuler setelah puncaknya. Kita akan menikmati matahari terbenam yang luar biasa di atas Gunung Agung di Bali dan asap dari gunung berapi baru di tepi danau dan berkemah di sini untuk bermalam.</p>\r\n\r\n<p>Hari Kedua:</p>\r\n\r\n<p>Bangun jam 4.00 pagi dan setelah sarapan ringan dengan minuman panas dan roti panggang kita akan mendaki ke puncak ke-2 3.12 mdpl. saat Sunrise kita akan tiba di puncak dan menikmati sunrise di atas puncak Gunung Rinjani. Setelah puas menikmati panorama yang indah kita akan kembali ke bumi perkemahan untuk sarapan dan istirahat.<br />\r\nSetelah sarapan pagi dan istirahat, kita akan meninggalkan Gunung Rinjani untuk turun ke desa Senaru melewati hutan hujan. Jika kita beruntung, kita bisa melihat monyet hitam yang langka. Dibutuhkan 5 jam dan kami akan makan siang di sepanjang jalan. Tiba di desa Senaru (601 m) Mobil akan membawa Anda ke tujuan selanjutnya.</p>\r\n\r\n<hr />\r\n<p>Harga Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Ambil dan transfer</li>\r\n	<li>Penginapan malam di Senaru</li>\r\n	<li>Pemandu trekking Porter</li>\r\n	<li>Makanan dan minuman,</li>\r\n	<li>Tenda, tenda toilet, kantong tidur, dan kasur</li>\r\n	<li>Biaya masuk taman nasional Rp300.000/trekker/trip (Rp150.000/orang/hari)</li>\r\n	<li>Pertolongan pertama pada kecelakaan</li>\r\n	<li>Asuransi perjalanan masuk</li>\r\n	<li>Menjemput Anda pada hari 0 dan mentransfer Anda setelah perjalanan Selesai,</li>\r\n	<li>Pemandu Trekking Rinjani</li>\r\n	<li>Porter untuk membawa perlengkapan logistik dan trek (tidak termasuk untuk membawa tas pribadi Anda)</li>\r\n	<li>Makan full board selama program perjalanan; sarapan, makan siang, makan malam, kopi atau teh, cokelat panas, makanan ringan, buah-buahan segar</li>\r\n	<li>Semua peralatan berkemah; tenda berkemah ukuran ganda, kasur, kantong tidur, tenda toilet, kursi berkemah.</li>\r\n	<li>Konsumsi air setiap hari dari air minum kemasan yang aman</li>\r\n	<li>Biaya masuk</li>\r\n	<li>Akomodasi malam di senaru atau Sembalun sebelum perjalanan.</li>\r\n</ul>\r\n\r\n<p><br />\r\nHarga Tidak Termasuk:</p>\r\n\r\n<ul>\r\n	<li>Head lamp/obor tangan</li>\r\n	<li>Paket tas kecil / paket harian</li>\r\n	<li>Sepatu trekking</li>\r\n	<li>Jaket trekking</li>\r\n	<li>Pesawat tiket</li>\r\n	<li>Porter tambahan untuk bagasi sendiri (22$/hari)</li>\r\n	<li>Celana/celana panjang</li>\r\n	<li>Tip untuk guide dan porter</li>\r\n</ul>\r\n\r\n<hr />\r\n<p><strong>CATATAN !!</strong><br />\r\nKetika Anda memesan perjalanan Anda melalui Horizon Tour and Travel, Anda akan diberikan Pemandu Gunung Berbahasa Inggris dan porter lokal dan sebagian besar kebutuhan berkemah seperti tenda, kantong tidur, kasur, perlengkapan memasak. dll.</p>\r\n\r\n<p>Namun, pemandu gunung dan porter kami hanya bertugas untuk membawa semua peralatan berkemah (tenda, kantong tidur, matras, dll), peralatan masak dan logistik yang diperlukan selama program (makanan, air, makanan ringan, buah-buahan, minuman ringan, dll) mereka tidak bertanggung jawab untuk membawa barang-barang pribadi Anda.</p>\r\n\r\n<hr />\r\n<p>Silahkan pesan paket tour mu sekarang dengan cara login terlebih dahulu kemudian isi form order yang ada di samping kanan.&nbsp;</p>\r\n\r\n<p>Jika ada pertanyaan, hubungi kami melalui WhatsApp kami yang berada di pojok kanan bawah.</p>\r\n', '2100000', 'rinjani.jpg', 0, '2022-12-20 19:40:16', '2022-12-20 19:43:02');

--
-- Triggers `produk`
--
DELIMITER $$
CREATE TRIGGER `tambah rating` AFTER INSERT ON `produk` FOR EACH ROW BEGIN
	INSERT INTO rating VALUES (null, null, NEW.id_produk, 0, null, NEW.created_at, NEW.updated_at);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id_rating` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `id_produk` int(11) NOT NULL,
  `nilai_rating` int(11) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL,
  `created_rating` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_rating` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id_rating`, `id`, `id_produk`, `nilai_rating`, `komentar`, `created_rating`, `updated_rating`) VALUES
(30132, 10102, 20101, 3, 'Memuaskan menurut saya, namun harganya cukup mahal hanya untuk camping', '2022-12-15 12:21:27', '2022-12-16 12:41:55'),
(30133, 10103, 20101, 4, 'tour guidenya ramah dan baik banget. perjalanan juga menyenangkan', '2022-12-15 12:21:27', '2022-12-16 12:40:27'),
(30134, 10105, 20101, 5, 'GA NYESEL TOUR DISINI!! Makasih horizon', '2022-12-15 12:21:27', '2022-12-16 12:41:10'),
(30135, 10103, 20102, 3, NULL, '2022-12-15 12:22:15', '2022-12-15 12:22:15'),
(30136, 10101, 20103, 3, NULL, '2022-12-15 12:23:11', '2022-12-15 12:23:11'),
(30137, 10102, 20103, 5, NULL, '2022-12-15 12:23:11', '2022-12-15 12:23:11'),
(30138, 10104, 20103, 4, NULL, '2022-12-15 12:23:11', '2022-12-15 12:23:11'),
(30139, 10104, 20104, 3, NULL, '2022-12-15 12:23:38', '2022-12-15 12:23:38'),
(30140, 10101, 20105, 4, NULL, '2022-12-15 12:24:28', '2022-12-15 12:24:28'),
(30141, 10103, 20105, 4, NULL, '2022-12-15 12:24:28', '2022-12-15 12:24:28'),
(30142, 10105, 20105, 4, NULL, '2022-12-15 12:24:28', '2022-12-15 12:24:28'),
(30147, 4, 20114, NULL, NULL, '2022-12-21 01:44:58', '2022-12-21 01:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_biaya` int(11) NOT NULL,
  `tanggal_tour` date NOT NULL,
  `jenis_transaksi` varchar(255) NOT NULL,
  `status_transaksi` varchar(255) NOT NULL,
  `bukti_transaksi` varchar(255) NOT NULL,
  `status_tour` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `birthday`, `phone_number`, `instagram`, `country`, `city`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'retnoekayanti15@gmail.com', 'reykayanti', 'Retno Ekayanti', NULL, '6289650017574', 'reykayanti', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-11 10:05:16', '2022-11-11 10:05:16', NULL),
(3, 'yanuarmufid@gmail.com', 'yanuar', NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$52pMFoIq6LV5YDLnW7M6xOxl5oFU1fxMWLb.k6CnlVX51Pd.AYDkC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-11 23:36:23', '2022-11-11 23:36:23', NULL),
(4, 'admin@gmail.com', 'admin', 'Adminila', '2001-03-15', '6289650017574', 'adminila_', 'Indonesia', 'Depok', 'default.png', '$2y$10$ZgbReWD18hilduLXuPN9DexZ3VHWd1fiIS0oaEsie6FR6WkIAVHGG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-12 01:34:18', '2022-11-12 01:34:18', NULL),
(10101, 'user1@example.com', 'usera', 'User Alfa', '1996-12-01', '6289650017574', 'useralfa12', 'Indonesia', 'Bogor', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:55:36', '2022-11-21 03:55:36', NULL),
(10102, 'user2@example.com', 'userb', 'User Bravo', NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$lk/KmFVyROM8ITG87h6NSO7O0RH9rJLo21KD1veDhlSCY.83dK2Sa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:56:40', '2022-11-21 03:56:40', NULL),
(10103, 'user3@example.com', 'userc', 'User Charlie', NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$lk/KmFVyROM8ITG87h6NSO7O0RH9rJLo21KD1veDhlSCY.83dK2Sa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:56:40', '2022-11-21 03:56:40', NULL),
(10104, 'user4@example.com', 'userd', 'User Delta', NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$lk/KmFVyROM8ITG87h6NSO7O0RH9rJLo21KD1veDhlSCY.83dK2Sa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:57:10', '2022-11-21 03:57:10', NULL),
(10105, 'user5@example.com', 'usere', 'User Echo', NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$lk/KmFVyROM8ITG87h6NSO7O0RH9rJLo21KD1veDhlSCY.83dK2Sa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:57:10', '2022-11-21 03:57:10', NULL),
(10106, 'user6@example.com', 'user6', NULL, NULL, NULL, NULL, NULL, NULL, 'default.png', '$2y$10$lk/KmFVyROM8ITG87h6NSO7O0RH9rJLo21KD1veDhlSCY.83dK2Sa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-11-21 03:57:10', '2022-11-21 03:57:10', NULL),
(10107, 'kenariput12@gmail.com', 'kenari12', 'kenari putra', '1998-01-14', '6289650017574', 'kenari12', 'Indonesia', 'Mataram', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10108, 'himawan8@gmail.com', 'himawan88', 'himawan maryadi', '1988-12-23', '6289622341143', 'himawan88', 'Indonesia', 'Mataram', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10109, 'andriani64@gmail.com', 'yancean12', 'yance andriani', '1998-04-29', '6289600129323', 'andriani64', 'Indonesia', 'Jambi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10110, 'mahdisitorus@gmail.com', 'mahdi667', 'mahdi sitorus', '1999-01-03', '6281338294001', 'mahdi67', 'Indonesia', 'Pontianak', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10111, 'cahfirman@gmail.com', 'cahyanto22', 'cahyanto firmansyah', '1996-06-13', '6282338947957', 'cahyanto22', 'Indonesia', 'Cilacap', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10112, 'rizkithamrin123@gmail.com', 'thamrinaja', 'rizki thamrin', '1993-09-19', '6282394756553', 'thamrinaja2', 'Indonesia', 'Tegal', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10113, 'ekawinarsih@gmail.com', 'ekawi25', 'eka winarsih', '1989-02-15', '6282988402431', 'ekawinarsih', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10114, 'wasisnain21@gmail.com', 'wasisnain', 'wasis waninggolan', '1999-01-27', '6285993485777', 'wasisnain', 'Indonesia', 'Bogor', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10115, 'gambira10waluyo@gmail.com', 'gambira10waluyo', 'Gambira Waluyo', '1994-01-07', '628243033659', 'gambira10waluyo', 'Indonesia', 'Prabumulih', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10116, 'dipanagunarto@gmail.com', 'dipanugunarto', 'Dipa Gunarto', '1994-02-12', '6241966973987', 'dipanugunarto', 'Indonesia', 'Surakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10117, 'amipalasstri2020@gmail.com', 'ami_palas', 'Ami Palastri', '1994-07-21', '6241966973987', 'ami_palas', 'Indonesia', 'Pontianak', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10118, 'rendymahendra40@gmail.com', 'rendymahendra40', 'Rendy Mahendra', '1994-07-21', '626444488842', 'rendymahendra40', 'Indonesia', 'Padang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10119, 'devilestaris2001@gmail.com', 'devilestaris', 'Devi Lestari', '2000-01-01', '6248981584657', 'devilestaris', 'Indonesia', 'Surabaya', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10120, 'yulianakamilalestari2010@gmail.com', 'yulianakamilalest', 'Yuliana Kamila Lestari', '1999-02-14', '629383607373', 'yulianakamilalest', 'Indonesia', 'Bandar Lampung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10121, 'rahmitari10pertiwi@gmail.com', 'rahmitari10pertiwi', 'Rahmi Tari Pertiwi', '1994-07-21', '626444488842', 'rahmitari10pertiwi', 'Indonesia', 'Sorong', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10122, 'mutiaharyanti5@gmail.com', 'mutiaharyanti5', 'Mutia Haryanti', '1897-05-05', '6248981584657', 'mutiaharyanti5', 'Indonesia', 'Medan', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10123, 'tinaendahpadmasari1703@gmail.com', 'tinaendahpadmasari1703', 'Tina Endah Padmasari', '1999-03-17', '628724870223', 'tinaendahpadmasari1703', 'Indonesia', 'Mojo Kerto', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10124, 'wardaya298@gmail.com', 'wardaya298', 'Wardaya Arta Irawan', '1999-01-03', '6281338294001', 'wardaya298', 'Indonesia', 'Bitung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10125, 'maimunahpadmi@gmail.com', 'maimunahpadmi', 'Padmi Maimunah Rahmawati', '1988-12-23', '6289622341143', 'maimunahpadmi', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10126, 'narpatimaryanto@gmail.com', 'narpatimaryanto', 'Maryanto Narpati', '1998-04-29', '6289600129323', 'narpatimaryanto', 'Indonesia', 'Pasuruan', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10127, 'ekamadriayahhh@gmail.com', 'ekamadriayahhh', 'Eka Mardhiyah', '1999-01-03', '6281338294001', 'ekamadriayahhh', 'Indonesia', 'Padangsidempuan', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10128, 'bagustasdik_kusumo@gmail.com', 'bagustasdik_kusumo', 'Bagus Tasdik Kusumo', '1996-06-13', '6282338947957', 'bagustasdik_kusumo', 'Indonesia', 'Cilacap', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10129, 'hildamardhiyah@gmail.com', 'hildamardhiyah', 'Hilda Mardhiyah', '1999-01-27', '62863830424', 'hildamardhiyah', 'Indonesia', 'Prabumulih', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10130, 'sucilailasari14@gmail.com', 'sucilailasari14', 'Suci Lailasari', '1994-01-14', '628243033659', 'sucilailasari14', 'Indonesia', 'Tebing Tinggi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10131, 'hestihes@gmail.com', 'hestihes', 'Hesti Kusmawati', '1997-07-12', '629865524464', 'hestihes', 'Indonesia', 'Parepare', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10132, 'darunapurwaditoro@gmail.com', 'darunapurwaditoro', 'Daruna Purwadi Firgantoro', '1994-07-21', '6241966973987', 'darunapurwaditoro', 'Indonesia', 'Pekalongan', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10133, 'karimahhast@gmail.com', 'karimahhast', 'Karimah Astuti', '1994-07-21', '626444488842', 'karimahhast', 'Indonesia', 'Bandung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10134, 'rafidjarwi10@gmail.com', 'rafidjarwi10', 'Rafid Jarwi Gunawan', '1994-07-21', '6241966973987', 'rafidjarwi10', 'Indonesia', 'Pekanbaru', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10135, 'dindasuryatmi@gmail.com', 'dindasuryatmi', 'Dinda Suryatmi', '1998-07-16', '627978999752', 'dindasuryatmi', 'Indonesia', 'Tanggerang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10136, 'puspaamel@gmail.com', 'puspaamel', 'Puspa Amelia Namaga', '1998-07-16', '627978999752', 'puspaamel', 'Indonesia', 'Kediri', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10137, 'makaramak@gmail.com', 'makaramak', 'Makara Mansur', '1998-07-16', '627994799752', 'makaramak', 'Indonesia', 'Dumai', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10138, 'dianmardiyah20@gmail.com', 'dianmardiyah20', 'Dian Mardhiyah', '1998-07-16', '627978999752', 'dianmardiyah20', 'Indonesia', 'Tebing Tinggi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10139, 'elijuliajul2@gmail.com', 'elijuliajul2', 'Eli Julia', '1998-07-16', '627994790062', 'elijuliajul2', 'Indonesia', 'Batam', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10140, 'nalarmul@gmail.com', 'nalarmul', 'Nalar Mulyono Ardianto', '1998-07-16', '627987469752', 'nalarmul', 'Indonesia', 'Tomohon', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10141, 'cecep_gading_ram@gmail.com', 'cecep_gading_ram', 'Cecep Gading Ramadan', '1998-07-15', '68323464025', 'cecep_gading_ram', 'Indonesia', 'Cilegon', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10142, 'oktokariman15@gmail.com', 'oktokariman15', 'Okto Kariman', '1998-07-15', '68323464025', 'oktokariman15', 'Indonesia', 'Bandung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10143, 'cintawastuti_h@gmail.com', 'cintawastuti_h', 'Cinta Wastuti', '1998-07-16', '627987469752', 'cintawastuti_h', 'Indonesia', 'Subulussalam', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10144, 'juliharyanti2@gmail.com', 'juliharyanti2', 'Juli Haryanti', '1998-02-12', '68300064025', 'juliharyanti2', 'Indonesia', 'Sibolga', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10145, 'nadinenad@gmail.com', 'nadinenad', 'Nadine Rahimah', '1998-07-15', '68323464025', 'nadinenad', 'Indonesia', 'Banjar', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10146, 'agusnardi@gmail.com', 'agusnardi', 'Agus Nardi', '1998-07-16', '627987469752', 'agusnardi', 'Indonesia', 'Surakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10147, 'tariyunitaast@gmail.com', 'tariyunitaast', 'Tari Yunita Astuti', '1998-02-12', '68300064025', 'tariyunitaast', 'Indonesia', 'Palembang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10148, 'lasmonopraset_yya@gmail.com', 'lasmonopraset_yya', 'Lasmono Prasetya', '1998-07-15', '68323464025', 'lasmonopraset_yya', 'Indonesia', 'Dumai', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10149, 'hamilmuhhalim@gmail.com', 'hamilmuhhalim', 'Halim Muhammad', '1998-07-16', '627900369752', 'hamilmuhhalim', 'Indonesia', 'Tanjungbalai', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10150, 'yitnaprayitna@gmail.com', 'yitnaprayitna', 'Prayitna', '1998-02-12', '683009384025', 'yitnaprayitna', 'Indonesia', 'Batam', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10151, 'indrahakimal@gmail.com', 'indrahakimal', 'Indra Hakim Al', '1998-07-15', '68323464025', 'indrahakimal', 'Indonesia', 'Sungai Penuh', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10152, 'nilammuhmmd@gmail.com', 'nilammuhmmd', 'Nilam Muhammad', '1998-07-16', '627900369752', 'nilammuhmmd', 'Indonesia', 'Malang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10153, 'mumpuni_murti28@gmail.com', 'mumpuni_murti28', 'Mumpuni Harimurti', '1980-02-03', '683009384025', 'mumpuni_murti28', 'Indonesia', 'Binjai', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10154, 'alambana@gmail.com', 'alambana', 'Alambana Manullang', '1980-02-03', '683009384025', 'alambana', 'Indonesia', 'Sabang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10155, 'aisyahharnisa@gmail.com', 'aisyahharnisa', 'Aisyah Harnisa Tara', '1980-02-03', '683009384025', 'aisyahharnisa', 'Indonesia', 'Bali', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10156, 'dadap_wac@gmail.com', 'dadap_wac', 'Dadap Wacana', '1998-07-15', '68323464025', 'dadap_wac', 'Indonesia', 'Surabaya', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10157, 'jayengprasaas@gmail.com', 'jayengprasaas', 'Jayeng Prasasta', '2001-07-16', '627900369752', 'jayengprasaas', 'Indonesia', 'Palu', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10158, 'ejasanto@gmail.com', 'ejasanto', 'Eja Santoso', '1980-02-03', '683009384025', 'ejasanto', 'Indonesia', 'Pekanbatu', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10159, 'gentarestu00@gmail.com', 'gentarestu00', 'Genta Restu Pudjiastuti', '1980-02-03', '683009384025', 'gentarestu00', 'Indonesia', 'Yogjakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10160, 'diannovitasari50@gmail.com', 'diannovitasari50', 'Dian Novitasari', '1980-02-03', '628072386907', 'diannovitasari50', 'Indonesia', 'Yogjakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10161, 'kamidinhutagalungkam@gmail.com', 'kamidinhutagalungkam', 'Kamidin Hutagalung ', '1890-07-15', '68311264025', 'kamidinhutagalungkam', 'Indonesia', 'Palangka Raya', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10162, 'bahuwarnatamba@gmail.com', 'bahuwarnatamba', 'Bahuwarna Tamba', '2001-07-16', '627900369752', 'bahuwarnatamba', 'Indonesia', 'Ambon', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10175, 'clara_cintya@gmail.com', 'clara_cintya', 'Clara cintya', '1980-02-03', '683009321025', 'clara_cintya', 'Indonesia', 'Bandung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10176, 'hafshah_devisuryatmi@gmail.com', 'hafshah_devisuryatmi', 'Hafshah Devi Suryatmi', '1980-02-03', '683009384025', 'hafshah_devisuryatmi', 'Indonesia', 'Langsa', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10177, 'sitifaf0019@gmail.com', 'sitiafaf0019', 'Siti Safitri', '1980-02-03', '683009384025', 'sitifaf0019', 'Indonesia', 'Binjai', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10178, 'diannovitassaari50@gmail.com', 'diannovaitasari50', 'Dian Novitasari', '1980-02-03', '628072386907', 'diannovitasari50', 'Indonesia', 'Yogjakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10179, 'anastasiaa_1@gmail.com', 'anastaasia_1', 'Anastasia Riyanti ', '2003-04-28', '68311264025', 'anastasia_1', 'Indonesia', 'Sabang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10180, 'naataharaa@gmail.com', 'naataahara', 'Naa Tahara', '2001-07-16', '627900369752', 'naatahara', 'Indonesia', 'Cikarang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10181, 'fathurekxx@gmail.com', 'fathurekxx', 'Fathur Eka', '1980-02-03', '683009384025', 'fathurekxx', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10182, 'pertiwisiti23@gmail.com', 'pertiwisiti23', 'Siti Pertiwi', '1980-02-03', '683009384025', 'pertiwisiti23', 'Indonesia', 'Bukittinggi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10183, 'arrayamiftaaaa@gmail.com', 'arrayamiftaaaa', 'Arraya Mifta', '1980-02-03', '683009384025', 'arrayamiftaaaa', 'Indonesia', 'Bekasi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10184, 'mhmddluthfi@gmail.com', 'mhmddluthfi', 'Muhammad Luthfi', '1980-02-03', '683009384025', 'mhmddluthfi', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10185, 'iqblsprint@gmail.com', 'iqblsprint', 'Iqbal Suprtianto', '2002-06-15', '68323464025', 'iqblsprint', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10186, 'lalunac@gmail.com', 'lalunac', 'Laluna', '2001-07-16', '627900472752', 'lalunac', 'Indonesia', 'Palu', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10187, 'ayuamnd_manda@gmail.com', 'ayuamnd_manda', 'Ayu Amanda', '1980-02-03', '683009384025', 'ayuamnd_manda', 'Indonesia', 'Malang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10188, 'Farhanaddt@gmail.com', 'Farhanaddt', 'Farhan Aditya', '1980-02-03', '683009384025', 'Farhanaddt', 'Indonesia', 'Kemang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10189, 'gorilala@gmail.com', 'gorilala', 'Gori', '1980-02-03', '683009384025', 'gorilala', 'Indonesia', 'Cikarang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10190, 'dianas@gmail.com', 'dianas', 'Dian Astapra', '1980-02-03', '683409384115', 'dianas', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10191, 'haikal_fikkih20@gmail.com', 'haikal_fikkih20', 'Haikal Fikkih', '2002-11-20', '68323464025', 'haikal_fikkih20', 'Indonesia', 'Tanggerang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10192, 'gibranyan@gmail.com', 'gibranyan', 'Gibran Yanuar', '2001-07-16', '627900472752', 'gibranyan', 'Indonesia', 'Serang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10193, 'wahyuadsant@gmail.com', 'wahyuadsant', 'Wahyu Adi Santoso', '1980-02-03', '683009384025', 'wahyuadsant', 'Indonesia', 'Bogor', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10194, 'kayzasr@gmail.com', 'kayzasr', 'Kayza', '2000-02-03', '683009384025', 'kayzasr', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10195, 'aldoags2@gmail.com', 'aldoags2', 'Aldo Agus', '1999-02-03', '683009384025', 'aldoags2', 'Indonesia', 'Malang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10196, 'galihmuhmmdd_@gmail.com', 'galihmuhmmdd_', 'Galih Muhammad', '2001-02-03', '683409384115', 'galihmuhmmdd_', 'Indonesia', 'Jambi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10197, 'zidan_abrahamm@gmail.com', 'zidan_abrahamm', 'Zidan Abraham', '2002-09-11', '68323464025', 'zidan_abrahamm', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10198, 'ichsansundusichan@gmail.com', 'ichsansundusichan', 'Ichsan Sundusi', '2001-07-16', '627900472752', 'ichsansundusichan', 'Indonesia', 'Bandung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10199, 'difa_putra00@gmail.com', 'difa_putra00', 'Difa Putra', '1980-02-03', '683082214045', 'difa_putra00', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10200, 'andre_ass@gmail.com', 'andre_ass', 'Andreas', '2000-02-03', '683009384025', 'andre_ass', 'Indonesia', 'Yogjakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10201, 'fitafjrr@gmail.com', 'fitafjrr', 'Fita Fajria', '1999-02-03', '683009384025', 'fitafjrr', 'Indonesia', 'Sukabumi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10202, 'muhh_billy23@gmail.com', 'muhh_billy23', 'Muhammad Billy', '2001-02-23', '683409384115', 'muhh_billy23', 'Indonesia', 'Padang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10203, 'nidanisrinaaa@gmail.com', 'nidanisrinaaa', 'Nida Nisrina', '2002-09-11', '68323463372', 'nidanisrinaaa', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10204, 'bintangrflnsyh@gmail.com', 'bintangrflnsyh', 'Bintang Rafliansyah', '2001-07-16', '627900472752', 'bintangrflnsyh', 'Indonesia', 'Bekasi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10205, 'anyamernna@gmail.com', 'anyamernna', 'Anya Meriana', '1996-08-13', '683009384025', 'anyamernna', 'Indonesia', 'Bandar Lampung', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10206, 'intanpuspttw@gmail.com', 'intanpuspttw', 'Intan Puspita', '2000-06-03', '683928384025', 'intanpuspttw', 'Indonesia', 'Mataram', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10207, 'mutiarafajria_@gmail.com', 'mutiarafajria_', 'Mutiara Fajria', '1980-02-19', '683009384025', 'mutiarafajria_', 'Indonesia', 'Blahbatuh', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10208, 'alvarona2022@gmail.com', 'alvarona2022', 'Alva Rona', '2003-10-15', '68323722413', 'alvarona2022', 'Indonesia', 'Malang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10209, 'lalumuhammad291@gmail.com', 'lalumuhammad291', 'Lalu Muhammad', '2001-07-16', '627900369752', 'lalumuhammad291', 'Indonesia', 'Mataram', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10210, 'ahmadnurkhsn@gmail.com', 'ahmadnurkhsn', 'Ahmad Nurkhasan', '1996-08-13', '683009384025', 'ahmadnurkhsn', 'Indonesia', 'Yogyakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10211, 'rinduclay@gmail.com', 'rinduclay', 'Cladenta Rindu', '2000-06-03', '683928384025', 'rinduclay', 'Indonesia', 'Solo', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10212, 'imeldaputri@gmail.com', 'imeldaputri', 'Imelda Putri', '1980-02-19', '683009384025', 'imeldaputri', 'Indonesia', 'Solo', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10213, 'shfxxx@gmail.com', 'shfxxx', 'Shofia Latifah', '2003-08-29', '68323722000', 'shfxxx', 'Indonesia', 'Malang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10214, 'syntabianca@gmail.com', 'syntabianca', 'Synta Bianca', '2001-07-16', '627900369752', 'syntabianca', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10215, 'betabest3@gmail.com', 'betabest3', 'Beta Bestari', '1996-08-13', '683009384025', 'betabest3', 'Indonesia', 'Depok', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10216, 'raihanalfi_@gmail.com', 'raihanalfi_', 'Raihan Alfi', '2000-06-03', '683928384025', 'raihanalfi_', 'Indonesia', 'Jakarta', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10217, 'ibnahmmd@gmail.com', 'ibnahmmd', 'Ibnu Ahmad', '1980-02-19', '683009384025', 'ibnahmmd', 'Indonesia', 'Tanggerang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10218, 'mufidhsm@gmail.com', 'mufidhsm', 'Mufid Hasyim', '2003-08-29', '68323722000', 'mufidhsm', 'Indonesia', 'Semarang', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL),
(10219, 'farelmaulana@gmail.com', 'farelmaulana', 'Farel Maulana', '2001-07-16', '627900369752', 'farelmaulana', 'Indonesia', 'Bekasi', 'default.png', '$2y$10$73s6v4yRBnVu6Th8872Cg.lQBJ39vT.8YkKWPDe7JogW/LGuwPNBy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-12-19 15:02:58', '2022-12-19 15:02:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id_rating`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20115;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id_rating` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30148;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8500400;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10220;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
