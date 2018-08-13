-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for batik
CREATE DATABASE IF NOT EXISTS `batik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `batik`;

-- Dumping structure for table batik.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `user`, `pass`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table batik.album
CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `nama_album` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_album`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.album: ~3 rows (approximately)
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` (`id_album`, `nama_album`, `created_at`) VALUES
	(38, 'Kasdasdsdfs', '2017-07-08 21:31:49'),
	(39, 'test 2', '2017-07-14 09:04:33'),
	(40, 'test 3', '2017-07-14 09:15:48');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;

-- Dumping structure for table batik.artikel
CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL,
  `view` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.artikel: ~2 rows (approximately)
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` (`id_artikel`, `id_kategori`, `judul`, `deskripsi`, `cover`, `view`, `status`, `created_at`) VALUES
	(2, 2, 'asdPembangunan Hanggar Ambruk di Bandara Makassar Dihentikan ', '<p>Konstruksi</p>\r\n', '14987256002.jpg', 9, 0, '2017-07-15 23:25:58'),
	(3, 1, 'Tenaga Kerja Konstruksi Indonesia Memiliki Daya Saing Tinggi ', '<p><strong>Liputan6.com</strong>, Jakarta - Menteri Pekerjaan Umum Djoko Kirmanto berkeyakinan tenaga kerja konstruksi Indonesia memiliki daya saing kompetitif dan<br />\r\nkomparatif&nbsp; yang tinggi. Bahkan tenaga kerja konstruksi Indonesia tidak kalah dengan tenaga kerja kontruksi dari negara-negara lain di Asia Tenggara.</p>\r\n\r\n<p>&quot;Sejauh ini beberapa Badan Usaha Jasa Konstruksi Nasional telah memiliki pengalaman dan berhasil melaksanakan pekerjaan konstruksi di berbagai negara ASEAN, seperti Brunei Darussalam, Filipina, Malaysia, Myanmar, dan Timor Leste.&quot;kata&nbsp; Menteri Pekerjaan Umum Djoko Kirmanto, Senin (29/9/2014).</p>\r\n\r\n<p>Menurut Djoko, tahun ini nilai pasar konstruksi Indonesia akan menyamai pasar konstruksi di Korea Selatan, bahkan Indonesia diprediksi akan menjadi pasar perumahan ketiga terbesar di dunia. Artinya, Indonesia di samping merupakan pasar potensial, tetapi juga mampu berperan sebagai basis produksi sektor konstruksi di Kawasan ASEAN.</p>\r\n\r\n<p>Menyikapi akan segera terbentuknya Masyarakat Ekonomi Asean (MEA) pada akhir 2015, Djoko Kirmanto mengingatkan agar sektor konstruksi di Indonesia bersiap diri menghadapi keterbukaan pasar di lingkup ASEAN. Tentunya disiplin dan kerja keras semua bagian masyarakat konstruksi sangat dibutuhkan.</p>\r\n\r\n<p>&quot;Mari kita sikapi MEA secara proporsional, yang terpenting saya menghimbau para pelaku konstruksi untuk mempersiapkan diri<br />\r\nsebaik-baiknya, &quot; tutur Djoko.</p>\r\n\r\n<p>Djoko Kirmanto juga menghimbau agar perdagangan bebas dalam lingkup negara ASEAN tidak hanya dipersepsi untuk persaingan, namun justru untuk mengintegrasikan dan saling melengkapi kapasitas antara negara-negara tersebut dalam menghadapi negara-negara non ASEAN di era globalisasi yang lebih luas pada 2020 nanti.</p>\r\n\r\n<p>Pemerintah sendiri telah mengambil langkah-langkap progresif untuk mempersiapkan pelaku konstruksi nasional dalam menghadapi MEA. Salah satunya bahwa untuk melakukan usaha jasa konstruksi di Indonesia Badan Usaha Jasa Konstriksi ASEAN harus bekerja sama dengan Badan Usaha Jasa Konstruksi Nasional kualifikasi besar dalam bentuk joint operation atau joint venture.</p>\r\n\r\n<p>Kemudian, dengan penyertaan modal asing saat ini masih dibatasi maksimal sebesar 55 persen untulk kontraktor dan 51<br />\r\npersen untuk konsultan yang nantinya akan menjadi sebesar 70 persen setelah diberlakukannya MEA.</p>\r\n\r\n<p>Oleh karena itu, Badan Usaha Jasa Konstruksi Nasional harus menjadi partner yang aktif dalam bermitra dengan Badan Usaha Jasa Konstruksi ASEAN agar dapat mengambil manfaat dari kerja sama ini dengan tecerminnya kapasitas SDM, teknologi, dan permodalan Badan Usaha Jasa Konstruksi Nasional.</p>\r\n\r\n<p>Di samping itu, tenaga kerja jasa konstruksi asing yang bekerja di Indonesia masih dibatasi hanya untuk tingkat&nbsp; direktur, manajer, dan tenaga ahli serta harus tetap memebuhi ketentuan paraturan perundang-undangan ketenagakerjaan dan keimigrasian yang berlaku di Indonesia. &quot;Saya percaya sampai saat ini, tenaga kerja konstruksi Indonesia memiliki daya saing kompetitif dan komparatif yang relatif tinggi di kawasaan Asean,&quot; pungkas Djoko Kirmanto.</p>\r\n\r\n<p>Pengembangan SDM sangat krusial karena masih banyak pihak yang menilai sektor konstruksi Indonesia dinilai belum siap untuk menghadapi ketatnya persaingan dalam implementasi MEA 2015. Jumlah perusahaan konstruksi di Indonesia memang lebih banyak dibandingkan tenaga ahli yang tersedia. Sebagai perbandingan, perusahaan konstruksi di Indonesia mencapai 114.000,sementara China hanya 66.000. Perusahaan konstruksi China sebagian besar menangani skala proyek yang lebih<br />\r\nbesar.</p>\r\n\r\n<p>Untuk periode 2006-2013, pertumbuhan rata-rata tenaga kerja hanya sekitar 6 persen, sementara pertumbuhan rata-rata nilai konstruksi untuk periode yang sama sebesar 21 persen. Badan Pusat Statistik pada 2013 menyebutkan SDM konstruksi Indonesia mencapai 6,9 juta atau 5,7 persen dari tenaga kerja nasional.</p>\r\n\r\n<p>Dari jumlah tersebut, sebesar 4 persen merupakan tenaga ahli, 20 persen tenaga terampil, dan 76 persen sisanya merupakan tenaga kerja kurang terampil. (Amd/Gdn)</p>\r\n', '1498663300LOGO10.jpeg', 15, 0, '2017-07-15 23:20:15');
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;

