-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 24, 2016 at 01:09 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Ia_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(35) NOT NULL,
  `publishing_year` int(11) DEFAULT NULL,
  `author_name` varchar(35) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `available_copies` int(11) DEFAULT '1',
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `publishing_year`, `author_name`, `isbn`, `available_copies`, `added_by`) VALUES
(13, '235', 235, 'sdf', '545', 1, 238),
(265, 'kljlk', 5456, 'derpawt test', '256987', 5, 238);

-- --------------------------------------------------------

--
-- Table structure for table `book_copy`
--

CREATE TABLE `book_copy` (
  `copy_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `is_borrowed` tinyint(1) NOT NULL DEFAULT '0',
  `borrower_id` int(11) DEFAULT NULL,
  `borrowing_date` date DEFAULT NULL,
  `returning_date` date DEFAULT NULL,
  `added_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_copy`
--

INSERT INTO `book_copy` (`copy_id`, `book_id`, `is_borrowed`, `borrower_id`, `borrowing_date`, `returning_date`, `added_by`) VALUES
(2, 13, 0, 0, NULL, NULL, 0),
(3, 265, 0, 0, NULL, NULL, 238),
(4, 265, 0, 0, NULL, NULL, 238),
(5, 265, 0, 0, NULL, NULL, 238),
(6, 265, 0, 0, NULL, NULL, 238),
(7, 265, 0, 0, NULL, NULL, 238);

-- --------------------------------------------------------

--
-- Table structure for table `messaging`
--

CREATE TABLE `messaging` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `subject` text,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(30) NOT NULL,
  `name` varchar(35) NOT NULL,
  `username` varchar(35) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `is_admin`) VALUES
(238, 'me', 'me', 'me@me', '123', 0),
(25487857, 'meeee', 'me33', 'me@meeeee', 'me33', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `book_copy`
--
ALTER TABLE `book_copy`
  ADD PRIMARY KEY (`copy_id`),
  ADD KEY `borrower_id` (`borrower_id`),
  ADD KEY `added_by` (`added_by`);

--
-- Indexes for table `messaging`
--
ALTER TABLE `messaging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `book_copy`
--
ALTER TABLE `book_copy`
  MODIFY `copy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `messaging`
--
ALTER TABLE `messaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
