-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 07:53 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(3) NOT NULL,
  `work` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `days` varchar(9) NOT NULL,
  `hours` varchar(30) NOT NULL,
  `reg_id` int(3) NOT NULL,
  `status` varchar(3) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `work`, `city`, `name`, `mobile`, `address`, `date`, `days`, `hours`, `reg_id`, `status`, `Username`, `password`) VALUES
(5, 'electician', 'Indore', 'Abdul kadir', '7582 969596', 'Vishnupuri nx', '2021-06-25', '1', '1to2', 4, '0', 'abdul@gmail.com', 'A05092001'),
(6, 'plumber', 'Indore', 'Priyanshu Gupta', '7889765645', 'Vishnupuri nx', '2021-06-25', '1', '1to2', 5, '2', 'priyanshu12@gmail.com', 'p123'),
(7, 'electician', 'Indore', 'Aditi sharma', '7566813945', 'Vishnupuri', '2021-06-26', '1', '1to2', 4, '0', 'aditisharma@gmail.com', 'H05092001'),
(8, 'carpentor', 'Bhopal', 'Aditi sharma', '08770298893', 'mp nagar', '2021-06-29', '2', '1to2', 7, '0', 'aditisharma@gmail.com', 'a123'),
(9, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(10, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(11, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(12, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(13, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(14, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(15, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(16, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(17, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(18, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-22', '1', '1to2', 4, '0', 'rinkeshasati@gmail.com', 'R050920001'),
(19, 'electician', 'Indore', 'Abdul kadir', '8519565425', 'Ward no.07 bada malhera dist.chhatarpur madhya pradesh', '2021-06-28', '1', '1to2', 4, '0', 'abdulq314@gmail.com', 'a123456'),
(20, 'electician', 'Indore', 'Hariom asati', 'Asatihariom95@gmail.', 'Bihari ji temple', '2021-06-29', '1', '1to2', 4, '0', 'Asatihariom95@gmail.com', 'A12345'),
(21, 'electician', 'Indore', 'Hariom asati', '7566813945', '475, visnu puri nx, indore', '2021-06-30', '1', '1to2', 4, '0', 'raviasati04@gmail.com', 'H3456'),
(22, 'carpentor', 'Bhopal', 'Hariom asati', '122', '475, visnu puri nx, indore', '2021-06-30', '4', '1to2', 8, '0', 'Asatihariom95@gmail.com', 'hariom');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE `country_state_city` (
  `id` int(11) NOT NULL,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'India', 'MP', 'Bhopal'),
(2, 'India', 'MP', 'Indore'),
(3, 'India', 'MP', 'Jabalpur'),
(4, 'India', 'UP', 'Kanpur'),
(5, 'India', 'UP', 'Lucknow'),
(6, 'India', 'UP', 'Jhansi'),
(7, 'India', 'Rajasthan', 'Jaypur'),
(8, 'India', 'Rajasthan', 'Udaipur'),
(9, 'India', 'Rajasthan', 'Ajmer'),
(10, 'Canada', 'Ontario', 'Toronto'),
(11, 'Canada', 'Ontario', 'Ottawa'),
(12, 'Canada', 'British Columbia', 'Vancouver'),
(13, 'Canada', 'British Columbia', 'Victoria'),
(14, 'Australia', 'New South Wales', 'Sydney'),
(15, 'Australia', 'New South Wales', 'Newcastle'),
(16, 'Australia', 'Queensland', 'City of Brisbane'),
(17, 'Australia', 'Queensland', 'Gold Coast\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(3) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(40) NOT NULL,
  `experience` varchar(9) NOT NULL,
  `id_proof` varchar(30) NOT NULL,
  `id_picture` varchar(45) NOT NULL,
  `work_type` varchar(40) NOT NULL,
  `picture` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `password`, `city`, `address`, `experience`, `id_proof`, `id_picture`, `work_type`, `picture`) VALUES
(4, 'Hariom asati', '08770298893', 'Asatihariom95@gmail.com', 'H05092001', 'Indore', 'Bihari ji temple', '5', 'Adhaar', 'IMG20191002105045.jpg', 'electician', 'IMG20191003164125.jpg'),
(5, 'Priyanshu Gupta', '9977900582', 'priyanshugupta@gmail.com', 'P05092001', 'Indore', 'Bada ganpati', '1', 'Adhaar', 'IMG20191002105045.jpg', 'plumber', 'IMG20191129154603.jpg'),
(6, 'Hariom asati', '08770298893', 'Asatihariom95@gmail.com', 'S05092001', 'Indore', 'Bihari ji temple', '2', 'Adhaar', 'IMG20191129114344.jpg', 'plumber', 'IMG20191002085201.jpg'),
(7, 'Abdul Kadir', '9977900582', 'abdulhadir@gmail.com', 'a1234', 'Bhopal', 'Bihari ji temple', '5', 'Adhaar', '10th marksheet.jpeg', 'carpentor', 'IMG20191120151544.jpg'),
(8, 'Hariom asati', '08770298893', 'rinkeshasati@gmail.com', 'r1234', 'Bhopal', 'Bihari ji temple', '3', 'Adhaar', 'IMG20200204004728.jpg', 'carpentor', 'IMG20200205161634.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `country_state_city`
--
ALTER TABLE `country_state_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `country_state_city`
--
ALTER TABLE `country_state_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
