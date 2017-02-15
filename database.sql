SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `php_b44_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--
-- Creation: Jan 23, 2017 at 06:04 AM
--

CREATE TABLE IF NOT EXISTS `batch` (
`id` int(11) NOT NULL,
  `batch_number` varchar(5) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `location` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `batch_number`, `course_name`, `location`) VALUES
(1, 'B44', 'Web Application Development-PHP', 'BITM - Chittagong Campus'),
(2, 'B45', 'Web Application Development-PHP', 'BITM - Chittagong Campus'),
(3, 'B46', 'Web Application Development - PHP', 'BITM - Chittagong Campus'),
(4, 'B47', 'Web Application Development - PHP', 'BITM - Chittagong Campus');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--
-- Creation: Jan 23, 2017 at 06:34 AM
--

CREATE TABLE IF NOT EXISTS `course` (
`id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `course_location` varchar(120) NOT NULL,
  `credit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `link_cs`
--
-- Creation: Jan 23, 2017 at 06:35 AM
--

CREATE TABLE IF NOT EXISTS `link_cs` (
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `link_cs`:
--   `s_id`
--       `students` -> `id`
--   `c_id`
--       `course` -> `id`
--

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--
-- Creation: Jan 23, 2017 at 06:46 AM
--

CREATE TABLE IF NOT EXISTS `profiles` (
`id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `profiles`:
--   `s_id`
--       `users` -> `id`
--

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `first_name`, `last_name`, `date_of_birth`, `address`, `s_id`) VALUES
(1, 'Mohammad', 'Rubel', '1970-06-23', 'Panchlaish,Chittagong', 1),
(2, 'Arif ', 'Uddin', '2010-05-23', 'Raozan, Chittagong', 2),
(3, 'Jabed', 'Uddin', '2017-01-23', 'Hathazari, Chittagong', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--
-- Creation: Jan 23, 2017 at 06:07 AM
--

CREATE TABLE IF NOT EXISTS `students` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `roll` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `batch_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `students`:
--   `batch_id`
--       `batch` -> `id`
--

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `roll`, `dob`, `batch_id`) VALUES
(1, 'Mohammad Rubel', 'SEIP - 160634', '2000-08-23', 1),
(2, 'Sahed', 'SEIP - 160635', '2010-07-23', 2),
(3, 'Mohammad Sakib', 'SEIP - 160636', '1991-08-23', 3),
(4, 'Abdul Alim', 'SEIP - 160637', '1990-07-23', 4),
(5, 'Sakib Uddin', 'SEIP - 160638', '2011-01-24', 1),
(6, 'Abul Hasan', 'SEIP - 160639', '2017-01-23', 2),
(7, 'Nakib Hasan', 'SEIP - 160640', '2011-01-24', 4),
(8, 'Abul Kalam', 'SEIP - 160641', '2017-01-23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Jan 23, 2017 at 04:35 AM
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `student_roll` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `student_roll`, `email`) VALUES
(1, 'Rubel', 'SEIP-160634', 'abcdef@gmail.com'),
(2, 'Sahed', 'SEIP-160635', 'adfafaf@gmail.com'),
(3, 'JABED', 'SEIP-160635', 'adfbdan@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_cs`
--
ALTER TABLE `link_cs`
 ADD KEY `s_id` (`s_id`,`c_id`), ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `s_id_2` (`s_id`), ADD KEY `s_id` (`s_id`), ADD KEY `s_id_3` (`s_id`), ADD KEY `s_id_4` (`s_id`), ADD KEY `s_id_5` (`s_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`), ADD KEY `batch_id` (`batch_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `link_cs`
--
ALTER TABLE `link_cs`
ADD CONSTRAINT `link_cs_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `link_cs_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
