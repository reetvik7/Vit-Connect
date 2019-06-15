-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 08:20 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alphago`
--

-- --------------------------------------------------------

--
-- Table structure for table `1_main`
--

CREATE TABLE `1_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_mates`
--

CREATE TABLE `1_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `1_notify`
--

CREATE TABLE `1_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `1_notify`
--

INSERT INTO `1_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'0\')\">Click here</a>', 1540956948, '31/10/18 04:35', 'unread'),
(2, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1540962021, '31/10/18 06:00', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `1_posts`
--

CREATE TABLE `1_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_main`
--

CREATE TABLE `2_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_mates`
--

CREATE TABLE `2_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2_notify`
--

CREATE TABLE `2_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2_notify`
--

INSERT INTO `2_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'0\')\">Click here</a>', 1540956948, '31/10/18 04:35', 'unread'),
(2, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1540962021, '31/10/18 06:00', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `2_posts`
--

CREATE TABLE `2_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3_main`
--

CREATE TABLE `3_main` (
  `id` int(11) DEFAULT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) NOT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3_mates`
--

CREATE TABLE `3_mates` (
  `user` int(11) NOT NULL,
  `relation` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `3_notify`
--

CREATE TABLE `3_notify` (
  `id` int(11) NOT NULL,
  `notify` varchar(250) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `3_notify`
--

INSERT INTO `3_notify` (`id`, `notify`, `time`, `details`, `status`) VALUES
(1, 'You have a new notice to view. <a href=\"#\" onclick=\"viewnotice(\'\')\">Click here</a>', 1540962021, '31/10/18 06:00', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `3_posts`
--

CREATE TABLE `3_posts` (
  `id` int(11) NOT NULL,
  `user` varchar(250) DEFAULT NULL,
  `post` text,
  `time` int(11) DEFAULT NULL,
  `details` varchar(250) DEFAULT NULL,
  `privacy` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members_details`
--

CREATE TABLE `members_details` (
  `id` int(11) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `contact` varchar(250) NOT NULL,
  `about` longtext NOT NULL,
  `hobbies` longtext NOT NULL,
  `clubs` longtext NOT NULL,
  `courses` longtext NOT NULL,
  `projects` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_details`
--

INSERT INTO `members_details` (`id`, `gender`, `dob`, `contact`, `about`, `hobbies`, `clubs`, `courses`, `projects`) VALUES
(1, 'Male', '22/01/1999', '', '', '', '', '', ''),
(2, 'Male', '10/03/2018', '', '', '', '', '', ''),
(3, 'Male', '10/16/2018', '', '', '', '', '', ''),
(10, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `members_list`
--

CREATE TABLE `members_list` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_list`
--

INSERT INTO `members_list` (`id`, `fullname`, `email`, `password`, `status`) VALUES
(1, 'Saurabh Bhole', 'saurabh@vitstudent.ac.in', '3fc0a7acf087f549ac2b266baf94b8b1', 'active'),
(2, 'Sarvesh Samvedi', 'sarvesh@vitstudent.ac.in', '787bf34e3cf70f259a1e2361391c083b', 'active'),
(3, 'Reetvik', 'reetvik@vitstudent.ac.in', 'cd488b64f992b897f2180f41827f0294', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` int(11) NOT NULL,
  `notice` text,
  `time` varchar(250) DEFAULT NULL,
  `status` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`id`, `notice`, `time`, `status`) VALUES
(0, 'You have a test scheduled at 8', '1540956948', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1_main`
--
ALTER TABLE `1_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `1_mates`
--
ALTER TABLE `1_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `1_notify`
--
ALTER TABLE `1_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `1_posts`
--
ALTER TABLE `1_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_main`
--
ALTER TABLE `2_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `2_mates`
--
ALTER TABLE `2_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `2_notify`
--
ALTER TABLE `2_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2_posts`
--
ALTER TABLE `2_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3_main`
--
ALTER TABLE `3_main`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `3_mates`
--
ALTER TABLE `3_mates`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `3_notify`
--
ALTER TABLE `3_notify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `3_posts`
--
ALTER TABLE `3_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_details`
--
ALTER TABLE `members_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_list`
--
ALTER TABLE `members_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1_notify`
--
ALTER TABLE `1_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `1_posts`
--
ALTER TABLE `1_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2_notify`
--
ALTER TABLE `2_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `2_posts`
--
ALTER TABLE `2_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `3_notify`
--
ALTER TABLE `3_notify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `3_posts`
--
ALTER TABLE `3_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_list`
--
ALTER TABLE `members_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
