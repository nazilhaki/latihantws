-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 04:11 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `id_meja` int(12) NOT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `nomor_hp` varchar(250) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_reservasi` date NOT NULL,
  `total_pembayaran` int(12) NOT NULL,
  `total_sudah_dibayar` int(12) NOT NULL,
  `batas_pembayaran_dp` datetime NOT NULL,
  `status_pembayaran` varchar(250) NOT NULL,
  `bukti_pembayaran` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_detail_menu`, `id_meja`, `nama_pemesan`, `nomor_hp`, `tanggal_pesan`, `tanggal_reservasi`, `total_pembayaran`, `total_sudah_dibayar`, `batas_pembayaran_dp`, `status_pembayaran`, `bukti_pembayaran`) VALUES
(9, 'INV20211015132542', 5, 'Riza Zulfahnur', '0', '2021-10-15 13:25:42', '2021-11-04', 45000, 45000, '2021-10-16 13:25:42', 'Pesanan Selesai', '29102041144725Capture.PNG'),
(10, 'INV20211015133852', 5, 'Yuni Kurnia Taramita', '08512495120', '2021-10-15 13:38:52', '2021-10-23', 56000, 56000, '2021-10-16 13:38:52', 'Pesanan Selesai', '29102041144725Capture.PNG'),
(11, 'INV20211016130044', 5, 'Ardan', '0852981234', '2021-10-16 13:00:44', '2021-10-27', 68000, 68000, '2021-10-17 13:00:44', 'Pesanan Selesai', '29102041444725Capture.PNG'),
(12, 'INV20211027131246', 11, 'Farias', '0812597321', '2021-10-27 13:12:46', '2021-10-29', 120000, 120000, '2021-10-28 13:12:46', 'Pesanan Selesai', '29101041144725Capture.PNG'),
(13, 'INV20211027134031', 4, 'Julpa', '08523712653', '2021-10-27 13:40:31', '2021-10-31', 60000, 60000, '2021-10-28 13:40:31', 'Pesanan Selesai', '29102041144925Capture.PNG'),
(14, 'INV20211029135257', 6, 'yuni', '098767', '2021-10-29 13:52:57', '2021-11-01', 60000, 60000, '2021-10-30 13:52:57', 'Pesanan Selesai', '29102021164419Capture.PNG'),
(15, 'INV20211029200131', 11, 'jejje', '098', '2021-10-28 20:01:31', '2021-11-05', 50000, 0, '2021-10-20 20:01:31', 'Belum Bayar DP', 'Kosong'),
(16, 'INV20211029201010', 12, 'ji', '0987', '2021-10-29 20:10:10', '2021-11-03', 25000, 0, '2021-10-30 20:10:10', 'Belum Bayar DP', 'Kosong'),
(17, 'INV20211101132112', 5, 'James', '08512984921', '2021-11-01 13:21:12', '2021-11-10', 63000, 63000, '2021-11-02 13:21:12', 'Pesanan Selesai', '01112021072201struk.jpg'),
(18, 'INV20211114143545', 5, 'Jean Pierre', '0895606129528', '2021-11-14 14:35:45', '2021-11-22', 65000, 65000, '2021-11-15 14:35:45', 'Pesanan Selesai', '14112021083627example01.png'),
(19, 'INV20211114190627', 5, 'Diego A', '08901235423523', '2021-11-14 19:06:27', '2021-11-18', 56000, 0, '2021-11-15 19:06:27', 'Belum Bayar DP', 'Kosong'),
(20, 'INV20240116101150', 1, 'jhone', '081000111000', '2024-01-16 10:11:50', '2024-01-16', 100000, 0, '2024-01-17 10:11:50', 'Belum Bayar DP', 'Kosong'),
(21, 'INV20240618085801', 11, 'Haqi', '089999999999', '2024-06-18 08:58:01', '2024-06-19', 545000, 545000, '2024-06-19 08:58:01', 'Sudah Bayar DP', '18062024035937struk1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gambar_menu`
--

CREATE TABLE `gambar_menu` (
  `id_gambar` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gambar_menu`
--

INSERT INTO `gambar_menu` (`id_gambar`, `id_menu`, `gambar`) VALUES
(10, 7, '06102021091833Sips-KatieChrist.jpg'),
(12, 7, '06102021091907EsTehSerai-LemongrassIceTea.jpg'),
(14, 16, '06102021092328orange-coconutmilkshake.jpg'),
(16, 16, '06102021092756024b5b71-b655-4e9b-9f7e-fc37ed0eb720.jpg'),
(17, 16, '06102021092845TheBestStrawberryMilkshake-BakingMischief.jpg'),
(19, 12, '06102021093111NasiGoreng(IndonesianFriedRice).jpg'),
(20, 12, '06102021093206BrownRiceNasiGoreng(IndonesianFriedRice)IGeorgieEats.jpg'),
(21, 13, '061020210934115d4481d7-66a4-4e4a-82f6-de49b246e92d.jpg'),
(24, 13, '06102021093658SateKambingYangEmpuk.jpg'),
(27, 1, '12062024165927mie.jpg'),
(28, 2, '12062024170205kentang.jpg'),
(29, 15, '12062024170341fish.jpg'),
(30, 11, '12062024170830fushili.jpg'),
(31, 11, '12062024170837penne.jpg'),
(32, 11, '12062024170843spaghetti.jpg'),
(33, 17, '12062024171447sayap.jpg'),
(34, 7, '12062024171643icetea.jpg'),
(35, 8, '12062024171716lemontea.jpg'),
(36, 18, '12062024171924lemon.jpg'),
(37, 19, '12062024172115americano.jpg'),
(39, 21, '12062024172734estimasi.jpg'),
(40, 21, '12062024172739kopdepan.jpg'),
(41, 21, '12062024172744kop.jpg'),
(42, 22, '12062024172806estimasi.jpg'),
(43, 22, '12062024172814avdepan.jpg'),
(44, 22, '12062024172821avatas.jpg'),
(45, 23, '12062024172900estimasi.jpg'),
(46, 23, '12062024172906matc.jpg'),
(47, 23, '12062024172913matcatas.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `lupa_password`
--

CREATE TABLE `lupa_password` (
  `id_lupa_password` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `pertanyaankeamanan1` varchar(255) NOT NULL,
  `pertanyaankeamanan2` varchar(255) NOT NULL,
  `jawabankeamanan1` varchar(255) NOT NULL,
  `jawabankeamanan2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lupa_password`
--

INSERT INTO `lupa_password` (`id_lupa_password`, `id_pegawai`, `pertanyaankeamanan1`, `pertanyaankeamanan2`, `jawabankeamanan1`, `jawabankeamanan2`) VALUES
(1, 1, 'Berapa angka favorit anda?(Contoh: 99)', 'Siapakah nama hewan peliharaan anda?', '7', 'alfan'),
(2, 3, 'Apa hewan kesayangan anda?', 'Apa cita-cita anda semasa kecil?', 'Harimau Sumatra', 'Progamer');

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `id_meja` int(11) NOT NULL,
  `nomor_meja` varchar(50) NOT NULL,
  `kapasitas_meja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`id_meja`, `nomor_meja`, `kapasitas_meja`) VALUES
(1, '1', 4),
(3, '5', 2),
(4, '3', 2),
(5, '2', 2),
(6, '4', 2),
(8, '6', 4),
(11, '7', 10),
(12, '9', 10);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `detail_menu` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL DEFAULT 'Tersedia',
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `detail_menu`, `kategori`, `stok`, `harga`) VALUES
(1, 'Mie Goreng', 'Indomie goreng', 'Makanan', 'Tersedia', 15000),
(2, 'Fried Fries', 'Kentang Goreng', 'Makanan', 'Tidak Tersedia', 13000),
(7, 'Ice Tea', 'Jasmine, Lychee, Oolong', 'Minuman', 'Tersedia', 8000),
(8, 'Ice Lemon Tea', 'Lemon Tea', 'Minuman', 'Tersedia', 10000),
(11, 'Pasta', 'Dengan aneka pilihan pasta Fushili, Penne, Spaghetti', 'Makanan', 'Tersedia', 25000),
(12, 'Nasi Goreng', 'Jawa, Mawut, Seafood', 'Makanan', 'Tersedia', 25000),
(15, 'Fish n Chips', 'Ikan Dori Fillet disajikan bersama kentang goreng yang gurih', 'Makanan', 'Tersedia', 35000),
(16, 'Milkshake', 'Coklat, Vanila, Greentea, Strawberry', 'Minuman', 'Tersedia', 15000),
(17, 'Chicken Wing', 'Grilled Chicken Wing', 'Makanan', 'Tersedia', 20000),
(18, 'Ice Sparkling Water', 'Sparkling Water with Lemon n Mint', 'Minuman', 'Tersedia', 12000),
(19, 'Americano', 'Americano Coffe', 'Minuman', 'Tersedia', 18000),
(20, 'Kopi Susu Gula Aren', 'Kopi Susu Gula Aren', 'Minuman', 'Tersedia', 23000),
(21, 'KSU Bottle', 'Kopi Susu Gula Aren Bottle', 'Minuman', 'Tersedia', 16000),
(22, 'Milk Avocado', 'Milk Avocado', 'Minuman', 'Tersedia', 15000),
(23, 'Matcha Latte', 'Matcha Latte', 'Minuman', 'Tersedia', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `menu_dibooking`
--

CREATE TABLE `menu_dibooking` (
  `id_menu_dibooking` int(12) NOT NULL,
  `id_detail_menu` text NOT NULL,
  `nama_makanan` varchar(250) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `sub_total` int(12) NOT NULL,
  `status_order` varchar(255) NOT NULL DEFAULT 'success'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_dibooking`
--

INSERT INTO `menu_dibooking` (`id_menu_dibooking`, `id_detail_menu`, `nama_makanan`, `jumlah`, `sub_total`, `status_order`) VALUES
(15, 'INV20211015132542', 'Bakso', 1, 20000, 'success'),
(16, 'INV20211015132542', 'Nasi Goreng', 1, 25000, 'success'),
(17, 'INV20211015133852', 'Bakso', 2, 40000, 'success'),
(18, 'INV20211015133852', 'Es Teh', 2, 16000, 'success'),
(19, 'INV20211016130044', 'Bakso', 2, 40000, 'success'),
(20, 'INV20211016130044', 'Es Jeruk', 2, 20000, 'success'),
(21, 'INV20211027131246', 'Nasi Goreng', 2, 50000, 'success'),
(22, 'INV20211027131246', 'Soto Lamongan ', 2, 30000, 'success'),
(23, 'INV20211027131246', 'Es Jeruk', 4, 40000, 'success'),
(24, 'INV20211027134031', 'Es Jeruk', 2, 20000, 'success'),
(25, 'INV20211027134031', 'Bakso', 2, 40000, 'success'),
(26, 'INV20211029135257', 'Es Jeruk', 1, 10000, 'success'),
(27, 'INV20211029135257', 'Nasi Goreng', 1, 25000, 'success'),
(28, 'INV20211029135257', 'Soto Lamongan ', 1, 15000, 'success'),
(29, 'INV20211029200131', 'Nasi Goreng', 1, 25000, 'success'),
(30, 'INV20211029200131', 'Soto Lamongan ', 1, 15000, 'success'),
(31, 'INV20211029200131', 'Es Jeruk', 1, 10000, 'success'),
(32, 'INV20211029201010', 'Nasi Goreng', 1, 25000, 'success'),
(33, 'INV20211016130044', 'Es Teh', 1, 8000, 'success'),
(34, 'INV20211029135257', 'Es Jeruk', 1, 10000, 'success'),
(35, 'INV20211101132112', 'Bakso', 1, 20000, 'success'),
(36, 'INV20211101132112', 'Es Teh', 1, 8000, 'success'),
(37, 'INV20211101132112', 'Es Jeruk', 1, 10000, 'success'),
(38, 'INV20211101132112', 'Sate Daging', 1, 25000, 'success'),
(39, 'INV20211114143545', 'Es Jeruk', 2, 20000, 'success'),
(40, 'INV20211114143545', 'Soto Lamongan ', 2, 30000, 'success'),
(41, 'INV20211114190627', 'Es Teh', 2, 16000, 'success'),
(42, 'INV20211114190627', 'Bakso', 2, 40000, 'success'),
(43, 'INV20211114143545', 'Milkshake', 1, 15000, 'success'),
(44, 'INV20211114143545', 'Milkshake', 1, 15000, 'success'),
(45, 'INV20240116101150', 'Sate Daging', 4, 100000, 'success'),
(46, 'INV20240618085801', 'Ice Tea', 10, 80000, 'success'),
(47, 'INV20240618085801', 'Fish n Chips', 4, 140000, 'success'),
(48, 'INV20240618085801', 'Chicken Wing', 4, 80000, 'success'),
(49, 'INV20240618085801', 'Ice Sparkling Water', 10, 120000, 'success'),
(50, 'INV20240618085801', 'Pasta', 5, 125000, 'success');

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_metode` int(12) NOT NULL,
  `nama_merchant` varchar(250) NOT NULL,
  `atas_nama` varchar(250) NOT NULL,
  `kode_pembayaran` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_metode`, `nama_merchant`, `atas_nama`, `kode_pembayaran`) VALUES
(1, 'Dana', 'Annisa Wulandari', '089680656025'),
(2, 'Bank BCA', 'Annisa Wulandari', '8222333444'),
(4, 'LinkAja', 'Annisa Wulandari', '089680656025'),
(5, 'GoPay', 'Annisa Wulandari', '089680656025');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `email`, `alamat`, `password`, `telepon`, `jenis_kelamin`, `jabatan`) VALUES
(3, 'Bos Admin', 'admin@gmail.com', 'Jl. Anggrek 51 Malang', '21232f297a57a5a743894a0e4a801fc3', '081222333444', 'Pria', 'admin'),
(6, 'Budi', 'pegawai@gmail.com', 'Jl. Magelang', '047aeeb234644b9e2d4138ed3bc7976a', '082333444555', 'Laki-laki', 'pegawai'),
(8, 'Rahmat', 'rahmat@gmail.com', 'Daerah Istimewa Yogyakarta', 'af2a4c9d4c4956ec9d6ba62213eed568', '087888999000', 'Laki-laki', 'pegawai'),
(9, 'Mamat', 'mamat@gmail.com', 'Daerah Istimewa Yogyakarta', '24b65fcef95d94b6d41ecaa85a70e46f', '089000999000', 'Laki-laki', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `profil_usaha`
--

CREATE TABLE `profil_usaha` (
  `id` int(12) NOT NULL,
  `nama_usaha` varchar(250) NOT NULL,
  `deskripsi` text NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `nomor_telepon` varchar(17) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instagram` varchar(50) NOT NULL,
  `facebook` varchar(250) NOT NULL,
  `maps_link` text NOT NULL,
  `foto_usaha_1` text NOT NULL,
  `foto_usaha_2` text NOT NULL,
  `foto_usaha_3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profil_usaha`
--

INSERT INTO `profil_usaha` (`id`, `nama_usaha`, `deskripsi`, `alamat`, `nomor_telepon`, `email`, `instagram`, `facebook`, `maps_link`, `foto_usaha_1`, `foto_usaha_2`, `foto_usaha_3`) VALUES
(1, 'WarkopKuy', 'WarkopKuy adalah tempat yang memikat para pengunjung dengan atmosfer hangat dan ramahnya, menciptakan pengalaman kuliner yang tak terlupakan. Dengan dekorasi yang simple dan menenangkan, restoran ini menyajikan hidangan lezat  dan variasi menu yang beragam. Dari hidangan klasik hingga kreasi kuliner inovatif, WarkopKuy tidak hanya mengutamakan rasa yang istimewa, tetapi juga menawarkan pelayanan yang baik dan perhatian detail yang membuat setiap kunjungan menjadi suatu kenangan yang menyenangkan.', 'Pasa Lama, JL.A.Damyati, Sukarasa, Tangerang, Ttangerang City, Banten 15118', '089680656025', 'warkopkuylah@gmail.com', 'war_kopkuy', 'warkopkuy', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.650191008408!2d106.62787967409565!3d-6.177559460531128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f9d0bbd2545b%3A0x8df8f12484d77aea!2sSans%20Hotel%20Pasar%20Lama%20Tangerang!5e0!3m2!1sid!2sid!4v1718675611581!5m2!1sid!2sid', '120620241756171.jpg', '120620241756172.jpg', '120620241756173.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `saran_kritik`
--

CREATE TABLE `saran_kritik` (
  `id_saran` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saran_kritik`
--

INSERT INTO `saran_kritik` (`id_saran`, `nama_pelanggan`, `email`, `tanggal`, `saran`) VALUES
(15, 'Subekan', 'subekan@gmail.com', '2021-09-20', 'Rumah makan atau restoran adalah istilah umum untuk menyebut usaha gastronomi yang menyajikan hidangan kepada masyarakat dan menyediakan tempat untuk menikmati hidangan tersebut serta menetapkan tarif tertentu untuk makanan dan pelayanannya. Meski pada umumnya rumah makan menyajikan makanan di tempat, tetapi ada juga beberapa yang menyediakan layanan take-out dining dan delivery service sebagai salah satu bentuk pelayanan kepada konsumennya. Rumah makan biasanya memiliki spesialisasi dalam jenis makanan yang dihidangkannya. Sebagai contoh yaitu rumah makan chinese food, rumah makan Padang, rumah makan cepat saji (fast food restaurant) dan sebagainya.'),
(16, 'Bambang', 'bambang@gmail.com', '2021-10-01', 'Restoran ini tempatnya nyaman dan bersih. Pelayanannya pun sangat baik dan ramah. Dan tentunya menu yang ditawarkan juga enak. '),
(17, 'Yordi', 'yordiii022@gmail.com', '2021-10-04', 'Tolong kebersihan ditingkatkan'),
(23, 'Ardan', 'ardannn@gmail.com', '2021-11-09', 'Tolong kebersihan sampahnya dijaga');

-- --------------------------------------------------------

--
-- Table structure for table `saw_hasil`
--

CREATE TABLE `saw_hasil` (
  `id` int(11) NOT NULL,
  `tanggal_penghitungan` date NOT NULL,
  `pegawai_terpilih` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_hasil`
--

INSERT INTO `saw_hasil` (`id`, `tanggal_penghitungan`, `pegawai_terpilih`) VALUES
(4, '2021-10-23', 'Riza Zulfahnur'),
(7, '2021-10-24', 'Diego'),
(8, '2021-11-14', 'Ardan Anjung');

-- --------------------------------------------------------

--
-- Table structure for table `saw_kriteria`
--

CREATE TABLE `saw_kriteria` (
  `id` int(11) NOT NULL,
  `nama_kriteria` varchar(256) NOT NULL,
  `penjelasan_kriteria` text NOT NULL,
  `bobot_kriteria` varchar(10) NOT NULL,
  `kategori_bobot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_kriteria`
--

INSERT INTO `saw_kriteria` (`id`, `nama_kriteria`, `penjelasan_kriteria`, `bobot_kriteria`, `kategori_bobot`) VALUES
(1, 'Disiplin', 'Menilai ketaatan hadir saat kerja. Range Nilai 10-90. Semakin banyak nilai maka semakin disiplin pegawai tsb.', '0.25', 'Benefit'),
(2, 'Kerja Sama', 'Menilai tingkat kemampuan bekerjasama dengan atasan atau rekan kerja dalam melaksanakan tugas. Range Nilai 10-90.', '0.15', 'Benefit'),
(4, 'Komplain Pengunjung', 'Menilai tingkat komplain dari pengunjung untuk pegawai Range 10-50', '0.2', 'Cost'),
(5, 'Etika Kerja', 'Menilai hubungan baik antar pegawai, customer atau pun atasan. Range 10-50.', '0.25', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `saw_pegawai`
--

CREATE TABLE `saw_pegawai` (
  `id` int(11) NOT NULL,
  `nama_pegawai` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saw_pegawai`
--

INSERT INTO `saw_pegawai` (`id`, `nama_pegawai`) VALUES
(1, 'Ardan Anjung'),
(2, 'Riza Zulfahnur'),
(3, 'Dina Lisuardi'),
(4, 'Yuni Kurnia ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `lupa_password`
--
ALTER TABLE `lupa_password`
  ADD PRIMARY KEY (`id_lupa_password`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`id_meja`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  ADD PRIMARY KEY (`id_menu_dibooking`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `gambar_menu`
--
ALTER TABLE `gambar_menu`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `lupa_password`
--
ALTER TABLE `lupa_password`
  MODIFY `id_lupa_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meja`
--
ALTER TABLE `meja`
  MODIFY `id_meja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `menu_dibooking`
--
ALTER TABLE `menu_dibooking`
  MODIFY `id_menu_dibooking` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  MODIFY `id_metode` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `profil_usaha`
--
ALTER TABLE `profil_usaha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saran_kritik`
--
ALTER TABLE `saran_kritik`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `saw_hasil`
--
ALTER TABLE `saw_hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saw_pegawai`
--
ALTER TABLE `saw_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