-- Dumping structure for table batik.config
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` longtext,
  `description` longtext,
  `icon` longtext,
  `instagram` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `logo` longtext,
  `meta_deskripsi` text NOT NULL,
  `basic` int(11) DEFAULT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.config: ~0 rows (approximately)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`id`, `name`, `email`, `phone`, `address`, `description`, `icon`, `instagram`, `facebook`, `logo`, `meta_deskripsi`, `basic`, `meta_keyword`) VALUES
	(1, 'Kripsku.com', 'admin@kripsku.com', '083849940637', 'Universitas 17 Agustus 1945 Surabaya', 'Ini Kripsku.com<br>', 'icon1.png', 'kripsku', 'kripsku', 'logo3.png', '																								Ini Kripsku.com\r\n											\r\n											', 5, '																								Ini Kripsku.com\r\n											\r\n											');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;

-- Dumping structure for table batik.gambar_album
CREATE TABLE IF NOT EXISTS `gambar_album` (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `id_album` int(11) DEFAULT NULL,
  `gambar` text,
  PRIMARY KEY (`id_gambar`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.gambar_album: ~5 rows (approximately)
/*!40000 ALTER TABLE `gambar_album` DISABLE KEYS */;
INSERT INTO `gambar_album` (`id_gambar`, `id_album`, `gambar`) VALUES
	(11, 38, 'LOGO_10.jpeg'),
	(15, 38, '2_i.jpg'),
	(16, 39, 'Asset_1.png'),
	(17, 39, 'usaha-keripik-pangsit.jpg'),
	(18, 40, 'placeit.png');
/*!40000 ALTER TABLE `gambar_album` ENABLE KEYS */;

-- Dumping structure for table batik.header
CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(11) NOT NULL AUTO_INCREMENT,
  `profil` varchar(255) DEFAULT NULL,
  `artikel` varchar(255) DEFAULT NULL,
  `produk` varchar(255) DEFAULT NULL,
  `potensi` varchar(255) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `kontak` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.header: ~0 rows (approximately)
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` (`id_header`, `profil`, `artikel`, `produk`, `potensi`, `gallery`, `kontak`) VALUES
	(1, 'profil1.png', 'artikel5.png', 'produk.png', 'potensi.png', 'gallery.png', 'artikel3.png');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;

