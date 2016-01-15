-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2016 at 04:16 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_name`) VALUES
('nokia'),
('samsung'),
('microsoft'),
('pencil'),
('nalkdsjf'),
('nalkdjf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brands`
--

CREATE TABLE IF NOT EXISTS `tbl_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_brands`
--

INSERT INTO `tbl_brands` (`id`, `brand`) VALUES
(7, 'Samsung'),
(8, 'Apple'),
(9, 'One Plus'),
(10, 'RedMi'),
(11, 'Intex'),
(12, 'Asus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_productphotos`
--

CREATE TABLE IF NOT EXISTS `tbl_productphotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `tbl_productphotos`
--

INSERT INTO `tbl_productphotos` (`id`, `ProductID`, `photo`) VALUES
(76, 1, 'samsung-e7-1.jpeg'),
(77, 2, 'apple-iphone-5s-1.jpeg'),
(78, 3, 'apple-iphone-6s-1.jpeg'),
(79, 4, 'mi-4i-1.jpeg'),
(80, 5, 'one-plus-x-1.jpg'),
(81, 6, 'redmi-prime-1.jpg'),
(82, 7, 'intex-aqua-power-1.jpeg'),
(83, 8, 'asus-zenfone-2-laser-1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE IF NOT EXISTS `tbl_products` (
  `ProductID` int(255) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Description` tinytext NOT NULL,
  `Brand` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `flipprice` int(150) NOT NULL,
  `snapdealprice` int(150) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `photos` varchar(200) NOT NULL,
  `amazonurl` varchar(200) NOT NULL,
  `flipkarturl` varchar(200) NOT NULL,
  `snapdealurl` varchar(200) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`ProductID`, `Title`, `Description`, `Brand`, `Price`, `flipprice`, `snapdealprice`, `keywords`, `photos`, `amazonurl`, `flipkarturl`, `snapdealurl`) VALUES
