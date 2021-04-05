-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2018 at 09:37 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinehospitalmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'Ram', 'admin', 'adminadmin', 'Active', 'Admin'),
(2, 'Kishore', 'admin1', '123456789', 'Active', 'Admin'),
(3, 'Sooraj', 'admin2', '123456789', 'Active', 'Admin'),
(4, 'Anuj', 'admin', '123456789', 'Active', 'Admin'),
(5, 'Raj kiran', 'rajkiran', 'q1w2e3r4/', 'Active', 'Admin'),
(6, 'Mahesh kiran', 'mahesh', 'q1w2e3r4/', 'Active', 'Pharmacy Manager'),
(8, 'rupesh', 'rupesh', 'rupeshrupesh', 'Active', 'Pharmacy Manager');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `roomid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(62, 'InPatient', 23, 15, 13, '2016-03-01', '01:00:00', 35, 'Approved', ''),
(63, 'Online', 0, 16, 14, '2016-03-15', '16:04:00', 38, '', ''),
(65, 'Out Patient', 23, 15, 13, '2016-03-09', '01:00:00', 35, 'Approved', ''),
(67, 'Online', 0, 15, 13, '2016-03-10', '13:59:00', 43, '', ''),
(68, 'Online', 36, 15, 13, '2016-03-18', '12:59:00', 43, 'Approved', ''),
(70, '', 38, 0, 0, '2016-03-15', '12:59:00', 0, 'Approved', ''),
(71, 'Offline', 7, 17, 11, '2016-03-15', '13:04:00', 44, 'Active', ''),
(72, 'InPatient', 0, 15, 12, '2016-03-18', '00:00:00', 43, '', ''),
(73, 'InPatient', 0, 15, 12, '2016-03-18', '00:00:00', 43, '', ''),
(74, 'Online', 39, 15, 12, '2016-03-17', '01:00:00', 43, 'Approved', ''),
(75, 'OutPatient', 0, 15, 11, '2016-03-09', '13:59:00', 37, '', ''),
(76, 'Out Patient', 22, 16, 11, '2016-03-17', '11:00:00', 35, 'Approved', ''),
(77, 'Out Patient', 22, 0, 11, '2018-03-24', '11:00:00', 39, 'Approved', ''),
(78, 'Offline', 7, 15, 12, '2016-03-16', '01:00:00', 35, 'Approved', ''),
(79, 'Out Patient', 40, 0, 11, '2018-03-30', '00:00:00', 45, 'Approved', ''),
(80, 'Out Patient', 22, 0, 11, '0000-00-00', '00:00:00', 45, 'Approved', ''),
(81, 'Out Patient', 22, 15, 13, '2018-04-03', '02:00:00', 37, 'Approved', ''),
(82, 'Out Patient', 22, 16, 11, '2016-03-17', '02:00:00', 35, 'Approved', 'Test appointment record'),
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
(93, 'InPatient', 47, 15, 12, '2016-03-19', '01:00:00', 36, 'Approved', 'Test test app'),
(94, 'InPatient', 47, 15, 12, '2016-03-19', '01:00:00', 36, 'Active', 'Test test app'),
(95, 'InPatient', 7, 15, 12, '2016-03-24', '01:01:00', 44, 'Active', 'test'),
(96, 'InPatient', 45, 15, 12, '2016-03-24', '01:00:00', 35, 'Approved', 'test appointment'),
(97, 'InPatient', 48, 15, 13, '2016-03-30', '01:00:00', 35, 'Approved', 'Test reason for medicine'),
(98, 'ONLINE', 7, 0, 11, '2018-01-14', '11:11:00', 0, 'Pending', 'pain....'),
(99, '', 0, 0, 0, '0000-00-00', '00:00:00', 0, '', ''),
(100, '', 0, 0, 0, '0000-00-00', '00:00:00', 0, '', ''),
(101, 'Out Patient', 50, 15, 11, '2018-04-05', '03:33:00', 0, 'Approved', 'Body...'),
(102, 'Online', 0, 0, 0, '0000-00-00', '00:00:00', 0, '', ''),
(103, 'Out Patient', 0, 0, 11, '2019-03-09', '08:41:00', 45, 'Approved', 'test app'),
(104, 'Out Patient', 7, 15, 11, '2019-03-09', '08:41:00', 35, 'Approved', 'test app'),
(105, '', 7, 0, 11, '2018-02-23', '11:11:00', 35, 'Approved', 'simply'),
(106, 'Out Patient', 53, 15, 11, '2018-02-23', '10:00:00', 35, 'Approved', 'jolly'),
(107, 'Out Patient', 9, 15, 11, '0000-00-00', '11:11:00', 35, 'Approved', 'uuuuuuu'),
(108, 'Out Patient', 7, 15, 11, '2018-03-09', '05:05:00', 35, 'Approved', 'ttttt'),
(109, 'InPatient', 54, 16, 15, '2018-03-20', '03:00:00', 0, 'Approved', 'Hello this is patient appointment'),
(110, 'InPatient', 56, 16, 11, '2018-03-28', '02:22:00', 42, 'Approved', 'rrrrr'),
(111, 'InPatient', 44, 16, 12, '2018-04-04', '13:00:00', 36, 'Approved', 'Test record'),
(112, 'Out Patient', 44, 0, 12, '2018-04-04', '01:02:00', 36, 'Approved', 'vvvv'),
(113, 'Out Patient', 7, 0, 11, '2018-04-04', '00:02:00', 35, 'Approved', 'nnnn'),
(114, 'Out Patient', 7, 0, 11, '2018-04-04', '11:11:00', 35, 'Approved', 'vvvvv'),
(115, 'ONLINE', 7, 0, 12, '2018-04-04', '11:22:00', 0, 'Pending', 'nnnnnn'),
(116, 'Out Patient', 7, 0, 11, '2018-04-04', '08:08:00', 35, 'Approved', 'bbbbb'),
(117, 'Out Patient', 7, 0, 12, '0000-00-00', '01:01:00', 46, 'Approved', 'gggg'),
(118, 'Out Patient', 9, 0, 11, '2018-04-04', '14:01:00', 35, 'Approved', 'cdcxdc'),
(119, 'Out Patient', 56, 0, 11, '0000-00-00', '03:02:00', 35, 'Approved', 'mmm'),
(120, '', 57, 0, 11, '2018-07-20', '09:00:00', 35, 'Approved', 'Appointment for monthly medical test');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL,
  `discharge_time` time NOT NULL,
  `discharge_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(11, 42, 90, '2016-03-25', '10:11:59', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(12, 0, 0, '0000-00-00', '00:00:00', 100.00, 0.00, 'kkkk , ', '04:13:27', '2018-04-03'),
(13, 0, 0, '0000-00-00', '00:00:00', 100.00, 0.00, 'kkkk , ', '04:13:27', '2018-04-03'),
(14, 7, 105, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(15, 53, 106, '0000-00-00', '00:00:00', 0.00, 0.00, 'l , ', '07:46:14', '2018-04-03'),
(16, 50, 101, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(17, 22, 76, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(18, 9, 107, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(19, 7, 108, '0000-00-00', '00:00:00', 0.00, 0.00, ' ,  , patient died ,  , ', '01:46:41', '2018-03-17'),
(20, 54, 109, '0000-00-00', '00:00:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(21, 23, 65, '2018-03-24', '13:29:51', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(22, 22, 77, '2018-03-24', '14:53:12', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(23, 0, 103, '2018-03-24', '14:53:45', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(24, 43, 91, '2018-03-24', '15:19:16', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(25, 56, 110, '2018-03-27', '09:44:13', 0.00, 0.00, 'lll , ', '04:14:13', '2018-04-03'),
(26, 40, 79, '2018-03-30', '15:12:42', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(27, 22, 80, '2018-04-03', '09:44:21', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(28, 22, 81, '2018-04-03', '09:52:34', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(29, 22, 82, '2018-04-03', '15:10:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(30, 44, 111, '2018-04-04', '09:06:39', 0.00, 0.00, ' ,  ,  ,  , ', '00:00:00', '0000-00-00'),
(31, 44, 112, '2018-04-04', '09:47:26', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(32, 7, 113, '2018-04-04', '09:57:00', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(33, 7, 114, '2018-04-04', '10:02:46', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(34, 7, 116, '2018-04-04', '10:11:49', 0.00, 0.00, ' , ', '00:00:00', '0000-00-00'),
(35, 7, 117, '2018-04-04', '12:03:12', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(36, 9, 118, '2018-04-04', '13:20:28', 0.00, 0.00, '', '00:00:00', '0000-00-00'),
(37, 56, 119, '2018-04-06', '03:26:19', 0.00, 0.00, ' ,  , ', '00:00:00', '0000-00-00'),
(38, 57, 120, '2018-07-12', '21:13:33', 0.00, 0.00, '', '00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE `billing_records` (
  `billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(39, 9, 11, 'Service Charge', 1105.00, '2016-03-27', 'Active'),
(40, 9, 36, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(41, 9, 37, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(42, 9, 38, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(43, 7, 39, 'Prescription Charge', 100.00, '0000-00-00', 'Active'),
(44, 7, 40, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(45, 9, 41, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(46, 9, 42, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(47, 9, 43, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(48, 9, 44, 'Prescription Charge', 444.00, '0000-00-00', 'Active'),
(49, 9, 45, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(50, 9, 46, 'Prescription Charge', 11111.00, '0000-00-00', 'Active'),
(51, 15, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(52, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(53, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(54, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(55, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(56, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(57, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(58, 15, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(59, 15, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(60, 15, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(61, 16, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(62, 16, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(63, 16, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(64, 17, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(65, 14, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(66, 12, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(67, 17, 47, 'Prescription Charge', 231.00, '0000-00-00', 'Active'),
(68, 18, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(69, 14, 48, 'Prescription Charge', 0.00, '0000-00-00', 'Active'),
(70, 14, 49, 'Prescription Charge', 70.00, '0000-00-00', 'Active'),
(71, 19, 15, 'Room Rent', 500.00, '0000-00-00', 'Active'),
(72, 19, 35, 'Consultancy Charge', 700.00, '0000-00-00', 'Active'),
(73, 19, 13, 'Treatment', 450.00, '0000-00-00', 'Active'),
(74, 17, 50, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(75, 17, 51, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(76, 19, 52, 'Prescription Charge', 20.00, '0000-00-00', 'Active'),
(77, 5, 53, 'Prescription Charge', 50.00, '0000-00-00', 'Active'),
(78, 19, 54, 'Prescription Charge', 30.00, '0000-00-00', 'Active'),
(79, 5, 55, 'Prescription Charge', 45.00, '0000-00-00', 'Active'),
(80, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(81, 19, 15, 'Treatment', 554.00, '0000-00-00', 'Active'),
(82, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(83, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(84, 12, 16, 'Room Rent', 100.00, '0000-00-00', 'Active'),
(85, 20, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(86, 20, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(87, 20, 11, 'Service Charge', 1000.00, '2018-03-17', 'Active'),
(88, 20, 57, 'Prescription Charge', 80.00, '0000-00-00', 'Active'),
(89, 19, 37, 'Consultancy Charge', 20.00, '0000-00-00', 'Active'),
(90, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(91, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(92, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(93, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(94, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(95, 19, 38, 'Consultancy Charge', 200.00, '2014-11-13', 'Active'),
(96, 19, 14, 'Treatment', 20000.00, '2014-11-13', 'Active'),
(97, 19, 38, 'Consultancy Charge', 200.00, '0000-00-00', 'Active'),
(98, 19, 14, 'Treatment', 20000.00, '0000-00-00', 'Active'),
(99, 19, 38, 'Consultancy Charge', 200.00, '2018-03-17', 'Active'),
(100, 19, 14, 'Treatment', 20000.00, '2018-03-17', 'Active'),
(101, 21, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(102, 21, 13, 'Treatment', 450.00, '2018-03-24', 'Active'),
(103, 24, 35, 'Consultancy Charge', 700.00, '2018-03-24', 'Active'),
(104, 24, 14, 'Treatment', 20000.00, '2018-03-24', 'Active'),
(105, 21, 60, 'Prescription Charge', 75.00, '2018-03-24', 'Active'),
(106, 24, 35, 'Consultancy Charge', 700.00, '2018-03-26', 'Active'),
(107, 24, 13, 'Treatment', 450.00, '2018-03-26', 'Active'),
(108, 24, 37, 'Prescription Charge', 20.00, '2018-03-26', 'Active'),
(109, 25, 16, 'Room Rent', 100.00, '2018-03-27', 'Active'),
(110, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(111, 25, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(112, 25, 42, 'Consultancy Charge', 20.00, '2018-03-27', 'Active'),
(113, 25, 19, 'Treatment', 4000.00, '2018-03-27', 'Active'),
(114, 8, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(115, 8, 15, 'Treatment', 554.00, '2018-03-27', 'Active'),
(116, 19, 35, 'Consultancy Charge', 700.00, '2018-03-27', 'Active'),
(117, 19, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(118, 5, 38, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(119, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(120, 18, 14, 'Treatment', 20000.00, '2018-03-27', 'Active'),
(121, 18, 39, 'Prescription Charge', 100.00, '2018-03-27', 'Active'),
(122, 18, 40, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(123, 18, 41, 'Prescription Charge', 0.00, '2018-03-27', 'Active'),
(124, 18, 37, 'Consultancy Charge', 300.00, '2018-03-27', 'Active'),
(125, 18, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(126, 18, 42, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(127, 5, 36, 'Consultancy Charge', 500.00, '2018-03-27', 'Active'),
(128, 5, 13, 'Treatment', 450.00, '2018-03-27', 'Active'),
(129, 5, 43, 'Prescription Charge', 20.00, '2018-03-27', 'Active'),
(130, 19, 46, 'Prescription Charge', 0.00, '2018-03-28', 'Active'),
(131, 19, 48, 'Prescription Charge', 0.00, '2018-03-30', 'Active'),
(132, 19, 49, 'Prescription Charge', 70.00, '2018-03-30', 'Active'),
(133, 19, 50, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(134, 19, 51, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(135, 19, 52, 'Prescription Charge', 20.00, '2018-03-30', 'Active'),
(136, 19, 53, 'Prescription Charge', 50.00, '2018-03-30', 'Active'),
(137, 19, 54, 'Prescription Charge', 30.00, '2018-03-30', 'Active'),
(138, 12, 55, 'Prescription Charge', 45.00, '2018-03-31', 'Active'),
(139, 12, 56, 'Prescription Charge', 50.00, '2018-03-31', 'Active'),
(140, 12, 57, 'Prescription Charge', 80.00, '2018-03-31', 'Active'),
(141, 25, 58, 'Prescription Charge', 70.00, '2018-03-31', 'Active'),
(142, 25, 59, 'Prescription Charge', 100.00, '2018-03-31', 'Active'),
(143, 20, 60, 'Prescription Charge', 75.00, '2018-03-31', 'Active'),
(144, 19, 61, 'Prescription Charge', 20.00, '2018-03-31', 'Active'),
(145, 19, 63, 'Prescription Charge', 20.00, '2018-04-03', 'Active'),
(146, 10, 64, 'Prescription Charge', 25.00, '2018-04-03', 'Active'),
(147, 19, 68, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(148, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(149, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(150, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(151, 28, 15, 'Room Rent', 500.00, '2018-04-03', 'Active'),
(152, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(153, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(154, 29, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(155, 29, 69, 'Prescription Charge', 70.00, '2018-04-03', 'Active'),
(156, 19, 70, 'Prescription Charge', 75.00, '2018-04-03', 'Active'),
(157, 19, 71, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(158, 19, 74, 'Prescription Charge', 0.00, '2018-04-03', 'Active'),
(159, 19, 75, 'Prescription Charge', 50.00, '2018-04-03', 'Active'),
(160, 23, 16, 'Room Rent', 100.00, '2018-04-03', 'Active'),
(161, 18, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(162, 18, 15, 'Treatment', 554.00, '2018-04-03', 'Active'),
(163, 19, 76, 'Prescription Charge', 225.00, '2018-04-03', 'Active'),
(164, 19, 35, 'Consultancy Charge', 700.00, '2018-04-03', 'Active'),
(165, 19, 13, 'Treatment', 450.00, '2018-04-03', 'Active'),
(166, 5, 77, 'Prescription Charge', 965.00, '2018-04-04', 'Active'),
(167, 30, 16, 'Room Rent', 100.00, '2018-04-04', 'Active'),
(168, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(169, 30, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(170, 30, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(171, 30, 17, 'Treatment', 5653.00, '2018-04-04', 'Active'),
(172, 30, 78, 'Prescription Charge', 320.00, '2018-04-04', 'Active'),
(173, 30, 79, 'Prescription Charge', 0.00, '2018-04-04', 'Active'),
(174, 31, 36, 'Consultancy Charge', 500.00, '2018-04-04', 'Active'),
(175, 31, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(176, 31, 10, 'Service Charge', 250.00, '2018-04-04', 'Active'),
(177, 34, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(178, 34, 14, 'Treatment', 20000.00, '2018-04-04', 'Active'),
(179, 34, 80, 'Prescription Charge', 250.00, '2018-04-04', 'Active'),
(180, 35, 35, 'Consultancy Charge', 700.00, '2018-04-04', 'Active'),
(181, 35, 13, 'Treatment', 450.00, '2018-04-04', 'Active'),
(182, 37, 35, 'Consultancy Charge', 700.00, '2018-04-06', 'Active'),
(183, 37, 13, 'Treatment', 450.00, '2018-04-06', 'Active'),
(184, 37, 81, 'Prescription Charge', 100.00, '2018-04-06', 'Active'),
(185, 35, 82, 'Prescription Charge', 0.00, '2018-04-06', 'Active'),
(186, 35, 83, 'Prescription Charge', 50.00, '2018-04-06', 'Active'),
(187, 35, 84, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(188, 12, 85, 'Prescription Charge', 40.00, '2018-04-06', 'Active'),
(189, 15, 86, 'Prescription Charge', 325.00, '2018-04-07', 'Active'),
(190, 15, 87, 'Prescription Charge', 800.00, '2018-04-07', 'Active'),
(191, 12, 88, 'Prescription Charge', 150.00, '2018-04-07', 'Active'),
(192, 29, 89, 'Prescription Charge', 550.00, '2018-04-07', 'Active'),
(193, 35, 90, 'Prescription Charge', 0.00, '2018-04-07', 'Active'),
(194, 29, 91, 'Prescription Charge', 450.00, '2018-04-08', 'Active'),
(195, 29, 92, 'Prescription Charge', 1125.00, '2018-04-08', 'Active'),
(196, 29, 93, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(197, 29, 94, 'Prescription Charge', 1700.00, '2018-04-08', 'Active'),
(198, 29, 95, 'Prescription Charge', 0.00, '2018-04-08', 'Active'),
(199, 29, 96, 'Prescription Charge', 1450.00, '2018-04-08', 'Active'),
(200, 29, 97, 'Prescription Charge', 650.00, '2018-04-08', 'Active'),
(201, 38, 35, 'Consultancy Charge', 700.00, '2018-07-12', 'Active'),
(202, 38, 14, 'Treatment', 20000.00, '2018-07-12', 'Active'),
(203, 38, 98, 'Prescription Charge', 0.00, '2018-07-12', 'Active'),
(204, 38, 99, 'Prescription Charge', 350.00, '2018-07-12', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(11, 'Physician', 'All type of disease', 'Active'),
(12, 'Children doctor', 'All kinds of disease', 'Active'),
(13, 'General Medicne1', 'General doctor', 'Active'),
(14, 'ENT Specialist', 'Ear, Nose and Tongue Doctor', 'Active'),
(15, 'Neurologist', 'Related neurons, bones', 'Active'),
(16, 'Surgery', 'Includes plastic surgery, brain and neurology surgery', 'Active'),
(17, 'Pediatrics', 'Pediatrics doctor', 'Active'),
(18, 'Pharmacy', 'Providing patients with medicines prescribed by specialist physicians', 'Active'),
(19, 'Laboratory and Blood bank', 'Includes detailed lab investigations and blood bank are developing considerably as per international standards  ', 'Active'),
(20, 'Physiotherapy', 'Includes services to specialized clinic inpatients who are referred by hospital physicians or primary health care clinics.', 'Active'),
(22, 'zczcz', 'sfdsf', ''),
(25, 'physician', 'All type', ''),
(41, '', '', 'active'),
(42, 'physician11', 'aaaaaaaa', 'active'),
(43, 'shricharan', 'alva', 'active'),
(44, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(47, 'Parthiv patel', '99855896633', 12, 'parthiv', '77896541230', 'Active', 'MBBS', 7.0, 600.00),
(61, 'vidya', '986555566', 5, '8553507260', '876867888', 'active', 'ufyhfhjkl', 3.0, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE `doctor_timings` (
  `doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `available_day` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(27, 36, '01:03:00', '13:03:00', '', 'Active'),
(28, 61, '11:11:00', '19:07:00', '', 'Active'),
(29, 35, '11:11:00', '16:44:00', '', 'Active'),
(30, 35, '01:10:00', '16:11:00', '', 'Active'),
(31, 35, '01:02:00', '15:04:00', '2018-03-26', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'ABC', 20.00, 'test abc', 'Active'),
(3, 'xtz', 25.00, 'test abc', 'Active'),
(4, 'NYX', 50.00, 'test abc', 'Active'),
(5, 'Colpol', 30.00, 'test abc', 'Active'),
(6, 'vvvv', 50.00, 'hnghng', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `prescriptionid` int(10) NOT NULL,
  `orderdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `address` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `cvv_no` varchar(5) NOT NULL,
  `expdate` date NOT NULL,
  `card_holder` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `patientid`, `doctorid`, `prescriptionid`, `orderdate`, `deliverydate`, `address`, `mobileno`, `note`, `status`, `payment_type`, `card_no`, `cvv_no`, `expdate`, `card_holder`) VALUES
(17, 7, 0, 0, '2016-03-01', '2016-03-05', ' shivajinagar, Ujire', '9874561230', '', 'Active', '', '', '', '0000-00-00', ''),
(18, 9, 0, 0, '2016-03-03', '2016-03-25', ' Bajpe', '8785674625', '', 'Active', '', '', '', '0000-00-00', ''),
(19, 22, 0, 0, '2016-03-15', '2016-03-26', ' Kadri, Mangalore', '8756332456', '', 'Active', '', '', '', '0000-00-00', ''),
(20, 23, 0, 0, '2016-03-07', '2016-03-10', ' Perla, Ujire', '9449443117', '', 'Active', '', '', '', '0000-00-00', ''),
(21, 36, 0, 0, '2016-03-16', '2016-03-22', ' Ujire', '9449678831', '', 'Active', '', '', '', '0000-00-00', ''),
(22, 36, 0, 72, '0000-00-00', '2018-04-03', '3rd floor, city light buildin ', '8874563210', '', 'Active', '', '', '', '0000-00-00', ''),
(23, 48, 0, 73, '0000-00-00', '2018-03-27', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Active', '', '', '', '0000-00-00', ''),
(24, 48, 0, 0, '2016-03-27', '2018-03-17', '3rd floor, city light buildin ', '8874563210', ' Kindly send the medicines as soon as possible', 'Pending', '', '', '', '0000-00-00', ''),
(25, 48, 37, 32, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(26, 48, 37, 33, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(27, 48, 37, 35, '2016-03-27', '2016-03-27', '3rd floor, city light buildin ', '8874563210', ' Test note send ', 'Active', '', '', '', '0000-00-00', ''),
(28, 7, 35, 56, '0000-00-00', '2018-03-17', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' xxx', 'Active', '', '', '', '0000-00-00', ''),
(29, 7, 35, 58, '2018-03-19', '2018-03-21', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' xxx', 'Active', '', '', '', '0000-00-00', ''),
(30, 7, 35, 59, '2018-03-21', '2018-03-27', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' trfrbgb', 'Active', '', '', '', '0000-00-00', ''),
(31, 22, 35, 44, '2018-03-27', '2018-03-28', '  kuvempu nagar ', '8756332456', ' hhhhh', 'Active', '', '', '', '0000-00-00', ''),
(32, 7, 35, 45, '2018-03-28', '2018-03-28', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' fffff', 'Active', '', '', '', '0000-00-00', ''),
(33, 41, 35, 47, '2018-03-30', '2018-03-31', '34rd floor ', '78978978979', ' hiiiii', 'Delivered', '', '', '', '0000-00-00', ''),
(34, 41, 35, 67, '2018-03-31', '0000-00-00', '34rd floor ', '78978978979', ' Kindly provide prescription', 'Active', '', '', '', '0000-00-00', ''),
(35, 41, 36, 57, '2018-03-31', '2018-03-31', '34rd floor ', '78978978979', ' tt', 'Delivered', '', '', '', '0000-00-00', ''),
(36, 7, 35, 62, '2018-03-31', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' mmmm', 'Active', '', '', '', '0000-00-00', ''),
(37, 7, 35, 65, '2018-04-03', '2018-04-03', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvv', 'Delivered', '', '', '', '0000-00-00', ''),
(38, 7, 0, 71, '2018-04-03', '2018-04-03', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' ddd', 'Delivered', '', '', '', '0000-00-00', ''),
(39, 7, 0, 0, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvvv', 'Pending', '', '', '', '0000-00-00', ''),
(40, 7, 0, 75, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' kkkk', 'Pending', '', '', '', '0000-00-00', ''),
(41, 7, 0, 74, '2018-04-03', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' lbbnbjbj', 'Pending', '', '', '', '0000-00-00', ''),
(42, 7, 0, 90, '2018-04-06', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' gggg', 'Pending', '', '', '', '0000-00-00', ''),
(43, 7, 0, 83, '2018-04-06', '2018-04-06', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' zzzzzz', 'Delivered', '', '', '', '0000-00-00', ''),
(44, 7, 0, 82, '2018-04-06', '2018-04-06', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' vvvvvvvvvv', 'Delivered', '', '', '', '0000-00-00', ''),
(45, 7, 35, 84, '2018-04-06', '0000-00-00', ' manjunath nilaya\r\nperla road\r\nujire ', '9874561230', ' nmmmm', 'Pending', '', '', '', '0000-00-00', ''),
(46, 52, 35, 85, '2018-04-06', '2018-04-07', 'sachin ', '966555665', ' zz', 'Delivered', '', '', '', '0000-00-00', ''),
(47, 53, 35, 87, '2018-04-07', '2018-04-07', 'puttur ', '1234512345', ' Kindly send me prescription', 'Delivered', '', '', '', '0000-00-00', ''),
(48, 52, 35, 88, '2018-04-07', '2018-04-07', 'sachin ', '966555665', ' ffff', 'Delivered', '', '', '', '0000-00-00', ''),
(50, 22, 35, 91, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' test', 'Delivered', 'CREDIT CARD', '1231231231231231', '254', '2018-05-01', 'Raj kiran'),
(51, 22, 35, 92, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' please deliver it', 'Paid', 'VISA', '1231231231231232', '232', '2018-04-01', 'Raj kiran'),
(52, 22, 35, 94, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' te', 'Pending', '', '', '', '0000-00-00', ''),
(53, 22, 35, 95, '2018-04-08', '0000-00-00', '  kuvempu nagar ', '8756332456', ' test', 'Pending', '', '', '', '0000-00-00', ''),
(54, 22, 35, 96, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' ttest', 'Delivered', 'VISA', '1234567890123456', '122', '2018-04-01', 'Raj kiran'),
(55, 22, 35, 97, '2018-04-08', '2018-04-08', '  kuvempu nagar ', '8756332456', ' helllo', 'Delivered', 'DEBIT CARD', '2178945612345678', '457', '2019-01-01', 'Raj kiran');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(7, 'mangala', '2016-02-10', '12:00:00', ' manjunath nilaya\r\nperla road\r\nujire', '98732230', 'belthangady', '542752', '14', '123456789', 'B+', 'FEMALE', '1990-02-08', 'Active'),
(9, 'manoj', '2016-01-14', '12:30:00', ' mahadevi temple bc road', '8785674625', 'Banglore', '564892', '15', '123456789', 'O+', 'MALE', '1994-05-11', 'Active'),
(22, 'kavitha', '2016-03-18', '01:21:00', '  kuvempu nagar', '8756332456', 'Banglore', '577234', 'shricharanalva971', 'shricharanalva97', 'B+', 'FEMALE', '2016-03-10', 'Active'),
(23, 'paramesh', '2016-03-02', '05:07:00', ' Janakal', '9449443117', 'Hosadurga', '577527', '13', '123456789', 'B+', 'MALE', '1963-06-01', 'Active'),
(36, 'thanuja K B', '2016-03-07', '01:30:00', ' chitradurga', '9449678831', 'hosdurga', '577527', '12', '123456789', 'AB+', 'FEMALE', '1995-12-19', 'Active'),
(40, 'mahesh', '2016-03-17', '13:00:00', 'vijyapura', '951234785', 'Banglore', '547147', '16', '123456789', 'AB+', 'MALE', '1995-06-21', 'Active'),
(41, 'Raj kiran', '0000-00-00', '00:00:00', '34rd floor', '78978978979', 'Manglaore', '53535', 'nandhini', '123456789', '', 'Male', '2016-12-31', 'Active'),
(42, 'ydtyfu', '0000-00-00', '00:00:00', 'chgf', '76767574', 'utdff', '35353', 'yu7', 'sytrfyhfyj', '', 'Male', '1996-07-17', 'Active'),
(43, 'Mahesh prasad', '2016-03-09', '00:00:00', '3rd floor, city light', '07789654123', 'Mangalore', '53535', 'mahesh', '123456789', '', 'Male', '2004-12-31', 'Active'),
(44, 'Raj guru', '2016-03-19', '08:17:55', '5th floor, city light building', '889665477', 'Mumbai', '35353', 'rajguru', '123456789', '', 'Male', '2022-12-31', 'Active'),
(45, 'Pter king', '2016-03-19', '08:50:46', 'skhourse, vinagar', '07789654123', 'puttur', '575001', 'peter', '123456789', 'A+', 'MALE', '2008-12-31', 'Active'),
(46, 'jeevan', '2016-03-19', '08:53:44', '4th cross, ml road', '7894561230', 'Bangalore', '456789', 'jeevan', '123123123', 'A-', 'MALE', '2015-12-31', 'Active'),
(47, 'jeevan', '2016-03-19', '08:55:15', '4th cross, ml road', '7894561230', 'Bangalore', '456789', 'jeevana', '556677123', 'A-', 'MALE', '2015-12-31', 'Active'),
(48, 'Prakash', '2016-03-25', '09:59:36', '3rd floor, city light buildin', '8874563210', 'Mangalore', '584556', 'prakash', '123456789', 'A+', 'MALE', '2016-03-25', 'Active'),
(50, 'shri', '2018-01-26', '13:28:33', 'Bangalore', '8553507260', 'Mangalore', '53535', 'shri', 'shricharan', '', 'Male', '2018-02-04', 'Active'),
(51, 'aravind', '0000-00-00', '00:00:00', 'Mangalore', '8764654651', 'Mangalore', '66567', 'ara@gmail.com', '123456789', 'A+', 'MALE', '2018-01-30', 'Active'),
(52, 'sachin', '0000-00-00', '00:00:00', 'sachin', '966555665', 'Mangalore', '66567', '11', '123456789', 'A+', 'MALE', '2018-02-01', 'Active'),
(53, 'shri', '2018-02-22', '15:58:07', 'puttur', '1234512345', 'puttur', '', '8553507260', '9148167875', '', 'Male', '2018-01-10', 'Active'),
(54, 'Raj kiran', '0000-00-00', '00:00:00', '3rd floor city light building', '9987456332', 'mangalore', '575002', 'rajkiran', '123456789', 'A+', '', '2010-03-02', 'Active'),
(55, 'Mahesh kiran', '2018-03-24', '15:12:37', '3rd floor', '7894561230', 'Mangalore', '574899', '123456789', '123456789', 'B+', 'MALE', '2002-11-30', 'Active'),
(56, 'xxxx', '2018-03-27', '09:39:10', 'yyyy', '9677767676', 'uuuu', '35353', 'qqqqq', '1111111111', '', 'Male', '2015-02-11', 'Active'),
(57, 'Peter king', '2018-07-12', '21:07:50', 'st house,\r\nsunkadakatte,\r\nbangalore', '88569525445', 'Bangalore', '575002', 'peterking', 'q1w2e3r4/', 'A+', 'MALE', '1978-07-11', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardnumber` int(25) NOT NULL,
  `cvvno` int(5) NOT NULL,
  `expdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`, `cardholder`, `cardnumber`, `cvvno`, `expdate`) VALUES
(12, 48, 97, '2016-03-25', '01:00:00', 2000.00, '', '', 0, 0, '0000-00-00'),
(16, 48, 97, '2016-03-25', '01:00:00', 2000.00, '', '', 0, 0, '0000-00-00'),
(17, 48, 97, '2016-03-25', '01:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(18, 48, 97, '2016-03-25', '01:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(19, 48, 97, '2016-03-25', '10:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(20, 48, 97, '2016-03-25', '10:00:00', 100.00, '', '', 0, 0, '0000-00-00'),
(21, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(22, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(23, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(24, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(25, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(26, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(27, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(28, 48, 97, '2016-03-25', '01:01:00', 120.00, '', '', 0, 0, '0000-00-00'),
(29, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active', '', 0, 0, '0000-00-00'),
(30, 48, 97, '2016-03-25', '01:01:00', 120.00, 'Active', '', 0, 0, '0000-00-00'),
(31, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active', '', 0, 0, '0000-00-00'),
(32, 48, 97, '2016-03-25', '01:01:00', 14.00, 'Active', '', 0, 0, '0000-00-00'),
(33, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(34, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(35, 48, 97, '2016-03-25', '01:00:00', 30.00, 'Active', '', 0, 0, '0000-00-00'),
(36, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(37, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(38, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(39, 48, 97, '2016-03-25', '01:00:00', 25.00, 'Active', '', 0, 0, '0000-00-00'),
(40, 48, 97, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(41, 22, 611, '2016-03-27', '01:00:00', 5000.00, 'Active', '', 0, 0, '0000-00-00'),
(42, 22, 61, '2016-03-27', '01:00:00', 5000.00, 'Active', '', 0, 0, '0000-00-00'),
(43, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(44, 22, 61, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(45, 7, 108, '2018-03-17', '13:46:10', 26568.58, 'Active', '', 0, 0, '0000-00-00'),
(46, 7, 108, '0000-00-00', '00:00:00', 0.00, 'Active', '', 0, 0, '0000-00-00'),
(47, 55, 0, '2018-04-03', '16:13:39', 2504.88, 'Active', '', 0, 0, '0000-00-00'),
(48, 56, 110, '2018-04-03', '16:14:18', 27834.95, 'Active', '', 0, 0, '0000-00-00'),
(49, 53, 106, '2018-04-03', '19:46:18', 26907.50, 'Active', '', 0, 0, '0000-00-00'),
(50, 44, 111, '2018-04-04', '09:11:20', 100.00, 'Active', '', 0, 0, '0000-00-00'),
(51, 44, 111, '0000-00-00', '00:00:00', 2504.88, 'Active', 'Raj kiran', 2147483647, 874, '0000-00-00'),
(52, 44, 111, '2018-04-04', '09:27:29', 2504.88, 'Active', 'Raj kiran', 2147483647, 874, '2019-01-01'),
(53, 44, 111, '2018-04-04', '09:29:19', 888.00, 'Active', 'Raj kiran', 2147483647, 854, '2019-01-01'),
(54, 7, 108, '2018-04-04', '09:53:54', 140000.00, 'Active', 'shricharan', 2147483647, 221, '2018-04-01'),
(55, 7, 108, '2018-04-04', '09:54:39', 5000.00, 'Active', 'shricharan', 2147483647, 552, '2018-04-01'),
(56, 7, 116, '2018-04-04', '10:15:38', 100.00, 'Active', 'Raj kiran', 1246, 6565, '2019-02-01'),
(57, 56, 119, '2018-04-06', '03:30:57', 1000.00, 'Active', 'Raj kiran', 2147483647, 221, '2018-04-01'),
(58, 56, 119, '2018-04-06', '03:31:30', 431.25, 'Active', 'shricharan', 2147483647, 252, '2018-04-01'),
(59, 0, 103, '2018-04-07', '09:39:12', 115.00, 'Active', 'Raj kiran', 2147483647, 533, '2018-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescriptionid` int(10) NOT NULL,
  `treatment_records_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `delivery_type` varchar(10) NOT NULL COMMENT 'Delivered through appointment or online order',
  `delivery_id` int(10) NOT NULL COMMENT 'appointmentid or orderid',
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `treatment_records_id`, `doctorid`, `patientid`, `delivery_type`, `delivery_id`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(15, 0, 35, 7, '', 0, '2015-08-14', 'Active', 0),
(16, 0, 36, 9, '', 0, '2016-01-08', 'Active', 0),
(17, 0, 37, 22, '', 0, '2015-11-14', 'Active', 0),
(18, 0, 38, 23, '', 0, '2016-02-27', 'Active', 0),
(19, 0, 40, 36, '', 0, '2015-12-12', 'Active', 0),
(20, 14, 36, 22, '', 0, '2016-03-11', 'Active', 0),
(21, 44, 36, 22, '', 0, '2016-03-11', 'Active', 0),
(22, 14, 35, 47, '', 0, '2016-03-19', 'Active', 0),
(23, 14, 35, 47, '', 0, '2016-03-19', 'Active', 0),
(24, 13, 35, 47, '', 0, '2016-03-09', 'Active', 0),
(25, 13, 37, 47, '', 0, '2016-03-09', 'Active', 0),
(26, 13, 36, 48, '', 0, '2016-03-25', 'Active', 0),
(27, 13, 35, 48, '', 0, '2016-03-25', 'Active', 0),
(28, 13, 35, 48, '', 0, '2016-03-25', 'Active', 0),
(29, 0, 0, 48, '', 0, '2016-03-27', 'Active', 0),
(30, 0, 0, 48, '', 0, '2016-03-27', 'Active', 0),
(31, 0, 0, 48, '', 0, '2016-03-27', 'Active', 0),
(32, 0, 0, 48, '', 0, '2016-03-27', 'Active', 0),
(33, 0, 37, 48, '', 0, '2016-03-27', 'Active', 0),
(34, 0, 37, 48, '', 0, '2016-03-27', 'Active', 0),
(35, 0, 37, 48, '', 0, '2016-03-27', 'Active', 0),
(36, 14, 35, 43, '', 0, '2018-03-24', 'Pending', 0),
(37, 13, 35, 43, '', 0, '2018-03-26', 'Pending', 0),
(38, 14, 36, 47, '', 0, '2018-03-27', 'Pending', 0),
(39, 14, 37, 9, '', 0, '2018-03-27', 'Pending', 0),
(40, 14, 37, 9, '', 0, '2018-03-27', 'Pending', 0),
(41, 14, 37, 9, '', 0, '2018-03-27', 'Pending', 0),
(42, 13, 37, 9, '', 0, '2018-03-27', 'Active', 0),
(43, 13, 36, 47, '', 0, '2018-03-27', 'Pending', 0),
(44, 0, 35, 22, '', 0, '0000-00-00', 'Active', 0),
(45, 0, 35, 7, '', 0, '0000-00-00', 'Active', 0),
(46, 13, 35, 7, '', 0, '2018-03-28', 'Active', 0),
(47, 0, 35, 41, '', 0, '0000-00-00', 'Active', 0),
(48, 44, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(49, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(50, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(51, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(52, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(53, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(54, 13, 35, 7, '', 0, '2018-03-30', 'Active', 0),
(57, 0, 38, 41, '', 0, '2018-03-31', 'Active', 0),
(58, 19, 37, 56, '', 0, '2018-03-31', 'Active', 0),
(59, 19, 38, 56, '', 0, '2018-03-31', 'Active', 0),
(60, 14, 38, 54, '', 0, '2018-03-31', 'Active', 0),
(61, 0, 35, 7, '', 0, '2018-03-31', 'Active', 0),
(62, 0, 35, 7, '', 0, '0000-00-00', 'Active', 0),
(63, 13, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(64, 13, 35, 48, '', 0, '2018-04-03', 'Active', 0),
(65, 0, 35, 7, '', 0, '0000-00-00', 'Active', 0),
(66, 0, 35, 41, '', 0, '0000-00-00', 'Active', 0),
(67, 0, 35, 41, '', 0, '0000-00-00', 'Active', 0),
(68, 13, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(69, 14, 35, 22, '', 0, '2018-04-03', 'Active', 0),
(70, 44, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(71, 0, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(72, 0, 0, 36, '', 0, '2018-04-03', 'Active', 0),
(73, 0, 0, 48, '', 0, '2018-03-27', 'Active', 0),
(74, 0, 36, 7, '', 0, '2018-04-27', 'Active', 0),
(75, 0, 36, 7, '', 0, '2018-04-12', 'Active', 0),
(76, 13, 35, 7, '', 0, '2018-04-03', 'Active', 0),
(77, 13, 36, 47, '', 0, '2018-04-04', 'Active', 0),
(78, 14, 36, 44, '', 0, '2018-04-04', 'Active', 0),
(79, 14, 35, 44, '', 0, '0000-00-00', 'Active', 0),
(80, 14, 35, 7, '', 0, '2018-04-04', 'Active', 0),
(81, 13, 35, 56, '', 0, '2018-04-06', 'Active', 0),
(82, 0, 35, 7, '', 0, '2018-04-06', 'Active', 0),
(83, 0, 35, 7, '', 0, '2018-04-06', 'Active', 0),
(84, 0, 35, 7, '', 0, '2018-04-13', 'Active', 0),
(85, 0, 35, 52, '', 0, '2018-04-06', 'Active', 0),
(86, 0, 35, 53, '', 0, '2018-04-07', 'Active', 0),
(87, 0, 35, 53, '', 47, '2018-04-10', 'Active', 0),
(88, 0, 35, 52, '', 48, '2018-04-07', 'Active', 0),
(89, 0, 36, 22, '', 49, '2018-04-07', 'Active', 0),
(90, 0, 35, 7, '', 42, '0000-00-00', 'Active', 0),
(91, 0, 35, 22, '', 50, '2018-04-08', 'Active', 0),
(92, 0, 35, 22, '', 51, '2018-04-10', 'Active', 0),
(93, 0, 36, 22, '', 49, '2018-04-10', 'Active', 0),
(94, 0, 35, 22, '', 52, '2018-04-08', 'Active', 0),
(95, 0, 35, 22, '', 53, '2018-04-08', 'Active', 0),
(96, 0, 35, 22, '', 54, '2018-04-08', 'Active', 0),
(97, 0, 35, 22, '', 55, '2018-04-08', 'Active', 0),
(98, 0, 35, 57, '', 0, '0000-00-00', 'Active', 120),
(99, 0, 35, 57, '', 0, '2018-07-12', 'Active', 120);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(54, 35, 'omani', 900.00, 3, '1-0-1', ''),
(62, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(63, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(64, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(65, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(66, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(67, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(68, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(69, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(70, 36, '4', 50.00, 10, '1-1-1', 'Active'),
(71, 37, '1', 20.00, 5, '0-1-0', 'Active'),
(72, 39, '1', 20.00, 1, '1-1-1', 'Active'),
(73, 39, '5', 30.00, 4, '1-1-0', 'Active'),
(74, 39, '4', 50.00, 1, '1-1-1', 'Active'),
(75, 40, '1', 20.00, 9, '1-1-0', 'Active'),
(76, 42, '1', 20.00, 1, '1-1-0', 'Active'),
(77, 43, '1', 20.00, 12, '0-1-1', 'Active'),
(78, 44, 'eeee', 55.00, 3, '1-1-1', ''),
(79, 45, 'ddd', 33.00, 2, '1-1-1', ''),
(80, 49, '1', 20.00, 3, '1-1-0', 'Active'),
(81, 49, '6', 50.00, 8, '1-0-1', 'Active'),
(82, 50, '1', 20.00, 8, '', 'Active'),
(83, 50, '5', 30.00, 7, '', 'Active'),
(84, 51, '5', 30.00, 7, '1-1-1', 'Active'),
(85, 52, '1', 20.00, 2, '0-0-1', 'Active'),
(86, 53, '6', 50.00, 3, '1-1-1', 'Active'),
(87, 54, '5', 30.00, 4, '1-1-1', 'Active'),
(88, 55, '1', 20.00, 10, '0-0-1', 'Active'),
(89, 55, '3', 25.00, 4, '1-0-1', 'Active'),
(92, 57, '4', 50.00, 1, '0-1-1', 'Active'),
(93, 57, '5', 30.00, 10, '0-1-1', 'Active'),
(94, 58, '1', 20.00, 1, '0-1-1', 'Active'),
(95, 58, '4', 50.00, 1, '1-1-1', 'Active'),
(96, 59, '4', 50.00, 3, '1-1-0', 'Active'),
(97, 59, '6', 50.00, 4, '1-0-1', 'Active'),
(98, 60, '4', 50.00, 3, '0-1-1', 'Active'),
(99, 60, '3', 25.00, 4, '0-1-1', 'Active'),
(100, 61, '1', 20.00, 3, '1-1-1', 'Active'),
(101, 63, '1', 20.00, 2, '1-1-0', 'Active'),
(102, 64, '3', 25.00, 1, '0-1-1', 'Active'),
(103, 66, 'eeee', 20.00, 5, '0-1-1', ''),
(104, 68, '1', 20.00, 2, '1-1-0', 'Active'),
(105, 69, '1', 20.00, 10, '0-0-1', 'Active'),
(106, 69, '4', 50.00, 1, '1-1-1', 'Active'),
(107, 68, '4', 50.00, 13, '1-0-1', 'Active'),
(108, 70, '4', 50.00, 1, '1-1-0', 'Active'),
(109, 70, '3', 25.00, 3, '0-1-1', 'Active'),
(110, 71, '6', 50.00, 2, '1-1-0', 'Active'),
(111, 75, '6', 50.00, 2, '0-1-1', 'Active'),
(112, 76, '3', 25.00, 2, '0-1-0', 'Active'),
(113, 77, '1', 20.00, 10, '0-1-1', 'Active'),
(114, 77, '6', 50.00, 10, '1-1-0', 'Active'),
(115, 77, '3', 25.00, 3, '1-1-1', 'Active'),
(116, 77, '5', 30.00, 3, '1-1-0', 'Active'),
(117, 77, '6', 50.00, 2, '0-1-1', 'Active'),
(118, 78, '1', 20.00, 1, '0-1-1', 'Active'),
(119, 78, '5', 30.00, 10, '0-1-1', 'Active'),
(120, 76, '3', 25.00, 7, '1-1-0', 'Active'),
(121, 80, '4', 50.00, 5, '1-0-1', 'Active'),
(122, 81, '3', 25.00, 4, '1-1-0', 'Active'),
(123, 83, '3', 25.00, 2, '0-1-1', 'Active'),
(124, 84, '1', 20.00, 2, '1-0-1', 'Active'),
(125, 85, '1', 20.00, 2, '1-0-1', 'Active'),
(126, 86, '3', 25.00, 1, '0-1-1', 'Active'),
(127, 86, '4', 50.00, 5, '1-1-1', 'Active'),
(128, 86, '6', 50.00, 1, '1-0-0', 'Active'),
(129, 87, '5', 30.00, 10, '0-1-1', 'Active'),
(130, 87, '6', 50.00, 10, '1-1-0', 'Active'),
(131, 88, '3', 25.00, 6, '1-0-1', 'Active'),
(132, 89, '6', 50.00, 6, '0-1-1', 'Active'),
(133, 89, '6', 50.00, 5, '0-1-0', 'Active'),
(134, 91, '1', 20.00, 10, '0-1-1', 'Active'),
(135, 91, '4', 50.00, 2, '1-1-0', 'Active'),
(136, 91, '6', 50.00, 3, '1-1-1', 'Active'),
(137, 92, '1', 20.00, 10, '0-1-1', 'Active'),
(138, 92, '4', 50.00, 10, '1-1-1', 'Active'),
(139, 92, '6', 50.00, 2, '0-1-1', 'Active'),
(140, 92, '3', 25.00, 13, '1-0-1', 'Active'),
(141, 94, '1', 20.00, 10, '0-1-1', 'Active'),
(142, 94, '6', 50.00, 15, '1-1-0', 'Active'),
(143, 94, '6', 50.00, 15, '0-1-0', 'Active'),
(144, 96, '1', 20.00, 10, '0-1-1', 'Active'),
(145, 96, '4', 50.00, 10, '1-1-1', 'Active'),
(146, 96, '6', 50.00, 15, '0-1-0', 'Active'),
(147, 97, '1', 20.00, 10, '0-1-1', 'Active'),
(148, 97, '5', 30.00, 15, '1-1-0', 'Active'),
(149, 99, '1', 20.00, 10, '1-0-1', 'Active'),
(150, 99, '4', 50.00, 3, '1-1-0', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(10) NOT NULL,
  `roomtype` varchar(25) NOT NULL,
  `roomno` int(10) NOT NULL,
  `noofbeds` int(10) NOT NULL,
  `room_tariff` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `service_type` (
  `service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `treatment` (
  `treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(13, 'Treatment for Malaria', '450.00', ' Providing medicine and tonic with injection  ', 'Active'),
(14, 'Treatment for Dengue', '20000.00', ' Providing massage and home made tips', 'Active'),
(15, 'tryrtytyt', '554.00', ' ertrrcyt', 'Active'),
(16, 'rytyt', '55.00', ' eex', 'Active'),
(17, 'jkgjghj', '5653.00', ' hfhfjhg', 'Active'),
(18, 'rhgjh', '54.00', ' hgjgj ', 'Active'),
(19, 'Dengue', '4000.00', 'Dengue treatment', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE `treatment_records` (
  `treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(10, 44, 13, 22, 61, 'High Fever', 'nill', '2016-03-02', '00:00:16', 'Active'),
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
(26, 13, 97, 48, 35, 'Test treatment description', '9259RESUMEasb (1)-1.docx', '2016-03-26', '01:00:00', 'Active'),
(27, 13, 106, 53, 35, 'xxxxxxx', '2011083154KHADI JACKETS .jpg', '2018-02-23', '11:11:00', 'Active'),
(28, 14, 106, 53, 35, 'uuuuuu', '1863993785KHADI JACKETS .jpg', '0000-00-00', '23:11:00', 'Active'),
(29, 13, 106, 53, 35, 'ppppppppp', '644184310KHADI JACKETS .jpg', '2018-02-28', '11:11:00', 'Active'),
(30, 13, 101, 50, 35, 'vvvvvvvvv', '2017717432KHADI JACKETS .jpg', '0000-00-00', '11:11:00', 'Active'),
(31, 13, 108, 7, 35, 'tttthh', '60065616ap.txt', '2018-03-09', '03:00:00', 'Active'),
(32, 15, 108, 7, 37, 'test', '839109672a1.jpg', '2018-03-21', '00:01:00', 'Active'),
(33, 14, 108, 7, 38, 'Hello description', '2018467285customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(34, 14, 109, 54, 38, 'test', '427964865a1.jpg', '2018-02-28', '03:00:00', 'Active'),
(35, 14, 108, 7, 37, 'test record', '1929378190image_01.jpg', '2018-03-16', '03:00:00', 'Active'),
(36, 14, 108, 7, 38, 'Hello description', '285590447customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(37, 14, 108, 7, 38, 'Hello description', '1833779312customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(38, 14, 108, 7, 38, 'Hello description', '1342615406customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(39, 14, 108, 7, 38, 'Hello description', '455422977customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(40, 14, 108, 7, 38, 'Hello description', '576126584customericon.jpg', '2018-03-14', '10:00:00', 'Active'),
(41, 13, 65, 23, 35, 'Maleria', '355037251KHADI JACKETS .jpg', '2018-03-24', '01:02:00', 'Active'),
(42, 14, 91, 43, 35, 'test description', '1590682007insertbillingrecord.php', '2018-03-24', '01:01:00', 'Active'),
(43, 13, 91, 43, 35, 'sssss', '1907664847KHADI JACKETS .jpg', '2018-03-26', '02:22:00', 'Active'),
(44, 14, 110, 56, 42, 'vvvvvv', '42355443316kidney beans.jpg', '2018-03-27', '07:07:00', 'Active'),
(45, 19, 110, 56, 42, 'nghnghh', '442362209718bestadvicehero.jpg', '2018-03-27', '18:06:00', 'Active'),
(46, 15, 96, 45, 35, 'gfgfg', '975774499718bestadvicehero.jpg', '2018-03-07', '11:11:00', 'Active'),
(47, 13, 108, 7, 35, 'cdcdxcd', '166134465816kidney beans.jpg', '2018-03-27', '06:06:00', 'Active'),
(48, 14, 107, 9, 37, 'yhjnghj', '1230555574835dried peach.jpg', '2018-03-27', '16:04:00', 'Active'),
(49, 13, 107, 9, 37, 'dccdcdc', '75568598796sage.jpg', '2018-03-27', '13:02:00', 'Active'),
(50, 13, 94, 47, 36, 'hhhh', '1592053307KHADI JACKETS .jpg', '2018-03-27', '02:22:00', 'Active'),
(51, 15, 107, 9, 35, 'xsxsx', '451077804KHADI JACKETS .jpg', '2018-04-03', '11:11:00', 'Active'),
(52, 13, 108, 7, 35, 'cccccc', '1679719013KHADI JACKETS .jpg', '2018-04-03', '14:00:00', 'Active'),
(53, 14, 111, 44, 36, 'test', '2069066935KHADI JACKETS .jpg', '2018-04-04', '22:10:00', 'Active'),
(54, 17, 111, 44, 36, 'tes descr', '1598481294WIN_20171226_22_50_41_Pro.jpg', '2018-04-04', '10:10:00', 'Active'),
(55, 13, 112, 44, 36, 'vvvvv', '1111631338KHADI JACKETS .jpg', '2018-04-04', '03:01:00', 'Active'),
(56, 14, 116, 7, 35, 'bvbvb', '1969598381KHADI JACKETS .jpg', '2018-04-04', '02:02:00', 'Active'),
(57, 13, 117, 7, 35, 'gbgv', '2002948154KHADI JACKETS .jpg', '2018-04-04', '01:02:00', 'Active'),
(58, 13, 119, 56, 35, 'mm', '430203084KHADI JACKETS .jpg', '2018-04-06', '02:02:00', 'Active'),
(59, 14, 120, 57, 35, 'Treatment given for dengue fever', '29112image011.png', '2018-07-12', '01:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `loginname` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createddateandtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `loginname`, `password`, `patientname`, `mobileno`, `email`, `createddateandtime`) VALUES
(1, 'admin', 'admin', 'admin', '', '', '2017-12-14 11:21:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`),
  ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
  ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientid`),
  ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
  ADD PRIMARY KEY (`treatment_records_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
  MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
  MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
  MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
