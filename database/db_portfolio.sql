-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2019 at 12:17 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_info`
--

DROP TABLE IF EXISTS `tbl_info`;
CREATE TABLE IF NOT EXISTS `tbl_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectsID` varchar(30) NOT NULL,
  `ProjectName` varchar(200) NOT NULL,
  `ProjectType` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `ImageBig` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `ProjectsID`, `ProjectName`, `ProjectType`, `Description`, `ImageBig`) VALUES
(1, '1', 'Thames River Anglers Association', 'web design', 'TRAA is a volunteer organization in Ontario, \r\nwhich works closely with the community,\r\npromote environment-friendly activities and protect \r\nnature. This is the website version that should present\r\norganization and their events, as well as fundraising \r\nmoney for their activities.', 'traa.jpg'),
(2, '2', 'Golden Tooth Agency', 'web design', 'Golden Tooth is a new startup advertising agency, \r\nowned by four young but very talented students.\r\nThe name, layout, logo, and slogan have been designed \r\nfrom scratch. The main task was to present a completely \r\nthe new and unknown company, as well as highlight all the \r\nadvantages and compare them with competitors.', 'golden_tooth.jpg'),
(3, '3', 'Nike Joyride Sneakers', 'web design', 'Informational one-page website for the famous brand.\r\nNew sneakers introduction with demonstration all \r\nbenefits, adventures and completely new technology of \r\nfootwear. The minimalistic and simple design has been applied,\r\nAccording to the existing of the main website, the minimum \r\nfunctionality was added.', 'joyride_nike.jpg'),
(4, '4', 'The Weather Channel Wine', 'label design', 'The task was to create a wine advertising for a famous brand, \r\nin this case The Weather Chanel. The biggest challenge was \r\nto connect the disparate things, and came up with a label \r\nand a name for the wine accounting the specifics and \r\na significant feature of the brand.', 'weather_wine.jpg'),
(5, '5', 'Thermo security System', 'app design', 'The main task was to create an interactive application, \r\ndesign the graphical user interface with specific information,\r\nand develop an engaging experience for the end-user \r\nwith which they can interact easily. This app gives the \r\nability to regulate different indicators, for instance, \r\ntemperature, humidity, air status and check the forecast.', 'thermo_security.jpg'),
(6, '6', 'Organ Marketing Campaign', 'brochure design', 'Organ regeneration becomes more popular nowadays. \r\nAnd this complicated process of  decellularization of human \r\norgans need to be explained to all other people.\r\nFor this purpose the informational brochure and logo were\r\ncreated. All complex information was illustrated by \r\ninfographics and described in cleartext.', 'organ_rebirth.jpg'),
(7, '7', 'Coffee Care Cafe', 'logo design', 'This logo was created as part of the assignment\r\nfor creating a new brand identity. The stylized cup in the hand\r\nillustrates the warmth, home comfort and rich taste of the coffee. \r\nChocolate and warm pastel colors were chosen for \r\nthe image and title.', 'coffee_care.jpg'),
(8, '8', 'Clever School', 'logo design', 'Visual identity and supporting brand guide was created for \r\nprogressive schools with innovative teaching methods\r\nin Kyiv, Ukraine. And the main idea of the school is the belief \r\nthat all children are smart and talented by nature. The clover \r\nflower and pencil were chosen as the main visual elements \r\nwhich symbolize creativity and curiosity.', 'clever_logo.jpg'),
(9, '9', 'Couples Resort', 'web design', 'Couples Resort is a cozy resort located in Muskoka, ON, \r\nsurrounded wild nature. As the clients mostly access \r\nto it through the website the main issue was to \r\nredesign and build excellent customer experience in \r\nall possible aspects.', 'couples_resort.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

DROP TABLE IF EXISTS `tbl_projects`;
CREATE TABLE IF NOT EXISTS `tbl_projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NOT NULL,
  `Heading` varchar(50) NOT NULL,
  `ImageSmall` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`ID`, `Type`, `Heading`, `ImageSmall`) VALUES
(1, 'website', 'front-end', 'traa_sml.jpg'),
(2, 'website', 'graphic design', 'golden_tooth_sml.jpg'),
(3, 'website', 'front-end', 'joyride_nike_sml.jpg'),
(4, 'advertising', 'graphic design', 'weather_wine_sml.jpg'),
(5, 'app', 'graphic design', 'thermo_security_sml.jpg'),
(6, 'advertising', 'graphic design', 'organ_rebirth_sml.jpg'),
(7, 'identity', 'logo design', 'coffee_care_sml.jpg'),
(8, 'identity', 'logo design', 'clever_logo_sml.jpg'),
(9, 'website', 'graphic design', 'couples_resort_sml.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
