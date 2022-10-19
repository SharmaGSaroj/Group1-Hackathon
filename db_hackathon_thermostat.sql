-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 19, 2022 at 08:55 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hackathon_thermostat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(10) UNSIGNED NOT NULL,
  `feature_type` varchar(100) NOT NULL,
  `feature_stat` varchar(100) NOT NULL,
  `feature_heading` varchar(250) NOT NULL,
  `feature_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `feature_type`, `feature_stat`, `feature_heading`, `feature_desc`) VALUES
(1, 'Save energy automatically', '', 'Save up to 26%* on heating and cooling costs', 'HouseCom™ ThermoSecurity™ System helps you save up to 26%* on annual heating and cooling costs through advanced occupancy sensing technology, so you never heat or cool an empty home. And the more homes we’re in, the more we all save together.'),
(2, 'Smart home ecosystems', '', 'Control from anywhere with your iOS or Android device', 'Controllable through many devices, like your Smartphone, Tablet or Apple Watch. Works with preferred smart home systems like Apple HomeKit, Amazon Alexa, Google Assistant, SmartThings and IFTTT.'),
(3, 'Easy from install', '', 'Comes with everything you need for an easy self-install', 'No batteries needed so you’ll never have to worry about replacing them or losing control of your thermostat. Hardwired onto your wall also means you can use your thermostat as a Smart Security home monitoring hub.'),
(4, 'Multi-talented monitoring', '', 'Works with SmartSensors to ensure occupied rooms stay comfortable', 'Uses Smart Thermostat’s built-in occupancy sensor to automatically adjust the temperature for energy savings when you leave home and restore your comfort settings when you return'),
(5, 'SmartSensor', '100% 24/7 monitoring', 'Always know your surrounding', 'Protect your home from intruders with advanced occupancy sensing system'),
(6, 'Eco Friendly Features', '90% toxicity removed', 'Experience a new level of comfort and energy savings with eco+', 'Smart Recovery will learn your temperature pattern and begin pre-heating and pre-cooling in advance.'),
(7, 'Thermostat sensor', '100% comfort at home', 'Experience a new level of comfort', 'To avoid the formation of frost on windows, SmartThermostat controls indoor humidity'),
(8, 'Energy Statistic Reports', '20% savings energy cost', 'It’s like an energy audit at no extra cost', 'Obtain a monthly savings report and compare your performance with other homes in the area.'),
(9, 'Smart Recovery', '90% of our time are indoor', 'All features require a smart thermostat or SmartCamera', 'Improved occupancy sensing and security are made possible by the wider angles and greater range of radar technology.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` tinyint(3) UNSIGNED NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `product_colour` varchar(100) NOT NULL,
  `product_price` varchar(10) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_category`, `product_colour`, `product_price`, `product_desc`) VALUES
(1, 'HouseCom™ ThermoSecurity™ System', 'Thermostat', 'Black front, white backing', '$123.0 CAD', 'HouseCom™ ThermoSecurity™ System is a fully digital, hardwired and wireless (WiFi, Bluetooth)\r\nenabled home personal and secure environment control system. All communications with the central\r\nsystem are accessible and controlled through the wall unit, product app. and the secured portal on the parent\r\nwebsite. The HouseCom™ ThermoSecurity™ System App. is available on both iOS and Android devices.\r\nWhether you wish to adjust the temperature of your home from your Android or iPhone watch or access\r\nthe home security system on your phone to check in on the house occupancy through the remote, portable\r\ncameras. You may wish to look for independent room temperatures, smoke and carbon monoxide status or\r\njust open windows and unlocked doors for your return home.\r\nAll of this functionality and more are part of the capabilities of the HouseCom™ ThermoSecurity™ security\r\nand environment system.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `review_id` smallint(5) UNSIGNED NOT NULL,
  `review_customer` varchar(50) NOT NULL,
  `review_location` varchar(50) NOT NULL,
  `review_desc` text NOT NULL,
  `product_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`review_id`, `review_customer`, `review_location`, `review_desc`, `product_id`) VALUES
(1, 'John Bennet', 'Ontario, Canada', 'Before having the HouseCom™ ThermoSecurity™ System I had another smart thermostat that I liked. I honestly didn’t think I’d like one better. I was so wrong. One of the most amazing things is that HouseCom™ ThermoSecurity™ System isn’t attached to one service (Google, Apple, etc) so it’s compatible with them all. I also think it has a better sensor for temp than my last one, it looks better, and it’s more responsive. Overall a 10/10', 1),
(2, 'Marco Deluca', 'Ontario, Canada', 'I have had this product for about three weeks now and it has made a difference having sensors in the bedrooms to keep the temperatures even and the house cool. We have been experiencing some very warm weather for October. This was a perfect time to get the smart thermostat. I am going to add an additional sensor for the third bedroom. It is Learning from our coming and going and we can adjust it. I set it to auto to let it do it’s thing. Love it', 1),
(3, 'Justin Brunner', 'Ontario, Canada', 'We love our HouseCom™ ThermoSecurity™ System , especially during these hot summer days! The programs to save energy and Alexa integration have been helpful. The smart home features through Alexa are a life changer as well. We have recommend this thermostat to our family and friends! It was easy to install and we love the simple and clean design.', 1),
(4, 'Jarrod Osterback', 'Ontario, Canada', 'I love this product. We previously had the older version, so when Influenster sent me the newer updated version I was so excited to try it out. It works great and I love the vacation scheduler and the different settings and features it has. The smart technology is amazing it is integrated with Amazon Alexa. If you are looking for the first step in setting up your smart home. I highly suggest that you check out this product, it\'s worth every penny.', 1),
(5, 'Joe Kormendi', 'Ontario, Canada', 'This HouseCom™ ThermoSecurity™ System is very efficient and fully programmable. Since having it for the last 2 months I’ve noticed my energy bill went slightly down! Also detects when house is unoccupied and adjusts temperature. What I like most is the I have full control the app on my phone when I am away from home.', 1),
(6, 'Trevor Van Rys', 'Ontario, Canada', 'Having this smart thermostat in our home has been a game changer. We have three floors and it’s often very different temperatures on each. Having temperature pucks on each floor not only helps us monitor it but adjust based off of which floor we’re occupying. Being able to make changes from my phone while both home and away is also clutch. Super easy interface to use as well!', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `review_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
