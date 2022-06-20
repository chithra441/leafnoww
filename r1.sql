-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 15, 2022 at 10:12 AM
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
-- Database: `r1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_login` ()  select UID,username from login$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardrent`
-- (See below for the actual view)
--
CREATE TABLE `cardrent` (
`plant_id` int(11)
,`pname` varchar(100)
,`pfamily` varchar(100)
,`rent_amount` int(11)
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `cardsale`
-- (See below for the actual view)
--
CREATE TABLE `cardsale` (
`plant_id` int(11)
,`pname` varchar(100)
,`pfamily` varchar(100)
,`totalcost` double
,`image` varchar(500)
,`time` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `feedbackuser`
--

CREATE TABLE `feedbackuser` (
  `usrid` int(50) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbackuser`
--

INSERT INTO `feedbackuser` (`usrid`, `name`, `email`, `question`) VALUES
(2, 'Jaydeep', 'jv@gmail.com', 'hkajhfkjsdf'),
(6, 'BHYRAVI', 'bhyravi.cs@gmail.com', 'VHJBKJNKL,NKJH'),
(13, 'chithra', 'cchithralekha01@gmail.com', 'hijnokl'),
(15, 'nandi', 'nandhiy@gmail.com', 'hi'),
(15, 'nandhini', 'nandhini2001@gmail.com', 'hnjhnjilm'),
(17, 'chits', 'chithrsc@gmail.com', ' hugbuj'),
(18, 'BHYRAVI', 'lakshmi@gmail.com', 'hi'),
(19, 'rannu', 'rannu@gmail.com', 'nice property'),
(20, 'dhruvimg', 'dhruvi@gmail.com', 'nice property');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `pname` varchar(100) NOT NULL,
  `pfamily` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `sciname` varchar(500) NOT NULL,
  `area` double NOT NULL,
  `image` varchar(500) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL, 
  `time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `uid`, `bid`, `pname`, `pfamily`, `description`, `sciname`, `area`, `image`, `image1`, `image2`, `image3`,`time`) VALUES
(1, 1, NULL, ' true grass', 'monocolytedon', 'It is the highest quality grass.', 'poacae', 450, 'img/plants/img1.jpg', 'img/plants/img1.2.jpg', 'img/plants/img1.jpg', 'img/plants/img1.2.jpg','2022-06-15 03:27:48'),
(2, 1, NULL, 'lilies', 'monocolytedon', 'Lilies are a group of flowering plants which are important in culture and literature in much of the world. ', 'liliaceac', 500, 'img/plants/img1.3.jpg', 'img/plants/img1.4.jpg', 'img/plants/img1.3.jpg', 'img/plants/img1.4.jpg','2022-06-15 03:30:16'),
(3, 1, NULL, 'orchids', 'monocolytdon', 'It is a diverse and widespread family of flowering plants, with blooms that are often colourful and fragrant.', 'orchidacea', 450, 'img/plants/img1.5.jpg', 'img/plants/img1.6.jpg', 'img/plants/img1.5.jpg', 'img/plants/img1.6.jpg','2022-06-15 03:33:16'),
(4, 1, NULL, 'palms', 'monocolytdon', 'Those having a tree-like form are called palm trees.', 'areacae', 450, 'img/plants/img1.7.jpg', 'img/plants/img1.8.jpg', 'img/plants/img1.7.jpg', 'img/plants/img1.8.jpg','2022-06-15 03:34:39'),
(5 ,1, NULL, 'irisies', 'monocolytdon', 'Iris is a genus of 260–300 species of flowering plants with showy flowers', 'iridacea', 550, 'img/plants/img1.9.jpg', 'img/plants/img2.0.jpg', 'img/plants/img1.9.jpg', 'img/plants/img2.0.jpg','2022-06-15 05:27:52'),
(7, NULL, 2, 'common yarrow', 'asteracae', ' It is native to temperate regions of the Northern Hemisphere', 'archilea milefolium', 800, 'img/plants/img2.1.jpg', 'img/plants/img2.2.jpg', 'img/plants/img2.1.jpg', 'img/plants/img2.2.jpg','2022-06-15 12:30:38'),
(9, NULL, 2, 'mt atlas daisy', 'asteracae', ' The white daisy like flowers have a red stripe on the reverse side of the petals. ', 'alacyclus pyrethrum', 800, 'img/plants/img2.3.jpg', 'img/plants/img2.4.jpg', 'img/plants/img2.3.jpg', 'img/plants/img2.4.jpg','2022-06-15 12:35:57'),
(11, NULL, 3, 'horse gram', 'fabaceae', 'Horse gram is the most protein-rich lentil found on the planet. ', 'macrotylme uniflorum', 100, 'img/plants/img2.5.jpg', 'img/plants/img2.6.jpg', 'img/plants/img2.5.jpg', 'img/plants/img2.6.jpg','2022-06-15 12:44:07'),
(14, NULL, 3, 'soap pod', 'fabaceae', 'soap pod is known as shikakai and is employed for its affinity for the hair', 'acacia concinna', 500, 'img/plants/img2.7.jpg', 'img/plants/img2.8.jpg', 'img/plants/img2.7.jpg', 'img/plants/img2.8.jpg','2022-06-15 12:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UID` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UID`, `username`, `password`, `name`, `surname`, `email`, `phone`) VALUES
(1, 'manassinkar', 'manas12345', 'Manas', 'Sinkar', 'manas.sinkar@gmail.com', '9022942188'),
(2, 'jaydeep', 'jaydeep12345', 'Jaydeep', 'Vaghasiya', 'jaydeep@gmail.com', '9854545452'),
(3, 'parththosani', 'parth12345', 'Parth', 'Thosani', 'parth@gmail.com', '9854512541'),
(4, 'sunitvaidya', 'qwertyuiop', 'Sunit', 'Vaidya', 'sunit.vaidya@spit.ac.in', '9876543243'),
(5, 'keerthi', '1234567890', 'Keerthi', 'srinivas', 'keerthishetty216@gmail.com', '7829746200'),
(8, 'BHYRAVIC', '2345678901', 'BHYRAVI', 'C', 'bhyravi.cs@gmail.com', '7899658036'),
(9, 'admin', '1234567890', 'CHITHRA', 'C', 'c.chithralekha01@gmail.com', '7899658036'),
(10, 'adfr', '1234567890', 'abcd', 'def', 'bhyravi.cs@gmail.com', '7899658036'),
(11, 'BHARGAVIC', '7899658035', 'BHARGAVI', 'C', 'bhargavi.cs00@gmail.com', '7899658035'),
(12, 'nidhik', 'nidhikeshav', 'nidhi', 'k', 'nidhi@gmail.com', '7899653045'),
(13, 'BHAVYAM', 'bhavya1234', 'BHAVYA', 'M', 'bhavya@gmail.com', '7899658035'),
(14, 'lakshmig', '2345678901', 'lakshmi', 'g', 'lakshmi@gmail.com', '7899658045'),
(15, 'chithra', '5678901234', 'chithra', 'lekha', 'cchithralekha2001@gmail.com', '1234567890'),
(16, 'disham', '3456789012', 'disha', 'm', 'disha@gmail.com', '789965803'),
(17, 'nandhini', '1234567890', 'nandhini', 'h', 'nandhinis@gmail.com', '7899658036'),
(18, 'reetus', '2345678901', 'reetu', 'S', 'reetus@gmail.com', '7899653045'),
(19, 'rannuc', '3456789012', 'rannu', 'c', 'rannu@gmail.com', '2345678901'),
(20, 'dhruvimg', '2345678901', 'dhruvi', 'm', 'dhruvi@gmail.com', '7899653045'),
(21, 'hijkl', '2345678901', 'hijk', 'l', 'lakshmi@gmail.com', '7899653045'),
(22, 'anukg', '2345678901', 'anu', 'k', 'lakshmi@gmail.com', '7899658035'),
(23, 'nandhini', '5678901234','nandhini', 'S', 'nandhiniy@gmail.com', '7899658045');

--
-- Triggers `login`
--
DELIMITER $$
CREATE TRIGGER `after_login_insert` AFTER INSERT ON `login` FOR EACH ROW BEGIN INSERT into login_backup VALUES(NEW.UID, NEW.username, NEW.password, NEW.name, NEW.surname, NEW.email, NEW.phone);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login_backup`
--

