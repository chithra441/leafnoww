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