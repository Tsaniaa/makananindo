-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 02:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `makananindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kuliner`
--

CREATE TABLE `jenis_kuliner` (
  `id_jenis_kuliner` int(11) NOT NULL,
  `ikon` varchar(255) NOT NULL,
  `jenis_kuliner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kuliner`
--

INSERT INTO `jenis_kuliner` (`id_jenis_kuliner`, `ikon`, `jenis_kuliner`) VALUES
(1, 'https://upload.wikimedia.org/wikipedia/commons/e/ef/Tumpeng_Kompas_1.jpg', 'makanan'),
(2, 'https://upload.wikimedia.org/wikipedia/commons/2/26/Teh_Tarik.jpg', 'minuman'),
(3, 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Gandus.jpg', 'jajanan');

-- --------------------------------------------------------

--
-- Table structure for table `kuliner`
--

CREATE TABLE `kuliner` (
  `id_kuliner` int(11) NOT NULL,
  `id_jenis_kuliner` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `asal_daerah` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `bahan` text NOT NULL,
  `pembuatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuliner`
--

INSERT INTO `kuliner` (`id_kuliner`, `id_jenis_kuliner`, `gambar`, `nama`, `asal_daerah`, `deskripsi`, `bahan`, `pembuatan`) VALUES
(1, 3, 'https://upload.wikimedia.org/wikipedia/commons/1/1c/Wadai_Apam_Barabai.JPG', 'Apam Barabai', 'Barabai, Hulu Sungai Tengah, Kalimantan Selatan', 'Apam Barabai adalah makanan yang terbuat dari bahan dasar tepung beras, tape singkong, gula merah, dan gula putih yang berasal dari Barabai. Apam Barabai memiliki tampilan bulat, tipis dan berwarna coklat muda dan putih tergantung jenis gula yang digunakan. Tepung beras yang digunakan juga memberikan tekstur lembut dan memiliki aroma gula merah dari aren yang kuat. Apam Barabai dijual menggunakan kemasan dari daun pisang.', 'Tepung beras, gula merah', 'Proses pembuatan Apam Barabai masih menggunakan metode tradisional yaitu mengukus adonan dengan kayu bakar. Pembuatan kue Apam Barabai harus menunggu adonan yang mengembang dengan cara dibiarkan minimal 3-4 jam sejak mencampur semua bahan. Setelah dirasa cukup mengembang, adonan dituang ke dalam loyang dan dikukus selama 15 menit. Setelah matang, kue apam bisa disajikan atau dibungkus menggunakan daun pisang untuk dijual ke pengecer.'),
(2, 1, 'https://upload.wikimedia.org/wikipedia/commons/1/13/Lamb_rendang.jpg', 'Rendang', 'Sumatra Barat', 'Rendang (bahasa Minangkabau: randang; Jawi: رندڠ) adalah hidangan berbahan dasar daging yang dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan. Proses memasaknya memakan waktu berjam-jam (biasanya sekitar empat jam) hingga yang tinggal hanyalah potongan daging berwarna hitam pekat dan dedak. Dalam suhu ruangan, rendang dapat bertahan hingga berminggu-minggu. Rendang yang dimasak dalam waktu yang lebih singkat dan santannya belum mengering disebut kalio, berwarna cokelat terang keemasan.', 'Daging sapi, santan kelapa, cabai, bumbu', 'Proses memasak rendang asli dapat menghabiskan waktu berjam-jam (biasanya sekitar empat jam), karena itulah memasak rendang memerlukan waktu dan kesabaran. Potongan daging dimasak bersama bumbu dan santan dalam panas api yang tepat, diaduk pelan-pelan hingga santan dan bumbu terserap daging. Setelah mendidih, apinya dikecilkan dan terus diaduk hingga santan mengental dan menjadi kering. Memasak rendang harus sabar dan telaten ditunggui, senantiasa dengan hati-hati dibolak-balik agar santan mengering dan bumbu terserap sempurna, tanpa menghanguskan atau menghancurkan daging. Proses memasak ini dikenal dalam seni kuliner modern dengan istilah \'karamelisasi\'. Karena menggunakan banyak jenis bumbu, rendang dikenal memiliki cita rasa yang kompleks dan unik.'),
(3, 2, 'https://upload.wikimedia.org/wikipedia/commons/4/41/Teh_talua.JPG', 'Teh talua', 'Sumatra Barat', 'Teh talua atau teh telur adalah minuman manis khas Sumatra Barat yang dapat dijumpai di lapau, warung tradisional Minangkabau hingga restoran Padang. Minuman ini berupa teh ditambah gula dan telur yang sudah dikocok serta sedikit perasan jeruk nipis. Telur yang digunakan umumnya adalah telur ayam kampung. Teh talua biasanya dikonsumsi sebagai penambah stamina kerja.', 'Telur, Susu, Gula', 'Cara membuat teh talua cukup mudah. Pertama-tama, telur bebek atau telur ayam kampung dikocok, dicampur sedikit susu dan gula, hingga berbusa. Setelah itu, seduh dengan air teh panas. Sedikit perasan jeruk nipis dapat ditambahkan untuk menyamarkan bau amis dari telur. Jika didiamkan sejenak setelah diseduh dengan air teh yang panas, teh talua akan menampilkan lapis-lapis. Lapis atas berupa buih, lapis tengah berwarna putih, dan lapis dasar berwarna kecoklatan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  ADD PRIMARY KEY (`id_jenis_kuliner`);

--
-- Indexes for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD PRIMARY KEY (`id_kuliner`),
  ADD KEY `id_jenis_kuliner` (`id_jenis_kuliner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kuliner`
--
ALTER TABLE `jenis_kuliner`
  MODIFY `id_jenis_kuliner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kuliner`
--
ALTER TABLE `kuliner`
  MODIFY `id_kuliner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kuliner`
--
ALTER TABLE `kuliner`
  ADD CONSTRAINT `kuliner_ibfk_1` FOREIGN KEY (`id_jenis_kuliner`) REFERENCES `jenis_kuliner` (`id_jenis_kuliner`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
