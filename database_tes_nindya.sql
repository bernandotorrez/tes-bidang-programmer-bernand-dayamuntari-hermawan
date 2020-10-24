-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 05:23 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_tes_nindya`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_brg` int(11) NOT NULL,
  `nm_brg` varchar(250) NOT NULL,
  `jml` int(11) NOT NULL DEFAULT '0',
  `merk` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_brg`, `nm_brg`, `jml`, `merk`) VALUES
(101, 'Laptop', 5, 'Dell'),
(102, 'Pc Dekstop', 10, 'Dell'),
(103, 'Kabel Lan', 15, 'Bolden'),
(104, 'Switch', 4, 'Cisco');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_departemen`
--

CREATE TABLE `tbl_departemen` (
  `id_dep` int(11) NOT NULL,
  `nm_dep` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departemen`
--

INSERT INTO `tbl_departemen` (`id_dep`, `nm_dep`) VALUES
(510, 'Dept IT'),
(610, 'Dep Keu'),
(710, 'Dep Prod'),
(810, 'Sekper');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id`, `id_dep`, `id_brg`, `nama_pengguna`) VALUES
(3, 510, 101, 'Iwan'),
(4, 610, 102, 'Budi'),
(5, 710, 103, 'Rahmat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tbl_departemen`
--
ALTER TABLE `tbl_departemen`
  ADD PRIMARY KEY (`id_dep`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dep` (`id_dep`),
  ADD KEY `id_brg` (`id_brg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD CONSTRAINT `FK1_pengguna_departemen` FOREIGN KEY (`id_dep`) REFERENCES `tbl_departemen` (`id_dep`),
  ADD CONSTRAINT `FK2_pengguna_barang` FOREIGN KEY (`id_brg`) REFERENCES `tbl_barang` (`id_brg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
