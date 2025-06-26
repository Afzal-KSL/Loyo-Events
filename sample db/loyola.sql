-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2024 at 05:51 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loyola`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `S.No` int NOT NULL AUTO_INCREMENT,
  `champ` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` text NOT NULL,
  `congrats` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`S.No`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`S.No`, `champ`, `img`, `congrats`) VALUES
(1, 'Current Loyo Fest Champions (BCA):', 'images\\loyofest_bca_winners', 'Congratulations, students and friends! You have won the overall championship for the Loyo Fest in 2024. This is the result of the faculty and students working together. I appreciate it. Thank you so much for all.'),
(2, 'Current Loyo Sports 2024 Champions (Physical Education):', 'images\\loyosports_phy_winners', 'Congratulations, students and friends! You have won the overall championship for the Loyo Sports in 2024. This is the result of the faculty and students working together. I appreciate it. Thank you so much for all.');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int NOT NULL,
  `event_title` varchar(50) NOT NULL,
  `event_points` int DEFAULT NULL,
  `participents` int DEFAULT '0',
  `img_link` text,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_points`, `participents`, `img_link`, `type_id`) VALUES
(1, 'LEAFLET', 10, 1, 'images/brochure.jpg', 1),
(2, 'HUMAN ANTIVIRUS', 10, 1, 'images/human.jpg', 1),
(3, 'MAP', 10, 1, 'images/poster.jpg', 1),
(4, 'FUN POINT', 10, 1, 'images/meme.jpg', 1),
(5, 'FOOTBALL', 15, 16, 'images/football.jpg', 2),
(6, 'CRICKET', 15, 15, 'images/cricket1.jpg', 2),
(7, 'THEME DANCE', 10, 7, 'images/themedance.jpg', 3),
(8, 'SOLO DANCE', 10, 1, 'images/solodance.jpg', 3),
(9, 'GROUP SINGING', 10, 5, 'images/groupsing.jpg', 3),
(10, 'SOLO SINGING', 10, 1, 'images/solosing.jpg', 3),
(11, 'SOAP CARVING', 5, 1, 'images/soap.jpg', 4),
(12, 'SHORT-FILM', 5, 12, 'images/shortfilm.jpg', 4),
(13, 'HERBAL DECORATION', 5, 2, 'images/herb.jpg', 4),
(14, 'RANGOLI', 5, 1, 'images/rangoli.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

DROP TABLE IF EXISTS `event_info`;
CREATE TABLE IF NOT EXISTS `event_info` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  `location` varchar(300) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`event_id`, `Date`, `time`, `location`) VALUES
(1, '2024-03-01', '9.00am', 'BCA Lab'),
(2, '2024-03-01', '11.00am', 'BCA Lab'),
(3, '2024-03-01', '1.00pm', 'BCA Lab'),
(4, '2024-03-01', '3.00pm', 'BCA Lab'),
(5, '2024-03-01', '9.00am', 'Ground 1'),
(6, '2024-03-01', '9.00am', 'Ground 2'),
(7, '2024-03-01', '9.00am', 'ON Stage'),
(8, '2024-03-01', '11.00am', 'ON Stage'),
(9, '2024-03-01', '1.00pm', 'ON Stage'),
(10, '2024-03-01', '3.00pm', 'ON Stage'),
(11, '2024-03-01', '9.00am', 'Arulhalaya'),
(12, '2024-03-01', '11.00am', 'Arulhalaya'),
(13, '2024-03-01', '1.00pm', 'Arulhalaya'),
(14, '2024-03-01', '3.00pm', 'Arulhalaya');

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

DROP TABLE IF EXISTS `event_type`;
CREATE TABLE IF NOT EXISTS `event_type` (
  `type_id` int NOT NULL,
  `type_title` text NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`type_id`, `type_title`) VALUES
(1, 'Loyo Hackaton'),
(2, 'Loyo Sports'),
(3, 'Loyo Fest'),
(4, 'Loyo Talents');

-- --------------------------------------------------------

--
-- Table structure for table `participent`
--

DROP TABLE IF EXISTS `participent`;
CREATE TABLE IF NOT EXISTS `participent` (
  `S.No` int NOT NULL AUTO_INCREMENT,
  `usn` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(11) NOT NULL,
  `sem` int NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `college` varchar(20) NOT NULL,
  `rid` int NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`S.No`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participent`
--

INSERT INTO `participent` (`S.No`, `usn`, `name`, `branch`, `sem`, `email`, `phone`, `college`, `rid`, `event_id`) VALUES
(12, '21UCA45', 'Afzal K S L', 'BCA', 6, '21uca45@lcv.edu.in', '9655529733', 'LCV', 1, 5),
(14, '21UCA35', 'Pandian S', 'BCA', 6, '21uca35@lcv.edu.in', '7708672379', 'LCV', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

DROP TABLE IF EXISTS `registered`;
CREATE TABLE IF NOT EXISTS `registered` (
  `S.No` int NOT NULL AUTO_INCREMENT,
  `rid` int NOT NULL,
  `usn` varchar(20) NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`S.No`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`S.No`, `rid`, `usn`, `event_id`) VALUES
(9, 1, '21UCA45', 5),
(11, 2, '21UCA35', 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff_coordinator`
--

DROP TABLE IF EXISTS `staff_coordinator`;
CREATE TABLE IF NOT EXISTS `staff_coordinator` (
  `stid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_coordinator`
--

INSERT INTO `staff_coordinator` (`stid`, `name`, `phone`, `event_id`) VALUES
(1, 'Dharmaraj', '9655153675', 1),
(2, 'Catherine Loura', '7502228413', 2),
(3, 'Jayabaskaran', '9894388844', 3),
(4, 'Kalaiyarasi', NULL, 4),
(5, 'Dharmaraj', '9655153675', 5),
(6, 'Catherine Loura', '7502228413', 6),
(7, 'Jayabaskaran', '9894388844', 7),
(8, 'Kalaiyarasi', NULL, 8),
(9, 'Dharmaraj', '9655153675', 9),
(10, 'Catherine Loura', '7502228413', 10),
(11, 'Jayabaskaran', '9894388844', 11),
(12, 'Kalaiyarasi', NULL, 12),
(13, 'Dharmaraj', '9655153675', 13),
(14, 'Catherine Loura', '7502228413', 14);

-- --------------------------------------------------------

--
-- Table structure for table `student_coordinator`
--

DROP TABLE IF EXISTS `student_coordinator`;
CREATE TABLE IF NOT EXISTS `student_coordinator` (
  `sid` int NOT NULL AUTO_INCREMENT,
  `st_name` varchar(100) NOT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `event_id` int DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_coordinator`
--

INSERT INTO `student_coordinator` (`sid`, `st_name`, `phone`, `event_id`) VALUES
(1, 'Dharma Stephen', '7695041116', 1),
(2, 'Inbanesan', '9789271260', 2),
(3, 'Ragul', '9384756754', 3),
(4, 'Pandian', '7708672379', 4),
(5, 'Mukesh', '8072255359', 5),
(6, 'Murali', '8667027370', 6),
(7, 'Joseph Thomas', '6382528598', 7),
(8, 'Suriya Prakash', '9361394809', 8),
(9, 'Mugilan', '8015231132', 9),
(10, 'Edison', '9384415688', 10),
(11, 'Vicky', '9384496450', 11),
(12, 'Alwin Mano', '9489126896', 12),
(13, 'Tamilnithi', '8531933054', 13),
(14, 'Punith', '8124264190', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
