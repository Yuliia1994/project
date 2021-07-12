-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 12 2021 г., 10:42
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shopping`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  `cash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`, `cash`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 14:21:18', '21-06-2018 08:27:55 PM', 0),
(2, 'admin_2', 'a122f83629ba3cf34c5953c1f6a6511b', '2021-07-06 08:29:52', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Фонари', 'Test ', '2021-01-15 17:19:32', ''),
(5, 'Ремкомплекты', 'test', '2021-01-07 17:19:54', ''),
(6, 'Фары', 'Test ', '2021-02-26 17:18:52', ''),
(12, 'ЗАДНИЕ', 'ЗАДНИЕ', '2021-07-11 15:14:52', NULL),
(467, 'ОПТИЧЕСКИЕ ЭЛЕМЕНТЫ', 'Test ', '2021-01-01 17:17:37', '30-01-2017 12:22:24 AM');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(0, 2, '4936', 1, '2021-07-12 08:00:34', 'Наложеный платеж', NULL),
(0, 2, '4939', 2, '2021-07-12 08:00:34', 'Наложеный платеж', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(4936, 12, NULL, '1601 Ліхтар задній лівий (у зборі) ФП-209', 'Руслан-комплект', 39, 50, '\n					\"<p style=\"\"text-align:justify\"\"><span style=\"\"font-size:16.0pt;color:black\"\">Фонарь задний левый ФП-209П.00.00 с пластмассовым корпусом выполняет функции указателя поворота, габаритного огня и сигнала торможения.</span></p>\n<p style=\"\"text-align:justify\"\"><span style=\"\"font-size:16.0pt;color:black\"\">Фонарь&nbsp;универсальный. Сзади фонаря есть контактная группа, в которой предусмотрена возможность перестановки контактов.<br/>\nИмеет сертификат соответствия в системе Укр СЕПРО.&nbsp;Вес: 0,23 кг. Конструктивные особенности: выводы штыревые серии 6,3. Монтаж-двумя болтами М6. Исполнение рассеивателя: поликарбонат. Габаритные размеры: 160x87x98 мм</span></p>\n<p style=\"\"text-align:justify\"\"><span style=\"\"font-size:16.0pt;color:black\"\">По всем вопросам обращайтесь к нашим менеджерам, +38(096)-426-35-49, всегда рады&nbsp;помочь!</span></p>\"\n', 'http://tmruslan.com/images/rozetka_2/000004936_1.jpg', NULL, NULL, 50, '88', '2021-07-11 15:10:00', NULL),
(4939, 467, NULL, '1604 Оптичний елемент фари (фронт) 8703.11/016-2', 'Руслан-комплект', 68, 90, '\n					<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\n<tbody>\n<tr>\n<td colspan=\"4\" valign=\"top\" width=\"645\">\n<p>Код товара: 1604</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\" valign=\"top\" width=\"645\">\n<p>Характеристики изделия</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"161\">\n<p>Тип фары для установки</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Передняя</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Гарантия, мес.</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>12 мес.</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"161\">\n<p>Торговая марка</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Wassa</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Страна производитель</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Украина</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"161\">\n<p>Габаритные размеры,мм</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Диаметр 144,5х68</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Тип лампы</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>R2</p>\n</td>\n</tr>\n<tr>\n<td valign=\"top\" width=\"161\">\n<p>Масса, кг</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>0,280</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Тип сигнала</p>\n</td>\n<td valign=\"top\" width=\"161\">\n<p>Рабочий свет</p>\n</td>\n</tr>\n<tr>\n<td colspan=\"4\" valign=\"top\" width=\"645\">\n<p>Применение Фары ФГ-304, ФГ-304П</p>\n</td>\n</tr>\n</tbody>\n</table>', 'http://tmruslan.com/images/rozetka_2/000004939_1.jpg', NULL, NULL, NULL, '27', '2021-07-12 04:52:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Фонари задние ', '2017-01-26 14:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'Фонари передние ', '2017-01-26 14:29:09', ''),
(4, 4, 'Светоотражатели', '2017-01-30 14:55:48', ''),
(5, 4, 'Освещение номерного знака', '2017-02-04 02:12:40', ''),
(6, 4, 'Повторители поворотов', '2017-02-04 02:13:00', ''),
(7, 3, 'Амортизаторы', '2017-02-04 02:13:27', ''),
(8, 3, 'Крылья', '2017-02-04 02:13:54', ''),
(9, 3, 'Замки', '2017-02-04 02:36:45', ''),
(10, 3, 'Ступицы', '2017-02-04 02:37:02', ''),
(11, 6, 'Фары передние', '2017-02-04 02:37:51', ''),
(12, 6, 'Фары рабочие', '2017-03-10 18:12:59', '');

-- --------------------------------------------------------

--
-- Структура таблицы `transaction_table`
--

CREATE TABLE `transaction_table` (
  `id` int(11) NOT NULL,
  `code_admin` int(11) NOT NULL,
  `transaction_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-04 12:35:21', NULL, 1),
(27, 'litwin.yu1994@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-06 13:36:29', NULL, 1),
(28, 'litwin.yu1994@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-06 13:42:00', '06-07-2021 07:42:48 PM', 1),
(29, 'litwin.yu1994@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 14:23:56', '07-07-2021 08:15:52 PM', 1),
(30, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 14:45:55', NULL, 1),
(31, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 14:48:37', '07-07-2021 08:19:58 PM', 1),
(32, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 14:50:40', '07-07-2021 08:22:17 PM', 1),
(33, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 15:10:23', NULL, 1),
(34, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 16:58:49', NULL, 1),
(35, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 10:14:56', NULL, 1),
(36, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 10:38:18', NULL, 1),
(37, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 10:41:57', NULL, 1),
(38, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 10:46:47', NULL, 1),
(39, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 13:55:24', NULL, 1),
(40, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 17:31:37', NULL, 0),
(41, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-09 17:31:51', NULL, 1),
(42, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-11 15:25:49', NULL, 0),
(43, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-11 15:26:12', NULL, 1),
(44, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 04:53:51', '12-07-2021 12:45:59 PM', 1),
(45, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 07:16:03', '12-07-2021 12:46:41 PM', 1),
(46, 'user2@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 07:17:01', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'User2', 'user2@gmail.com', 989999989, 'fa7c3fcb670a58aa3e90a391ea533c99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-09 17:30:55', NULL),
(5, 'User1', 'user1@gmail.com', 989999989, '59029276955677351421b3ff6bf5ee4c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-09 17:30:55', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `transaction_table`
--
ALTER TABLE `transaction_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code_admin` (`code_admin`);

--
-- Индексы таблицы `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT для таблицы `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4940;

--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `transaction_table`
--
ALTER TABLE `transaction_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
