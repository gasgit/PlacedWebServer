-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2015 at 10:49 PM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gapp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `place` varchar(100) DEFAULT NULL,
  `comments` text,
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `title`, `place`, `comments`, `lat`, `lng`, `photo`, `posted`) VALUES
(265, 'Testing Again', 'Enough', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 53.199600, -9.074856, '9874563258.jpg', '2015-04-02 13:43:01'),
(266, 'One Too Little', 'Again, Again', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 53.263081, -9.074856, '2587469135.jpg', '2015-04-02 13:44:21'),
(267, 'One Too Many', 'Salthill', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 53.262718, -9.074757, '3265986532.jpg', '2015-04-02 13:45:50'),
(268, 'keiffs gaff', 'The Hounde', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 53.280159, -6.465529, '1234567899.jpg', '2015-04-03 08:32:21'),
(269, 'The Testing', 'Dublin', 'Blagh,Blagh,Blagh', 53.280159, -6.465529, '1758470688.jpg', '2015-04-03 10:09:47'),
(270, 'The Bananna', 'The Long Mile', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n', 53.280159, -6.465529, '3214569871.jpg', '2015-04-03 10:19:03'),
(273, 'The Apple', 'The Valley,Galway', '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ', 53.262402, -9.074823, '5874123698.jpg', '2015-04-08 16:59:36'),
(290, 'Near Connemeara', 'Barna, Galway', 'On the rock road here', 53.250000, -8.565900, '1687943469.jpg', '2015-04-16 22:10:08'),
(291, 'Madness here', 'Oranmore', 'Old irish name turned to english, cold spring', 53.268299, -8.919998, '1687943467.jpg', '2015-04-16 22:26:42'),
(302, 'Test', 'Tablet', 'Saspme time', 53.262562, -9.074524, '786702413.jpg', '2015-04-22 15:31:32'),
(316, 'The Lake', 'Loughrea', 'Coral lake here boy!!', 53.196999, -8.567000, '1687943465.jpg', '2015-04-22 18:58:22'),
(317, 'The Fields ', 'AthenApplery', 'Data,data,data', 53.304337, -8.746000, '1687943561.jpg', '2015-04-22 19:16:21'),
(318, 'The Regional', 'GMIT', '2015', 53.278667, -9.010460, '1687943562.jpg', '2015-04-22 19:18:24'),
(319, 'Gone fishing', 'Lough Corrib', '37 mile of free fun', 53.433300, -9.233298, '1578470698.jpg', '2015-04-22 19:19:44'),
(320, 'Zoom', 'Tuam', 'The fastest town in ireland', 53.516769, -8.857012, '1687943588.jpg', '2015-04-22 19:21:17'),
(321, 'Central', 'Athlone', 'The boats', 53.427105, -7.937040, '1687943589.jpg', '2015-04-22 19:22:32'),
(322, 'The old school', 'Clairnbridge', 'Nice', 53.229500, -8.878199, '1687943590.jpg', '2015-04-22 19:23:56'),
(323, 'Best in the west', 'Knocknacarra', 'On the edge', 53.268616, -9.112482, '1687943591.jpg', '2015-04-22 19:25:16'),
(324, 'Demo', 'Demo', 'Demo', 53.271900, -9.048899, '1687943589.jpg', '2015-04-23 09:14:58'),
(327, 'Testyy', 'Testyyy', 'Testyyyyy', 53.271900, -9.048899, '1578470698.jpg', '2015-05-27 16:40:53'),
(328, 'No Need', 'No Need', 'No Need', 53.271900, -9.048899, '1687943468.jpg', '2015-05-27 17:01:17'),
(329, 'Screen', 'Shot', 'Hey Hey', 53.271900, -9.048899, '1687943561.jpg', '2015-05-28 16:01:53'),
(330, '', '', '', 53.271900, -9.048899, '1687943561.jpg', '2015-05-28 16:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE IF NOT EXISTS `reports` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `comments` text,
  `photo` varchar(100) DEFAULT NULL,
  `posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`),
  KEY `FK_reports` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`rid`, `id`, `comments`, `photo`, `posted`) VALUES
(1, 324, 'Demo', '1687943589.jpg', '2015-05-28 16:06:42'),
(2, 327, 'Testyyyyy', '1578470698.jpg', '2015-05-28 17:10:02'),
(3, 266, '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '2587469135.jpg', '2015-05-28 17:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created`) VALUES
(1, 'admin', 'placed', '2015-04-26 16:37:57'),
(2, 'new', 'password', '2015-05-06 22:07:23');

--
-- Constraints for dumped tables
--

--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
