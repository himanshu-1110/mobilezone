-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2021 at 03:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
(0, 'admin', '1110'),
(1, 'harsh', 'harsh');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brands` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brands`, `status`) VALUES
(1, 'Xiomi', 1),
(4, 'Realme', 1),
(5, 'Poco', 1),
(6, 'Nokia', 1),
(7, 'oppo', 1),
(8, 'Apple', 1),
(9, 'Samsung', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `comment` text NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `mobile`, `comment`, `added_on`) VALUES
(2, 'Ayush Rai', 'ayush123@gmail.com', '3456543677', 'fsd cngnfnf gngfnd', '2021-01-11 11:44:19'),
(6, 'Himanshu Singh', 'hs280976@gmail.com', '12345678', 'dsgrs', '2021-02-08 05:02:22'),
(7, 'harsh', 'bc21053@smsvaranasi.in', '23123213', 'sir mobile mil gaya', '2021-02-08 05:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `brands_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mrp` float NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_desc` varchar(2000) NOT NULL,
  `description` text NOT NULL,
  `best_seller` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_desc` varchar(2000) NOT NULL,
  `meta_keyword` varchar(2000) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `brands_id`, `name`, `mrp`, `price`, `qty`, `image`, `short_desc`, `description`, `best_seller`, `meta_title`, `meta_desc`, `meta_keyword`, `status`) VALUES
(3, 4, 'Realme c2', 10000, 8999, 15, '980756686_Realme-C1_425x535.jpg', 'It has a dual camera setup at the back which consists of a 13-megapixel primary camera and a 2-megapixel depth sensor. Powering the smartphone is . a MediaTek Helio P22 SoC and comes in two variants- 2GB RAM with 16GB storage, and 3GB RAM with 32GB of storage. ... The cameras on the Realme C2 deliver average performance.', 'The C2 is a budget offering from Realme and is the successor of the Realme C1. It sports a 6.1-inch HD+ display with Corning Gorilla Glass 3 for protection. It has good viewing angles and also offers the option to change the colour temperature of the display. \r\n\r\nThe Realme C2 is well designed and has a diamond-cut pattern on the back that makes it look premium. The phone is compact and feels comfortable to hold in the hand. It has a dual camera setup at the back which consists of a 13-megapixel primary camera and a 2-megapixel depth sensor.\r\n\r\nPowering the smartphone is .a MediaTek Helio P22 SoC and comes in two variants- 2GB RAM with 16GB storage, and 3GB RAM with 32GB of storage. We had the 3GB RAM variant and found it to be powerful enough for day-to-day tasks but couldn\'t run big games smoothly. \r\n\r\nThe Realme C2 runs ColourOS 6 on top of Android 9 Pie which is the latest version of Android. We found a few apps preinstalled on the smartphone which could be uninstalled easily. Realme also offers a few useful features in the form of driving and riding modes.\r\n\r\nRealme has packed in a 4000mAh battery which delivers very good battery life. The supplied 10W charger is also quick enough to top the battery up. The cameras on the Realme C2 deliver average performance. The phone wasn\'t consistent in getting the exposure right in daylight but suffered in low-light.\r\n\r\nFor the asking price of Rs. 5,999 the base variant of the Realme C2 does look impressive on paper but the variant we tested was priced at Rs. 7,999. If you are looking at the higher variant of the Realme C2, you can look at the Redmi 7 and the Nokia 5.1 Plus as the alternatives.', 0, '', '', '', 1),
(6, 7, 'Oppo F17', 16990, 15999, 10, '238499524_OPPO-F17-Pro-Diwali-Edition_425x535.jpg', 'The Oppo F17 is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards. The Oppo F17 measures 159.82 x 72.80 x 7.45mm (height x width x thickness) and weighs 163.00 grams. It was launched in Dynamic Orange, Navy Blue, and Classic Silver colours.', 'Oppo F17 smartphone was launched on 2nd September 2020. The phone comes with a 6.44-inch touchscreen display. Oppo F17 is powered by an octa-core Qualcomm Snapdragon 662 processor. It comes with 4GB of RAM. The Oppo F17 runs Android 10 and is powered by a 4000mAh battery. The Oppo F17 supports proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Oppo F17 on the rear packs a 16-megapixel primary camera with an f/2.2 aperture; a second 8-megapixel camera with an f/2.2 aperture; a third 2-megapixel camera with an f/2.4 aperture and a fourth 2-megapixel camera with an f/2.4 aperture. The rear camera setup has autofocus. It sports a 16-megapixel camera on the front for selfies, with an f/2.0 aperture.\r\n\r\nThe Oppo F17 runs ColorOS 7.2 based on Android 10 and packs 64GB of inbuilt storage that can be expanded via microSD card. The Oppo F17 is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards. The Oppo F17 measures 159.82 x 72.80 x 7.45mm (height x width x thickness) and weighs 163.00 grams. It was launched in Dynamic Orange, Navy Blue, and Classic Silver colours.\r\n\r\nConnectivity options on the Oppo F17 include Wi-Fi 802.11 a/b/g/n/ac, GPS, USB Type-C, 3G, and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include accelerometer, ambient light sensor, compass/ magnetometer, gyroscope, proximity sensor, and in-display fingerprint sensor. The Oppo F17 supports face unlock.\r\n\r\nAs of 28th January 2021, Oppo F17 price in India starts at Rs. 16,990.', 1, '', '', '', 1),
(7, 1, 'Redmi Note 9', 100000, 99999, 90, '711360197_61VTwVvavNL._AC_SX425_.jpg', 'It sports a 6.53-inch display with a hole-punch on the top left corner. ... The Redmi Note 9 Is powered by a MediaTek Helio G85 SoC. The Redmi Note 9 is available in three variants; 4GB of RAM with 64GB of storage, 4GB of RAM with 128GB of storage, and 6GB of RAM with 128GB of storage', 'The Redmi Note 9 is an entry-level offering from Xiaomi in the Note 9 series. It shares the same design as the Redmi Note 9 Pro and the Redmi Note 9 Pro Max. It sports a 6.53-inch display with a hole-punch on the top left corner. There is Corning Gorilla Glass 5 to protect the display. The display has good viewing angles but the notch could be distracting to a few people.\r\n\r\nThe Redmi Note 9 Is powered by a MediaTek Helio G85 SoC. The Redmi Note 9 is available in three variants; 4GB of RAM with 64GB of storage, 4GB of RAM with 128GB of storage, and 6GB of RAM with 128GB of storage. Storage can be expanded further using a microSD card slot. The Redmi Note 9 houses a 5,020mAh battery and gets a 22.5W charger in the box. \r\n\r\n \r\n\r\nThe Redmi Note 9 has a quad-camera setup consisting of a 48-megapixel primary camera, 8-megapixel ultra-wide-angle camera, 2-megapixel macro camera and a 2-megapixel depth sensor. The Redmi Note 9 manages good photos in daylight and the AI is quick to detect scenes. Lowlight camera performance was average and the Night mode did not make a huge difference in the output.', 0, '', '', '', 1),
(8, 6, 'Nokia 5.3 Android One', 16998, 12999, 10, '739482987_nokia_5_3-front_back-Cyan.jpg', 'The phone powered by an octa-core Qualcomm Snapdragon 665 processor, the smartphone has 3 GB of RAM. ... The phone has a 5.99-inch HD+ display, an octa-core processor, a 3,040 mAh battery, an 8 MP rear camera sensor and the 5 MP front facing camera.', 'The Nokia 5.3 smartphone has a 6.55-inch touchscreen display with 720 x 1600 pixels resolution and an aspect ratio of 20:9. The phone powered by an octa-core Qualcomm Snapdragon 665 processor, the smartphone has 3 GB of RAM. The Nokia 5.3 runs Android 10 and is backed by a 4000mAh non-removable battery.\r\n\r\nThe smartphone\r\n\r\npacks a quad rear camera setup which includes a 13 MP primary camera, a 5 MP camera, a 2 MP camera and a fourth 2 MP camera. The smartphone is priced starting at Rs 13,999 for the 4 GB RAM + 64 GB of internal storage variant and Rs 15,499 for the variant with 6 GB RAM and 64 GB of onboard storage.\r\nNokia has also launched the Nokia C3 in India starting at Rs 7,499 for the 2 GB RAM variant with 32 GB storage and Rs 8,999 for the 3 GB RAM variant with 32 GB storage. The phone has a 5.99-inch HD+ display, an octa-core processor, a 3,040 mAh battery, an 8 MP rear camera sensor and the 5 MP front facing camera. The Nokia C3 has a dedicated Google Assistant button.  \r\n\r\nDesign\r\n\r\nThe phone has a 6.55-inch touchscreen display with 720 x 1600 pixels resolution and an aspect ratio of 20:9. The Nokia 5.3 has dimensions of 164.28 x 76.62 x 8.50mm and weighs 180.00 grams. It is available in Charcoal, Cyan, and Sand colours.\r\n\r\nCamera\r\n\r\nThe Nokia 5.3 packs a 13 MP primary camera with an f/1.8 aperture; a second 5 MP camera; a third 2 MP camera and a fourth 2 MP camera. The smartphone has an 8 MP front camera for clicking selfies, with an f/2.0 aperture.\r\n\r\nPerformance\r\n\r\nNokia 5.3 runs on Android 10 and powered by an octa-core Qualcomm Snapdragon 665 processor, the smartphone has 3 GB of RAM. The phone has a range of sensors including an accelerometer, ambient light sensor, proximity sensor, and fingerprint sensor. The Nokia 5.3 supports face unlock for quick access as well.\r\n\r\nBattery and Storage\r\n\r\nIt packs 64 GB of inbuilt storage that can be expanded via a microSD card slot up to 512 GB. It is backed by a 4000mAh non-removable battery.\r\n\r\nConnectivity\r\n\r\nThe Nokia 5.3 is a dual-SIM smartphone. Connectivity options included on the Nokia 5.3 are Wi-Fi, GPS, Bluetooth v4.20, USB OTG, USB Type-C, FM radio, 3G and 4G. It offers support for 4G VoLTE networks as well.\r\n\r\nConfiguration\r\n\r\nIt packs 64 GB of inbuilt storage that can be expanded via a microSD card slot up to 512 GB. Nokia 5.3 runs on Android 10 and powered by an octa-core Qualcomm Snapdragon 665 processor with up to 6 GB of RAM.', 1, '', '', '', 1),
(9, 1, 'Redmi Note 9 pro', 15999, 14999, 90, '433970857_xiaomi-redmi-note-9-pro-raw-759723.jpg', 'Redmi Note 9 Pro Brief Description. in India. ... The Redmi 9 has been announced recently and features a 6.53-inch display, a MediaTek Helio G80 processor, upto 4 GB RAM, 64 GB internal store and packs a 5,020mAh battery. It has a quad rear camera setup and a water drop-style notch which houses the front selfie camera.', 'The Redmi Note 9 Pro has a lower starting price than its predecessors, but also doesn\'t offer all the modern features that you might expect. It has a 6.67-inch LCD screen with a 60Hz refresh rate and hole-punch front camera at the top. The processor is a Qualcomm Snapdragon 720G which is surprisingly powerful for this segment. You also get a 5020mAh battery and suppport for 18W fast charging. \r\n\r\nThe Redmi Note 9 Pro is powerful and everyday work will go smoothly. The display is large and crisp, making games and movies look good. You have a choice between variants, one with 4GB of RAM and 64GB of storage, and the other with 6GB of RAM and 128GB of storage.\r\n\r\nThe 48-megapixel primary camera was slightly disappointing overall, particularly in low light. There\'s also an 8-megapixel wide-angle camera, a 5-megapixel macro camera, and a 2-megapixel depth sensor. On the front you get a 16-megapixel selfie camera.', 1, '', '', '', 1),
(10, 5, 'Poco X2', 19000, 18500, 15, '575244911_xiaomi-poco-x2-256gb-9275_425x535.jpg', 'The Poco X2 has four rear and two front cameras. ... There\'s also an 8-megapixel f/2.2 ultra-wide camera, a 2-megapixel macro camera with a 2cm-10cm focal range as well as autofocus, and a 2-megapixel depth sensor. The primary selfie camera has a 20-megapixel resolution and is accompanied by a 2-megapixel depth sensor.', 'The Poco X2 offers good value for money, with specifications and capabilities that few other companies can match in the sub-Rs. 20,000 market. The design, with its attention-grabbing circular patch on the rear and bright gradient finishes, might be a bit polarising but Poco has used Gorilla Glass 5 on the front and back for durability. You get a large 6.67-inch screen with dual front cameras embedded in a cutout in the top-right corner. The display is bright, and supports a 120Hz refresh rate as well as HDR-10, but we didn\'t find it to be too vibrant. Performance is very good thanks to the Snapdragon 730G processor, and you can get up to 8GB of RAM with up to 256GB of storage for less than Rs. 20,000. This phone also boasts of a 64-megapixel primary rear camera and it took very good stills in the daytime. The night mode also helped low-light photos look good. The wide-angle and macro cameras are less useful but still nice to have. Daytime videos looked good, but quality suffered a lot at night, especially when recording at 4K. Battery life was also quite good, but not spectacular.', 1, '', '', '', 1),
(11, 1, 'Redmi Note 8', 11499, 10499, 25, '891481757_Redmi-note8a-600x800_425x535.png', 'he phone is powered by Octa core (2 GHz, Quad core, Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor. It runs on the Qualcomm Snapdragon 665 Chipset. It has 4 GB RAM and 64 GB internal storage. Xiaomi Redmi Note 8 smartphone has a IPS LCD display.', 'Redmi Note 8 smartphone runs on Android v9.0 (Pie) operating system. The phone is powered by Octa core (2 GHz, Quad core, Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor. It runs on the Qualcomm Snapdragon 665 Chipset. It has 4 GB RAM and 64 GB internal storage.\r\n\r\nXiaomi Redmi Note 8 smartphone has a IPS LCD display. It measures 158.3 mm x 75.3 mm x 8.3 mm and weighs 188 grams. The screen has a resolution of 1080 x 2340 pixels and 409 ppi pixel density. It has an aspect ratio of 19.5:9 and screen-to-body ratio of 81.56 %. On camera front, the buyers get a 13 MP f/2.0 Primary Camera(1.12µm pixel size) and on the rear, there\'s an 48+8+2+2 MP camera with features like Digital Zoom, Auto Flash, Face detection, Touch to focus. It is backed by a 4000 mAh battery. Connectivity features in the smartphone include WiFi, Bluetooth, GPS, Volte, and more.', 0, '', '', '', 1),
(12, 1, 'Redmi Note 8 Pro', 16999, 15999, 20, '861357834_61CSVqU11NL._AC_SL1000__425x535.jpg', 'The Redmi Note 8 Pro is powered by the MediaTek Helio G90T which is a gaming processor. ... There are three variants of the Redmi Note 8 Pro, 6GB RAM with 64GB storage, 6GB RAM with 128GB storage and 8GB RAM with 128GB storage. It uses UFS 2.1 for storage and has a dedicated card slot for storage expansion.', 'Redmi Note 8 Pro is a highly sought after smartphone. It has a big-display which measures 6.53-inches and a water drop notch that houses the selfie camera. The display also has support for HDR.  It has a glass back that is made out of Corning Gorilla Glass 5. The Redmi Note 8 pro also has an IR Blaster at the top whihc cna be used to control other IR-based appliances.\r\n\r\nThe Redmi Note 8 Pro is powered by the MediaTek Helio G90T which is a gaming processor. It is very capable and can play most gaming title out there on the play store. There are three variants of the Redmi Note 8 Pro, 6GB RAM with 64GB storage, 6GB RAM with 128GB storage and 8GB RAM with 128GB storage. It uses UFS 2.1 for storage and has a dedicated card slot for storage expansion.\r\n\r\nXiaomi ships the Redmi Note 8 Pro with MIUI 10 running on top of Android 9 Pie. It comes preinstalled with a few apps which are capable of generating spammy notifications. The Redmi Note 8 Pro packs in a 4,500mAh battery that helps the device deliver good battery life. Xiaomi has also bundled an 18W charger with the device. The Redmi Note 8 Pro packs a triple camera setup at the back and clicks some good shots in different lighting conditions. We found low-light video performance to be sub-par.', 0, '', '', '', 1),
(13, 1, 'Redmi Note 7 Pro', 13990, 12990, 15, '781684292_8b118dd0-dd89-4b5d-9edc-032157e3dcd9_425x535.png', 'The Redmi Note 7 Pro is one of the most feature packed phones in its price bracket, bringing a premium design, capable octa-core processor, 48-megapixel camera, and fast charging support to the table. The phone packs a 6.3-inch full-HD+ (1080x2340 pixels) LTPS In-Cell display protected by a layer of Gorilla Glass 5.', 'The Redmi Note 7 Pro is one of the most feature packed phones in its price bracket, bringing a premium design, capable octa-core processor, 48-megapixel camera, and fast charging support to the table. The phone packs a 6.3-inch full-HD+ (1080x2340 pixels) LTPS In-Cell display protected by a layer of Gorilla Glass 5. Content on the display looks sharp with crisp colours, but at the same time, it is also quite reflective.\r\n\r\nThe phone is powered by the Snapdragon 675 processor ticking alongside up to 6GB of RAM. Be it heavy multitasking or games like PUBG Mobile and Asphalt 9, the phone barely struggles at all. The Redmi Note 7 Pro runs MIUI 10 based on Android 9 Pie, and even though it is rich in features, you will also have to see pesky ads. \r\n\r\nThe phone’s 48-megapixel main camera captures beautiful images with ample detail, high dynamic range, and good vibrancy. The night mode also performs well, while selfies captured by the 32-megapixel front camera also look sharp with natural colours and edge detection in bokeh mode. The 4,000mAh battery ensures that the Redmi Note 7 Pro easily sails past a full day of usage, while support for Qualcomm\'s Quick Charge 4.0 fast charging technology helps to quickly top up the battery.', 0, '', '', '', 1),
(14, 1, 'Redmi Note 4', 9999, 8599, 4, '766467214_pms_1484816921.64484437_425x535.jpg', 'The Xiaomi Redmi Note 4 64GB flaunts a 5.5-inch IPS LCD full HD (1,080 x 1,920 pixels) display and weighs 175 grams. It has a pixel density of 401ppi. For processing the system, there is an octa-core processor that clocks at a speed of 2GHz. It is coupled with 4GB of RAM.', 'The Xiaomi Redmi Note 4 64GB brings more uniform metal texture, different from the previous \'three-stage\' metal Redmi series body. The independent space system is like having an additional cell phone. The users can play high-end games and enjoy multitasking apps without any lag. In short, the Redmi Note 4 is one of the perfect allrounder smartphones for you.\r\n\r\nAn amazing performer\r\nDisplay and Configuration\r\nThe Xiaomi Redmi Note 4 64GB flaunts a 5.5-inch IPS LCD full HD (1,080 x 1,920 pixels) display and weighs 175 grams. It has a pixel density of 401ppi. For processing the system, there is an octa-core processor that clocks at a speed of 2GHz. It is coupled with 4GB of RAM. The system boots on Android v6.0.1 (Marshmallow) operating system and is available in four colours - black, gold, grey and lake blue.\r\nCamera and Storage\r\nIn terms of photography, there is a 13MP main snapper (2.0 F aperture) inclusive of dual-color LED flash. Selfie lovers can capture images via the 5MP front shooter. On the storage ground, the device houses an internal memory of 64GB which can be further expanded up to a massive 128GB via a microSD card.\r\nBattery and Connectivity\r\nIn order to keep the show running for long hours, there is a 4,100mAh Li-polymer battery which can run up to an entire day even with heavy usage. In normal usage, the battery can run up to two days and one can also navigate GPS and have other standard usages for around 12 hours on a single charge. Connectivity options include dual-SIM, 4G (supports Indian bands), Wi-Fi 802.11, a/ac/b/g/n, Mobile Hotspot, Bluetooth v4.2, GPS with A-GPS, GLONASS and USB Type C.\r\nSpecial features\r\nThe Redmi Note 4 has a fingerprint sensor at the back which can not only unlock the phone but can also be used to pay for purchases and view private files (into the privacy of children or management mode). \r\nThe handset also features a built-in mobile avatar which allows two independent space systems. Thereby, one can unlock the phone in two different gestures and secure their private files easily.', 0, '', '', '', 1),
(15, 5, 'Poco M2', 10999, 9999, 28, '861610014_xiaomi-poco-m2-mzb9921in-1.jpg', 'Poco M2 Summary The phone comes with a 6.53-inch touchscreen display with a resolution of 1080x2340 pixels. Poco M2 is powered by an octa-core MediaTek Helio G80 processor. It comes with 6GB of RAM. The Poco M2 runs Android 10 and is powered by a 5000mAh battery.', 'Poco M2 smartphone was launched on 8th September 2020. The phone comes with a 6.53-inch touchscreen display with a resolution of 1080x2340 pixels. Poco M2 is powered by an octa-core MediaTek Helio G80 processor. It comes with 6GB of RAM. The Poco M2 runs Android 10 and is powered by a 5000mAh battery. The Poco M2 supports proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Poco M2 on the rear packs a 13-megapixel primary camera; a second 8-megapixel camera; a third 5-megapixel camera and a fourth 2-megapixel camera. The rear camera setup has autofocus. It sports a 8-megapixel camera on the front for selfies.\r\n\r\nThe Poco M2 runs MIUI for Poco based on Android 10 and packs 64GB of inbuilt storage that can be expanded via microSD card with a dedicated slot. The Poco M2 is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards. It was launched in Brick Red, Pitch Black, and Slate Blue colours.\r\n\r\nConnectivity options on the Poco M2 include Wi-Fi, GPS, Bluetooth v5.00, Infrared, USB Type-C, FM radio, 3G, and 4G. Sensors on the phone include accelerometer, ambient light sensor, proximity sensor, and fingerprint sensor.\r\n\r\nAs of 28th January 2021, Poco M2 price in India starts at Rs. 9,999.', 0, '', '', '', 1),
(16, 5, 'Poco M2 Pro', 12999, 11999, 30, '765743768_Xiaomi-Poco-M2-Pro-Green-and-Greener-600x600_425x535.jpg', 'Xiaomi Poco M2 Pro functions on Qualcomm Snapdragon 720G chipset and an Octa-core Kryo 465 processor setup running at a clock speed of 2.3GHz and 1.8GHz. The device comes with 4GB RAM and Adreno 618 GPU, offering a smooth multitasking and gaming experience.', 'The Poco M2 Pro has an attractive design and is built well, but it also looks very similar to the Redmi Note 9 Pro. It features a P2i water-repellent coating, which is said to make it splash-proof. Poco has used a 6.67-inch full-HD+ LCD display, with a cutout for the selfie camera. You also get Gorilla Glass 5 on the front, back, and the rear camera module. One feature that\'s missing is a high refresh rate.\r\n\r\nThe Poco M2 Pro runs on MIUI 11, which is based on Android 10, and my unit had the June security patch. Apart from having the Poco Launcher as a default, the features and functionality are very similar to what you get on Redmi devices.\r\n\r\nMIUI and app performance were superb thanks to the Qualcomm Snapdragon 720G SoC. Navigating through MIUI\'s interface felt snappy, multitasking worked well, and apps in general were quick to load. Gaming performance was very good too. The 5,000mAh capacity easily lasted for an entire day, even with lots of gaming and camera usage.\r\n\r\nThe Poco M2 Pro has four rear cameras, which include a primary 48-megapixel sensor, an 8-megapixel sensor with a wide-angle lens, a 5-megapixel macro camera, and a 2-megapixel depth camera. You get a 16-megapixel hole-punch selfie camera. Overall, the cameras of the Poco M2 Pro performed decently under good light, but struggled to deliver satisfactory results in low light.', 0, '', '', '', 1),
(17, 5, 'Poco F1', 16999, 12999, 10, '340267992_pms_1534849164.07512520_425x535.png', 'Poco is a sub-brand from Xiaomi that has launched the F1 as its first offering in the country. It has a 6.18-inch display with an 18.7:9 aspect ratio and Corning Gorilla Glass 3 protection on top. Powering the Poco F1 is the Snapdragon 845 processor and it comes in different RAM and storage options.', 'Poco is a sub-brand from Xiaomi that has launched the F1 as its first offering in the country. It has a 6.18-inch display with an 18.7:9 aspect ratio and Corning Gorilla Glass 3 protection on top. Powering the Poco F1 is the Snapdragon 845 processor and it comes in different RAM and storage options. It has a dual camera setup on the back consisting of a 12-megapixel primary camera and a 5-megapixel depth sensor. At the front, it has a 20-megapixel selfie camera. The F1 runs on MIUI 9.6 on top of Android 8.1 Oreo. The phone packs in a 4000mAh battery and has support for Qualcomm’s Quick Charge 3. It is a dual hybrid SIM slot and has support for 4G as well as VoLTE.', 0, '', '', '', 1),
(18, 4, 'Realme X2', 18999, 20999, 16, '338223504_1576140735191_425x535.jpg', 'The Realme X2 is powered by a Qualcomm Snapdragon 730G SoC, making it the first smartphone under Rs. 20,000 to have it. It\'s designed around the Realme XT, with nearly idential ports and button placement. It also features a dewdrop notch with a large, Super AMOLED display and a in-display fingerprint sensor.', 'The Realme X2 is powered by a Qualcomm Snapdragon 730G SoC, making it the first smartphone under Rs. 20,000 to have it. It\'s designed around the Realme XT, with nearly idential ports and button placement. It also features a dewdrop notch with a large, Super AMOLED display and a in-display fingerprint sensor. The phone fetaures two Nano-SIM card slots and a dedicated slot for a microSD card. \r\n\r\nIt\'s available in three variants, with the first starting at Rs. 16,999. We tested the top-end varaint, which had 8GB of RAM and 128GB of storage at Rs. 20,000. ColorOS offers lots of customisation and runs smoothly. Gaming performance is especially good and we didn\'t notice any overheating issues either. The bottom speaker gets loud thanks to Dolby Atmos enhancements.\r\n\r\nThe front camera is a 32-megapixel sensor and captures good quality selfies under good light. The rear quad cameras are exactly the same as the Realme XT. The main 64-megapixel sensor shoots sharp images in daylight and Nightscape works well for low-light shots. The widde-angle camera is competent too, given enough light. There\'s also two, 2-megapixel cameras for depth and macro shots. \r\n\r\nBattery life is decent as the 4,000mAh battery easily lasts for more than a day. However, it does have very fast charging thanks to the VOOC Flash Charge 4.0 standard, which can fully charge the battery in little over an hour.', 0, '', '', '', 1),
(19, 4, 'Realme 7', 18999, 16999, 40, '793620902_0bbb46a1303ae4bf80d8a4a396386442_425x535.jpg', 'The Realme 7 sports an IPS LCD display of 6.5 inches (16.51 cm). The device ensures vivid display to the users via a screen resolution of 1080 x 2400 pixels. Additionally, it flaunts a pixel density of 405ppi. and a refresh rate of 90Hz.', 'The Realme 7 brings in three main upgrades over the Realme 6 — a new SoC, a bigger battery, and a new primary camera sensor. It features a mirror-split design, which creates some interesting patterns when light hits it. The Realme 7 is actually thicker (9.4mm) and heavier (196.5g) than the 6, due to its larger battery, and this is very noticeable in daily usage.\r\n\r\nThe Realme 7 is the first phone to debut with the MediaTek Helio G95 SoC. This is an updated version of the Helio G90T, which was seen in the Realme 6, but it\'s not a major upgrade. Performance is pretty satisfactory. The Realme 7 uses Realme UI, based on Android 10, which worked smoothly. Face recognition and the side-mounted fingerprint sensor are also quick. The Realme 7 is good with games too. Battle Prime looked great at the highest graphics settings and gameplay was smooth.\r\n\r\nThe Realme 7 gets a chunky, 5,000mAh battery and you can charge the battery fairly quickly too, thanks to the 30W Dart Charge fast charging.\r\n\r\nThe new primary rear camera in the Realme 7 offers a noticeable improvement in pixel-binned images, comapred to the Realme 6. It exhibits improved dynamic range and exposure, with better details too. Low light photos look cleaner too, with less grain. Shots captured using Night mode look more pleasing, compared to what the Realme 6 can produce. The Realme 7 can shoot videos at up to 4K, but without stabilisation. Colours are a bit on the warmer side.', 0, '', '', '', 1),
(20, 4, 'Realme Narzo 20', 11499, 10499, 50, '710680442_684eca7496ef5c9c52b8bf710382536e_425x535.jpg', 'Realme Narzo 20 features a 6.5-inch IPS LCD display, having a pixel density of 270ppi. The smartphone has a screen resolution of 720 x 1600 pixels, along with an aspect ratio of 20:9. Further, the bezel-less waterdrop notch display of the device is protected by Corning Gorilla Glass v3.', 'The Realme Narzo 20 is a more powerful version of the Realme C12 and C15 thanks to its MediaTek Helio G85 processor. The rest of the core specifications are much the same, and all devices even have identical dimensions and designs. The 6000mAh battery is a big selling point and does deliver nearly two full days of casual usage, but contributes to the overall weight and bulk of this phone. The 6.5-inch HD+ display isn\'t the best that you can get in this price range but it\'s adequate for entertainment and work.\r\n\r\nYou get three rear cameras, and there are few gimmicks this time. The primary 48-megapixel camera takes decent shots and there\'s a Night mode that might help improve the definition of photos shot at night. The ultra-wide-angle camera produces warped results, and the macro camera is too low-resolution to be of much use but could be fun now and then.\r\n\r\nThis is overall a fairly decent budget smartphone, but Realme runs the risk of confusing buyers iwth its overlapping lineup.', 0, '', '', '', 1),
(21, 7, 'Oppo A52', 16990, 14990, 30, '740301320_Oppo-A52-A_425x535.jpg', 'Oppo A52 Full Specifications. General. Brand. Oppo. Model. Display. Screen size (inches) 6.50. Touchscreen. Hardware. Processor. octa-core. Processor make. Camera. Rear camera. 12-megapixel + 8-megapixel + 2-megapixel + 2-megapixel. Front camera. Software. Operating system. Android 10. Connectivity. Wi-Fi. Yes. Sensors. ...', 'Oppo A52 The phone comes with a 6.50-inch touchscreen display with a resolution of 1080x2400 pixels at a pixel density of 480 pixels per inch (ppi). Oppo A52 is powered by an octa-core Qualcomm Snapdragon 665 processor. It comes with 8GB of RAM. The Oppo A52 runs Android 10 and is powered by a 5000mAh non-removable battery. The Oppo A52 supports proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Oppo A52 on the rear packs a 12-megapixel primary camera; a second 8-megapixel camera; a third 2-megapixel camera and a fourth 2-megapixel camera. It sports a 8-megapixel camera on the front for selfies.\r\n\r\nThe Oppo A52 runs ColourOS 7.1 based on Android 10, and supports storage expansion via microSD card (up to 256GB). The Oppo A52 measures 162.00 x 75.50 x 8.90mm (height x width x thickness) and weighs 192.00 grams. It was launched in Twilight Black and Stream White colours.\r\n\r\nConnectivity options on the Oppo A52 include Wi-Fi, GPS, USB Type-C, and FM radio with active 4G on both SIM cards. Sensors on the phone include accelerometer, temperature sensor, and proximity sensor.\r\n\r\nAs of 28th January 2021, Oppo A52 price in India starts at Rs. 16,990.', 0, '', '', '', 1),
(22, 7, 'Oppo F15', 20999, 15999, 10, '288017231_oppo-f15-9269_425x535.jpg', 'OPPO F15 is seated on a MediaTek Helio P70 chipset. It is backed by an octa-core processor that consists of a 2.1GHz Cortex A73 quad-core and a 2GHz Cortex A53 quad-core. It depends on a Mali-G72 MP3 GPU for graphics. It has an 8GB RAM to fulfil the gaming and multitasking requirement of the smartphone.', 'The Oppo F15 is the successor to the Oppo F11 and features a new, slim design, USB Type-C port, an in-display fingerprint sensor and four rear cameras. The new finish looks nice and the phone feels light to hold. The 6.4-inch AMOLED display gets bright and has good sharpness, thanks to the full-HD+ resolution. \r\n\r\nIt\'s powered by the MediaTek Helio P70, which is a little underpowered for a phone at Rs. 19,990. There\'s also 8GB of RAM and 128GB of expandable storage. The F15 runs on ColorOS 6, which is based on Android 9 Pie. General app pperformance is good and the phone handles games fairly well too. The 4,000mAh battery also offers solid battery life and there\'s fast charging, through VOOC 3.0 Flash Charge. \r\n\r\nThe primary 48-megapixel sensor captures good, pixel-binned photos but you cant shoot at the full, 48-megapixel resolution. The 8-megapixel wide-angle camera has autofocus, so it can be used for very close-up shots. Low-light performance is a it inadeqate and there\'s no support for 4K shooting.', 0, '', '', '', 1),
(23, 6, 'Nokia 7.2', 18999, 16399, 10, '569736004_nokia-72-1_425x535.jpg', 'The phone is powered by Octa core (2.2 GHz, Quad core, Kryo 260 + 1.8 GHz, Quad core, Kryo 260) processor. It runs on the Qualcomm Snapdragon 660 Chipset. It has 4 GB RAM and 64 GB internal storage. Nokia 7.2 smartphone has a IPS LCD display.', 'The Nokia 7.2 offers three rear cameras and a premium new design, plus a high-quality display, and the promise of stock Android with regular updates. This phone feels very premium thanks to a metal frame and frosted glass rear. However, this phone is fairly bulky, and the circular camera module on the back sticks out a bit. \r\n\r\nThis phone is powered by the Qualcomm Snapdragon 660 SoC which might feel underpowered for this price segment. Storage is constant at 64GB but you can choose between 4GB and 6GB of RAM. The 6.3-inch full-HD+ HDR10 display is a highlight, and HMD Global boasts of being able to upscale SD video to HD. There\'s a 3500mAh battery and 10W fast charging. Performance is good enough for day-to-day tasks but some games struggled to run smoothly. Photos taken with the 48-megapixel camera were sharp and detailed, with slightly oversaturated colours. Low-light shots were underwhelming.', 0, '', '', '', 1),
(24, 6, 'Nokia 3310', 3599, 2999, 30, '291235168_3310-nokia-2017_425x535.jpg', 'Nokia 3310 4G Full Specifications. General. Brand. Nokia. Model. 3310 4G. Launched. Display. Screen size (inches) 2.40. Touchscreen. No. Hardware. RAM. 256MB. Internal storage. 512MB. Camera. Rear camera. 2-megapixel. Rear flash. LED. Software. Operating system. Android. Skin. YunOS. Connectivity. Wi-Fi. Yes. Wi-Fi ...', 'Nokia 3310 4G smartphone was launched in January 2018. The phone comes with a 2.40-inch display with a resolution of 240x320 pixels.Nokia 3310 4G comes with 256MB of RAM. The Nokia 3310 4G runs Android and is powered by a 1200mAh removable battery.\r\n\r\nAs far as the cameras are concerned, the Nokia 3310 4G on the rear packs 2-megapixel camera.\r\n\r\nThe Nokia 3310 4G runs YunOS based on Android and packs 512MB of inbuilt storage that can be expanded via microSD card (up to 64GB). The Nokia 3310 4G is a single SIM (GSM) smartphone that accepts a Micro-SIM card. The Nokia 3310 4G measures 117.00 x 52.40 x 13.35mm (height x width x thickness) and weighs 88.10 grams. It was launched in Fresh Blue and Dark Black colours.\r\n\r\nConnectivity options on the Nokia 3310 4G include Wi-Fi 802.11 b/g/n, Bluetooth v4.00, FM radioWi-Fi Direct, 3G, and 4G (with support for Band 40 used by some LTE networks in India).', 0, '', '', '', 1),
(25, 1, 'mi 10i', 21999, 19999, 10, '405983956_Redmi-Note-9-Pro-5G-Lake-Light-and-Autumn-Scenery_425x535.jpg', 'The Mi 10i is relatively affordable but still offers a 108-megapixel primary camera, 5G, an IP53 rating, and Qualcomm Snapdragon 750G processor. It also has some neat touches including a notification LED, 3.5mm audio socket, and stereo speakers.', 'Xiaomi Mi 10i is a mid-range smartphone that comes with a decent specs sheet having a stunning display, great performance, excellent camera setup, ample storage space, and a long battery life with 33W Fast Charging support. Further, users will also get access to the latest Android version (Q) and an on-screen fingerprint sensor. However, the device weighs on the bulky side, making it difficult for prolonged one-handed use. \r\n\r\nMid-budget offering from Xiaomi with decent specifications\r\nDisplay and Camera\r\nXiaomi Mi 10i flaunts a 6.67-inch FHD+ AMOLED display having a pixel density of 395ppi, which offers great viewing angles. The screen, which gets a Corning Gorilla Glass v5 protection, features a resolution of 1080 x 2400 pixels and an aspect ratio of 20:9, ensuring a stunning visual experience. Further, the bezel-less display of the device is assisted with a punch-hole design that holds the front camera.\r\nThe smartphone boasts of a superior quad-camera setup comprising a 108MP main sensor, backed by an 8MP ultra-wide-angle lens along with a 2MP Macro Camera and another 2MP Depth Camera respectively. The rear camera is built with an Exmor-RS CMOS Sensor and comes with features like Dual LED Flash, Autofocus, HDR, Continuous Shooting, Touch to focus, Face Detection, Auto Flash, and Digital Zoom. The front camera gets a 16MP main sensor that captures impressive portraits.\r\nConfiguration and Battery\r\nXiaomi Mi 10i is powered by a robust Qualcomm Snapdragon 750G chipset, backing which is an octa-core Kryo 570 processor setup comprising Dual core 2.2GHz and Hexa core 1.8GHz. The Adreno 619 GPU fulfils the graphical requirements of the device, along with 6GB RAM that ensures smooth gaming and multitasking.\r\nThe smartphone provides an excellent backup for an entire day with its 4,820mAh non-replaceable Li-Polymer battery. It is accompanied by a 33W Fast Charging technology.\r\nStorage and Connectivity\r\nXiaomi Mi 10i has an inbuilt memory space of 64GB which can be expanded up to 512GB. The network and connectivity options of the smartphone include 4G VoLTE, WiFi, Mobile Hotspot, v5.0 Bluetooth, A-GPS with Glonass, NFC, and Type-C USB.', 0, '', '', '', 1),
(26, 7, 'Oppo Reno 5 Pro', 35990, 33999, 10, '492876421_168419_2_425x535.jpg', 'Oppo Reno 5 Pro 5G smartphone was launched on 10th December 2020. The phone comes with a 6.55-inch touchscreen display with a resolution of 1080x2400 pixels at a pixel density of 402 pixels per inch (ppi). Oppo Reno 5 Pro 5G is powered by an octa-core MediaTek Dimensity 1000+ processor. It comes with 8GB of RAM', 'Oppo Reno 5 Pro 5G smartphone was launched on 10th December 2020. The phone comes with a 6.55-inch touchscreen display with a resolution of 1080x2400 pixels at a pixel density of 402 pixels per inch (ppi). Oppo Reno 5 Pro 5G is powered by an octa-core MediaTek Dimensity 1000+ processor. It comes with 8GB of RAM. The Oppo Reno 5 Pro 5G runs Android 11 and is powered by a 4350mAh battery. The Oppo Reno 5 Pro 5G supports proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Oppo Reno 5 Pro 5G on the rear packs a 64-megapixel primary camera with an f/1.7 aperture; a second 8-megapixel camera with an f/2.2 aperture; a third 2-megapixel camera with an f/2.4 aperture and a fourth 2-megapixel camera with an f/2.4 aperture. The rear camera setup has autofocus. It sports a 32-megapixel camera on the front for selfies.\r\n\r\nThe Oppo Reno 5 Pro 5G runs ColorOS 11.1 based on Android 11 and packs 128GB of inbuilt storage. The Oppo Reno 5 Pro 5G is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards. The Oppo Reno 5 Pro 5G measures 159.70 x 73.20 x 7.60mm (height x width x thickness) and weighs 173.00 grams. It was launched in Aurora Blue, Moonlight Night, Starry Night, and Star Wish Red colours.\r\n\r\nConnectivity options on the Oppo Reno 5 Pro 5G include Wi-Fi, GPS, Bluetooth v5.10, USB Type-C, 3G, and 4G. Sensors on the phone include accelerometer, ambient light sensor, gyroscope, proximity sensor, and in-display fingerprint sensor. The Oppo Reno 5 Pro 5G supports face unlock.', 0, '', '', '', 1),
(27, 4, 'Realme X50 Pro', 34599, 33999, 10, '716302224_814ItBpUBmL._AC_SX522__425x535.jpg', 'The Realme X50 Pro is 5G ready and features the top-end Qualcomm Snapdragon 865 processor. In terms of performance, this device is excellent for gaming as well as general productivity. Realme has also used high-speed RAM and storage, plus a 90Hz display, for a snappy overall experience.', 'The Realme X50 Pro is 5G ready and features the top-end Qualcomm Snapdragon 865 processor. In terms of performance, this device is excellent for gaming as well as general productivity. Realme has also used high-speed RAM and storage, plus a 90Hz display, for a snappy overall experience. This is a mid-range flagship phone that truly can take on many of the much more expensive models in the market. \r\n\r\nThe X50 Pro 5G is available in two muted colour options and looks quite premium with its glass and metal body. However, the back is slippery and this phone is somewhat bulky and heavy. What you\'ll notice first is the dual-camera cutout in the upper left corner of the screen.\r\n\r\nThe display is sharp and the speakers are surprisingly powerful. You get four rear cameras including a 2X optical zoom camera. We found photos to generally be very good, even ones shot with the lower-resolution wide-angle and zoom cameras. However, photos taken at night weren\'t always great, and 4K video looked artificial.', 0, '', '', '', 1),
(28, 5, 'Poco X3', 19990, 18999, 20, '292140408_155797-800-auto_50.png', 'Poco X3 is powered by an octa-core Qualcomm Snapdragon 732G processor. It comes with 6GB of RAM. The Poco X3 runs Android 10 and is powered by a 6000mAh battery. ... The Poco X3 is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards.', 'Poco X3 smartphone was launched on 22nd September 2020. The phone comes with a 6.67-inch touchscreen display with a resolution of 1080x2340 pixels. Poco X3 is powered by an octa-core Qualcomm Snapdragon 732G processor. It comes with 6GB of RAM. The Poco X3 runs Android 10 and is powered by a 6000mAh battery. The Poco X3 supports proprietary fast charging.\r\n\r\nAs far as the cameras are concerned, the Poco X3 on the rear packs a 64-megapixel primary camera with an f/1.73 aperture; a second 13-megapixel camera with an f/2.2 aperture; a third 2-megapixel camera with an f/2.4 aperture and a fourth 2-megapixel camera with an f/2.4 aperture. The rear camera setup has autofocus. It sports a 20-megapixel camera on the front for selfies, with an f/2.2 aperture.\r\n\r\nThe Poco X3 runs MIUI 12 based on Android 10 and packs 64GB of inbuilt storage that can be expanded via microSD card. The Poco X3 is a dual-SIM (GSM and GSM) smartphone that accepts Nano-SIM and Nano-SIM cards. The Poco X3 measures 165.30 x 76.80 x 9.40mm (height x width x thickness) and weighs 215.00 grams. It was launched in Cobalt Blue and Shadow Grey colours.\r\n\r\nConnectivity options on the Poco X3 include Wi-Fi, GPS, NFC, Infrared, USB Type-C, 3G, and 4G. Sensors on the phone include accelerometer, ambient light sensor, gyroscope, proximity sensor, and fingerprint sensor.\r\n\r\nAs of 28th January 2021, Poco X3 price in India starts at Rs. 15,999.', 0, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` int(11) NOT NULL,
  `payment_type` varchar(250) NOT NULL,
  `total_price` float NOT NULL,
  `payment_status` varchar(250) NOT NULL,
  `order_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `city`, `pincode`, `payment_type`, `total_price`, `payment_status`, `order_status`, `added_on`) VALUES
(1, 0, 'mitai,laal', 'mirzepur', 231501, 'COD', 50345, 'pending', 2, '2021-01-25 07:57:11'),
(2, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 50000, 'pending', 1, '2021-01-25 08:09:22'),
(3, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 999, 'pending', 2, '2021-01-25 08:22:52'),
(4, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 50000, 'pending', 2, '2021-01-25 08:56:22'),
(5, 1, 'varanasi', 'varanasi', 221005, 'COD', 999, 'pending', 1, '2021-01-25 04:30:34'),
(6, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 33999, 'pending', 4, '2021-02-05 04:23:16'),
(7, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 86997, 'pending', 2, '2021-02-07 04:20:18'),
(8, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'payu', 44498, 'pending', 1, '2021-02-08 06:51:55'),
(9, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 115994, 'pending', 1, '2021-02-08 04:17:21'),
(10, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'payu', 54997, 'pending', 1, '2021-02-08 04:22:14'),
(11, 1, 'MITAI JALALPUR KACHHAWA MIRZAPUR', 'Mirzapur', 231501, 'COD', 85196, 'pending', 4, '2021-02-10 06:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `model_id`, `qty`, `price`) VALUES
(1, 3, 8, 1, 999),
(2, 4, 3, 1, 50000),
(3, 5, 8, 1, 999),
(4, 6, 26, 1, 33999),
(5, 7, 27, 1, 33999),
(6, 7, 26, 1, 33999),
(7, 7, 28, 1, 18999),
(8, 8, 20, 1, 10499),
(9, 8, 27, 1, 33999),
(10, 9, 27, 1, 33999),
(11, 9, 23, 5, 16399),
(12, 10, 17, 1, 12999),
(13, 10, 18, 2, 20999),
(14, 11, 27, 2, 33999),
(15, 11, 14, 2, 8599);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'pending'),
(2, 'completed'),
(3, 'Processing'),
(4, 'shipped'),
(5, 'canceled');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `mobile`, `added_on`) VALUES
(0, 'harsh', 'himanshu', 'hs232@gmail.com', '1234567890', '2021-01-18 10:01:50'),
(1, 'Himanshu Singh', 'singh1234', 'hs23@gmail.com', '2321223322', '2021-01-12 13:08:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
