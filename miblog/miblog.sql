-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2020 at 08:01 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `user_id`, `category_name`, `created_at`) VALUES
(1, 1, 'Human Rights', '2020-05-16 15:14:09'),
(3, 1, 'Women Rights', '2020-05-16 15:15:02'),
(10, 1, 'Blogs', '2020-05-18 05:13:15'),
(11, 1, 'Blogs data', '2020-05-19 17:38:32'),
(12, 1, 'Title coolar', '2020-05-20 10:52:28'),
(13, 3, 'Blogs data', '2020-05-20 17:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(2, 29, 'nb bns  s', 'saur@gmail.com', ' asvjhwvhjv', '2020-05-20 17:56:11'),
(3, 29, 'hello', 'hi@gmail.com', ' this', '2020-05-20 17:57:35');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(10, 1, 1, 'We stand with Prime Minister Modi on Sunday 9 PM for 9 Minutes', 'We-stand-with-Prime-Minister-Modi-on-Sunday-9-PM-for-9-Minutes', '<p>Indian enters its tenth day of nationwide lockdown. Last few days it saw a steep rise in the total number of COVID-19 positive cases. It has over 2,300 coronavirus cases with 56 deaths included.&nbsp;In the wake of this rising number of COVID-19 cases, Prime Minister Narendra Modi shared a video message at 9 AM on Friday.</p>\r\n\r\n<p>PM Narendra Modi hailed the citizens for<em> &quot;discipline and spirit of service</em>&quot; they have shown during these times. He urged 1.30 crore Indians to turn off lights and light lamps, candles or phone flashlights on April 5th, 2020, Sunday 9 PM for 9 minutes. The lamps will be lit to show the power of light to fight against coronavirus.&nbsp;</p>\r\n\r\n<p>He said <strong><em>&quot;On Sunday 5th April, at 9 pm, I want 9 minutes from all of you. Turn off all the lights in your homes, stand at your doors or balconies and light candles, diyas (lamp) or mobile flashlights for 9 minutes.&quot;</em></strong></p>\r\n\r\n<p>PM Modi further explained <strong><em>&quot;We must all together, challenge the darkness spread by the coronavirus crisis, introducing it to the power of light. None of us is alone during the lockdown. The united superpower of 130 crore Indians is with every citizen.&quot;</em></strong></p>\r\n\r\n<p>The Prime Minister also laid emphasis that no one must step out to risk their lives by gathering on streets. He said <strong><em>&quot;Please do not go out on to the roads, lanes or your localities. Light lamps at your home&#39;s doorstep or balconies. Must never cross the Lakshman Rekha (boundary) of social distancing. The only way to break the chain of coronavirus is to maintain social distancing.&quot;</em></strong>&nbsp;</p>\r\n\r\n<p>PM also said, &quot;The way you paid gratitude to the people fighting against COVID-19, on March 22 has become a model that is being copied by other countries. Janata Curfew and ringing utensils/bells made the entire country aware of its unity amidst the challenging times.&quot;&nbsp;</p>\r\n\r\n<p><strong><em>We urge all citizens to stand by PM&#39;s request to #turnofflights #lightlamps on 5th April at 9 PM for 9 minutes.&nbsp;</em></strong></p>\r\n\r\n<p>It will be like #DiwaliLights.</p>\r\n\r\n<p>#PMNarendra #ModiPM #ModiFull #SpeechApril5 #Indialockdown #turnofflights #lightlamps</p>\r\n', 'pic25.jpeg', '2020-05-16 07:07:13'),
(12, 1, 3, 'I Stand in Solidarity with Doctors during COVID-19', 'I-Stand-in-Solidarity-with-Doctors-during-COVID-19', '<p>Coronavirus (COVID19) pandemic has caused 47,518 deaths worldwide as of 2nd April 2020. More than 9 lakh people got infected and 2 lakh people have recovered from the disease. World over doctors and paramedics work odd hours to help patients recover - even though social distancing is a must. These doctors survive under high stress without proper protective equipment risking their lives - to save our lives.</p>\r\n\r\n<p>100s of doctors in China, Spain and Italy have died due to catching the coronavirus while treating patients. People across the world are praying, blessing and applauding doctors - especially the ones who are in the frontline in ICU&#39;s and wards.&nbsp;</p>\r\n\r\n<p><strong>It is appalling to see cases of doctors being attacked in several places in India.&nbsp;</strong></p>\r\n\r\n<p><strong>Doctors across India have expressed their deep concern over the current situation of COVID-19 pandemic. There is a limit to what the doctors can take in. Doctors are working odd hours in unsuitable conditions, without proper (PPE) equipment to treat Coronavirus patients.</strong></p>\r\n\r\n<p><strong>If this goes on and doctors stop treating patients - how will we overcome the Pandemic of Coronavirus. How will doctors provide healthcare to Indians in the coming days?&nbsp;</strong></p>\r\n\r\n<p>Yesterday, in <strong>Tat Patti Bakhal area of Indore</strong> two women doctors got injured on their legs when they were attacked by locals with stones. They were part of a team who were locating people probably infected with Coronavirus. The team comprised of five people out of which there were three doctors. 4 people have been arrested by the police.&nbsp;</p>\r\n\r\n<p>An angry COVID-19 patient lost his cool and attacked a doctor in<strong> Gandhi Nagar isolation ward, Hyderabad</strong> because his brother died due to coronavirus. Police had to be called in to protect the doctor.&nbsp;</p>\r\n\r\n<p><strong>Members of Tablighi Jamaat were shifted to isolation wards in Delhi</strong> because of symptoms of COVID-19. They misbehaved with the doctors and staff by abusing staff members and<strong> started spitting on persons who were attending to them.</strong> Not only this, they even made unreasonable demands on food and broke the quarantine by roaming around in the hostel.&nbsp;</p>\r\n\r\n<p><strong>We at callupon.org - URGE 1.33 Million People of India to stand in solidarity with the Doctors during the COVID-19 Pandemic.&nbsp;</strong></p>\r\n\r\n<p>#StandInSolidarity #Respect Doctors #COVID19&nbsp;</p>\r\n', 'pic27.jpeg', '2020-05-16 11:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'saurabh', '123456', 'saurabh@gmail.com', 'saurabh', '25d55ad283aa400af464c76d713c07ad', '2020-05-19 17:38:08'),
(2, 'mira', '123456', 'mira@gmail.com', 'mira', '25d55ad283aa400af464c76d713c07ad', '2020-05-19 17:38:08'),
(3, 'saur', '123444', 'saur@gmail.com', 'saur', '25d55ad283aa400af464c76d713c07ad', '2020-05-20 16:08:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
