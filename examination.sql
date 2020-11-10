-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 05:50 AM
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
-- Database: `examination`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'abc@g.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5fa56945ba82e', '5fa56945d550b'),
('5fa569462a0e4', '5fa5694632459'),
('5fa569465d690', '5fa5694675dc3'),
('5fa569469e4aa', '5fa56946a93d5'),
('5fa56946d1b64', '5fa56946d9f30');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('5fa566f1953f3', 'Souvik dey', 'dey.souvik163@gmail.com', 'hi', '', '2020-11-06', '04:08:33pm'),
('5fa82518a0035', 'virat', 'admin@com', 'bad', 'not good\r\n', '2020-11-08', '06:04:24pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('abc@g.com', '5fa5685a74d52', 1, 5, 2, 3, '2020-11-06 15:20:13'),
('abc@a.com', '5fa5685a74d52', 1, 5, 2, 3, '2020-11-08 15:12:00'),
('aaa@b.com', '5fa5685a74d52', 4, 5, 3, 2, '2020-11-08 15:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5fa56945ba82e', 'modi', '5fa56945d550b'),
('5fa56945ba82e', 'rahul', '5fa56945d5533'),
('5fa56945ba82e', 'mamata', '5fa56945d553d'),
('5fa56945ba82e', 'lalu', '5fa56945d5543'),
('5fa569462a0e4', 'soniya', '5fa569463244c'),
('5fa569462a0e4', 'mamata', '5fa5694632459'),
('5fa569462a0e4', 'dilip', '5fa5694632460'),
('5fa569462a0e4', 'amit', '5fa5694632466'),
('5fa569465d690', 'RSS', '5fa5694675db6'),
('5fa569465d690', 'BJP', '5fa5694675dc3'),
('5fa569465d690', 'AAP', '5fa5694675dca'),
('5fa569465d690', 'TMC', '5fa5694675dd0'),
('5fa569469e4aa', 'delhi', '5fa56946a93aa'),
('5fa569469e4aa', 'mumbai', '5fa56946a93c1'),
('5fa569469e4aa', 'nagpur', '5fa56946a93cb'),
('5fa569469e4aa', 'kolkata', '5fa56946a93d5'),
('5fa56946d1b64', 'dist', '5fa56946d9f30'),
('5fa56946d1b64', 'state', '5fa56946d9f41'),
('5fa56946d1b64', 'country', '5fa56946d9f48'),
('5fa56946d1b64', 'ut', '5fa56946d9f4e');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5fa5685a74d52', '5fa56945ba82e', 'PM of India?', 4, 1),
('5fa5685a74d52', '5fa569462a0e4', 'CM of WB?', 4, 2),
('5fa5685a74d52', '5fa569465d690', 'who will win 2021?', 4, 3),
('5fa5685a74d52', '5fa569469e4aa', 'Capital of wb?', 4, 4),
('5fa5685a74d52', '5fa56946d1b64', 'googhly is a', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5fa5685a74d52', 'India', 2, 1, 5, 3, 'complete in 3 min.', '#go', '2020-11-06 15:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('abc@a.com', 1, '2020-11-08 15:12:00'),
('aaa@b.com', 4, '2020-11-08 15:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(100) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Souvik Dey', 'M', 'miet', 'abc@a.com', 8100536941, '800121e35fb4aa316d0214dc4650876c'),
('Bishal', 'M', 'miet', 'aaa@b.com', 1234567890, '800121e35fb4aa316d0214dc4650876c'),
('Sohom', 'M', 'Aot', 'abcd@a.com', 1478523690, '800121e35fb4aa316d0214dc4650876c'),
('Mohini', 'F', 'miet', 'abcde@a.com', 1478523690, '800121e35fb4aa316d0214dc4650876c'),
('Virat', 'M', 'Aot', 'abcdef@a.com', 1236547890, '800121e35fb4aa316d0214dc4650876c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