-- Dumping structure for table batik.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `deskripsi_kat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.kategori: ~2 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `nama`, `deskripsi_kat`, `created_at`) VALUES
	(1, 'Konstruksi2', '<p>Konstruksi4</p>\r\n', '2017-06-29 16:05:38'),
	(2, 'halo', 'test', '2017-07-15 23:26:08');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table batik.pejabat
CREATE TABLE IF NOT EXISTS `pejabat` (
  `id_pejabat` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `prioritas` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_pejabat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.pejabat: ~0 rows (approximately)
/*!40000 ALTER TABLE `pejabat` DISABLE KEYS */;
INSERT INTO `pejabat` (`id_pejabat`, `nama`, `jabatan`, `foto`, `prioritas`) VALUES
	(3, 'zc 2', 'czxc 2', '150013394160_1_energetics_noni_(1).jpg', 12);
/*!40000 ALTER TABLE `pejabat` ENABLE KEYS */;

-- Dumping structure for table batik.pesan
CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '0',
  `pesan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.pesan: ~0 rows (approximately)
/*!40000 ALTER TABLE `pesan` DISABLE KEYS */;
INSERT INTO `pesan` (`id_pesan`, `nama`, `email`, `status`, `pesan`, `created_at`) VALUES
	(2, 'sdf', 'sdf', '1', 'sdf', '2018-07-21 21:27:15');
/*!40000 ALTER TABLE `pesan` ENABLE KEYS */;

-- Dumping structure for table batik.potensi
CREATE TABLE IF NOT EXISTS `potensi` (
  `id_potensi` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_potensi`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.potensi: ~2 rows (approximately)
/*!40000 ALTER TABLE `potensi` DISABLE KEYS */;
INSERT INTO `potensi` (`id_potensi`, `judul`, `deskripsi`, `cover`, `view`, `created_at`) VALUES
	(7, 'ini test potensi', '<p>isi test potensi</p>\r\n', '14999987216-03-11_MARK_green_blueberry_fruit_after_bloom_.jpg', 5, '2017-07-15 20:43:38'),
	(8, 'test potensi 2', '<p>test potensi 2</p>\r\n', '150002551460_1_energetics_noni_(1).jpg', 26, '2017-07-15 21:11:15');
/*!40000 ALTER TABLE `potensi` ENABLE KEYS */;

-- Dumping structure for table batik.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL,
  `view` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stok` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.produk: ~1 rows (approximately)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
INSERT INTO `produk` (`id_produk`, `judul`, `deskripsi`, `cover`, `view`, `harga`, `created_at`, `stok`) VALUES
	(4, 'ini produk2', '<p>isi produk2</p>\r\n', '14996150512_i.jpg', 64, 4000, '2018-08-13 20:06:52', 300);
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

-- Dumping structure for table batik.profil
CREATE TABLE IF NOT EXISTS `profil` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `nama_desa` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table batik.profil: ~0 rows (approximately)
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
INSERT INTO `profil` (`id_profil`, `nama_desa`, `gambar`, `deskripsi`) VALUES
	(1, 'Kripsku.com', 'profil.png', 'Ini Kripsku.com<br>');
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;

-- Dumping structure for table batik.slider
CREATE TABLE IF NOT EXISTS `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `cover` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table batik.slider: ~0 rows (approximately)
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
INSERT INTO `slider` (`id_slider`, `judul`, `deskripsi`, `cover`, `created_at`) VALUES
	(5, 'Batik Pecel', '', '1534173171slide_1.jpg', '2018-08-13 22:24:53'),
	(6, 'Murni - Madiun', '', '1534174659slide_2.jpg', '2018-08-13 22:37:39');
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
