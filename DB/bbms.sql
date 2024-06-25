-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2022 at 09:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Age` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `MobileNO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Name`, `NIC`, `Age`, `username`, `password`, `MobileNO`) VALUES
(1, 'Vinojika', '123456789v', 22, 'vino', '12345', 771234566),
(6, 'emperor', '200021003326', 22, 'ins', 'ins1234', 755555555),
(7, 'dummy new', '200021004561', 22, 'dumn', 'dum23', 751234756);

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `Code` int(11) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `units` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`Code`, `bloodgroup`, `units`) VALUES
(1, 'A+', 5),
(2, 'A-', 19),
(3, 'B+', 2),
(4, 'B-', 0),
(5, 'O+', 5),
(6, 'O-', 0),
(7, 'AB+', 0),
(8, 'AB-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donorID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `motherName` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `mobileNo` int(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `addrress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donorID`, `name`, `fatherName`, `motherName`, `DOB`, `mobileNo`, `gender`, `email`, `bloodgroup`, `city`, `addrress`) VALUES
(1, 'Lokiy', 'katerrtt', 'aabyyy', '1998-11-05', 123456899, 'Male', 'asdf@edff', 'A+', 'ddd', 'asdfvfvcvvf'),
(2, 'alpha2', 'Beta', 'Gamma', '2000-09-11', 751234567, 'Male', 'ioc@gmail.com', 'B-', 'Ampara', '123/c abc,Road sainthamaruthu-10'),
(3, 'a', 'b', 'c', '2022-11-03', 1234567890, 'Female', 'acvbg@gmail.com', 'A+', 'kalmunai', 'aaaaa'),
(4, 'afsir', 'ss', 'sss', '2022-11-03', 751, 'Male', 'af@gmail.com', 'B+', 'akarapatu', '123,dubai kuruku'),
(5, 'afsir', 'yo', 'yoa', '1977-11-10', 751132200, 'Male', 'oid@gmail.com', 'B-', 'jaffna', '132,mainStreet,jaffna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donorID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `Code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