CREATE TABLE `login_backup` (
  `UID` int(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_backup`
--

INSERT INTO `login_backup` (`UID`, `username`, `password`, `name`, `surname`, `email`, `phone`) VALUES
(1, 'manassinkar', 'manas12345', 'Manas', 'Sinkar', 'manas.sinkar@gmail.com', '9022942188'),
(2, 'jaydeep', 'jaydeep12345', 'Jaydeep', 'Vaghasiya', 'jaydeep@gmail.com', '9854545452'),
(3, 'parththosani', 'parth12345', 'Parth', 'Thosani', 'parth@gmail.com', '9854512541'),
(4, 'sunitvaidya', 'qwertyuiop', 'Sunit', 'Vaidya', 'sunit.vaidya@spit.ac.in', '9876543243'),
(5, 'keerthi', '1234567890', 'Keerthi', 'srinivas', 'keerthishetty216@gmail.com', '7829746200'),
(6, 'BHYRAVIC', '2345678901', 'BHYRAVI', 'C', 'bhyravi.cs@gmail.com', '7899658036'),
(7, 'BHYRAVIC', '2345678901', 'BHYRAVI', 'C', 'bhyravi.cs@gmail.com', '7899658036'),
(8, 'BHYRAVIC', '2345678901', 'BHYRAVI', 'C', 'bhyravi.cs@gmail.com', '7899658036'),
(9, 'admin', '1234567890', 'CHITHRA', 'C', 'chithra.cs@gmail.com', '7899658036'),
(10, 'adfr', '1234567890', 'abcd', 'def', 'bhyravi.cs@gmail.com', '7899658036'),
(11, 'BHARGAVIC', '7899658035', 'BHARGAVI', 'C', 'bhargavi.cs00@gmail.com', '7899658035'),
(12, 'nidhik', 'nidhikeshav', 'nidhi', 'k', 'nidhi@gmail.com', '7899653045'),
(13, 'BHAVYAM', 'bhavya1234', 'BHAVYA', 'M', 'bhavya@gmail.com', '7899658035'),
(14, 'lakshmig', '2345678901', 'lakshmi', 'g', 'lakshmi@gmail.com', '7899658045'),
(15, 'abcd', '5678901234', 'ab', 'c', 'lakshmi@gmail.com', '1234567890'),
(16, 'disham', '3456789012', 'disha', 'm', 'disha@gmail.com', '789965803'),
(17, 'defgh', '1234567890', 'defg', 'h', 'bhyravi.cs@gmail.com', '7899658036'),
(18, 'reetus', '2345678901', 'reetu', 'S', 'reetus@gmail.com', '7899653045'),
(19, 'rannuc', '3456789012', 'rannu', 'c', 'rannu@gmail.com', '2345678901'),
(20, 'dhruvimg', '2345678901', 'dhruvi', 'm', 'dhruvi@gmail.com', '7899653045'),
(21, 'hijkl', '2345678901', 'hijk', 'l', 'lakshmi@gmail.com', '7899653045'),
(22, 'anukg', '2345678901', 'anu', 'k', 'lakshmi@gmail.com', '7899658035'),
(23, 'nandhini', '5678901234', 'nandhini', 'S', 'nandhini@gmail.com', '7899658045');

-- --------------------------------------------------------

--

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `UID` int(100) NOT NULL,
  `buyer` varchar(100) NOT NULL,
  `Bank_name` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `paymentdet` varchar(10000) NOT NULL,
  `paymentno` int(100) NOT NULL,
  `payment_opt` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`UID`, `buyer`, `Bank_name`, `amount`, `paymentdet`, `paymentno`, `payment_opt`) VALUES
(3, 'jaydeep', 'sbi', 1000, 'dfdsf', 1234, 'Cash'),
(3, 'parththosani', 'HDFC', 6000, 'dfdsf', 1456278856, 'UPI'),
(3, 'parththosani', 'HDFC', 6000, 'dfdsf', 1456278856, 'UPI'),
(1, 'manassinkar', 'HDFC', 3600, 'sasas', 123, 'Cash'),
(1, 'manassinkar', 'HDFC', 3600, 'sasas', 123, 'Cash'),
(1, 'BHYRAVIC', 'RDRG', 3600, 'FGVYG', 2147483647, 'CASH'),
(13, 'BHAVYAM', 'dcgh', 2000, 'jmn ', 45576, 'CASH'),
(13, 'BHAVYA', 'sbi', 3000, 'hnkjn', 134245, 'CASH'),
(1, 'abcd', 'sbi', 3600, 'jmn ', 2147483647, 'CArd'),
(1, 'defgh', 'hijnlm', 4500, 'ghb', 57698, 'niojo'),
(1, 'Manas', 'hdfc', 1500, 'jmn ', 2147483647, 'CASH'),
(3, 'rannuc', 'sbi', 14367, 'jmn ', 2147483647, 'CArd'),
(3, 'dhruvimg', 'sbi', 1436, 'abcd', 2147483647, 'CASH');

-- --------------------------------------------------------
--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `amount` int(255) DEFAULT NULL,
  `pay_to` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `name`, `email`, `phone`, `amount`, `pay_to`, `created_at`) VALUES
(1, 'XYZ', 'leafnow@gmail.com', '0000000000', 1, 'Leafnow fund.', '2022-06-15 06:42:12');
create table `forum_topics` (
     `topic_id` int not null primary key auto_increment,
     `topic_title` varchar (150),
     `topic_create_time` datetime,
     `topic_owner` varchar (150)
     )ENGINE=InnoDB DEFAULT CHARSET=latin1;;


 create table forum_posts (
    `post_id` int not null primary key auto_increment,
    `topic_id` int not null,
    `post_text` text,
    `post_create_time` datetime,
   `post_owner` varchar (150)
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `form`(
  `uid` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `timedenote` int(20) NOT NULL,
  `questions` varchar(100) NOT NULL,
  `phone` int(10) NOT NULL,
`email` varchar(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `rent` (
`plant_id`   int(11) NOT NULL,
  `rent_amount` int(11) NOT NULL,
  `deposit_amount` int(11) NOT NULL,
  `time_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`plant_id`, `rent_amount`, `deposit_amount`, `time_period`) VALUES
(3, 1500, 5000, 5),
(4, 2000, 6000, 7),
(27, 2500, 5000, 2),
(31, 3254, 8532, 4),
(49, 3000, 1000, 6),
(65, 4000, 1000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `plant_id` int(11) NOT NULL,
  `totalcost` double NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`plant_id`, `totalcost`, `rate`) VALUES
(1, 3600, 800),
(2, 4500, 900),
(6, 1100, 200),
(7, 8000, 100),
(9, 6000, 750),
(11, 1000, 100),
(14, 5000, 100),
(15, 6000, 100),
(16, 5000, 100),
(17, 4500, 750),
(18, 1000, 100),
(19, 4500, 750),
(20, 5000, 100),
(28, 1478, 223),
(29, 8832, 304),
(30, 1790, 935),
(33, 1835, 345),
(36, 1322, 234),
(66, 1200, 600),
(73, 1800, 900);

-- --------------------------------------------------------

--
-- Structure for view `cardrent`
--
DROP TABLE IF EXISTS `cardrent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardrent`  AS SELECT `plant`.`plant_id` AS `plant_id`, `plant`.`pname` AS `pname`, `plant`.`pfamily` AS `pfamily`, `rent`.`rent_amount` AS `rent_amount`, `plant`.`image` AS `image`, `plant`.`time` AS `time` FROM (`plant` join `rent` on(`plant`.`plant_id` = `rent`.`plant_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `cardsale`
--
DROP TABLE IF EXISTS `cardsale`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cardsale`  AS SELECT `plant`.`plant_id` AS `plant_id`, `plant`.`pname` AS `pname`, `plant`.`pfamily` AS `pfamily`, `sale`.`totalcost` AS `totalcost`, `plant`.`image` AS `image`, `plant`.`time` AS `time` FROM (`plant` join `sale` on(`plant`.`plant_id` = `sale`.`plant_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plant`
--

ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`),
  ADD UNIQUE KEY `paddress` (`pname`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UID`);

--
--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`plant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `UID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--

--
-- Constraints for dumped tables
--
--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
--
--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`);

--
-- Constraints for table `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `flat` (`plant_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
