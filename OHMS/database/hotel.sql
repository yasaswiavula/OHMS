-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2020 at 06:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `create_account`
--

CREATE TABLE `create_account` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `country` varchar(50) NOT NULL,
  `pictrure` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `create_account`
--

INSERT INTO `create_account` (`id`, `name`, `email`, `password`, `mobile`, `address`, `gender`, `country`, `pictrure`) VALUES
(4, 'sunil Vishwakarma', 'amitvish9999@gmail.com', '8190', 7275308190, 'kolpanday,azamgarh', 'male', 'China', 'img.png'),
(7, 'suraj vishwakarma', 'suraj@gmail.com', '8190', 9120140055, 'kolpanday,azamgarh', 'male', 'India', 'img2.png'),
(8, 'Om', 'om@gmail.com', '8090', 7890809001, 'Maharashtra', 'male', 'india', 'img3.png'),
(9, 'Swetha Bobba', 'swethabobba123@gmail.com', '1234', 8498969545, 'Hyderabad', 'female', 'India', 'img4.jpg'),
(10, 'Anjali Vishwakarma', 'anjali@gmail.com', '123', 7275308190, 'kolpanday azamgarh', 'male', 'India', 'img5.jpg'),
(11, 'mrityunjai', 'mr8090@gmail.com', '8190', 71727534567, 'kolpghta', 'male', 'India', 'img6.jpg'),
(12, 'sanjeev', 'sanjeevtech2@gmail.com', '1234', 9015501897, 'Noida', 'male', 'India', 'img7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `details_slider`
--

CREATE TABLE `details_slider` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `mobile`, `message`) VALUES
(1, 'Amit', 'amitvish9999@gmail.com', 7275308190, 'Nice'),
(2, 'Sameer', 'spandey548@gmail.com', 8577040535, 'good'),
(3, 'Swetha Bobba','swethabobba123@gmail.com',8498969545,'Had a nice stay');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`) VALUES
(1, 'Grand Trunk Hotel'),
(2, 'Grand Nagarjuna'),
(3, 'Hotel taj'),
(4, 'Greenwich Hotel'),
(5, 'Royal Palace'),
(6, 'Knights inn');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `price` bigint(20) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `hotel_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_no`, `type`, `price`, `details`, `image`, `hotel_id`) VALUES
(28, 512, 'Deluxe Room', 15000, 'The Contemporary yet simple designed King bedded rooms are well equipped with modern amenities. Fresh Decor and refined ambiance is the winning combination to make these rooms an ideal choice for discerning business traveler.', 'delux_img1.jpg', 1),
(30, 504, 'Luxurious Suite', 16000, 'Engulf yourself in the plush luxury of our premier rooms. An upgraded version of the Suite room, these rooms offer an elegant design with larger room space.', 'Luxury_img10.jpg', 2),
(31, 302, 'Standard Room', 14000, 'Simple design king bedded room are well equipped with modern amenities.', 'Standard _img16.jpg', 3),
(32, 312, 'Suite', 13000, 'Enjoy the view of Anand from attach sitting area, An upgraded version of the Deluxe room, these rooms offer an elegant design with larger room space.', 'Suit_img22.jpg', 3),
(33, 205, 'Twin Deluxe Room', 120000, 'The Contemporary yet simple designed twin bedded rooms are well equipped with modern amenities. Fresh Decor and refined ambiance is the winning combination to make these rooms an ideal choice for discerning business traveler.', 'Twin_img24.jpg', 1),
(34, 0, 'Parking Area', 0, 'ON-SITE PARKING Comfort Hotel Perth City provides 33 secure car parking spaces, free-of-charge for house guests which are subject to availability and on a ...\r\n', 'parking.jpg', 2),
(35, 111, 'Extra Deluxe', 111, 'An extra spaced room with wifi facility  and a wonderful room service facility with super benifits', 'deluxe.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_booking_details`
--

CREATE TABLE `room_booking_details` (
  `id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zip` int(20) NOT NULL,
  `contry` varchar(50) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `check_in_date` date NOT NULL,
  `check_in_time` varchar(6) NOT NULL,
  `check_out_date` date NOT NULL,
  `Occupancy` varchar(100) NOT NULL,
  `hotel_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `room_booking_details`
--

INSERT INTO `room_booking_details` (`id`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `contry`, `room_type`, `check_in_date`, `check_in_time`, `check_out_date`, `Occupancy`, `hotel_name`) VALUES
(5, 'Sumit', 'sumit@gmail.com', 7398713060, 'Mumbai', 'Azamgarh', 'U.P.', 276001, 'India', 'Deluxe Room', '2019-12-05', '12:00', '2019-01-06', 'single', 'Grand Trunk Hotel'),
(6, 'Om', 'om@gmail.com', 7890809100, 'Rk street,Goa', 'azamgarh', 'Goa', 276001, 'India', 'Deluxe Room', '2019-05-08', '08:00', '2019-06-04', 'single', 'Grand Trunk Hotel 2'),
(7, 'Ragini Vishwakarma', 'ragini@gmail.com', 727550965, 'KP Nagar,Goa', 'Azamgarh', 'U.P', 276001, 'India', 'Standard Room', '2019-12-06', '08:00', '2019-12-06', 'single', 'Grand Trunk Hotel'),
(8, 'Anlaji viahwakarma', 'anjali@gmail.com', 7275308190, 'kolpanday azamgarh', 'azamgarh', 'U.P', 276001, 'India', 'Standard Room', '2019-12-06', '08:00', '2019-12-06', 'single', 'HHOOOOTTELLL'),
(12, 'Swetha Bobba', 'swethabobba123@gmail.com', 8498969545, 'Hyderabad', '', '', 0, '', 'Suite Room', '2019-05-22', '22:57', '2017-10-31', 'single', 'HHOOOOTTELLL'),
(14, 'Om', 'om@gmail.com', 7890809100, 'Hyderbad', 'azamgarh', '', 0, '', 'Suite Room', '2019-12-01', '13:59', '2020-12-31', 'dubble', 'Grand Trunk Hotel 2');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `caption`) VALUES
(3, 'img3.jpg', ''),
(6, 'img2.jpg', ''),
(8, 'img1.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_account`
--
ALTER TABLE `create_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_slider`
--
ALTER TABLE `details_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `room_booking_details`
--
ALTER TABLE `room_booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `create_account`
--
ALTER TABLE `create_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `details_slider`
--
ALTER TABLE `details_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `room_booking_details`
--
ALTER TABLE `room_booking_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
