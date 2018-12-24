-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 08:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '2ffbff3264b5e8d61cad441ca886aaba.png');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES
(3, 'Singgalang Expedition', 'file_1460289167.jpg', 1),
(4, 'Fly with Hammock', 'file_1460289974.jpg', 2),
(5, 'Marapi Expedition', 'file_1460363423.JPG', 0),
(6, 'Volcano', 'file_1460367801.jpg', 0),
(7, 'Sunrise', 'file_1460367841.jpg', 0),
(9, 'Diatas Awan', 'file_1460368005.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `jdl_galeri`, `gbr_galeri`, `albumid`) VALUES
(2, 'Enjoy in the morning at Telaga Dewi', 'file_1462540960.jpg', 4),
(3, 'Make your life be enjoy', 'file_1462540975.jpg', 4),
(4, 'Waterfall at Singgalang Mountain', 'file_1460301447.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_paket`
--

CREATE TABLE `kategori_paket` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_paket`
--

INSERT INTO `kategori_paket` (`id_kategori`, `kategori`) VALUES
(1, 'Reguler'),
(2, 'Paket Khusus');

-- --------------------------------------------------------

--
-- Table structure for table `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `metode`, `bank`, `norek`, `atasnama`) VALUES
(2, 'Transfer Bank', 'Mandiri', '5485-01-007458-53-1', 'Dina Febriana'),
(3, 'Transfer Bank', 'BNI', '5485-01-007458-53-2', 'Jasir Jauhar Ramadhan'),
(4, 'Transfer Bank', 'BCA', '5485-01-007458-53-3', 'Muhamad Ardhi Akbar'),
(5, 'Transfer Bank', 'BRI', '5485-01-007458-53-4', 'Muhamad Rifaldi'),
(6, 'Transfer Bank', 'Mega', '5485-01-007458-53-5', 'Rahmad Singgih Aji Pambudi'),
(7, 'Transfer Bank', 'BTN', '5485-01-007458-53-6', 'Sinta Ramadani');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `nama`, `jenkel`, `alamat`, `notelp`, `email`, `berangkat`, `kembali`, `adult`, `kids`, `metode_id`, `paket_id_order`, `keterangan`, `tanggal`, `status`) VALUES
('INV101218000001', 'bagus', 'L', 'jl. bojonggede', '0898xxxxxxxxxxx', 'alfibagus130@gmail.com', '2018-12-12', '2018-12-14', 1, 0, 6, 5, '', '2018-12-10', 'LUNAS'),
('INV101218000002', 'hapis', 'L', 'Jl. Raya Cilebut', '0898xxxxxxxxxxx', 'hapis344@gmail.com', '2018-12-13', '2018-12-17', 1, 0, 4, 5, 'VIP', '2018-12-10', 'LUNAS'),
('INV101218000003', 'Admin', 'L', 'gybhyb', '876543', 'jhgfd', '2018-12-06', '2018-12-14', 1, 0, 2, 5, 'gfcf', '2018-12-10', 'LUNAS'),
('INV111218000001', 'muhamad ardhi', 'L', 'bogor', '0898xxxxxxxxxxx', 'ardhi997@gmail.com', '2018-12-22', '2018-12-24', 1, 0, 4, 4, '', '2018-12-11', 'LUNAS'),
('INV111218000002', 'muhamad ardhi', 'L', 'bogor', '0898xxxxxxxxxxx', 'ardhi997@gmail.com', '2018-12-15', '2018-12-15', 10, 0, 4, 5, '', '2018-12-11', 'LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `idpaket` int(11) NOT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_dewasa` double DEFAULT NULL,
  `hrg_anak` double DEFAULT NULL,
  `deskripsi` longtext,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `hrg_dewasa`, `hrg_anak`, `deskripsi`, `kategori_id`, `gambar`) VALUES
