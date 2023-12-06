-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 08:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `kode_barang` varchar(100) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `gambar_produk` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `kode_barang`, `nama_barang`, `stok`, `harga_beli`, `harga_jual`, `gambar_produk`) VALUES
(1, 'BRG01', 'Samsung M30s', 7, 2200000, 2500000, '735-samsung m30s.jpeg'),
(5, 'BRG02', 'Xiaomi Redmi Note 8', 10, 2700000, 3000000, '643-1-VivoX70Pro.jpg'),
(6, 'BRG03', 'Poco F3', 10, 3000000, 3350000, '933-340-redmi note 8.jpg'),
(7, 'BRG04', 'Xiaomi Redmi Note 9 Pro', 4, 2500000, 2850000, '746-146-220-redmi note 9 pro.jpg'),
(8, 'BRG05', 'Nokia 2.2', 13, 1200000, 1500000, '470-991-AXIOO_VENGE_2_16GB.jpg'),
(16, 'BRG06', 'Iphone 8', 2, 60000000, 6100000, '66-118-108-899-iphone 8 plus.jpg'),
(17, 'BRG07', 'Vivo X70 Pro', 1, 2, 3, '667-1-VivoX70Pro.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` varchar(100) NOT NULL,
  `nik_customer` text NOT NULL,
  `nama_customer` text NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat_customer` text NOT NULL,
  `telepon_customer` varchar(100) NOT NULL,
  `email_customer` varchar(100) NOT NULL,
  `password_customer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `nik_customer`, `nama_customer`, `jenis_kelamin`, `alamat_customer`, `telepon_customer`, `email_customer`, `password_customer`) VALUES
('CST0001', '9132942020231', 'Mochamad Anwar', 'Laki-laki', 'Subang', '08523342342', 'anwar_m@gmail.com', 'T4606ys12..'),
('CST002', '321314', 'cc', 'cwo', 'subang', '08211907', 'cc@mail.com', 'cc'),
('CST003', '21', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gudang`
--

CREATE TABLE `tb_gudang` (
  `id_gudang` varchar(10) NOT NULL,
  `kode_gudang` varchar(25) NOT NULL,
  `nama_gudang` varchar(40) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_gudang`
--

INSERT INTO `tb_gudang` (`id_gudang`, `kode_gudang`, `nama_gudang`, `lokasi`) VALUES
('GD01', 'GUDANG_ATK', 'Gudang ATK', 'LANTAI 2 BUKIT DAGO HOTEL');

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` varchar(100) NOT NULL,
  `nama_supplier` text NOT NULL,
  `alamat_supplier` text NOT NULL,
  `telepon_supplier` varchar(100) NOT NULL,
  `email_supplier` varchar(100) NOT NULL,
  `pass_supplier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telepon_supplier`, `email_supplier`, `pass_supplier`) VALUES
('SUPP0001', 'PT. Electronic City', 'Jakarta', '08968968765', 'ptindomacro@gmail.com', 'T4606ys12..'),
('SUPP0002', 'cc', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `nota` varchar(15) NOT NULL,
  `nama_pemasok` varchar(30) NOT NULL,
  `nama_barang` varchar(45) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `qty` int(50) NOT NULL,
  `gudang_tujuan` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`nota`, `nama_pemasok`, `nama_barang`, `harga_satuan`, `qty`, `gudang_tujuan`) VALUES
('NOTA001', 'PT. CATUR SENTOSA ANUGERAH', '', 0, 0, 'Gudang ATK'),
('NOTA02', '', '', 0, 0, ''),
('NOTA03', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `tipe_user` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `tipe_user`) VALUES
(1, 'admin', 'admin', 'Administrator'),
(2, 'petugas', 'petugas', 'Petugas'),
(3, 'customer', 'customer', 'pembeli'),
(4, 'supplier', 'supplier', 'penyetok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tb_gudang`
--
ALTER TABLE `tb_gudang`
  ADD PRIMARY KEY (`id_gudang`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`nota`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
