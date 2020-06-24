-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июн 24 2020 г., 20:15
-- Версия сервера: 5.7.26
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `dbcourserium`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `admin_profile`
--

CREATE TABLE `admin_profile` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `confirmed_item_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `catalog_subjects` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_courses`
--

CREATE TABLE `catalog_courses` (
  `id` int(11) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `Course`
--

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

CREATE TABLE `mycourses` (
  `id` int(11) NOT NULL,
  `course_name_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(50) NOT NULL,
  `admin_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `search`
--

CREATE TABLE `search` (
  `id` int(11) NOT NULL,
  `catalog_subjects` int(11) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `study`
--

CREATE TABLE `study` (
  `id` int(11) NOT NULL,
  `course_data` varchar(10000) NOT NULL,
  `study_progress` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_status` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`, `user_status`) VALUES
(8, 'admin3452', 'kh@yandex.ru', '$2y$10$gOHN/Iu7HyirKi6iiZqxre97KKtAaL5XB/1N/qsnQrY5nvHvOJty.', NULL),
(9, 'khoddmx123', 'khodmx@yandex.ru', '$2y$10$gg61QjI7SDUNFntXE0rCeOSRpiVSg6s8q36OJWZqMRSbR4OG5Gvr6', NULL),
(10, 'khoddmx777', 'khdkv@gmail.com', '$2y$10$2D.sGjrzIjN6NGXzjVRkFOqWqFJgNpJkeDMw6dZ5nX1pIclkmoXDS', NULL),
(11, 'khoddmx888', '100027@student.spb-rtk.ru', '$2y$10$FDECduxlh3e8J4F6n3vfgOUk2ZHeMUCX3zYx8jmE5W/aGQm.wdorC', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wallet`
--

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
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `study_ibfk_1` FOREIGN KEY (`id`) REFERENCES `db_courserium`.`Course` (`course_study_id`);

--
-- Ограничения внешнего ключа таблицы `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data_user` (`Wallet_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
