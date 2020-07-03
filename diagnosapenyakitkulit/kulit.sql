-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 12:24 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kulit`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pakar`
--

CREATE TABLE `data_pakar` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pakar`
--

INSERT INTO `data_pakar` (`username`, `password`, `pertanyaan`, `jawaban`) VALUES
('pakar', '1bb091395214f561c3f9a450d8406a09', 'Apa Makanan Favorit Anda?', 'd9c84901c7cdbfddbc3b75af86ba1701');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `usia` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`username`, `password`, `nama_user`, `usia`, `jenis_kelamin`, `alamat`, `pertanyaan`, `jawaban`) VALUES
('andris', '856f4aa0a8e175c3bd26973fe82ec197', 'andri', 26, 'L', 'brebes', 'Apa Makanan Favorit Anda?', 'bffa783a022fe2d98692014dda6d7a4c'),
('indah', 'ce7b38d6b48592a81e8d57930676c201', 'Nur Indah K', 22, 'P', 'Jakarta', 'Apa Makanan Favorit Anda?', '01b4821e7178532e018532c38aad4b06'),
('nurindah', '90a42dd8510469ba90f7e489cf6ecac9', 'Nur indah kurniawati', 22, 'P', 'jakarta barat', 'Di Kota Manakah Ibu Anda Lahir?', '7b16366944f14135ba0eaa27ab6eb6d1'),
('trimulyo', '9db9240f23a4bec2cfd8b32c0f301c5e', 'Tri Mulyo', 24, 'L', 'ghgfhgf', 'Apa Makanan Favorit Anda?', 'b528dd3d5d4b186ca00872c6d3899032'),
('trindah', '55b304e5e9a1ce263ba8178eedaae7a8', 'Indah', 21, 'L', 'Rerngas Pendawa', 'Apa Makanan Favorit Anda?', 'dcb8fe4f77042d40d5c9394f4abf5f73'),
('zaka123', '255e9c77cd1689c3669ffe8637f5fae0', 'Zaka', 23, 'L', 'kayu besar', 'Apa Makanan Favorit Anda?', '4dc2a159b17b4725943816b8ba6d7ff5');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `kode_induk_ya` varchar(4) NOT NULL,
  `kode_induk_tidak` varchar(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`, `kode_induk_ya`, `kode_induk_tidak`) VALUES
('G001', 'Warna Kemerahan', '', ''),
('G002', 'Warna keputihan', '', 'G001'),
('G003', 'Warna kekuningan', '', 'G002'),
('G004', 'Adanya sisik', 'G001', 'G003'),
('G005', 'Ruam kulit berbagai ukuran', '', 'G004'),
('G006', 'Terjadi dimana saja', 'G005', 'G005'),
('G007', 'Warna bervariasi', 'G006', ''),
('G008', 'Bercak dikulit kepala', 'G004', 'G007'),
('G009', 'Rambut menjadi rontok', 'G008', 'G008'),
('G010', 'Terbentuknya titik-titk hitam dikepala', 'G009', 'G009'),
('G011', 'Adanya penonjolan padat', 'G010', 'G010'),
('G012', 'Terasa nyeri', '', 'G011'),
('G013', 'Bintik-bintik kemerahan', 'G012', 'G012'),
('G014', 'Bernanah', 'G013', 'G013'),
('G015', 'Rambut menjadi rapuh', 'G014', 'G014'),
('G016', 'Kulit yang lembab', 'G005', 'G015'),
('G017', 'Pada wajah, badan, lengan dan tungkai', 'G016', 'G016'),
('G018', 'Berbentuk adanya lingkaran-lingkaran dipermukaan kulit', '', 'G017'),
('G019', 'Menyerang permukaan kulit halus', 'G018', ''),
('G020', 'Basah', 'G012', 'G019'),
('G021', 'Adanya gelembung-gelembung berisi cairan', 'G020', 'G012'),
('G022', 'Pada telapak kaki', 'G021', ''),
('G023', 'Penebalan kulit', 'G022', 'G003'),
('G024', 'Pada pergelangan tangan sampai jari', 'G021', 'G023'),
('G025', 'Rusaknya kukuk', '', 'G024'),
('G026', 'Yang diserang pada kuku', 'G025', 'G025'),
('G027', 'Pada kulit, kuku, dan vagina', '', 'G026'),
('G028', 'Terasa panas', 'G027', 'G027'),
('G029', 'Masuknya spora kedalam kulit melalui luka', '', 'G028'),
('G030', 'Kerusakan kulit epidermis', 'G029', 'G029'),
('G031', 'Pembengkakan', '', 'G030'),
('G032', 'Menjadi benjolan keras', 'G031', 'G031'),
('G033', 'Keluarnya cairan-keputih-putihan', 'G032', 'G032'),
('G034', 'Pada leher, wajah, dinding perut, dada', 'G033', 'G033'),
('G035', 'Masuknya jamur kedalam kulit dari tanah melalui abrasi kulit.', 'G022', 'G022'),
('G036', 'Menyerupai kembang kol', 'G035', 'G035'),
('G037', 'Lepuh-lepuh', 'G023', 'G023'),
('G038', 'Apabila lepuh-lepuh pecah dapat menimbulkan tumpukan-tumpukan cairan yang mengening berwarna cokelat', 'G037', 'G037'),
('G039', 'Pada ketiak, dada, punggung, tangan', 'G038', 'G038'),
('G040', 'Adanya bintik-bintik putih', 'G012', 'G012'),
('G041', 'Disekitar rambut', 'G040', 'G040');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id_diagnosa` int(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(4) NOT NULL,
  `tanggal_diagnosa` datetime NOT NULL,
  `persentase` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_diagnosa`, `username`, `kode_penyakit`, `tanggal_diagnosa`, `persentase`) VALUES
