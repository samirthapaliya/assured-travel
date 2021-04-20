-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2021 at 03:03 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assuredtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_profile`
--

CREATE TABLE `account_profile` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_profile`
--

INSERT INTO `account_profile` (`id`, `firstname`, `lastname`, `username`, `email`, `phone`, `created_date`, `user_id`) VALUES
(1, 'samirr', 'thapaliya', 'Testanup5', 'samirthapaliya0@gmail.com', '9843807070', '2021-04-09 07:54:48.204120', 2),
(2, 'samir', 'Admin', 'st', 'admin@assuredtravel.com', '9845256897', '2021-04-09 07:58:08.088794', 1),
(3, NULL, NULL, 'sam', NULL, NULL, '2021-04-10 09:28:28.416015', 3),
(4, 'shankar', 'Tamang', 'testashankar5', 'st@gmail.com', '9845216845', '2021-04-10 16:14:47.575893', 4),
(5, 'samir', 'thapaliya', 'samir1', 'ds@gmail.com', '9745213596', '2021-04-19 13:57:55.500470', 6),
(6, NULL, NULL, 'user', NULL, NULL, '2021-04-20 04:55:05.536022', 7);

-- --------------------------------------------------------

--
-- Table structure for table `application_booking`
--

CREATE TABLE `application_booking` (
  `id` int(11) NOT NULL,
  `persons` int(11) DEFAULT NULL,
  `card_number` varchar(200) DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cvc` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_booking`
--

INSERT INTO `application_booking` (`id`, `persons`, `card_number`, `expiry_date`, `cvc`, `tour_id`, `user_id`, `fullname`, `phone`, `status`) VALUES
(38, 1, '68687', '2021-04-29', 555, 4, 1, 'fdas', '5786', 'waiting for payment'),
(39, 1, '5454', '2020-02-02', 222, 4, 2, 'ewt', '5454', 'waiting for payment'),
(40, 5, '222115113662', '2021-06-19', 598, 4, 1, 'samir thapaliya', '9843807070', 'Pending'),
(41, 5, '222115113662', '2021-04-29', 2534, 4, 4, 'saf', '2575257257272', 'Pending'),
(43, 1, '45454', '2020-02-03', 555, 4, 6, 'sdsad', '455445', 'Successful');

-- --------------------------------------------------------

--
-- Table structure for table `application_destination`
--

CREATE TABLE `application_destination` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_destination`
--

INSERT INTO `application_destination` (`id`, `name`, `picture`, `description`) VALUES
(1, 'India', 'static/images/uploads/destination/india_5NYrCBF.jpg', 'Country of culture'),
(2, 'Thailand', 'static/images/uploads/destination/new-zealand-3840x2160-mountain-4k-hd-wallpaper-lake-se_9kDHZUx.jpg', 'Perfect vacation spot'),
(3, 'Maldives', 'static/images/uploads/destination/ios-11-3840x2160-4k-5k-beach-ocean-13655.jpg', 'Travel where you desire'),
(4, 'USA', 'static/images/uploads/destination/new-zealand-3840x2160-mountain-4k-hd-wallpaper-lake-se_6zrhhWL.jpg', 'World\'s attraction point'),
(5, 'Canada', 'static/images/uploads/destination/lake-zurich-3840x2160-forest-sky-mountains-4k-17798.jpg', 'Land of Maple Leaf'),
(6, 'Dubai', 'static/images/uploads/destination/dubai_f8tXSaK.jpg', 'Ideal place for compilation of possible fun'),
(7, 'Swizerland', 'static/images/uploads/destination/dino-reichmuth-zlV1Ksvifvs-unsplash.jpg', 'Land of mountains, chocolate and fine watches');

-- --------------------------------------------------------

--
-- Table structure for table `application_itinerary`
--

CREATE TABLE `application_itinerary` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `tour_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_itinerary`
--

INSERT INTO `application_itinerary` (`id`, `name`, `description`, `tour_id`) VALUES
(6, 'Day 1: Arrive Bangkok & Transfer to Pattaya ::', 'Welcome To Thailand!!! Orient\'s Most Fabled City. When You Arrive At The Suvarnabhumi International Airport Our Representative Will Be Next To The ATTA Counter (Gate No. 10; Counter C). You Will Then Be Transferred To Your Hotel On Seat In Coach Basis To Pattaya. Check In At The Hotel. Overnight At Your Hotel In Pattaya.', 4),
(7, 'Day 2: Pattaya Coral island tour with Lunch:', 'After Breakfast In The Morning At Hotel, You Will Be Picked Up For A Speedboat Ride To The Coral Island. Upon Arrival You Will Be Treated To A Spectacular View Of The Island\'s Coral Reef On Board A Glass Bottom Boat. After Delicious Indian Lunch You Will Be Transferred To The Hotel. Overnight At The Hotel In Pattaya.', 4),
(8, 'Day 3: Pattaya-Bangkok and city tour:', 'Enjoy Breakfast At The Hotel And Then Pick Up From The Hotel Lobby To Proceed For Bangkok. Today Enjoy Half Day City & Temple Tour Of Bangkok, Resplendent In All Of Its Fascinating Culture! Overnight At Your Hotel In Bangkok.', 4),
(9, 'Day 4: Leisure for shopping and optional tour:', 'Enjoy Breakfast At The Hotel. The Rest Of The Day Is For Shopping / Optional Tours. Overnight At Hotel.', 4),
(11, 'Day 01: Arrive Delhi & Delhi Sightseeing – Full Day', 'Arrival and check in at hotel. Later full day sightseeing tour of New Delhi and Old Delhi New Delhi visit includes Qutab Minar, one of the earliest remains of Imperial Delhi Humayun\'s Tomb-the fine monument believed to be forerunner of Taj Mahal, India Gata, the 42 metre high arch was raised as a memorial to soldiers, drives past Parliament House, President\'s House, Secretariat Building, Laxminarayan Temple and The Connaught Place.  Overnight at hotel.', 6),
(12, 'Day 02: Delhi - Jaipur', 'After Breakfast drive to Jaipur. Upon arrival, check in at Hotel. Evening free for leisure activities. Later you will proceed to ethic resort called “Chowki Dhani”..here you will enjoy cultural activities of Rajasthan and also dinner in Rajasthani style. Overnight at Hotel.', 6),
(13, 'Day 03: Jaipur Full Day Tour', 'Morning excursion to Amber Fort, set in a picturesque location. Amer is a fascinating blend of Hindu and Muslim architecture. Built in the 16th century by Raja Mansingh in red sandstone and white marble, the palace complex has some very interesting apartments. Elephants are provided to ascend the fort to visit the complex. City Palace, Jal Mahal, Hawa Mahal and Jantar Mantar are some of the prominent areas of interest. Overnight at hotel.', 6),
(14, 'Day 04: Jaipur – Fatehpur Sikri - Agra', 'Morning drive to Agra visiting enrooted Fatehpur Sikri. Fatehpur Sikri, the birth story of this beautiful city is interesting. There, in a grotto in Sikri, lived a Muslim Saint , Sheikh Salim Chishti by name, here you will also visit Buland Darwaza. In the evening reach Agra and transfer to hotel. Proceed to visit Taj Mahal at Sunset time.. Overnight at hotel.', 6),
(15, 'Day 05: Agra – Delhi - Depart', 'Morning after breakfast visit Agra fort, Itmad ud dulah “Mini Taj” and drive back to Delhi. On arrival transfer to suggested place / airport.', 6),
(16, 'Day 1: Arrive in New York', 'Welcome to the \"Big Apple,\" the \"City That Never Sleeps\"—New York is a city of superlatives: America\'s biggest; its most exciting; its business and cultural capitals; the nation\'s trendsetter. For more than a century, it has been one of the world\'s major centers of commerce and finance. Upon arrival at the airport,you will be transferred to the hotel.', 7),
(17, 'Day 2: New York – City Tour', 'Meal Plan: Breakfast\r\n\r\nAfter breakfast proceed for a City Tour of New York. The sightseeing will include USA’s famous landmark “Statue of Liberty”. We will take a ferry ride to Liberty Island for a spectacular view of the New York City Skyline. Also see Rockefeller Center, Wall Street, Ground Zero and Central Park, Times Square, United Nations and Trump. Later we experience the view of a lifetime from the 86th floor of the Empire State Building.', 7),
(18, 'Day 3: New York – Washington DC', 'Meal Plan: Breakfast\r\n\r\nToday we proceed to Washington DC, capital of the United States of America and a Guide to the Historic Neighborhoods and Monuments. Other than the federal government, tourism is DC\'s biggest industry. The city attracts almost twenty million visitors each year. Upon arrival, enjoy a city tour of the capital city of US. Visit the White House, Lincoln Memorial, Supreme Court, the Capitol Building, the Smithsonian Air and Space museum, Union Station, World War II Memorial Building, Pentagon building and Washington monument.', 7),
(19, 'Day 4: Washington DC – Buffalo – Niagara Falls (USA Side)', 'Meal Plan: Breakfast\r\n\r\nAfter Breakfast, travel to Buffalo to view the world famous falls. See them lit up at night and take plenty of pictures!', 7),
(20, 'Day 5: Niagara Falls (USA Side) – Maid of the Mist.', 'Meal Plan:Breakfast\r\n\r\nToday board the famous “Maid of the Mist”, which takes us close to the thundering falls and around the American and Horeshoe Falls (seasonal). Return to the hotel after your damp ride to freshen up.', 7),
(21, 'Day 6: Niagara Falls USA – Buffalo – Orlando', 'Meal Plan: Breakfast\r\n\r\nToday we depart to Orlando by flight. Orlando is the sixth largest city of Florida and is also known to be its largest inland city. The presence of Disney World theme park has made this city a well-known vacation spot. This city is said to welcome more than 52 million tourists every year. Upon arrival transfer to your hotel.', 7),
(22, 'Day 7: Orlando – Magic Kingdom at Disney World', 'Meal Plan: Breakfast\r\n\r\nToday you will visit The Magic Kingdom, which covers 107 acres, opened on October 1, 1971. It\'s been dubbed \"The Most Magical Place on Earth!\" and is home to seven themed lands, and dozens of attractions that appeal to all ages. It is the place where storybook fantasy is everyday reality, and Disney classics are brought to life from the moment you step onto Main Street USA, you are transported to a place where the cares of the outside world seem to magically melt away.', 7),
(23, 'Day 8: Orlando – Epcot Center at Disney World', 'Meal Plan: Breakfast\r\n\r\nBegin your day at the Epcot center where you can touch the future and travel the world with an amazing array of attractions and live performances. This is an area of 260 acres devoted to past achievements and the future of technology. World showcase offers a kind of permanent World Fair, with pavilions devoted to eleven countries.', 7),
(24, 'Day 9: Orlando – Sea World at Orlando', 'Meal Plan: Breakfast\r\n\r\nToday you will visit the world\'s largest Marine Park Sea World - Here you shall discover many attractions. We dare you to take a one-of-a kind water coaster thrill ride through the mysterious lost city of Atlantis. Soar through danger on a jet copter ride to the Wild Arctic. At Sea World, touch, feed or get face to face with awesome and amazing wild animals, and get in on all the action that draws you back again and again!', 7),
(25, 'Day 10: Departure from Orlando', 'Meal Plan: Breakfast\r\n\r\nToday we finish our trip and get ready to fly back home or to the next destination.', 7),
(26, 'Day 1: Arrival at Dubai', 'Meal Plan: None\r\n\r\nOn arrival at Dubai, Our representative will pick you up in airport and then transfer to Dubai hotel. Time to relax or explore local area. Overnight stay at the hotel.', 9),
(27, 'Day 2: Dubai City Tour – Dhow Cruise Dinner', 'Meal: Breakfast, Dinner\r\n\r\nPost breakfast, we will take for the dazzling city tour. You will explore heritage of Dubai, Jumeirah Mosque, Burj Khalifa- Photo stop, galleries and museums and other prime attractions. Later, you will be picked up to enjoy romantic evening on cruise with dinner on board. Finally, you will be transferred back to your hotel for overnight stay. Overnight stay at Hotel.', 9),
(28, 'Day 3: Desert Safari with BBQ Dinner', 'Meal: Breakfast, Dinner\r\n\r\nAfter Breakfast, You will be taken to the magical sand of Arabian desert to make your day full of adventures. There, you can enjoy camel riding, sand boarding at your choice. Enjoy BBQ dinner. Return to the hotel. Overnight stay at Hotel.', 9),
(29, 'Day 4: Free day for Shopping', 'Meal Plan: Breakfast\r\n\r\nBreakfast at morning. This day is free for you. You can enjoy the day as you like with optional programs or shopping. Overnight Dubai', 9),
(30, 'Day 5: Departure, Fly Back Home', 'Meal: Breakfast\r\n\r\nAfter Breakfast, your driver will pick you up at the hotel to get you to the airport. Have a safe trip to home, and tell your friends and relatives back home about your epic journey! Your adventure ends with your transfer to the airport for flight back to home.', 9),
(31, 'Day 1:Arrive in Toronto.', 'Welcome to Toronto!! A fabulous waterfront city lying on the north shore of Lake Ontario, Toronto is Canada’s largest and most cosmopolitan city. Its breathtaking architecture, world Class Theater, international sports, and beautiful waterfront setting make this a popular city to study in. Stroll around Harbor Front Park with new international friends. Over 25 million people visit Toronto annually. Upon Arrival, check in Hotel.', 8),
(32, 'Day 2: Toronto – Niagara', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nAfter Breakfast, proceed for a City tour of Toronto. Toronto\'s scenic tour with, among others, its financial district, one of the largest in the world, the CN Tower and City Hall. Direction to Niagara Falls, seventh wonder of the world. Stop at Niagara-on-the-Lake, charming little town marked by the architecture of the past years. Meal in a panoramic restaurant. Discovery cruise to the foot of Niagara Falls. Night in the Niagara Region.', 8),
(33, 'Day 3: Niagara- The Thousand Islands- Gananoque', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nThousand Islands Cruise, located in the UNESCO Biosphere Reserve at the mouth of Lake Ontario. Kingston\'s former Fort Frontenac orientation tour, Kingston was Canada\'s first capital. Overnight in the Thousand Islands region Hotel Comfort Inn & Suites.', 8),
(34, 'Day 4: Gananoque - Ottawa - Montreal', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nSpend a day exploring beautiful and historic Ottawa, Canada\'s Capital. City tour includes the Parliament Building, Supreme Court of Canada, National Arts Center, and Rideau Canal. Ottawa City Hall, Rockcliffe Lookout, Dows Lake, Ornamental Gardens, Chinatown & Little Italy,Farmers ByWard Market. Later drive back to Montreal City tour commented in Ottawa and Gatineau. Lunch at the Byward Market in Ottawa. Road to Montreal.', 8),
(35, 'Day 5: Montreal - Saint-Raymond de Portneuf (Family Village)', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nPanoramic tour of the City of Montreal, Mount Royal Old Montreal, and then drive to the Quebec City area. Festive welcome, then meeting with your hosts with whom you will dine and /or spend the night.', 8),
(36, 'Day 6: Saint-Raymond of Portneuf- Saguenay-Lac-Saint-Jean', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nArrival in Saint-Félicien, famous for its zoo. Visit the park for a discovery of the Canadian wildlife in freedom: wolves, bison, musk oxen, black bears, moose. Unique experience, because it is the visitor who is in a cage, aboard a grid train that runs through the reserve. Meal on the spot. You will then follow Lake Saint-Jean, a real inland sea prized by vacationers during the summer season and outdoor enthusiasts in all seasons.', 8),
(37, 'Day 7: Saguenay-Lac-Saint-Jean -Tadoussac- Charlevoix', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nDeparture to Charlevoix by the famous route of the fjord to Tadoussac. Meals in the village of Tadoussac, then guided whale watching cruise (about 3 hours). It is here that we can observe the largest number of large whales and small cetaceans. Road to Charlevoix.', 8),
(38, 'Day 8: Charlevoix - Quebec (B-L-D)', 'Meal Plan:Breakfast,Lunch,Dinner\r\n\r\nStop at the Montmorency Falls with meal at the top. Guided tour of the city. Sugar shack with song writer.', 8),
(39, 'Day 9: Quebec - Toronto', 'According to flight schedules, transfer to the airport and flight to Toronto If schedules allow, free time in Toronto for the last purchases.', 8),
(40, 'Day 10: Departure', 'back to home.', 8),
(41, 'Day 1:', 'Arrival at the Geneva Airport, you are escorted to the hotel and enjoy your leisure time', 10),
(42, 'Day 2:', 'Sightseeing of the city where you will visit cerulean waters, grandiose vineyards, chocolate trains, snowy mountains and Roman ruins. After this, visit Lake Geneva, an awesome destination that leaves you spell-bound.', 10),
(43, 'Day 3:', 'After breakfast at the hotel, a coach accompanies you to the beautiful Lucerne (265 Km/ 3 Hrs). Transfer to the hotel and you have the day at leisure or visit the Swiss Transport Museum, the new IMAX Theatre or the Lion Monument on you own.', 10),
(44, 'Day 4:', 'Today you will  head to the mountain resort of Engelberg, where you board the Rotair, a revolving cable car that takes you on a 45-minute trip from the bottom of the lush green valley to the high alpine glacier region, where snow is guaranteed year-round. If you like adventurous activities, try the Ice Flyer – an interesting chairlift ride over the glacier and a snow slide on the Fun Lift . After a fulfilling day, the coach takes you back to Lucerne. You have the rest of the day', 10),
(45, 'Day 5:', 'In the morning, transfer to Interlaken (67 Km/ 1 Hr), a strategic base town for all those who wish to explore Bernese Oberland. The Interlaken Ost and Interlaken West stations offer frequent trains, bus and boat services to all the major attractions.', 10),
(46, 'Day 6:', 'On this day, get set to explore one of the most beautiful places in Switzerland, the Jungfrau region. You can visit the Schilthorn and the Jungfraujoch for a close view of the magnificent Alps. You can even opt for a hiking activity or take simple short trails like Grutschalp to Murren and if you want then you can also enjoy a walk in the Lauterbrunnen valley. Enjoy the rest of the day at leisure.', 10),
(47, 'Day 7:', 'In the morning, you are transferred to Zurich(119 Km/ approx. 2 Hrs) by a private coach. There you will explore the most important sights such as Bahnhofstrasse, Old Town, pristine Grossmunster Church and beautiful Lake Zurich are all based in Zurich’s town centre.', 10),
(48, 'Day 8:', 'Day at leisure and shopping at Bahnhofstrasse, Zurich’s Shopping Boulevard. Fashion, art and Zurich specialties at Bahnhofstrasse attract local residents as well as tourists.  After shopping, you can stroll along the lake in the summer or visit Augustinergasse and Rennweg.', 10),
(49, 'Day 9:', 'This is the last day of your tour. In the morning, enjoy the journey to the international airport to take your flight back home.', 10);

-- --------------------------------------------------------

--
-- Table structure for table `application_newsletter`
--

CREATE TABLE `application_newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_newsletter`
--

INSERT INTO `application_newsletter` (`id`, `email`) VALUES
(2, 'itsme.shankar@gmail.com'),
(3, 'fadsf@gmail.com'),
(4, 'ds@gmail.com'),
(5, 'dsadc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `application_review`
--

CREATE TABLE `application_review` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_review`
--

INSERT INTO `application_review` (`id`, `rating`, `user_id`) VALUES
(2, 5, 2),
(3, 4, 3),
(4, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `application_subscribe`
--

CREATE TABLE `application_subscribe` (
  `id` int(11) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(2000) DEFAULT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_subscribe`
--

INSERT INTO `application_subscribe` (`id`, `fullname`, `email`, `subject`, `message`) VALUES
(2, 'dsffdas', 'samirthapaliya0@gmail.com', 'afsdfdsf', 'daf'),
(3, 'shankar', 'sssafasd@gmail.com', 'tour ', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `application_tour`
--

CREATE TABLE `application_tour` (
  `id` int(11) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `main_Info` longtext DEFAULT NULL,
  `country_Name` varchar(2000) DEFAULT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_tour`
--

INSERT INTO `application_tour` (`id`, `picture`, `name`, `price`, `location`, `main_Info`, `country_Name`, `description`) VALUES
(4, 'static/images/uploads/andrzej-suwara-qfntmjboDyc-unsplash.jpg', 'THAILAND TOUR', 52300, 'THAILAND', 'AMAZING THAILAND', 'Thailand', 'Get Ready For A 5 Day Pleasure At One Of The Wonder Destinations Of The World. This Beautiful Oriental Dream Never Stops With The Lush And Paradise, Because Of Which You Will Never Get Bored. So, Let\'s Put You On A Plane To Bangkok Drive You To The Pattaya\'s Sunny Beaches, Coral Island Tour And Then Enjoy City Tour At Bangkok Where You Get All Rejuvenated. With More To Exercise Being Your Companion In This Graceful Trip Of A Longer Period Where The Joy And Charm Never Stops.'),
(5, 'static/images/uploads/mohamed-thasneem-3bAblStd-IY-unsplash.jpg', 'RELAX IN MALDIVES', 100000, 'Maldives', 'Sightseeing and City Tour', 'Maldives', 'Maldives is also known as “the tropical paradise”. The beauty it is magnificent . Maldives is a tropical country with many islands. Each island is surrounded by stunning sandy beaches. Everyone loves to explore the beauty of the islands.\r\n\r\nThe natural beauty lies in the Maldivian sea beats no other. There are over five thousand coral reefs and plenty of reef fish, corals, marine mammals, and so many other marine lives. And that is the reason people say, diving in Maldives is unforgettable.\r\n\r\nAlmost all the islands in Maldives are surrounded by beautiful pure white sandy beaches. Even if you have nothing else to do, I am sure you won’t get bored walking in the soft white sandy beaches and leaving your foot prints on.'),
(6, 'static/images/uploads/india.jpg', 'GOLDEN TRIANGLE', 30000, 'GOLDEN TRIANGLE', 'Golden Triangle Tour India', 'India', 'A trip to India can prove to be an unprecedented and enchanting experience for you, provided you research well and plan your trip properly. From cost calculation to arranging for accommodation, things should be planned well in advance for ensuring your trip is safe and enjoyable.'),
(7, 'static/images/uploads/usatour.jpg', 'America Tour Package', 299800, 'America Tour', 'With its historic landmarks, world-class cities, and central presence on the world stage, the United States is the most popular tourist destination on the planet.', 'United States of America', 'Every year, some 65 million people travel to the United States, spending upwards of $125 billion. The U.S. is the third-largest country in the world by population and area and has the largest economy in the world. It offers an endless array of things to do, places to see, restaurants to try, and hotels to stay at. As one of the largest and most dynamic countries on Earth, the United States offers visitors an incredibly diverse range of experiences. Travelers can visit the United States and have wildly different experiences. Note: This is just a suggested itinerary indicative of what could be possible. We customize holidays for your specific needs. Contact us if you want modifications so that we could customize a holiday to suit your need for an unforgettable International tour. \r\n\r\nNote:\r\n\r\nThis is just a suggested itinerary indicative of what could be possible. We customize holidays for your specific needs. Contact us if you want modifications so that we could customize a holiday to suit your need for an unforgettable International Tour.'),
(8, 'static/images/uploads/canadatour_RO8lPKd.jpg', 'Canada Tour Package', 398800, 'Canada Tour', 'Major cities include massive Toronto, west coast film centre Vancouver, French speaking Montréal and Québec City, and capital city Ottawa.', 'Canada', 'Canada is a North American country stretching from the U.S. in the south to the Arctic Circle in the north. Major cities include massive Toronto, west coast film centre Vancouver, French speaking Montréal and Québec City, and capital city Ottawa.Canada\'s vast swaths of wilderness include lake-filled Banff National Park in the Rocky Mountains. It\'s also home to Niagara Falls,a famous group of massive waterfalls.'),
(9, 'static/images/uploads/dubai1.jpg', 'Dubai Tour Package', 62800, 'Dubai Tour', 'From dancing in the beach to camel ride in desert', 'Dubai', 'Dubai tour is the best for the vacations. One of the most fascinating things while you are travelling to Dubai is dancing in the beach and another one the most fascinating thing is camel ride in desert, amusement parks to famous shopping mall. There are many more places to visit from historical sites to cloud-scraping architectures, Dubai tour is one of the glamorous playgrounds to enjoy. Dubai tour package from Nepal is also one of the best holiday tour packages. Many people from Europe and Asia visit on the Dubai tour package. We all know that Dubai is one of the most richest cities in the world. If you are planning for the Dubai tour packages I Ensure you don’t miss out on the opportunity to visit the world tallest building Burj khalifa’s. This experience gives you the chance to enjoy unrivalled panoramas of Dubai from one of the world’s highest outdoor observation decks. Dubai tour packages  is one of the best holiday tour packages you can have the full excitement and enjoyment in Dubai trip. Dubai Desert 4x4 Dune Bashing is another one of the most exciting and entertaining experience you can have on the Dubai tour.      \r\n\r\nFrom Nepal also there are many travelers who want to experience the beauty and the richness of the Dubai city so many people choose Dubai tour packages from Nepal. If you are excited and want to explore the beauty and the richness of the Dubai city there are many travel agencies which provide different holiday tour packages. So, if u guys are planning for the Dubai tour from Nepal. We ME travels provide you a best Dubai tour package from Nepal.'),
(10, 'static/images/uploads/swizerland.jpg', 'Switzerland Tour', 200000, 'Swizerland Tour', 'Welcome to Swiss.', 'Swizerland', 'The Alpine crown of Europe, Switzerland is considered among the most beautiful countries in the world. Though Switzerland holidays primarily consists of mountaineering and skiing. Nature’s diversity is so explicit there that you can find snow-capped mountains as well as palm trees not far from each other. You can visit the countryside and soak yourself in nature’s trail and can enjoy a buzzing city and vibrant nightlife in the same way.\r\n\r\nThere is a marked cultural diversity in the country with German, French, Italian and Romansh dominating the language and culture. The food available there too marked in diversity. Swiss chocolate is world famous and every tourist visiting the country takes a few packets of the delicacy with himself. The country is also a financial hub of the world.  Although Swiss banks are renown for preserving the finances of the world. Opt for Switzerland tour packages from SOTC and enrich your experience of visiting the idyllic surroundings.');

-- --------------------------------------------------------

--
-- Table structure for table `application_tour_destination`
--

CREATE TABLE `application_tour_destination` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_tour_destination`
--

INSERT INTO `application_tour_destination` (`id`, `tour_id`, `destination_id`) VALUES
(9, 4, 2),
(10, 5, 3),
(11, 6, 1),
(12, 7, 4),
(13, 8, 5),
(14, 9, 6),
(15, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `application_tour_reviews`
--

CREATE TABLE `application_tour_reviews` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application_tour_reviews`
--

INSERT INTO `application_tour_reviews` (`id`, `tour_id`, `user_id`) VALUES
(4, 4, 3),
(32, 4, 4),
(5, 5, 4),
(6, 6, 1),
(7, 6, 2),
(8, 6, 3),
(9, 6, 4),
(10, 6, 5),
(11, 7, 1),
(12, 7, 2),
(13, 7, 3),
(14, 7, 4),
(15, 7, 5),
(16, 7, 6),
(17, 8, 1),
(18, 8, 2),
(19, 8, 3),
(20, 8, 4),
(21, 9, 2),
(22, 9, 3),
(23, 9, 4),
(24, 9, 5),
(25, 9, 6),
(26, 10, 1),
(27, 10, 2),
(28, 10, 3),
(29, 10, 4),
(30, 10, 5),
(31, 10, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add destination', 7, 'add_destination'),
(26, 'Can change destination', 7, 'change_destination'),
(27, 'Can delete destination', 7, 'delete_destination'),
(28, 'Can view destination', 7, 'view_destination'),
(29, 'Can add itenerary', 8, 'add_itenerary'),
(30, 'Can change itenerary', 8, 'change_itenerary'),
(31, 'Can delete itenerary', 8, 'delete_itenerary'),
(32, 'Can view itenerary', 8, 'view_itenerary'),
(33, 'Can add tour', 9, 'add_tour'),
(34, 'Can change tour', 9, 'change_tour'),
(35, 'Can delete tour', 9, 'delete_tour'),
(36, 'Can view tour', 9, 'view_tour'),
(37, 'Can add review', 10, 'add_review'),
(38, 'Can change review', 10, 'change_review'),
(39, 'Can delete review', 10, 'delete_review'),
(40, 'Can view review', 10, 'view_review'),
(41, 'Can add profile', 11, 'add_profile'),
(42, 'Can change profile', 11, 'change_profile'),
(43, 'Can delete profile', 11, 'delete_profile'),
(44, 'Can view profile', 11, 'view_profile'),
(45, 'Can add booking', 12, 'add_booking'),
(46, 'Can change booking', 12, 'change_booking'),
(47, 'Can delete booking', 12, 'delete_booking'),
(48, 'Can view booking', 12, 'view_booking'),
(49, 'Can add itinerary', 8, 'add_itinerary'),
(50, 'Can change itinerary', 8, 'change_itinerary'),
(51, 'Can delete itinerary', 8, 'delete_itinerary'),
(52, 'Can view itinerary', 8, 'view_itinerary'),
(53, 'Can add subscribe', 13, 'add_subscribe'),
(54, 'Can change subscribe', 13, 'change_subscribe'),
(55, 'Can delete subscribe', 13, 'delete_subscribe'),
(56, 'Can view subscribe', 13, 'view_subscribe'),
(57, 'Can add newsletter', 14, 'add_newsletter'),
(58, 'Can change newsletter', 14, 'change_newsletter'),
(59, 'Can delete newsletter', 14, 'delete_newsletter'),
(60, 'Can view newsletter', 14, 'view_newsletter');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$8Zs405BUJSAR$JBX/JsQAyF3yNemZNbG1P3NAMcurmNzbI4gvpXl46uw=', '2021-04-20 12:07:02.304396', 1, 'admin', '', '', '', 1, 1, '2021-04-08 11:21:08.382190'),
(2, 'pbkdf2_sha256$180000$8xjCaRH8CjmO$5TSZMHp1Fdym2XdX5WzBFtOgN4dOtGi/tlYkUAA1JoI=', '2021-04-19 07:53:12.900823', 0, 'Testanup5', '', '', '', 0, 1, '2021-04-09 07:54:48.070477'),
(3, 'pbkdf2_sha256$180000$yyIYpkyGmgoM$AltsNYn0sva3VPW8TNpmm+cX69+3FjB7RIJr8w9VDcU=', '2021-04-10 09:28:37.833998', 0, 'sam', '', '', '', 1, 1, '2021-04-10 09:28:28.287831'),
(4, 'pbkdf2_sha256$180000$6gnELQScNUyQ$AYSSJNCHyH/oO6C5a6weRw1zAo8ATcdzuAFieLkKWfQ=', '2021-04-19 07:49:15.641163', 0, 'testashankar5', '', '', '', 1, 1, '2021-04-10 16:14:47.450964'),
(5, 'pbkdf2_sha256$180000$eA2ROyvEqw0V$6a3NAPdoG4O399XxCiKMVb5kEhLDKNFhzdggsz+PZjE=', NULL, 0, 'samir', '', '', '', 0, 1, '2021-04-18 16:02:45.299678'),
(6, 'pbkdf2_sha256$180000$zBTvxdSfJZJT$pHIIFdjf0tM8cyLxegNpHyIJMPA0/Kh4btNCSSnLp9U=', '2021-04-20 12:06:43.029213', 0, 'samir1', '', '', '', 0, 1, '2021-04-19 13:57:55.392158'),
(7, 'pbkdf2_sha256$180000$arZ0lQguJyJ0$SykBcLRKPss244NurDtxySG3hPsUgbgd92OQMa1SkOE=', '2021-04-20 04:55:21.909170', 0, 'user', '', '', '', 0, 1, '2021-04-20 04:55:05.390838');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-08 11:21:53.248717', '1', 'Itenerary object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-04-08 11:22:13.083119', '1', 'vafs', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-04-08 11:22:15.588271', '1', 'afsdf', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-04-08 11:30:38.357427', '1', 'Review object (1)', 1, '[{\"added\": {}}]', 10, 1),
(5, '2021-04-08 11:30:56.831188', '1', 'afsdf', 2, '[]', 9, 1),
(6, '2021-04-08 12:57:11.903343', '2', 'Thailand', 1, '[{\"added\": {}}]', 7, 1),
(7, '2021-04-08 13:02:21.224380', '2', 'dasdsaf', 2, '[{\"changed\": {\"fields\": [\"Destination\"]}}]', 9, 1),
(8, '2021-04-09 07:05:10.605915', '3', 'Maldives', 1, '[{\"added\": {}}]', 7, 1),
(9, '2021-04-09 07:06:03.384004', '3', 'MALDIVES tour', 1, '[{\"added\": {}}]', 9, 1),
(10, '2021-04-09 07:06:26.078885', '2', 'dasdsaf', 2, '[{\"changed\": {\"fields\": [\"Destination\"]}}]', 9, 1),
(11, '2021-04-09 07:07:29.026662', '2', 'dasdsaf', 2, '[{\"changed\": {\"fields\": [\"Location\"]}}]', 9, 1),
(12, '2021-04-09 07:08:07.162124', '3', 'MALDIVES tour', 2, '[{\"changed\": {\"fields\": [\"Destination\"]}}]', 9, 1),
(13, '2021-04-09 07:12:07.895901', '3', 'MALDIVES tour', 2, '[]', 9, 1),
(14, '2021-04-09 07:34:36.145477', '2', 'dasdsaf', 2, '[{\"changed\": {\"fields\": [\"Destination\"]}}]', 9, 1),
(15, '2021-04-09 07:58:08.089818', '2', 'Profile object (2)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2021-04-09 15:14:04.614469', '4', 'USA', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(17, '2021-04-10 08:33:42.774026', '4', 'Booking object (4)', 3, '', 12, 1),
(18, '2021-04-10 08:33:42.777019', '3', 'Booking object (3)', 3, '', 12, 1),
(19, '2021-04-10 08:33:42.778015', '2', 'Booking object (2)', 3, '', 12, 1),
(20, '2021-04-10 08:33:42.779012', '1', 'Booking object (1)', 3, '', 12, 1),
(21, '2021-04-10 08:36:38.390586', '7', 'Booking object (7)', 3, '', 12, 1),
(22, '2021-04-10 08:36:38.392580', '6', 'Booking object (6)', 3, '', 12, 1),
(23, '2021-04-10 08:36:38.393577', '5', 'Booking object (5)', 3, '', 12, 1),
(24, '2021-04-10 09:29:49.820477', '23', 'Booking object (23)', 3, '', 12, 1),
(25, '2021-04-10 09:29:49.823468', '21', 'Booking object (21)', 3, '', 12, 1),
(26, '2021-04-10 09:29:49.824465', '20', 'Booking object (20)', 3, '', 12, 1),
(27, '2021-04-10 09:29:49.826462', '19', 'Booking object (19)', 3, '', 12, 1),
(28, '2021-04-10 09:29:49.829453', '18', 'Booking object (18)', 3, '', 12, 1),
(29, '2021-04-10 09:29:49.831457', '17', 'Booking object (17)', 3, '', 12, 1),
(30, '2021-04-10 09:29:49.832444', '16', 'Booking object (16)', 3, '', 12, 1),
(31, '2021-04-10 09:29:49.833442', '15', 'Booking object (15)', 3, '', 12, 1),
(32, '2021-04-10 09:29:49.834440', '14', 'Booking object (14)', 3, '', 12, 1),
(33, '2021-04-10 09:29:49.836434', '13', 'Booking object (13)', 3, '', 12, 1),
(34, '2021-04-10 09:29:49.837431', '12', 'Booking object (12)', 3, '', 12, 1),
(35, '2021-04-10 09:29:49.838429', '11', 'Booking object (11)', 3, '', 12, 1),
(36, '2021-04-10 09:29:49.839426', '10', 'Booking object (10)', 3, '', 12, 1),
(37, '2021-04-10 09:29:49.840422', '9', 'Booking object (9)', 3, '', 12, 1),
(38, '2021-04-10 09:29:49.841420', '8', 'Booking object (8)', 3, '', 12, 1),
(39, '2021-04-18 04:22:42.828704', '3', 'Itenerary object (3)', 1, '[{\"added\": {}}]', 8, 1),
(40, '2021-04-18 04:27:27.145335', '31', 'Testanup5-->THAILAND TOUR', 1, '[{\"added\": {}}]', 12, 1),
(41, '2021-04-18 04:44:59.832812', '4', 'Day 2-->THAILAND TOUR', 1, '[{\"added\": {}}]', 8, 1),
(42, '2021-04-18 06:04:36.876952', '31', 'Testanup5-->THAILAND TOUR', 3, '', 12, 1),
(43, '2021-04-18 09:45:29.664549', '5', 'Day 5-->RELAX IN MALDIVES', 3, '', 8, 1),
(44, '2021-04-18 09:45:29.667540', '4', 'Day 2-->THAILAND TOUR', 3, '', 8, 1),
(45, '2021-04-18 09:45:29.668538', '3', 'Day 1-->THAILAND TOUR', 3, '', 8, 1),
(46, '2021-04-18 09:45:29.675519', '2', 'Day 3-->None', 3, '', 8, 1),
(47, '2021-04-18 09:45:29.679512', '1', 'Day 1-->None', 3, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'account', 'profile'),
(1, 'admin', 'logentry'),
(12, 'application', 'booking'),
(7, 'application', 'destination'),
(8, 'application', 'itinerary'),
(14, 'application', 'newsletter'),
(10, 'application', 'review'),
(13, 'application', 'subscribe'),
(9, 'application', 'tour'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-08 11:20:35.072050'),
(2, 'auth', '0001_initial', '2021-04-08 11:20:35.372766'),
(3, 'account', '0001_initial', '2021-04-08 11:20:35.706858'),
(4, 'account', '0002_auto_20210407_2157', '2021-04-08 11:20:35.757723'),
(5, 'account', '0003_remove_profile_profile_pic', '2021-04-08 11:20:35.780662'),
(6, 'admin', '0001_initial', '2021-04-08 11:20:35.861445'),
(7, 'admin', '0002_logentry_remove_auto_add', '2021-04-08 11:20:35.936246'),
(8, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-08 11:20:35.946219'),
(9, 'application', '0001_initial', '2021-04-08 11:20:36.156684'),
(10, 'contenttypes', '0002_remove_content_type_name', '2021-04-08 11:20:36.533698'),
(11, 'auth', '0002_alter_permission_name_max_length', '2021-04-08 11:20:36.576562'),
(12, 'auth', '0003_alter_user_email_max_length', '2021-04-08 11:20:36.601486'),
(13, 'auth', '0004_alter_user_username_opts', '2021-04-08 11:20:36.617445'),
(14, 'auth', '0005_alter_user_last_login_null', '2021-04-08 11:20:36.680275'),
(15, 'auth', '0006_require_contenttypes_0002', '2021-04-08 11:20:36.683268'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2021-04-08 11:20:36.699225'),
(17, 'auth', '0008_alter_user_username_max_length', '2021-04-08 11:20:36.731143'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2021-04-08 11:20:36.763057'),
(19, 'auth', '0010_alter_group_name_max_length', '2021-04-08 11:20:36.784996'),
(20, 'auth', '0011_update_proxy_permissions', '2021-04-08 11:20:36.801952'),
(21, 'sessions', '0001_initial', '2021-04-08 11:20:36.860802'),
(22, 'application', '0002_auto_20210409_2057', '2021-04-09 15:12:30.729310'),
(23, 'application', '0003_booking', '2021-04-10 07:09:02.453158'),
(24, 'application', '0004_auto_20210410_1343', '2021-04-10 07:58:31.987437'),
(25, 'application', '0005_auto_20210410_1345', '2021-04-10 08:00:20.119957'),
(26, 'application', '0006_auto_20210410_1346', '2021-04-10 08:01:33.560672'),
(27, 'application', '0007_auto_20210410_1450', '2021-04-10 09:05:23.711404'),
(28, 'application', '0008_auto_20210410_1452', '2021-04-10 09:07:32.866242'),
(29, 'application', '0009_auto_20210418_1006', '2021-04-18 04:21:19.288597'),
(30, 'application', '0010_booking_status', '2021-04-18 11:07:40.283998'),
(31, 'application', '0011_auto_20210418_2004', '2021-04-18 14:19:37.986804'),
(32, 'application', '0012_auto_20210418_2042', '2021-04-18 14:57:32.353909'),
(33, 'application', '0013_auto_20210419_1349', '2021-04-19 08:04:58.342315'),
(34, 'application', '0014_newsletter', '2021-04-19 13:34:04.774985');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3mi9e4lyvejpxnlzbzj77xbzo97md42b', 'ODQyZjJmNjA1MTdiMzI5ZjY2ZWFhNDExODliYjA5MzA5OTllMmE4Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZGM0NTJkNDg5ZjQzNzY5ZDYzYWFjZGY1ZTUyNGFmZDVmY2E3YjkwIn0=', '2021-05-04 05:04:36.612090'),
('47bhggfolfjhnnbw9xfe91a2m76d7edm', 'OWM3Y2ZlODQ0NDZhMmUxYjdhMDg1YzllMzQ5OWUxZmI0MjVhMmIyMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MzY2YzEwNDNhMzBmMmU1YzVkYmNmZTg3ODgwZGU2YmMwNjQ0NWExIn0=', '2021-05-02 15:34:37.110625'),
('6vur427j7cecma4kz8aub04io56r6w71', 'NzQ1ZjkxOWY4Y2IyMTI5MDk5NGZiMGNkMmFlMWFhZDAxZjJlM2IwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiM2YxMWZiYjUzODhhY2I5OTdlZGQ2YmExMjBhM2RmNWZkODU1ODQxIn0=', '2021-04-24 07:24:20.240062'),
('afqee779u0o7xeuvayoyozjzc41sc5z9', 'OGE4NzFhNzYyZjU5YzEwZGRhMDc0YWYwYzg5NzAxMDQ5ZWQ1MTM3ODp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDZhYmI4YmQ5NThjOWNiZTFiMjVmMDFhYWExMTJkYmFmMTNkYTQwIn0=', '2021-04-27 13:15:06.237460'),
('eoxswpyqwzj5lmsr5nvj1tmprkp0dt1g', 'YzJmMGE4YzFhNjA1YzI3MTM3YTgyMTg1NTc1M2UwOGYzZmNlMzdlZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhMzk4ODE1YzBlYTU2ZjQwZTVlYTM4Mjk1Y2JkZDFkMjgwOGNjNDAwIn0=', '2021-05-02 14:23:03.057406'),
('glm1qwle8l5m0fbi0dwii4cmf7ua09pp', 'NzQ1ZjkxOWY4Y2IyMTI5MDk5NGZiMGNkMmFlMWFhZDAxZjJlM2IwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiM2YxMWZiYjUzODhhY2I5OTdlZGQ2YmExMjBhM2RmNWZkODU1ODQxIn0=', '2021-04-24 16:15:42.608080'),
('mwrtztipxvi1ek758zdy2xqfnfwehyl5', 'MWNhNzgwNzRkNmUwMzFhM2Q5MzMwM2E5Njk2ZjgxN2UxMDE4ZTVkYjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYzI5MTFlYmM5MmE0YzkwODVjOGRiY2IyYTEwZjZjNjJmODc1Njg4In0=', '2021-04-27 13:22:17.731933'),
('n8awdbw148ozwjtt6dmdey7b4t97q97e', 'OWM3Y2ZlODQ0NDZhMmUxYjdhMDg1YzllMzQ5OWUxZmI0MjVhMmIyMzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MzY2YzEwNDNhMzBmMmU1YzVkYmNmZTg3ODgwZGU2YmMwNjQ0NWExIn0=', '2021-05-02 15:34:37.127508'),
('pwvz5watfz9fmaeg5atoq12a8p0snmev', 'MjNlM2JiZjJhYWE1MTE2YjRkNTU5ZTQxOTNhYWQ1NmY2ZTAwNGI1ZTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYmVmNDVjOWUzZmMwZjlkZDY3NzZjYmMzMzZmZmUwMzViZmY4M2NmIn0=', '2021-04-27 13:20:49.904180'),
('t9mmlmqihldpd4q018xcvvqlkjn7ggj5', 'NzQ1ZjkxOWY4Y2IyMTI5MDk5NGZiMGNkMmFlMWFhZDAxZjJlM2IwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiM2YxMWZiYjUzODhhY2I5OTdlZGQ2YmExMjBhM2RmNWZkODU1ODQxIn0=', '2021-05-01 12:51:29.044645');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `application_booking`
--
ALTER TABLE `application_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_booking_tour_id_48f778c4_fk_application_tour_id` (`tour_id`),
  ADD KEY `application_booking_user_id_f5e8d4b8` (`user_id`);

--
-- Indexes for table `application_destination`
--
ALTER TABLE `application_destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_itinerary`
--
ALTER TABLE `application_itinerary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_itenerary_tour_id_68427f09_fk_application_tour_id` (`tour_id`);

--
-- Indexes for table `application_newsletter`
--
ALTER TABLE `application_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_review`
--
ALTER TABLE `application_review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `application_subscribe`
--
ALTER TABLE `application_subscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_tour`
--
ALTER TABLE `application_tour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application_tour_destination`
--
ALTER TABLE `application_tour_destination`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_tour_destina_tour_id_destination_id_44c0f5cc_uniq` (`tour_id`,`destination_id`),
  ADD KEY `application_tour_des_destination_id_100984d3_fk_applicati` (`destination_id`);

--
-- Indexes for table `application_tour_reviews`
--
ALTER TABLE `application_tour_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_tour_reviews_tour_id_user_id_cce4a5a8_uniq` (`tour_id`,`user_id`),
  ADD KEY `application_tour_reviews_user_id_a8885b18_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_profile`
--
ALTER TABLE `account_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `application_booking`
--
ALTER TABLE `application_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `application_destination`
--
ALTER TABLE `application_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `application_itinerary`
--
ALTER TABLE `application_itinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `application_newsletter`
--
ALTER TABLE `application_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `application_review`
--
ALTER TABLE `application_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `application_subscribe`
--
ALTER TABLE `application_subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_tour`
--
ALTER TABLE `application_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `application_tour_destination`
--
ALTER TABLE `application_tour_destination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `application_tour_reviews`
--
ALTER TABLE `application_tour_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_profile`
--
ALTER TABLE `account_profile`
  ADD CONSTRAINT `account_profile_user_id_bdd52018_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `application_booking`
--
ALTER TABLE `application_booking`
  ADD CONSTRAINT `application_booking_tour_id_48f778c4_fk_application_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `application_tour` (`id`),
  ADD CONSTRAINT `application_booking_user_id_f5e8d4b8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `application_itinerary`
--
ALTER TABLE `application_itinerary`
  ADD CONSTRAINT `application_itenerary_tour_id_68427f09_fk_application_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `application_tour` (`id`);

--
-- Constraints for table `application_review`
--
ALTER TABLE `application_review`
  ADD CONSTRAINT `application_review_user_id_33feae83_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `application_tour_destination`
--
ALTER TABLE `application_tour_destination`
  ADD CONSTRAINT `application_tour_des_destination_id_100984d3_fk_applicati` FOREIGN KEY (`destination_id`) REFERENCES `application_destination` (`id`),
  ADD CONSTRAINT `application_tour_des_tour_id_ca69829e_fk_applicati` FOREIGN KEY (`tour_id`) REFERENCES `application_tour` (`id`);

--
-- Constraints for table `application_tour_reviews`
--
ALTER TABLE `application_tour_reviews`
  ADD CONSTRAINT `application_tour_reviews_tour_id_ee07e4db_fk_application_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `application_tour` (`id`),
  ADD CONSTRAINT `application_tour_reviews_user_id_a8885b18_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
