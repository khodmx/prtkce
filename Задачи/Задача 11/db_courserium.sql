-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 17 2020 г., 19:59
-- Версия сервера: 5.7.26
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db_courserium`
--
CREATE DATABASE IF NOT EXISTS `db_courserium` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_courserium`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
CREATE TABLE `admin_profile` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `confirmed_item_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `catalog_subjects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_courses`
--

DROP TABLE IF EXISTS `catalog_courses`;
CREATE TABLE `catalog_courses` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Course`
--

DROP TABLE IF EXISTS `Course`;
CREATE TABLE `Course` (
  `id` int(11) NOT NULL,
  `course_info` text NOT NULL,
  `course_cost` text NOT NULL,
  `course_study_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `data_card`
--

DROP TABLE IF EXISTS `data_card`;
CREATE TABLE `data_card` (
  `id` int(11) NOT NULL,
  `Number_card` varchar(19) NOT NULL,
  `FCs` varchar(100) NOT NULL,
  `Validity period` date NOT NULL,
  `CVC/CVV` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `data_user`
--

DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Mycourses_id` int(100) NOT NULL,
  `Wallet_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `mycourses`
--

DROP TABLE IF EXISTS `mycourses`;
CREATE TABLE `mycourses` (
  `id` int(11) NOT NULL,
  `course_name_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `admin_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `catalog_subjects` int(11) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `study`
--

DROP TABLE IF EXISTS `study`;
CREATE TABLE `study` (
  `id` int(11) NOT NULL,
  `course_data` varchar(10000) NOT NULL,
  `study_progress` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Name and surname` varchar(50) NOT NULL,
  `E-mail` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wallet`
--

DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `wallet_balance` text NOT NULL,
  `wallet_deposit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Индексы таблицы `admin_profile`
--
ALTER TABLE `admin_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `confirmed_item_id` (`confirmed_item_id`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalog_subjects` (`catalog_subjects`);

--
-- Индексы таблицы `catalog_courses`
--
ALTER TABLE `catalog_courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course` (`course`);

--
-- Индексы таблицы `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_study` (`course_study_id`) USING BTREE;

--
-- Индексы таблицы `data_card`
--
ALTER TABLE `data_card`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `E-mail` (`E-mail`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `Mycourses_id` (`Mycourses_id`) USING BTREE,
  ADD UNIQUE KEY `Wallet_id` (`Wallet_id`);

--
-- Индексы таблицы `mycourses`
--
ALTER TABLE `mycourses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_name` (`course_name_id`) USING BTREE;

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Индексы таблицы `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `catalog_subjects` (`catalog_subjects`),
  ADD UNIQUE KEY `course` (`course`);

--
-- Индексы таблицы `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `E-mail` (`E-mail`) USING BTREE;

--
-- Индексы таблицы `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_deposit` (`wallet_deposit_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `admin_profile`
--
ALTER TABLE `admin_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `catalog_courses`
--
ALTER TABLE `catalog_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Course`
--
ALTER TABLE `Course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_card`
--
ALTER TABLE `data_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `mycourses`
--
ALTER TABLE `mycourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `search`
--
ALTER TABLE `search`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `study`
--
ALTER TABLE `study`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admin_profile`
--
ALTER TABLE `admin_profile`
  ADD CONSTRAINT `admin_profile_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ограничения внешнего ключа таблицы `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`id`) REFERENCES `search` (`course`),
  ADD CONSTRAINT `cart_ibfk_4` FOREIGN KEY (`confirmed_item_id`) REFERENCES `catalog_courses` (`id`);

--
-- Ограничения внешнего ключа таблицы `catalog_courses`
--
ALTER TABLE `catalog_courses`
  ADD CONSTRAINT `catalog_courses_ibfk_1` FOREIGN KEY (`id`) REFERENCES `catalog` (`catalog_subjects`),
  ADD CONSTRAINT `catalog_courses_ibfk_2` FOREIGN KEY (`course`) REFERENCES `search` (`catalog_subjects`);

--
-- Ограничения внешнего ключа таблицы `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`id`) REFERENCES `mycourses` (`course_name_id`);

--
-- Ограничения внешнего ключа таблицы `data_card`
--
ALTER TABLE `data_card`
  ADD CONSTRAINT `data_card_ibfk_1` FOREIGN KEY (`id`) REFERENCES `wallet` (`wallet_deposit_id`);

--
-- Ограничения внешнего ключа таблицы `data_user`
--
ALTER TABLE `data_user`
  ADD CONSTRAINT `data_user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `mycourses`
--
ALTER TABLE `mycourses`
  ADD CONSTRAINT `mycourses_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data_user` (`Mycourses_id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `mycourses` (`course_name_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id`) REFERENCES `cart` (`confirmed_item_id`);

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ограничения внешнего ключа таблицы `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `study_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Course` (`course_study_id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `profile` (`id`);

--
-- Ограничения внешнего ключа таблицы `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data_user` (`Wallet_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
