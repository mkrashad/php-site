-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 27 2019 г., 17:57
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `id8332451_phpsite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(4) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_d` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_k` varchar(255) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `author` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `title`, `meta_d`, `meta_k`, `date`, `description`, `text`, `author`) VALUES
(1, 'Как заработать с Google Adsense', 'Пошаговая инструкция регистрации', 'Google,adsense', '2018-12-24', '<p>В этом уроке мы научимся регистрироваться в системе        контекстной рекламы, которая поможет нам заработать деньги на своём сайте.</p>', '<p>В этом уроке мы научимся регистрироваться в системе          контекстной рекламы, которая поможет нам заработать деньги на своём          сайте.</p><p align=\"center\"><font size=\"4\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Пример заработка с двух обыкновенных сайтов за 3-4 месяца, не прилагая особых         усилий:</strong></font></p><p align=\"center\"><img src=\"lessons/280807/google/1.gif\" width=\"452\" height=\"148\"></p>     <p>Что же это за система такая, которая позволяет заработать на сайте, даже если на нём ничего не продается?</p><p>Система называется <strong>Google Adsense</strong>. </p>     <p align=\"center\"><font size=\"4\" face=\"Verdana, Arial, Helvetica, sans-serif\"><strong>Каквсё это работает?</strong></font></p><p>Смысл в том, что Вы регистрируете один свой сайт в системе контекстной рекламы <strong>Google Adsense</strong>. После регистрации, Вам выдают специальный Javascript код, который Вы можете размещать в любом месте любого своего сайта (который соответствует требованиям системы).</p>     <p>Теперь, при загрузке Вашего сайта, вместо этого Javascript кода будет       подгружаться реклама, которая подходит по смыслу к тематике Вашего ресурса.</p><p>Примеры с моих сайтов:</p><p align=\"center\"><img src=\"lessons/280807/google/2.gif\" width=\"313\" height=\"154\"></p><p align=\"left\">Рекламный блок расположен в правой колонке сайта.</p><p align=\"center\"><img src=\"lessons/280807/google/3.gif\" width=\"275\" height=\"182\"></p><p align=\"left\">Рекламный блок расположен в левой колонке сайта.</p><p>Если посетители Вашего сайта будут кликать по этой рекламе, то Вам будут капать деньги. </p><p align=\"center\"><img src=\"lessons/280807/google/4.gif\" width=\"400\" height=\"119\"></p><p>Сумма за каждый клик зависит от того, сколько за него заплатил рекламодатель       (обычно это 0,5-2$ за клик). Эта сумма делится между Вами и владельцем       системы в лучшем случае как 50/50 (если система посчитает Ваш сайт качественным  ресурсом) в худшем случае как 10/90 (если система посчитает Ваш сайт кучей мусора).</p><p align=\"center\"><img src=\"lessons/280807/google/5.gif\" width=\"312\" height=\"98\"></p>', 'Евгений Попов'),
(3, 'Как создать окно', 'описание урока', 'окно', '2018-12-23', 'ttttttttttttttttt', 'kkkkkkkkkkkkkkkkkkkkkkkkkk', 'Рашад'),
(2, 'Как открыть счет в Rupay', 'Инструкция по открытию счета в Рупей', 'Rupay, счет, открыть', '2018-12-24', '<p>В этом уроке пойдет речь об открытие счета в системе Rupay.</p>       <p>Вообще, счёт в этой системе понадобится Вам для многих целей. Например, Вы сможете без проблем покупать в Интернете цифровые товары, оплачивать хостинг, принимать деньги от своих клиентов и пр.</p>     ', '<p>???В этом уроке пойдет речь об открытие счета в системе \r\n          Rupay.</p>\r\n        <p>Вообще, счёт в этой системе понадобится Вам для многих \r\n          целей. Например, Вы сможете без проблем покупать в Интернете цифровые \r\n          товары, оплачивать хостинг, принимать деньги от своих клиентов и пр.</p>\r\n        <p>Распишем процесс открытия счета по шагам:</p>\r\n        <p><strong>1.</strong> Пройдите по ссылке - <a href=\"http://ruseller.com/p/rupay.php\" target=\"_blank\">открыть \r\n          счёт в Rupay</a></p>\r\n        <p align=\"center\"><img src=\"lessons/280807/rupay/1.gif\" width=\"212\" height=\"108\"></p>\r\n        <p><strong>2.</strong> На открывшейся странице жмите по \r\n          ссылке в правом меню, указанной на рисунке:</p>\r\n        <p align=\"center\"><img src=\"lessons/280807/rupay/2.gif\" width=\"219\" height=\"98\"></p>\r\n        <p><strong>3.</strong> Затем, заполняйте регистрационную \r\n          форму и жмите кнопку: \"Регистрация\".</p>\r\n        <p align=\"center\"><img src=\"lessons/280807/rupay/3.gif\" width=\"214\" height=\"91\"></p>\r\n        <p><strong>4.</strong> Итак, если всё прошло хорошо то \r\n          Вы стали владельцем счета, который не мешало бы пополнить. Пополнить \r\n          счёт можно множеством различных способов. Подробнее об этом Вы узнаете \r\n          если нажмете по ссылке \"пополнить счет\".</p>\r\n        <p align=\"center\"><img src=\"lessons/280807/rupay/4.gif\" width=\"236\" height=\"86\"></p>', 'Евгений Попов');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(2) NOT NULL,
  `page` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_d` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_k` varchar(255) COLLATE utf8_bin NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `page`, `title`, `meta_d`, `meta_k`, `text`) VALUES
(1, 'index', 'Главная', 'Добро пожаловать на сайт про языки PHP, HTML,CSS', 'PHP,HTML,CSS', '<p>Если говорить простым языком – сайт это некоторое количество информации в виде текста, графики и файлов, которые упорядочены с помощью языка разметки HTML и взаимосвязаны между собой ссылками. \r\n\r\n                    Вся эта информация находится на специальном сервере и доступна из любой точки мира т.к. она закреплена за определенным “именем” сайта – например, http://www.ruseller.com. Это “имя” кстати, называют – доменом сайта. \r\n\r\n                    Хостинг – услуга, которая включает в себя место на сервере для Вашего сайта, email адреса, поддержку различных скриптов (счетчиков, голосований и т.д.). Стоит хостинг от 1 до 50$ в месяц в зависимости от предоставляемого места, возможностей и пр.\r\n\r\n                    При этом не забывайте, что на одном хостинге можно разместить сразу несколько сайтов с разными “именами” (доменами). Сколько именно? Это зависит от тарифа хостинга.\r\n\r\n                    Пока мы не будем вдаваться в технические тонкости создания самих сайтов, это мы сделаем в последнем письме, а сразу начнём говорить о том, какие достоинства и недостатки есть у владения собственным сайтом.\r\n\r\n                    Плюсы:</p>\r\n\r\n                    <p>1. Ваш сайт будет тем местом, где будет собираться Ваша аудитория.</p> \r\n                    <p>2. Ваш сайт будет плацдармом для Вашей рассылки.</p>\r\n                    <p>3. Ваш сайт будет приносить прибыль с помощью контекстной рекламы.\r\n                    <p>4. На своём сайте Вы сможете рекламировать и продавать свои собственные товары и услуги в автоматическом режиме.</p>\r\n                    <p>5. Вы сможете получать прибыль, размещая на своем сайте рекламу партнерских товаров.</p>\r\n                    <p>6. Вы найдете много новых друзей и единомышленников.</p>\r\n                    <p>7. Вы будете больше уважать себя, Вас будут больше уважать окружающие.</p>\r\n                    <p>8. Владея сайтом, Вы будите идти в ногу со временем, потому как всем давно известно, что за Интернетом будущее.</p>\r\n\r\n                    <p>Минусы:</p> \r\n                    <p>1. Ежемесячные затраты порядка 5-10$ на хостинг для сайта.</p>\r\n                    <p>2. Время, затраченное на создание самого сайта и на дальнейшее регулярное пополнение его свежей информацией.</p>'),
(2, 'articles', 'Статьи по сайтостроению', 'Статьи по сайтостраению', 'статьи', '<p>!!!!Ut feugiat sit amet erat vitae viverra. Nullam fermentum rutrum finibus. Aenean felis nisi, vulputate at iaculis quis, mattis tincidunt nibh. Aenean nulla lectus, tempus pellentesque nulla commodo, dignissim fringilla velit. In ut rutrum lectus. Integer dignissim nulla massa, et ultricies lacus posuere in. Vivamus eu vulputate nunc, ac finibus urna.</p>'),
(3, 'lessons', 'Уроки', 'Уроки по сайтостроению', 'уроки,CSS,PHP', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt ac ex dignissim dapibus. Nunc facilisis porttitor est blandit semper. Duis dignissim, tellus at imperdiet porta, magna diam imperdiet nisl, quis porttitor turpis ante eu nibh. In hac habitasse platea dictumst.</p>'),
(4, 'contacts', 'О вас', 'Страница про автора сайта', 'автор', '<p>Vivamus lacinia, ante ut convallis condimentum, ligula purus volutpat nisl, nec luctus ex eros eget tortor. Ut aliquam urna id tempor iaculis. Donec diam odio, mollis id viverra quis, maximus in ligula. Phasellus iaculis dolor libero, id aliquet arcu dapibus sed.</p><p> Nulla scelerisque arcu eget lorem finibus malesuada.Nunc diam diam, viverra nec tellus sed, convallis feugiat ligula.</p><p>Vestibulum vestibulum dapibus urna eget ornare. Etiam sollicitudin, orci quis dapibus consectetur, ante sapien iaculis lacus, vitae scelerisque nunc risus at lectus. Pellentesque ac efficitur erat. Morbi in porttitor metus. Proin nec consectetur enim, non tincidunt elit. Ut ac elementum turpis.</p> <p>Praesent fringilla est ut magna ultricies porta. Vestibulum tortor turpis, aliquam quis neque vitae, scelerisque accumsan elit. Vivamus in diam quam. Quisque nec mi ut nisl tristique mattis. Quisque ut ligula vitae risus porta viverra id sit amet lacus. Nulla eu velit dolor. In hac habitasse platea dictumst.</p><p>Morbi sodales arcu sapien, non facilisis augue vestibulum sed. Nulla varius nisl at mauris consectetur, eget maximus lorem blandit.</p><p> Pellentesque at magna id nibh volutpat ullamcorper nec at neque. Vivamus aliquam ut tellus a euismod.</p><p> Donec et eros pharetra, tincidunt justo et, iaculis sapien. Morbi ligula nulla, vehicula sed urna eu, molestie placerat urna.</p><p> Nulla ullamcorper, ex vitae vehicula finibus, augue ex tincidunt velit, vitae volutpat quam velit a ipsum.</p><p> Aliquam egestas arcu lorem, non eleifend mi fringilla et. Aliquam erat volutpat.</p><p> Morbi nibh nisl, vulputate vitae sagittis vel, pellentesque eget felis. Etiam mollis sagittis urna eu malesuada.</p><p> Aenean dui magna, efficitur eu varius sit amet, hendrerit sed lacus. Aliquam facilisis ligula vel suscipit scelerisque.</p><p> Mauris sed orci tincidunt, eleifend orci in, mollis tortor. Suspendisse gravida ipsum sit amet massa porta, vitae tristique orci tempor.</p><p> In eu massa sit amet elit dapibus ullamcorper. Donec in enim tellus.</p><p> Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `userlist`
--

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `pass` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `userlist`
--

INSERT INTO `userlist` (`id`, `user`, `pass`) VALUES
(1, 'phpuser', 'php');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
