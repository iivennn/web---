-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2025 at 02:25 PM
-- Server version: 8.0.41-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int NOT NULL,
  `BookingNumber` bigint DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, NULL, 'iven@gmail.com', 7, '2025-04-27', '2025-04-30', 'need it clean ', 1, '2025-04-25 16:34:37', '2025-04-25 16:35:22'),
(4, NULL, 'iven@gmail.com', 8, '2025-04-28', '2025-04-30', 'bdtxgtdhg', 1, '2025-04-26 12:52:34', '2025-04-26 12:53:15'),
(5, NULL, 'iven@gmail.com', 6, '2025-05-22', '2025-05-30', 'make it clean ', 0, '2025-04-30 17:18:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Volkswagon', '2017-06-19 06:22:13', '2020-07-07 14:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'J&K Block, Laxmi Nagar', 'info@gmail.com', '8974561236');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font></strong></font></p><p align=\"justify\">Veyoo – Terms and Conditions</p><h3 data-start=\"362\" data-end=\"392\" class=\"\"><strong data-start=\"366\" data-end=\"392\">1. Acceptance of Terms</strong></h3><p data-start=\"393\" data-end=\"646\" class=\"\">By using the Veyoo website (<a data-start=\"421\" data-end=\"441\" rel=\"noopener\" target=\"_new\" class=\"\" href=\"http://www.veyoorentals.com\">www.veyoorentals.com</a>) or mobile application, you agree to comply with and be bound by these Terms and Conditions, as well as our Privacy Policy. If you do not agree with any part of these terms, you must not use our services.</p><h3 data-start=\"648\" data-end=\"676\" class=\"\"><strong data-start=\"652\" data-end=\"676\">2. Services Provided</strong></h3><p data-start=\"677\" data-end=\"909\" class=\"\">Veyoo offers a platform that allows users to rent vehicles including cars, bikes, and motorcycles (collectively, “Vehicles”). By using our platform, you agree to rent the Vehicles according to the terms outlined in these conditions.</p><h3 data-start=\"911\" data-end=\"942\" class=\"\"><strong data-start=\"915\" data-end=\"942\">3. Account Registration</strong></h3><p data-start=\"943\" data-end=\"1281\" class=\"\">To access certain features of the Veyoo platform, you may need to create an account. You must provide accurate, complete, and current information during registration and keep this information updated. You are responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.</p><h3 data-start=\"1283\" data-end=\"1308\" class=\"\"><strong data-start=\"1287\" data-end=\"1308\">4. Rental Process</strong></h3><ul data-start=\"1309\" data-end=\"2047\">\r\n<li data-start=\"1309\" data-end=\"1439\" class=\"\">\r\n<p data-start=\"1311\" data-end=\"1439\" class=\"\"><strong data-start=\"1311\" data-end=\"1327\">4.1. Booking</strong>: When you book a vehicle, you agree to pay the rental fee and any applicable taxes, fees, or insurance charges.</p>\r\n</li>\r\n<li data-start=\"1440\" data-end=\"1652\" class=\"\">\r\n<p data-start=\"1442\" data-end=\"1652\" class=\"\"><strong data-start=\"1442\" data-end=\"1458\">4.2. Payment</strong>: Payments must be made through the platform’s supported payment methods. You agree to pay all charges associated with your booking, including any additional charges for late returns or damages.</p>\r\n</li>\r\n<li data-start=\"1653\" data-end=\"1892\" class=\"\">\r\n<p data-start=\"1655\" data-end=\"1892\" class=\"\"><strong data-start=\"1655\" data-end=\"1675\">4.3. Vehicle Use</strong>: You agree to use the rented vehicle in a responsible manner and comply with all local laws and regulations. You may not use the vehicle for any unlawful purpose or in any manner that may cause damage to the vehicle.</p>\r\n</li>\r\n<li data-start=\"1893\" data-end=\"2047\" class=\"\">\r\n<p data-start=\"1895\" data-end=\"2047\" class=\"\"><strong data-start=\"1895\" data-end=\"1921\">4.4. Return of Vehicle</strong>: You agree to return the vehicle on time and in the same condition in which it was received, subject to normal wear and tear.</p>\r\n</li>\r\n</ul><h3 data-start=\"2049\" data-end=\"2085\" class=\"\"><strong data-start=\"2053\" data-end=\"2085\">5. Cancellations and Refunds</strong></h3><ul data-start=\"2086\" data-end=\"2406\">\r\n<li data-start=\"2086\" data-end=\"2253\" class=\"\">\r\n<p data-start=\"2088\" data-end=\"2253\" class=\"\"><strong data-start=\"2088\" data-end=\"2110\">5.1. Cancellations</strong>: Cancellations must be made at least [X hours/days] in advance to receive a full refund. Late cancellations may incur a [X%] cancellation fee.</p>\r\n</li>\r\n<li data-start=\"2254\" data-end=\"2406\" class=\"\">\r\n<p data-start=\"2256\" data-end=\"2406\" class=\"\"><strong data-start=\"2256\" data-end=\"2272\">5.2. Refunds</strong>: If a booking is canceled within the allowed time frame, a full refund will be issued. Refunds may take [X business days] to process.</p>\r\n</li>\r\n</ul><h3 data-start=\"2408\" data-end=\"2442\" class=\"\"><strong data-start=\"2412\" data-end=\"2442\">6. Insurance and Liability</strong></h3><ul data-start=\"2443\" data-end=\"2870\">\r\n<li data-start=\"2443\" data-end=\"2629\" class=\"\">\r\n<p data-start=\"2445\" data-end=\"2629\" class=\"\"><strong data-start=\"2445\" data-end=\"2472\">6.1. Insurance Coverage</strong>: Veyoo provides basic insurance coverage with each rental. However, you may be required to pay an additional fee for optional insurance or protection plans.</p>\r\n</li>\r\n<li data-start=\"2630\" data-end=\"2870\" class=\"\">\r\n<p data-start=\"2632\" data-end=\"2870\" class=\"\"><strong data-start=\"2632\" data-end=\"2650\">6.2. Liability</strong>: You are responsible for any damages to the vehicle during the rental period, unless it’s caused by a third party or due to mechanical failure. You must report any accidents, theft, or damage to the vehicle immediately.</p>\r\n</li>\r\n</ul><h3 data-start=\"2872\" data-end=\"2895\" class=\"\"><strong data-start=\"2876\" data-end=\"2895\">7. User Conduct</strong></h3><p data-start=\"2896\" data-end=\"2909\" class=\"\">You agree to:</p><ul data-start=\"2910\" data-end=\"3139\">\r\n<li data-start=\"2910\" data-end=\"3010\" class=\"\">\r\n<p data-start=\"2912\" data-end=\"3010\" class=\"\"><strong data-start=\"2912\" data-end=\"2920\">7.1.</strong> Not engage in any illegal, harmful, or offensive behavior while using the Veyoo platform.</p>\r\n</li>\r\n<li data-start=\"3011\" data-end=\"3139\" class=\"\">\r\n<p data-start=\"3013\" data-end=\"3139\" class=\"\"><strong data-start=\"3013\" data-end=\"3021\">7.2.</strong> Not interfere with or disrupt the operation of our platform or attempt to gain unauthorized access to any part of it.</p>\r\n</li>\r\n</ul><h3 data-start=\"3141\" data-end=\"3175\" class=\"\"><strong data-start=\"3145\" data-end=\"3175\">8. Termination of Services</strong></h3><p data-start=\"3176\" data-end=\"3409\" class=\"\">Veyoo reserves the right to suspend or terminate your access to the platform at any time, without notice, if you breach any of these terms or engage in conduct that is harmful to our platform, other users, or the reputation of Veyoo.</p><h3 data-start=\"3411\" data-end=\"3445\" class=\"\"><strong data-start=\"3415\" data-end=\"3445\">9. Limitation of Liability</strong></h3><p data-start=\"3446\" data-end=\"3657\" class=\"\">Veyoo will not be liable for any indirect, incidental, special, or consequential damages arising from your use of the platform or vehicles. Our liability is limited to the amount you paid for the vehicle rental.</p><h3 data-start=\"3659\" data-end=\"3685\" class=\"\"><br></h3>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<h3 data-start=\"3659\" data-end=\"3685\" class=\"\" style=\"font-family: Roboto, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; color: rgb(62, 63, 58);\"><strong data-start=\"3663\" data-end=\"3685\">Privacy Policy</strong></h3><p data-start=\"3686\" data-end=\"3891\" class=\"\" style=\"font-size: 14px;\">Your use of the Veyoo platform is also governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. Please review our Privacy Policy before using our services.</p>'),
(3, 'About Us ', 'aboutus', '<div><p data-start=\"123\" data-end=\"372\" class=\"\">Welcome to <strong data-start=\"134\" data-end=\"143\">Veyoo</strong> – Your go-to platform for fast, fun, and easy vehicle rentals! Whether you\'re looking to cruise around town in a sleek car, zip through the streets on a motorcycle, or take a leisurely ride on a bike, <strong data-start=\"345\" data-end=\"354\">Veyoo</strong> has you covered.</p>\r\n<h3 data-start=\"374\" data-end=\"393\" class=\"\"><strong data-start=\"378\" data-end=\"393\">Our Mission</strong></h3>\r\n<p data-start=\"394\" data-end=\"740\" class=\"\">At <strong data-start=\"397\" data-end=\"406\">Veyoo</strong>, we’re all about making your travel experience hassle-free. We believe that getting around should be simple, convenient, and most importantly – enjoyable. Whether you\'re heading out on a road trip, running errands, or simply exploring your city, we provide you with the freedom to choose your ride, whenever and wherever you need it.</p>\r\n<h3 data-start=\"742\" data-end=\"760\" class=\"\"><strong data-start=\"746\" data-end=\"760\">Why Veyoo?</strong></h3>\r\n<ul data-start=\"761\" data-end=\"1244\">\r\n<li data-start=\"761\" data-end=\"871\" class=\"\">\r\n<p data-start=\"763\" data-end=\"871\" class=\"\"><strong data-start=\"763\" data-end=\"779\">Easy Booking</strong>: Rent a vehicle in just a few taps, with no complicated paperwork or waiting in long lines.</p>\r\n</li>\r\n<li data-start=\"872\" data-end=\"991\" class=\"\">\r\n<p data-start=\"874\" data-end=\"991\" class=\"\"><strong data-start=\"874\" data-end=\"892\">Wide Selection</strong>: Choose from a variety of vehicles – cars, bikes, and motorcycles – to match your needs and style.</p>\r\n</li>\r\n<li data-start=\"992\" data-end=\"1127\" class=\"\">\r\n<p data-start=\"994\" data-end=\"1127\" class=\"\"><strong data-start=\"994\" data-end=\"1019\">Affordable &amp; Flexible</strong>: With our competitive prices and flexible rental periods, you can enjoy the ride without breaking the bank.</p>\r\n</li>\r\n<li data-start=\"1128\" data-end=\"1244\" class=\"\">\r\n<p data-start=\"1130\" data-end=\"1244\" class=\"\"><strong data-start=\"1130\" data-end=\"1146\">Safety First</strong>: We ensure all vehicles are thoroughly inspected and maintained so you can drive with confidence.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1246\" data-end=\"1264\" class=\"\"><strong data-start=\"1250\" data-end=\"1264\">Our Vision</strong></h3>\r\n<p data-start=\"1265\" data-end=\"1443\" class=\"\">To revolutionize the way people experience transportation. We want to empower you to move freely and explore the world on your own terms, with the perfect ride for every journey.</p>\r\n<h3 data-start=\"1445\" data-end=\"1472\" class=\"\"><strong data-start=\"1449\" data-end=\"1472\">Join the Veyoo Ride</strong></h3>\r\n<p data-start=\"1473\" data-end=\"1653\" class=\"\">Ready to take the wheel? Whether it’s a weekend getaway or a quick city trip, <strong data-start=\"1551\" data-end=\"1560\">Veyoo</strong> is here to help you make it happen. Explore, adventure, and ride – the way it’s meant to be!</p></div>\r\n										'),
(11, 'FAQs', 'faqs', '<h2 data-start=\"86\" data-end=\"126\" class=\"\"><strong data-start=\"89\" data-end=\"126\">Frequently Asked Questions (FAQs)</strong></h2>\r\n<h3 data-start=\"128\" data-end=\"184\" class=\"\"><strong data-start=\"132\" data-end=\"184\">1. What types of vehicles can I rent from Veyoo?</strong></h3>\r\n<p data-start=\"185\" data-end=\"343\" class=\"\">At <strong data-start=\"188\" data-end=\"197\">Veyoo</strong>, we offer a variety of <strong data-start=\"221\" data-end=\"229\">cars</strong> for rent, ranging from compact city cars to spacious SUVs. Whatever your needs, we have the perfect ride for you.</p>\r\n<h3 data-start=\"345\" data-end=\"376\" class=\"\"><strong data-start=\"349\" data-end=\"376\">2. How do I book a car?</strong></h3>\r\n<p data-start=\"377\" data-end=\"434\" class=\"\">Booking a car is quick and easy! Just follow these steps:</p>\r\n<ol data-start=\"435\" data-end=\"645\">\r\n<li data-start=\"435\" data-end=\"489\" class=\"\">\r\n<p data-start=\"438\" data-end=\"489\" class=\"\">Browse our selection of cars on the app or website.</p>\r\n</li>\r\n<li data-start=\"490\" data-end=\"525\" class=\"\">\r\n<p data-start=\"493\" data-end=\"525\" class=\"\">Select the car you want to rent.</p>\r\n</li>\r\n<li data-start=\"526\" data-end=\"568\" class=\"\">\r\n<p data-start=\"529\" data-end=\"568\" class=\"\">Choose your pick-up and drop-off dates.</p>\r\n</li>\r\n<li data-start=\"569\" data-end=\"603\" class=\"\">\r\n<p data-start=\"572\" data-end=\"603\" class=\"\">Complete your payment securely.</p>\r\n</li>\r\n<li data-start=\"604\" data-end=\"645\" class=\"\">\r\n<p data-start=\"607\" data-end=\"645\" class=\"\">Hit “Book Now” and you\'re ready to go!</p>\r\n</li>\r\n</ol>\r\n<h3 data-start=\"647\" data-end=\"686\" class=\"\"><strong data-start=\"651\" data-end=\"686\">3. How can I pay for my rental?</strong></h3>\r\n<p data-start=\"687\" data-end=\"737\" class=\"\">We accept a variety of payment methods, including:</p>\r\n<ul data-start=\"738\" data-end=\"897\">\r\n<li data-start=\"738\" data-end=\"783\" class=\"\">\r\n<p data-start=\"740\" data-end=\"783\" class=\"\">Credit/Debit Cards (Visa, MasterCard, etc.)</p>\r\n</li>\r\n<li data-start=\"784\" data-end=\"832\" class=\"\">\r\n<p data-start=\"786\" data-end=\"832\" class=\"\">Mobile Wallets (PayPal, Google Pay, Apple Pay)</p>\r\n</li>\r\n<li data-start=\"833\" data-end=\"897\" class=\"\">\r\n<p data-start=\"835\" data-end=\"897\" class=\"\">Other secure online payment methods available on our platform.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"899\" data-end=\"944\" class=\"\"><strong data-start=\"903\" data-end=\"944\">4. Can I cancel or modify my booking?</strong></h3>\r\n<p data-start=\"945\" data-end=\"1127\" class=\"\">Yes! You can cancel or modify your booking up to [X hours/days] before the scheduled pick-up time for a full refund. Cancellations made after that will incur a [X%] cancellation fee.</p>\r\n<h3 data-start=\"1129\" data-end=\"1189\" class=\"\"><strong data-start=\"1133\" data-end=\"1189\">5. What is the minimum age to rent a car from Veyoo?</strong></h3>\r\n<p data-start=\"1190\" data-end=\"1380\" class=\"\">To rent a car with <strong data-start=\"1209\" data-end=\"1218\">Veyoo</strong>, you must be at least [insert minimum age, e.g., 21 years old] and hold a valid driver’s license. Additional requirements may apply depending on the type of car.</p>\r\n<h3 data-start=\"1382\" data-end=\"1446\" class=\"\"><strong data-start=\"1386\" data-end=\"1446\">6. What do I need to show when picking up my rental car?</strong></h3>\r\n<p data-start=\"1447\" data-end=\"1486\" class=\"\">When picking up your car, please bring:</p>\r\n<ul data-start=\"1487\" data-end=\"1637\">\r\n<li data-start=\"1487\" data-end=\"1514\" class=\"\">\r\n<p data-start=\"1489\" data-end=\"1514\" class=\"\">A valid driver’s license.</p>\r\n</li>\r\n<li data-start=\"1515\" data-end=\"1584\" class=\"\">\r\n<p data-start=\"1517\" data-end=\"1584\" class=\"\">The credit/debit card used for payment (or a payment confirmation).</p>\r\n</li>\r\n<li data-start=\"1585\" data-end=\"1637\" class=\"\">\r\n<p data-start=\"1587\" data-end=\"1637\" class=\"\">Any additional documents as requested by our team.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1639\" data-end=\"1687\" class=\"\"><strong data-start=\"1643\" data-end=\"1687\">7. Is insurance included with my rental?</strong></h3>\r\n<p data-start=\"1688\" data-end=\"1857\" class=\"\">Yes, all rentals come with basic insurance coverage. However, you can opt for additional coverage or protection plans during the booking process for extra peace of mind.</p>\r\n<h3 data-start=\"1859\" data-end=\"1931\" class=\"\"><strong data-start=\"1863\" data-end=\"1931\">8. What happens if the car gets damaged during my rental period?</strong></h3>\r\n<p data-start=\"1932\" data-end=\"2166\" class=\"\">You are responsible for any damage that occurs to the car during the rental period, unless it is caused by a third party or due to mechanical failure. Please report any accidents, damages, or incidents immediately to our support team.</p>\r\n<h3 data-start=\"2168\" data-end=\"2209\" class=\"\"><strong data-start=\"2172\" data-end=\"2209\">9. What if I return the car late?</strong></h3>\r\n<p data-start=\"2210\" data-end=\"2395\" class=\"\">If you return the car late, additional charges will apply. Late fees are calculated based on the length of the delay. Please make sure to return the vehicle on time to avoid these fees.</p>\r\n<h3 data-start=\"2397\" data-end=\"2443\" class=\"\"><strong data-start=\"2401\" data-end=\"2443\">10. How do I contact customer support?</strong></h3>\r\n<p data-start=\"2444\" data-end=\"2507\" class=\"\">If you need assistance, our customer support team is available:</p>\r\n<ul data-start=\"2508\" data-end=\"2636\">\r\n<li data-start=\"2508\" data-end=\"2543\" class=\"\">\r\n<p data-start=\"2510\" data-end=\"2543\" class=\"\"><strong data-start=\"2510\" data-end=\"2519\">Email</strong>: [Insert Email Address]</p>\r\n</li>\r\n<li data-start=\"2544\" data-end=\"2578\" class=\"\">\r\n<p data-start=\"2546\" data-end=\"2578\" class=\"\"><strong data-start=\"2546\" data-end=\"2555\">Phone</strong>: [Insert Phone Number]</p>\r\n</li>\r\n<li data-start=\"2579\" data-end=\"2636\" class=\"\">\r\n<p data-start=\"2581\" data-end=\"2636\" class=\"\"><strong data-start=\"2581\" data-end=\"2594\">Live Chat</strong>: Available on our website and mobile app.</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"2638\" data-end=\"2690\" class=\"\"><strong data-start=\"2642\" data-end=\"2690\">11. Can I rent a car for a long-term period?</strong></h3>\r\n<p data-start=\"2691\" data-end=\"2842\" class=\"\">Yes! <strong data-start=\"2696\" data-end=\"2705\">Veyoo</strong> offers long-term car rentals. Please contact us directly for customized pricing and availability for rentals longer than [X days/weeks].</p>\r\n<h3 data-start=\"2844\" data-end=\"2912\" class=\"\"><strong data-start=\"2848\" data-end=\"2912\">12. Are there any restrictions on where I can drive the car?</strong></h3>\r\n<p data-start=\"2913\" data-end=\"3098\" class=\"\">While you are free to explore with your rental car, certain areas may be restricted for safety or legal reasons. Please refer to the car’s rental agreement for any specific limitations.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 1),
(2, 'iven@gmail.com', '“A Seamless Experience!”\r\n\"Renting a car from Veyoo was so easy! I was able to book my car in just a few minutes, and the vehicle was perfect for my weekend trip. No hassle, great price, and the car was in excellent condition. Highly recommend!”', '2025-04-25 16:59:09', 1),
(3, 'iven@gmail.com', '“A Seamless Experience!”\r\n\"Renting a car from Veyoo was so easy! I was able to book my car in just a few minutes, and the vehicle was perfect for my weekend trip. No hassle, great price, and the car was in excellent condition. Highly recommend!”', '2025-04-25 16:59:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'iven', 'iven@gmail.com', '38e7ee1f073f4c087092f04cd190c84a', '0506516516', '', '', 'Dumaguete City', 'PH', '2025-04-25 15:58:33', '2025-04-25 16:47:44'),
(4, 'Jamie', 'jamie@gmail.com', 'b0fd24944cfb3db6335c532753eb9d0e', '0918254446', NULL, NULL, NULL, NULL, '2025-05-01 12:47:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int DEFAULT NULL,
  `VehiclesOverview` longtext,
  `PricePerDay` int DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int DEFAULT NULL,
  `SeatingCapacity` int DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int DEFAULT NULL,
  `PowerDoorLocks` int DEFAULT NULL,
  `AntiLockBrakingSystem` int DEFAULT NULL,
  `BrakeAssist` int DEFAULT NULL,
  `PowerSteering` int DEFAULT NULL,
  `DriverAirbag` int DEFAULT NULL,
  `PassengerAirbag` int DEFAULT NULL,
  `PowerWindows` int DEFAULT NULL,
  `CDPlayer` int DEFAULT NULL,
  `CentralLocking` int DEFAULT NULL,
  `CrashSensor` int DEFAULT NULL,
  `LeatherSeats` int DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Maruti Suzuki Wagon R', 1, 'Maruti Wagon R Latest Updates\r\n\r\nMaruti Suzuki has launched the BS6 Wagon R S-CNG in India. The LXI CNG and LXI (O) CNG variants now cost Rs 5.25 lakh and Rs 5.32 lakh respectively, up by Rs 19,000. Maruti claims a fuel economy of 32.52km per kg. The CNG Wagon R’s continuation in the BS6 era is part of the carmaker’s ‘Mission Green Million’ initiative announced at Auto Expo 2020.\r\n\r\nPreviously, the carmaker had updated the 1.0-litre powertrain to meet BS6 emission norms. It develops 68PS of power and 90Nm of torque, same as the BS4 unit. However, the updated motor now returns 21.79 kmpl, which is a little less than the BS4 unit’s 22.5kmpl claimed figure. Barring the CNG variants, the prices of the Wagon R 1.0-litre have been hiked by Rs 8,000.', 2500, 'Petrol', 2024, 5, 'rear-3-4-left-589823254_930x620.jpg', 'tail-lamp-1666712219_930x620.jpg', 'rear-3-4-right-520328200_930x620.jpg', 'steering-close-up-1288209207_930x620.jpg', 'boot-with-standard-luggage-202327489_930x620.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2025-04-26 11:31:12'),
(2, 'BMW 5 Series', 2, 'BMW 5 Series price starts at ? 55.4 Lakh and goes upto ? 68.39 Lakh. The price of Petrol version for 5 Series ranges between ? 55.4 Lakh - ? 60.89 Lakh and the price of Diesel version for 5 Series ranges between ? 60.89 Lakh - ? 68.39 Lakh.', 2990, 'Petrol', 2023, 5, 'BMW-5-Series-Exterior-102005.jpg', 'BMW-5-Series-New-Exterior-89729.jpg', 'BMW-5-Series-Exterior-102006.jpg', 'BMW-5-Series-Interior-102021.jpg', 'BMW-5-Series-Interior-102022.jpg', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 07:12:02', '2025-04-26 11:32:10'),
(3, 'Audi Q8', 3, 'As per ARAI, the mileage of Q8 is 0 kmpl. Real mileage of the vehicle varies depending upon the driving habits. City and highway mileage figures also vary depending upon the road conditions.', 3000, 'Petrol', 2025, 5, 'audi-q8-front-view4.jpg', '1920x1080_MTC_XL_framed_Audi-Odessa-Armaturen_Spiegelung_CC_v05.jpg', 'audi1.jpg', '1audiq8.jpg', 'audi-q8-front-view4.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:19:21', '2025-04-26 11:30:36'),
(4, 'Nissan Kicks', 4, 'Latest Update: Nissan has launched the Kicks 2020 with a new turbocharged petrol engine. You can read more about it here.\r\n\r\nNissan Kicks Price and Variants: The Kicks is available in four variants: XL, XV, XV Premium, and XV Premium(O).', 960, 'Petrol', 2020, 5, 'front-left-side-47.jpg', 'kicksmodelimage.jpg', 'download.jpg', 'kicksmodelimage.jpg', '', 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2020-07-07 07:25:28', '2025-04-26 11:31:43'),
(5, 'Nissan GT-R', 4, ' The GT-R packs a 3.8-litre V6 twin-turbocharged petrol, which puts out 570PS of max power at 6800rpm and 637Nm of peak torque. The engine is mated to a 6-speed dual-clutch transmission in an all-wheel-drive setup. The 2+2 seater GT-R sprints from 0-100kmph in less than 3', 2000, 'Petrol', 2019, 5, 'Nissan-GTR-Right-Front-Three-Quarter-84895.jpg', 'Best-Nissan-Cars-in-India-New-and-Used-1.jpg', '2bb3bc938e734f462e45ed83be05165d.jpg', '2020-nissan-gtr-rakuda-tan-semi-aniline-leather-interior.jpg', 'images.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:34:17', NULL),
(6, 'Nissan Sunny 2020', 4, 'Value for money product and it was so good It is more spacious than other sedans It looks like a luxurious car.', 800, 'CNG', 2018, 5, 'Nissan-Sunny-Right-Front-Three-Quarter-48975_ol.jpg', 'images (1).jpg', 'Nissan-Sunny-Interior-114977.jpg', 'nissan-sunny-8a29f53-500x375.jpg', 'new-nissan-sunny-photo.jpg', 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 09:12:49', '2025-04-26 11:32:32'),
(7, 'Toyota Fortuner', 5, 'Toyota Fortuner Features: It is a premium seven-seater SUV loaded with features such as LED projector headlamps with LED DRLs, LED fog lamp, and power-adjustable and foldable ORVMs. Inside, the Fortuner offers features such as power-adjustable driver seat, automatic climate control, push-button stop/start, and cruise control.\r\n\r\nToyota Fortuner Safety Features: The Toyota Fortuner gets seven airbags, hill assist control, vehicle stability control with brake assist, and ABS with EBD.', 3000, 'Petrol', 2025, 5, '2015_Toyota_Fortuner_(New_Zealand).jpg', 'toyota-fortuner-legender-rear-quarters-6e57.jpg', 'zw-toyota-fortuner-2020-2.jpg', 'download (1).jpg', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, NULL, 1, 1, 1, '2020-07-07 09:17:46', '2025-04-26 11:30:47'),
(8, 'Maruti Suzuki Vitara Brezza', 1, 'The new Vitara Brezza is a well-rounded package that is feature-loaded and offers good drivability. And it is backed by Maruti’s vast service network, which ensures a peace of mind to customers. The petrol motor could have been more refined and offered more pep.', 899, 'Petrol', 2018, 5, 'marutisuzuki-vitara-brezza-right-front-three-quarter3.jpg', 'marutisuzuki-vitara-brezza-rear-view37.jpg', 'marutisuzuki-vitara-brezza-dashboard10.jpg', 'marutisuzuki-vitara-brezza-boot-space59.jpg', 'marutisuzuki-vitara-brezza-boot-space28.jpg', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-07-07 09:23:11', '2025-04-26 11:32:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