(129, 'nurindah', 'P004', '2017-08-24 18:51:12', 40),
(130, 'nurindah', 'P004', '2017-08-27 17:51:28', 40),
(131, 'nurindah', 'P007', '2017-08-28 16:43:32', 50),
(132, 'nurindah', 'P004', '2017-08-28 17:47:55', 40),
(136, 'nurindah', 'P004', '2017-08-28 18:01:27', 100),
(137, 'nurindah', 'P004', '2017-09-10 15:20:07', 200),
(138, 'nurindah', 'P004', '2017-09-17 16:27:30', 250),
(139, 'nurindah', 'P004', '2017-09-17 16:27:33', 200),
(140, 'nurindah', 'P004', '2017-09-17 16:29:28', 200),
(141, 'trindah', '', '2017-09-17 16:34:47', 0),
(142, 'trindah', 'P005', '2017-09-17 16:35:44', 300),
(143, 'trindah', 'P003', '2017-09-17 16:39:44', 20),
(144, 'nurindah', 'P007', '2017-09-17 16:42:35', 75),
(145, 'nurindah', 'P006', '2017-09-22 20:41:53', 150),
(146, 'nurindah', 'P010', '2017-09-23 14:01:46', 200),
(147, 'nurindah', '', '2017-09-23 14:47:42', 0),
(148, 'nurindah', 'P010', '2017-09-23 17:10:12', 150),
(149, 'nurindah', '', '2017-09-23 17:18:16', 0),
(150, 'nurindah', 'P010', '2017-09-23 17:33:49', 100),
(151, 'nurindah', 'P008', '2017-09-29 10:57:05', 200),
(152, 'zaka123', 'P010', '2020-06-08 20:30:05', 150),
(153, 'trimulyo', 'P005', '2020-06-11 22:11:11', 150),
(154, 'zaka123', '', '2020-06-28 14:26:47', 0),
(155, 'zaka123', '', '2020-06-28 22:40:16', 0),
(156, 'zaka123', '', '2020-06-28 22:49:19', 0),
(157, 'zaka123', 'P002', '2020-06-28 22:50:14', 60),
(158, 'zaka123', 'P002', '2020-06-28 23:17:53', 10),
(159, 'zaka123', '', '2020-06-28 23:18:07', 0),
(160, 'zaka123', '', '2020-06-28 23:18:36', 0),
(161, 'zaka123', '', '2020-06-29 19:29:25', 0),
(162, 'zaka123', '', '2020-06-29 19:44:43', 0),
(163, 'zaka123', 'P002', '2020-06-29 19:49:11', 40),
(164, 'trimulyo', '', '2020-06-29 21:35:01', 0),
(165, 'trimulyo', '', '2020-06-29 21:35:26', 0),
(166, 'trimulyo', 'P003', '2020-06-29 21:39:51', 20),
(167, 'trimulyo', 'P003', '2020-06-29 21:39:58', 20),
(168, 'trimulyo', 'P003', '2020-06-29 21:40:50', 20),
(169, 'trimulyo', '', '2020-06-29 21:54:24', 0),
(170, 'andris', 'P003', '2020-07-03 00:49:36', 60),
(171, 'andris', '', '2020-07-03 00:58:18', 0),
(172, 'andris', 'P003', '2020-07-03 00:58:32', 60),
(173, 'andris', 'P003', '2020-07-03 01:13:45', 40),
(174, 'andris', '', '2020-07-03 01:14:03', 0),
(175, 'andris', 'P002', '2020-07-03 01:16:55', 20),
(176, 'andris', '', '2020-07-03 02:06:33', 0),
(177, 'andris', 'P002', '2020-07-03 02:08:00', 160),
(178, 'andris', '', '2020-07-03 02:08:20', 0),
(179, 'andris', 'P013', '2020-07-03 02:08:23', 25);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `definisi` varchar(1000) NOT NULL,
  `pengobatan` varchar(1000) NOT NULL,
  `pencegahan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `definisi`, `pengobatan`, `pencegahan`) VALUES
('P001', 'Tinea Versikolor (Panu)', 'Tinea versicolor (panu) adalah infeksi jamur pada kulit yang masalahnya cukup umum. Jamur ini mengganggu pigmentasi normal kulit, lalu menyebabkan bercak-bercak kecil dan berwarna.', 'Jika gejala panu tidak parah, pengobatan dapat dilakukan di rumah. Krim antijamur yang dijual bebas dapat digunakan untuk mengobati infeksi. Contoh obat tersebut, di antaranya:\r\n\r\nClotrimazole\r\nMiconazole\r\nSelenium sulfide\r\nTerbinafine\r\nObat yang biasanya diresepkan dokter, antara lain:\r\n\r\nCiclopirox\r\nKetoconazole\r\nFlukonazol\r\nItraconazole', 'Menghindari cuaca panas yang berlebihan\r\nMenghindari paparan sinar matahari yang berlebihan\r\nMenghindari keringat berlebih'),
('P002', 'Tinea Kapitis', 'Tinea capitis merupakan penyakit yang disebabkan oleh infeksi jamur pada kulit kepala. Penyakit ini sangat menular dan kebanyakan diidap oleh anak-anak, mulai dari balita sampai usia sekolah. Komplikasi tinea capitis bisa berupa kerontokan rambut dan luka permanen di kulit kepala.', 'Dalam mengobati tinea capitis, dokter biasanya akan mengombinasikan sampo khusus dengan obat oral (obat yang diminum). Obat oral diberikan dengan tujuan membunuh jamur penyebab tinea capitis, sedangkan sampo berfungsi mencegah penyebaran infeksi dan membasmi spora jamur di kepala.', 'Selalu menjaga kebersihan tangan.\r\nMencuci rambut dan kulit kepala secara rutin dengan sampo.\r\nJangan berbagi penggunaan barang-barang, seperti sisir, handuk, dan baju, dengan orang lain, atau meminjamkan barang-barang tersebut dengan orang lain.\r\nMenghindari hewan yang terinfeksi.'),
('P003', 'Tinea Barbae', 'Tinea barbae adalah infeksi jamur kulit pada area berambut di wajah dan leher. Kondisi ini menyerang pria dewasa dan tidak pernah terjadi pada anak-anak. Sering kali, kondisi ini dialami oleh peternak karena adanya kontak langsung dengan hewan ternak yang terinfeksi jamur.', 'Pada kasus tinea barbae yang ringan, dokter dapat memberi obat-obatan antijamur topikal, seperti krim, losion, atau shampo antijamur. Dianjurkan untuk mencukur rambut di bagian yang terinfeksi terlebih dahulu, sebelum memberikan antijamur topikal.\r\n\r\nPada kasus yang lebih parah, diperlukan obat-obatan tablet untuk dikonsumsi. Salah satunya adalah griseofulvin yang dikonsumsi pasien selama 2-3 minggu. Obat ini bekerja dengan cara menghambat perkembangan sel jamur. Selain griseofulvin, terbinafine dan itraconazole juga dapat digunakan untuk mengatasi tinea barbae.', 'Karena penyebarannya diperantarai hewan, maka menjaga kebersihan setelah melakukan kontak dengan hewan adalah kuncinya. Pastikan hewan peliharaan diperiksa secara teratur guna menghindari berkembang biaknya jamur pada hewan yang dapat menjadi media penyebaran infeksi.'),
('P004', 'Tinea Korporis', 'Tinea corporis adalah infeksi jamur atau kurap di kulit leher, badan, lengan, dan tungkai. Tinea corporis akan menimbulkan ruam melingkar yang terasa gatal. Kondisi ini bisa menular melalui kontak langsung dengan penderita tinea corporis.\r\n', 'Pengobatan tinea corporis bertujuan untuk mengatasi infeksi dan mencegah terjadinya komplikasi. Dokter akan memberikan antijamur krim atau salep. Ada beberapa jenis antijamur yang bisa diberikan untuk mengatasi infeksi jamur pada tinea kapitis, yaitu:\r\n\r\nClotrimazol\r\nMikonazol\r\nEconazole\r\nKetoconazole\r\nTerbinafine', 'Mencuci tangan, pakaian, handuk, serta seprai secara rutin.\r\nMengonsumsi makanan yang bergizi dan rutin berolahraga.\r\nMengenakan pakaian berukuran longgar.\r\nMengganti pakaian dalam dan kaus kaki setiap hari.\r\nMemeriksakan hewan peliharaan ke dokter hewan secara rutin.'),
('P005', 'Tinea Imbrikata', 'Tinea Imbrikata atau kurap bersisik adalah salah satu penyakit kulit yang disebabkan jamur Trychophyton concentricum. Penyakit ini termasuk golongan dermatofitosis kronis dengan gambaran morfologisyang khas, berupa papulo-skuamosa yang tersusun dalam lingkaran-lingkaran konsentris.', 'Diantara beberapa jenis penyakit jamur kulit, tinea imbrikata termasuk salah satu yang sangat sulit di obati dan biasanya berlangsung menahun. Pengobatan sistemik pada penyakit ini dapat dilakukan dengan memberi Griseofulvin dengan dosis 500 mg sehari selama 4 minggu.Namun masih sering kambuh setelah pengobatan sehingga memerlukan pengobatan ulang lebih lama', 'Untuk mencegah agar penyakit ini tidak kambuh lagi, dapat dilakukan dengan menjaga kebersihan badan serta lingkungan.Keadaan yang lembab dan panas dapat mempengaruhi penyebaran penyakit ini.Oleh karena itu, hindari mengenakan pakaian yang tidak menyerap keringat. Selain itu, mandilah secara teratur menggunakan sabun antiseptik.'),
('P006', 'Tinea Pedis (Kaki Atlit)', 'Tinea pedis atau kurap kaki adalah penyakit yang juga dikenal dengan istilah athleteâ€™s foot. Penyakit ini menyebabkan munculnya kerak, kulit yang bersisik/berkerak atau melepuh, serta rasa gatal pada area kaki yang terinfeksi.', 'Sekitar seper tiga kasus tinea pedis sembuh tanpa obat. Namun, pemberian obat topikal antijamur pada kulit dapat sangat membantu meredakan infeksi. Beberapa pengobatan alami juga dapat dilakukan di rumah, seperti rajin mencuci kaki, begitu juga dengan menjaga kebersihan kaos kaki dan sepatu. Hindari iklim lembap dalam ruangan penyimpanan sepatu dan tambahkan larutan pemutih untuk mencuci kaos kaki atau sepatu. Sepatu yang sudah terinfeksi sebaiknya tidak digunakan lagi untuk mencegah kaki terinfeksi kembali saat menggunakan sepatu tersebut.', 'Memastikan kaki dalam keadaan kering dengan membatasi penggunaan sepatu yang terlalu ketat dan sempit.\r\nâ€¢	Menggunakan bedak antijamur pada kaki yang terinfeksi untuk mencegah infeksi tinea pedis kembali.\r\nâ€¢	Menjaga agar kuku kaki selalu pendek atau terpotong rapi. Gunakanlah gunting kuku yang berbeda dengan gunting kuku yang digunakan untuk area yang sedang terinfeksi agar tidak dengan mudah menyebar.\r\nâ€¢	Gunakan kaos kaki yang terbuat dari bahan yang ringan dan dapat menyerap kelembapan se'),
('P007', 'Tinea Manus', 'Tinea manus\r\nadalah infeksi jamur di tangan yang disebabkan oleh dermatofita, yaitu sekelompok jamur yang tumbuh di permukaan kulit. Jamur ini mudah tumbuh dan berkembang biak di lingkungan yang lembab, seperti kamar mandi dan kolam renang, atau di daerah beriklim tropis.', 'Untuk mengobati infeksi jamur di tangan, dokter akan meresepkan obat antijamur. Obat ini tersedia dalam 2 bentuk, yaitu:\r\nObat antijamur oles (topikal)\r\nObat antijamur topikal, seperti clotrimazole, ketoconazole, dan miconazole, tersedia dalam bentuk krim atau salep. Obat antijamur topikal digunakan dengan cara dioleskan pada kulit yang terinfeksi jamur, umumnya sebanyak 2 kali sehari.', 'Cuci tangan dengan air dan sabun hingga bersih, kemudian keringkan.\r\nâ€¢	Hindari menyentuh tangan penderita tinea manum.\r\nâ€¢	Hindari menggaruk tangan yang gatal karena bisa menyebabkan kulit tangan terluka dan terinfeksi bakteri.\r\nâ€¢	Hindari berbagi penggunaan alat-alat pribadi dengan orang lain untuk mencegah penularan infeksi jamur.'),
('P008', 'Tinea Unguium', 'Tinea Unguium\r\nOnikomikosis atau tinea unguium adalah infeksi jamur yang menyerang kuku jari kaki atau tangan Anda. Ketika jamur tumbuh pada kuku, gejala awalnya mungkin tidak â€œkasat mataâ€. Namun seiring berjalannya waktu, tinea unguium akan memburuk, dan gejala lain mulai bermunculan.', 'Obat pelapis kuku\r\nDokter dapat memberikan ciclopirox yang berbentuk seperti kuteks. Obat pelapis kuku ini digunakan dengan cara dioleskan pada kuku dan kulit di sekitarnya, satu kali sehari.\r\nSetiap 7 hari pasien perlu membersihkan lapisan kuku tersebut dengan alkohol sebelum melapisinya lagi dengan ciclopirox. Jika diperlukan, obat pelapis kuku ini dapat digunakan setiap hari selama setahun sesuai anjuran dokter.', 'â€¢	Mencuci tangan dan kaki secara teratur, apalagi ketika Anda tidak sengaja menyentuh kuku kaki atau tangan yang sudah terinfeksi jamur\r\nâ€¢	Memotong kuku secara lurus, kemudian menghaluskan tepinya\r\nâ€¢	Menggunakan kaus kaki yang menyerap keringat, atau mengganti kaus kaki secara berkala, sepanjang hari\r\nâ€¢	Membuang sepatu tua yang sudah jarang dipakai, atau membersihkannya dengan bubuk antijamur\r\nâ€¢	Memakai alas kaki saat berjalan di area kolam renang atau ruang ganti'),
('P009', 'Kandidiasis', 'Kandidiasis\r\nkandidiasis adalah infeksi jamur yang disebabkan oleh jamur Candida albicans. Infeksi jamur ini biasanya terjadi di kulit, mulut, dan organ intim. Jika tidak mendapatkan penanganan, infeksi akibat jamur ini bisa menyebar ke bagian tubuh lain, seperti usus, ginjal, jantung, dan otak.', 'Pengobatan : obat anti jamur yang bisa dipakai\r\nâ€¢	Amphotericin B\r\nâ€¢	Butoconazole\r\nâ€¢	Caspofungin\r\nâ€¢	Clotrimazole\r\nâ€¢	Flukonazol\r\nâ€¢	Miconazole\r\nâ€¢	Micafungin\r\nâ€¢	Nystatin\r\nâ€¢	Tioconale\r\nâ€¢	Vorikonazol', 'â€¢	Jaga kebersihan mulut dan gigi dengan rutin menggosok gigi dan melakukan pemeriksaan ke dokter gigi minimal 6 bulan sekali\r\nâ€¢	Hentikan kebiasaan merokok.\r\nâ€¢	Gunakan pakaian yang nyaman dan menyerap keringat\r\nâ€¢	Ganti pakaian, pakaian dalam, dan kaos kaku, secara teratur.\r\nâ€¢	Ganti pembalut secara rutin saat menstruasi.\r\nâ€¢	Konsumsi makanan bergizi seimbang dan probiotik.\r\nâ€¢	Bersihkan area vagina dengan air mengalir, serta hindari penggunaan panty liner dan sabun pembersih kewanitaan'),
('P010', 'Sporotrikosis', 'Sporotrichosis merupakan suatu infeksi kulit yang disebabkan oleh jamur Sporothrix schenckii. Jamur jenis ini sering ditemukan pada duri bunga mawar, jerami, sphagnum moss (spesies lumut atau gambut yang umumnya digunakan untuk media tanaman hias), ranting, dan tanah. Sporotrichosis termasuk infeksi yang jarang ditemukan dan dapat memakan waktu harian hingga bulanan untuk menampakkan gejala. Infeksi ini umumnya diidap oleh orang yang suka berkebun, memiliki usaha kembang biak mawar dan lumut, produsen jerami, serta orang yang bekerja mengolah tanah.', 'Umumnya, infeksi sporotrichosis hanya melibatkan lapisan kulit terluar atau jaringan di bawah kulit. Pengobatan sporotrichosis adalah dengan memberikan obat-obatan antijamur selama beberapa bulan. Obat yang paling umum dokter berikan untuk infeksi ini adalah Itraconazole yang diminum rutin selama 3 hingga 6 bulan. Obat lainnya yang juga dapat diberikan adalah supersaturated potassium iodide (SSKI). Meski demikian, obat SSKI dan Itraconazole tidak boleh digunakan selama kehamilan. ', 'Mencuci tangan dengan saksama menggunakan cairan desinfektan setelah melakukan aktivitas yang berisiko menularkan jamur.\r\nâ€¢	Menggunakan sarung tangan selama merawat atau menangani hewan yang berisiko menularkan infeksi sporotrichosis, terutama kucing.\r\nâ€¢	Menggunakan sarung tangan, baju lengan panjang, dan celana panjang ketika bekerja di semak mawar, rumput kering, tanaman berduri, atau tanaman lain yang berisiko menyebabkan sporotrichosis.'),
('P011', 'Aktinomikosis', 'Aktinomikosis adalah penyakit infeksi yang disebabkan oleh bakteri Actinomyces. Aktinomikosis atau actinomycosis dapat terjadi pada berbagai organ tubuh, seperti mulut, dada, panggul, dan perut.\r\nAktinomikosis ditandai dengan munculnya borok atau abses di bagian tubuh yang terinfeksi.', 'Pengobatan utama aktinomikosis adalah dengan pemberian obat antibiotik. Beberapa jenis antibiotik yang akan diberikan untuk mengatasi kondisi ini, yaitu penicillin, tetrasiklin, clindamycin, dan erythromisin.', 'Pencegahan aktinomikosis dilakukan dengan menghindari faktor risiko yang bisa memicu kondisi ini. Beberapa langkah yang dapat dilakukan adalah:\r\n-Menjaga kebersihan rongga mulut dan gigi.\r\n-Jika mengalami cedera, segera berobat ke dokter.\r\n-Jika menderita diabetes atau sedang mengalami ganguan sistem imun, konsultasikan dengan dokter untuk mengetahui langkah pencegahan infeksi.\r\n-Pengguna alat kontrasepsi IUD (KB spiral) juga harus mengetahui waktu kedaluwarsa IUD yang digunakan, sehingga bisa m'),
('P012', 'Kromomikosis', 'Kromomikosis merupakan salah satu infeksi kronik pada kulit dan jaringan subkutan yang disebabkan jamur berpigmen dari golongan Dermatiaceae yang menginvasi ke dalam dermis dan berbentuk tonjolan-tonjolan padat dipermukaan kulit.', '-Larutan kalium yodida 30-50 tetes sehari selama 1-2 bulan.\r\n-Suntikan amfoterisin B intralesi.\r\n-Preparat-preparat azol seperti ketokonazol 100-200 mg/hari selama 1-2 bulan.\r\n-5 fluorositosin dengan dosis 100-150 mg/hari dibagi dalam 4 dosis selama 1-2 bulan.\r\n', 'Pencegahan penyakit ini dapat dilakukan dengan menjaga kebersihan lingkungan dan tubuh, terutama kulit. Hindari kontak langsung dengan tanah yang kotor. Bersihkan tubuh secara teratur dengan sabun antiseptik terutama setelah kontak langsung dengan tanah'),
('P013', 'Impetigo Krustosa (Impetigo Kontagiosa)', 'Impetigo krustosa adalah infeksi kulit menular yang banyak dialami oleh bayi dan anak-anak. Infeksi ini ditandai dengan kemunculan bercak merah dan lepuhan pada kulit, terutama di bagian wajah, tangan, dan kaki.', 'Salep atau krim antibiotik digunakan jika infeksi yang terjadi tergolong ringan, hanya menyerang satu area tubuh, dan belum menyebar terlalu luas. Sebelum mengoleskan krim atau salep antIbiotik, dianjurkan untuk merendam luka dengan air hangat atau menggunakan kompres hangat untuk melunakkan koreng.', '-Rajin mencuci tangan, terutama setelah beraktivitas di luar.\r\n-Menutup luka agar bakteri tidak masuk ke dalam tubuh.\r\n-Memotong dan selalu menjaga kebersihan kuku.\r\n-Tidak menyentuh atau menggaruk luka untuk menurunkan risiko penyebaran infeksi.\r\n-Mencuci pakaian atau membersihkan benda yang telah digunakan, untuk menghilangkan bakteri.'),
('P014', 'Impetigo Bulosa', 'Impetigo bulosa merupakan jenis impetigo atau infeksi kulit menular yang lebih serius,', 'Salep atau krim antibiotik digunakan jika infeksi yang terjadi tergolong ringan, hanya menyerang satu area tubuh, dan belum menyebar terlalu luas. Sebelum mengoleskan krim atau salep antIbiotik, dianjurkan untuk merendam luka dengan air hangat atau menggunakan kompres hangat untuk melunakkan koreng.', '-Rajin mencuci tangan, terutama setelah beraktivitas di luar.\r\n-Menutup luka agar bakteri tidak masuk ke dalam tubuh.\r\n-Memotong dan selalu menjaga kebersihan kuku.\r\n-Tidak menyentuh atau menggaruk luka untuk menurunkan risiko penyebaran infeksi.\r\n-Mencuci pakaian atau membersihkan benda yang telah digunakan, untuk menghilangkan bakteri.'),
('P015', 'Furunkel', 'Bisul atau furunkel adalah benjolan merah pada kulit yang berisi nanah dan terasa nyeri. Kondisi ini paling sering disebabkan oleh infeksi bakteri yang memicu peradangan pada folikel rambut, yaitu tempat tumbuhnya rambut.', '-Mengompres bisul dengan air hangat 3 kali sehari guna mengurangi rasa sakit sekaligus mendorong nanah untuk berkumpul di puncak benjolan\r\n-Membersihkan bisul yang pecah dengan kain kasa steril dan sabun anti-bakteri, lalu menutup bisul dengan kain kasa steril\r\n-Mengganti perban sesering mungkin, misalnya 2â€“3 kali sehari\r\n-Mencuci tangan dengan air dan sabun sebelum dan sesudah mengobati bisul', '-Tidak berbagi penggunaan barang pribadi dengan orang lain, misalnya handuk, alat cukur, atau pakaian\r\n-Membiasakan untuk mencuci tangan secara teratur dengan sabun\r\n-Bila terdapat luka, baik goresan, luka robek, ataupun luka potong, segera bersihkan dan rawat luka dengan benar\r\n-Olahraga teratur dan makan makanan yang sehat untuk meningkatkan daya tahan tubuh\r\n-Menghindari kontak langsung dengan penderita infeksi kulit');

-- --------------------------------------------------------

--
-- Table structure for table `relasi_penyakit_gejala`
--

CREATE TABLE `relasi_penyakit_gejala` (
  `kode_penyakit` varchar(4) NOT NULL,
  `kode_gejala` varchar(4) NOT NULL,
  `bobot` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi_penyakit_gejala`
