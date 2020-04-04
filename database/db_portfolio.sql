-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2020 at 06:51 PM
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
  `ImageTwo` varchar(30) NOT NULL,
  `HeaderTwo` varchar(80) NOT NULL,
  `InfoTwo` text NOT NULL,
  `ImageThree` varchar(30) NOT NULL,
  `HeaderThree` varchar(80) NOT NULL,
  `InfoThree` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_info`
--

INSERT INTO `tbl_info` (`ID`, `ProjectsID`, `ProjectName`, `ProjectType`, `Description`, `ImageBig`, `ImageTwo`, `HeaderTwo`, `InfoTwo`, `ImageThree`, `HeaderThree`, `InfoThree`) VALUES
(1, '1', 'Thames River Anglers Association', 'web design', 'TRAA is a volunteer organization in London, Ontario which works closely with the community, promotes environment-friendly activities and protects nature within the Thames River watershed. The task was to rebuild and redesign the existing website which should present the organization and its events, share current news and projects and raise money for some activities. It was a team project with Evgeniia Sinduikova.', 'traa.jpg', 'papers_traa2.png', 'the solution for printed advertising and clothing', 'As the TRAA is a volunteer organization we faced an issue of how to monetize the brand and make it recognizable. With the existing logo and color scheme we have created some printed advertising, branded t-shirts and blazers, office merchandize and business cards to support the campaign.', 'photocup_traa3.jpg', 'promotion campaign and events', 'We planned a great promotional campaign to draw adults and kids into a few important events that would have done a huge impact for the community and the environment. Also, we planned and launched the educational session at schools about Thames River and how to protect the nature.'),
(2, '2', 'Golden Tooth Agency', 'the challenge of the project', 'This is a college team project for a new advertising agency startup, owned by four young but very talented students. The main challenge was to create the whole project (name, layout, logo, slogan and website) from scratch within two weeks. As a completely new and unknown company, we had to make it outstanding from others. It was a team project with Evgeniia Sinduikova, Gleb Zavizenov and Nitya Buch.', 'golden_tooth.jpg', 'gtooth_2.jpg', 'the solution', 'To present the creative agency, we had to come up with an unusual and catching name and tagline. So we chose the Golden Tooth, the name which coheres with something unique and unexpected. Also, we created a main hero, an engaging character with a beard and golden tooth. In order to support this idea, we created some kind of variation for the main character\'s appearance and highlighted all the advantages of the agency compared with competitors.', 'blank.png', '', ''),
(3, '3', 'Nike Joyride Sneakers', 'web design and development', 'This is an informational one-page website for the famous well-known brand. It features introduction of the new sneakers with demonstration of all the benefits of completely new footwear technology. I created the website using simplistic and minimalistic approach. Comparing to the main website just a bit of additional functionality was added, for example: links to the store and the main commercial page.', 'joyride_nike.jpg', 'blank.png', '', '', 'blank.png', '', ''),
(4, '4', 'The Weather Channel Wine', 'the challenge of the project', 'The task was to create a wine advertising for a famous brand, in this case The Weather Channel. The biggest challenge was to connect the disparate things and come up with a label and a name for the wine taking into account the specifics and significant features of the brand.', 'weather_wine.jpg', 'lable_wine.jpg', 'the solution for label design', 'For label design I decided to make something light, subtle and simple using the brand colors, idea and overall simplicity. The name “Head in the Clouds” resonates with changeable weather and with a slight dizziness after consuming wine. As an illustration of it, I have drawn a girl’s silhouette and watercolor cloud and added a small description.', 'blank.png', '', ''),
(5, '5', 'Thermo security System', 'the challenge of the project', 'The Thermo Security System is a fully digital hardwired and wireless home environment control system. The main goal was to create an interactive application design, the graphical user interface with specific information and develop an engaging end-user experience with which they can interact easily. ', 'thermo_security.jpg', 'tablet_thermo.jpg', 'the solution', 'As a solution fully adaptive for all device’s screen sizes user interface was created. All icons and graphics were designed so everyone can understand their meaning intuitively. The high contrast blue palette was used to make it look modern so it fits into any interior.', 'inter_thermo.jpg', 'graphic user interface ', 'This app gives the ability to control different fixtures in a house, for instance: temperature, humidity, air quality and check the forecast. This is an example of a control device for the interior. All requirements for the final actual product were met. '),
(6, '6', 'Organ Marketing Campaign', 'the challenge of the project', 'Organ regeneration becomes more popular nowadays. This complicated process of decellularization of human organs needs to be explained to not only scientists and physicians, but all other people. For this purpose the informational brochure and logo were created. It was a team project with Evgeniia Sinduikova and Gleb Zavizenov.', 'organ_rebirth.jpg', 'logo_organ.jpg', 'the solution', 'All complex information was illustrated by infographics which shows all significant steps/stages of the decellularization process and describes it in a clear and simple way. The logo and tagline were created in order to illustrate the innovation of molecular technologies. Organ rebirth name means that any organ can be “washed” to biomaterial and reused for different purposes.', 'blank.png', '', ''),
(7, '7', 'Coffee Care Cafe', 'logo design', 'This logo was created as a part of the assignment for creating a new brand identity for commercial purposes. The stylized cup in hand illustrates the warmth, home comfort and rich taste of coffee. Chocolate and warm pastel colors were chosen for the image and title.', 'coffee_care.jpg', 'blank.png', '', '', 'blank.png', '', ''),
(8, '8', 'Clever School', 'the challenge of the project', 'Clever is a progressive school association with innovative teaching methods in Kyiv, Ukraine. The main idea of the school is belief that not all children are smart and talented by nature. The challenge was to create visual identity with a brand guide and supporting materials.', 'clever_logo.jpg', 'clever.jpg', 'the solution', 'The final version is a recognizable logo based on a clover flower outline, which symbolizes friendliness and cleverness. The clover flower and pencil are the main visual elements of the logo which correlate with creativity and curiosity. There are two versions of the logo: colored and in line. Linear logo was used for advertising printed materials. One of them was a promotional flyer with brief information. Sheet from a notebook and school supplies illustrations was chosen as a supporting background.', 'blank.png', '', ''),
(9, '9', 'Couples Resort', 'web design', 'Couples Resort is a cozy resort located in Muskoka, Ontario surrounded by wild nature. The goal was to reorganize the existing website, make it user friendly and fill it with the necessary information and images. As the clients mostly access the resort’s booking system through the website the main issue was to build excellent customer experience in all possible aspects.', 'couples_resort.jpg', 'blank.png', '', '', 'blank.png', '', ''),
(10, '10', 'Haymach Canada', 'web design', 'Haymach is an independent, locally owned and operated business in London, Ontario which supplies its restaurant equipment to a wide variety of clients across Canada. This company offers a huge range of commercial restaurant equipment and supplies, conducts auctions and helps small local businesses to replace existing equipment or start a new restaurant. The main challenge was to implement all information, functionality and a huge range of equipment in a restrained design. Bold font, cold steel colors and monochrome header image were chosen for the representation of the professionalism and field of activity of the Haymach company.', 'haymach.jpg', 'blank.png', '', '', 'blank.png', '', ''),
(11, '11', 'Stronger Together', 'the challenge of the project', 'Stronger Together is the name of an awareness campaign for Regional HIV/AIDS Connection volunteer organization in London, Ontario. This campaign was aimed to educate teenagers about HIV/AIDS stigma and discrimination. The main purpose was to explain the target audience about this complex and uncomfortable topic. It was a team project with Evgeniia Sinduikova, Gleb Zavizenov, Nitya Buch and Sonali Victor.', 'hiv.jpg', 'love_mockup.jpg', 'the supported printed advertising', 'The website was chosen as a main source of information and it should present all essential information about awareness campaign. As a main idea, we created four characters-teenagers named Love, Treatment, Connection, Protection as the most necessary sources of support for people with HIV. And fifth character Gary is in the role of an ordinary curious teenager. All characters have their own mission and impact on dispelling the myth about HIV infection.', 'hiv_heroes.jpg', 'the solution', 'It was a real challenge to come up with a bright and attractive content that will hit the target audience and resonate in their hearts. For the supported printed advertising, we decided to make separate ads for each character and place them in all the most popular social medias. The ads have links to the main website and catching brief information. Each ad has an illustration of the character and its own recognizable color.'),
(12, '12', 'Ontario Tourism Project', 'web design', 'This is one of the brainstorm projects created in 24 hours for promoting tourism in the Ontario province during summer months. Ontario is a large province in the South of Canada with breathtaking views of vast wilderness and green forests. The main challenge was to create an inviting one-page website, presenting all the attractions and activities that you can see or do during your travel to Ontario. So, as the result we came up with an informative website with galleries, promotions and a visitor login system. Team project with Evgeniia Sinduikova, Gleb Zavizenov, Nitya Buch and Sonali Victor.', 'ontario_big.jpg', 'blank.png', '', '', 'blank.png', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
(9, 'website', 'graphic design', 'couples_resort_sml.jpg'),
(10, 'website', 'front-end', 'haymach_sml.jpg'),
(11, 'website', 'graphic design', 'hiv_sml.jpg'),
(12, 'website', 'graphic design', 'ontario_sml.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
