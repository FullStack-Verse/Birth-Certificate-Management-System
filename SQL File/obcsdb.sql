-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 03:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obcsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555556, 'adminuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-01-05 12:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblapplication`
--

CREATE TABLE `tblapplication` (
  `ID` int(10) NOT NULL,
  `UserID` int(5) NOT NULL,
  `ApplicationID` varchar(200) DEFAULT NULL,
  `DateofBirth` varchar(200) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `PlaceofBirth` varchar(200) DEFAULT NULL,
  `NameofFather` varchar(200) DEFAULT NULL,
  `NameOfMother` varchar(120) DEFAULT NULL,
  `PermanentAdd` mediumtext DEFAULT NULL,
  `PostalAdd` mediumtext DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Dateofapply` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblapplication`
--

INSERT INTO `tblapplication` (`ID`, `UserID`, `ApplicationID`, `DateofBirth`, `Gender`, `FullName`, `PlaceofBirth`, `NameofFather`, `NameOfMother`, `PermanentAdd`, `PostalAdd`, `MobileNumber`, `Email`, `Dateofapply`, `Remark`, `Status`, `UpdationDate`) VALUES
(6, 5, '960441936', '2032-01-02', 'Female', 'Diya Chaudhuri', 'Kolkata', 'Mainak Chaudhuri', 'Anushmitaa Ghosh Chaudhuri', 'South Subhash Pally, Dankuni, Hooghly, Kolkata', 'South Subhash Pally, Dankuni, Hooghly, Kolkata, West Bengal - 712311', 9876543210, 'mainak@gmail.com', '2023-04-28 13:15:51', 'Accepted', 'Verified', '2023-04-28 13:17:02'),
(7, 6, '564943792', '2033-10-02', 'Male', 'Vinayak Sarkar', 'Ruby Hospital, Anandapur, Kolkata', 'Agnik Sarkar', 'Ishita Sarkar', 'Dhakuria Lake, Kolkata', '5/12 Bonobihari Apartment, Dhakuria, Kolkata', 9638527410, 'agnik@gmail.com', '2023-04-28 13:21:15', 'Accepted', 'Verified', '2023-04-28 13:23:32'),
(8, 6, '924573595', '2034-07-12', 'Female', 'Janhavi Sarkar', 'Anandapur, Kolkata', 'Agnik Sarkar', 'Ishita Sarkar', 'Dhakuria Lake, Kolkata', '5/12 Bonobihari Apartment, Dhakuria, Kolkata', 9638527410, 'agnik@gmail.com', '2023-04-28 13:22:54', 'Accepted', 'Verified', '2023-04-28 13:23:50'),
(9, 7, '541220171', '2028-12-10', 'Female', 'Oindrilla Mukherjee', 'Rajarhat, Kolkata', 'Subhayan Mukherjee', 'Subhangi Mukherjee', 'Beta Block, Xanadu Apartment, Rajarhat, Kolkata', 'Beta Block, Xanadu Apartment, Rajarhat, Kolkata', 9517538520, 'subhayan@gmail.com', '2023-04-28 13:26:43', 'Dhur Bara', 'Verified', '2023-04-28 13:27:19'),
(10, 8, '904089914', '2029-04-07', 'Male', 'Doggu Penguin Paul', 'English Bazar, Malda', 'Dogeshwar Paul', 'Penguin Das', 'K. J. Sanyal Road, English Bazar, Malda', 'K. J. Sanyal Road, English Bazar, Malda', 9874123650, 'dogesh@gmail.com', '2023-04-28 13:32:22', 'Dhur Sala Khankir Chele', 'Rejected', '2023-04-28 13:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`, `RegDate`) VALUES
(5, 'Mainak', 'Chaudhuri', 9876543210, 'South Subhash Pally, Dankuni, Hooghly, Kolkata', 'd06ab68da425beeff9d754fdec5e516c', '2023-04-28 13:13:53'),
(6, 'Agnik', 'Sarkar', 9638527410, 'Dhakuria Lake, Kolkata', '6023a46c8215d2dfaa0598fe3befbbd1', '2023-04-28 13:18:33'),
(7, 'Subhayan', 'Mukherjee', 9517538520, 'Beta Block, Xanadu Apartment, Rajarhat, Kolkata', 'e48d2c94b49a1e6f357ee39face32349', '2023-04-28 13:24:55'),
(8, 'Dogeshwar ', 'Paul', 9874123650, 'K. J. Sanyal Road, English Bazar, Malda', '0c9d998e00dc488ad8e987bbb3d62218', '2023-04-28 13:29:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblapplication`
--
ALTER TABLE `tblapplication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblapplication`
--
ALTER TABLE `tblapplication`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
