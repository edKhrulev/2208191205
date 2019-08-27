

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user_office_address`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE `address` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `house` varchar(255) NOT NULL,
  `additional_info` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `address`
--

INSERT INTO `address` (`id`, `name`, `city`, `area`, `street`, `house`, `additional_info`, `created_at`) VALUES
(5, 'Aaaa', 'Aaaa', 'AAAA', 'AAAA', '11', 'ggdfg', '2019-08-27 08:17:37'),
(6, 'bob', 'Bfsg', 'Buda', 'bublr', '33', 'sdavsav', '2019-08-27 08:18:34'),
(7, 'Carl', 'City', 'Canada', 'Car', '555', 'fdnnn', '2019-08-27 08:19:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
