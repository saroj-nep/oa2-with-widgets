-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: webdb5.rz.uni-saarland.de:3306
-- Tempo de geração: 17-Jan-2022 às 19:32
-- Versão do servidor: 10.4.18-MariaDB-log
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `edu_tech3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_ban`
--

CREATE TABLE `blabax_en_ban` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `ulevel` smallint(6) NOT NULL,
  `ban` smallint(6) NOT NULL,
  `aname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_bflog`
--

CREATE TABLE `blabax_en_bflog` (
  `id` int(11) NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_bflog`
--

INSERT INTO `blabax_en_bflog` (`id`, `ipaddr`, `token`, `timestamp`) VALUES
(0, '188.194.232.41', 2, 1636116790),
(0, '188.194.232.41', 2, 1636116743),
(0, '188.194.232.41', 2, 1636116679),
(0, '188.194.232.41', 2, 1636116610),
(0, '188.194.232.41', 2, 1636116558),
(0, '93.232.101.30', 3, 1638863860),
(0, '95.90.200.99', 2, 1638810796),
(0, '46.83.99.48', 2, 1638550254),
(0, '37.4.237.74', 2, 1638517920),
(0, '95.90.170.234', 3, 1637680330),
(0, '134.96.123.182', 3, 1637585560),
(0, '188.194.234.39', 2, 1637576275),
(0, '188.194.232.41', 2, 1636116838),
(0, '188.194.232.41', 2, 1636116891),
(0, '188.194.232.41', 2, 1636116933),
(0, '188.194.232.41', 3, 1636116976),
(0, '188.194.232.41', 3, 1636119000),
(0, '188.194.232.41', 3, 1636119008),
(0, '86.103.158.178', 2, 1636635551),
(0, '86.103.158.178', 2, 1636635623),
(0, '86.103.158.178', 2, 1636635784),
(0, '86.103.158.178', 2, 1636635830),
(0, '91.37.110.240', 2, 1641458635),
(0, '91.37.110.240', 2, 1641458710),
(0, '91.37.110.240', 2, 1641458754),
(0, '91.37.110.240', 2, 1641563768),
(0, '95.90.200.108', 4, 1641805669),
(49, '95.90.200.108', 4, 1641805699),
(0, '95.90.200.108', 2, 1641805919),
(0, '95.90.200.108', 3, 1641805922),
(0, '139.47.0.89', 2, 1641818426);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_fmedia`
--

CREATE TABLE `blabax_en_fmedia` (
  `id` int(11) NOT NULL,
  `filename` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file2hdd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filetype` int(11) NOT NULL,
  `sourcetxt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_fmedia`
--

INSERT INTO `blabax_en_fmedia` (`id`, `filename`, `file2hdd`, `filetype`, `sourcetxt`, `timestamp`, `userid`, `username`) VALUES
(1, 'Citrus Fruit', 'attachments/CitRuS.jpg', 1, '', 1600157410, 0, '(P)'),
(2, 'Baby Dont Go', 'attachments/BrOoNzY.mp3', 2, '', 1600157410, 0, '(P)'),
(3, 'Oh Oh Bunnie', 'attachments/BuNniE.mp4', 3, '', 1600157410, 0, '(P)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_gbox`
--

CREATE TABLE `blabax_en_gbox` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `ugroup` int(11) NOT NULL,
  `pagesize` int(11) NOT NULL,
  `glocale` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_geoloc`
--

CREATE TABLE `blabax_en_geoloc` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geolat` float NOT NULL,
  `geolon` float NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_gifs`
--

CREATE TABLE `blabax_en_gifs` (
  `id` int(11) NOT NULL,
  `idgbox` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `ggif` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmp4` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_groups`
--

CREATE TABLE `blabax_en_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `welcome` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` int(11) NOT NULL,
  `color` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pa` smallint(6) NOT NULL,
  `pb` smallint(6) NOT NULL,
  `pc` smallint(6) NOT NULL,
  `pd` smallint(6) NOT NULL,
  `pe` smallint(6) NOT NULL,
  `pf` smallint(6) NOT NULL,
  `pg` smallint(6) NOT NULL,
  `ph` smallint(6) NOT NULL,
  `pi` smallint(6) NOT NULL,
  `pj` smallint(6) NOT NULL,
  `pk` smallint(6) NOT NULL,
  `pl` smallint(6) NOT NULL,
  `pm` smallint(6) NOT NULL,
  `pn` smallint(6) NOT NULL,
  `po` smallint(6) NOT NULL,
  `pp` smallint(6) NOT NULL,
  `pq` smallint(6) NOT NULL,
  `pr` smallint(6) NOT NULL,
  `ps` smallint(6) NOT NULL,
  `pt` smallint(6) NOT NULL,
  `pu` smallint(6) NOT NULL,
  `pv` smallint(6) NOT NULL,
  `pw` smallint(6) NOT NULL,
  `px` smallint(6) NOT NULL,
  `py` smallint(6) NOT NULL,
  `pz` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_groups`
--

INSERT INTO `blabax_en_groups` (`id`, `name`, `welcome`, `link`, `color`, `pa`, `pb`, `pc`, `pd`, `pe`, `pf`, `pg`, `ph`, `pi`, `pj`, `pk`, `pl`, `pm`, `pn`, `po`, `pp`, `pq`, `pr`, `ps`, `pt`, `pu`, `pv`, `pw`, `px`, `py`, `pz`) VALUES
(1, 'DEFAULT', '', 0, 'FEC400', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_grules`
--

CREATE TABLE `blabax_en_grules` (
  `id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scenario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugroup` int(11) NOT NULL,
  `zorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_iplog`
--

CREATE TABLE `blabax_en_iplog` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `country` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_iplog`
--

INSERT INTO `blabax_en_iplog` (`id`, `name`, `ipaddr`, `timestamp`, `country`) VALUES
(1, 'admin', '95.90.200.99', 1638867723, '-'),
(1, 'admin', '95.90.200.99', 1638867364, '-'),
(76, 'Sialkot', '93.232.101.30', 1638863887, '-'),
(75, 'Silao', '79.235.176.237', 1638863863, '-'),
(49, 'Experimenter3', '95.90.200.99', 1638858762, '-'),
(75, 'Silao', '95.90.200.99', 1638858745, '-'),
(76, 'Sialkot', '95.90.200.99', 1638858719, '-'),
(1, 'admin', '95.90.200.99', 1638858593, '-'),
(75, 'Silao', '95.90.200.99', 1638810884, '-'),
(76, 'Sialkot', '95.90.200.99', 1638810804, '-'),
(75, 'Silao', '46.83.99.48', 1638550263, '-'),
(1, 'admin', '37.4.237.74', 1638520551, '-'),
(74, 'Hamburg', '89.204.154.188', 1638517959, '-'),
(55, 'Experimenter4', '37.4.237.74', 1638517730, '-'),
(71, 'Vehari', '95.90.223.153', 1638517726, '-'),
(55, 'Experimenter4', '37.4.237.74', 1638513697, '-'),
(1, 'admin', '37.4.237.74', 1638513625, '-'),
(1, 'admin', '95.90.168.80', 1638260490, '-'),
(1, 'admin', '134.96.123.182', 1637585565, '-'),
(73, 'Sahiwal', '188.194.234.39', 1637576290, '-'),
(1, 'admin', '95.90.200.119', 1637323408, '-'),
(1, 'admin', '95.90.200.119', 1637323162, '-'),
(72, 'Zitacuaro', '105.112.228.87', 1637319726, '-'),
(66, 'Guimaraes', '89.247.127.63', 1637319367, '-'),
(49, 'Experimenter3', '95.90.200.119', 1637314700, '-'),
(1, 'admin', '95.90.200.119', 1637314361, '-'),
(1, 'admin', '37.4.237.139', 1637084238, '-'),
(63, 'Weingarten', '91.20.148.249', 1637081803, '-'),
(69, 'Santarem', '92.201.7.203', 1637081725, '-'),
(55, 'Experimenter4', '37.4.237.139', 1637078403, '-'),
(1, 'admin', '37.4.237.139', 1637078302, '-'),
(1, 'admin', '134.96.123.173', 1636966922, '-'),
(5, 'Experimenter2', '134.96.123.173', 1636966837, '-'),
(1, 'admin', '88.130.55.7', 1636714802, '-'),
(5, 'Experimenter2', '88.130.55.7', 1636715677, '-'),
(1, 'admin', '88.130.55.7', 1636714433, '-'),
(5, 'Experimenter2', '88.130.55.7', 1636711597, '-'),
(5, 'Experimenter2', '88.130.55.7', 1636710424, '-'),
(1, 'admin', '88.130.55.7', 1636710274, '-'),
(70, 'Karachi', '91.37.110.240', 1641458504, '-'),
(77, 'Bredstedt', '91.37.110.240', 1641458643, '-'),
(78, 'Setubal', '91.37.110.240', 1641458718, '-'),
(79, 'Guadalajara', '91.37.110.240', 1641458761, '-'),
(80, 'Cholula', '91.37.110.240', 1641563780, '-'),
(1, 'admin', '95.90.200.108', 1641805465, '-'),
(81, 'Versuchsleitung3', '95.90.200.108', 1641805928, '-'),
(49, 'Experimenter3', '95.90.200.108', 1641806012, '-'),
(1, 'admin', '139.47.0.89', 1641818247, '-'),
(55, 'Experimenter4', '139.47.0.89', 1641818331, '-'),
(80, 'Cholula', '77.180.29.102', 1641822440, '-'),
(82, 'Oaxaca', '89.247.127.154', 1641822486, '-'),
(1, 'admin', '139.47.0.89', 1641824973, '-'),
(49, 'Experimenter3', '91.37.110.240', 1641890789, '-'),
(1, 'admin', '91.37.110.240', 1641891417, '-'),
(1, 'admin', '134.96.197.18', 1642420699, '-');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_jbox`
--

CREATE TABLE `blabax_en_jbox` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `ugroup` int(11) NOT NULL,
  `infinite` int(11) NOT NULL,
  `shuffle` int(11) NOT NULL,
  `gap` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `cookielength` int(11) NOT NULL,
  `hremember` int(11) NOT NULL,
  `elements` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_messages`
--

CREATE TABLE `blabax_en_messages` (
  `id` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `usergroup` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `touserid` int(11) NOT NULL,
  `tousername` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` smallint(6) NOT NULL,
  `attach` smallint(6) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_messages`
--

INSERT INTO `blabax_en_messages` (`id`, `roomid`, `userid`, `usergroup`, `username`, `touserid`, `tousername`, `line`, `color`, `attach`, `timestamp`) VALUES
(1, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620810394);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_messages1`
--

CREATE TABLE `blabax_en_messages1` (
  `id` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `usergroup` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `touserid` int(11) NOT NULL,
  `tousername` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` smallint(6) NOT NULL,
  `attach` smallint(6) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_messages1`
--

INSERT INTO `blabax_en_messages1` (`id`, `roomid`, `userid`, `usergroup`, `username`, `touserid`, `tousername`, `line`, `color`, `attach`, `timestamp`) VALUES
(1, 1, 1, 1, 'bakhtiaricp', 0, '', 'check if messages are going to right place.', 0, 0, 1620804929),
(2, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620804934),
(3, 1, 1, 1, 'bakhtiaricp', 0, '', 'check if messages are going to right room.', 0, 0, 1620804952),
(4, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620806675),
(5, 1, 1, 1, 'bakhtiaricp', 0, '', 'inside', 0, 0, 1620806783),
(6, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620806952),
(7, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620806965),
(8, 1, 16, 1, 'BA test', 0, '', 'hi', 0, 0, 1620807283),
(9, 1, 16, 1, 'BA test', 0, '', 'is it edutech room', 0, 0, 1620807290),
(10, 1, 1, 1, 'bakhtiaricp', 0, '', 'yes it is', 0, 0, 1620807304),
(11, 1, 16, 1, 'BA test', 0, '', 'test this rrom', 0, 0, 1620807654),
(12, 1, 16, 1, 'BA test', 0, '', 'test this room', 0, 0, 1620807669),
(13, 1, 1, 1, 'bakhtiaricp', 0, '', 'test the room.', 0, 0, 1620807691),
(14, 1, 1, 1, 'bakhtiaricp', 0, '', 'send message to new chat room', 0, 0, 1620807937),
(15, 1, 1, 1, 'bakhtiaricp', 0, '', 'new chat', 0, 0, 1620807957),
(16, 1, 16, 1, 'BA test', 0, '', 'check', 0, 0, 1620807969),
(17, 1, 1, 1, 'bakhtiaricp', 0, '', 'tets', 0, 0, 1620808071),
(18, 1, 1, 1, 'bakhtiaricp', 0, '', 'edutech', 0, 0, 1620808073),
(19, 1, 1, 1, 'bakhtiaricp', 0, '', 'only', 0, 0, 1620808075),
(20, 1, 1, 1, 'bakhtiaricp', 0, '', 'check history', 0, 0, 1620808081);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_nbox`
--

CREATE TABLE `blabax_en_nbox` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `lastrun` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `ugroup` int(11) NOT NULL,
  `headlines` int(11) NOT NULL,
  `pagesize` int(11) NOT NULL,
  `origin` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_news`
--

CREATE TABLE `blabax_en_news` (
  `id` int(11) NOT NULL,
  `idnbox` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `nhead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npubl` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ndate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ndesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `npict` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_online`
--

CREATE TABLE `blabax_en_online` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugroup` smallint(6) NOT NULL,
  `ipaddr` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `avatar` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinfo` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_online`
--

INSERT INTO `blabax_en_online` (`id`, `name`, `ugroup`, `ipaddr`, `timestamp`, `status`, `avatar`, `pinfo`) VALUES
(1, 'admin', 1, '134.96.197.18', 1642420700, 1, 'aW1nLzAwYS5zdmc=', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_paintings`
--

CREATE TABLE `blabax_en_paintings` (
  `id` int(11) NOT NULL,
  `description` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `srx` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sry` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bgc` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bgid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_paintings`
--

INSERT INTO `blabax_en_paintings` (`id`, `description`, `srx`, `sry`, `src`, `bgc`, `timestamp`, `userid`, `username`, `bgid`) VALUES
(2, 'Fruits', '99 99 101 102 104 106 110 114 119 123 128 134 138 140 142 144 146 148 149 150 152 152 0 0 129 129 129 130 131 133 136 140 144 152 157 161 165 167 169 170 170 170 168 166 165 163 162 162 162 162 162 162 162 162 0 0 0 0 0 314 314 313 311 309 306 304 301 298 295 292 289 286 283 280 277 274 272 269 267 264 261 259 257 256 255 254 253 252 252 251 251 250 249 248 247 246 0 0 238 238 238 237 235 233 231 228 226 224 222 221 221 220 219 219 219 220 222 225 230 236 242 249 258 263 267 273 277 281 283 0 0 0 0 0 38 39 41 43 46 50 54 58 64 69 75 77 79 80 80 81 82 83 85 87 89 91 92 93 93 94 94 0 0 68 68 69 70 72 74 76 80 84 88 92 95 97 99 101 102 103 105 106 106 107 107 107 107 107 107 107 107 107 107 107 107 107 107 107 107 106 0 0 0 0 0 248 248 247 245 243 240 236 231 227 224 222 219 216 213 211 209 207 206 206 206 206 206 206 207 209 211 215 217 221 225 231 235 241 248 257 269 281 291 299 304 307 310 312 315 317 319 321 321 321 321 321 321 319 317 315 312 309 305 301 297 293 289 284 280 273 269 264 260 256 251 247 243 241 239 0 0 221 222 223 224 224 226 229 233 236 238 240 242 243 243 243 243 243 243 242 242 242 242 242 242 242 242 242 0 0 262 262 264 265 267 270 274 278 282 286 288 289 289 289 288 286 284 282 279 276 273 271 269 267 265 263 262 262 261 261 262 263 264 266 270 274 278 283 286 287 288 287 0 0 0 0 0 0', '345 345 344 343 341 339 335 333 329 325 321 316 314 311 308 305 303 301 299 297 296 295 0 0 298 297 297 296 294 293 291 289 288 285 283 281 280 278 277 277 278 279 281 285 288 291 294 298 301 303 304 305 306 307 0 0 0 0 0 24 24 26 28 31 33 35 37 40 43 45 47 50 53 55 58 61 63 65 67 71 73 75 77 78 79 80 81 82 83 83 84 85 86 87 88 88 0 0 63 64 64 66 68 74 78 83 87 91 95 97 100 102 104 105 106 106 106 106 104 103 102 101 98 97 96 96 95 94 93 0 0 0 0 0 58 58 59 63 67 70 74 77 79 82 85 86 87 87 88 88 90 91 93 95 98 101 101 102 103 104 105 0 0 103 104 105 106 107 109 111 114 116 118 119 120 120 120 121 121 121 120 120 119 119 118 118 115 111 106 101 96 92 88 82 80 77 74 71 68 66 0 0 0 0 0 144 144 144 144 144 145 146 147 148 149 151 153 156 160 164 168 172 175 180 184 189 193 198 204 210 217 223 229 234 238 242 244 245 246 247 247 247 247 246 244 242 238 235 231 226 221 216 211 207 202 197 192 185 181 176 172 168 164 160 158 155 153 151 149 146 145 143 143 143 142 142 142 142 143 0 0 198 198 196 195 193 192 189 186 183 179 177 175 173 172 173 175 178 182 187 192 197 203 212 216 220 219 218 0 0 175 174 174 173 173 173 173 174 176 179 181 183 185 187 189 191 193 195 197 200 203 205 207 209 211 213 215 217 219 221 221 221 221 221 220 219 218 218 218 218 218 218 0 0 0 0 0 0', '414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45', 'ecf0f1', 1600157410, 0, '(P)', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_pcache`
--

CREATE TABLE `blabax_en_pcache` (
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proxy` smallint(6) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_polls`
--

CREATE TABLE `blabax_en_polls` (
  `id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_qcats`
--

CREATE TABLE `blabax_en_qcats` (
  `id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enbl` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_qcats`
--

INSERT INTO `blabax_en_qcats` (`id`, `value`, `enbl`) VALUES
(1, 'History Europe', 1),
(2, 'Geography', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_qdata`
--

CREATE TABLE `blabax_en_qdata` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aa` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ab` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_qdata`
--

INSERT INTO `blabax_en_qdata` (`id`, `catid`, `question`, `aa`, `ab`, `ac`, `ad`, `correct`) VALUES
(1, 1, 'Who was the first monarch of Great Britain?', 'Queen Anne', 'Alfred The Great', 'William the Conqueror', '', 'A'),
(2, 1, 'Which sultan conquered Constantinople in 1453?', 'Suleiman the Magnificent', 'Osman I', 'Mehmed II', '', 'C'),
(3, 1, 'Which king united England and France?', 'Henry V', 'Richard I', 'None', '', 'C'),
(4, 1, 'Who was the first Holy Roman Emperor?', 'Julius Caesar', 'Charlemagne', 'Augustus', '', 'B'),
(5, 1, 'Who was the longest reigning Roman emperor?', 'Vespasian', 'Augustus', 'Tiberius', '', 'B'),
(6, 1, 'Which was the first country to adopt Christianity as a state religion?', 'The Roman Empire', 'The Byzantine Empire', 'The Kingdom of Armenia', '', 'C'),
(7, 1, 'What was the largest city in Europe in the 10th century?', 'Constantinople', 'Rome', 'London', '', 'A'),
(8, 1, 'Who said -The die is cast-?', 'Napoleon', 'Julius Caesar', 'Hitler', '', 'B'),
(9, 1, 'Where is set Shakespeare\'s Romeo and Juliet?', 'Verona', 'Rome', 'Venice', '', 'A'),
(10, 1, 'Who\'s the god of war in the Greek mythology?', 'Apollo', 'Ares', 'Hermes', '', 'B'),
(11, 1, 'Which king of France signed the The Edict of Nantes?', 'Louis XIV', 'François I', 'Henry IV', '', 'C'),
(12, 1, 'Where did the battle of Waterloo take place?', 'England', 'Netherlands', 'France', '', 'B'),
(13, 1, 'Who was known as the Iron Chancellor?', 'Margaret Thatcher', 'Hermann Goering', 'Otto von Bismarck', '', 'C'),
(14, 1, 'Which legendary general is said to have sworn undying enmity against Rome?', 'Vercingetorix', 'Hannibal', 'Attila', '', 'B'),
(15, 1, 'Which officer was the first field marshal in history to be captured?', 'Friedrich Paulus', 'Erwin Rommel', 'Erich von Manstein', '', 'A'),
(16, 1, 'Which campaign was led by Philip II of France, Richard I of England and Frederick I.', 'Albigensian Crusade', 'Fourth Crusade', 'Third Crusade', '', 'C'),
(17, 1, 'What Merovingian became king in the fifth century A.D.?', 'Arpad', 'Clovis', 'Ethelred', '', 'B'),
(18, 1, 'In Ancient Rome, who were the Lares?', 'Household spirits of dead ancestors', 'The elite corps of the Roman army', 'The Muses', '', 'A'),
(19, 1, 'Who was the faithful wife of Odysseus who waited 20 years for his return from the Trojan War?', 'Penelope', 'Aspasia', 'Telemachus', '', 'A'),
(20, 1, 'Who started the movement of Protestant Reformation in Europe?', 'Martin Luther', 'John Calvin', 'Erasmus', '', 'A'),
(21, 2, 'Which of these seas is largest?', 'Bering', 'Arabian Sea', 'Mediterranean', 'Gulf of Mexico', 'C'),
(22, 2, 'The tallest mountain peak in the US is Mount McKinley. The second tallest is:', 'Mount Saint Elias', 'Glacier Peak', 'Mount Washington', 'Gannett Peak', 'A'),
(23, 2, 'Which EU member is divided into a Greek and a Turkish part?', 'Greece', 'Slovenia', 'Cyprus', 'Bulgaria', 'C'),
(24, 2, 'Which EU member has a significant part of its territory below sea level?', 'Belgium', 'The Netherlands', 'Poland', 'Estonia', 'B'),
(25, 2, 'Which of the following countries and states shares its name with its capital city?', 'New York', 'Malta', 'Luxembourg', 'Oklahoma', 'C'),
(26, 2, 'Which one of these is not a Greek Mediterranean island?', 'Minorca', 'Lemnos', 'Crete', 'Santorini', 'A'),
(27, 2, 'Riga is the capital of which Baltic country?', 'Estonia', 'Lithuania', 'Belarus', 'Latvia', 'D'),
(28, 2, 'What famous square is located in Vatican City, the papal enclave within Rome?', 'Campo dei Fiori', 'St. Pauls Square', 'St. Peters Square', 'Piazza San Marco', 'C'),
(29, 2, 'What is the name of the island shared by Haiti and the Dominican Republic?', 'Haiti', 'Hispaniola', 'Isla Dominica', 'Carib Island', 'B'),
(30, 2, 'What portion of the Earth’s surface do oceans cover?', 'More than two thirds', 'One third', 'Half of it', 'One fourth', 'A'),
(31, 2, 'Montgomery is the capital city of this US state, and its largest city is Birmingham.', 'Arizona', 'Alaska', 'Arkansas', 'Alabama', 'D'),
(32, 2, 'The Himalayan range, part of which is Mount Everest, stretches across five different countries in Asia. Which of the following countries is not among them?', 'Israel', 'Bhutan', 'Pakistan', 'India', 'A'),
(33, 2, 'What river that flows through Spain and Portugal is the longest river on the Iberian Peninsula?', 'Guadiana', 'Duero', 'Guadalquivir', 'Tagus', 'D'),
(34, 2, 'Maryland derives its name from its Catholic founders, who named the state after which historic person?', 'Mary, Queen of Scots', 'Mary Magdalene', 'The Virgin Mary', 'Queen Henrietta Maria of France', 'D'),
(35, 2, 'Which country, Slovakia or Slovenia, used to be part of Yugoslavia?', 'Slovenia', 'Both', 'Slovakia', 'None of them', 'A'),
(36, 2, 'What sea borders Egypt to the east?', 'Black Sea', 'Yellow Sea', 'Mediterranean Sea', 'Red Sea', 'D'),
(37, 2, 'The Ottoman Empire used to rule over North Africa, the Middle East and south-eastern Europe. Which modern day country is the successor of the empire?', 'Israel', 'Saudi Arabia', 'Turkey', 'Egypt', 'C'),
(38, 2, 'The capital city of what country is called Quito?', 'Bolivia', 'Macedonia', 'Ecuador', 'Yemen', 'C'),
(39, 2, 'What is the name of the capital city of the U.S. state of Wyoming.', 'Boise', 'Des Moines', 'Salt Lake City', 'Cheyenne', 'D'),
(40, 2, 'Which of these European countries shares a land border with Sweden?', 'Switzerland', 'Denmark', 'Lithuania', 'Norway', 'D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_qres`
--

CREATE TABLE `blabax_en_qres` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_rbox`
--

CREATE TABLE `blabax_en_rbox` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) NOT NULL,
  `pm` int(11) NOT NULL,
  `roomid` int(11) NOT NULL,
  `ugroup` int(11) NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_rooms`
--

CREATE TABLE `blabax_en_rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onoff` int(11) NOT NULL,
  `zorder` int(11) NOT NULL,
  `hidden` smallint(6) NOT NULL,
  `groupids` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_rooms`
--

INSERT INTO `blabax_en_rooms` (`id`, `name`, `description`, `color`, `onoff`, `zorder`, `hidden`, `groupids`) VALUES
(1, 'edutech', 'Experiment 1', '4b7fc3', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_scache`
--

CREATE TABLE `blabax_en_scache` (
  `id` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_scache`
--

INSERT INTO `blabax_en_scache` (`id`, `value`) VALUES
('sticache1', 'YToyOntzOjc6IkRldXRzY2giO3M6MTk1NjoiPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfY2FsbC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX2NhbGwuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9jaGVlcnMuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9jaGVlcnMuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9jaGlsbGVuLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfY2hpbGxlbi5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX2RhbmtlLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfZGFua2Uuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9lY2h0LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfZWNodC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX21lYW4uc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9tZWFuLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfbXVkZS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX211ZGUuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9uYWNodC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX25hY2h0LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc2NoYXR6LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfc2NoYXR6LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc2VleWEuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9zZWV5YS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX3NoYW0uc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9zaGFtLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc3BpZWxlbi5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX3NwaWVsZW4uc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV90dXJsaWNoLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfdHVybGljaC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX3doYXRzdXAuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV93aGF0c3VwLnN2Z1wnKSIgLz4gIjtzOjg6IlN0aWNrZXJzIjtzOjI2MjQ6IjxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9iaXJ0aGRheS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9iaXJ0aGRheS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9icmIuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fYnJiLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2NhbGwuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2FsbC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9jaGVlcnMuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2hlZXJzLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2Nvb2wuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY29vbC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9mbHUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fZmx1LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2dvLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX2dvLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2hhdGUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5faGF0ZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9sb2wuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG9sLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2xvdmUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG92ZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9sdWNrLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX2x1Y2suc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fbW9ybmluZy5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9tb3JuaW5nLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX29tZy5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9vbWcuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fcGxlYXNlLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3BsZWFzZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9ydGZtLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3J0Zm0uc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fdGhhbmtzLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3RoYW5rcy5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl90aHVtYmQuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fdGh1bWJkLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX3RodW1idS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl90aHVtYnUuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fd2hhdC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl93aGF0LnN2Z1wnKSIgLz4gIjt9'),
('sticache2', 'c3RpY2tlcnM9bmV3IEFycmF5KCdzdGlja2Vycy9EZXV0c2NoL2RlX2NoZWVycy5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX2NhbGwuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9jaGlsbGVuLnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfZGFua2Uuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9lY2h0LnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfbWVhbi5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX211ZGUuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9uYWNodC5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NjaGF0ei5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NoYW0uc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9zZWV5YS5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NwaWVsZW4uc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV90dXJsaWNoLnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfd2hhdHN1cC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9icmIuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fYmlydGhkYXkuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2FsbC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9jaGVlcnMuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY29vbC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9mbHUuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5faGF0ZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9nby5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9sb2wuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG92ZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9sdWNrLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX21vcm5pbmcuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fb21nLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3BsZWFzZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9ydGZtLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3RodW1iZC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl90aGFua3Muc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fdGh1bWJ1LnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3doYXQuc3ZnJyk7'),
('avt_cache', 'YTo2MDp7aTowO3M6OToiYXZ0MDEuc3ZnIjtpOjE7czo5OiJhdnQwMi5zdmciO2k6MjtzOjk6ImF2dDAzLnN2ZyI7aTozO3M6OToiYXZ0MDUuc3ZnIjtpOjQ7czo5OiJhdnQwNC5zdmciO2k6NTtzOjk6ImF2dDA2LnN2ZyI7aTo2O3M6OToiYXZ0MDcuc3ZnIjtpOjc7czo5OiJhdnQwOC5zdmciO2k6ODtzOjk6ImF2dDA5LnN2ZyI7aTo5O3M6OToiYXZ0MTAuc3ZnIjtpOjEwO3M6OToiYXZ0MTEuc3ZnIjtpOjExO3M6OToiYXZ0MTIuc3ZnIjtpOjEyO3M6OToiYXZ0MTMuc3ZnIjtpOjEzO3M6OToiYXZ0MTQuc3ZnIjtpOjE0O3M6OToiYXZ0MTUuc3ZnIjtpOjE1O3M6OToiYXZ0MTYuc3ZnIjtpOjE2O3M6OToiYXZ0MTcuc3ZnIjtpOjE3O3M6OToiYXZ0MTguc3ZnIjtpOjE4O3M6OToiYXZ0MTkuc3ZnIjtpOjE5O3M6OToiYXZ0MjAuc3ZnIjtpOjIwO3M6OToiYXZ0MjEuc3ZnIjtpOjIxO3M6OToiYXZ0MjIuc3ZnIjtpOjIyO3M6OToiYXZ0MjMuc3ZnIjtpOjIzO3M6OToiYXZ0MjQuc3ZnIjtpOjI0O3M6OToiYXZ0MjUuc3ZnIjtpOjI1O3M6OToiYXZ0Mjcuc3ZnIjtpOjI2O3M6OToiYXZ0MjYuc3ZnIjtpOjI3O3M6OToiYXZ0Mjguc3ZnIjtpOjI4O3M6OToiYXZ0Mjkuc3ZnIjtpOjI5O3M6OToiYXZ0MzAuc3ZnIjtpOjMwO3M6OToiYXZ0MzEuc3ZnIjtpOjMxO3M6OToiYXZ0MzIuc3ZnIjtpOjMyO3M6OToiYXZ0MzMuc3ZnIjtpOjMzO3M6OToiYXZ0MzUuc3ZnIjtpOjM0O3M6OToiYXZ0MzQuc3ZnIjtpOjM1O3M6OToiYXZ0MzYuc3ZnIjtpOjM2O3M6OToiYXZ0Mzcuc3ZnIjtpOjM3O3M6OToiYXZ0Mzkuc3ZnIjtpOjM4O3M6OToiYXZ0Mzguc3ZnIjtpOjM5O3M6OToiYXZ0NDAuc3ZnIjtpOjQwO3M6OToiYXZ0NDEuc3ZnIjtpOjQxO3M6OToiYXZ0NDMuc3ZnIjtpOjQyO3M6OToiYXZ0NDIuc3ZnIjtpOjQzO3M6OToiYXZ0NDQuc3ZnIjtpOjQ0O3M6OToiYXZ0NDUuc3ZnIjtpOjQ1O3M6OToiYXZ0NDYuc3ZnIjtpOjQ2O3M6OToiYXZ0NDcuc3ZnIjtpOjQ3O3M6OToiYXZ0NDguc3ZnIjtpOjQ4O3M6OToiYXZ0NDkuc3ZnIjtpOjQ5O3M6OToiYXZ0NTAuc3ZnIjtpOjUwO3M6OToiYXZ0NTEuc3ZnIjtpOjUxO3M6OToiYXZ0NTIuc3ZnIjtpOjUyO3M6OToiYXZ0NTMuc3ZnIjtpOjUzO3M6OToiYXZ0NTQuc3ZnIjtpOjU0O3M6OToiYXZ0NTUuc3ZnIjtpOjU1O3M6OToiYXZ0NTYuc3ZnIjtpOjU2O3M6OToiYXZ0NTcuc3ZnIjtpOjU3O3M6OToiYXZ0NTguc3ZnIjtpOjU4O3M6OToiYXZ0NTkuc3ZnIjtpOjU5O3M6OToiYXZ0NjAuc3ZnIjt9'),
('svgcache1', 'a:2:{i:0;a:3:{i:0;i:100;i:1;s:1:\"2\";i:2;s:12:\"Nov 12 09:--\";}i:1;a:3:{i:0;i:100;i:1;s:1:\"2\";i:2;s:12:\"Nov 12 10:--\";}}'),
('svgcache2', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:1:\"2\";i:2;s:12:\"      Nov 12\";}}'),
('svgcache3', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:1:\"2\";i:2;s:12:\"         Nov\";}}'),
('svgcache4', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:1:\"1\";i:2;s:12:\"May 12 09:--\";}}'),
('svgcache5', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:1:\"1\";i:2;s:12:\"      May 12\";}}'),
('svgcache6', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:1:\"1\";i:2;s:12:\"         May\";}}'),
('sound1', ''),
('sound2', ''),
('sound3', ''),
('sound4', ''),
('sound5', ''),
('sound6', ''),
('sound7', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_settings`
--

CREATE TABLE `blabax_en_settings` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_settings`
--

INSERT INTO `blabax_en_settings` (`id`, `value`) VALUES
('default_lang', '0'),
('default_ampm', '2'),
('colors', 'F44336|E91E63|9C27B0|673AB7|3F51B5|2196F3|03A9F4|00BCD4|009688|4CAF50|8BC34A|CDDC39|FFEB3B|FFC107|FF9800|FF5722|795548|607D8B|E53935|D81B60|8E24AA|5E35B1|3949AB|1E88E5|039BE5|00ACC1|00897B|43A047|7CB342|C0CA33|FDD835|FFB300|FB8C00|F4511E|6D4C41|546E7A'),
('default_sound', '0'),
('html_title', 'Our Chat!'),
('allow_guest', '0'),
('cookie_salt', 'RF0uY35yXzXNnQiq8pNDacxpu4ydhVGad47MD0wIdZXibw7w4I'),
('random_salt', '4KkNhpFITavFGa3dbaVKocqcPhechBDPTwvhwAOs'),
('allow_reg', '1'),
('reglog_delay', '0'),
('userperhour', '20'),
('wrongperhour', '5'),
('bottomjs', ''),
('dimonblur', '1'),
('notes', ''),
('ban_period', '7200'),
('mute_period', '300'),
('show_thumbs', '0'),
('keepiplg', '86400'),
('ctab_display', '0'),
('ctab_default', '0'),
('ctab_icon', 'svg_star'),
('ctab_title', ''),
('ctab_content', ''),
('avatar_msize', '102400'),
('file_msize', '512000'),
('uploads_user', '10'),
('paintings_user', '10'),
('style_template', 'body,td,p,div,input,select,textarea{font-size:[1]px;font-family:[2]}\r\n.x_global{[3]}\r\n.x_blab{[17]}\r\ninput,select{color:#[4]}\r\n.x_overal{color:#[4];background-color:#[5]}\r\n.x_accent_bg{color:#[0];background-color:#[6]}\r\n.x_accent_fg{color:#[6];background-color:transparent}\r\n.x_accent_bb{border-bottom:1px solid #[6]}\r\n.x_input_blabws{color:#[7];background-color:#[8]}\r\n.x_bcolor_x{color:#[9];background-color:#[10]}\r\n.x_bcolor_y{color:#[11];background-color:#[12]}\r\n.x_bcolor_z{color:#[13];background-color:#[14]}\r\n.x_left_rounded{border-radius:[15]px 0 0 [15]px}\r\n.x_right_rounded{border-radius: 0 [15]px [15]px 0}\r\n.x_bottom_rounded{border-radius: 0 0 [15]px [15]px}\r\n.x_top_rounded{border-radius: [15]px [15]px 0 0}\r\n.x_all_rounded{border-radius: [15]px [15]px [15]px [15]px}\r\n.x_circle{border-radius:[16]%}'),
('style_delivery', 'body,td,p,div,input,select,textarea{font-size:14px;font-family:sans-serif}\r\n.x_global{}\r\n.x_blab{}\r\ninput,select{color:#FFFFFF}\r\n.x_overal{color:#FFFFFF;background-color:#333333}\r\n.x_accent_bg{color:#000;background-color:#FEC400}\r\n.x_accent_fg{color:#FEC400;background-color:transparent}\r\n.x_accent_bb{border-bottom:1px solid #FEC400}\r\n.x_input_blabws{color:#000000;background-color:#FFFFFF}\r\n.x_bcolor_x{color:#FFFFFF;background-color:#222222}\r\n.x_bcolor_y{color:#FFFFFF;background-color:#222222}\r\n.x_bcolor_z{color:#FFFFFF;background-color:#111111}\r\n.x_left_rounded{border-radius:5px 0 0 5px}\r\n.x_right_rounded{border-radius: 0 5px 5px 0}\r\n.x_bottom_rounded{border-radius: 0 0 5px 5px}\r\n.x_top_rounded{border-radius: 5px 5px 0 0}\r\n.x_all_rounded{border-radius: 5px 5px 5px 5px}\r\n.x_circle{border-radius:100%}'),
('webkit_css', ''),
('post_interval', '2'),
('acp_css', '1.css'),
('token_validity', '20'),
('acp_offset', '0'),
('server_url', 'edutech.uni-saarland.de'),
('server_key', ''),
('server_port', '9001'),
('server_wss', 'ws'),
('server_pps', ''),
('intg_bbcms', 'blabws'),
('intg_cookie', ''),
('intg_prefix', ''),
('intg_nolog', '../'),
('intg_logout', '../'),
('intg_pflink', ''),
('msg_style', '.msg{margin-bottom:20px;min-width:200px;display:flex;clear:both} .avt{float:left;width:50px;height:50px;margin-right:10px}'),
('msg_template', '<div class=\"msg\"><img class=\"avt x_circle\" src=\"{AVATAR}\" alt=\"\" /><div><span class=\"chat_area_user g{GROUP}\">{NAME}</span> <span class=\"chat_area_time\">{TIME}</span><br /><span class=\"tt{COLOR}\" style=\"word-break:break-word\">{TEXT}</span></div></div>'),
('announce', ''),
('version', '21.03'),
('forcereload', '5176baf43'),
('drag2scroll', '1'),
('whee2scroll', '1'),
('group_g', '1'),
('group_r', '1'),
('group_f', '1'),
('gifs_key', ''),
('gifs_num', '15'),
('stimoji_fts', '0'),
('stimoji_num', '10'),
('stimoji_dir', ''),
('gifs_rnd', 'summer, mountain, beach'),
('svgtstamp', '1636714785'),
('badge_bgc', ''),
('badge_txt', ''),
('showroombg', '1'),
('roombgf', 'serif'),
('roombgt', '12'),
('roombgc', 'e4e8ec'),
('roombgs', '90'),
('roombgl', '8'),
('upd_cache', '1600157410'),
('logio_msg', '1'),
('multi_links', ''),
('msg2db', '0'),
('appcodesc', 'Download our Android app from <b class=\"x_accent_fg pointer\" onclick=\"window.open(\'https://play.google.com/store/apps/details?id=com.justblab.bwsq\')\">here</b> and scan the QR code.'),
('welcome_msg', ''),
('customjs', ''),
('w_ofile', '/tmp/online'),
('w_cache', '120'),
('w_cross', '1'),
('w_onlu', '1'),
('w_onla', '1'),
('w_stat', '1'),
('w_tten', '1'),
('w_last', '1'),
('pholders', 'funyy messages1\r\nmessage 2 \r\nmessage 3'),
('abox_key', '70592cc63'),
('abox_sender', '8000004:1:AuntHedwig'),
('abox_count', '0'),
('abox_dtt', '1'),
('geo_period', '3600'),
('mottos', 'Acta Non Verba|Audentes Fortuna Iuvat|Alea Iacta Est|Ars Longa, Vita Brevis|Ave, Morituri Te Salutant|Credo Quia Absurdum|Dulce Bellum Inexpertis|Dum Excusare Credis, Accusas|Fabas Indulcet Fames|Fortis Fortuna Adiuvat|In Vino Veritas|Non Ducor Duco|Oderint Dum Metuat|Quis Custodiet Ipsos Custodes?|Semper Ad Meliora|Semper Inops Quicumque Cupit|Si Vis Amari, Ama|Si Vis Pacem, Para Bellum|Sic Transit Gloria Mundi|Transit Umbra, Lux Permanet|Una Hirundo Non Facit Ver|Veni, Vidi, Vici|Vestis Virum Reddit|Vir Sapit Qui Pauca Loquitur|Vires Acquirit Eundo|Vitam Regit Fortuna, Non Sapientia'),
('vvm_on', '1'),
('vvm_sz', '1000000'),
('vvm_la', '30'),
('vvm_lv', '10'),
('vvm_ba', '1'),
('vvm_bv', '1'),
('vvm_rs', '1'),
('vvm_us', '5'),
('rmb_unsent', '1'),
('fb_appid', ''),
('fb_r_url', ''),
('fb_t_frm', 'index.php'),
('crn_o', '0'),
('crn_g', '0'),
('crn_m', '200'),
('crn_d', '20'),
('crn_u', '20'),
('crn_k', 'TuOHGEVPQL4uV3UtuZrg'),
('badwords', 'Fuck you,FUCK YOU'),
('utf8_set', 'Arabic,Armenian,Bengali,Bopomofo,Braille,Buhid,Canadian_Aboriginal,Cherokee,Cyrillic,Devanagari,Ethiopic,Georgian,Greek,Gujarati,Gurmukhi,Han,Hangul,Hanunoo,Hebrew,Hiragana,Inherited,Kannada,Katakana,Khmer,Lao,Latin,Limbu,Malayalam,Mongolian,Myanmar,Ogham,Oriya,Runic,Sinhala,Syriac,Tagalog,Tagbanwa,TaiLe,Tamil,Telugu,Thaana,Thai,Tibetan,Yi'),
('utf8_run', '0'),
('utf8_msg', 'Please choose another name! Numeric-only names and and names containing letters of different alphabets are not allowed.'),
('avsize', '250'),
('chaton', '1'),
('chatoff', 'Our chat is closed now...'),
('rbox_sender', '8000001:1:GodFather'),
('nbox_sender', '8000002:1:NewsMaster'),
('newsapi_key', ''),
('gbox_sender', '8000003:1:GIFMaster'),
('ptop', ''),
('pmlog_stop', '86400'),
('tns_length', '200'),
('tns_lowprv', '0'),
('meta_ref', 'same-origin'),
('ip2c', ''),
('ip2hash', '1'),
('pg_on', '0'),
('pg_api_src', 'pg_iphub'),
('pg_api_key', ''),
('pg_timeout', '5'),
('pg_tcache', '86400'),
('pg_wlist', ''),
('pg_failmsg', 'Please turn off your VPN and refresh.'),
('tips_login', ''),
('bothrefnovalty', '1'),
('bothrefnovalty', '1'),
('tips_reg', ''),
('tips_pass', ''),
('acpreadonly', '1'),
('genderlist', 'Male,Female'),
('genderedit', '1'),
('vote_seeres', '1'),
('vote_change', '1'),
('vote_ipaddr', '0'),
('vote_colors', '000,ba443e,c17d51,cca851,22865e,ad1457,0d47a1,74554d,6a1b9a,086269'),
('p2p_global', '1'),
('stun_svs', 'stun.stunprotocol.org:3478'),
('ask_av', '0'),
('pingws', '0'),
('p2p_level', '1'),
('uf_order', '1'),
('ssonoff', '0'),
('usercontrol', '1'),
('amapponoff', '0'),
('ttonoff', '0'),
('geo_timeout', '5'),
('geo_center', '35,33'),
('geo_zoom_i', '3'),
('geo_zoom_m', '13'),
('geo_error', '5'),
('geo_grey', '0'),
('geo_max', '50'),
('qui_limit', '120'),
('qui_icons', '🍏,🍎,🍐,🍊,🍋,🍒,💦,🍉,🍇,🍓,🍒,🥭,🥥,🥦,🥑,🥝,🌽,🧄,🧅,🌹,🌴,🍀,🍄,💐,🌵,🌲,🌻,🌼,🌺,🍁,🐹,🐰,🦊,🐻,🐼,🐨,🦁,🐷,🐸,🙊,🐧,🐦,🦅,🦉,🐝,🦋,🐌,🐞,🦑,🦀,🐡,🐠,🐟,🦓,🐪,🦒,🐃,🦌,🐓,🦃,🦚,🦜,🦩,🕊,⭐,🚗,🚎,🚑,🚜,🚠,🚦'),
('min_qstat', '1'),
('crn_q', '20'),
('defaultsnip', 'Hello!'),
('fb_token', ''),
('force_av', '1'),
('landing_header', ''),
('landing_footer', ''),
('splash', ''),
('novalty', '0'),
('eduTechEsc_disabled', '0'),
('reference', '0'),
('bothrefnovality', '0'),
('eduTechIsTyping', '1'),
('eduTechIsTypingTimer', '2000'),
('eduTechIsTyping', '1'),
('eduTechIsTypingTimer', '2000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_social`
--

CREATE TABLE `blabax_en_social` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `social` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sA` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sB` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sC` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sD` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_stimoji`
--

CREATE TABLE `blabax_en_stimoji` (
  `id` int(11) NOT NULL,
  `filename` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keytags` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_style`
--

CREATE TABLE `blabax_en_style` (
  `id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_style`
--

INSERT INTO `blabax_en_style` (`id`, `value`) VALUES
(1, '14'),
(2, 'sans-serif'),
(3, ''),
(4, 'FFFFFF'),
(5, '333333'),
(6, 'FEC400'),
(7, '000000'),
(8, 'FFFFFF'),
(9, 'FFFFFF'),
(10, '222222'),
(11, 'FFFFFF'),
(12, '222222'),
(13, 'FFFFFF'),
(14, '111111'),
(15, '5'),
(16, '100'),
(17, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_ufake`
--

CREATE TABLE `blabax_en_ufake` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `hour_begin` smallint(6) NOT NULL,
  `hour_end` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_users`
--

CREATE TABLE `blabax_en_users` (
  `id` int(11) NOT NULL,
  `ugroup` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salt` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `quarantine` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_users`
--

INSERT INTO `blabax_en_users` (`id`, `ugroup`, `name`, `password`, `email`, `salt`, `ipaddr`, `question`, `answer`, `timestamp`, `quarantine`) VALUES
(1, 1, 'admin', '9abd58ed2a7ab4fb8193b1612db15ce42ed0859f2203686e49512b404d9f7770', 'webadmin@edutech.uni-saarland.de', 'A3nqgwn57AUermoxIdyE', '134.96.198.206', 'sports?', '49cf28689c1adbb41818de65da4703c7b65656fe4df7df4b68f0ce65428f500c', 1600157455, 0),
(2, 1, 'Guest', '', '', 'sGLQiThY84WQAteJltwR', '95.89.26.112', '', '', 1587733871, 0),
(5, 1, 'Experimenter2', '6148f399d1338e565ee47c531070b531f5b4bf0d94a5630127d35eac9e02fb7c', 'm.rejon@edutech.uni-saarland.de', 'wGqa5FWpXw7AWh9q5YSW', '134.96.123.173', 'edu', 'd2125ee1706ff5ce6335b371fb61db4b656435e99d339f8be83233f8c75ece77', 1597998848, 0),
(4, 1, 'Armin', '50c81f6582199b606e9913ed80a1a75e42111706d8d633b160982aea69a93919', 'a.weinberger@mx.uni-saarland.de', '0Er4a5qc60Bn5Q0TSBlY', '87.145.165.100', 'Name of first cat', '55fb2af65b29803d896396aa4b73365d6968699383839ed7f3f115e2be367968', 1587791586, 0),
(44, 1, 'Barreiro', 'e5c546167f5dfe49a4539c7e7b17d9e68778cbda4e48519b7cf794a4ba73b775', 'silke@uibel.ch', 'cj25yEnuB89tjdreBw2O', '137.59.221.25', 'jj', '1fc501b1e28b630accfcd482a49488592a75d8c1134a924f928a8b5703fb6aaa', 1624375786, 0),
(9, 1, 'Bakhtiaicp', '', '', 'B6kQwUAhfURKiU2DpRhZ', '134.96.198.206', '', '', 1600155804, 0),
(11, 1, 'paan001', '9f4c8c28eda373ce76bc9f3c16edda0bf36612e7e97b44e25b430711c9ac921b', 'paloma.goncalves@uni-saarland.de', 'XV28ssIJoQqOJ2uWAgds', '95.91.202.204', 'How many finger do I have?', 'ad3e3784b17755b3225063f9baa6f97fb06d9ae564c244ff069e323cdeae262f', 1603899562, 0),
(12, 1, 'Experimenter1', '404f69c895cecab68541fc578d5484a680ed72865b427a9a377b2a9408b1849d', 's8nikuko@stud.uni-saarland.de', 'UT3PoFFkrPWGw3Oboq5f', '95.88.147.29', 'University', 'fa529125990a677fe709717a693068d2d36a3e9dab35d27b15b9295fa2c9c46b', 1607914233, 0),
(45, 1, 'Faro', '22fd7ec23380e62f062c6e42a9e3a3aa105471b05afade8183d5238401ff8fd1', 'elba00003@teams.uni-saarland.de', '9Lnfz3tXdRp2dYTrnl4h', '137.59.221.25', 'jj', '17bf5d385d8f1b66cca04759c05fe1fa41dd5ac74f331d4086d25a2796669147', 1624375867, 0),
(41, 1, 'Mazatlan', 'b0c63ba2776fe8f802d919466fd4f20382c0624981bc5c1c8cdf8a968b3db98c', 'lena-hansen96@web.de', 'BGAU0G7snAqlDsIeqy2P', '134.96.197.131', 'j', '257c28487563098f00f66ec63a5fdf17be1a71116e05a363cb51c2837cfad9a9', 1623334564, 0),
(42, 1, 'Gojar', '853cedb44482c10cf7c0aa061c5d7d7c81d59b3f4bc95d8f0da4b2ad2f256b73', 'dec2mclaren@hotmail.com', 'mU0ly5sjGKrSoUaqc4qR', '134.96.198.156', 'jj', '0c7467d60294caa436b5b8a4dd3423b7233b1cbd5b99c40eb647b7e42299d8b8', 1623689342, 0),
(18, 1, 'bakhtiar', '626aadf6da68d6a6d356eaad2f100c3a21847689bb3ae38bf2f8c986d3d15993', 'bakhtiaricp@gmail.com', 'ruZlAfZsDZkDCkDDRW2N', '134.96.197.5', 'sports', 'fdffad001bb2f104cabb05b20dfc4445ec983af213de9bd9a28692dbdfb734ff', 1623068725, 0),
(22, 1, 'Montargil', '82f52400bbaf58a26b360244b557ba46a5f7c96264bd20021c527214e7ca52d6', 'mamo011@teams.uni-saarland.de', 'guaX5s7NueXBUEgzzNMa', '134.96.196.229', 'recovery', '287addc345896baa96cc68e1139da0147b0e03a5e2280516cbace440e8c7e38e', 1623158220, 0),
(23, 1, 'Vilao', '2f16a8d85666147f7d411ee6bd2afdbbf7ece5b0ec3b1519153b440b6c7a7305', 'alko009@teams.uni-saarland.de', '1Ks7Qq7gqSzpBfSql4k8', '134.96.196.229', 'recover', 'e7e7584f26d1a6f4b0324caf336ac274ce01bd9d4dda692a8e9a8e9e0a3c7280', 1623158322, 0),
(24, 1, 'Amarante', '528464772950eb9e7b6c454dff3d65547e30ddc83b5f48f89ffa61ce61275061', 'chkn00001@stud.uni-saarland.de', '8iZIIqTusPXt8aHFwmJ2', '134.96.196.229', 'q', 'c7a5771ef867ca921b00030d31c86207d6a6065323d9a6512612ffebdea6e728', 1623160335, 0),
(25, 1, 'Mildstedt', 'edaeda2f646afef32d4aebe19c044ee2dc010b8d9feb2eb0e2a235f6bd67525f', 'mast00004@stud.uni-saarland.de', 'N1CMZWYJNKvvyW42udWQ', '134.96.196.229', 'q', '4cd56cb37ec42b848e7ed7c359a341d6cb5261e93987db073ce43d6f52b4c296', 1623160546, 0),
(26, 1, 'Charsarada', '86f73c67bdf18f110afa0dcbef908fd307122deccff36534cff92fe1f391a0ea', 'simonkirschweng@gmail.com', '8Zr8kjBpoR6o2dZ1q1kE', '134.96.196.229', 'w', 'a9ee4fbfd84391c5bf22af60a2594fea273fdf77ac9704b6c63d36d18b38c60f', 1623160719, 0),
(40, 1, 'Apodaca', '6000f880bee08368a3d536789ca833cd43a79020b741bc0e746cb9e63b4f9b2c', 'stephanie.okrent@web.de', 'FmuC82HCOH9uUuLcjw2F', '134.96.197.131', 'k', 'c48ee4b91297099d891e106c3b5ee71d4933089284b9c708e66387f5a74f95a0', 1623334518, 0),
(28, 1, 'Queretaro', 'b035f69f962764584ff2c1f661c6a77aa9c62df26d97476bdf3042fabc2b5297', 'jaha00001@stud.uni-saarland.de', 'CDJybRPDMWqGAyBI0cIB', '134.96.196.229', 'y', '2b38144e84d19570bd978f4b3d08f68d645e7f9c5ff9ea67c7c966620132c665', 1623166365, 0),
(29, 1, 'Maia', 'a9d73b84ad095c3d1bed6d57e1021235d1cd62a0f8b2495c5a8c7ac494f456a3', 'empo00001@stud.uni-saarland.de', 'mHHqwaQgK90RNSMvnNss', '134.96.196.229', 'h', 'de4cb4e519286ab9540285005808f48a20d32620e6d5759fbe10ad5e2344c49b', 1623166409, 0),
(30, 1, 'Hayderabad', '04875dc763739962d562bb198aafa5b14b753fb02b2535afd94bc6c9c4167684', 'saha00003@stud.uni-saarland.de', 'QOT0BpyxKLqWfwX98Psy', '134.96.196.229', 'u', '435a8d09daebc06ad032d7a2464a6bcc18702ebc3a9d75b956c112eff9fb3fd9', 1623166452, 0),
(31, 1, 'Peshawar', 'e2520834783893f7f760bd57d1c8d197d7b309482e7908d6967b05a5b0911330', 'moal00006@stud.uni-saarland.de', 'gFaBlTYGBwQ2LLOEuIqs', '134.96.196.229', 'f', '698f53200ae80b854dc91d56a73d1f7a2347edaa4f52539fb976a9d76ddc2366', 1623166481, 0),
(32, 1, 'Valladolid', 'd34a7971be4571861a5a9e3fe8697268647aad42c2db2910810d6f7b6a3a104b', 's8mepote@stud.uni-saarland.de', '3Ffmp7kUiLw4Yoatm18A', '134.96.196.220', 'f', 'fc45ccb00fc366cc3054e354ae0b079347f5c48888a0619c188b9151e4501913', 1623223493, 0),
(33, 1, 'Husum', '90cc0b2a83621a5aa32cb0680b843ffc7fefeee518525ca7b356076e12329852', 'alessialicata40@gmail.com', '8tpIhVuvAyG7JtimxT0W', '134.96.196.220', 'v', '025897591287ca3cb2fe52c666941a1370646a1b13cfa8d5ba6d8e0cef74285e', 1623223694, 0),
(34, 1, 'Leiria', '651d7e6aed83bfcb97cd7b86f37d8a59987a91af3f49eaf040a4efd892700e37', 'seko00001@stud.uni-saarland.de', 'nErIvI5GgOoHx8CmyRAq', '134.96.196.220', 'v', '9bf9e09710f9b3f131fad8313fb7f5e166627de5707aa8d284a44024750de8b7', 1623224080, 0),
(35, 1, 'Regensburg', '6feb940bdfc7d27e38afd10e331576a29a4629cd210a751369d92e096aa0e51a', 'vepe00001@stud.uni-saarland.de', 'Jc5EC9H3RhX0SP9jphxA', '134.96.196.220', 'g', 'fb4e2491918ae36be1258127a2d51f3e75d069d5a0e057ca84e95ef0308ef70c', 1623224173, 0),
(36, 1, 'Tlaxcala', 'ad45b88e0d12ee673b8026572df672ae0c634236e05e7fbb79f4f20f7fa2fad9', 'vime00001@stud.uni-saarland.de', '1TFk6H71xsq4xXKVr8dR', '94.62.134.156', 'l', '943a8e7aa0c14470900736a86cef928f5c265fb5bfdf10ea98b663337683b28e', 1623244428, 0),
(37, 1, 'Westerland', '1d280665adbfb3288480e457259f40cc93f4d52e7e68f467ea7edbf9675c400a', 'vafo00001@stud.uni-saarland.de', 'FLtJdcYR4aGcwStxPLPK', '94.62.134.156', 'k', '2eab9450d22e88ea85498115c340809e261bf0832b0e299e738470a5afed9183', 1623244468, 0),
(38, 1, 'Jatoi', 'f85036227fe40ee4ae36c87bef36c2763dbbb4f6092df1b49974480ca32619ee', 'majo00002@stud.uni-saarland.de', '5ZWlvkYtOmPDpiwvNtdG', '94.62.134.156', 'j', 'd76d03231123acbc32ca944798df0ce7d235f7dd46b2e784bd7ac5764be4601b', 1623244503, 0),
(39, 1, 'Puebla', '66e51e8a906dbf954ed7f53f292640bd843a33ced9c469da28d612fe9b13a6d8', 'jose00002@stud.uni-saarland.de', '9NPsi2N0LQNzdQvvxsdZ', '94.62.134.156', 'l', '08d73f89784ecc13f0b66535386aaf6389c5ffedd86b99fbe175bfef27cc316b', 1623244572, 0),
(46, 1, 'Jacobabad', '8a5b8900d3f9d0ecf4110e543de28ed372ffb7069a9f1de555dc17cd4016dc56', 'ally_schaefer14@yahoo.de', 'kwzaHm3o6eFBZJViTmm3', '137.59.221.25', 'jj', '0e13457cf143ea987729ea84e7815ecbbaecb3324f2e3588555fa4570e03e6c0', 1624375917, 0),
(47, 1, 'Dresden', 'e13836f13d052f21eba8a1e483c1aca6ce6ed09e715ca09b22894c3cd945418d', 'michi.reifenberg@gmail.com', 'THgK4rgIdQSuRilCBu51', '137.59.221.25', 'jj', 'e2cf728e2e0b90207959a27ef5b783375ed89f9845f9644bdcce8c14dc8a6daa', 1624375960, 0),
(48, 1, 'Evora', '6694026b2af1122336e9f1ae24e5f8afcbb56e99e11c396e795dc3b9b3244a97', 'ginasuch@web.de', 'Mpm3yJIQbn3WT1MD4YgS', '137.59.221.25', 'jj', 'e5897abfbc3c18ba4042d763c67a4d38a1c49373ed9b55ef03a31ebad14cc600', 1624376016, 0),
(49, 1, 'Experimenter3', 'fe3083a106f4564be82d8aa1c551f430dd4134206afb2264d90a34fb22358005', 'lesc00008@stud.uni-saarland.de', 'wixNcQvt8QfUyqapJCWi', '134.96.198.35', 'f', 'a3e4fb80bbcc5d5fa89aa540a096f2398b27fc7c3c3575d050841e7a8881a0b7', 1625046615, 0),
(50, 1, 'Almada', '0d9430432461971641c1b201fdfa52be19247b714998c0d1e2499cc5a61de767', 'lenawiethaus@web.de', 'BnEyZtb4OKBFfyDdFwYk', '95.90.169.169', 'f', '2996ec1560441dd1e8e82a18b7ccaa3400bf918b21824d7cff076cbc55961785', 1625569695, 0),
(51, 1, 'Aveiro', '873f7422e07e552c2f769c1344ba50dc2268f0e9661568b5d4526d561b9a0c89', 'chsc00005@stud.uni-saarland.de', 'OS4QECBIVA2Q8VdBqcLE', '95.90.169.169', 't', '5d0ef557083efaf4a7625f0f6c572c335a2d8ebd1933be29c810cc889cb3252a', 1625569729, 0),
(52, 1, 'Bremerhaven', '486540f9118eae49089d869d6ed9a7c00c5fbe798d5e439c260f03b2af3cc00a', 'miriam.marx3@gmail.com', '8BvZu1FZ4ie3RXtpXHcL', '95.90.169.169', 'f', '96c9ad612b292b3e2f788759f7fcfaca818897d23681518ed5e114355c421dbf', 1625569759, 0),
(53, 1, 'Merida', '9357d7143e00caf51a8a7802ec31d5cb4de935cacb613b19d5e27f75238888de', 'yuwa002@teams.uni-saarland.de', 'EsbCEdnIixvKHbyIAa1L', '134.96.204.29', 'r', '33309801b9f2edd6d9bd56a10c7f3dbf5b5567510622b30ae22bef4abe438b8f', 1633958451, 0),
(54, 1, 'Ravensburg', 'd34576dd962d0e7af07bc89582a9d09a3d06c3e9b9c2c26fd6a55e9b94a2fab9', 's8banaja@teams.uni-saarland.de', 'WPYMHShEyub1BxASxjFR', '134.96.204.29', 'q', 'cb1077dfacd0acd1d48e7224f4868f935454f762aeeec65c72ea8bf5bfc39071', 1633958493, 0),
(55, 1, 'Experimenter4', '9ba0dc3b3deda10bd7f1a4b5d5263874449142f20341d11931fbf72b94885ff2', 'elba00003@stud.uni-saarland.de', 'qNWGmMFdchCVw1CDoUUM', '134.96.204.78', 'q', 'e06252682880ab6df727c74b5db47ac1c14290408c9fd74c137fd4034046b8a0', 1634113560, 0),
(56, 1, 'Birk', '4e806df18684d20f070e313b21bd4235eadba4e87d2c4c17ff6f2505512da879', 'bith002@teams.uni-saarland.de', 'MpqdqceyGgTv9HhZFa0N', '134.96.197.6', 'q', '8988a125717e52a49041a208c755a57a344e7763e0d60d4fdab1458207a1a555', 1634891019, 0),
(57, 1, 'Moita', 'cd4edae1a95fdb84d5a8f28a7b4451de7cd3fbdf0c691d64794621ad8bc72104', 'johannajoline@yahoo.de', '5KotR15mJYbaEJZvyu7X', '134.96.204.2', 'q', '947c4b34ba8d95cc8ac6d795efd9197ab18ded0739bf16f3dc532331a80b8c38', 1635174377, 0),
(58, 1, 'Pakpatan', '40874ef11d7ac5af05d191a8d01a55da859b23cc6bb264586e2a08b6ddaf874b', 'maren.philipps@gmx.de', 'WbqkfdOFzgok4kGH06mZ', '134.96.204.2', 'q', 'e958460caed4ae22825b7de6a7c52079d72cb6540e09926caa25f7ef019a91ed', 1635174410, 0),
(59, 1, 'Daharki', 'fa8d519bcc8f01c3b07c330c0647738179d0f367ce1e9b614ea287207e74572b', 'mami00006@stud.uni-saarland.de', 'qKLR6cODapAjHEOc4xVD', '188.194.232.41', 'edutech', '6d608d396614787fd329dc1251cd179224c1e67374d3a96a6c65421e0353a5de', 1635960048, 0),
(60, 1, 'Oeiras', 'be6d52df7536f88381b24e6deed4a465e3cca2a6b89538357b9b0d66860b0a38', 'kawa00002@stud.uni-saarland.de', 'n8Cd7fzIc1MyqPnTtpTc', '188.194.232.41', 'edutech', '54a0dd8424dc96b8adceeaffb9eea2166c79f5ef882217720b6380e867136c1a', 1635960128, 0),
(61, 1, 'Viseu', 'ba08a66613a86fddd87b5c8ba76be33fa56f5fcb515117037c3e5bc23e076fda', 's8suprak@stud.uni-saarland.de', 'Cwi8B5zKeaBMJMRw2gEm', '188.194.232.41', 'edutech', '507f4028165bd4d38013efa6355728aa714133e99604c6243a9e0793007147c4', 1636116558, 0),
(62, 1, 'Leipzig', 'dec9d02c8b1af511710ee4b9fe516e8ffa38d1378a8e6a6708de6fb93d1e6ff2', 'mafu00001@stud.uni-saarland.de', 'TTDw02AuthekLRDbtflu', '188.194.232.41', 'edutech', '993d68c53e503fd9c468cd47ca6916082bb3836a2738342b4a8871f5da445c80', 1636116610, 0),
(63, 1, 'Weingarten', 'e373b9c34c494eb2e4c2c119550f349e41d917d072602e9458eb6dd47a8e4f51', 's8lehass@stud.uni-saarland.de', 'MPLpI4wYpe82ZHiyzT2G', '188.194.232.41', 'edutech', 'b779d371732028da456187ec002074274daa0fe2a9313180526135dc3d873b24', 1636116679, 0),
(64, 1, 'Monterrey', '8e99907de019e9593501a82098cfda67af5cbb7821cdd70061e3f37b09def630', 'onez00001@stud.uni-saarland.de', 'Zw7EZnmLeMyLxLWDt4qe', '188.194.232.41', 'edutech', '9142669b12b52f6d990741a3f06d49b826c355cf5372780f5b44508d7580daa7', 1636116743, 0),
(65, 1, 'Freiburg', '6af1b9b88217dc5a0c2bd766cba3bf590f684d48aab8816e47f99f68e2935de3', 'dannyattey@yahoo.co.uk', 'T0YhIr8pmf13AdtmAZUf', '188.194.232.41', 'edutech', 'd46508870da738f82a0435dc72d6b81399676f6db9143ab596c985492b28e01a', 1636116790, 0),
(66, 1, 'Guimaraes', '8a19fddc2737cb1dfbeabad1d0163194394d625748bba1b781c935c26b2a6d3a', 'sarojapr29@gmail.com', 'dDRc4bzGrZrp7rUe8GS0', '188.194.232.41', 'edutech', 'f3b72b7e81322d4eed4343aac903f0f9cd773360add260bdb2a758664dc67af1', 1636116838, 0),
(67, 1, 'Potsdam', '5ddbadd9e0a2165bd51acbda09559cf05f529dad75bdff408e8d74e56bac1271', 's8sharif@stud.uni-saarland.de', '4HoAFyQ61fmPKcsrnmQ2', '188.194.232.41', 'edutech', 'b1886ba5d8e6bf139912975eae8ed6f4f41f588410f7cff8b34c1395665f7e28', 1636116891, 0),
(68, 1, 'Acapulco', '99b2a48fecfce4b8d7dc0e027284cc3f54d5c4fdcb14cefec26f1ff12ea101ff', 'dianna.williams455@gmail.com', 'tRXO2igawORA2AMcGexU', '188.194.232.41', 'edutech', 'd1c0b2157e66d7a96baccc91970a6cc13649f02d342cc5da9c9ce307f24ebbfa', 1636116933, 0),
(69, 1, 'Santarem', 'a08b855a125a2c9a1658fd9881ff2e5572f3186032a42db5268ac89b8f3d04e5', 'mielke.michelle194@gmail.com', 'ntZJGLorOgyfv8EQrTKo', '86.103.158.178', 'edutech', '7dc130d6ebe931e00c0b680444e97710365fae4c3541f341aa9671b22cfb3ab0', 1636635551, 0),
(70, 1, 'Karachi', 'f0a9f0ef3a889eedbfd00ff34a0bbaec25c6f2789e1d5600a750726c6c3730f0', 'masc00026@teams.uni-saarland.de', '51oZm9BTWeEfQofvbcTS', '86.103.158.178', 'edutech', 'cb8f2a653b03736a0fb3b057aa8f62c06493d05ec45dbe0599fe3ed26a811074', 1636635623, 0),
(71, 1, 'Vehari', '38a3e2b5df674e098b93aff657c9f12d1b652de9ef20ffa26e15fd6742c905d3', 'anishsingh985@gmail.com', 'rWcdmHKzwNLUN5jnZ2MW', '86.103.158.178', 'edutech', '0a497a3ce7288424a44c7472fcd0298d2352e195d92b36d38e28b6cf2ad15bc1', 1636635784, 0),
(72, 1, 'Zitacuaro', '8f5285f2ea924937b85da5abbcd26ae3c130fe2daf199d9bbeae5b0ce8151f15', 'emnw00001@stud.uni-saarland.de', 'TyRYbsswLT0R3TEIGz7u', '86.103.158.178', 'edutech', '554d2e3a5f07145d1c5fdf6ecb83060919a6876528e7f8924a88978731dafe83', 1636635830, 0),
(73, 1, 'Sahiwal', '4357aae35bb6a3b662b2f09f976b17a00f750e8c2792c8a1feda218a4e1fb81e', 's8nikuko@teams.uni-saarland.de', 'VK7H9i8xnaWoQVjGQ3ju', '188.194.234.39', 'edutech', '486e6b4d2371827110bdb5512060ac222f4fa60b55050a12eca7005457a522d0', 1637576275, 0),
(74, 1, 'Hamburg', 'e6e8d8da0ec2dab0294e505406df54828fd0d2aa64ad7a62e86bd98443e472db', 'hofa00001@stud.uni-saarland.de', 'SX5q8z5vBtBFG5Cxc3eO', '37.4.237.74', 'Edutech', '846187c8f9661dac215a44ef22dc04ed3fd49c11fda0b146ce0eeed0b0fa4875', 1638517920, 0),
(75, 1, 'Silao', '531f997d5939bc3835122751af58563c25ba9739ea46ef6f96e39df9ad3a49ea', 'mareike.silber@live.de', 'IzcSICBEsD2LlPyxn6ko', '46.83.99.48', 'edutech', '0715fea7e4bbac3fff34993c064692c0aea58d6f7a63c604d0a8ad2b044b9190', 1638550254, 0),
(76, 1, 'Sialkot', '397176d25f22bfcc4b89d5e08df907ba47081c05515de713eb9fe08f766aabab', 'niro00001@stud.uni-saarland.de', 'sX5rFiPhE7xYPoEybaJQ', '95.90.200.99', 'edutech', 'f85bc5c0e4c08affc0fc774c99076fbbcbd520ee7e25fa4f50de31f10f5971fa', 1638810796, 0),
(77, 1, 'Bredstedt', '11cd94ae987045f18e5fd43672c6850035f70a423394927169007d3b3e57e373', 'blancaruizdelpino@gmail.com', 'JuYd97onEvvK6w23cCkU', '91.37.110.240', 'edutech123', '41669193dc799157f481ba674cc40a494f1da45fc09042af06e14a7a19c773ea', 1641458635, 0),
(78, 1, 'Setubal', 'f9935c425cc32a53a8d7c861fa9cafc9a64bfae1730cb0ff29a3ce56334d5f35', 'annaivanov1998@gmail.com', 'r8PJJei2b5EjsYUUbaXV', '91.37.110.240', 'edutech123', 'cde3e518ddf3cf990c975b228c9e34b86cc000f44c17fb5e0eb1f733e13f2cf9', 1641458710, 0),
(79, 1, 'Guadalajara', '67feebbe0169cb926ab94b2d73da50764e470ef8ba0cf04fbfa454dd9f44c033', 'kasu00002@teams.uni-saarland.de', 'fy2hOqVGVP2qUydAlB0c', '91.37.110.240', 'edutech123', '11530319d4a0a721fa2d4604fb46bf862d57622a5e6d94d207cd719ccce8db24', 1641458754, 0),
(80, 1, 'Cholula', 'd1c544deea35b4a17f3f1776db69bd65a8751e659084b4ad2abcf1d5b65d4531', 'maka00002@stud.uni-saarland.de', 'Zj5z8aILXDJE6n1ikRiA', '91.37.110.240', 'edutech123', '728aae03fcfa663007b74b1c96da50fb886cd0d9e3283577250794b18656038a', 1641563768, 0),
(81, 1, 'Versuchsleitung3', 'a94f0dd055e90112e3a383dfa5d48dd5606aa4cab006cbb068e0727af492fd58', 'lesc00008@uni-saarland.de', 'vwppzMDkHh7EqI4xYqK2', '95.90.200.108', 'edutech123456', '110e62be790fa01a6e37884b209914152616cc8ddb86340acd1301d69bf36254', 1641805919, 0),
(82, 1, 'Oaxaca', '09ecd71f3e3253e513f253c276732f600ab25eddc4fde94f0c8daa647d48f5c6', 'erha00002@stud.uni-saarland.de', 'hk2fxf0fvPYCjBKVRgAs', '139.47.0.89', 'Edutech123', '5faa06015cf30b4eb8c66dbcfb29c690086d12995b0a35703580301bc92bafec', 1641818426, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_en_uxtra`
--

CREATE TABLE `blabax_en_uxtra` (
  `id` int(11) NOT NULL,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(6) NOT NULL,
  `location` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_en_uxtra`
--

INSERT INTO `blabax_en_uxtra` (`id`, `image`, `motto`, `age`, `location`, `gender`) VALUES
(5, 'avatars/avt09.svg', 'sxience!', 0, '', ''),
(21, 'avatars/avt41.svg', '', 0, '', ''),
(20, 'avatars/avt58.svg', '', 0, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `blabax_en_fmedia`
--
ALTER TABLE `blabax_en_fmedia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_gbox`
--
ALTER TABLE `blabax_en_gbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_gifs`
--
ALTER TABLE `blabax_en_gifs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_groups`
--
ALTER TABLE `blabax_en_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_grules`
--
ALTER TABLE `blabax_en_grules`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_jbox`
--
ALTER TABLE `blabax_en_jbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_messages`
--
ALTER TABLE `blabax_en_messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_messages1`
--
ALTER TABLE `blabax_en_messages1`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_nbox`
--
ALTER TABLE `blabax_en_nbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_news`
--
ALTER TABLE `blabax_en_news`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_paintings`
--
ALTER TABLE `blabax_en_paintings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_qcats`
--
ALTER TABLE `blabax_en_qcats`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_qdata`
--
ALTER TABLE `blabax_en_qdata`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_rbox`
--
ALTER TABLE `blabax_en_rbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_rooms`
--
ALTER TABLE `blabax_en_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_en_stimoji`
--
ALTER TABLE `blabax_en_stimoji`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `blabax_en_stimoji` ADD FULLTEXT KEY `keytags` (`keytags`);

--
-- Índices para tabela `blabax_en_users`
--
ALTER TABLE `blabax_en_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `blabax_en_fmedia`
--
ALTER TABLE `blabax_en_fmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `blabax_en_gbox`
--
ALTER TABLE `blabax_en_gbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_gifs`
--
ALTER TABLE `blabax_en_gifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_groups`
--
ALTER TABLE `blabax_en_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `blabax_en_grules`
--
ALTER TABLE `blabax_en_grules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_jbox`
--
ALTER TABLE `blabax_en_jbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_messages`
--
ALTER TABLE `blabax_en_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1253;

--
-- AUTO_INCREMENT de tabela `blabax_en_messages1`
--
ALTER TABLE `blabax_en_messages1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `blabax_en_nbox`
--
ALTER TABLE `blabax_en_nbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_news`
--
ALTER TABLE `blabax_en_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_paintings`
--
ALTER TABLE `blabax_en_paintings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `blabax_en_qcats`
--
ALTER TABLE `blabax_en_qcats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `blabax_en_qdata`
--
ALTER TABLE `blabax_en_qdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `blabax_en_rbox`
--
ALTER TABLE `blabax_en_rbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_rooms`
--
ALTER TABLE `blabax_en_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `blabax_en_stimoji`
--
ALTER TABLE `blabax_en_stimoji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_en_users`
--
ALTER TABLE `blabax_en_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
