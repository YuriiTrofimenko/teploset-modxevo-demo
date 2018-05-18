-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 18 2018 г., 09:40
-- Версия сервера: 5.5.53
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `teplosetdev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `action` varchar(10) NOT NULL DEFAULT '',
  `id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about last user action.';

--
-- Дамп данных таблицы `modx_active_users`
--

INSERT INTO `modx_active_users` (`sid`, `internalKey`, `username`, `lasthit`, `action`, `id`) VALUES
('rbkjkef7n88m0jkp2c7rq0cfo6', 1, 'admin', 1525611871, '67', 1),
('bnu87lq9ugnoqo6kikao6oifk0', 1, 'admin', 1526623739, '16', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_locks`
--

CREATE TABLE `modx_active_user_locks` (
  `id` int(10) NOT NULL,
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `elementType` int(1) NOT NULL DEFAULT '0',
  `elementId` int(10) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about locked elements.';

--
-- Дамп данных таблицы `modx_active_user_locks`
--

INSERT INTO `modx_active_user_locks` (`id`, `sid`, `internalKey`, `elementType`, `elementId`, `lasthit`) VALUES
(61, 'bnu87lq9ugnoqo6kikao6oifk0', 1, 1, 3, 1526623739);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_user_sessions`
--

CREATE TABLE `modx_active_user_sessions` (
  `sid` varchar(32) NOT NULL DEFAULT '',
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data about valid user sessions.';

--
-- Дамп данных таблицы `modx_active_user_sessions`
--

INSERT INTO `modx_active_user_sessions` (`sid`, `internalKey`, `lasthit`, `ip`) VALUES
('bnu87lq9ugnoqo6kikao6oifk0', 1, 1526625637, '127.0.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int(11) NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Categories to be used snippets,tv,chunks, etc';

--
-- Дамп данных таблицы `modx_categories`
--

INSERT INTO `modx_categories` (`id`, `category`) VALUES
(1, 'Manager and Admin'),
(2, 'customTemplates'),
(3, 'customChunks'),
(4, 'customSnippets');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(4) DEFAULT '0' COMMENT 'determine whether the document group is private to manager users',
  `private_webgroup` tinyint(4) DEFAULT '0' COMMENT 'determines whether the document is private to web users'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int(10) NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_event_log`
--

CREATE TABLE `modx_event_log` (
  `id` int(11) NOT NULL,
  `eventid` int(11) DEFAULT '0',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1- information, 2 - warning, 3- error',
  `user` int(11) NOT NULL DEFAULT '0' COMMENT 'link to user table',
  `usertype` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - manager, 1 - web',
  `source` varchar(50) NOT NULL DEFAULT '',
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores event and error logs';

--
-- Дамп данных таблицы `modx_event_log`
--

INSERT INTO `modx_event_log` (`id`, `eventid`, `createdon`, `type`, `user`, `usertype`, `source`, `description`) VALUES
(1, 0, 1525605161, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 2</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT DISTINCT sc.* FROM `teplosetdev`.`modx_site_content` AS sc\n		LEFT JOIN `teplosetdev`.`modx_document_groups` AS dg ON dg.document = sc.id WHERE sc.parent=\'2\' AND (1=\'1\' OR sc.privatemgr=0) ORDER BY createdon DESC  LIMIT 0, </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/manager/index.php?a=3&amp;id=2&amp;dir=DESC&amp;sort=createdon</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>3 - Viewing data for resource</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teploset-php-dev/manager/index.php?r=1&amp;amp;id=2&amp;amp;a=7&amp;amp;dv=1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:12:41</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0400 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0508 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0908 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.6259460449219 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 304</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(\'DISTINCT sc.*\', string $var2, string $var3, \'createdon DESC\', \' LIMIT 0, \')<br />manager/actions/document_data.static.php on line 81</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n'),
(2, 0, 1525605257, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 2</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT DISTINCT sc.* FROM `teplosetdev`.`modx_site_content` AS sc\n		LEFT JOIN `teplosetdev`.`modx_document_groups` AS dg ON dg.document = sc.id WHERE sc.parent=\'2\' AND (1=\'1\' OR sc.privatemgr=0) ORDER BY createdon   LIMIT 0, </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/manager/index.php?a=3&amp;id=2&amp;dir=&amp;sort=createdon&amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>3 - Viewing data for resource</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teploset-php-dev/manager/index.php?r=1&amp;amp;id=2&amp;amp;a=7&amp;amp;dv=1&amp;amp;dir=&amp;amp;sort=createdon&amp;amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:14:17</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0333 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0440 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0773 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.6254959106445 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 304</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(\'DISTINCT sc.*\', string $var2, string $var3, \'createdon \', \' LIMIT 0, \')<br />manager/actions/document_data.static.php on line 81</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n'),
(3, 0, 1525605893, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 2</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT DISTINCT sc.* FROM `teplosetdev`.`modx_site_content` AS sc\n		LEFT JOIN `teplosetdev`.`modx_document_groups` AS dg ON dg.document = sc.id WHERE sc.parent=\'2\' AND (1=\'1\' OR sc.privatemgr=0) ORDER BY createdon   LIMIT 0, </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/manager/index.php?a=3&amp;id=2&amp;dir=&amp;sort=createdon&amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>3 - Viewing data for resource</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teploset-php-dev/manager/index.php?r=1&amp;amp;id=2&amp;amp;a=7&amp;amp;dv=1&amp;amp;dir=&amp;amp;sort=createdon&amp;amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:24:53</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0276 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0432 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0708 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.6250991821289 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 304</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(\'DISTINCT sc.*\', string $var2, string $var3, \'createdon \', \' LIMIT 0, \')<br />manager/actions/document_data.static.php on line 81</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n'),
(4, 0, 1525605899, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 2</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT DISTINCT sc.* FROM `teplosetdev`.`modx_site_content` AS sc\n		LEFT JOIN `teplosetdev`.`modx_document_groups` AS dg ON dg.document = sc.id WHERE sc.parent=\'2\' AND (1=\'1\' OR sc.privatemgr=0) ORDER BY createdon   LIMIT 0, </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/manager/index.php?a=3&amp;id=2&amp;dir=&amp;sort=createdon&amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>3 - Viewing data for resource</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teploset-php-dev/manager/index.php?r=1&amp;amp;id=2&amp;amp;a=7&amp;amp;dv=1&amp;amp;dir=&amp;amp;sort=createdon&amp;amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:24:59</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0324 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0334 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0657 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.6250991821289 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 304</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(\'DISTINCT sc.*\', string $var2, string $var3, \'createdon \', \' LIMIT 0, \')<br />manager/actions/document_data.static.php on line 81</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n'),
(5, 0, 1525606686, 3, 0, 1, 'Snippet - accounts / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : file_get_contents(): </div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OpenServer\\domains\\teploset-php-dev\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>4</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>accounts</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/accounts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[2] <a href=\"http://teploset-php-dev/index.php?id=2\" target=\"_blank\">accounts</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:38:06</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0172 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>2.5518 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>2.5690 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.7598724365234 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(\'[[accounts]]\')<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(\'[[accounts]]\')<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'accounts\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>file_get_contents</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1360) : eval()\'d code on line 4</td>\n	</tr>\n</table>\n'),
(6, 0, 1525606751, 3, 0, 1, 'Snippet - accounts / PHP Parse Error', '<b>Trying to get property of non-object</b><br />\n<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">Error : file_get_contents(): </div>\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Error information</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>ErrorType[num]</td>\n		<td>WARNING[2]</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>File</td>\n		<td>C:\\OpenServer\\domains\\teploset-php-dev\\manager\\includes\\document.parser.class.inc.php(1360) : eval()\'d code</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Line</td>\n		<td>4</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current Snippet</td>\n		<td>accounts</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/accounts</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Resource</td>\n		<td>[2] <a href=\"http://teploset-php-dev/index.php?id=2\" target=\"_blank\">accounts</a></td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td></td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:39:11</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0166 s (6 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>2.5735 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>2.5901 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>1.7598724365234 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->executeParser</strong>()<br />index.php on line 128</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->prepareResponse</strong>()<br />manager/includes/document.parser.class.inc.php on line 2141</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->outputContent</strong>()<br />manager/includes/document.parser.class.inc.php on line 2234</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->parseDocumentSource</strong>(\'[[accounts]]\')<br />manager/includes/document.parser.class.inc.php on line 668</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippets</strong>(\'[[accounts]]\')<br />manager/includes/document.parser.class.inc.php on line 2003</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DocumentParser->_get_snip_result</strong>(\'accounts\')<br />manager/includes/document.parser.class.inc.php on line 1408</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DocumentParser->evalSnippet</strong>(string $var1, array $var2)<br />manager/includes/document.parser.class.inc.php on line 1466</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>eval</strong>()<br />manager/includes/document.parser.class.inc.php on line 1360</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>file_get_contents</strong>(string $var1)<br />manager/includes/document.parser.class.inc.php(1360) : eval()\'d code on line 4</td>\n	</tr>\n</table>\n'),
(7, 0, 1525607695, 3, 1, 0, 'SQL Query / Execution of a query to the database f', '<h2 style=\"color:red\">&laquo; MODX Parse Error &raquo;</h2><h3 style=\"color:red\">Execution of a query to the database failed - You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'\' at line 2</h3><div style=\"font-weight:bold;border:1px solid #ccc;padding:8px;color:#333;background-color:#ffffcd;margin-bottom:15px;\">SQL &gt; <span id=\"sqlHolder\">SELECT DISTINCT sc.* FROM `teplosetdev`.`modx_site_content` AS sc\n		LEFT JOIN `teplosetdev`.`modx_document_groups` AS dg ON dg.document = sc.id WHERE sc.parent=\'1\' AND (1=\'1\' OR sc.privatemgr=0) ORDER BY createdon   LIMIT 0, </span></div>\n<table class=\"grid\">\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Basic info</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>REQUEST_URI</td>\n		<td>http://teploset-php-dev/manager/index.php?a=3&amp;id=1&amp;dir=&amp;sort=createdon&amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Manager action</td>\n		<td>3 - Viewing data for resource</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Referer</td>\n		<td>http://teploset-php-dev/manager/index.php?r=1&amp;amp;id=1&amp;amp;a=7&amp;amp;dv=1&amp;amp;dir=&amp;amp;sort=createdon&amp;amp;page=0</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>User Agent</td>\n		<td>Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:59.0) Gecko/20100101 Firefox/59.0</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>IP</td>\n		<td>127.0.0.1</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Current time</td>\n		<td>2018-05-06 14:54:55</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th width=\"100px\" >Benchmarks</th>\n		<th></th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td>MySQL</td>\n		<td>0.0137 s (9 Requests)</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>PHP</td>\n		<td>0.0195 s</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td>Total</td>\n		<td>0.0332 s</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td>Memory</td>\n		<td>2.6250991821289 mb</td>\n	</tr>\n</table>\n<br />\n<table class=\"grid\">\n	<thead>\n	<tr class=\"\">\n		<th>Backtrace</th>\n	</tr>\n	</thead>\n	<tr class=\"gridItem\">\n		<td><strong>include_once</strong>(string $var1)<br />manager/index.php on line 304</td>\n	</tr>\n	<tr class=\"gridAltItem\">\n		<td><strong>DBAPI->select</strong>(\'DISTINCT sc.*\', string $var2, string $var3, \'createdon \', \' LIMIT 0, \')<br />manager/actions/document_data.static.php on line 81</td>\n	</tr>\n	<tr class=\"gridItem\">\n		<td><strong>DBAPI->query</strong>(string $var1)<br />manager/includes/extenders/dbapi.mysqli.class.inc.php on line 161</td>\n	</tr>\n</table>\n');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_keyword_xref`
--

CREATE TABLE `modx_keyword_xref` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Cross reference bewteen keywords and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int(10) NOT NULL,
  `timestamp` int(20) NOT NULL DEFAULT '0',
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `action` int(10) NOT NULL DEFAULT '0',
  `itemid` varchar(10) DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains a record of user interaction.';

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `timestamp`, `internalKey`, `username`, `action`, `itemid`, `itemname`, `message`) VALUES
(1, 1525604850, 1, 'admin', 58, '-', 'MODX', 'Logged in'),
(2, 1525604850, 1, 'admin', 17, '-', '-', 'Editing settings'),
(3, 1525604865, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource'),
(4, 1525604962, 1, 'admin', 4, '-', 'Новый ресурс', 'Creating a resource'),
(5, 1525605160, 1, 'admin', 5, '-', 'accounts', 'Saving resource'),
(6, 1525605184, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(7, 1525605189, 1, 'admin', 17, '-', '-', 'Editing settings'),
(8, 1525605192, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(9, 1525605206, 1, 'admin', 76, '-', '-', 'Element management'),
(10, 1525605212, 1, 'admin', 19, '-', 'Новый шаблон', 'Creating a new template'),
(11, 1525605248, 1, 'admin', 20, '-', 'accounts', 'Saving template'),
(12, 1525605248, 1, 'admin', 76, '-', '-', 'Element management'),
(13, 1525605251, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(14, 1525605255, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(15, 1525605256, 1, 'admin', 5, '2', 'accounts', 'Saving resource'),
(16, 1525605271, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(17, 1525605277, 1, 'admin', 76, '-', '-', 'Element management'),
(18, 1525605280, 1, 'admin', 16, '4', 'accounts', 'Editing template'),
(19, 1525605283, 1, 'admin', 76, '-', '-', 'Element management'),
(20, 1525605286, 1, 'admin', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(21, 1525605370, 1, 'admin', 79, '-', 'accountsAjax', 'Saving Chunk (HTML Snippet)'),
(22, 1525605372, 1, 'admin', 76, '-', '-', 'Element management'),
(23, 1525605380, 1, 'admin', 16, '4', 'accounts', 'Editing template'),
(24, 1525605558, 1, 'admin', 20, '4', 'accounts', 'Saving template'),
(25, 1525605558, 1, 'admin', 76, '-', '-', 'Element management'),
(26, 1525605632, 1, 'admin', 23, '-', 'Новый сниппет', 'Creating a new Snippet'),
(27, 1525605743, 1, 'admin', 24, '-', 'accounts', 'Saving Snippet'),
(28, 1525605743, 1, 'admin', 76, '-', '-', 'Element management'),
(29, 1525605755, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(30, 1525605769, 1, 'admin', 79, '1', 'accountsAjax', 'Saving Chunk (HTML Snippet)'),
(31, 1525605769, 1, 'admin', 76, '-', '-', 'Element management'),
(32, 1525605772, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(33, 1525605813, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(34, 1525605821, 1, 'admin', 76, '-', '-', 'Element management'),
(35, 1525605824, 1, 'admin', 16, '4', 'accounts', 'Editing template'),
(36, 1525605830, 1, 'admin', 76, '-', '-', 'Element management'),
(37, 1525605834, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(38, 1525605848, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(39, 1525605885, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(40, 1525605892, 1, 'admin', 5, '2', 'accounts', 'Saving resource'),
(41, 1525605895, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(42, 1525605898, 1, 'admin', 5, '2', 'accounts', 'Saving resource'),
(43, 1525605900, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(44, 1525605907, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(45, 1525605944, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(46, 1525605958, 1, 'admin', 76, '-', '-', 'Element management'),
(47, 1525605965, 1, 'admin', 16, '4', 'accounts', 'Editing template'),
(48, 1525605980, 1, 'admin', 20, '4', 'accounts', 'Saving template'),
(49, 1525605980, 1, 'admin', 76, '-', '-', 'Element management'),
(50, 1525605988, 1, 'admin', 16, '4', 'accounts', 'Editing template'),
(51, 1525605995, 1, 'admin', 20, '4', 'accounts', 'Saving template'),
(52, 1525605995, 1, 'admin', 76, '-', '-', 'Element management'),
(53, 1525605998, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(54, 1525606020, 1, 'admin', 79, '1', 'accountsAjax', 'Saving Chunk (HTML Snippet)'),
(55, 1525606020, 1, 'admin', 76, '-', '-', 'Element management'),
(56, 1525606026, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(57, 1525606037, 1, 'admin', 76, '-', '-', 'Element management'),
(58, 1525606041, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(59, 1525606065, 1, 'admin', 76, '-', '-', 'Element management'),
(60, 1525606072, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(61, 1525606084, 1, 'admin', 79, '1', 'accountsAjax', 'Saving Chunk (HTML Snippet)'),
(62, 1525606084, 1, 'admin', 76, '-', '-', 'Element management'),
(63, 1525606095, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(64, 1525606124, 1, 'admin', 79, '1', 'accountsAjax', 'Saving Chunk (HTML Snippet)'),
(65, 1525606124, 1, 'admin', 76, '-', '-', 'Element management'),
(66, 1525606530, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(67, 1525606670, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(68, 1525606670, 1, 'admin', 76, '-', '-', 'Element management'),
(69, 1525606673, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(70, 1525606746, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(71, 1525606746, 1, 'admin', 76, '-', '-', 'Element management'),
(72, 1525606773, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(73, 1525606788, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(74, 1525606788, 1, 'admin', 76, '-', '-', 'Element management'),
(75, 1525606799, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(76, 1525606814, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(77, 1525606814, 1, 'admin', 76, '-', '-', 'Element management'),
(78, 1525607554, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(79, 1525607562, 1, 'admin', 76, '-', '-', 'Element management'),
(80, 1525607565, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(81, 1525607595, 1, 'admin', 27, '1', 'MODX CMS Install Success', 'Editing resource'),
(82, 1525607694, 1, 'admin', 5, '1', 'MODX CMS Install Success', 'Saving resource'),
(83, 1525607695, 1, 'admin', 76, '-', 'MODX CMS Install Success', 'Element management'),
(84, 1525607704, 1, 'admin', 77, '-', 'Новый чанк', 'Creating a new Chunk (HTML Snippet)'),
(85, 1525607707, 1, 'admin', 76, '-', '-', 'Element management'),
(86, 1525607713, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(87, 1525608369, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(88, 1525608369, 1, 'admin', 76, '-', '-', 'Element management'),
(89, 1525608372, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(90, 1525610696, 1, 'admin', 76, '-', '-', 'Element management'),
(91, 1525610700, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(92, 1526618496, 1, 'admin', 58, '-', 'MODX', 'Logged in'),
(93, 1526618497, 1, 'admin', 17, '-', '-', 'Editing settings'),
(94, 1526618505, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(95, 1526618537, 1, 'admin', 76, '-', '-', 'Element management'),
(96, 1526618539, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(97, 1526618818, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(98, 1526618818, 1, 'admin', 76, '-', '-', 'Element management'),
(99, 1526618821, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(100, 1526618859, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(101, 1526618942, 1, 'admin', 76, '-', '-', 'Element management'),
(102, 1526618943, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(103, 1526620038, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(104, 1526620041, 1, 'admin', 76, '-', '-', 'Element management'),
(105, 1526620043, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(106, 1526620078, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(107, 1526620098, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(108, 1526620102, 1, 'admin', 27, '2', 'accounts', 'Editing resource'),
(109, 1526620105, 1, 'admin', 76, '-', '-', 'Element management'),
(110, 1526620107, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(111, 1526620182, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(112, 1526620182, 1, 'admin', 76, '-', '-', 'Element management'),
(113, 1526620185, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(114, 1526620188, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(115, 1526620220, 1, 'admin', 76, '-', '-', 'Element management'),
(116, 1526620222, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(117, 1526620283, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(118, 1526620283, 1, 'admin', 76, '-', '-', 'Element management'),
(119, 1526620309, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(120, 1526620316, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(121, 1526620316, 1, 'admin', 76, '-', '-', 'Element management'),
(122, 1526620338, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(123, 1526620349, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(124, 1526620349, 1, 'admin', 76, '-', '-', 'Element management'),
(125, 1526620351, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(126, 1526620606, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(127, 1526620606, 1, 'admin', 76, '-', '-', 'Element management'),
(128, 1526620608, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(129, 1526620636, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(130, 1526620636, 1, 'admin', 76, '-', '-', 'Element management'),
(131, 1526620638, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(132, 1526620676, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(133, 1526620690, 1, 'admin', 76, '-', '-', 'Element management'),
(134, 1526620691, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(135, 1526621161, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(136, 1526621161, 1, 'admin', 76, '-', '-', 'Element management'),
(137, 1526621192, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(138, 1526621340, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(139, 1526621340, 1, 'admin', 76, '-', '-', 'Element management'),
(140, 1526621381, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(141, 1526621404, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(142, 1526621404, 1, 'admin', 76, '-', '-', 'Element management'),
(143, 1526621414, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(144, 1526621438, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(145, 1526621438, 1, 'admin', 76, '-', '-', 'Element management'),
(146, 1526621498, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(147, 1526621539, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(148, 1526621539, 1, 'admin', 76, '-', '-', 'Element management'),
(149, 1526621543, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(150, 1526621584, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(151, 1526621584, 1, 'admin', 76, '-', '-', 'Element management'),
(152, 1526621609, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(153, 1526621628, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(154, 1526621628, 1, 'admin', 76, '-', '-', 'Element management'),
(155, 1526621643, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(156, 1526621679, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(157, 1526621679, 1, 'admin', 76, '-', '-', 'Element management'),
(158, 1526621689, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(159, 1526621710, 1, 'admin', 24, '1', 'accounts', 'Saving Snippet'),
(160, 1526621710, 1, 'admin', 76, '-', '-', 'Element management'),
(161, 1526621712, 1, 'admin', 22, '1', 'accounts', 'Editing Snippet'),
(162, 1526622282, 1, 'admin', 26, '-', '-', 'Refreshing site'),
(163, 1526623589, 1, 'admin', 76, '-', '-', 'Element management'),
(164, 1526623595, 1, 'admin', 78, '1', 'accountsAjax', 'Editing Chunk (HTML Snippet)'),
(165, 1526623608, 1, 'admin', 76, '-', '-', 'Element management'),
(166, 1526623614, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template'),
(167, 1526623737, 1, 'admin', 20, '3', 'Minimal Template', 'Saving template'),
(168, 1526623737, 1, 'admin', 76, '-', '-', 'Element management'),
(169, 1526623739, 1, 'admin', 16, '3', 'Minimal Template', 'Editing template');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_users`
--

CREATE TABLE `modx_manager_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains login information for backend users.';

--
-- Дамп данных таблицы `modx_manager_users`
--

INSERT INTO `modx_manager_users` (`id`, `username`, `password`) VALUES
(1, 'admin', '$P$BQwHdqaSCKlHgcjH2nt8SQJN7GKXj.0');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_access`
--

CREATE TABLE `modx_membergroup_access` (
  `id` int(10) NOT NULL,
  `membergroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int(10) NOT NULL,
  `user_group` int(10) NOT NULL DEFAULT '0',
  `member` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int(10) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(255) NOT NULL DEFAULT '',
  `longtitle` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(245) DEFAULT '',
  `link_attributes` varchar(255) NOT NULL DEFAULT '' COMMENT 'Link attriubtes',
  `published` int(1) NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` int(1) NOT NULL DEFAULT '0',
  `introtext` text COMMENT 'Used to provide quick summary of the document',
  `content` mediumtext,
  `richtext` tinyint(1) NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` int(1) NOT NULL DEFAULT '1',
  `cacheable` int(1) NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0' COMMENT 'Date the document was published',
  `publishedby` int(10) NOT NULL DEFAULT '0' COMMENT 'ID of user who published the document',
  `menutitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Menu title',
  `donthit` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Disable page hit count',
  `haskeywords` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to keywords',
  `hasmetatags` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'has links to meta tags',
  `privateweb` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private web document',
  `privatemgr` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Private manager document',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-inline, 1-attachment',
  `hidemenu` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Hide document from menu',
  `alias_visible` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site document tree.';

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `haskeywords`, `hasmetatags`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `alias_visible`) VALUES
(1, 'document', 'text/html', 'MODX CMS Install Success', 'Welcome to the MODX Content Management System', '', 'minimal-base', '', 1, 0, 0, 0, 0, '', '\r\n', 1, 3, 0, 1, 1, 1, 1130304721, 1, 1525607694, 0, 0, 0, 1130304721, 1, 'Base Install', 0, 0, 0, 0, 0, 0, 0, 1),
(2, 'document', 'text/html', 'accounts', '', '', 'accounts', '', 1, 0, 0, 0, 0, '', '', 1, 4, 1, 0, 0, 1, 1525605160, 1, 1525605898, 0, 0, 0, 1525605892, 1, '', 0, 0, 0, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content_metatags`
--

CREATE TABLE `modx_site_content_metatags` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `metatag_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reference table between meta tags and content';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `editor_name` varchar(50) NOT NULL DEFAULT 'none',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site chunks.';

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `name`, `description`, `editor_type`, `editor_name`, `category`, `cache_type`, `snippet`, `locked`) VALUES
(1, 'accountsAjax', '', 2, 'none', 3, 0, '[!accounts!]', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_keywords`
--

CREATE TABLE `modx_site_keywords` (
  `id` int(11) NOT NULL,
  `keyword` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site keyword list';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_metatags`
--

CREATE TABLE `modx_site_metatags` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag name',
  `tagvalue` varchar(255) NOT NULL DEFAULT '',
  `http_equiv` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 - use http_equiv tag style, 0 - use name'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site meta tags';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_modules`
--

CREATE TABLE `modx_site_modules` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `disabled` tinyint(4) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `wrap` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to module icon',
  `enable_resource` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'enables the resource file feature',
  `resourcefile` varchar(255) NOT NULL DEFAULT '' COMMENT 'a physical link to a resource file',
  `createdon` int(11) NOT NULL DEFAULT '0',
  `editedon` int(11) NOT NULL DEFAULT '0',
  `guid` varchar(32) NOT NULL DEFAULT '' COMMENT 'globally unique identifier',
  `enable_sharedparams` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text,
  `modulecode` mediumtext COMMENT 'module boot up code'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Modules';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_access`
--

CREATE TABLE `modx_site_module_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `usergroup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module users group access permission';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_module_depobj`
--

CREATE TABLE `modx_site_module_depobj` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL DEFAULT '0',
  `resource` int(11) NOT NULL DEFAULT '0',
  `type` int(2) NOT NULL DEFAULT '0' COMMENT '10-chunks, 20-docs, 30-plugins, 40-snips, 50-tpls, 60-tvs'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Module Dependencies';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Plugin',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `plugincode` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Disables the plugin',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site plugins.';

--
-- Дамп данных таблицы `modx_site_plugins`
--

INSERT INTO `modx_site_plugins` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`) VALUES
(1, 'FileSource', '<strong>0.1</strong> Save snippet and plugins to file', 0, 1, 0, 'require MODX_BASE_PATH.\'assets/plugins/filesource/plugin.filesource.php\';', 0, '', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int(10) NOT NULL,
  `evtid` int(10) NOT NULL DEFAULT '0',
  `priority` int(10) NOT NULL DEFAULT '0' COMMENT 'determines plugin run order'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links to system events';

--
-- Дамп данных таблицы `modx_site_plugin_events`
--

INSERT INTO `modx_site_plugin_events` (`pluginid`, `evtid`, `priority`) VALUES
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Snippet',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Cache option',
  `snippet` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `properties` text COMMENT 'Default Properties',
  `moduleguid` varchar(32) NOT NULL DEFAULT '' COMMENT 'GUID of module from which to import shared parameters'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site snippets.';

--
-- Дамп данных таблицы `modx_site_snippets`
--

INSERT INTO `modx_site_snippets` (`id`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`) VALUES
(1, 'accounts', '', 0, 4, 0, '\r\n//if ($_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\') {\r\n$base_url = \"http://192.168.0.106:8080/TeplosetEJB-war\";\r\n$accounts_url = \"/account\";\r\n\r\n\r\nif(isset($_REQUEST[\'action\'])){\r\n\r\n    switch ($_REQUEST[\'action\']) {\r\n    	case \'fetch-range\':\r\n    		$accounts_url =\r\n    			$accounts_url.\"?action=fetch-range&from=\".$_REQUEST[\'from\'].\"&to=\".$_REQUEST[\'to\'];\r\n    		break;\r\n    	case \'fetch-by-id\':\r\n    		$accounts_url =\r\n    			$accounts_url.\"?action=fetch-by-id&id=\".$_REQUEST[\'id\'];\r\n    		break;\r\n    	default:\r\n    		# code...\r\n    		break;\r\n    }\r\n}\r\n\r\n$inputJson = file_get_contents($base_url.$accounts_url);\r\nreturn $inputJson;\r\n//return $accounts_url ;\r\n//}', 0, '{}', ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int(10) NOT NULL,
  `templatename` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'url to icon file',
  `template_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-page,1-content',
  `content` mediumtext,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `selectable` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains the site templates.';

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `selectable`) VALUES
(3, 'Minimal Template', 'Default minimal empty template (content returned only)', 0, 0, '', 0, '<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <meta charset=\"utf-8\">\r\n            <meta content=\"IE=edge\" http-equiv=\"X-UA-Compatible\">\r\n                <title>\r\n                    Teploset - accounts demo\r\n                </title>\r\n                <!--Import Google Icon Font-->\r\n                <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\r\n                    <!--Import materialize.css-->\r\n                    <link href=\"/assets/css/materialize.min.css\" media=\"screen,projection\" rel=\"stylesheet\" type=\"text/css\"/>\r\n                </link>\r\n                <link href=\"/assets/css/custom.css\" media=\"screen,projection\" rel=\"stylesheet\" type=\"text/css\"/>\r\n                </link>\r\n            </meta>\r\n        </meta>\r\n    </head>\r\n    <body>\r\n        <div class=\"container\">\r\n            <div class=\"row\">\r\n                <div class=\"col s12 m3 l3 xl3\">\r\n            	    <h4>\r\n                        Accounts\r\n                    </h4>\r\n                    <!-- Сюда при помощи jquery помещается шаблон таблицы, заполненный данными о accounts-->\r\n                    <div class=\"row\">\r\n                        <div class=\"col s12 m12 l12 xl12\">\r\n                            <div id=\"table-container\">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n                <div class=\"col s12 m9 l9 xl9\">\r\n                    <h4>\r\n                        Account details\r\n                    </h4>\r\n                    <!-- Сюда при помощи jquery помещается шаблон, заполненный данными account-->\r\n                    <div class=\"row\">\r\n                        <div class=\"col s12 m12 l12 xl12\">\r\n                            <div id=\"details-container\">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <script src=\"/assets/js/custom/jquery-3.3.1.min.js\" type=\"text/javascript\">\r\n        </script>\r\n        <!--JavaScript at end of body for optimized loading-->\r\n        <script src=\"/assets/js/custom/materialize.min.js\" type=\"text/javascript\">\r\n        </script>\r\n        <script src=\"/assets/js/custom/hogan-3.0.2.min.js\" type=\"text/javascript\">\r\n        </script>\r\n        <script src=\"/assets/js/custom/custom.js\" type=\"text/javascript\">\r\n        </script>\r\n    </body>\r\n</html>', 0, 1),
(4, 'accounts', '', 0, 2, '', 0, '{{accountsAjax}}', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0' COMMENT '0-plain text,1-rich text,2-code editor',
  `category` int(11) NOT NULL DEFAULT '0' COMMENT 'category id',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '' COMMENT 'Display Control',
  `display_params` text COMMENT 'Display Control Properties',
  `default_text` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int(10) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for template variable access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int(11) NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `contentid` int(10) NOT NULL DEFAULT '0' COMMENT 'Site Content Id',
  `value` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Content Values Link Table';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0' COMMENT 'Template Variable id',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Site Template Variables Templates Link Table';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `service` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'System Service number',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='System Event Names.';

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`id`, `name`, `service`, `groupname`) VALUES
(1, 'OnDocPublished', 5, ''),
(2, 'OnDocUnPublished', 5, ''),
(3, 'OnWebPagePrerender', 5, ''),
(4, 'OnWebLogin', 3, ''),
(5, 'OnBeforeWebLogout', 3, ''),
(6, 'OnWebLogout', 3, ''),
(7, 'OnWebSaveUser', 3, ''),
(8, 'OnWebDeleteUser', 3, ''),
(9, 'OnWebChangePassword', 3, ''),
(10, 'OnWebCreateGroup', 3, ''),
(11, 'OnManagerLogin', 2, ''),
(12, 'OnBeforeManagerLogout', 2, ''),
(13, 'OnManagerLogout', 2, ''),
(14, 'OnManagerSaveUser', 2, ''),
(15, 'OnManagerDeleteUser', 2, ''),
(16, 'OnManagerChangePassword', 2, ''),
(17, 'OnManagerCreateGroup', 2, ''),
(18, 'OnBeforeCacheUpdate', 4, ''),
(19, 'OnCacheUpdate', 4, ''),
(107, 'OnMakePageCacheKey', 4, ''),
(20, 'OnLoadWebPageCache', 4, ''),
(21, 'OnBeforeSaveWebPageCache', 4, ''),
(22, 'OnChunkFormPrerender', 1, 'Chunks'),
(23, 'OnChunkFormRender', 1, 'Chunks'),
(24, 'OnBeforeChunkFormSave', 1, 'Chunks'),
(25, 'OnChunkFormSave', 1, 'Chunks'),
(26, 'OnBeforeChunkFormDelete', 1, 'Chunks'),
(27, 'OnChunkFormDelete', 1, 'Chunks'),
(28, 'OnDocFormPrerender', 1, 'Documents'),
(29, 'OnDocFormRender', 1, 'Documents'),
(30, 'OnBeforeDocFormSave', 1, 'Documents'),
(31, 'OnDocFormSave', 1, 'Documents'),
(32, 'OnBeforeDocFormDelete', 1, 'Documents'),
(33, 'OnDocFormDelete', 1, 'Documents'),
(1033, 'OnDocFormUnDelete', 1, 'Documents'),
(1034, 'onBeforeMoveDocument', 1, 'Documents'),
(1035, 'onAfterMoveDocument', 1, 'Documents'),
(34, 'OnPluginFormPrerender', 1, 'Plugins'),
(35, 'OnPluginFormRender', 1, 'Plugins'),
(36, 'OnBeforePluginFormSave', 1, 'Plugins'),
(37, 'OnPluginFormSave', 1, 'Plugins'),
(38, 'OnBeforePluginFormDelete', 1, 'Plugins'),
(39, 'OnPluginFormDelete', 1, 'Plugins'),
(40, 'OnSnipFormPrerender', 1, 'Snippets'),
(41, 'OnSnipFormRender', 1, 'Snippets'),
(42, 'OnBeforeSnipFormSave', 1, 'Snippets'),
(43, 'OnSnipFormSave', 1, 'Snippets'),
(44, 'OnBeforeSnipFormDelete', 1, 'Snippets'),
(45, 'OnSnipFormDelete', 1, 'Snippets'),
(46, 'OnTempFormPrerender', 1, 'Templates'),
(47, 'OnTempFormRender', 1, 'Templates'),
(48, 'OnBeforeTempFormSave', 1, 'Templates'),
(49, 'OnTempFormSave', 1, 'Templates'),
(50, 'OnBeforeTempFormDelete', 1, 'Templates'),
(51, 'OnTempFormDelete', 1, 'Templates'),
(52, 'OnTVFormPrerender', 1, 'Template Variables'),
(53, 'OnTVFormRender', 1, 'Template Variables'),
(54, 'OnBeforeTVFormSave', 1, 'Template Variables'),
(55, 'OnTVFormSave', 1, 'Template Variables'),
(56, 'OnBeforeTVFormDelete', 1, 'Template Variables'),
(57, 'OnTVFormDelete', 1, 'Template Variables'),
(58, 'OnUserFormPrerender', 1, 'Users'),
(59, 'OnUserFormRender', 1, 'Users'),
(60, 'OnBeforeUserFormSave', 1, 'Users'),
(61, 'OnUserFormSave', 1, 'Users'),
(62, 'OnBeforeUserFormDelete', 1, 'Users'),
(63, 'OnUserFormDelete', 1, 'Users'),
(64, 'OnWUsrFormPrerender', 1, 'Web Users'),
(65, 'OnWUsrFormRender', 1, 'Web Users'),
(66, 'OnBeforeWUsrFormSave', 1, 'Web Users'),
(67, 'OnWUsrFormSave', 1, 'Web Users'),
(68, 'OnBeforeWUsrFormDelete', 1, 'Web Users'),
(69, 'OnWUsrFormDelete', 1, 'Web Users'),
(70, 'OnSiteRefresh', 1, ''),
(71, 'OnFileManagerUpload', 1, ''),
(72, 'OnModFormPrerender', 1, 'Modules'),
(73, 'OnModFormRender', 1, 'Modules'),
(74, 'OnBeforeModFormDelete', 1, 'Modules'),
(75, 'OnModFormDelete', 1, 'Modules'),
(76, 'OnBeforeModFormSave', 1, 'Modules'),
(77, 'OnModFormSave', 1, 'Modules'),
(78, 'OnBeforeWebLogin', 3, ''),
(79, 'OnWebAuthentication', 3, ''),
(80, 'OnBeforeManagerLogin', 2, ''),
(81, 'OnManagerAuthentication', 2, ''),
(82, 'OnSiteSettingsRender', 1, 'System Settings'),
(83, 'OnFriendlyURLSettingsRender', 1, 'System Settings'),
(84, 'OnUserSettingsRender', 1, 'System Settings'),
(85, 'OnInterfaceSettingsRender', 1, 'System Settings'),
(86, 'OnMiscSettingsRender', 1, 'System Settings'),
(87, 'OnRichTextEditorRegister', 1, 'RichText Editor'),
(88, 'OnRichTextEditorInit', 1, 'RichText Editor'),
(89, 'OnManagerPageInit', 2, ''),
(90, 'OnWebPageInit', 5, ''),
(101, 'OnLoadDocumentObject', 5, ''),
(104, 'OnBeforeLoadDocumentObject', 5, ''),
(105, 'OnAfterLoadDocumentObject', 5, ''),
(91, 'OnLoadWebDocument', 5, ''),
(92, 'OnParseDocument', 5, ''),
(106, 'OnParseProperties', 5, ''),
(108, 'OnBeforeParseParams', 5, ''),
(93, 'OnManagerLoginFormRender', 2, ''),
(94, 'OnWebPageComplete', 5, ''),
(95, 'OnLogPageHit', 5, ''),
(96, 'OnBeforeManagerPageInit', 2, ''),
(97, 'OnBeforeEmptyTrash', 1, 'Documents'),
(98, 'OnEmptyTrash', 1, 'Documents'),
(99, 'OnManagerLoginFormPrerender', 2, ''),
(100, 'OnStripAlias', 1, 'Documents'),
(102, 'OnMakeDocUrl', 5, ''),
(103, 'OnBeforeLoadExtension', 5, ''),
(200, 'OnCreateDocGroup', 1, 'Documents'),
(201, 'OnManagerWelcomePrerender', 2, ''),
(202, 'OnManagerWelcomeHome', 2, ''),
(203, 'OnManagerWelcomeRender', 2, ''),
(204, 'OnBeforeDocDuplicate', 1, 'Documents'),
(205, 'OnDocDuplicate', 1, 'Documents'),
(206, 'OnManagerMainFrameHeaderHTMLBlock', 2, ''),
(207, 'OnManagerPreFrameLoader', 2, ''),
(208, 'OnManagerFrameLoader', 2, ''),
(209, 'OnManagerTreeInit', 2, ''),
(210, 'OnManagerTreePrerender', 2, ''),
(211, 'OnManagerTreeRender', 2, ''),
(212, 'OnManagerNodePrerender', 2, ''),
(213, 'OnManagerNodeRender', 2, ''),
(214, 'OnManagerMenuPrerender', 2, ''),
(215, 'OnManagerTopPrerender', 2, ''),
(224, 'OnDocFormTemplateRender', 1, 'Documents'),
(999, 'OnPageUnauthorized', 1, ''),
(1000, 'OnPageNotFound', 1, ''),
(1001, 'OnFileBrowserUpload', 1, 'File Browser Events');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains Content Manager settings.';

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`setting_name`, `setting_value`) VALUES
('settings_version', ''),
('manager_theme', 'MODxRE2'),
('server_offset_time', '0'),
('manager_language', 'russian-UTF8'),
('modx_charset', 'UTF-8'),
('site_name', 'My MODX Site'),
('site_start', '1'),
('error_page', '1'),
('unauthorized_page', '1'),
('site_status', '1'),
('auto_template_logic', 'parent'),
('default_template', '3'),
('old_template', ''),
('cache_type', '1'),
('use_udperms', '1'),
('udperms_allowroot', '0'),
('failed_login_attempts', '3'),
('blocked_minutes', '60'),
('use_captcha', '0'),
('emailsender', 'tyaa@ukr.net'),
('use_editor', '1'),
('use_browser', '1'),
('fe_editor_lang', 'russian-UTF8'),
('session.cookie.lifetime', '604800'),
('theme_refresher', ''),
('site_id', '5aeee1e286fbd');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(5) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information about the backend users.';

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `role`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `country`, `street`, `city`, `state`, `zip`, `fax`, `photo`, `comment`) VALUES
(1, 1, 'Default admin account', 1, 'tyaa@ukr.net', '', '', 0, 0, 0, 2, 1525604850, 1526618496, 0, 'bnu87lq9ugnoqo6kikao6oifk0', 0, 0, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int(10) NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `message` text,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `postdate` int(20) NOT NULL DEFAULT '0',
  `messageread` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains messages for the Content Manager messaging system.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_roles`
--

CREATE TABLE `modx_user_roles` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `frames` int(1) NOT NULL DEFAULT '0',
  `home` int(1) NOT NULL DEFAULT '0',
  `view_document` int(1) NOT NULL DEFAULT '0',
  `new_document` int(1) NOT NULL DEFAULT '0',
  `save_document` int(1) NOT NULL DEFAULT '0',
  `publish_document` int(1) NOT NULL DEFAULT '0',
  `delete_document` int(1) NOT NULL DEFAULT '0',
  `empty_trash` int(1) NOT NULL DEFAULT '0',
  `action_ok` int(1) NOT NULL DEFAULT '0',
  `logout` int(1) NOT NULL DEFAULT '0',
  `help` int(1) NOT NULL DEFAULT '0',
  `messages` int(1) NOT NULL DEFAULT '0',
  `new_user` int(1) NOT NULL DEFAULT '0',
  `edit_user` int(1) NOT NULL DEFAULT '0',
  `logs` int(1) NOT NULL DEFAULT '0',
  `edit_parser` int(1) NOT NULL DEFAULT '0',
  `save_parser` int(1) NOT NULL DEFAULT '0',
  `edit_template` int(1) NOT NULL DEFAULT '0',
  `settings` int(1) NOT NULL DEFAULT '0',
  `credits` int(1) NOT NULL DEFAULT '0',
  `new_template` int(1) NOT NULL DEFAULT '0',
  `save_template` int(1) NOT NULL DEFAULT '0',
  `delete_template` int(1) NOT NULL DEFAULT '0',
  `edit_snippet` int(1) NOT NULL DEFAULT '0',
  `new_snippet` int(1) NOT NULL DEFAULT '0',
  `save_snippet` int(1) NOT NULL DEFAULT '0',
  `delete_snippet` int(1) NOT NULL DEFAULT '0',
  `edit_chunk` int(1) NOT NULL DEFAULT '0',
  `new_chunk` int(1) NOT NULL DEFAULT '0',
  `save_chunk` int(1) NOT NULL DEFAULT '0',
  `delete_chunk` int(1) NOT NULL DEFAULT '0',
  `empty_cache` int(1) NOT NULL DEFAULT '0',
  `edit_document` int(1) NOT NULL DEFAULT '0',
  `change_password` int(1) NOT NULL DEFAULT '0',
  `error_dialog` int(1) NOT NULL DEFAULT '0',
  `about` int(1) NOT NULL DEFAULT '0',
  `file_manager` int(1) NOT NULL DEFAULT '0',
  `assets_files` int(1) NOT NULL DEFAULT '0',
  `assets_images` int(1) NOT NULL DEFAULT '0',
  `save_user` int(1) NOT NULL DEFAULT '0',
  `delete_user` int(1) NOT NULL DEFAULT '0',
  `save_password` int(11) NOT NULL DEFAULT '0',
  `edit_role` int(1) NOT NULL DEFAULT '0',
  `save_role` int(1) NOT NULL DEFAULT '0',
  `delete_role` int(1) NOT NULL DEFAULT '0',
  `new_role` int(1) NOT NULL DEFAULT '0',
  `access_permissions` int(1) NOT NULL DEFAULT '0',
  `bk_manager` int(1) NOT NULL DEFAULT '0',
  `new_plugin` int(1) NOT NULL DEFAULT '0',
  `edit_plugin` int(1) NOT NULL DEFAULT '0',
  `save_plugin` int(1) NOT NULL DEFAULT '0',
  `delete_plugin` int(1) NOT NULL DEFAULT '0',
  `new_module` int(1) NOT NULL DEFAULT '0',
  `edit_module` int(1) NOT NULL DEFAULT '0',
  `save_module` int(1) NOT NULL DEFAULT '0',
  `delete_module` int(1) NOT NULL DEFAULT '0',
  `exec_module` int(1) NOT NULL DEFAULT '0',
  `view_eventlog` int(1) NOT NULL DEFAULT '0',
  `delete_eventlog` int(1) NOT NULL DEFAULT '0',
  `manage_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'manage site meta tags and keywords',
  `edit_doc_metatags` int(1) NOT NULL DEFAULT '0' COMMENT 'edit document meta tags and keywords',
  `new_web_user` int(1) NOT NULL DEFAULT '0',
  `edit_web_user` int(1) NOT NULL DEFAULT '0',
  `save_web_user` int(1) NOT NULL DEFAULT '0',
  `delete_web_user` int(1) NOT NULL DEFAULT '0',
  `web_access_permissions` int(1) NOT NULL DEFAULT '0',
  `view_unpublished` int(1) NOT NULL DEFAULT '0',
  `import_static` int(1) NOT NULL DEFAULT '0',
  `export_static` int(1) NOT NULL DEFAULT '0',
  `remove_locks` int(1) NOT NULL DEFAULT '0',
  `display_locks` int(1) NOT NULL DEFAULT '0',
  `change_resourcetype` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information describing the user roles.';

--
-- Дамп данных таблицы `modx_user_roles`
--

INSERT INTO `modx_user_roles` (`id`, `name`, `description`, `frames`, `home`, `view_document`, `new_document`, `save_document`, `publish_document`, `delete_document`, `empty_trash`, `action_ok`, `logout`, `help`, `messages`, `new_user`, `edit_user`, `logs`, `edit_parser`, `save_parser`, `edit_template`, `settings`, `credits`, `new_template`, `save_template`, `delete_template`, `edit_snippet`, `new_snippet`, `save_snippet`, `delete_snippet`, `edit_chunk`, `new_chunk`, `save_chunk`, `delete_chunk`, `empty_cache`, `edit_document`, `change_password`, `error_dialog`, `about`, `file_manager`, `assets_files`, `assets_images`, `save_user`, `delete_user`, `save_password`, `edit_role`, `save_role`, `delete_role`, `new_role`, `access_permissions`, `bk_manager`, `new_plugin`, `edit_plugin`, `save_plugin`, `delete_plugin`, `new_module`, `edit_module`, `save_module`, `delete_module`, `exec_module`, `view_eventlog`, `delete_eventlog`, `manage_metatags`, `edit_doc_metatags`, `new_web_user`, `edit_web_user`, `save_web_user`, `delete_web_user`, `web_access_permissions`, `view_unpublished`, `import_static`, `export_static`, `remove_locks`, `display_locks`, `change_resourcetype`) VALUES
(2, 'Editor', 'Limited to managing content', 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1),
(3, 'Publisher', 'Editor with expanded permissions including manage users, update Elements and site settings', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 1),
(1, 'Administrator', 'Site administrators have full access to all functions', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains backend user settings.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_access`
--

CREATE TABLE `modx_webgroup_access` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_webgroup_names`
--

CREATE TABLE `modx_webgroup_names` (
  `id` int(10) NOT NULL,
  `name` varchar(245) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_groups`
--

CREATE TABLE `modx_web_groups` (
  `id` int(10) NOT NULL,
  `webgroup` int(10) NOT NULL DEFAULT '0',
  `webuser` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains data used for web access permissions.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_users`
--

CREATE TABLE `modx_web_users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '' COMMENT 'Store new unconfirmed password'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_attributes`
--

CREATE TABLE `modx_web_user_attributes` (
  `id` int(10) NOT NULL,
  `internalKey` int(10) NOT NULL DEFAULT '0',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `role` int(10) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0' COMMENT '0 - unknown, 1 - Male 2 - female',
  `country` varchar(25) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '' COMMENT 'link to photo',
  `comment` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains information for web users.';

-- --------------------------------------------------------

--
-- Структура таблицы `modx_web_user_settings`
--

CREATE TABLE `modx_web_user_settings` (
  `webuser` int(11) NOT NULL,
  `setting_name` varchar(50) NOT NULL DEFAULT '',
  `setting_value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Contains web user settings.';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_element_id` (`elementType`,`elementId`,`sid`);

--
-- Индексы таблицы `modx_active_user_sessions`
--
ALTER TABLE `modx_active_user_sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document` (`document`),
  ADD KEY `document_group` (`document_group`);

--
-- Индексы таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_keyword_xref`
--
ALTER TABLE `modx_keyword_xref`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `keyword_id` (`keyword_id`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_member` (`user_group`,`member`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `parent` (`parent`),
  ADD KEY `aliasidx` (`alias`),
  ADD KEY `typeidx` (`type`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`description`,`content`);

--
-- Индексы таблицы `modx_site_content_metatags`
--
ALTER TABLE `modx_site_content_metatags`
  ADD KEY `content_id` (`content_id`),
  ADD KEY `metatag_id` (`metatag_id`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyword` (`keyword`);

--
-- Индексы таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`evtid`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indx_rank` (`rank`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_tvid_contentid` (`tmplvarid`,`contentid`),
  ADD KEY `idx_tmplvarid` (`tmplvarid`),
  ADD KEY `idx_id` (`contentid`);
ALTER TABLE `modx_site_tmplvar_contentvalues` ADD FULLTEXT KEY `value_ft_idx` (`value`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`setting_name`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_group_user` (`webgroup`,`webuser`);

--
-- Индексы таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`internalKey`);

--
-- Индексы таблицы `modx_web_user_settings`
--
ALTER TABLE `modx_web_user_settings`
  ADD PRIMARY KEY (`webuser`,`setting_name`),
  ADD KEY `setting_name` (`setting_name`),
  ADD KEY `webuserid` (`webuser`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_active_user_locks`
--
ALTER TABLE `modx_active_user_locks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_event_log`
--
ALTER TABLE `modx_event_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT для таблицы `modx_manager_users`
--
ALTER TABLE `modx_manager_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_access`
--
ALTER TABLE `modx_membergroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_site_keywords`
--
ALTER TABLE `modx_site_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_metatags`
--
ALTER TABLE `modx_site_metatags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_modules`
--
ALTER TABLE `modx_site_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_access`
--
ALTER TABLE `modx_site_module_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_module_depobj`
--
ALTER TABLE `modx_site_module_depobj`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;
--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_user_roles`
--
ALTER TABLE `modx_user_roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_access`
--
ALTER TABLE `modx_webgroup_access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_webgroup_names`
--
ALTER TABLE `modx_webgroup_names`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_groups`
--
ALTER TABLE `modx_web_groups`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_users`
--
ALTER TABLE `modx_web_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `modx_web_user_attributes`
--
ALTER TABLE `modx_web_user_attributes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
