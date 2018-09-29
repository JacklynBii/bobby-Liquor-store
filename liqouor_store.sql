-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 07, 2013 at 04:48 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `medical_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `Liquor` (
  `lbno` varchar(10) NOT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `lcompany` varchar(50) DEFAULT NULL,
  `lqty` int(10) DEFAULT NULL,
  `lexpdate` varchar(50) DEFAULT NULL,
  `lpurdate` varchar(50) DEFAULT NULL,
  `ltype` varchar(30) DEFAULT NULL,
  `lpurprice` float DEFAULT NULL,
  `lsaleprice` float DEFAULT NULL,
  `lrackno` varchar(20) DEFAULT NULL,
  `sid` int(10) DEFAULT NULL,
  `sname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mbno`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `Liquor` (`lbno`, `lname`, `lcompany`, `lqty`, `lexpdate`, `lpurdate`, `ltype`, `lpurprice`, `lsaleprice`, `lrackno`, `sid`, `sname`) VALUES
('2018-1', 'hunters choice', 'lion brewers ltd', 60, '8-2017', '6-2-2019', 'Whyskey', 590, 780, 'm', 1a, 'lyn bii'),
('2018-1e, 'balozi', 'kenya brewery', 90, '2-2019', '6-10-2018', 'beer', 120, 180, 'c', 7, 'louis kamau'),
('2018=er4', 'smirnoff ice', 'kbl', 10, '5-2019', '6-10-2018', 'Vodka', 80, 100, 'm', 3, 'joy martin'),
('2018-e5', 'john walker', 'kbl', 100, '7-2019', '6-10-2018', 'whyskey', 70, 87, 'g', 1, 'ashley roy'),
('123er', 'guiness', 'flexx ltd', 10, '2-2019', '7-2-2018', 'Beer', 25, 50, 'v1', 2, 'marcy koech'),
('1234er', 'kibao', 'mukur ltd', 50, '2-2019', '6-2-2018', 'spirit', 15, 27, 'x', 6, 'john doe'),


-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) DEFAULT NULL,
  `saddress` varchar(100) DEFAULT NULL,
  `sphoneno` varchar(20) DEFAULT NULL,
  `semailid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sid`, `sname`, `saddress`, `sphoneno`, `semailid`) VALUES
(1, 'louis Kamau', 'louis, kiambu-411-00100', '0700111222', 'louis@gmail.com'),
(2, 'rupesh kamble', 'nairobi,roysa-10-00100', '0799111222', 'joym@gmail.com'),
(3, 'Ganesh marne', 'nairobi ,mwiki-189-00100', '0711222111', 'ashley@gmail.com'),
(4, 'Mayur joshi', 'nairobi kasa,kiambu-190-00101', '0712111222', 'mercyk@gmail.com'),


--
-- Constraints for dumped tables
--

--
-- Constraints for table `Liqour`
--
ALTER TABLE `Liqour`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `supplier` (`sid`);
