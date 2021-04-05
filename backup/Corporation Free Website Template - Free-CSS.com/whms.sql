-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2016 at 06:26 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `whms`
--
CREATE DATABASE IF NOT EXISTS `whms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `whms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` int(10) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`adminid`),
  UNIQUE KEY `adminname` (`adminname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`) VALUES
(1, 'thanuja', 'admin', '123456789', 'Active'),
(2, 'manasa', 'admin1', '123456789', 'Active'),
(3, 'shweta', 'admin2', '123456789', 'Active'),
(4, 'anusha', 'admin3', '123456789', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `appointmentid` int(10) NOT NULL AUTO_INCREMENT,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL,
  PRIMARY KEY (`appointmentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `roomid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(44, 'Online', 22, 15, 13, '2016-03-09', '14:03:00', 41, 'Approved', ''),
(48, 'Online', 22, 0, 0, '2016-03-25', '17:46:00', 0, 'Approved', ''),
(50, 'Offline', 7, 0, 0, '2016-03-26', '16:05:00', 0, 'Approved', ''),
(51, 'Online', 9, 15, 12, '2016-03-15', '15:04:00', 37, 'Approved', ''),
(53, 'Online', 0, 15, 14, '2016-03-18', '23:58:00', 42, '', ''),
(56, 'Online', 22, 15, 11, '2016-01-15', '00:00:00', 43, 'Approved', ''),
(57, 'Online', 0, 15, 13, '2016-03-17', '23:58:00', 37, '', ''),
(58, 'Out Patient', 22, 18, 14, '2016-03-24', '12:59:00', 37, 'Approved', ''),
(60, 'Online', 37, 16, 16, '2016-03-31', '12:00:00', 42, 'Approved', ''),
(61, 'Online', 22, 15, 13, '2016-03-24', '05:00:00', 42, 'Approved', ''),
(62, 'Offline', 23, 15, 13, '2016-03-01', '01:00:00', 35, 'Active', ''),
(63, 'Online', 0, 16, 14, '2016-03-15', '16:04:00', 38, '', ''),
(65, 'Offline', 23, 15, 13, '2016-03-09', '01:00:00', 35, 'Active', ''),
(67, 'Online', 0, 15, 13, '2016-03-10', '13:59:00', 43, '', ''),
(68, 'Online', 36, 15, 13, '2016-03-18', '12:59:00', 43, 'Approved', ''),
(70, '', 38, 0, 0, '2016-03-15', '12:59:00', 0, 'Approved', ''),
(71, 'Offline', 7, 17, 11, '2016-03-15', '13:04:00', 44, 'Active', ''),
(72, 'InPatient', 0, 15, 12, '2016-03-18', '00:00:00', 43, '', ''),
(73, 'InPatient', 0, 15, 12, '2016-03-18', '00:00:00', 43, '', ''),
(74, 'Online', 39, 15, 12, '2016-03-17', '01:00:00', 43, 'Approved', ''),
(75, 'OutPatient', 0, 15, 11, '2016-03-09', '13:59:00', 37, '', ''),
(76, 'ONLINE', 22, 0, 0, '2016-03-17', '11:00:00', 0, 'Pending', ''),
(77, 'ONLINE', 22, 0, 0, '0000-00-00', '00:00:00', 0, 'Pending', ''),
(78, 'Offline', 7, 15, 12, '2016-03-16', '01:00:00', 35, 'Approved', ''),
(79, 'ONLINE', 40, 0, 0, '0000-00-00', '00:00:00', 0, 'Pending', ''),
(80, 'ONLINE', 22, 0, 0, '0000-00-00', '00:00:00', 0, 'Pending', ''),
(81, 'ONLINE', 22, 0, 0, '0000-00-00', '01:00:00', 0, 'Pending', ''),
(82, 'ONLINE', 22, 0, 0, '2016-03-17', '02:00:00', 0, 'Pending', 'Test appointment record'),
(83, 'ONLINE', 22, 0, 12, '2016-03-17', '02:00:00', 0, 'Pending', 'Test appointment record'),
(84, 'ONLINE', 0, 0, 11, '2016-12-31', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(85, 'ONLINE', 0, 0, 11, '2016-12-31', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(86, 'ONLINE', 0, 0, 11, '2016-12-31', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(87, 'ONLINE', 41, 0, 11, '2016-12-31', '12:59:00', 0, 'Pending', 'This is test appoitnment'),
(88, 'ONLINE', 0, 0, 19, '2016-03-12', '12:59:00', 0, 'Pending', 'tyehgd'),
(89, 'ONLINE', 0, 0, 19, '2016-03-12', '12:59:00', 0, 'Pending', 'tyehgd'),
(90, 'Out Patient', 42, 0, 19, '2016-03-11', '12:59:00', 40, 'Approved', 'rteuterye'),
(91, 'InPatient', 43, 15, 11, '2016-03-19', '01:00:00', 35, 'Approved', 'Kinldy test the patient for 1 week'),
(92, 'InPatient', 441, 15, 11, '2016-03-19', '12:59:00', 36, 'Approved', 'General appointment for testing'),
(93, 'InPatient', 47, 15, 12, '2016-03-19', '01:00:00', 36, 'Active', 'Test test app'),
(94, 'InPatient', 47, 15, 12, '2016-03-19', '01:00:00', 36, 'Active', 'Test test app'),
(95, 'InPatient', 7, 15, 12, '2016-03-24', '01:01:00', 44, 'Active', 'test'),
(96, 'InPatient', 45, 15, 12, '2016-03-24', '01:00:00', 35, 'Active', 'test appointment'),
(97, 'InPatient', 48, 15, 13, '2016-03-30', '01:00:00', 35, 'Approved', 'Test reason for medicine');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
  `billingid` int(10) NOT NULL AUTO_INCREMENT,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL,
  PRIMARY KEY (`billingid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`, `discharge_time`, `discharge_date`) VALUES
(5, 47, 94, '2016-03-23', '10:12:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(6, 7, 78, '2016-03-23', '08:21:22', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(7, 7, 95, '2016-03-23', '08:54:33', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(8, 45, 96, '2016-03-23', '08:56:38', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(9, 22, 61, '2016-03-23', '09:57:39', 0.00, 0.00, '0 , 0 ,  ,  , ', '09:48:21', '2016-03-27'),
(10, 48, 97, '2016-03-25', '10:06:57', 1370.00, 0.00, 'Test discount reason , test bal amt , test bal amt , test bal amt , test bal amt , test reason , test reason0', '02:59:17', '2016-03-25'),
(11, 42, 90, '2016-03-25', '10:11:59', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE IF NOT EXISTS `billing_records` (
  `billingservice_id` int(10) NOT NULL AUTO_INCREMENT,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`billingservice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 6, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(2, 6, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(3, 6, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(4, 6, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(5, 6, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(6, 7, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(7, 7, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(8, 7, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(9, 7, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(10, 7, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(11, 8, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(12, 8, 0, 'Consultancy Charge', 690.00, '2016-03-23', 'Active'),
(13, 8, 0, 'Treatment Charge', 690.00, '2016-03-23', 'Active'),
(14, 8, 0, 'Service Charge', 690.00, '2016-03-23', 'Active'),
(15, 8, 0, 'Prescription Charge', 690.00, '2016-03-23', 'Active'),
(16, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(17, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(18, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(19, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(20, 9, 0, 'Room Rent', 690.00, '2016-03-23', 'Active'),
(21, 9, 15, 'Room Rent', 500.00, '2016-03-23', 'Active'),
(22, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(23, 9, 18, 'Room Rent', 150.00, '2016-03-23', 'Active'),
(24, 10, 15, 'Room Rent', 500.00, '2016-03-25', 'Active'),
(25, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(26, 10, 35, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(27, 10, 35, 'Consultancy Charge', 600.00, '2016-03-25', 'Active'),
(28, 10, 13, 'Treatment Cost', 450.00, '2016-03-25', 'Active'),
(30, 10, 28, 'Prescription Charge for Treatment for Malaria', 1190.00, '2016-03-25', 'Active'),
(31, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(32, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(33, 10, 11, 'Service Charge', 450.00, '2016-03-25', 'Active'),
(34, 10, 12, 'Service Charge', 300.00, '2016-03-25', 'Active'),
(35, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(36, 10, 12, 'Service Charge', 550.00, '2016-03-25', 'Active'),
(37, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(38, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(39, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `departmentid` int(10) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(11, 'Physician', 'All type of disease', 'Active'),
(12, 'Children doctor', 'All kinds of disease', 'Active'),
(13, 'General Medicne', 'General doctor', 'Active'),
(14, 'ENT Specialist', 'Ear, Nose and Tongue Doctor', 'Active'),
(15, 'Neurologist', 'Related neurons, bones', 'Active'),
(16, 'Surgery', 'Includes plastic surgery, brain and neurology surgery', 'Active'),
(17, 'Pediatrics', 'Pediatrics doctor', 'Active'),
(18, 'Pharmacy', 'Providing patients with medicines prescribed by specialist physicians', 'Active'),
(19, 'Laboratory and Blood bank', 'Includes detailed lab investigations and blood bank are developing considerably as per international standards  ', 'Active'),
(20, 'Physiotherapy', 'Includes services to specialized clinic inpatients who are referred by hospital physicians or primary health care clinics.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctorid` int(10) NOT NULL AUTO_INCREMENT,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL,
  PRIMARY KEY (`doctorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(35, 'Lokesh Kumar Chopra', '9812453678', 11, 'doctor', '123456789', 'Active', 'MBBS,MD,IDCCM', 7.0, 700.00),
(36, 'Sandeep H S', '8966643980', 12, 'doctor1', '123456789', 'Active', 'MBBS,MD', 5.0, 500.00),
(37, 'Shivshankar', '7894561230', 13, 'doctor2', '123456789', 'Active', 'MBBS,DNB(ORTHO)', 9.0, 300.00),
(38, 'Ranjan kumar', '9874561230', 14, 'doctor3', '123456789', 'Active', 'MBBS,DLO,DNB', 4.0, 200.00),
(39, 'Divya', '8756332456', 15, 'doctor4', '123456789', 'Active', 'MBBS,DNB', 5.0, 250.00),
(40, 'Rashmi', '9876543210', 16, 'doctor5', '123456789', 'Active', 'MBBS,MD', 7.0, 150.00),
(41, 'chaitra', '8785674654', 17, 'doctor6', '123456789', 'Active', 'MBBS,DA', 5.0, 100.00),
(42, 'kamala bhat', '9216549870', 18, 'doctor7', '123456789', 'Active', 'MBBS', 4.0, 250.00),
(43, 'Raam', '9008713415', 19, 'doctor8', '123456789', 'Active', 'MBBS', 5.0, 122.00),
(44, 'Sai kiran', '8548874216', 20, 'doctor9', '123456789', 'Active', 'BAMS', 5.0, 50.00),
(45, 'Mahesh', '9985633225', 11, 'maheshkrishna', '123456789', 'Active', 'MBBS', 5.0, 200.00),
(46, 'Rupesh kumar', '889655884', 12, 'rupesh', '123456789', 'Active', 'MBBS', 5.0, 250.00),
(47, 'Parthiv patel', '99855896633', 12, 'parthiv', '77896541230', 'Active', 'MBBS', 7.0, 600.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE IF NOT EXISTS `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`doctor_timings_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `available_day`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', '', 'Active'),
(18, 36, '13:30:00', '17:00:00', '', 'Active'),
(19, 37, '14:00:00', '18:00:00', '', 'Active'),
(20, 38, '17:00:00', '21:00:00', '', 'Active'),
(21, 39, '13:00:00', '19:00:00', '', 'Active'),
(22, 40, '07:00:00', '11:00:00', '', 'Active'),
(23, 41, '13:30:00', '16:30:00', '', 'Active'),
(24, 42, '11:30:00', '14:30:00', '', 'Active'),
(25, 43, '12:30:00', '16:30:00', '', 'Active'),
(26, 44, '21:30:00', '12:30:00', '', 'Active'),
(27, 36, '01:03:00', '13:03:00', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `prescriptionid` int(10) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `patientid`, `doctorid`, `prescriptionid`, `orderdate`, `deliverydate`, `address`, `mobileno`, `note`, `status`) VALUES
(17, 7, 0, 0, '2016-03-01', '2016-03-05', ' shivajinagar, Ujire', '9874561230', '', 'Active'),
(18, 9, 0, 0, '2016-03-03', '2016-03-25', ' Bajpe', '8785674625', '', 'Active'),
(19, 22, 0, 0, '2016-03-15', '2016-03-26', ' Kadri, Mangalore', '8756332456', '', 'Active'),
(20, 23, 0, 0, '2016-03-07', '2016-03-10', ' Perla, Ujire', '9449443117', '', 'Active'),
(21, 36, 0, 0, '2016-03-16', '2016-03-22', ' Ujire', '9449678831', '', 'Active'),
(22, 36, 0, 0, '0000-00-00', '0000-00-00', '3rd floor, city light buildin ', '8874563210', '', ''),
(23, 48, 0, 0, '0000-00-00', '0000-00-00', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Pending'),
(24, 48, 0, 0, '2016-03-27', '0000-00-00', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Pending'),
(25, 48, 37, 32, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active'),
(26, 48, 37, 33, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active'),
(27, 48, 37, 35, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `patientid` int(10) NOT NULL AUTO_INCREMENT,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`patientid`),
  KEY `loginid` (`loginid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(7, 'mangala', '2016-02-10', '12:00:00', ' manjunath nilaya\r\nperla road\r\nujire', '9874561230', 'belthangady', '542752', '14', '123456789', 'B+', 'FEMALE', '1990-02-08', 'Active'),
(9, 'manoj', '2016-01-14', '12:30:00', ' mahadevi temple bc road', '8785674625', 'Banglore', '564892', '15', '123456789', 'O+', 'MALE', '1994-05-11', 'Active'),
(22, 'kavitha', '2016-03-18', '01:21:00', '  kuvempu nagar', '8756332456', 'Banglore', '577234', '11', '123456789', 'B+', 'FEMALE', '2016-03-10', 'Active'),
(23, 'paramesh', '2016-03-02', '05:07:00', ' Janakal', '9449443117', 'Hosadurga', '577527', '13', '123456789', 'B+', 'MALE', '1963-06-01', 'Active'),
(36, 'thanuja K B', '2016-03-07', '01:30:00', ' chitradurga', '9449678831', 'hosdurga', '577527', '12', '123456789', 'AB+', 'FEMALE', '1995-12-19', 'Active'),
(40, 'mahesh', '2016-03-17', '13:00:00', 'vijyapura', '951234785', 'Banglore', '547147', '16', '123456789', 'AB+', 'MALE', '1995-06-21', 'Active'),
(41, 'Raj kiran', '0000-00-00', '00:00:00', '34rd floor', '78978978979', 'Manglaore', '', 'nandhini@gmail.com', '123456789', '', 'Male', '2016-12-31', 'Active'),
(42, 'ydtyfu', '0000-00-00', '00:00:00', 'chgf', '76767574', 'utdff', '', 'yu7', 'sytrfyhfyj', '', 'Male', '1996-07-17', 'Active'),
(43, 'Mahesh prasad', '2016-03-09', '00:00:00', '3rd floor, city light', '07789654123', 'Mangalore', '', 'mahesh', '123456789', '', 'Male', '2004-12-31', 'Active'),
(44, 'Raj guru', '2016-03-19', '08:17:55', '5th floor, city light building', '889665477', 'Mumbai', '', 'rajguru', '123456789', '', 'Male', '2022-12-31', 'Active'),
(45, 'Pter king', '2016-03-19', '08:50:46', 'skhourse, vinagar', '07789654123', 'puttur', '575001', 'peter', '123456789', 'A+', 'MALE', '2008-12-31', 'Active'),
(46, 'jeevan', '2016-03-19', '08:53:44', '4th cross, ml road', '7894561230', 'Bangalore', '456789', 'jeevan', '123123', 'A-', 'MALE', '2015-12-31', 'Active'),
(47, 'jeevan', '2016-03-19', '08:55:15', '4th cross, ml road', '7894561230', 'Bangalore', '456789', 'jeevana', '556677123', 'A-', 'MALE', '2015-12-31', 'Active'),
(48, 'Prakash', '2016-03-25', '09:59:36', '3rd floor, city light buildin', '8874563210', 'Mangalore', '584556', 'prakash', '123456789', 'A+', 'MALE', '2016-03-25', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `paymentid` int(10) NOT NULL AUTO_INCREMENT,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`paymentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`) VALUES
(12, 48, 97, '2016-03-25', '01:00:00', 2000.00, ''),
(16, 48, 97, '2016-03-25', '01:00:00', 2000.00, ''),
(17, 48, 97, '2016-03-25', '01:00:00', 100.00, ''),
(18, 48, 97, '2016-03-25', '01:00:00', 100.00, ''),
(19, 48, 97, '2016-03-25', '10:00:00', 100.00, ''),
(20, 48, 97, '2016-03-25', '10:00:00', 100.00, ''),
(21, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(22, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(23, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(24, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(25, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(26, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(27, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(28, 48, 97, '2016-03-25', '01:01:00', 120.00, ''),
(29, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active'),
(30, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active'),
(31, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active'),
(32, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active'),
(33, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active'),
(34, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active'),
(35, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active'),
(36, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active'),
(37, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active'),
(38, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active'),
(39, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active'),
(40, 48, 97, '0000-00-00', '00:00:00', 0.00, 'Active'),
(41, 22, 61, '2016-03-27', '01:00:00', 5000.00, 'Active'),
(42, 22, 61, '2016-03-27', '01:00:00', 5000.00, 'Active'),
(43, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active'),
(44, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `prescriptionid` int(10) NOT NULL AUTO_INCREMENT,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`prescriptionid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`) VALUES
(15, 0, 35, 7, '', 0, '2015-08-14', 'Active'),
(16, 0, 36, 9, '', 0, '2016-01-08', 'Active'),
(17, 0, 37, 22, '', 0, '2015-11-14', 'Active'),
(18, 0, 38, 23, '', 0, '2016-02-27', 'Active'),
(19, 0, 40, 36, '', 0, '2015-12-12', 'Active'),
(20, 14, 36, 22, '', 0, '2016-03-11', 'Active'),
(21, 44, 36, 22, '', 0, '2016-03-11', 'Active'),
(22, 14, 35, 47, '', 0, '2016-03-19', 'Active'),
(23, 14, 35, 47, '', 0, '2016-03-19', 'Active'),
(24, 13, 35, 47, '', 0, '2016-03-09', 'Active'),
(25, 13, 37, 47, '', 0, '2016-03-09', 'Active'),
(26, 13, 36, 48, '', 0, '2016-03-25', 'Active'),
(27, 13, 35, 48, '', 0, '2016-03-25', 'Active'),
(28, 13, 35, 48, '', 0, '2016-03-25', 'Active'),
(29, 0, 0, 48, '', 0, '2016-03-27', 'Active'),
(30, 0, 0, 48, '', 0, '2016-03-27', 'Active'),
(31, 0, 0, 48, '', 0, '2016-03-27', 'Active'),
(32, 0, 0, 48, '', 0, '2016-03-27', 'Active'),
(33, 0, 37, 48, '', 0, '2016-03-27', 'Active'),
(34, 0, 37, 48, '', 0, '2016-03-27', 'Active'),
(35, 0, 37, 48, '', 0, '2016-03-27', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE IF NOT EXISTS `prescription_records` (
  `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`prescription_record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(26, 15, 'Arthopan', 30.00, 10, '1-0-1', 'Active'),
(27, 16, 'Ecospirin', 11.00, 10, '1-1-1', 'Active'),
(28, 17, 'Dolo-60', 15.00, 5, '0-0-1', 'Active'),
(29, 18, 'Fenon-650', 500.00, 20, '0-1-1', 'Active'),
(30, 19, 'Rantac', 10.00, 10, '0-1-0', 'Active'),
(31, 20, 'Colpol', 25.00, 6, '1-1-1', ''),
(32, 20, 'Cinox', 85.00, 5, '1-1-1', ''),
(33, 21, 'Crosin DS', 45.00, 10, '0-1-1', ''),
(34, 23, 'glocu', 500.00, 6, '1-0-1', ''),
(35, 23, 'diodine', 60.00, 10, '1-1-1', ''),
(36, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(37, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(38, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(39, 23, 'Metacine', 66.00, 12, '1-0-1', ''),
(40, 24, 'glocu', 500.00, 4, '1-0-1', ''),
(41, 24, 'diodine', 500.00, 34, '1-0-1', ''),
(42, 24, 'diodine', 0.00, 4, '1-1-1', ''),
(43, 22, 'tin', 3.00, 5, '1-1-1', ''),
(44, 28, 'appsa', 500.00, 3, '1-0-1', ''),
(45, 28, 'novas', 30.00, 4, '1-1-1', ''),
(46, 28, 'kanal', 60.00, 6, '1-1-0', ''),
(47, 28, 'JITEL', 100.00, 6, '1-0-1', ''),
(48, 28, '24', 500.00, 10, '1-1-1', ''),
(49, 32, 'xyz', 39.00, 4, '1-0-1', ''),
(50, 32, 'Bcc', 99.00, 1, '1-1-1', ''),
(51, 32, 'ppr', 900.00, 4, '1-1-0', ''),
(52, 33, 'abc', 90.00, 3, '1-0-1', ''),
(53, 33, 'xyz', 500.00, 90, '1-1-1', ''),
(54, 35, 'omani', 900.00, 3, '1-0-1', '');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomid` int(10) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(25) NOT NULL,
  `roomno` int(10) NOT NULL,
  `noofbeds` int(10) NOT NULL,
  `room_tariff` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`roomid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `roomtype`, `roomno`, `noofbeds`, `room_tariff`, `status`) VALUES
(15, 'GENERAL WARD', 1, 20, 500.00, 'Active'),
(16, 'SPECIAL WARD', 2, 10, 100.00, 'Active'),
(17, 'GENERAL WARD', 2, 10, 500.00, 'Active'),
(18, 'GENERAL WARD', 121, 13, 150.00, 'Active'),
(19, 'GENERAL WARD', 850, 11, 500.00, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE IF NOT EXISTS `service_type` (
  `service_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`service_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE IF NOT EXISTS `treatment` (
  `treatmentid` int(10) NOT NULL AUTO_INCREMENT,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`treatmentid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(13, 'Treatment for Malaria', '450.00', ' Providing medicine and tonic with injection  ', 'Active'),
(14, 'Treatment for Dengue', '20000.00', ' Providing massage and home made tips', 'Active'),
(15, 'tryrtytyt', '554.00', ' ertrrcyt', 'Active'),
(16, 'rytyt', '55.00', ' eex', 'Active'),
(17, 'jkgjghj', '5653.00', ' hfhfjhg', 'Active'),
(18, 'rhgjh', '54.00', ' hgjgj ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE IF NOT EXISTS `treatment_records` (
  `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`treatment_records_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(10, 44, 13, 22, 36, 'High Fever', 'nill', '2016-03-02', '00:00:16', 'Active'),
(11, 49, 14, 7, 37, 'Bone fracture', 'nill', '2016-03-18', '00:00:17', 'Active'),
(12, 44, 13, 7, 35, 'detecting disease', '-', '2016-03-10', '00:00:13', 'Active'),
(13, 44, 13, 22, 36, 'Emergency treatment provided', '22192Drawing1.eddx', '2016-03-11', '00:00:13', 'Active'),
(14, 14, 44, 22, 37, 'Emergency treatement', '14633DB.docx', '2016-03-11', '00:00:01', 'Active'),
(15, 13, 52, 36, 37, 'blood test', '13774Drawing5.eddx', '2016-03-19', '00:00:12', 'Active'),
(16, 13, 93, 47, 36, 'Test treatment', '14018JS81.jpg', '2016-03-19', '00:00:01', 'Active'),
(17, 14, 93, 47, 35, 'test desc', '7379jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(18, 14, 93, 47, 35, 'test desc', '16400jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(19, 14, 93, 47, 35, 'test desc', '15957jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(20, 14, 93, 47, 35, 'test desc', '29975jcb-backhoe-loader-3DX.jpg', '2016-03-18', '01:00:00', 'Active'),
(21, 13, 97, 48, 35, 'Test treatment description', '18597RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(22, 13, 97, 48, 35, 'Test treatment description', '3114RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(23, 13, 97, 48, 35, 'Test treatment description', '25722RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(24, 13, 97, 48, 35, 'Test treatment description', '11889RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(25, 13, 97, 48, 35, 'Test treatment description', '25686RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(26, 13, 97, 48, 35, 'Test treatment description', '9259RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
