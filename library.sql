-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 10:09 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'Charith', 'Dilanka', 'Charith', '123456', 'charithdilanka2@gmail.com', '0778670640', 'p.jpg'),
(2, 'Tashmila', 'Weerakoon', 'Tash', '111111', 'tashmila@gmail.com', '0715468490', 'p.jpg'),
(3, 'Thilini', 'Nadeesha', 'Thilini', '222222', 'thilini@gmail.com', '133446557', 'p.jpg'),
(4, 'Damindu', 'Senievirathna', 'damindu', '147852369', 'damindu@gmail.com', '025555', 'p.jpg'),
(5, 'shashi', 'thath', 'shashi', '123', 'shashi@gmail.com', '021555520', 'p.jpg'),
(6, 'ishan', 'kanda', 'ishan', '123456', 'ishan@gmail.com', '01455222222', 'p.jpg'),
(7, 'dsd', 'ffff', 'fff', 'fff', 'fff', 'fff', 'p.jpg'),
(8, 'kalana', 'kk', 'kk', 'kk', 'kk', 'kk', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bid` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `authors` varchar(250) NOT NULL,
  `edition` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `department` varchar(250) NOT NULL,
  `admin_approve` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bid`, `name`, `authors`, `edition`, `status`, `quantity`, `department`, `admin_approve`) VALUES
(33, 'kkkkk', 'kkkk', 'kkkk', 'kkkk', 55, 'kkk', NULL),
(35, 'sd', 'ddd', 'ddd', 'dd', 51, 'xx', 1),
(55, 'software', 'chamafri', 'sss', 'sss', 0, 'ss', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(50) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`) VALUES
(6, 'lB'),
(7, 'Book'),
(8, 'book1'),
(9, 'mmm'),
(10, 'book'),
(12, 'good'),
(13, 'very good service'),
(14, 'nice library'),
(16, 'ggggggg');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `bid` int(11) NOT NULL,
  `approve` varchar(250) NOT NULL,
  `issue` varchar(250) NOT NULL,
  `return` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `username`, `bid`, `approve`, `issue`, `return`) VALUES
(6, 'ds', 34, 'RETURNED', '2019-05-10', '2019-05-21'),
(7, 'ds', 35, 'RETURNED', '2019-05-12', '2019-05-21'),
(13, 'ds', 35, 'RETURNED', '2019-05-12', '2019-05-21'),
(14, 'ds', 34, 'RETURNED', '2019-05-10', '2019-05-21'),
(15, 'ds', 36, 'RETURNED', '2019-05-10', '2019-05-21'),
(16, 'ds', 35, 'RETURNED', '2019-05-12', '2019-05-21'),
(17, 'ds', 36, 'RETURNED', '2019-05-10', '2019-05-21'),
(18, 'ds', 35, 'RETURNED', '2019-05-12', '2019-05-21'),
(19, 'ds', 34, 'RETURNED', '2019-05-05', '2019-05-14'),
(20, 'ds', 35, 'RETURNED', '2019-05-10', '2019-05-21'),
(21, 'ds', 34, 'yes', '2019-05-12', '2019-05-17'),
(23, 'ds', 55, 'RETURNED', '2019-05-10', '2019-05-21'),
(24, 'ds', 35, 'yes', '2019-05-10', '2019-05-21'),
(25, 'ds', 55, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `first` varchar(250) NOT NULL,
  `last` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `pic` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`id`, `first`, `last`, `username`, `password`, `email`, `contact`, `pic`) VALUES
(1, 'kusum', 'charls', 'kusum', 'kusum', 'kusum', '524545454', 'p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `first` varchar(100) NOT NULL,
  `last` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `roll` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`first`, `last`, `username`, `password`, `roll`, `email`, `contact`, `pic`) VALUES
('Afia', 'Abida', 'Promi', '111111', 1, 'afia1@gmail.com', 2147483647, 'p.jpg'),
('sanzida', 'mou', 'Mim', '555555', 324, 'mim@gmail.com', 53454, 'p.jpg'),
('Mr.', 'Rahman', 'Rahman', '212324', 1510016, 'samiarahman@gmail.com', 123456, 'p.jpg'),
('Sumaiya', 'Shimu', 'Shimu1', '987654', 1510052, 'shimu1@gmail.com', 1739000000, 'p.jpg'),
('Suchana', 'Pramanik', 'Suchana', '121212', 1510047, 'suchana@gmail.com', 1739000000, 'p.jpg'),
('Afifa ', 'Ashraf', 'Afifa', '121212', 1510047, 'afifa@gmail.com', 1739000001, 'p.jpg'),
('Tharindu', 'Manoj', 'Tharindu', '123456', 0, 'tharindu@gmail.com', 715468490, 'p.jpg'),
('Janith', 'Perera', 'Janith', 'janith', 555, 'janith@gmail.com', 715468490, 'p.jpg'),
('damindu', 'Senievirathna', 'ds', 'ds', 0, 'damindu@gmail.com', 778679640, 'p.jpg'),
('Dilanka', 'charith', 'Dilanka', '123456789', 0, 'charithdilanka73@yahoo.com', 778679640, 'p.jpg'),
('Isuri', 'Senevi', 'Isuri', '123456', 0, 'isuri@gmail.com', 2147483647, 'p.jpg'),
('tashmila', 'prasansani', 'tash1', '123456', 25, 'tashmila@gmail.com', 717744640, 'p.jpg'),
('tash', 'weerakoon', 'tash12', '1234', 0, 'tash@gmail.com', 717744587, 'p.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