--

INSERT INTO `relasi_penyakit_gejala` (`kode_penyakit`, `kode_gejala`, `bobot`) VALUES
('P001', 'G002', 30),
('P001', 'G004', 20),
('P001', 'G005', 20),
('P001', 'G006', 15),
('P001', 'G007', 15),
('P002', 'G001', 20),
('P002', 'G004', 20),
('P002', 'G008', 30),
('P002', 'G009', 10),
('P002', 'G010', 10),
('P002', 'G011', 10),
('P003', 'G001', 40),
('P003', 'G012', 10),
('P003', 'G013', 10),
('P003', 'G014', 20),
('P003', 'G015', 20),
('P004', 'G001', 30),
('P004', 'G005', 40),
('P004', 'G016', 15),
('P004', 'G017', 15),
('P005', 'G002', 30),
('P005', 'G004', 20),
('P005', 'G018', 25),
('P005', 'G019', 25),
('P006', 'G002', 20),
('P006', 'G004', 20),
('P006', 'G012', 10),
('P006', 'G020', 10),
('P006', 'G021', 10),
('P006', 'G022', 10),
('P006', 'G023', 20),
('P007', 'G001', 25),
('P007', 'G004', 25),
('P007', 'G021', 25),
('P007', 'G024', 25),
('P008', 'G002', 20),
('P008', 'G012', 30),
('P008', 'G025', 25),
('P008', 'G026', 25),
('P009', 'G001', 20),
('P009', 'G004', 20),
('P009', 'G012', 20),
('P009', 'G021', 10),
('P009', 'G027', 10),
('P009', 'G028', 20),
('P010', 'G001', 30),
('P010', 'G011', 20),
('P010', 'G029', 25),
('P010', 'G030', 25),
('P011', 'G001', 20),
('P011', 'G031', 20),
('P011', 'G032', 20),
('P011', 'G033', 20),
('P011', 'G034', 20),
('P012', 'G011', 25),
('P012', 'G022', 25),
('P012', 'G035', 30),
('P012', 'G036', 20),
('P013', 'G003', 25),
('P013', 'G005', 25),
('P013', 'G017', 30),
('P013', 'G021', 20),
('P014', 'G003', 30),
('P014', 'G023', 20),
('P014', 'G037', 25),
('P014', 'G038', 25),
('P015', 'G002', 40),
('P015', 'G011', 40),
('P015', 'G012', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `username` varchar(10) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pakar`
--
ALTER TABLE `data_pakar`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `nama_user` (`nama_user`),
  ADD KEY `usia` (`usia`),
  ADD KEY `alamat` (`alamat`),
  ADD KEY `jenis_kelamin` (`jenis_kelamin`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`),
  ADD KEY `kode_induk_ya` (`kode_induk_ya`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `relasi_penyakit_gejala`
--
ALTER TABLE `relasi_penyakit_gejala`
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id_diagnosa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
