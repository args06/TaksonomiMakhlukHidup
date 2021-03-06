-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 06:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taksonomi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cara_penuh_nutrisi`
--

CREATE TABLE `cara_penuh_nutrisi` (
  `id_nutrisi` int(11) NOT NULL,
  `detail_nutrisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cara_penuh_nutrisi`
--

INSERT INTO `cara_penuh_nutrisi` (`id_nutrisi`, `detail_nutrisi`) VALUES
(1, 'Autotrof'),
(2, 'Heterotrof'),
(3, 'Mixotrof');

-- --------------------------------------------------------

--
-- Table structure for table `dinding_sel`
--

CREATE TABLE `dinding_sel` (
  `id_dinding_sel` int(11) NOT NULL,
  `detail_dinding_sel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinding_sel`
--

INSERT INTO `dinding_sel` (`id_dinding_sel`, `detail_dinding_sel`) VALUES
(1, 'Ya'),
(2, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `hasil_id` int(11) NOT NULL,
  `hasil_detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`hasil_id`, `hasil_detail`) VALUES
(1, 'Hewan'),
(2, 'Tumbuhan'),
(3, 'Jamur'),
(4, 'Bakteri'),
(5, 'Protista');

-- --------------------------------------------------------

--
-- Table structure for table `hidup`
--