(2, 'Paket One Day Trip Pulau Pagang - Pasumpahan', 250000, 250000, '<p>FASILITAS PAKET TERMASUK:</p>\r\n\r\n<p>- Boat ke Pulau pulang-pergi</p>\r\n\r\n<p>- Tiket masuk pulau</p>\r\n\r\n<p>- Jacket Pelampung</p>\r\n\r\n<p>- Makan siang (nasi bungkus / box) + air mineral</p>\r\n\r\n<p>- Coffe break (teh panas / kopi panas)</p>\r\n\r\n<p>- Free banana boat</p>\r\n\r\n<p>- Snorkling + foto underwater di pulau pagang</p>\r\n\r\n<p>- Tempat parkir dan tempat bilas</p>\r\n\r\n<p>- P3K</p>\r\n\r\n<p>- Crew boat / Pemandu yang berpengalaman dan ramah</p>\r\n\r\n<p>&nbsp;Keterangan :</p>\r\n\r\n<ul>\r\n	<li>BERANGKAT SETIAP HARI : Mulai hari Senin sampai hari Jumat minimal 7 orang / lebih dan hari Sabtu dan hari Minggu bisa minimal 2 orang / lebih</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Berkumpul antara jam 08.00 - 09.00 pagi dan kembali antara jam 15.00 - 16.00 sore</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lokasi berangkat : bungus teluk kabung km 20, jalan raya Bungus - Painan</li>\r\n</ul>\r\n<!-- [if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:\"Times New Roman\";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->', 1, '6412daf2bf02ab59313b9ef1e68caa49.png'),
(3, 'Paket One Day Trip Pulau Pagang - Swarnadwipa - Pasumpahan', 270000, 270000, '<p>Fasilitas Termasuk :<br />\r\n- Transportasi boat PP, makan siang ( nasi box / bungkus ) + air mineral ,<br />\r\n- banana boat, snorkling, foto underwater, tiket masuk pulau ( di pulau pagang )<br />\r\n- Coffe break ( kopi / teh panas )<br />\r\n- Tempat parkir dan bilas<br />\r\n- Crew boat / pemandu<br />\r\n- Keberangkatan jam 08.00 pagi dan pulang antara jam 16.00 - 17.00 sore ( disesuaikan)<br />\r\n- Tempat di pantai bungus teluk kabung km 20<br />\r\n&nbsp;</p>\r\n', 1, '8a72be6bdbbd270b54bb8f47150d1614.png'),
(4, 'Paket One Day Trip Pulau Pagang - Swarnadwipa - Pasumpahan', 280000, 280000, '<p>FASILITAS PAKET :<br />\r\n- Transportasi boat PP, makan siang ( nasi box / bungkus ) + air mineral ,<br />\r\n- banana boat, snorkling, foto underwater, tiket masuk pulau ( di pulau pagang )<br />\r\n- Coffe break ( kopi / teh panas )<br />\r\n- Tempat parkir dan bilas<br />\r\n- Crew boat / pemandu<br />\r\n- Keberangkatan jam 08.00 pagi dan pulang antara jam 16.00 - 17.00 sore ( disesuaikan)<br />\r\n- Tempat di pantai bungus teluk kabung km 20<br />\r\n&nbsp;<br />\r\n<br />\r\n- BERANGKAT SETIAP HARI : Mulai hari Senin sampai hari Jumat minimal 7 orang / lebih dan hari Sabtu dan hari Minggu bisa minimal 2 orang / lebih<br />\r\n<br />\r\n- Berkumpul antara jam 08.00 - 09.00 pagi dan kembali antara jam 15.00 - 16.00 sore<br />\r\n<br />\r\n- Lokasi berangkat : bungus teluk kabung km 20, jalan raya Bungus - Painan<br />\r\n<br />\r\n- TIDAK TERMASUK TRANSPORTASI DARI DAERAH MASING - MASING / DARI KOTA PADANG KE DERMAGA</p>\r\n', 1, '7fc1d7b713ce7f2f0e518fe054eee775.png'),
(5, 'Paket Kelas Bisnis One Day Trip Pulau Pagang', 550000, 550000, '<p>HARGA PAKET KELAS BISNIS KE PULAU PAGANG ( 1 PULAU )<br />\r\n<br />\r\nHarga Paket&nbsp; minimal 10 Orang : Rp. 550.000 / Orang<br />\r\n<br />\r\nPaket Termasuk :<br />\r\n<br />\r\n- Makan siang , air mineral , buah<br />\r\n<br />\r\n- Tiket masuk Pulau Pagang, Alat snorkeling, Foto Underwater<br />\r\n<br />\r\n- Banana boat ( belum termasuk )<br />\r\n<br />\r\n- Menggunakan Kapal ber AC ( Lebih Nyaman )<br />\r\n<br />\r\n* Keberangkatan dari Pelabuhan Muara Padang ( dekat Kota Padang )<br />\r\n<br />\r\n* Berkumpul sekitar antara jam 08.00 - 09.00 dan kembali antara 15.00 - 16.00 sore<br />\r\n<br />\r\n* Jika ada tambahan kunjungan ke pulau lain ( Pulau Suwarnadwipa / Pulau Pasumpahan )<br />\r\n<br />\r\n&nbsp; dikenakan biaya : Rp. 20.000 / orang / pulau</p>\r\n', 2, 'fe738eae4b858e9104c138786b296d3a.png');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `tgl_bayar`, `metode_id_bayar`, `order_id`, `jumlah`, `pengirim`, `bukti_transfer`) VALUES
(1, '2018-12-18', 4, 'INV111218000002', 5500000, 'akbar', 'Bukti_1545134581.gif'),
(3, '2018-12-11', 4, 'INV111218000001', 280000, 'aka', 'Bukti_1545136393.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(11, 'aldy', 'aldy123@gmail.com', '0897xxxxxxxxxxxx', 'Koneksi Bermasalah', '2018-12-10 05:57:50', 0),
(12, 'ardhi', 'ardhi997@gmail.com', '081770020811', 'test', '2018-12-18 14:20:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(910, '2018-12-18 11:51:53', '::1', 'Chrome'),
(911, '2018-12-18 18:04:50', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`idtestimoni`, `nama`, `email`, `pesan`, `status`, `tgl_post`) VALUES
(1, 'asdsada', 'alfiras@gmail.com', 'asdasda', '1', '2018-12-11'),
(2, 'ardhi', 'ardhi997@gmail.com', 'baguuus', '1', '2018-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `idwisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`idwisata`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
(2, 'Pulau Pagang', '<p>Pulau Pagang terletak didaerah Bungus, masih wilayah Kotamadya Padang, secara administrasi Pulau Pagang termasuk daerah Tarusan Pesisir Selatan,tapi lebih familiar termasuk wilayah Pagang, baru populer 1 tahun belakangan ini, setelah pulau Sikuai yang terkenal itu ,ditutup untuk umum dikarenakan permasalahan manajemen, sayang sekali memang pulau yg sudah lengkap fasilitasnya ini sekarang sudah menjadi semak belukar,tapi hikmah dibalik itu pulau berada sebelah kiri Sikuai ini menjadi lebih terkenal..</p>\r\n\r\n<p>Perjalanan lebih kurang 40 menit menggunakan boat kita sudah sampai di pulau berpasir putih dan halus ini, seolah tidak sabar utk berenang di airnya yang jernih, wisatawan biasanya langsung melompat sebelum boat sampai di bibir pantai..</p>\r\n\r\n<p>Aktivitas air yang biasa dilakukan wisatawan di pulau Pagang ini adalah banana boat, mengelilingi pulau, snorkling dan fasilitas foto underwater, memancing, berenang di airnya yang jernih.</p>\r\n\r\n<p>Pulau Pagang memiliki luas + 10 hektar dan merupakan pulau yang masih asri. Pulau Pagang langsung berhadapan dengan Samudera Hindia serta memiliki&nbsp; keindahan yang mempesona diantaranya hamparan pasir putih berpadu dengan jernih dan birunya air laut memberikan pesona tersendiri.</p>\r\n\r\n<p>Selain itu pengunjungpun dapat bermain di tepian pantai yang dangkal dan jernih, memancing dan juga menikmati perbukitan yang hijau&nbsp; di seberang Pulau Pagang.</p>\r\n\r\n<p>Kegiatan snorkling di Pulau Pagang ini juga cukup menarik karena pulau ini kaya akan terumbu karang. Sebagaimana dikutip dari website Kementerian Kelautan dan Perikanan, Pulau Pagang didominasi oleh kelompok karang diantaranya Genus Foliose, seperti&nbsp;&nbsp;<em>Montipora foliosa, Montipora danae, Encrusing Genus Montipora, Asreopora sp., Oxypora lacare, Massive Genus, Favites sp, Porites sp, Porites lute, Goniastre sp</em>&nbsp;dan&nbsp;<em>Favia sp</em>.</p>\r\n\r\n<p>Selain kaya akan terumbu karang, Pulau Pagang juga memiliki jenis ikan diantaranya&nbsp;<em>Chatedon trifasciatus, Acanthurus pyroferus, Ctenochaetus striatus, Caesio cunning, Scolopsis bilinett</em>a, dan masih banyak lagi kekayaan biota bawah laut.</p>\r\n\r\n<p>Untuk menuju pulau ini, Anda dapat menggunakan&nbsp; perahu nelayan maupun perahu wisata, dari pelabuhan Muaro di Kota Padang, dengan waktu tempuh + 1 jam. Anda dapat pula melalui Pelabuhan Bungus, Teluk Kabung + 40 Menit.</p>\r\n\r\n<p>Sumatera Barat merupakan salah satu daerah tujuan wisata yang patut untuk dipertimbangkan mengisi waktu libur mendatang. Selain indahnya pesona alam,&nbsp; Sumatera Barat juga memiliki daerah tujuan wisata kuliner yang dapat mengoyang lidah kita. Wisata budayanya&nbsp; dapat menambah pengetahuan budaya kita, sedang wisata sejarah&nbsp; mengingatkan kita akan perjuangan para pahlawan&nbsp; meraih kemerdekaan.</p>\r\n', '7903b46352483a92029c97c5d49a86bf.jpg'),
(3, 'Pulau Pasumpahan', '<p><strong>Pulau Pasumpahan</strong>&nbsp;adalah sebuah pulau&nbsp;yang berada di perairan kecamatan Bungus Teluk Kabung, kota Padang, provinsi Sumatera Barat, Indonesia&nbsp;. Klaim akan keindahan lautnya membuat pulau ini mulai dikenal oleh wisatawan lokal dan internasional.</p>\r\n\r\n<p>Pulau Pasumpahan berada sekitar 200 meter dari Pulau Sikuai. Pulau ini memiliki obyek wisata pantai pasir putih dengan terumbu karang&nbsp;yang masih terjaga.</p>\r\n\r\n<p>Pulau ini diharapkan akan menjadi daerah tujuan wisata unggulan di provinsi Sumatera Barat. Pulau ini terletak di sebelah barat Pulau Setan Kecil, untuk menempuh pulau ini memakan waktu 10 menit dari Sungai Pisang dengan mesin 45 PK.</p>\r\n\r\n<p>Potensi wisata bawah laut di kawasan wisata bahari pantai barat Kota Padang adalah kawasan ekosistem terumbu karang yang terdapat hampir di setiap pulau, di antaranya di Pulau Gosong. Selain dari terumbu karang berbagai jenis ikan karang/ikan-ikan hias juga sangat menarik untuk dinikmati oleh wisatawan. Di perairan Kota Padang ditemukan 21 jenis ikan kepe-kepe yang didominasi oleh Chaetodon trifascialis. Lokasi-Iokasi penyelaman yang sudah mulai dipasarkan kepada wisatawan antara lain Pulau Gosong, Pulau Ular, Pulau Sirandah, dan Pulan Pandan.</p>\r\n\r\n<p>Pasumpahan kini tengah diincar investor asing untuk dikembangkan sebagai obyek wisata yang di unggulkan di daerah sumatera barat. Fasilitas pendukung untuk itu tengah dibangun di pulau ini.</p>\r\n', '58193c1bc5976ee6534960a13fea24a8.jpg'),
(4, 'Pulau Pamutusan', '<p>Sebagian orang mungkin belum pernah mendengar, apalagi mengunjungi&nbsp;<strong>Pulau Pamutusan</strong>&nbsp;di Sumatera Barat. Tapi, bagi yang pernah berkunjung ke pulau yang ada di Sumatera Barat itu, bisa jadi sudah merencanakan untuk kembali ke sana.<br />\r\n<br />\r\nMemang, Sumatera Barat terkenal dengan kawasan yang dikelilingi ratusan pulau kecil yang dihiasi tekstur perbukitan dan biota laut yang mengagumkan. Salah satunya&nbsp;<strong>Pulau Pamutusan</strong>.<br />\r\n<br />\r\nTerletak di kawasan Bungus Teluk Kabung, Padang atau sekitar satu jam perjalanan dari Kota Padang, pulau ini dikenal dengan surga tersembunyi yang belum banyak terjamah wisatawan.<br />\r\n<br />\r\n<strong>Pulau Pamutusan</strong>&nbsp;bisa ditempuh dengan menggunakan kapal kecil dari Pelabuhan Muara Kota Padang sekitar satu jam perjalanan laut. Pulau dengan luas 8 hektare ini memiliki pasir putih serta tumbuhan pohon kelapa dan tanaman mangrove serta perbukitan yang masih hijau.<br />\r\n<br />\r\nPulau ini diberi nama Pamutusan karena terdapat semenanjung yang berubah menjadi daratan berpasir putih ketika air laut surut.<br />\r\n<br />\r\nUntuk menjaga kebersihan pulau tersebut, dipungut retribusi untuk setiap tamu yang datang oleh seorang penjaga pulau yang sehari-hari menetap di sana.<br />\r\n&nbsp;<br />\r\nPulau ini ibarat sepotong surga yang tersembunyi di tengah Samudera Hindia yang belum banyak dijamah oleh wisatawan karena belum pernah terekspose. Pulau ini cocok bagi wisatawan penggemar landscape atau fotografer karena banyak terdapat spot-spot cantik dengan hamparan pemandangan nan asri dan indah, walaupun ditempuh dengan sedikit tracking untuk mencapai puncak bukitnya.<br />\r\n<br />\r\nSelain itu, biota ikan hias dan terumbu karang yang terdapat di dalam laut di sekitar pulau ini juga menjadi daya tarik tersendiri bagi penggemar snorkling. Nah, untuk melepas kepenatan setelah berwisata, terdapat sebuah cottage yang bisa disinggahi dan bersantai menikmati pemandangan alam pulau-pulau kecil yang menghampar di depannya.</p>\r\n', '515e3ddf09ca60405270cd7dbcae5e74.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `adminid` (`user`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `paket_id_order` (`paket_id_order`),
  ADD KEY `metode_id` (`metode_id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `metode_id_bayar` (`metode_id_bayar`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`idtestimoni`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`idwisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori_paket`
--
ALTER TABLE `kategori_paket`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `idpaket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `idtestimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `idwisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE;

--
-- Constraints for table `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
