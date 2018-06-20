SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `satoyama`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
CREATE SCHEMA satoyama;
USE satoyama;
CREATE TABLE IF NOT EXISTS `customers_auth` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

CREATE TABLE `admin` (
  `id` int(4) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `error_readings`
--

CREATE TABLE `error_readings` (
  `id` int(11) NOT NULL,
  `Node` int(11) NOT NULL,
  `Sensor` varchar(15) NOT NULL,
  `Readings` varchar(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `error_readings`
--

INSERT INTO `error_readings` (`id`, `Node`, `Sensor`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, 'temperature', '64537', '2018-05-04 10:50:31', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(2, 6, 'temperature', '64537', '2018-05-04 10:50:36', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(3, 6, 'humidity', '64537', '2018-05-04 10:50:41', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(4, 6, 'temperature', '64537', '2018-05-04 10:50:46', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(5, 6, 'humidity', '64537', '2018-05-04 10:51:09', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(6, 6, 'temperature', '64537', '2018-05-04 10:51:10', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(7, 6, 'humidity', '64537', '2018-05-04 10:51:10', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(8, 6, 'temperature', '64537', '2018-05-04 10:51:15', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(9, 6, 'humidity', '64537', '2018-05-04 10:51:16', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(10, 6, 'temperature', '64537', '2018-05-04 10:51:17', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(11, 6, 'humidity', '64537', '2018-05-04 10:51:18', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(12, 6, 'temperature', '64537', '2018-05-04 10:51:19', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(13, 6, 'humidity', '64537', '2018-05-04 10:51:20', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(14, 6, 'temperature', '64537', '2018-05-04 10:51:25', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(15, 6, 'humidity', '64537', '2018-05-04 10:51:25', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(16, 6, 'temperature', '64537', '2018-05-04 10:51:27', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(17, 6, 'humidity', '64537', '2018-05-04 10:51:28', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(18, 6, 'temperature', '64537', '2018-05-04 10:51:29', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(19, 6, 'humidity', '64537', '2018-05-04 10:51:30', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(20, 6, 'temperature', '64537', '2018-05-04 10:51:35', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(21, 6, 'humidity', '64537', '2018-05-04 10:51:36', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(22, 6, 'temperature', '64537', '2018-05-04 10:51:37', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(23, 6, 'humidity', '64537', '2018-05-04 10:51:38', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(24, 6, 'temperature', '64537', '2018-05-04 10:51:39', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(25, 6, 'humidity', '64537', '2018-05-04 10:51:40', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(26, 6, 'temperature', '64537', '2018-05-04 10:51:47', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(27, 6, 'humidity', '64537', '2018-05-04 10:51:47', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(28, 6, 'temperature', '64537', '2018-05-04 10:51:47', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(29, 6, 'humidity', '64537', '2018-05-04 10:51:48', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(30, 6, 'temperature', '64537', '2018-05-04 10:51:50', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(31, 6, 'temperature', '64537', '2018-05-04 10:51:55', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(32, 6, 'temperature', '64537', '2018-05-04 10:51:58', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(33, 6, 'temperature', '64537', '2018-05-04 10:52:00', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(34, 6, 'humidity', '64537', '2018-05-04 10:53:05', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(35, 6, 'temperature', '64537', '2018-05-04 10:53:07', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(36, 6, 'temperature', '64537', '2018-05-04 10:53:22', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(37, 6, 'humidity', '64537', '2018-05-04 10:53:23', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(38, 6, 'humidity', '64537', '2018-05-04 10:53:27', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(39, 6, 'humidity', '64537', '2018-05-04 10:53:33', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(40, 6, 'temperature', '64537', '2018-05-04 10:53:46', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(41, 6, 'humidity', '64537', '2018-05-04 10:53:47', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(42, 6, 'temperature', '64537', '2018-05-04 10:53:52', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(43, 6, 'humidity', '64537', '2018-05-04 10:53:52', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(44, 6, 'temperature', '64537', '2018-05-04 10:53:54', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(45, 6, 'temperature', '64537', '2018-05-04 10:54:21', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(46, 6, 'humidity', '64537', '2018-05-04 10:54:24', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(47, 6, 'humidity', '64537', '2018-05-04 10:54:26', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(48, 6, 'humidity', '64537', '2018-05-04 10:54:31', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(49, 6, 'temperature', '64537', '2018-05-04 10:54:33', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(50, 6, 'temperature', '64537', '2018-05-04 10:54:35', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(51, 6, 'humidity', '64537', '2018-05-04 10:54:36', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(52, 6, 'temperature', '64537', '2018-05-04 10:54:41', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(53, 6, 'humidity', '64537', '2018-05-04 10:54:41', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(54, 6, 'temperature', '64537', '2018-05-04 10:54:43', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(55, 6, 'humidity', '64537', '2018-05-04 10:54:43', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(56, 6, 'temperature', '64537', '2018-05-04 10:54:45', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(57, 6, 'humidity', '64537', '2018-05-04 10:54:46', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(58, 6, 'temperature', '64537', '2018-05-04 10:54:51', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(59, 6, 'humidity', '64537', '2018-05-04 10:54:51', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(60, 6, 'temperature', '64537', '2018-05-04 10:54:53', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(61, 6, 'humidity', '64537', '2018-05-04 10:54:53', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(62, 6, 'temperature', '64537', '2018-05-04 10:54:55', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(63, 6, 'humidity', '64537', '2018-05-04 10:54:55', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(64, 6, 'temperature', '64537', '2018-05-04 10:55:00', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(65, 6, 'humidity', '64537', '2018-05-04 10:55:01', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(66, 6, 'temperature', '64537', '2018-05-04 10:55:03', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(67, 6, 'humidity', '64537', '2018-05-04 10:55:03', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(68, 6, 'humidity', '64537', '2018-05-04 10:55:05', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(69, 6, 'temperature', '64537', '2018-05-04 10:55:10', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(70, 6, 'humidity', '64537', '2018-05-04 10:55:11', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(71, 6, 'temperature', '64537', '2018-05-04 10:55:12', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(72, 6, 'humidity', '64537', '2018-05-04 10:55:13', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(73, 6, 'temperature', '64537', '2018-05-04 10:55:14', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(74, 6, 'humidity', '64537', '2018-05-04 10:55:15', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(75, 6, 'temperature', '64537', '2018-05-04 10:55:20', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(76, 6, 'temperature', '64537', '2018-05-04 10:55:22', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(77, 6, 'humidity', '64537', '2018-05-04 10:55:23', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(78, 6, 'temperature', '64537', '2018-05-04 10:55:24', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(79, 6, 'humidity', '64537', '2018-05-04 10:55:25', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(80, 6, 'humidity', '64537', '2018-05-04 10:55:30', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(81, 6, 'temperature', '64537', '2018-05-04 10:55:34', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(82, 6, 'humidity', '64537', '2018-05-04 10:55:35', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(83, 6, 'temperature', '64537', '2018-05-04 10:55:40', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(84, 6, 'humidity', '64537', '2018-05-04 10:55:40', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(85, 6, 'humidity', '64537', '2018-05-04 10:55:42', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(86, 6, 'temperature', '64537', '2018-05-04 10:56:23', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(87, 6, 'humidity', '64537', '2018-05-04 10:56:24', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(88, 6, 'temperature', '64537', '2018-05-04 10:56:29', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(89, 6, 'humidity', '64537', '2018-05-04 10:56:31', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(90, 6, 'temperature', '64537', '2018-05-04 10:56:33', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(91, 6, 'humidity', '64537', '2018-05-04 10:56:33', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(92, 6, 'temperature', '64537', '2018-05-04 11:08:16', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(93, 6, 'temperature', '64537', '2018-05-04 11:08:28', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(94, 6, 'temperature', '64537', '2018-05-04 11:08:34', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(95, 6, 'temperature', '64537', '2018-05-04 11:08:46', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(96, 6, 'humidity', '64537', '2018-05-04 11:08:46', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(97, 6, 'humidity', '64537', '2018-05-04 11:09:13', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(98, 6, 'temperature', '64537', '2018-05-04 11:10:51', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(99, 6, 'humidity', '64537', '2018-05-04 11:10:51', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(100, 6, 'humidity', '64537', '2018-05-04 11:10:54', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(101, 6, 'humidity', '64537', '2018-05-04 11:11:03', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(102, 6, 'temperature', '64537', '2018-05-04 11:11:05', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(103, 6, 'temperature', '64537', '2018-05-04 11:11:15', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(104, 6, 'humidity', '64537', '2018-05-04 11:11:15', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(105, 6, 'light', '0', '2018-05-04 11:11:16', 'Sensor light is Invalid ... Additional sensor please contact with developer.'),
(106, 6, 'humidity', '64537', '2018-05-04 11:11:21', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(107, 6, 'temperature', '645', '2018-05-04 11:24:19', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(108, 6, 'Ã', '0', '2018-05-04 11:30:31', 'Sensor Ã is Invalid ... Additional sensor please contact with developer.'),
(109, 6, 'humidity', '64537', '2018-05-04 11:33:18', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(110, 6, 'humidity', '64573', '2018-05-04 11:37:21', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(111, 6, 'temperature', '64537', '2018-05-04 13:43:03', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(112, 6, 'humidity', '64537', '2018-05-04 13:43:03', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(113, 6, 'temperature', '64537', '2018-05-04 13:43:03', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(114, 6, 'temperature', '64537', '2018-05-04 13:43:08', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(115, 6, 'humidity', '64537', '2018-05-04 13:43:09', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(116, 6, 'temperature', '64537', '2018-05-04 13:43:27', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(117, 6, 'humidity', '64537', '2018-05-04 13:43:27', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(118, 6, 'temperature', '64537', '2018-05-04 13:43:27', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(119, 6, 'temperature', '64537', '2018-05-04 13:43:54', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(120, 6, 'temperature', '64537', '2018-05-04 13:44:09', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(121, 6, 'humidity', '64537', '2018-05-04 13:44:10', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(122, 6, 'temperature', '64537', '2018-05-04 13:44:17', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(123, 6, 'humidity', '64537', '2018-05-04 13:44:22', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(124, 6, 'humidity', '64537', '2018-05-04 13:45:19', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(125, 6, 'p', '6', '2018-05-04 13:45:23', 'Sensor p is Invalid ... Additional sensor please contact with developer.'),
(126, 6, 'humidity', '64537', '2018-05-04 14:48:04', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(127, 6, 'temperature', '64537', '2018-05-04 14:48:10', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(128, 6, 'temperature', '64537', '2018-05-04 14:48:20', 'Sensor temperature readings has over 100 or less than 0 (Valid Range : 0 - 100)'),
(129, 6, 'humidity', '64537', '2018-05-04 14:48:22', 'Sensor humidity readings has over 100 or less than 0 (Valid Range : 0 - 100)');

-- --------------------------------------------------------

--
-- Table structure for table `humidity`
--

CREATE TABLE `humidity` (
  `id` int(10) NOT NULL,
  `Node` int(4) NOT NULL,
  `Readings` varchar(10) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `humidity`
--

INSERT INTO `humidity` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '73', '2018-05-04 09:53:01', ''),
(2, 6, '71', '2018-05-04 09:53:43', ''),
(3, 6, '72', '2018-05-04 09:53:45', ''),
(4, 6, '72', '2018-05-04 09:53:52', ''),
(5, 6, '76', '2018-05-04 14:51:55', ''),
(6, 6, '80', '2018-05-04 14:54:48', ''),
(7, 6, '82', '2018-05-04 14:55:08', ''),
(8, 6, '82', '2018-05-04 14:55:12', ''),
(9, 6, '82', '2018-05-04 14:55:22', ''),
(10, 6, '84', '2018-05-04 14:58:35', ''),
(11, 6, '84', '2018-05-04 14:58:45', ''),
(12, 6, '84', '2018-05-04 14:58:55', ''),
(13, 6, '82', '2018-05-04 15:02:08', ''),
(14, 6, '82', '2018-05-04 15:02:18', ''),
(15, 6, '82', '2018-05-04 15:02:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `light`
--

CREATE TABLE `light` (
  `id` int(10) NOT NULL,
  `Node` int(4) NOT NULL,
  `Readings` varchar(10) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `light`
--

INSERT INTO `light` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '49', '2018-05-04 09:53:02', ''),
(2, 6, '53', '2018-05-04 09:53:45', ''),
(3, 6, '0', '2018-05-04 10:50:40', ''),
(4, 6, '0', '2018-05-04 10:50:42', ''),
(5, 6, '0', '2018-05-04 10:51:09', ''),
(6, 6, '0', '2018-05-04 10:51:17', ''),
(7, 6, '0', '2018-05-04 10:51:19', ''),
(8, 6, '0', '2018-05-04 10:51:21', ''),
(9, 6, '0', '2018-05-04 10:51:29', ''),
(10, 6, '0', '2018-05-04 10:51:37', ''),
(11, 6, '0', '2018-05-04 10:51:39', ''),
(12, 6, '0', '2018-05-04 10:51:41', ''),
(13, 6, '0', '2018-05-04 10:51:47', ''),
(14, 6, '0', '2018-05-04 10:51:49', ''),
(15, 6, '0', '2018-05-04 10:52:01', ''),
(16, 6, '0', '2018-05-04 10:52:59', ''),
(17, 6, '0', '2018-05-04 10:53:07', ''),
(18, 6, '0', '2018-05-04 10:53:24', ''),
(19, 6, '0', '2018-05-04 10:53:26', ''),
(20, 6, '0', '2018-05-04 10:53:38', ''),
(21, 6, '0', '2018-05-04 10:53:46', ''),
(22, 6, '0', '2018-05-04 10:53:48', ''),
(23, 6, '0', '2018-05-04 10:54:07', ''),
(24, 6, '0', '2018-05-04 10:54:25', ''),
(25, 6, '0', '2018-05-04 10:54:33', ''),
(26, 6, '0', '2018-05-04 10:54:35', ''),
(27, 6, '0', '2018-05-04 10:54:37', ''),
(28, 6, '0', '2018-05-04 10:54:42', ''),
(29, 6, '0', '2018-05-04 10:54:45', ''),
(30, 6, '0', '2018-05-04 10:54:52', ''),
(31, 6, '0', '2018-05-04 10:54:54', ''),
(32, 6, '0', '2018-05-04 10:54:56', ''),
(33, 6, '0', '2018-05-04 10:55:02', ''),
(34, 6, '0', '2018-05-04 10:55:12', ''),
(35, 6, '0', '2018-05-04 10:55:14', ''),
(36, 6, '0', '2018-05-04 10:55:16', ''),
(37, 6, '0', '2018-05-04 10:55:22', ''),
(38, 6, '0', '2018-05-04 10:55:24', ''),
(39, 6, '0', '2018-05-04 10:55:26', ''),
(40, 6, '0', '2018-05-04 10:55:31', ''),
(41, 6, '0', '2018-05-04 10:55:34', ''),
(42, 6, '0', '2018-05-04 10:56:32', ''),
(43, 6, '0', '2018-05-04 10:56:34', ''),
(44, 6, '0', '2018-05-04 11:08:10', ''),
(45, 6, '0', '2018-05-04 11:08:16', ''),
(46, 6, '0', '2018-05-04 11:08:18', ''),
(47, 6, '0', '2018-05-04 11:08:28', ''),
(48, 6, '0', '2018-05-04 11:09:46', ''),
(49, 6, '0', '2018-05-04 11:10:45', ''),
(50, 6, '0', '2018-05-04 11:11:14', ''),
(51, 6, '0', '2018-05-04 11:30:19', ''),
(52, 6, '0', '2018-05-04 11:33:54', ''),
(53, 6, '0', '2018-05-04 11:37:24', ''),
(54, 6, '0', '2018-05-04 13:43:11', ''),
(55, 6, '0', '2018-05-04 13:43:53', ''),
(56, 6, '0', '2018-05-04 13:44:08', ''),
(57, 6, '0', '2018-05-04 13:44:12', ''),
(58, 6, '0', '2018-05-04 13:45:25', ''),
(59, 6, '3819', '2018-05-04 14:55:08', ''),
(60, 6, '3819', '2018-05-04 14:55:17', ''),
(61, 6, '3819', '2018-05-04 14:55:27', ''),
(62, 6, '4425', '2018-05-04 14:58:40', ''),
(63, 6, '4425', '2018-05-04 14:58:50', ''),
(64, 6, '4425', '2018-05-04 14:59:00', ''),
(65, 6, '5938', '2018-05-04 15:02:13', ''),
(66, 6, '5938', '2018-05-04 15:02:23', ''),
(67, 6, '5938', '2018-05-04 15:02:33', '');

-- --------------------------------------------------------

--
-- Table structure for table `moisture`
--

CREATE TABLE `moisture` (
  `id` int(11) NOT NULL,
  `Node` int(11) NOT NULL,
  `Readings` varchar(11) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moisture`
--

INSERT INTO `moisture` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '1', '2018-05-04 09:53:05', ''),
(2, 6, '1', '2018-05-04 09:53:44', ''),
(3, 6, '12', '2018-05-04 10:50:39', ''),
(4, 6, '13', '2018-05-04 10:51:11', ''),
(5, 6, '11', '2018-05-04 10:51:16', ''),
(6, 6, '11', '2018-05-04 10:51:18', ''),
(7, 6, '11', '2018-05-04 10:51:21', ''),
(8, 6, '8', '2018-05-04 10:51:26', ''),
(9, 6, '8', '2018-05-04 10:51:28', ''),
(10, 6, '8', '2018-05-04 10:51:31', ''),
(11, 6, '10', '2018-05-04 10:51:36', ''),
(12, 6, '10', '2018-05-04 10:51:39', ''),
(13, 6, '10', '2018-05-04 10:51:40', ''),
(14, 6, '9', '2018-05-04 10:51:47', ''),
(15, 6, '9', '2018-05-04 10:51:49', ''),
(16, 6, '9', '2018-05-04 10:51:51', ''),
(17, 6, '9', '2018-05-04 10:53:06', ''),
(18, 6, '9', '2018-05-04 10:53:08', ''),
(19, 6, '8', '2018-05-04 10:53:26', ''),
(20, 6, '8', '2018-05-04 10:53:28', ''),
(21, 6, '7', '2018-05-04 10:53:33', ''),
(22, 6, '7', '2018-05-04 10:53:38', ''),
(23, 6, '7', '2018-05-04 10:53:47', ''),
(24, 6, '9', '2018-05-04 10:54:07', ''),
(25, 6, '9', '2018-05-04 10:54:32', ''),
(26, 6, '9', '2018-05-04 10:54:34', ''),
(27, 6, '8', '2018-05-04 10:54:42', ''),
(28, 6, '8', '2018-05-04 10:54:44', ''),
(29, 6, '8', '2018-05-04 10:54:46', ''),
(30, 6, '8', '2018-05-04 10:54:52', ''),
(31, 6, '8', '2018-05-04 10:54:54', ''),
(32, 6, '8', '2018-05-04 10:54:56', ''),
(33, 6, '8', '2018-05-04 10:55:01', ''),
(34, 6, '8', '2018-05-04 10:55:04', ''),
(35, 6, '8', '2018-05-04 10:55:11', ''),
(36, 6, '8', '2018-05-04 10:55:13', ''),
(37, 6, '8', '2018-05-04 10:55:16', ''),
(38, 6, '8', '2018-05-04 10:55:21', ''),
(39, 6, '8', '2018-05-04 10:55:23', ''),
(40, 6, '8', '2018-05-04 10:55:25', ''),
(41, 6, '8', '2018-05-04 10:55:31', ''),
(42, 6, '8', '2018-05-04 10:55:33', ''),
(43, 6, '8', '2018-05-04 10:55:35', ''),
(44, 6, '10', '2018-05-04 10:56:30', ''),
(45, 6, '10', '2018-05-04 10:56:32', ''),
(46, 6, '10', '2018-05-04 10:56:34', ''),
(47, 6, '3', '2018-05-04 11:00:07', ''),
(48, 6, '1', '2018-05-04 11:08:17', ''),
(49, 6, '1', '2018-05-04 11:08:27', ''),
(50, 6, '1', '2018-05-04 11:08:29', ''),
(51, 6, '1', '2018-05-04 11:08:45', ''),
(52, 6, '1', '2018-05-04 11:08:59', ''),
(53, 6, '1', '2018-05-04 11:09:34', ''),
(54, 6, '0', '2018-05-04 11:10:52', ''),
(55, 6, '0', '2018-05-04 11:10:56', ''),
(56, 6, '0', '2018-05-04 11:24:20', ''),
(57, 6, '0', '2018-05-04 11:28:25', ''),
(58, 6, '0', '2018-05-04 11:28:35', ''),
(59, 6, '0', '2018-05-04 11:33:17', ''),
(60, 6, '0', '2018-05-04 13:43:10', ''),
(61, 6, '3', '2018-05-04 13:43:48', ''),
(62, 6, '3', '2018-05-04 13:43:52', ''),
(63, 6, '2', '2018-05-04 13:44:07', ''),
(64, 6, '2', '2018-05-04 13:44:11', ''),
(65, 6, '0', '2018-05-04 13:44:19', ''),
(66, 6, '0', '2018-05-04 13:44:23', ''),
(67, 6, '5', '2018-05-04 14:51:39', ''),
(68, 6, '5', '2018-05-04 14:55:08', ''),
(69, 6, '5', '2018-05-04 14:55:14', ''),
(70, 6, '5', '2018-05-04 14:55:24', ''),
(71, 6, '5', '2018-05-04 14:58:37', ''),
(72, 6, '5', '2018-05-04 14:58:47', ''),
(73, 6, '5', '2018-05-04 14:58:57', ''),
(74, 6, '4', '2018-05-04 15:02:11', ''),
(75, 6, '4', '2018-05-04 15:02:20', ''),
(76, 6, '4', '2018-05-04 15:02:30', '');

-- --------------------------------------------------------

--
-- Table structure for table `temperature`
--

CREATE TABLE `temperature` (
  `id` int(10) NOT NULL,
  `Node` int(4) NOT NULL,
  `Readings` varchar(10) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temperature`
--

INSERT INTO `temperature` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '28', '2018-05-04 09:53:02', ''),
(2, 6, '31', '2018-05-04 14:51:33', ''),
(3, 6, '31', '2018-05-04 14:51:43', ''),
(4, 6, '31', '2018-05-04 14:51:53', ''),
(5, 6, '30', '2018-05-04 14:54:48', ''),
(6, 6, '30', '2018-05-04 14:55:08', ''),
(7, 6, '30', '2018-05-04 14:55:09', ''),
(8, 6, '30', '2018-05-04 14:55:19', ''),
(9, 6, '30', '2018-05-04 14:58:32', ''),
(10, 6, '30', '2018-05-04 14:58:42', ''),
(11, 6, '30', '2018-05-04 14:58:52', ''),
(12, 6, '30', '2018-05-04 15:02:08', ''),
(13, 6, '30', '2018-05-04 15:02:15', ''),
(14, 6, '30', '2018-05-04 15:02:25', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_readings`
--
ALTER TABLE `error_readings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humidity`
--
ALTER TABLE `humidity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `light`
--
ALTER TABLE `light`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moisture`
--
ALTER TABLE `moisture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `error_readings`
--
ALTER TABLE `error_readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `humidity`
--
ALTER TABLE `humidity`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `light`
--
ALTER TABLE `light`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `moisture`
--
ALTER TABLE `moisture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `temperature`
--
ALTER TABLE `temperature`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

CREATE TABLE `dailyHumidity` (
  `id` int(10) NOT NULL,
  `Node` int(4) NOT NULL,
  `Readings` varchar(10) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dailyHumidity` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '73%', '2018-05-04 09:53:01', ''),
(2, 6, '71%', '2018-05-05 09:53:43', ''),
(3, 6, '72%', '2018-05-06 09:53:45', ''),
(4, 6, '72%', '2018-05-07 09:53:52', ''),
(5, 6, '76%', '2018-05-08 14:51:55', ''),
(6, 6, '80%', '2018-05-09 14:54:48', ''),
(7, 6, '82%', '2018-05-10 14:55:08', '');

CREATE TABLE `monthlyHumidity` (
  `id` int(10) NOT NULL,
  `Node` int(4) NOT NULL,
  `Readings` varchar(10) NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `monthlyHumidity` (`id`, `Node`, `Readings`, `Timestamp`, `Remarks`) VALUES
(1, 6, '73%', '2018-05-04 09:53:01', ''),
(2, 6, '71%', '2018-06-05 09:53:43', ''),
(3, 6, '72%', '2018-07-06 09:53:45', ''),
(4, 6, '72%', '2018-08-07 09:53:52', ''),
(5, 6, '76%', '2018-09-08 14:51:55', ''),
(6, 6, '80%', '2018-10-09 14:54:48', ''),
(7, 6, '82%', '2018-11-10 14:55:08', '');

CREATE TABLE IF NOT EXISTS `settings` (
  `SettingsID` int(11) NOT NULL AUTO_INCREMENT,
  `HumiditySensor` varchar(150) NOT NULL,
  `LightSensor` varchar(150) NOT NULL,
  `MoistureSensor` varchar(150) NOT NULL,
  `TemperatureSensor` varchar(150) NOT NULL,
  PRIMARY KEY (`SettingsID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`SettingsID`, `HumiditySensor`, `LightSensor`, `MoistureSensor`, `TemperatureSensor`) VALUES
(1, 'Sensor 1', 'Sensor 2', 'Sensor 3', 'Sensor 4'),
(2, 'Sensor 1', 'Sensor 2', 'Sensor 3', 'Sensor 4'),
(3, 'Sensor 1', 'Sensor 2', 'Sensor 3', 'Sensor 4'),
(4, 'Sensor 1', 'Sensor 2', 'Sensor 3', 'Sensor 4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