CREATE TABLE `hidup` (
  `hidup_id` int(11) NOT NULL,
  `hidup_detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hidup`
--

INSERT INTO `hidup` (`hidup_id`, `hidup_detail`) VALUES
(1, 'Darat'),
(2, 'Air'),
(3, 'Both'),
(4, 'Extreme Environment');

-- --------------------------------------------------------

--
-- Table structure for table `inti_sel`
--

CREATE TABLE `inti_sel` (
  `id_inti_sel` int(11) NOT NULL,
  `detail_inti_sel` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inti_sel`
--

INSERT INTO `inti_sel` (`id_inti_sel`, `detail_inti_sel`) VALUES
(1, 'Ada (Eukariot)'),
(2, 'Tidak (Prokariot)');

-- --------------------------------------------------------

--
-- Table structure for table `mikroskopis`
--

CREATE TABLE `mikroskopis` (
  `id_mikroskopis` int(11) NOT NULL,
  `detail_mikroskopis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mikroskopis`
--

INSERT INTO `mikroskopis` (`id_mikroskopis`, `detail_mikroskopis`) VALUES
(1, 'Ya'),
(2, 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `pendataan`
--

CREATE TABLE `pendataan` (
  `data_id` int(11) NOT NULL,
  `nama_spesies` varchar(100) NOT NULL,
  `napas_id` int(11) NOT NULL,
  `kembang_id` int(11) NOT NULL,
  `hidup_id` int(11) NOT NULL,
  `nutri_id` int(11) NOT NULL,
  `dinding_sel_id` int(11) NOT NULL,
  `inti_sel_id` int(11) NOT NULL,
  `mikroskopis_id` int(11) NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `cek` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendataan`
--

INSERT INTO `pendataan` (`data_id`, `nama_spesies`, `napas_id`, `kembang_id`, `hidup_id`, `nutri_id`, `dinding_sel_id`, `inti_sel_id`, `mikroskopis_id`, `hasil_id`, `cek`) VALUES
(1, 'Oryza Sativa', 3, 4, 1, 1, 1, 1, 2, 2, 0),
(2, 'E Coli', 4, 5, 4, 2, 1, 2, 1, 4, 0),
(3, 'Gnetum Gnemon', 3, 4, 1, 1, 1, 1, 2, 2, 0),
(4, 'Marchantia Polymorpha', 3, 6, 1, 1, 1, 1, 2, 2, 0),
(5, 'Paramecium Chaudatum', 4, 5, 2, 2, 2, 1, 1, 5, 0),
(6, 'Oscillatoria Princeps', 4, 5, 2, 1, 1, 2, 1, 4, 0),
(7, 'Euglena Viridis', 4, 5, 2, 3, 2, 1, 1, 5, 0),
(8, 'Auricularia Polytricha', 4, 6, 1, 2, 1, 1, 2, 3, 0),
(9, 'Batrachochytrium Dendrobatidis', 4, 6, 3, 2, 1, 1, 1, 3, 0),
(10, 'Dugesia Subtentaculata', 4, 5, 2, 2, 2, 1, 2, 1, 0),
(11, 'Homo Sapiens', 2, 2, 1, 2, 2, 1, 2, 1, 0),
(12, 'Cetorhinus Maximus', 1, 3, 2, 2, 2, 1, 2, 1, 0),
(13, 'Cardinalis Cardinalis', 2, 1, 1, 2, 2, 1, 2, 1, 1),
(14, 'Nitosomonas Halophila', 4, 5, 1, 1, 1, 2, 1, 4, 0),
(15, 'Pfiesteria Shumwayae', 4, 5, 2, 3, 1, 1, 1, 5, 1),
(16, 'Rhizopus Oryzae', 4, 6, 1, 2, 1, 1, 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reproduksi`
--

CREATE TABLE `reproduksi` (
  `kembang_id` int(11) NOT NULL,
  `kembang_detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reproduksi`
--

INSERT INTO `reproduksi` (`kembang_id`, `kembang_detail`) VALUES
(1, 'Ovipar'),
(2, 'Vivipar'),
(3, 'Ovovivipar'),
(4, 'Berbiji'),
(5, 'Membelah Diri'),
(6, 'Spora');

-- --------------------------------------------------------

--
-- Table structure for table `respirasi`
--

CREATE TABLE `respirasi` (
  `napas_id` int(11) NOT NULL,
  `napas_detail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respirasi`
--

INSERT INTO `respirasi` (`napas_id`, `napas_detail`) VALUES
(1, 'Insang'),
(2, 'Paru-Paru'),
(3, 'Stomata'),
(4, 'Difusi Sel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cara_penuh_nutrisi`
--
ALTER TABLE `cara_penuh_nutrisi`
  ADD PRIMARY KEY (`id_nutrisi`);

--
-- Indexes for table `dinding_sel`
--
ALTER TABLE `dinding_sel`
  ADD PRIMARY KEY (`id_dinding_sel`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`hasil_id`);

--
-- Indexes for table `hidup`
--
ALTER TABLE `hidup`
  ADD PRIMARY KEY (`hidup_id`);

--
-- Indexes for table `inti_sel`
--
ALTER TABLE `inti_sel`
  ADD PRIMARY KEY (`id_inti_sel`);

--
-- Indexes for table `mikroskopis`
--
ALTER TABLE `mikroskopis`
  ADD PRIMARY KEY (`id_mikroskopis`);

--
-- Indexes for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD PRIMARY KEY (`data_id`),
  ADD KEY `fkHasil` (`hasil_id`),
  ADD KEY `fkBernapas` (`napas_id`),
  ADD KEY `fkBerkembangBiak` (`kembang_id`),
  ADD KEY `fkHidup` (`hidup_id`),
  ADD KEY `fk_nutrisi` (`nutri_id`),
  ADD KEY `fk_dinding_sel` (`dinding_sel_id`),
  ADD KEY `fk_inti_sel` (`inti_sel_id`),
  ADD KEY `fk_mikroskop` (`mikroskopis_id`);

--
-- Indexes for table `reproduksi`
--
ALTER TABLE `reproduksi`
  ADD PRIMARY KEY (`kembang_id`);

--
-- Indexes for table `respirasi`
--
ALTER TABLE `respirasi`
  ADD PRIMARY KEY (`napas_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cara_penuh_nutrisi`
--
ALTER TABLE `cara_penuh_nutrisi`
  MODIFY `id_nutrisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dinding_sel`
--
ALTER TABLE `dinding_sel`
  MODIFY `id_dinding_sel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `hasil_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hidup`
--
ALTER TABLE `hidup`
  MODIFY `hidup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inti_sel`
--
ALTER TABLE `inti_sel`
  MODIFY `id_inti_sel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mikroskopis`
--
ALTER TABLE `mikroskopis`
  MODIFY `id_mikroskopis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pendataan`
--
ALTER TABLE `pendataan`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reproduksi`
--
ALTER TABLE `reproduksi`
  MODIFY `kembang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `respirasi`
--
ALTER TABLE `respirasi`
  MODIFY `napas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pendataan`
--
ALTER TABLE `pendataan`
  ADD CONSTRAINT `fkBerkembangBiak` FOREIGN KEY (`kembang_id`) REFERENCES `reproduksi` (`kembang_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkBernapas` FOREIGN KEY (`napas_id`) REFERENCES `respirasi` (`napas_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkHasil` FOREIGN KEY (`hasil_id`) REFERENCES `hasil` (`hasil_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fkHidup` FOREIGN KEY (`hidup_id`) REFERENCES `hidup` (`hidup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_dinding_sel` FOREIGN KEY (`dinding_sel_id`) REFERENCES `dinding_sel` (`id_dinding_sel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_inti_sel` FOREIGN KEY (`inti_sel_id`) REFERENCES `inti_sel` (`id_inti_sel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mikroskop` FOREIGN KEY (`mikroskopis_id`) REFERENCES `mikroskopis` (`id_mikroskopis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nutrisi` FOREIGN KEY (`nutri_id`) REFERENCES `cara_penuh_nutrisi` (`id_nutrisi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
