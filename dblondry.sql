-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 10:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblondry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'loiyen', '12345'),
(2, 'cava', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(6) NOT NULL,
  `nama` varchar(6) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `rekening` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama`, `bank`, `rekening`) VALUES
(1, 'alan', 'BRI', '1231-1231-1231');

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` int(6) NOT NULL,
  `id_pesanan` int(6) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `nominal` int(15) NOT NULL,
  `bukti` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `id_pesanan`, `nama_customer`, `bank`, `nominal`, `bukti`, `waktu`) VALUES
(2, 5, 'loiyen', 'BRI', 500000, '4-8-181x3003.jpg', '2023-12-10 19:49:48'),
(3, 6, 'alan 12', 'BRI', 80000, '4-8-181x3004.jpg', '2023-12-12 02:07:25'),
(4, 7, 'cava', 'BRI', 10000, '4-8-181x3005.jpg', '2023-12-12 02:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `telfon` varchar(20) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `username`, `password`, `email`, `alamat`, `telfon`, `date_created`) VALUES
(1, 'loiyen', '12345', 'loiyenten@gmail.com', 'yogyakarta', '082250590837', '2023-12-08 14:28:22'),
(3, 'admin', 'admin', 'admin@gmail.com', 'yogyakarta', '12312313131313', '2023-12-08 14:30:44'),
(4, 'alan', '12345', 'sempurna@gmail.com', 'Jl. Ring Road Utara, Kaliwaru, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '082250590837', '2023-12-12 01:51:57'),
(5, 'cava', '12345', 'cava123@gmail.com', 'Jl. Ring Road Utara, Kaliwaru, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', '123456789', '2023-12-12 02:10:10'),
(6, 'adam', 'adam123', 'adam@gmail.com', 'Sleman, Yogyakarta', '087726218960', '2023-12-12 02:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(6) NOT NULL,
  `nama_paket` varchar(120) NOT NULL,
  `deskripsi` text NOT NULL,
  `waktu_kerja` varchar(15) NOT NULL,
  `harga` int(15) NOT NULL,
  `pewangi` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `deskripsi`, `waktu_kerja`, `harga`, `pewangi`, `waktu`) VALUES
(3, 'Cucian Harian', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '3', 5000, 'Bebas Pilih', '2023-12-10 01:39:17'),
(4, 'Cucian Formal', 'Untuk pakaian formal seperti kemeja, setelan jas, dan blus.\r\nMungkin termasuk pembersihan kering untuk pakaian formal.\r\nHarga berdasarkan jenis dan berat cucian.', '', 6000, '', '2023-12-11 00:16:38'),
(5, 'Cucian Anak-anak', 'Untuk pakaian anak-anak, seringkali memerlukan perlakuan yang lebih lembut.\r\nHarga berdasarkan berat cucian.', '', 0, '', '2023-12-08 23:02:01'),
(6, 'Cucian Spesial', 'Khusus untuk pakaian berbahan wol, sutra, atau bahan delikat lainnya.\r\nMungkin termasuk pembersihan kering atau metode pencucian khusus.\r\nHarga berdasarkan jenis dan berat cucian.', '2', 15000, 'flower', '2023-12-12 08:03:26'),
(7, 'Cucian Kilat', 'Layanan cepat untuk pesanan yang membutuhkan penanganan lebih cepat.\r\nHarga mungkin sedikit lebih tinggi.', '', 0, '', '2023-12-08 23:05:34'),
(8, 'Cucian Spesial 2', 'Untuk pakaian formal seperti kemeja, setelan jas, dan blus. Mungkin termasuk pembersihan kering untuk pakaian formal. Harga berdasarkan jenis dan berat cucian.', '2', 9000, 'bebas pilih', '2023-12-10 21:33:49'),
(9, 'paket cuci kilat boss', 'mencuci semu dengan raoih dan aman', '4', 12000, 'revil dan flower', '2023-12-12 01:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(6) NOT NULL,
  `id_customer` int(6) NOT NULL,
  `id_paket` int(6) NOT NULL,
  `jenis_cucian` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `status_kerja` varchar(100) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_customer`, `id_paket`, `jenis_cucian`, `jumlah`, `status`, `status_kerja`, `waktu`) VALUES
(1, 1, 3, 'baju dan celanan', 5, 'belum Bayar', 'sedang dikerjakan', '2023-12-11 01:39:12'),
(4, 1, 3, 'baju dan celanan', 10, 'belum Bayar', 'Selesai', '2023-12-12 07:55:12'),
(5, 1, 6, 'kemeja', 3, 'Sudah Dibayar', 'Selesai', '2023-12-11 04:04:02'),
(6, 1, 6, 'sepatu super', 5, 'Sudah Dibayar', 'sedang dikerjakan', '2023-12-12 08:07:25'),
(7, 5, 3, 'baju', 2, 'Sudah Dibayar', 'sedang dikerjakan', '2023-12-12 08:12:18'),
(8, 6, 8, 'MANUAL', 4, 'belum Bayar', 'menunggu pembayaran', '2023-12-12 02:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `pengantaran`
--

CREATE TABLE `pengantaran` (
  `id_antar` int(6) NOT NULL,
  `id_pesanan` int(6) NOT NULL,
  `id_customer` int(6) NOT NULL,
  `daerah` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengantaran`
--

INSERT INTO `pengantaran` (`id_antar`, `id_pesanan`, `id_customer`, `daerah`, `alamat`, `status`) VALUES
(1, 1, 1, 'candi gerbang', 'Jl. Ring Road Utara, Kaliwaru, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', 'Selesai'),
(2, 1, 1, 'candi gerbang ', 'Jl. Ring Road Utara, Ngringin, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281', 'Selesai'),
(3, 7, 5, 'condong ctur', 'jln bakri ', 'Selesai'),
(4, 8, 6, 'candi gerbang', 'jalan merdeka 1', 'Belum Selesai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indexes for table `pengantaran`
--
ALTER TABLE `pengantaran`
  ADD PRIMARY KEY (`id_antar`),
  ADD KEY `id_order` (`id_pesanan`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id_bayar` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengantaran`
--
ALTER TABLE `pengantaran`
  MODIFY `id_antar` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bayar`
--
ALTER TABLE `bayar`
  ADD CONSTRAINT `bayar_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengantaran`
--
ALTER TABLE `pengantaran`
  ADD CONSTRAINT `pengantaran_ibfk_1` FOREIGN KEY (`id_pesanan`) REFERENCES `pemesanan` (`id_pemesanan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pengantaran_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
