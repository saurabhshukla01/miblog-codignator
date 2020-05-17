-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 02:49 PM
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
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`) VALUES
(1, 'Human Rights', '2020-05-16 15:14:09'),
(2, 'Child Rights', '2020-05-16 15:14:09'),
(3, 'Women Rights', '2020-05-16 15:15:02'),
(4, 'Local', '2020-05-16 15:15:02'),
(5, 'Animal', '2020-05-17 11:54:54'),
(6, 'Health', '2020-05-17 11:54:54'),
(7, 'Policties', '2020-05-17 11:56:25'),
(8, 'Environment', '2020-05-17 11:56:25');

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
(3, 1, 1, 'Title one', 'Title-one', ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ', 'noimage.jpg', '2020-05-12 07:52:28'),
(4, 1, 1, 'Blog-post-4', 'Blog-post-4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'about_1.jpg', '2020-05-15 02:56:55'),
(5, 1, 1, 'Blog-post-5', 'Blog-post-5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'bulk-sms.png', '2020-05-15 02:58:12'),
(6, 1, 1, 'Blog-Post-6', 'Blog-Post-6', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'China-network.jpg', '2020-05-15 02:59:38'),
(7, 1, 1, 'Title Seven', 'Title-Seven', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ', 'DBS.jpg', '2020-05-15 03:00:56'),
(8, 1, 1, 'Title Six', 'Title-Six', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'DBS.jpg', '2020-05-16 04:34:54'),
(9, 1, 1, 'Title Five', 'Title-Five', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ', 'bulk-sms.png', '2020-05-16 04:34:54'),
(10, 1, 1, 'We stand with Prime Minister Modi on Sunday 9 PM for 9 Minutes', 'We-stand-with-Prime-Minister-Modi-on-Sunday-9-PM-for-9-Minutes', '<p>Indian enters its tenth day of nationwide lockdown. Last few days it saw a steep rise in the total number of COVID-19 positive cases. It has over 2,300 coronavirus cases with 56 deaths included.&nbsp;In the wake of this rising number of COVID-19 cases, Prime Minister Narendra Modi shared a video message at 9 AM on Friday.</p>\r\n\r\n<p>PM Narendra Modi hailed the citizens for<em> &quot;discipline and spirit of service</em>&quot; they have shown during these times. He urged 1.30 crore Indians to turn off lights and light lamps, candles or phone flashlights on April 5th, 2020, Sunday 9 PM for 9 minutes. The lamps will be lit to show the power of light to fight against coronavirus.&nbsp;</p>\r\n\r\n<p>He said <strong><em>&quot;On Sunday 5th April, at 9 pm, I want 9 minutes from all of you. Turn off all the lights in your homes, stand at your doors or balconies and light candles, diyas (lamp) or mobile flashlights for 9 minutes.&quot;</em></strong></p>\r\n\r\n<p>PM Modi further explained <strong><em>&quot;We must all together, challenge the darkness spread by the coronavirus crisis, introducing it to the power of light. None of us is alone during the lockdown. The united superpower of 130 crore Indians is with every citizen.&quot;</em></strong></p>\r\n\r\n<p>The Prime Minister also laid emphasis that no one must step out to risk their lives by gathering on streets. He said <strong><em>&quot;Please do not go out on to the roads, lanes or your localities. Light lamps at your home&#39;s doorstep or balconies. Must never cross the Lakshman Rekha (boundary) of social distancing. The only way to break the chain of coronavirus is to maintain social distancing.&quot;</em></strong>&nbsp;</p>\r\n\r\n<p>PM also said, &quot;The way you paid gratitude to the people fighting against COVID-19, on March 22 has become a model that is being copied by other countries. Janata Curfew and ringing utensils/bells made the entire country aware of its unity amidst the challenging times.&quot;&nbsp;</p>\r\n\r\n<p><strong><em>We urge all citizens to stand by PM&#39;s request to #turnofflights #lightlamps on 5th April at 9 PM for 9 minutes.&nbsp;</em></strong></p>\r\n\r\n<p>It will be like #DiwaliLights.</p>\r\n\r\n<p>#PMNarendra #ModiPM #ModiFull #SpeechApril5 #Indialockdown #turnofflights #lightlamps</p>\r\n', '', '2020-05-16 07:07:13'),
(11, 1, 1, 'We all Demand Strict Action against Lockdown Violators', 'We-all-Demand-Strict-Action-against-Lockdown-Violators', '<p>We all demand STRICT action against people who are roaming on streets in spite of the Government Lockdown in India. This is to contain the spread of the pandemic of the contagious disease Coronavirus (COID-19).&nbsp;&nbsp;</p>\r\n\r\n<p>On 25th March Prime Minister Narendra Modi announced a complete lockdown all over India to stop the spread of the disease Coronavirus. It has nor happened.&nbsp;</p>\r\n\r\n<p><strong>In the last 24 hours alarming reports from all parts of India have been coming in with people violating the rules to stay at home.&nbsp;</strong></p>\r\n\r\n<p><strong>India has recorded 35 deaths so far, with positive cases on the rise reaching a 1590 figure as of 1st April 2020.</strong></p>\r\n\r\n<p><strong>If you continue to violate the lockdown - you will soon become another Italy!&nbsp;</strong></p>\r\n\r\n<p><strong>Communities Across India are at Risk</strong></p>\r\n\r\n<p>Violation of the lockdown is happening - even after strict penal provisions by the Government for those who are not following it. News is coming in from various parts of India showing how the people are exposing their families, themselves and communities. It increased the risk to contract the virus.</p>\r\n\r\n<p>More than 150 people attended a religious congregation Tabligh-e-Jamaat&#39;s Markaz in <strong>Delhi&#39;s Nizamuddin West </strong>area after the lockdown was announced. As a result Nizamuddin West has become a hotspot with 24 cases tested positive for COVID-19.&nbsp;Out of which 6 people have died due to coronavirus. Due to this, 19 states in Uttar Pradesh have come under danger of virus spread.</p>\r\n\r\n<p>In<strong> Delhi,</strong> according to an IANS report,<strong><em> &quot;only 239 persons were proceeded against under Section 188 of the IPC (disobedience to a government order), despite government orders to take strict action against violators. While nearly 3,763 people have been detained so far under the Delhi Police Act, most of them were, however, later let off with a warning.&quot;&nbsp;</em></strong></p>\r\n\r\n<p><em>In <strong>Bhubaneshwar</strong> alone, 1,400 people were arrested due to violating lockdown all over the State.&nbsp;</em></p>\r\n\r\n<p><em>Police have deployed drones to keep a check on violators of lockdown in <strong>Uttara Kannada.</strong></em></p>\r\n\r\n<p><em>Even after Police vigilance, 22,906 people were arrested in the past one week across <strong>Tamil Nadu</strong> for violation of Section 144.&nbsp;</em></p>\r\n\r\n<p><em>Across the state of<strong> Amravati,</strong> 7,000 vehicles were seized.&nbsp;</em></p>\r\n\r\n<p><strong>Stranded Migrants fear Starvation;&nbsp;</strong>It was too late to seal all state borders by the time the Central Government issued strict orders under the Disaster Management Act. Millions of migrants had already rushed back to their villages. Hordes were seen walking back on foot for days after the lockdown was enforced due to fear of starvation. It was only after the lockdown was violated - provisions were made to provide food and shelter to the migrant workers.</p>\r\n\r\n<p><strong>We all Demand Strict action against Lockdown Violators!</strong></p>\r\n', '', '2020-05-16 10:59:16'),
(12, 1, 1, 'I Stand in Solidarity with Doctors during COVID-19', 'I-Stand-in-Solidarity-with-Doctors-during-COVID-19', '<p>Coronavirus (COVID19) pandemic has caused 47,518 deaths worldwide as of 2nd April 2020. More than 9 lakh people got infected and 2 lakh people have recovered from the disease. World over doctors and paramedics work odd hours to help patients recover - even though social distancing is a must. These doctors survive under high stress without proper protective equipment risking their lives - to save our lives.</p>\r\n\r\n<p>100s of doctors in China, Spain and Italy have died due to catching the coronavirus while treating patients. People across the world are praying, blessing and applauding doctors - especially the ones who are in the frontline in ICU&#39;s and wards.&nbsp;</p>\r\n\r\n<p><strong>It is appalling to see cases of doctors being attacked in several places in India.&nbsp;</strong></p>\r\n\r\n<p><strong>Doctors across India have expressed their deep concern over the current situation of COVID-19 pandemic. There is a limit to what the doctors can take in. Doctors are working odd hours in unsuitable conditions, without proper (PPE) equipment to treat Coronavirus patients.</strong></p>\r\n\r\n<p><strong>If this goes on and doctors stop treating patients - how will we overcome the Pandemic of Coronavirus. How will doctors provide healthcare to Indians in the coming days?&nbsp;</strong></p>\r\n\r\n<p>Yesterday, in <strong>Tat Patti Bakhal area of Indore</strong> two women doctors got injured on their legs when they were attacked by locals with stones. They were part of a team who were locating people probably infected with Coronavirus. The team comprised of five people out of which there were three doctors. 4 people have been arrested by the police.&nbsp;</p>\r\n\r\n<p>An angry COVID-19 patient lost his cool and attacked a doctor in<strong> Gandhi Nagar isolation ward, Hyderabad</strong> because his brother died due to coronavirus. Police had to be called in to protect the doctor.&nbsp;</p>\r\n\r\n<p><strong>Members of Tablighi Jamaat were shifted to isolation wards in Delhi</strong> because of symptoms of COVID-19. They misbehaved with the doctors and staff by abusing staff members and<strong> started spitting on persons who were attending to them.</strong> Not only this, they even made unreasonable demands on food and broke the quarantine by roaming around in the hostel.&nbsp;</p>\r\n\r\n<p><strong>We at callupon.org - URGE 1.33 Million People of India to stand in solidarity with the Doctors during the COVID-19 Pandemic.&nbsp;</strong></p>\r\n\r\n<p>#StandInSolidarity #Respect Doctors #COVID19&nbsp;</p>\r\n', '', '2020-05-16 11:01:13'),
(13, 5, 1, 'I Pledge to Keep Myself Healthy and Fit during Lockdown', 'I-Pledge-to-Keep-Myself-Healthy-and-Fit-during-Lockdown', '<p>India has crossed 5000 confirmed COVID-19 positive cases, 149 deaths and 402 recovered people. This calls for an urgent need to boost the immune system of citizens across the country.</p>\r\n\r\n<p>Prime Minister Narendra Modi on Wednesday, tweeted Ayurveda Immunity Boosting Measures for Self-Care as per the Ministry of Ayush. The measures state the importance of keeping oneself fit and healthy so that your body is strong enough to fight any germs and viruses during COVID-19 crisis.&nbsp;</p>\r\n\r\n<p>He further urged people to focus on staying healthy. He said. <strong><em>&quot;After all, good health is a harbinger of happiness.&quot;</em></strong></p>\r\n\r\n<p><strong>Let us all take a Pledge to keep ourselves fit and healthy during the lockdown due to the coronavirus pandemic.&nbsp;&nbsp;</strong></p>\r\n\r\n<p>PM Modi urged people to take care of themselves and to build immunity taking the help of Ayurvedic methods. The three most easy methods to build immunity are; <strong><em>1) to drink warm water, 2) practise yoga breathing (Pranayama) at least 30 minutes daily, and 3) include turmeric (Haldi), cumin (Jeera) seeds, coriander (Dhaniya) and garlic (Lahsun) in everyday meals.</em></strong></p>\r\n\r\n<p>Since there is no cure for Coronavirus so far, the tweet said that taking preventive measures is the best way to combat coronavirus. The four-page tweet also emphasizes the need to boost immunity by Ayurvedic Methods.&nbsp;</p>\r\n\r\n<p>The Prime Minister said, &quot;The protocol has many things that I have been following strictly for years, like drinking hot water all year.&quot; We already know how diligently PM Modi practises Yoga every day.&nbsp;</p>\r\n\r\n<p><strong>Prime Minister urges people to follow the three Ayurvedic methods to fight Coronavirus:</strong></p>\r\n\r\n<p><strong>First,</strong><br />\r\nEat 1 spoon (10 grams) of Chyawanprash each day and sugar-free Chyawanprash for one who has diabetes.<br />\r\n<strong>Second,</strong><br />\r\nDrinking herbal tea at least twice a day - made up of Basil (tulsi), Cinnamon (daal cheeni), Dry Ginger (saunth) and Raisins (munakka). You could also add sugar or lemon juice as per taste.<br />\r\n<strong>Third,</strong><br />\r\nDrink golden milk twice a day. It is prepared by mixing 1/2 spoon turmeric powder in 150 ml warm milk.</p>\r\n\r\n<p><strong>LET US ALL TAKE A PLEDGE to KEEP OURSELVES &quot;HEALTHY&quot; and &quot;FIT&quot; and ALSO SPREAD IT AMONGST OUR FAMILY AND FRIENDS!</strong></p>\r\n', '', '2020-05-16 13:01:11'),
(14, 5, 1, 'hello title', 'hello-title', '<p>category_id</p>\r\n', '', '2020-05-17 11:30:42'),
(15, 2, 1, 'hello title test', 'hello-title-test', '<p>&quot;There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...&quot;</p>\r\n\r\n<hr />\r\n<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', '', '2020-05-17 12:04:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;