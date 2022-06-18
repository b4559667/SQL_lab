-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2022 at 04:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_item` int(11) NOT NULL,
  `book_novelty` varchar(3) DEFAULT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_price` float DEFAULT NULL,
  `book_pages` int(11) NOT NULL,
  `book_date` date DEFAULT NULL,
  `book_circulation` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `shape_id` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_item`, `book_novelty`, `book_name`, `book_price`, `book_pages`, `book_date`, `book_circulation`, `theme_id`, `category_id`, `publisher_id`, `shape_id`) VALUES
(1, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 400, '2000-07-24', 5000, 1, 1, 1, 1),
(2, 4985, 'No', 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид', 18.9, 288, '2000-07-07', 5000, 1, 1, 2, 1),
(3, 5141, 'No', 'Структури даних та алгоритми', 37.8, 384, '2000-09-29', 5000, 1, 1, 2, 1),
(4, 5127, 'No', 'Автоматизація інженерно-графічних робіт', 11.58, 256, '2000-06-15', 5000, 1, 1, 1, 1),
(5, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 400, '2000-07-24', 5000, 1, 2, 1, 1),
(6, 5199, 'No', 'Залізо IBM 2001', 30.07, 368, '2000-12-02', 5000, 1, 2, 3, 1),
(7, 3851, 'No', 'Захист інформації та безпека комп\'ютерних систем', 26, 480, NULL, 5000, 1, 3, 4, 2),
(8, 3932, 'No', 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 144, '1999-06-09', 5000, 1, 4, 5, 3),
(9, 4713, 'No', 'Plug-ins. Додаткові програми для музичних програм', 11.41, 144, '2000-02-22', 5000, 1, 4, 5, 1),
(10, 5217, 'No', 'Windows МЕ. Найновіші версії програм', 16.57, 320, '2000-08-25', 5000, 2, 5, 6, 1),
(11, 4829, 'No', 'Windows 2000 Professional крок за кроком з CD', 27.25, 320, '2000-04-28', 5000, 2, 5, 7, 1),
(12, 5170, 'No', 'Linux версії', 24.43, 346, '2000-09-29', 5000, 2, 6, 5, 1),
(13, 860, 'No', 'Операційна система UNIX', 3.5, 395, '1997-05-05', 5000, 2, 7, 1, 4),
(14, 44, 'No', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 352, '1996-03-20', 5000, 2, 8, 4, 5),
(15, 5176, 'No', 'Windows Ме. Супутник користувача', 12.79, 306, '2000-10-10', 5000, 2, 8, 1, 6),
(16, 5462, 'No', 'Мова програмування С++. Лекції та вправи', 29, 656, '2000-12-12', 5000, 3, 9, 4, 2),
(17, 4982, 'No', 'Мова програмування С. Лекції та вправи', 29, 432, '2000-07-12', 5000, 3, 9, 4, 2),
(18, 4687, 'No', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.6, 240, '2000-02-03', 5000, 3, 9, 5, 1),
(19, 235, 'No', 'Інформаційні системи і структури даних', NULL, 288, NULL, 400, 1, 4, 8, 7),
(20, 8749, 'Yes', 'Бази даних в інформаційних системах', NULL, 418, '2018-07-25', 100, 3, 10, 9, 5),
(21, 2154, 'Yes', 'Сервер на основі операційної системи FreeBSD 6.1', 0, 216, '2015-03-11', 500, 3, 8, 9, 5),
(22, 2662, 'No', 'Організація баз даних та знань', 0, 208, '2001-10-10', 1000, 3, 10, 10, 7),
(23, 5641, 'Yes', 'Організація баз даних та знань', 0, 384, '2021-12-15', 5000, 3, 10, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `book_item` int(11) NOT NULL,
  `book_novelty` varchar(3) DEFAULT NULL,
  `book_name` varchar(100) NOT NULL,
  `book_price` float DEFAULT NULL,
  `book_publisher` varchar(30) NOT NULL,
  `book_pages` int(11) NOT NULL,
  `book_format` varchar(20) NOT NULL,
  `book_date` date DEFAULT NULL,
  `book_circulation` int(11) NOT NULL,
  `book_theme` varchar(50) NOT NULL,
  `book_category` varchar(50) NOT NULL
) ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `book_item`, `book_novelty`, `book_name`, `book_price`, `book_publisher`, `book_pages`, `book_format`, `book_date`, `book_circulation`, `book_theme`, `book_category`) VALUES
(1, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Підручники'),
(2, 4985, 'No', 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид', 18.9, 'Вільямс', 288, '70х100/16', '2000-07-07', 5000, 'Використання ПК в цілому', 'Підручники'),
(3, 5141, 'No', 'Структури даних та алгоритми', 37.8, 'Вільямс', 384, '70х100/16', '2000-09-29', 5000, 'Використання ПК в цілому', 'Підручники'),
(4, 5127, 'No', 'Автоматизація інженерно-графічних робіт', 11.58, 'Видавнича група BHV', 256, '70х100/16', '2000-06-15', 5000, 'Використання ПК в цілому', 'Підручники'),
(5, 5110, 'No', 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 'Видавнича група BHV', 400, '70х100/16', '2000-07-24', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(6, 5199, 'No', 'Залізо IBM 2001', 30.07, 'МикроАрт', 368, '70х100/16', '2000-12-02', 5000, 'Використання ПК в цілому', 'Апаратні засоби ПК'),
(7, 3851, 'No', 'Захист інформації та безпека комп\'ютерних систем', 26, 'DiaSoft', 480, '84х108/16', NULL, 5000, 'Використання ПК в цілому', 'Захист і безпека ПК'),
(8, 3932, 'No', 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 'ДМК', 144, '60х88/16', '1999-06-09', 5000, 'Використання ПК в цілому', 'Інші книги'),
(9, 4713, 'No', 'Plug-ins. Додаткові програми для музичних програм', 11.41, 'ДМК', 144, '70х100/16', '2000-02-22', 5000, 'Використання ПК в цілому', 'Інші книги'),
(10, 5217, 'No', 'Windows МЕ. Найновіші версії програм', 16.57, 'Триумф', 320, '70х100/16', '2000-08-25', 5000, 'Операційні системи', 'Windows 2000'),
(11, 4829, 'No', 'Windows 2000 Professional крок за кроком з CD', 27.25, 'Эком', 320, '70х100/16', '2000-04-28', 5000, 'Операційні системи', 'Windows 2000'),
(12, 5170, 'No', 'Linux версії', 24.43, 'ДМК', 346, '70х100/16', '2000-09-29', 5000, 'Операційні системи', 'Linux'),
(13, 860, 'No', 'Операційна система UNIX', 3.5, 'Видавнича група BHV', 395, '84х100/16', '1997-05-05', 5000, 'Операційні системи', 'Unix'),
(14, 44, 'No', 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 'DiaSoft', 352, '60х84/16', '1996-03-20', 5000, 'Операційні системи', 'Інші операційні системи'),
(15, 5176, 'No', 'Windows Ме. Супутник користувача', 12.79, 'Видавнича група BHV', 306, '', '2000-10-10', 5000, 'Операційні системи', 'Інші операційні системи'),
(16, 5462, 'No', 'Мова програмування С++. Лекції та вправи', 29, 'DiaSoft', 656, '84х108/16', '2000-12-12', 5000, 'Програмування', 'C&C++'),
(17, 4982, 'No', 'Мова програмування С. Лекції та вправи', 29, 'DiaSoft', 432, '84х108/16', '2000-07-12', 5000, 'Програмування', 'C&C++'),
(18, 4687, 'No', 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.6, 'ДМК', 240, '70х100/16', '2000-02-03', 5000, 'Програмування', 'C&C++'),
(19, 235, 'No', 'Інформаційні системи і структури даних', NULL, 'Києво-Могилянська академія', 288, '60х90/16', NULL, 400, 'Використання ПК в цілому', 'Інші книги'),
(20, 8749, 'Yes', 'Бази даних в інформаційних системах', NULL, 'Університет \"Україна\"', 418, '60х84/16', '2018-07-25', 100, 'Програмування', 'SQL'),
(21, 2154, 'Yes', 'Сервер на основі операційної системи FreeBSD 6.1', 0, 'Університет \"Україна\"', 216, '60х84/16', '2015-03-11', 500, 'Програмування', 'Інші операційні системи'),
(22, 2662, 'No', 'Організація баз даних та знань', 0, 'Вінниця: ВДТУ', 208, '60х90/16', '2001-10-10', 1000, 'Програмування', 'SQL'),
(23, 5641, 'Yes', 'Організація баз даних та знань', 0, 'Видавнича група BHV', 384, '70х100/16', '2021-12-15', 5000, 'Програмування', 'SQL');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(9, 'C&C++'),
(6, 'Linux'),
(10, 'SQL'),
(7, 'Unix'),
(5, 'Windows 2000'),
(4, 'Інші книги'),
(8, 'Інші операційні системи'),
(2, 'Апаратні засоби ПК'),
(3, 'Захист і безпека ПК'),
(1, 'Підручники');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(4, 'DiaSoft'),
(2, 'Вільямс'),
(10, 'Вінниця: ВДТУ'),
(1, 'Видавнича група BHV'),
(5, 'ДМК'),
(8, 'Києво-Могилянська академія'),
(3, 'МикроАрт'),
(6, 'Триумф'),
(9, 'Університет \"Україна\"'),
(7, 'Эком');

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape` (
  `shape_id` int(11) NOT NULL,
  `shape_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shape`
--

INSERT INTO `shape` (`shape_id`, `shape_name`) VALUES
(6, ''),
(5, '60х84/16'),
(3, '60х88/16'),
(7, '60х90/16'),
(1, '70х100/16'),
(4, '84х100/16'),
(2, '84х108/16');

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL,
  `theme_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`theme_id`, `theme_name`) VALUES
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `theme_id` (`theme_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `shape_id` (`shape_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `shape`
--
ALTER TABLE `shape`
  ADD PRIMARY KEY (`shape_id`),
  ADD UNIQUE KEY `shape_name` (`shape_name`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`),
  ADD UNIQUE KEY `theme_name` (`theme_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shape`
--
ALTER TABLE `shape`
  MODIFY `shape_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`theme_id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`publisher_id`),
  ADD CONSTRAINT `book_ibfk_4` FOREIGN KEY (`shape_id`) REFERENCES `shape` (`shape_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