(1, 'Samsung Galaxy-e7', 'Specifications:\n* Dual SIM\n* RAM - 2GB\n* Internal Memory - 16GB\n* OS - Android 4.4.4\n* Primary Camera - 13MP\n* Secondary Camera - 5MP\n* Battery - 2950mAh', '7', 19000, 19500, 22000, 'samsung,galaxy,e7,mobiles,mobile', 'samsung-e7-1.jpeg', 'http://www.amazon.in/Samsung-Galaxy-E7-Black-16GB/dp/B00SKVIJVI/ref=sr_1_3?ie=UTF8&qid=1452274238&sr=8-3&keywords=samsung+e7', 'http://www.flipkart.com/samsung-galaxy-e7/p/itme7zjgyhqvbhqb?pid=MOBE3UN6MWTHGZ53&ref=L%3A-6775358490737685082&srno=p_1&query=samsung+galaxy+e7+mobile&otracker=from-search', 'http://www.snapdeal.com/product/samsung-galaxy-e7-e700h-black/626601535913#bcrumbSearch:samung%20e7'),
(2, 'Iphone 5s', 'Specifications:\r\n*Single Sim(Nano Sim)\r\n*RAM - 1GB\r\n*Internal - 16GB\r\n*OS - IOS9\r\n*Primary Camera - 8MP\r\n*Secondary Camera - 1.3MP\r\n*Battery - 1560mAh', '8', 23999, 25999, 22357, 'iphone,5s,apple,mobiles,mobile', 'apple-iphone-5s-1.jpeg', 'http://www.amazon.in/Apple-iPhone-5s-Space-Grey/dp/B00FXLC9V4/ref=sr_1_3?ie=UTF8&qid=1452417375&sr=8-3&keywords=iphone+5s', 'http://www.flipkart.com/apple-iphone-5s/p/itme8ra4f4twtsva?pid=MOBDPPZZPXVDJHSQ&ref=L%3A7533888337677795458&srno=p_1&query=iphone+5s&otracker=from-search', 'http://www.snapdeal.com/product/apple-iphone-5s-16-gb/1204769399#bcrumbSearch:apple%205s'),
(3, 'IPhone 6s', 'Specifications:\r\n*Single Sim(Nano Sim)\r\n*RAM - 2GB\r\n*Internal - 16GB\r\n*OS - IOS9\r\n*Primary Camera - 12MP\r\n*Secondary Camera - 5MP\r\n*Battery - 1715mAh', '8', 51450, 49745, 46469, 'iphone,6s,apple,mobiles,mobile', 'apple-iphone-6s-1.jpeg', 'http://www.amazon.in/Apple-iPhone-6s-Rose-Gold/dp/B016QBTFZC/ref=sr_1_3?ie=UTF8&qid=1452417498&sr=8-3&keywords=iphone+6s', 'http://www.flipkart.com/apple-iphone-6s/p/itmebysgupjepunx?pid=MOBEBY3VRK2MSPMQ&ref=L%3A-3784010308650906245&srno=p_10&query=iphone+6s&otracker=from-search', 'http://www.snapdeal.com/product/iphone-6s-16gb/663413326062#bcrumbSearch:iphone%206s'),
(4, 'Xiaomi mi4i', 'Specifications:\n*Dual Sim\n*RAM - 2GB\n*Internal - 16GB\n*OS - Android 5.0(Lollipop)\n*Primary Camera - 13MP\n*Secondary Camera - 5MP\n*Battery - 3120mAh\n[NOTE: ONLY AVAILABLE ON AMAZON,FLIPKART]', '10', 11999, 11459, 0, 'xioami,mi4i,mobiles,mobile', 'mi-4i-1.jpeg', '', 'http://www.flipkart.com/mi-4i/p/itmeatkhxwyatgyk?pid=MOBEATKH5GHGDU5W&ref=L%3A-5397005623512708508&srno=p_1&query=xioami+mi4i&otracker=from-search', ''),
(5, 'One Plus X', 'Specifications:\n*Dual Sim\n*RAM - 3GB\n*Internal - 16GB\n*OS - Android 5.0(Lollipop)\n*Primary Camera - 13MP\n*Secondary Camera - 8MP\n*Battery - 2525mAh\n[NOTE: ONLY AVAILABLE ON AMAZON]', '9', 16999, 0, 0, 'one,plus,x,mobiles,mobile', 'one-plus-x-1.jpg', 'http://www.amazon.in/OnePlus-Onyx-16GB-Invite-Only/dp/B016UPKCGU/ref=sr_1_3?ie=UTF8&qid=1452418399&sr=8-3&keywords=one+plus+x', '', ''),
(7, 'Intex Aqua Power Plus', 'Specifications:\r\n*Dual Sim\r\n*RAM - 2GB\r\n*Internal - 16GB\r\n*OS - Android 5.0(Lollipop)\r\n*Primary Camera - 13MP\r\n*Secondary Camera - 5MP\r\n*Battery - 4000mAh', '11', 7159, 6999, 6919, 'intex,aqua,power,plus,mobiles,mobile', 'intex-aqua-power-1.jpeg', 'http://www.amazon.in/Intex-Aqua-Power-Plus-White-Champagne/dp/B00WWU1EVK/ref=sr_1_sc_1?ie=UTF8&qid=1452418508&sr=8-1-spell&keywords=intext+aqua+power+plus', 'http://www.flipkart.com/intex-aqua-power/p/itmeb9ca4dfgaypz?pid=MOBE7FGGZMDKF82G&ref=L%3A1515164717299679473&srno=p_2&query=intex+aqua+power+plus&otracker=from-search', 'http://www.snapdeal.com/product/intex-black-aqua-power-plus/678851964366#bcrumbSearch:intex%20aqua%20power%20plus'),
(8, 'Asus Zenfone 2 Laser', 'Specifications:\r\n*Dual Sim\r\n*RAM - 2GB\r\n*Internal - 16GB\r\n*OS - Android 5.0(Lollipop)\r\n*Primary Camera - 13MP\r\n*Secondary Camera - 5MP\r\n*Battery - 3000mAh', '12', 11282, 9999, 9999, 'asus,zenfone,laser,mobiles,mobile', 'asus-zenfone-2-laser-1.jpeg', 'http://www.amazon.in/Asus-Zenfone-Laser-ZE500KL-Black/dp/B015FAQR7Y/ref=sr_1_2?ie=UTF8&qid=1452418571&sr=8-2&keywords=asus+zenfone+2+laser', 'http://www.flipkart.com/asus-zenfone-2-laser-ze550kl/p/itme9j58yzyzqzgc?pid=MOBE9J587QGMXBB7&icmpid=reco_pp_hsame_mobile_mobile_6&ppid=MOBEATKH5GHGDU5W', 'http://www.snapdeal.com/product/asus-zenfone-2-laser-ze550kl/633082651487?suggested=true&clickSrc=suggested');
--
-- Database: `sphider`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
