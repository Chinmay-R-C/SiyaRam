-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dvsurbanservices
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ dvsurbanservices;
USE dvsurbanservices;

--
-- Table structure for table `dvsurbanservices`.`booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `servicename` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `sid` varchar(50) DEFAULT NULL,
  `cphone` varchar(50) DEFAULT NULL,
  `bdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `bid` (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`booking`
--

/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` (`servicename`,`category`,`sid`,`cphone`,`bdate`,`bid`) VALUES 
 ('ravish','Carpenter','ravish@gmail.com','9944994949','2022-08-10 11:49:49',4),
 ('ravish','Carpenter','3','9985855855','2022-08-07 00:01:05',2),
 ('ravish','Carpenter','3','9985855855','2022-08-07 00:01:55',3),
 ('ravish','Carpenter','ravish@gmail.com','9944994949','2022-08-22 18:54:09',5);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`catering`
--

DROP TABLE IF EXISTS `catering`;
CREATE TABLE `catering` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`phone`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dvsurbanservices`.`catering`
--

/*!40000 ALTER TABLE `catering` DISABLE KEYS */;
INSERT INTO `catering` (`name`,`address`,`phone`,`password`,`id`) VALUES 
 ('Ravi catering','shimoga','1234567890','ravi123',1);
/*!40000 ALTER TABLE `catering` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`phone`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`name`,`address`,`phone`,`password`,`id`) VALUES 
 ('ravi','shimoga','9985855855','ravi1234',4),
 ('pavitra','shimoga','9944994949','pavitra123',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `feed` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`feed`) VALUES 
 ('this is  nice');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`,`password`) VALUES 
 ('admin','password');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `phone` varchar(50) DEFAULT NULL,
  `tid` varchar(50) DEFAULT NULL,
  `amount` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`amount`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`phone`,`tid`,`amount`,`id`) VALUES 
 ('9944994949','sdfgsdfgsdfg','1222',4),
 ('9944994949','3456754567876','500',5);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Table structure for table `dvsurbanservices`.`services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dvsurbanservices`.`services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`name`,`description`,`price`,`category`,`username`,`password`,`id`) VALUES 
 ('ravish','carpentering with all ','700','Carpenter','ravish@gmail.com','ravsh123',3),
 ('suresh','good electriction','500','Electriiction','suresh@gmail.com','suresh123',5);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
