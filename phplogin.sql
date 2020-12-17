-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 10:42 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `bloodgroup` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `activation_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `firstname`, `lastname`, `bloodgroup`, `location`, `username`, `password`, `email`, `phone`, `activation_code`) VALUES
(10, 'Mat', 'Kar', 'A -', 'Nairobi', 'mkar', '$2y$10$IRW3dAxLrcjlP.tL53J2AOnURIHeuHUF1/mlFhKaRC5rxfqrVtLIy', 'mkar@gmail.com', '0723456545', ''),
(11, 'Pat', 'Rick', 'B+', 'Nakuru', 'patrick', '$2y$10$SDM9js8/xqfHxQRpDluE.uaFnlkiWRzPPULjZA7J3zIt4dSIinFb.', 'patrick@gmail.com', '0712987098', ''),
(12, 'Dick', 'Son', 'AB', 'Mombasa', 'dickson', '$2y$10$/0U53T98NI4FhIwwSa.gx.5.vHzRnvu1MxIXx9kjOPhn5zZbK31cC', 'dickson@gmail.com', '0787678767', ''),
(13, 'John', 'James', 'O', 'Kajiado', 'jjames', '$2y$10$am5dYsYvM6IMZ3mkPZ3/meAlvwsMythBC01aaagrSfWgtWJ9cEaIi', 'jjames@gmail.com', '0713097634', ''),
(14, 'David', 'May', 'A-', 'Nairobi', 'dmay', '$2y$10$425la/jaJelC.JZa3L/8b.dtbWi10XPf2mztbizm7J47mDH77z3Qq', 'david@gmail.com', '0776567809', ''),
(15, 'sdswd', 'ddddd', 'B-', 'Nakuru', 'ddddddddd', '$2y$10$bpbvJtywZjAad/WWvSvxKOwEPmv7N5wycBVGeQKTLHg49p1Xlg/1i', 'ddd@gmail.com', '0723454312', ''),
(16, 'jjjjjj', 'jjjkhiu', 'O', 'Nairobi', 'donor', '$2y$10$XB05jqGgZLpyUF.pQIhM6OHhb7/3.idvQrwnMu34Msdt/5UuSIepS', 'ddagg@gmail.com', '0789765645', ''),
(17, 'hdshdsh', 'ahsahs', 'A+', 'Nakuru', 'donors', '$2y$10$9yAtgzsuKTJTUgGnrR3hgeXZKfgER.0oGf7WhOgA/slXnGRX7eiRW', 'don@gmail.com', '0723564567', ''),
(18, 'David', 'gig', 'A-', 'Nairobi', 'david', '$2y$10$V1MpMnVJuzuXvCvOLX41DuViC5GAbeH9ToF/PG1WQy.P6tYIJWhTa', 'dav@gmail.com', '0989765676', ''),
(19, 'philip2', 'surumen3', 'A', 'Nairobi', 'pmsuru2', '$2y$10$lZTCp3SOPNqSTzDwXo6on.MzDInhjtYUS/rlun5itjtx6s/qmICAi', 'pm@gmail.com', '0723456768', ''),
(20, 'Philip', 'Surumen', 'A', 'Nairobi', 'msuru', '$2y$10$tMLcD09GKAF1j/cSaH7ZFuI5xVQ/J/z0qL66ToEFPGgwZqxIvOaIK', 'msuru@gmail.com', '0712345679', ''),
(21, 'Amos', 'Name', 'A', 'Olentoko', 'amos123', '$2y$10$DvWLOjtN.MrD1WaGaHFUz.tkR6nnLpfIZVKcY43Nlq6QR6emCIDZS', 'amos12@gmail.com', '0712345678', '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_2`
--

CREATE TABLE `accounts_2` (
  `id` int(255) NOT NULL,
  `username` varchar(70) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_2`
--

INSERT INTO `accounts_2` (`id`, `username`, `name`, `password`, `phone`, `email`, `location`) VALUES
(3, 'hosi', 'najilehospital', '$2y$10$d6j/IMJHZw19pLrrkmdNx.CLpFmH2w6HQWOxY.MsuCs8jCZrcFK3K', '0723654765', 'hosi@gmail.com', 'Nairobi'),
(4, 'ewuaso', 'ewuasohospital', '$2y$10$G2CwCAl2yrTZBLlzo7Hts.fozYfoT4hOifYUo3cOMJCnFclouBh4.', '0909876543', 'fgh@gmail.com', 'Mombasa'),
(5, 'pmsuru12', 'Surumen', '$2y$10$gmaJ5zCOglznlshnB9aMIO3vEIDdSkyhsw8esLftt4xgF.dmDeaIG', '0712345678', 'pm@gmail.com', 'Nairobi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_2`
--
ALTER TABLE `accounts_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `accounts_2`
--
ALTER TABLE `accounts_2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
