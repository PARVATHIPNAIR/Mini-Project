-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 06:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(2, 'admin', 'admin@gmail.com', 'admin2', '2019-11-02 02:48:47', '2019-11-07'),
(3, 'admin', 'admin', 'admin', '2019-11-07 18:33:06', '2019-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `booking_room`
--

CREATE TABLE `booking_room` (
  `id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `room_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_room`
--

INSERT INTO `booking_room` (`id`, `user_email`, `room_no`) VALUES
(1, 'Hossain@gmail.com', 201),
(2, 'rasel@gmail.com', 405),
(3, 'test@gmail.com', 201),
(4, 'hossain@gmail.com', 303),
(5, 'test@gmail.com', 320),
(6, 'test@gmail.com', 320),
(7, 'test@gmail.com', 304);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dining`
--

CREATE TABLE `dining` (
  `id` int(200) NOT NULL,
  `Date` int(200) NOT NULL,
  `Mill` int(200) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dining`
--

INSERT INTO `dining` (`id`, `Date`, `Mill`, `Email`) VALUES
(2, 0, 1, 'himu@gmail.com'),
(3, 0, 4, '01742849447'),
(5, 0, 4, '01945316585'),
(7, 0, 4, 'hassan7@gmail.com'),
(8, 17, 1, 'raselhossain120@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `foodmenu`
--

CREATE TABLE `foodmenu` (
  `id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `it1` text NOT NULL,
  `it2` text NOT NULL,
  `it3` text NOT NULL,
  `it4` text NOT NULL,
  `it5` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foodmenu`
--

INSERT INTO `foodmenu` (`id`, `day`, `it1`, `it2`, `it3`, `it4`, `it5`) VALUES
(15, 7, 'specail Food', 'Nothing have', 'well food', 'rich with hd', 'bun akhichury'),
(16, 7, 'specail Food', 'Nothing have', 'well food', 'rich with hd', 'bun akhichury'),
(17, 7, 'specail Food', 'Nothing have', 'well food', 'rich with hd', 'bun akhichury'),
(20, 4, '1424hujk', 'dfgh', 'hjkldhfg', 'hdfgh', 'dfgh'),
(21, 1, 'vat', 'dfg', 'ndn', 'dim', 'hr'),
(22, 2, 'vat', 'dal', 'mas', 'dim', 'milk'),
(23, 1, 'a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `firstName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `feespm`, `firstName`, `lastName`, `gender`, `contactno`, `emailid`) VALUES
(4, 320, 2600, 'gopi', 'krishnnan', 'male', 9744112113, 'gopi@gmail.com'),
(5, 555, 2588, 'aparna', 'pk', 'female', 7558049107, 'aparnapk996@gmail.com'),
(6, 202, 3000, 'parvathi', 'p', 'female', 9074959640, 'parvathikelunni@gmail.com'),
(7, 202, 3000, 'varsha', 'm', 'female', 7736533324, 'varsham@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(6, 3, 320, 2600, '2019-11-08 16:56:26'),
(7, 1, 555, 2588, '2019-11-21 19:44:45'),
(8, 1, 101, 300, '2022-11-05 14:33:19'),
(9, 2, 202, 3000, '2022-11-06 04:48:03');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `firstName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`) VALUES
(4, 'Hossain', 'abul', 'male', 465767, 'Hossain@gmail.com', 'hossain', '2019-11-07 18:37:44'),
(6, 'Md.Rasel', 'Hossain', 'male', 687456, 'raselhossain@gmail.com', '123', '2019-11-07 18:54:41'),
(7, 'Shafi', ' Uddin  ', 'male', 1215456, 'faru@gmail.com', '123', '2019-11-09 02:16:44'),
(8, 'Md.Rasel', 'Hossain', 'male', 465767, 'raselhossain120@gmail.com', '12345', '2019-11-21 19:47:18'),
(9, 'gopi', 'krishnnan', 'male', 9744112113, 'gopi@gmail.com', 'gopi1234', '2022-11-05 14:36:39'),
(10, 'abcde', 'ty', 'male', 5879804567, 'se@gmail.com', 'abcdefgh', '2022-11-05 15:21:18'),
(11, 'aparna', 'pk', 'female', 7558049107, 'aparnapk996@gmail.com', 'hostelgrapes', '2022-11-05 22:41:52'),
(12, 'parvathi', 'p', 'female', 9074959640, 'parvathikelunni@gmail.com', 'paru@123', '2022-11-06 04:46:17'),
(13, 'Harshida', 'pv', 'female', 7034681001, 'harshidapv2000@gmail.com', 'harshi123@', '2022-11-06 05:32:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_room`
--
ALTER TABLE `booking_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dining`
--
ALTER TABLE `dining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodmenu`
--
ALTER TABLE `foodmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_room`
--
ALTER TABLE `booking_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dining`
--
ALTER TABLE `dining`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `foodmenu`
--
ALTER TABLE `foodmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
