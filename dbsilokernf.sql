-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2021 at 02:47 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsilokernf`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_usaha`
--

CREATE TABLE `bidang_usaha` (
  `id` int(11) NOT NULL,
  `nama_bidang_usaha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bidang_usaha`
--

INSERT INTO `bidang_usaha` (`id`, `nama_bidang_usaha`) VALUES
(1, 'Teknologi Informasi dan Komunikasi'),
(2, 'Perbankan'),
(3, 'Pendidikan'),
(4, 'Transporasi'),
(5, 'Industri Nasional');

-- --------------------------------------------------------

--
-- Table structure for table `keahlian`
--

CREATE TABLE `keahlian` (
  `id` int(11) NOT NULL,
  `nama_keahlian` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keahlian`
--

INSERT INTO `keahlian` (`id`, `nama_keahlian`) VALUES
(1, 'Programmer'),
(2, 'Infrastruktur & Jaringan'),
(3, 'Accounting'),
(5, 'Database');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `deskripsi_pekerjaan` text DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `mitra_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `deskripsi_pekerjaan`, `tanggal_akhir`, `mitra_id`) VALUES
(2, 'Dibutuhkan programmer handal', '2021-06-23', 3),
(4, 'dibutuhkan simpanan', '2021-07-10', 1),
(5, 'jadi apa aja', '2021-06-06', 3),
(22, 'Dibutuhkan web designer handal', '2021-06-27', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id` int(11) NOT NULL,
  `nama_mitra` varchar(100) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `kontak` varchar(30) DEFAULT NULL,
  `telpon` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `bidang_usaha_id` int(11) NOT NULL,
  `sektor_usaha_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id`, `nama_mitra`, `alamat`, `kontak`, `telpon`, `email`, `web`, `bidang_usaha_id`, `sektor_usaha_id`) VALUES
(1, 'PT Rekayasa Industri', 'Jl Makam Pahlawan xbata No 182', 'Aries P', '0812-8882329', 'hrd@rekin.go.id', 'www.rekin.go.id', 5, 2),
(2, 'PT Bukalapak', 'Jl Kemang No. 12', 'Zaki Firdaus', '0859-42029', 'hrd@bukalapak.com', 'bukalapak.com', 1, 4),
(3, 'PT indonesia sejahtera', 'Jl.burung 1', 'utomo', '021-8732156', 'hrd@indosejahtera.go.id', 'www.indosejahtera.com', 1, 1),
(4, 'PT rebahan aja', 'Jl.elan 12', 'budi sutopo', '021-8723231', 'hrd@rebahan.com', 'www.rebahanaja.com', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `peminat_lowongan`
--

CREATE TABLE `peminat_lowongan` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `nama_peminat` varchar(45) DEFAULT NULL,
  `alasan` text DEFAULT NULL,
  `prodi_id` int(11) NOT NULL,
  `lowongan_id` int(11) NOT NULL,
  `keahlian_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peminat_lowongan`
--

INSERT INTO `peminat_lowongan` (`id`, `nim`, `nama_peminat`, `alasan`, `prodi_id`, `lowongan_id`, `keahlian_id`) VALUES
(1, '0110220236', 'Muhammad Al Fikri', 'Saya ingin menjadi programmer', 2, 2, 5),
(2, '0110220235', 'Budi', 'saya ingin kaya', 1, 2, 2),
(3, '0110220237', 'Andre', 'saya ingin kaya', 2, 2, 1),
(6, '0110220239', 'Said Al Khairi', 'Saya ingin menjadi developer website', 2, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode` varchar(2) DEFAULT NULL,
  `nama_prodi` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode`, `nama_prodi`) VALUES
(1, 'SI', 'Sistem Informasi'),
(2, 'TI', 'Teknik Informatika'),
(3, 'BD', 'Bisnis Digital'),
(7, 'TM', 'Teknik Mesin');

-- --------------------------------------------------------

--
-- Table structure for table `sektor_usaha`
--

CREATE TABLE `sektor_usaha` (
  `id` int(11) NOT NULL,
  `nama_sektor_usaha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sektor_usaha`
--

INSERT INTO `sektor_usaha` (`id`, `nama_sektor_usaha`) VALUES
(1, 'Pemerintahan'),
(2, 'BUMN'),
(3, 'Swasta'),
(4, 'Startup'),
(12, 'Kelautan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'assaufi anggie', 'assaufianggie@gmail.com', 'default.jpg', '$2y$10$UqZXTdeytxMsd00Uh4fdz.3IaUG12IvmkPPtv7J6OeQMDsl19tYqC', 2, 1, 1625935705),
(4, 'Putri Cahyani', 'putricahyani@gmail.com', 'default.jpg', '$2y$10$zOJtZsb6Yr8tKY1.D.3ZDOlFMaA7G4.X3OMrQt2a6rgaFWGahi2Cm', 2, 1, 1626022196);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_lowongan`
-- (See below for the actual view)
--
CREATE TABLE `vw_lowongan` (
`id` int(11)
,`deskripsi_pekerjaan` text
,`tanggal_akhir` date
,`nama_mitra` varchar(100)
,`email` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_mitra`
-- (See below for the actual view)
--
CREATE TABLE `vw_mitra` (
`id` int(11)
,`nama_mitra` varchar(100)
,`alamat` varchar(45)
,`kontak` varchar(30)
,`telpon` varchar(20)
,`email` varchar(30)
,`web` varchar(45)
,`nama_bidang_usaha` varchar(45)
,`nama_sektor_usaha` varchar(45)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_peminat_lowongan`
-- (See below for the actual view)
--
CREATE TABLE `vw_peminat_lowongan` (
`id` int(11)
,`nim` varchar(10)
,`nama_peminat` varchar(45)
,`alasan` text
,`nama_prodi` varchar(45)
,`deskripsi_pekerjaan` text
,`nama_keahlian` varchar(45)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_lowongan`
--
DROP TABLE IF EXISTS `vw_lowongan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_lowongan`  AS  select `lowongan`.`id` AS `id`,`lowongan`.`deskripsi_pekerjaan` AS `deskripsi_pekerjaan`,`lowongan`.`tanggal_akhir` AS `tanggal_akhir`,`mitra`.`nama_mitra` AS `nama_mitra`,`mitra`.`email` AS `email` from (`mitra` join `lowongan` on(`mitra`.`id` = `lowongan`.`mitra_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_mitra`
--
DROP TABLE IF EXISTS `vw_mitra`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_mitra`  AS  select `mitra`.`id` AS `id`,`mitra`.`nama_mitra` AS `nama_mitra`,`mitra`.`alamat` AS `alamat`,`mitra`.`kontak` AS `kontak`,`mitra`.`telpon` AS `telpon`,`mitra`.`email` AS `email`,`mitra`.`web` AS `web`,`bidang_usaha`.`nama_bidang_usaha` AS `nama_bidang_usaha`,`sektor_usaha`.`nama_sektor_usaha` AS `nama_sektor_usaha` from ((`bidang_usaha` join `mitra` on(`bidang_usaha`.`id` = `mitra`.`bidang_usaha_id`)) join `sektor_usaha` on(`sektor_usaha`.`id` = `mitra`.`sektor_usaha_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_peminat_lowongan`
--
DROP TABLE IF EXISTS `vw_peminat_lowongan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_peminat_lowongan`  AS  select `peminat_lowongan`.`id` AS `id`,`peminat_lowongan`.`nim` AS `nim`,`peminat_lowongan`.`nama_peminat` AS `nama_peminat`,`peminat_lowongan`.`alasan` AS `alasan`,`prodi`.`nama_prodi` AS `nama_prodi`,`lowongan`.`deskripsi_pekerjaan` AS `deskripsi_pekerjaan`,`keahlian`.`nama_keahlian` AS `nama_keahlian` from (((`prodi` join `peminat_lowongan` on(`prodi`.`id` = `peminat_lowongan`.`prodi_id`)) join `lowongan` on(`lowongan`.`id` = `peminat_lowongan`.`lowongan_id`)) join `keahlian` on(`keahlian`.`id` = `peminat_lowongan`.`keahlian_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_usaha`
--
ALTER TABLE `bidang_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keahlian`
--
ALTER TABLE `keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lowongan_mitra1_idx` (`mitra_id`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mitra_bidang_usaha_idx` (`bidang_usaha_id`),
  ADD KEY `fk_mitra_sektor_usaha1_idx` (`sektor_usaha_id`);

--
-- Indexes for table `peminat_lowongan`
--
ALTER TABLE `peminat_lowongan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_peminat_lowongan_prodi1_idx` (`prodi_id`),
  ADD KEY `fk_peminat_lowongan_lowongan1_idx` (`lowongan_id`),
  ADD KEY `keahlian_id` (`keahlian_id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sektor_usaha`
--
ALTER TABLE `sektor_usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_usaha`
--
ALTER TABLE `bidang_usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keahlian`
--
ALTER TABLE `keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `peminat_lowongan`
--
ALTER TABLE `peminat_lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sektor_usaha`
--
ALTER TABLE `sektor_usaha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `fk_lowongan_mitra1` FOREIGN KEY (`mitra_id`) REFERENCES `mitra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mitra`
--
ALTER TABLE `mitra`
  ADD CONSTRAINT `fk_mitra_bidang_usaha` FOREIGN KEY (`bidang_usaha_id`) REFERENCES `bidang_usaha` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mitra_sektor_usaha1` FOREIGN KEY (`sektor_usaha_id`) REFERENCES `sektor_usaha` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `peminat_lowongan`
--
ALTER TABLE `peminat_lowongan`
  ADD CONSTRAINT `fk_peminat_lowongan_lowongan1` FOREIGN KEY (`lowongan_id`) REFERENCES `lowongan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_peminat_lowongan_prodi1` FOREIGN KEY (`prodi_id`) REFERENCES `prodi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `peminat_lowongan_ibfk_1` FOREIGN KEY (`keahlian_id`) REFERENCES `keahlian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
