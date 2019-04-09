-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2019 at 03:25 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iep_minors`
--
CREATE DATABASE IF NOT EXISTS `iep_minors` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `iep_minors`;

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `minor_id` int(11) NOT NULL,
  `minor_name` varchar(50) NOT NULL,
  `max_students` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `minor`
--

INSERT INTO `minor` (`minor_id`, `minor_name`, `max_students`) VALUES
(1, 'Applied chemistry and molecular engineering', 50),
(2, 'Biomechanics', 50),
(3, 'Biomedical engineering', 50),
(4, 'Connected systems', 50),
(5, 'Crime and security engineering', 50),
(6, 'Engineering & public policy', 50),
(7, 'Entrepreneurship', 50),
(8, 'Environmental engineering', 50),
(9, 'Finance & accounting', 50),
(10, 'Intelligent systems', 50),
(11, 'Management', 50),
(12, 'Manufacturing the future: regenerative medicines', 50),
(13, 'Modern applications of engineering mathematics', 50),
(14, 'Modern foreign languages', 50),
(15, 'Nanotechnology', 50),
(16, 'Ocean engineering', 50),
(17, 'Programming', 50),
(18, 'Strategic thinking in engineering & technology', 50),
(19, 'Applied chemistry and molecular engineering', 50),
(20, 'Biomechanics', 50),
(21, 'Biomedical engineering', 50),
(22, 'Connected systems', 50),
(23, 'Crime and security engineering', 50),
(24, 'Engineering & public policy', 50),
(25, 'Entrepreneurship', 50),
(26, 'Environmental engineering', 50),
(27, 'Finance & accounting', 50),
(28, 'Intelligent systems', 50),
(29, 'Management', 50),
(30, 'Manufacturing the future: regenerative medicines', 50),
(31, 'Modern applications of engineering mathematics', 50),
(32, 'Modern foreign languages', 50),
(33, 'Nanotechnology', 50),
(34, 'Ocean engineering', 50),
(35, 'Programming', 50),
(36, 'Strategic thinking in engineering & technology', 50),
(37, 'Applied chemistry and molecular engineering', 50),
(38, 'Biomechanics', 50),
(39, 'Biomedical engineering', 50),
(40, 'Connected systems', 50),
(41, 'Crime and security engineering', 50),
(42, 'Engineering & public policy', 50),
(43, 'Entrepreneurship', 50),
(44, 'Environmental engineering', 50),
(45, 'Finance & accounting', 50),
(46, 'Intelligent systems', 50),
(47, 'Management', 50),
(48, 'Manufacturing the future: regenerative medicines', 50),
(49, 'Modern applications of engineering mathematics', 50),
(50, 'Modern foreign languages', 50),
(51, 'Nanotechnology', 50),
(52, 'Ocean engineering', 50),
(53, 'Programming', 50),
(54, 'Strategic thinking in engineering & technology', 50);

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `prog_id` int(11) NOT NULL,
  `programme_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`prog_id`, `programme_name`) VALUES
(1, 'BEng Engineering (Biochemical)'),
(2, 'MEng Engineering (Biochemical)'),
(3, 'BEng Engineering (Biomedical)'),
(4, 'MEng Engineering (Biomedical)'),
(5, 'BEng Engineering (Chemical)'),
(6, 'MEng Engineering (Chemical)'),
(7, 'BEng Engineering (Civil)'),
(8, 'MEng Engineering (Civil)'),
(9, 'BSc Computer Science'),
(10, 'MEng Computer Science'),
(11, 'BEng Engineering (Electronic and Electrical)'),
(12, 'MEng Engineering (Electronic and Electrical)'),
(13, 'BSc Management Science'),
(14, 'MSci Management Science'),
(15, 'BEng Engineering (Mechanical)'),
(16, 'MEng Engineering (Mechanical)');

-- --------------------------------------------------------

--
-- Table structure for table `selection`
--

CREATE TABLE `selection` (
  `user_id` int(11) NOT NULL,
  `minor_choice_1` int(11) NOT NULL,
  `minor_choice_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `prog_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `role`, `prog_id`) VALUES
(1, 'ucadmn1@ucl.ac.uk', 'admin1', 'administrator', NULL),
(2, 'ucstdt1@ucl.ac.uk', 'student1', 'student', 1),
(3, 'ucstdt2@ucl.ac.uk', 'student2', 'student', 2),
(4, 'ucstdt3@ucl.ac.uk', 'student3', 'student', 3),
(5, 'ucstdt4@ucl.ac.uk', 'student4', 'student', 4),
(6, 'ucstdt5@ucl.ac.uk', 'student5', 'student', 5),
(7, 'ucstdt6@ucl.ac.uk', 'student6', 'student', 6),
(8, 'ucstdt7@ucl.ac.uk', 'student7', 'student', 7),
(9, 'ucstdt8@ucl.ac.uk', 'student8', 'student', 8),
(10, 'ucstdt9@ucl.ac.uk', 'student9', 'student', 9),
(11, 'ucstdt10@ucl.ac.uk', 'student10', 'student', 10),
(12, 'ucstdt11@ucl.ac.uk', 'student11', 'student', 11),
(13, 'ucstdt12@ucl.ac.uk', 'student12', 'student', 12),
(14, 'ucstdt13@ucl.ac.uk', 'student13', 'student', 13),
(15, 'ucstdt14@ucl.ac.uk', 'student14', 'student', 14),
(16, 'ucstdt15@ucl.ac.uk', 'student15', 'student', 15),
(17, 'ucstdt16@ucl.ac.uk', 'student16', 'student', 16),
(18, 'ucadmn2@ucl.ac.uk', 'admin2', 'administrator', NULL),
(19, 'ucadmn3@ucl.ac.uk', 'admin3', 'administrator', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`minor_id`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `selection`
--
ALTER TABLE `selection`
  ADD KEY `user_id` (`user_id`,`minor_choice_1`,`minor_choice_2`),
  ADD KEY `minor_choice_1` (`minor_choice_1`),
  ADD KEY `minor_choice_2` (`minor_choice_2`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `prog_id` (`prog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `minor`
--
ALTER TABLE `minor`
  MODIFY `minor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `selection`
--
ALTER TABLE `selection`
  ADD CONSTRAINT `selection_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `selection_ibfk_2` FOREIGN KEY (`minor_choice_1`) REFERENCES `minor` (`minor_id`),
  ADD CONSTRAINT `selection_ibfk_3` FOREIGN KEY (`minor_choice_2`) REFERENCES `minor` (`minor_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`prog_id`) REFERENCES `programme` (`prog_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Add user for the database --
CREATE USER 'minors'@'localhost' IDENTIFIED BY 'iep';
GRANT ALL PRIVILEGES ON iep_minors . * TO 'minors'@'localhost';
FLUSH PRIVILEGES;