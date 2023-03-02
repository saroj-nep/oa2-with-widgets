-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: webdb5.rz.uni-saarland.de:3306
-- Tempo de geração: 17-Jan-2022 às 19:31
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
-- Estrutura da tabela `blabax_ban`
--

CREATE TABLE `blabax_ban` (
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
-- Estrutura da tabela `blabax_bflog`
--

CREATE TABLE `blabax_bflog` (
  `id` int(11) NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_bflog`
--

INSERT INTO `blabax_bflog` (`id`, `ipaddr`, `token`, `timestamp`) VALUES
(0, '37.4.237.74', 2, 1638514387),
(0, '37.4.237.74', 2, 1638514444),
(0, '46.83.99.48', 2, 1638539981),
(0, '46.83.99.48', 2, 1638540163),
(0, '131.117.153.242', 3, 1638540212),
(0, '46.83.99.48', 2, 1638548095),
(0, '46.83.99.48', 2, 1638548154),
(0, '46.83.99.48', 2, 1638548205),
(0, '46.83.99.48', 2, 1638548260),
(0, '46.83.99.48', 2, 1638548294),
(0, '95.90.200.99', 2, 1638810568),
(0, '95.90.200.99', 3, 1638810578),
(0, '95.90.200.99', 2, 1638810617),
(0, '95.90.200.99', 2, 1638810657),
(0, '95.90.200.99', 2, 1638810706),
(0, '95.90.200.99', 2, 1638810744),
(0, '95.90.170.209', 2, 1638893188),
(0, '128.0.102.239', 3, 1639068476),
(0, '91.37.110.240', 2, 1641458255),
(0, '91.37.110.240', 2, 1641458318),
(0, '91.37.110.240', 2, 1641458386),
(0, '91.37.110.240', 2, 1641458432),
(0, '95.90.200.108', 2, 1641805992),
(0, '91.37.110.240', 3, 1641834056),
(0, '95.90.171.105', 3, 1641901312),
(0, '95.90.171.105', 3, 1641901344),
(0, '91.37.110.240', 3, 1642055164),
(0, '95.90.200.108', 2, 1642350264);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_fmedia`
--

CREATE TABLE `blabax_fmedia` (
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
-- Extraindo dados da tabela `blabax_fmedia`
--

INSERT INTO `blabax_fmedia` (`id`, `filename`, `file2hdd`, `filetype`, `sourcetxt`, `timestamp`, `userid`, `username`) VALUES
(1, 'Citrus Fruit', 'attachments/CitRuS.jpg', 1, '', 1600157410, 0, '(P)'),
(2, 'Baby Dont Go', 'attachments/BrOoNzY.mp3', 2, '', 1600157410, 0, '(P)'),
(3, 'Oh Oh Bunnie', 'attachments/BuNniE.mp4', 3, '', 1600157410, 0, '(P)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_gbox`
--

CREATE TABLE `blabax_gbox` (
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
-- Estrutura da tabela `blabax_geoloc`
--

CREATE TABLE `blabax_geoloc` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geolat` float NOT NULL,
  `geolon` float NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_gifs`
--

CREATE TABLE `blabax_gifs` (
  `id` int(11) NOT NULL,
  `idgbox` int(11) NOT NULL,
  `seen` int(11) NOT NULL,
  `ggif` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmp4` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_groups`
--

CREATE TABLE `blabax_groups` (
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
-- Extraindo dados da tabela `blabax_groups`
--

INSERT INTO `blabax_groups` (`id`, `name`, `welcome`, `link`, `color`, `pa`, `pb`, `pc`, `pd`, `pe`, `pf`, `pg`, `ph`, `pi`, `pj`, `pk`, `pl`, `pm`, `pn`, `po`, `pp`, `pq`, `pr`, `ps`, `pt`, `pu`, `pv`, `pw`, `px`, `py`, `pz`) VALUES
(1, 'DEFAULT', '', 0, 'FEC400', 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_grules`
--

CREATE TABLE `blabax_grules` (
  `id` int(11) NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scenario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ugroup` int(11) NOT NULL,
  `zorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_iplog`
--

CREATE TABLE `blabax_iplog` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `country` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_iplog`
--

INSERT INTO `blabax_iplog` (`id`, `name`, `ipaddr`, `timestamp`, `country`) VALUES
(1, 'admin', '134.96.198.150', 1639079721, '-'),
(98, 'Hannover', '134.96.198.150', 1639063335, '-'),
(1, 'admin', '134.96.198.150', 1639063397, '-'),
(100, 'Magdeburg', '134.96.198.150', 1639063591, '-'),
(5, 'Versuchsleitung2', '134.96.198.150', 1639063668, '-'),
(5, 'Versuchsleitung2', '134.96.198.150', 1639067866, '-'),
(98, 'Hannover', '95.88.67.70', 1639068493, '-'),
(100, 'Magdeburg', '128.0.102.239', 1639068497, '-'),
(5, 'Versuchsleitung2', '134.96.198.150', 1639069945, '-'),
(1, 'admin', '134.96.198.150', 1639070022, '-'),
(109, 'Mansehra', '91.37.110.240', 1641458266, '-'),
(110, 'Zapopan', '91.37.110.240', 1641458325, '-'),
(111, 'Palmela', '91.37.110.240', 1641458394, '-'),
(112, 'Pombal', '91.37.110.240', 1641458442, '-'),
(1, 'admin', '95.90.200.108', 1641805799, '-'),
(113, 'Versuchsleitung3', '95.90.200.108', 1641805999, '-'),
(1, 'admin', '134.96.197.219', 1641821196, '-'),
(105, 'Braga', '91.37.110.240', 1641834019, '-'),
(106, 'Gujranwarla', '91.37.110.240', 1641834072, '-'),
(105, 'Braga', '91.37.110.240', 1641881037, '-'),
(106, 'Gujranwarla', '91.37.110.240', 1641881063, '-'),
(1, 'admin', '91.37.110.240', 1641881077, '-'),
(113, 'Versuchsleitung3', '91.37.110.240', 1641881599, '-'),
(113, 'Versuchsleitung3', '91.37.110.240', 1641886454, '-'),
(105, 'Braga', '217.81.99.81', 1641887000, '-'),
(106, 'Gujranwarla', '95.90.169.163', 1641887028, '-'),
(113, 'Versuchsleitung3', '91.37.110.240', 1641890068, '-'),
(1, 'admin', '91.37.110.240', 1641890087, '-'),
(110, 'Zapopan', '91.37.110.240', 1641983114, '-'),
(104, 'Lindau', '91.37.110.240', 1641983140, '-'),
(1, 'admin', '91.37.110.240', 1642055013, '-'),
(113, 'Versuchsleitung3', '91.37.110.240', 1642055170, '-'),
(104, 'Lindau', '188.210.57.142', 1642060247, '-'),
(110, 'Zapopan', '134.96.80.36', 1642060280, '-'),
(1, 'admin', '91.37.110.240', 1642062955, '-'),
(111, 'Palmela', '95.90.200.108', 1642350216, '-'),
(114, 'Swabi', '95.90.200.108', 1642350270, '-'),
(1, 'admin', '95.90.200.108', 1642401054, '-'),
(113, 'Versuchsleitung3', '95.90.200.108', 1642401212, '-'),
(111, 'Palmela', '92.196.219.201', 1642406018, '-'),
(114, 'Swabi', '93.221.248.200', 1642406018, '-'),
(1, 'admin', '95.90.200.108', 1642408876, '-'),
(1, 'admin', '134.96.197.18', 1642420680, '-'),
(11, 'paan001', '95.90.171.180', 1642423183, '-'),
(1, 'admin', '134.96.197.18', 1642423198, '-');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_jbox`
--

CREATE TABLE `blabax_jbox` (
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
-- Estrutura da tabela `blabax_messages`
--

CREATE TABLE `blabax_messages` (
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
-- Extraindo dados da tabela `blabax_messages`
--

INSERT INTO `blabax_messages` (`id`, `roomid`, `userid`, `usergroup`, `username`, `touserid`, `tousername`, `line`, `color`, `attach`, `timestamp`) VALUES
(1, 1, 1, 1, 'bakhtiaricp', 0, '', 'test', 0, 0, 1620810394);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_messages1`
--

CREATE TABLE `blabax_messages1` (
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
-- Extraindo dados da tabela `blabax_messages1`
--

INSERT INTO `blabax_messages1` (`id`, `roomid`, `userid`, `usergroup`, `username`, `touserid`, `tousername`, `line`, `color`, `attach`, `timestamp`) VALUES
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
-- Estrutura da tabela `blabax_nbox`
--

CREATE TABLE `blabax_nbox` (
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
-- Estrutura da tabela `blabax_news`
--

CREATE TABLE `blabax_news` (
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
-- Estrutura da tabela `blabax_online`
--

CREATE TABLE `blabax_online` (
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
-- Extraindo dados da tabela `blabax_online`
--

INSERT INTO `blabax_online` (`id`, `name`, `ugroup`, `ipaddr`, `timestamp`, `status`, `avatar`, `pinfo`) VALUES
(11, 'paan001', 1, '95.90.171.180', 1642442420, 1, 'aW1nLzAwcC5zdmc=', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_paintings`
--

CREATE TABLE `blabax_paintings` (
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
-- Extraindo dados da tabela `blabax_paintings`
--

INSERT INTO `blabax_paintings` (`id`, `description`, `srx`, `sry`, `src`, `bgc`, `timestamp`, `userid`, `username`, `bgid`) VALUES
(2, 'Fruits', '99 99 101 102 104 106 110 114 119 123 128 134 138 140 142 144 146 148 149 150 152 152 0 0 129 129 129 130 131 133 136 140 144 152 157 161 165 167 169 170 170 170 168 166 165 163 162 162 162 162 162 162 162 162 0 0 0 0 0 314 314 313 311 309 306 304 301 298 295 292 289 286 283 280 277 274 272 269 267 264 261 259 257 256 255 254 253 252 252 251 251 250 249 248 247 246 0 0 238 238 238 237 235 233 231 228 226 224 222 221 221 220 219 219 219 220 222 225 230 236 242 249 258 263 267 273 277 281 283 0 0 0 0 0 38 39 41 43 46 50 54 58 64 69 75 77 79 80 80 81 82 83 85 87 89 91 92 93 93 94 94 0 0 68 68 69 70 72 74 76 80 84 88 92 95 97 99 101 102 103 105 106 106 107 107 107 107 107 107 107 107 107 107 107 107 107 107 107 107 106 0 0 0 0 0 248 248 247 245 243 240 236 231 227 224 222 219 216 213 211 209 207 206 206 206 206 206 206 207 209 211 215 217 221 225 231 235 241 248 257 269 281 291 299 304 307 310 312 315 317 319 321 321 321 321 321 321 319 317 315 312 309 305 301 297 293 289 284 280 273 269 264 260 256 251 247 243 241 239 0 0 221 222 223 224 224 226 229 233 236 238 240 242 243 243 243 243 243 243 242 242 242 242 242 242 242 242 242 0 0 262 262 264 265 267 270 274 278 282 286 288 289 289 289 288 286 284 282 279 276 273 271 269 267 265 263 262 262 261 261 262 263 264 266 270 274 278 283 286 287 288 287 0 0 0 0 0 0', '345 345 344 343 341 339 335 333 329 325 321 316 314 311 308 305 303 301 299 297 296 295 0 0 298 297 297 296 294 293 291 289 288 285 283 281 280 278 277 277 278 279 281 285 288 291 294 298 301 303 304 305 306 307 0 0 0 0 0 24 24 26 28 31 33 35 37 40 43 45 47 50 53 55 58 61 63 65 67 71 73 75 77 78 79 80 81 82 83 83 84 85 86 87 88 88 0 0 63 64 64 66 68 74 78 83 87 91 95 97 100 102 104 105 106 106 106 106 104 103 102 101 98 97 96 96 95 94 93 0 0 0 0 0 58 58 59 63 67 70 74 77 79 82 85 86 87 87 88 88 90 91 93 95 98 101 101 102 103 104 105 0 0 103 104 105 106 107 109 111 114 116 118 119 120 120 120 121 121 121 120 120 119 119 118 118 115 111 106 101 96 92 88 82 80 77 74 71 68 66 0 0 0 0 0 144 144 144 144 144 145 146 147 148 149 151 153 156 160 164 168 172 175 180 184 189 193 198 204 210 217 223 229 234 238 242 244 245 246 247 247 247 247 246 244 242 238 235 231 226 221 216 211 207 202 197 192 185 181 176 172 168 164 160 158 155 153 151 149 146 145 143 143 143 142 142 142 142 143 0 0 198 198 196 195 193 192 189 186 183 179 177 175 173 172 173 175 178 182 187 192 197 203 212 216 220 219 218 0 0 175 174 174 173 173 173 173 174 176 179 181 183 185 187 189 191 193 195 197 200 203 205 207 209 211 213 215 217 219 221 221 221 221 221 220 219 218 218 218 218 218 218 0 0 0 0 0 0', '414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 414 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 411 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45', 'ecf0f1', 1600157410, 0, '(P)', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_pcache`
--

CREATE TABLE `blabax_pcache` (
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `proxy` smallint(6) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_polls`
--

CREATE TABLE `blabax_polls` (
  `id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ipaddr` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_qcats`
--

CREATE TABLE `blabax_qcats` (
  `id` int(11) NOT NULL,
  `value` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enbl` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_qcats`
--

INSERT INTO `blabax_qcats` (`id`, `value`, `enbl`) VALUES
(1, 'History Europe', 1),
(2, 'Geography', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_qdata`
--

CREATE TABLE `blabax_qdata` (
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
-- Extraindo dados da tabela `blabax_qdata`
--

INSERT INTO `blabax_qdata` (`id`, `catid`, `question`, `aa`, `ab`, `ac`, `ad`, `correct`) VALUES
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
-- Estrutura da tabela `blabax_qres`
--

CREATE TABLE `blabax_qres` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `res` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_rbox`
--

CREATE TABLE `blabax_rbox` (
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
-- Estrutura da tabela `blabax_rooms`
--

CREATE TABLE `blabax_rooms` (
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
-- Extraindo dados da tabela `blabax_rooms`
--

INSERT INTO `blabax_rooms` (`id`, `name`, `description`, `color`, `onoff`, `zorder`, `hidden`, `groupids`) VALUES
(1, 'edutech', 'Experiment 1', '4b7fc3', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_scache`
--

CREATE TABLE `blabax_scache` (
  `id` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_scache`
--

INSERT INTO `blabax_scache` (`id`, `value`) VALUES
('sticache1', 'YToyOntzOjc6IkRldXRzY2giO3M6MTk1NjoiPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfY2FsbC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX2NhbGwuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9jaGVlcnMuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9jaGVlcnMuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9jaGlsbGVuLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfY2hpbGxlbi5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX2RhbmtlLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfZGFua2Uuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9lY2h0LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfZWNodC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX21lYW4uc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9tZWFuLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfbXVkZS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX211ZGUuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV9uYWNodC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX25hY2h0LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc2NoYXR6LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfc2NoYXR6LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc2VleWEuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9zZWV5YS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX3NoYW0uc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV9zaGFtLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL0RldXRzY2gvZGVfc3BpZWxlbi5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9EZXV0c2NoL2RlX3NwaWVsZW4uc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvRGV1dHNjaC9kZV90dXJsaWNoLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL0RldXRzY2gvZGVfdHVybGljaC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9EZXV0c2NoL2RlX3doYXRzdXAuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvRGV1dHNjaC9kZV93aGF0c3VwLnN2Z1wnKSIgLz4gIjtzOjg6IlN0aWNrZXJzIjtzOjI2MjQ6IjxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9iaXJ0aGRheS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9iaXJ0aGRheS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9icmIuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fYnJiLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2NhbGwuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2FsbC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9jaGVlcnMuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2hlZXJzLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2Nvb2wuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY29vbC5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9mbHUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fZmx1LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2dvLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX2dvLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2hhdGUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5faGF0ZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9sb2wuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG9sLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX2xvdmUuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG92ZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9sdWNrLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX2x1Y2suc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fbW9ybmluZy5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9tb3JuaW5nLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX29tZy5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl9vbWcuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fcGxlYXNlLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3BsZWFzZS5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl9ydGZtLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3J0Zm0uc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fdGhhbmtzLnN2ZyIgYWx0PSIiIGNsYXNzPSJjaGF0X2xpc3Rfc3RpY2tlciIgb25jbGljaz0iYWRkX3N0aShcJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3RoYW5rcy5zdmdcJykiIC8+IDxpbWcgc3JjPSJzdGlja2Vycy9TdGlja2Vycy9lbl90aHVtYmQuc3ZnIiBhbHQ9IiIgY2xhc3M9ImNoYXRfbGlzdF9zdGlja2VyIiBvbmNsaWNrPSJhZGRfc3RpKFwnc3RpY2tlcnMvU3RpY2tlcnMvZW5fdGh1bWJkLnN2Z1wnKSIgLz4gPGltZyBzcmM9InN0aWNrZXJzL1N0aWNrZXJzL2VuX3RodW1idS5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl90aHVtYnUuc3ZnXCcpIiAvPiA8aW1nIHNyYz0ic3RpY2tlcnMvU3RpY2tlcnMvZW5fd2hhdC5zdmciIGFsdD0iIiBjbGFzcz0iY2hhdF9saXN0X3N0aWNrZXIiIG9uY2xpY2s9ImFkZF9zdGkoXCdzdGlja2Vycy9TdGlja2Vycy9lbl93aGF0LnN2Z1wnKSIgLz4gIjt9'),
('sticache2', 'c3RpY2tlcnM9bmV3IEFycmF5KCdzdGlja2Vycy9EZXV0c2NoL2RlX2NoZWVycy5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX2NhbGwuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9jaGlsbGVuLnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfZGFua2Uuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9kYXkuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9lY2h0LnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfbWVhbi5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX211ZGUuc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9uYWNodC5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NjaGF0ei5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NoYW0uc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV9zZWV5YS5zdmcnLCdzdGlja2Vycy9EZXV0c2NoL2RlX3NwaWVsZW4uc3ZnJywnc3RpY2tlcnMvRGV1dHNjaC9kZV90dXJsaWNoLnN2ZycsJ3N0aWNrZXJzL0RldXRzY2gvZGVfd2hhdHN1cC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9icmIuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fYmlydGhkYXkuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY2FsbC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9jaGVlcnMuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fY29vbC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9mbHUuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5faGF0ZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9nby5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9sb2wuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fbG92ZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9sdWNrLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX21vcm5pbmcuc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fb21nLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX25pZ2h0LnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3BsZWFzZS5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl9ydGZtLnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3RodW1iZC5zdmcnLCdzdGlja2Vycy9TdGlja2Vycy9lbl90aGFua3Muc3ZnJywnc3RpY2tlcnMvU3RpY2tlcnMvZW5fdGh1bWJ1LnN2ZycsJ3N0aWNrZXJzL1N0aWNrZXJzL2VuX3doYXQuc3ZnJyk7'),
('avt_cache', 'YTo2MDp7aTowO3M6OToiYXZ0MDEuc3ZnIjtpOjE7czo5OiJhdnQwMi5zdmciO2k6MjtzOjk6ImF2dDAzLnN2ZyI7aTozO3M6OToiYXZ0MDUuc3ZnIjtpOjQ7czo5OiJhdnQwNC5zdmciO2k6NTtzOjk6ImF2dDA2LnN2ZyI7aTo2O3M6OToiYXZ0MDcuc3ZnIjtpOjc7czo5OiJhdnQwOC5zdmciO2k6ODtzOjk6ImF2dDA5LnN2ZyI7aTo5O3M6OToiYXZ0MTAuc3ZnIjtpOjEwO3M6OToiYXZ0MTEuc3ZnIjtpOjExO3M6OToiYXZ0MTIuc3ZnIjtpOjEyO3M6OToiYXZ0MTMuc3ZnIjtpOjEzO3M6OToiYXZ0MTQuc3ZnIjtpOjE0O3M6OToiYXZ0MTUuc3ZnIjtpOjE1O3M6OToiYXZ0MTYuc3ZnIjtpOjE2O3M6OToiYXZ0MTcuc3ZnIjtpOjE3O3M6OToiYXZ0MTguc3ZnIjtpOjE4O3M6OToiYXZ0MTkuc3ZnIjtpOjE5O3M6OToiYXZ0MjAuc3ZnIjtpOjIwO3M6OToiYXZ0MjEuc3ZnIjtpOjIxO3M6OToiYXZ0MjIuc3ZnIjtpOjIyO3M6OToiYXZ0MjMuc3ZnIjtpOjIzO3M6OToiYXZ0MjQuc3ZnIjtpOjI0O3M6OToiYXZ0MjUuc3ZnIjtpOjI1O3M6OToiYXZ0Mjcuc3ZnIjtpOjI2O3M6OToiYXZ0MjYuc3ZnIjtpOjI3O3M6OToiYXZ0Mjguc3ZnIjtpOjI4O3M6OToiYXZ0Mjkuc3ZnIjtpOjI5O3M6OToiYXZ0MzAuc3ZnIjtpOjMwO3M6OToiYXZ0MzEuc3ZnIjtpOjMxO3M6OToiYXZ0MzIuc3ZnIjtpOjMyO3M6OToiYXZ0MzMuc3ZnIjtpOjMzO3M6OToiYXZ0MzUuc3ZnIjtpOjM0O3M6OToiYXZ0MzQuc3ZnIjtpOjM1O3M6OToiYXZ0MzYuc3ZnIjtpOjM2O3M6OToiYXZ0Mzcuc3ZnIjtpOjM3O3M6OToiYXZ0Mzkuc3ZnIjtpOjM4O3M6OToiYXZ0Mzguc3ZnIjtpOjM5O3M6OToiYXZ0NDAuc3ZnIjtpOjQwO3M6OToiYXZ0NDEuc3ZnIjtpOjQxO3M6OToiYXZ0NDMuc3ZnIjtpOjQyO3M6OToiYXZ0NDIuc3ZnIjtpOjQzO3M6OToiYXZ0NDQuc3ZnIjtpOjQ0O3M6OToiYXZ0NDUuc3ZnIjtpOjQ1O3M6OToiYXZ0NDYuc3ZnIjtpOjQ2O3M6OToiYXZ0NDcuc3ZnIjtpOjQ3O3M6OToiYXZ0NDguc3ZnIjtpOjQ4O3M6OToiYXZ0NDkuc3ZnIjtpOjQ5O3M6OToiYXZ0NTAuc3ZnIjtpOjUwO3M6OToiYXZ0NTEuc3ZnIjtpOjUxO3M6OToiYXZ0NTIuc3ZnIjtpOjUyO3M6OToiYXZ0NTMuc3ZnIjtpOjUzO3M6OToiYXZ0NTQuc3ZnIjtpOjU0O3M6OToiYXZ0NTUuc3ZnIjtpOjU1O3M6OToiYXZ0NTYuc3ZnIjtpOjU2O3M6OToiYXZ0NTcuc3ZnIjtpOjU3O3M6OToiYXZ0NTguc3ZnIjtpOjU4O3M6OToiYXZ0NTkuc3ZnIjtpOjU5O3M6OToiYXZ0NjAuc3ZnIjt9'),
('svgcache1', 'a:23:{i:0;a:3:{i:0;i:100;i:1;s:1:\"4\";i:2;s:12:\"Nov 04 12:--\";}i:1;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 04 13:--\";}i:2;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 04 14:--\";}i:3;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 04 15:--\";}i:4;a:3:{i:0;i:50;i:1;s:1:\"2\";i:2;s:12:\"Nov 04 16:--\";}i:5;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 05 09:--\";}i:6;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 05 12:--\";}i:7;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 05 13:--\";}i:8;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 08 06:--\";}i:9;a:3:{i:0;i:50;i:1;s:1:\"2\";i:2;s:12:\"Nov 08 07:--\";}i:10;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 08 08:--\";}i:11;a:3:{i:0;i:50;i:1;s:1:\"2\";i:2;s:12:\"Nov 09 06:--\";}i:12;a:3:{i:0;i:50;i:1;s:1:\"2\";i:2;s:12:\"Nov 09 07:--\";}i:13;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 09 08:--\";}i:14;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 10 16:--\";}i:15;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 11 06:--\";}i:16;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 11 07:--\";}i:17;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 11 08:--\";}i:18;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 11 09:--\";}i:19;a:3:{i:0;i:50;i:1;s:1:\"2\";i:2;s:12:\"Nov 11 12:--\";}i:20;a:3:{i:0;i:75;i:1;s:1:\"3\";i:2;s:12:\"Nov 11 13:--\";}i:21;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 11 14:--\";}i:22;a:3:{i:0;i:25;i:1;s:1:\"1\";i:2;s:12:\"Nov 12 11:--\";}}'),
('svgcache2', 'a:7:{i:0;a:3:{i:0;i:100;i:1;s:1:\"7\";i:2;s:12:\"      Nov 04\";}i:1;a:3:{i:0;i:71;i:1;s:1:\"5\";i:2;s:12:\"      Nov 05\";}i:2;a:3:{i:0;i:71;i:1;s:1:\"5\";i:2;s:12:\"      Nov 08\";}i:3;a:3:{i:0;i:57;i:1;s:1:\"4\";i:2;s:12:\"      Nov 09\";}i:4;a:3:{i:0;i:42;i:1;s:1:\"3\";i:2;s:12:\"      Nov 10\";}i:5;a:3:{i:0;i:100;i:1;s:1:\"7\";i:2;s:12:\"      Nov 11\";}i:6;a:3:{i:0;i:14;i:1;s:1:\"1\";i:2;s:12:\"      Nov 12\";}}'),
('svgcache3', 'a:1:{i:0;a:3:{i:0;i:100;i:1;s:2:\"17\";i:2;s:12:\"         Nov\";}}'),
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
-- Estrutura da tabela `blabax_settings`
--

CREATE TABLE `blabax_settings` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_settings`
--

INSERT INTO `blabax_settings` (`id`, `value`) VALUES
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
('userperhour', '5'),
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
('svgtstamp', '1636715530'),
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
('usercontrol', '0'),
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
('reference', '1'),
('bothrefnovality', '0'),
('eduTechIsTyping', '1'),
('eduTechIsTypingTimer', '1000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_social`
--

CREATE TABLE `blabax_social` (
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
-- Estrutura da tabela `blabax_stimoji`
--

CREATE TABLE `blabax_stimoji` (
  `id` int(11) NOT NULL,
  `filename` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keytags` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_style`
--

CREATE TABLE `blabax_style` (
  `id` int(11) NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_style`
--

INSERT INTO `blabax_style` (`id`, `value`) VALUES
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
-- Estrutura da tabela `blabax_ufake`
--

CREATE TABLE `blabax_ufake` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `hour_begin` smallint(6) NOT NULL,
  `hour_end` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_users`
--

CREATE TABLE `blabax_users` (
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
-- Extraindo dados da tabela `blabax_users`
--

INSERT INTO `blabax_users` (`id`, `ugroup`, `name`, `password`, `email`, `salt`, `ipaddr`, `question`, `answer`, `timestamp`, `quarantine`) VALUES
(1, 1, 'admin', '9abd58ed2a7ab4fb8193b1612db15ce42ed0859f2203686e49512b404d9f7770', 'webadmin@edutech.uni-saarland.de', 'A3nqgwn57AUermoxIdyE', '134.96.198.206', 'sports?', '49cf28689c1adbb41818de65da4703c7b65656fe4df7df4b68f0ce65428f500c', 1600157455, 0),
(2, 1, 'Guest', '', '', 'sGLQiThY84WQAteJltwR', '95.89.26.112', '', '', 1587733871, 0),
(5, 1, 'Versuchsleitung2', '6148f399d1338e565ee47c531070b531f5b4bf0d94a5630127d35eac9e02fb7c', 'm.rejon@edutech.uni-saarland.de', 'wGqa5FWpXw7AWh9q5YSW', '134.96.123.173', 'edu', 'd2125ee1706ff5ce6335b371fb61db4b656435e99d339f8be83233f8c75ece77', 1597998848, 0),
(4, 1, 'Armin', '50c81f6582199b606e9913ed80a1a75e42111706d8d633b160982aea69a93919', 'a.weinberger@mx.uni-saarland.de', '0Er4a5qc60Bn5Q0TSBlY', '87.145.165.100', 'Name of first cat', '55fb2af65b29803d896396aa4b73365d6968699383839ed7f3f115e2be367968', 1587791586, 0),
(44, 1, 'Barreiro', 'e5c546167f5dfe49a4539c7e7b17d9e68778cbda4e48519b7cf794a4ba73b775', 'silke@uibel.ch', 'cj25yEnuB89tjdreBw2O', '137.59.221.25', 'jj', '1fc501b1e28b630accfcd482a49488592a75d8c1134a924f928a8b5703fb6aaa', 1624375786, 0),
(9, 1, 'Bakhtiaicp', '', '', 'B6kQwUAhfURKiU2DpRhZ', '134.96.198.206', '', '', 1600155804, 0),
(11, 1, 'paan001', '9f4c8c28eda373ce76bc9f3c16edda0bf36612e7e97b44e25b430711c9ac921b', 'paloma.goncalves@uni-saarland.de', 'XV28ssIJoQqOJ2uWAgds', '95.91.202.204', 'How many finger do I have?', 'ad3e3784b17755b3225063f9baa6f97fb06d9ae564c244ff069e323cdeae262f', 1603899562, 0),
(12, 1, 'Versuchsleitung1', '404f69c895cecab68541fc578d5484a680ed72865b427a9a377b2a9408b1849d', 's8nikuko@stud.uni-saarland.de', 'UT3PoFFkrPWGw3Oboq5f', '95.88.147.29', 'University', 'fa529125990a677fe709717a693068d2d36a3e9dab35d27b15b9295fa2c9c46b', 1607914233, 0),
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
(50, 1, 'Almada', '0d9430432461971641c1b201fdfa52be19247b714998c0d1e2499cc5a61de767', 'lenawiethaus@web.de', 'BnEyZtb4OKBFfyDdFwYk', '95.90.169.169', 'f', '2996ec1560441dd1e8e82a18b7ccaa3400bf918b21824d7cff076cbc55961785', 1625569695, 0),
(51, 1, 'Aveiro', '873f7422e07e552c2f769c1344ba50dc2268f0e9661568b5d4526d561b9a0c89', 'chsc00005@stud.uni-saarland.de', 'OS4QECBIVA2Q8VdBqcLE', '95.90.169.169', 't', '5d0ef557083efaf4a7625f0f6c572c335a2d8ebd1933be29c810cc889cb3252a', 1625569729, 0),
(52, 1, 'Bremerhaven', '486540f9118eae49089d869d6ed9a7c00c5fbe798d5e439c260f03b2af3cc00a', 'miriam.marx3@gmail.com', '8BvZu1FZ4ie3RXtpXHcL', '95.90.169.169', 'f', '96c9ad612b292b3e2f788759f7fcfaca818897d23681518ed5e114355c421dbf', 1625569759, 0),
(53, 1, 'Sonora', 'bf09f95627b3dcff4ea483c3464eca536240485a016cef06b8aed56f92460adf', 'chrisi.augustin@web.de', 'NMQw8KlhdN4wi5qZKVnx', '134.96.204.2', 'q', '74022d469e888dac32e98c74e74095e73282a8d4e627d5f9aa678d669bf2f3e9', 1635174090, 0),
(54, 1, 'Lehrte', 'f903eac0fe3766cf97abe328f4a0bb3f74a6f53893e9ad0c8855da7fa8a06b71', 'michiarnold97@gmail.com', 'dsvxnHsl38rRrYyrJaMT', '134.96.204.2', 'q', '40b88612640864ad3f026320b629850268e72f1fb1857f01bfbfa38b8bf87b96', 1635174127, 0),
(55, 1, 'Quetta', '5b661bb107bded64daee52f3ff3ddc51eee3ab1c05eed8016c71a7fad009152f', 'leonborngaesser@gmx.de', 'lAQKG12zHP8wheImlTne', '134.96.204.2', 'q', '1b0b6147f5ea966dc32de90096a312f7fcfe360561b23a4cdba33cf008db9b94', 1635174163, 0),
(56, 1, 'Mafra', 'bbad61669f03f5621cd8fa0537d24af8c7e43bcd67309fb7edccc361c37682ee', 'alsc00007@stud.uni-saarland.de', 'UUa6k0wLbkjm3KvUnNgX', '134.96.204.2', 'q', '4b9e7381ffb16b3404a71dcf13c1440eb4b2bdfe916e02bfebd06f96c40ced92', 1635174197, 0),
(57, 1, 'Khanewal', '22f6b6e2ca33e14a248aacd39c43dfd4ccfc773b7f7912d4d1ed05d80cbcb5b1', 'jahu00001@stud.uni-saarland.de', 'Lf70Gp7SfZLXZ4pujq5E', '134.96.204.2', 'q', '555a206639a6e1f9a2d5f4bf0ee103f89c6d84c94e16d068728681d3ac6fb9ee', 1635174245, 0),
(58, 1, 'Cancun', '92c9ee5436b46d15117b5e89003a3c57b8cac5a112876e951d9fa4e6096182dd', 'chiaraweber01@gmail.com', 'vW7K163D8T5s4kBqFV9t', '134.96.199.49', 'q', '2b06ef2aff34e9d65d48a120108157cdfcbc588a1fd6ecf251ab3bc159cdca6c', 1635410407, 0),
(59, 1, 'Celle', '8592b543734c7e2619d56e8731e6564cb72913361322cafd92a18a67a681c85b', 'cadu1007@web.de', 'fBWJDbEw7JkOwTVuv2Uk', '134.96.199.49', 'q', '91bc5e106bf41efe47ad82739bb0d04b6384a98d859eb8f08d9d30270cf30d76', 1635410444, 0),
(60, 1, 'Odivelas', '347b914d398f0859b6e9d86b335ceb7e4a2a5fa5418b160e4fd4f622c5e3a69e', 'janabissbort@gmail.com', 'EEw89kXODsbkDULbJboG', '95.90.168.80', '1q', 'df2f708cf001eab665b59b9f53908b0fa748845ef9ca4a2fca5d571415260199', 1635495901, 0),
(61, 1, 'Shikarpur', '8e7560edd80e03405f0f1d29ea65a6c86329b414b3a22c431f06df3832316a18', 'hoffmann.meike25@gmail.com', 'bU2PoFeGJrLMNBqp4hmb', '95.90.168.80', '1', 'a7e73b550d34412da6fba59acf55189bb904b649d8593bf7231e63a137942873', 1635495933, 0),
(62, 1, 'Loures', '3e193e323ad6a2db3c708cec4c5782cf5028aab1d93f2b4309da59554e4ab4fc', 'eren.asan@gmx.de', 'ALvzQgFvMONvYev34yiU', '95.90.168.80', 'q', '16b63d5f8cce2bbedb87581719387988c1936213364fc04281eeda9cec871e04', 1635496120, 0),
(63, 1, 'Paredes', '67e3b16aeb0803b530ac305761f0f3d23af8d46f7e1dbd7a28d5b2948d0093e9', 'parsazanganeh2001@gmail.com', '7TA3fI1ozHtukp9hdXar', '95.90.168.80', '1', '94dfc7870a8bb50a1328b8dc1f5583998b5a6bc92ebaad8347e87d7580811c7e', 1635496143, 0),
(64, 1, 'Catorce', 'bebb3193847a40b49209211247d726cde50f6579137d46404ae9fe3ca037e28e', 'elena@wonners.de', 'gGIVjdVfZ3t8bAaEQdwO', '95.90.168.80', 'q', 'ca728267263044314eb02db4079ce68a58845ac6f22bb527af3d0615f6628d26', 1635503206, 0),
(65, 1, 'Penafiel', 'd69703d8ce1830b42f265e2a70e13b53e4c21a77ea4c2f0d808fff2244327a20', 'laec00001@teams.uni-saarland.de', 'jWjWdRdi7kA5fq4pQjck', '95.90.168.80', 'q', 'f1d72832b46ba8cf6ef209864022f28163b9bb29ed00abda2d9a32cf2e03f72f', 1635503251, 0),
(66, 1, 'Viseu', '08ff2053c39a05ba2b4f3a90c094bcfc2954770c88f26db5518398eed1d37bb8', 's8suprak@stud.uni-saarland.de', 'gPexMLl4o278a32Rc3wV', '95.90.168.80', 'q', 'b837e5c18977cfbdec9f7e7320ec6a102c9f9acc0506130746e08d65ea792043', 1635503282, 0),
(67, 1, 'Leipzig', '9d207b68e011d9a821ffd33b34910c32b882982037cd22d6ec8f0b622e5e44fa', 'mafu00001@stud.uni-saarland.de', '7gV1DwKlUgHSfEEt2QQs', '95.90.168.80', 'q', '8451e009deab0f31f28a812d4efbd729317c521343cb0f683efa3c50590ec263', 1635503318, 0),
(68, 1, 'Bahalpur', '8c3ae68dca08af8a15ee16ac9f474b967284b8282565554e760fd0a56f55c235', 'lara.cre.1403@gmail.com', 'Cxo5wdIzU0uLfbwzZ5lx', '95.90.168.80', 'q', 'ba36a7eeb29250638ab4b25c0eceb452524fa836d13eeaf9151818950e94f78f', 1635503506, 0),
(69, 1, 'Reynosa', 'cdb75eb2394ba93aa9eb58cfb6dd6b205dab8c6e21476e15e90c238b75a73f5f', 'miriam.link@gmx.net', 'x0HE9fNpU43IYZPKL4xQ', '134.96.123.182', '1', '5aa51c28af1a641f89a938032e449d3ec881e91c9e3263e62b4ece3008e9f08c', 1635854602, 0),
(70, 1, 'Goettingen', 'cdf361df2053d0b183679748fadc3e16cea7bd071f3f7370cdb3b55ce550c217', 'kimberlyschwarz1@gmx.net', '9qNKicnaD1nsSgvplJjI', '134.96.123.182', '11', '715a24c3f9ac69c44e0c87121de709c10b45b555b24246b179695c8b57f80c10', 1635854663, 0),
(71, 1, 'Cuxhaven', 'fb3163533dc4c4c088f7569309cf2a45bc01fd4f13e5aa48d0421de225ffeb83', 'mahu00003@stud.uni-saarland.de', 'GR5kVKBdHHLMRK24dKU2', '134.96.123.182', 'q', '61dbfec74d978a82f9e698183b33d978a75ea3813e05c90470261d39eb4f0e69', 1635854695, 0),
(72, 1, 'Dudweiler', '68aa3d3140fdb20b6d46fffe4f171f96a4882285e236f073aca7f04f74b0bb03', 'tohe00002@stud.uni-saarland.de', 'PXKp5K2co4yhWBLi6SMe', '134.96.123.182', 'q', '10731ea171cf23f5788aa433e0074b2420a32d5321e6354a157222470d038c95', 1635854738, 0),
(73, 1, 'Halle', '7f3312ca683442b12f84f644d995866b67bc8812ce4e9870b557738ed48595cf', 'anka00003@stud.uni-saarland.de', 'q2xDoS5lQ3gi0vhyZzFI', '134.96.123.182', 'q', 'b52efc5acd396f63e769401334e756333866792cd8d7307d442bea28c31750d3', 1635854779, 0),
(74, 1, 'moita', '3e71225a03e91b0172a83850ad560bc44051763f9bd82e191be15f035be9dd47', 'johannajoline@yahoo.de', 'YZqKsnqWdBF6vUWCYztg', '95.90.168.80', 'q', 'c4ff5287d700104dbadbcf448d61a1cb2b1a490a8dfac603a378e2a618da26bb', 1635872428, 0),
(75, 1, 'Berlin', 'e430c0874b2f13d3e41581518560b50b84ba238ee9b83a64dd011938045c1c90', 'lequ00001@stud.uni-saarland.', 'B1qP2yBQzXf1nroPSl18', '188.194.232.41', 'Edutech', '26cfeed5694fd1d1ed73a401d229b4938f97dcd4fdb6aaaada0acb7740ef6f33', 1635959745, 0),
(76, 1, 'Versuchsleitung4', '92cd6a08f86d05a0403a058f222cdd55f213feac0992d384b813dee8df5dedbf', 'elba00003@uni-saarland.de', 'qc9gJSeMaG8VjTOUgpFk', '188.194.232.41', 'edutech', '610e52632c44cc8940acf0deb5ab50a00c6464bdb32fc10f430320527e8c5040', 1636104152, 0),
(77, 1, 'Stuttgart', '26ebb43f1f7bbbf9f59e29c7ee3af4567e8e864394c15761878193398fbe02a1', 'mawe00008@stud.uni-saarland.de', 'BTFwiikM6p9iEjPFI9iU', '188.194.232.41', 'edutech', 'c6776893188530d56608b35d033f05cc82ec42a60bcf1222a2c71b3c13a3c28e', 1636116233, 0),
(78, 1, 'Chetumal', '873148ac820b4e7fdaee356ff54d516296c05b5f8f9127cfa31867620a479b2b', 'robe00003@stud.uni-saarland.de', 'Ql7Q7HS58ORJFsVmMzAr', '188.194.232.41', 'edutech', '14d1fafc4c392fd9e489827f764620ce6075da331c386e3980e7e2fda4868784', 1636116326, 0),
(79, 1, 'Monclova', 'dbad701e5c60c6c108d8849f3b64fb12a54db723016de06bec98a05e3dcc4733', 'aumo00001@stud.uni-saarland.de', '1iCmixNWOT1dokOtFgEb', '188.194.232.41', 'edutech', 'c51b6e4786ecf312d1a6602a7290e84d02399bef5d2a8e1fe14a87a64c347fd2', 1636116415, 0),
(80, 1, 'Islamabad', '3313f6c84005ebc312ec586496a6a22ec2cb87504206d6c6ed5ad899c0ca3c2f', 'tim.b.1@gmx.de', 'tTx2R4HfLdevbGkfqJfC', '188.194.232.41', 'edutech', 'e72b48e865bdd312815360d3abc215098fbff634fdf7bd70caaefae976757d6a', 1636116472, 0),
(81, 1, 'Rawalpindi', '2a2f3ff71d72a1a335a449f2b3f9782fe35c61309382fe30efee7d07d2b6f736', 'nala00002@stud.uni-saarland.de', '5kryVENvvLaWl06xBJBH', '86.103.158.178', 'edutech', 'ade4545aa522ce623589914c7be2b994e0a2ce4d21141a30d6104d9e7b0b6485', 1636635125, 0),
(82, 1, 'Faislabad', '66e9e53563520a8c68ca35ef8d041b67fc3967cfd27117a92e6974f4904e0f64', 'judith.adam99@gmx.de', 'hYTt4g6TE4KGFvSrzhbP', '86.103.158.178', 'edutech', '65e6d3581a0c45a25f4e6201bf7fe85374edae1894970472704afb6bf0962b76', 1636635195, 0),
(83, 1, 'Loule', 'fee8a8b3b1c6d034c7088e6f30aea616abb1bf5a7e33ca8f2bffef88965a90ed', 'mathias.aantheck@gmail.com', 'x8Qf0nBVrpF2agMJ9dPT', '86.103.158.178', 'edutech', '7fd420d0a7b4d079a647db9431743d76431c2f299735da866933d3c58757583e', 1636635321, 0),
(84, 1, 'Tulum', '1a40c79d2a8c328b5f08a560badb8e109ecb90d7ef3c532a96717337bbde93e4', 'julie.klein2003@gmail.com', 'COu5MIfoKPP0OPLt1tpR', '86.103.158.178', 'edutech', 'e1a66ca0a0b993e5e34c5b3ee147723830c13fd7de418efdca89c4401801a9be', 1636635384, 0),
(85, 1, 'Durango', 'acfe3e1fd927be424dc5c73b196f4fbdc08a1fe0589ac129ac8fac4499dd9716', 's8liluet@stud.uni-saarland.de', '2EeOxx1mrnlxbpNdWUPN', '86.103.158.178', 'edutech', 'b393886568c45aeea87e1c69331dc0715eff62e080e32722d9d2473940515d9f', 1636635464, 0),
(86, 1, 'Abbotabad', '6f8ecd20e27a5446cfddd19f06381825fc359179cdd840c3a1db86bfbf5827b2', 'S8snmolt@stud.uni-saarland.de', 'BO6G46c48MDEP6ecsD5A', '145.254.166.66', 'edutech', '0ff46c8abbec55760e0865da804a60e3fabe3747b8bd409924449e9975fbae4c', 1637155222, 0),
(87, 1, 'Tijuana', 'ad369049957690fe13ad968b2fba501a634b9ba638a7d8d3009dd645773449a8', 'anika_augustin@gmx.de', 'gGmhNf5oWcCtJ33PGd7y', '188.194.234.39', 'edutech', '5dad2b59e305035d369a3e0da7a0066fbfe9e769273adde09c0bc7b6e3af8a7f', 1637572008, 0),
(88, 1, 'Sahiwal', '207f297b4228e747704b6eef207f2807895ee2aa877d1fe91fe51e3912fc44e0', 's8nikuko@teams.uni-saarland.de', 'rp2z0hSme8JYYcV1BIhI', '188.194.234.39', 'edutech', 'f8e034e94b5c487cd97df5ae8af24007f6c7bb79045f06680b4d33851d7bf268', 1637576385, 0),
(89, 1, 'Lahore', 'a6e6365a358f75bb719d2727408fa6e5e8b7c3d18d685abf08663c068a1f2af6', 'lesc00010@stud.uni-saarland.de', 'qzwJtsqTZ3aOBbXBkXdA', '188.194.234.39', 'edutech', '2f53a505aced0402cada7adc431a693320bf40f870f1f0fa2b9789ff6a0e7614', 1637581611, 0),
(90, 1, 'Chiniot', 'cbf8ad922c888901e8bb9fd01c31ebbfe9801dc4e89c725cb74ed8583f3abd25', 'liha00001@stud.uni-saarland.de', 'eaIgPmBTDfYOU0dhm2S1', '188.194.234.39', 'edutech', '34bb14f49dde2f7c92e6d9ae01a0181cef58dabca929ca63e7dba9043d5401d9', 1637581659, 0),
(91, 1, 'Queluz', 'fb62110ec305d0c687cc124956fc693f1087295abbc9d3a919cafe7241633a28', 'perschthomas.2002@gmail.com', 'lwg7CnyteYJI5XlRSjgN', '95.90.170.234', 'edutech', 'e6b1312d1adc85671b5007cad673f4dda1a525926c3f06991af7d9e56d3bc17f', 1637733162, 0),
(92, 1, 'Xalapa', '779305b5bfa41f8c246549337d89de5eab1c6a3966eca072752278eecea82571', 'sarah.vialle00@googlemail.com', 'Bs2xD0gSknnLXulQLseR', '95.90.170.234', 'edutech', 'b55935bf9c1d869c7eb74530751fe19646462a342f2dc95a9d0b59dbd9b81de2', 1637733288, 0),
(93, 1, 'Camargo', 'e77ae384eba36d08ff68d678582f775a0dc99d4f719942f0a4ffa458c4e6e034', 'lega00002@stud.uni-saarland.de', 'T9aWFp6suzMabs8BzxLi', '95.90.170.234', 'edutech', '8ad67313a1b22d933e64efb757845f97773df158264e83d12266a052f2f7eaa8', 1637733380, 0),
(94, 1, 'Vehari', 'dff8900fe772dd2b24f76b4c75223b8608ecb07e5800a599db8b7063104811f3', 'anishsingh985@gmail.com', 'NyMJty7EU05smT2KDWbY', '37.4.237.74', 'Edutech', 'f1869dc30ad25c10f695c923f0f35cd3c5b8aa39e2268fc38404eb1c27a3b0c5', 1638514387, 0),
(95, 1, 'Hamburg', '902472c70950c6f6c11993addfd1d6abdf1d918deb1c5e3015079afb3fcfd475', 'hofa00001@stud.uni-saarland.de', 'ov5BquU8d0R0xwvbB1rx', '37.4.237.74', 'Edutech', '003c0d1ca49c29187ed545eec404b4ce56fc7e008d617fdf3845a989f9ee8023', 1638514444, 0),
(96, 1, 'Fafe', 'c91e46e5c33bdd4042f42a046af53f5955377581c0692f51a3f3f763b24eadd4', 'e.poeppelmann@hbksaar.de', 'ysYL7UOZax57QbXP1T2w', '46.83.99.48', 'edutech', 'c450e4ce50e0d716efd2f66d7776ef0a5c223a992074ef55279d10c5cfba7bf4', 1638539981, 0),
(97, 1, 'Hattstedt', '839c8bf49d13701f193e6d7c06a0cd77119a26a728cfb19a38ecbd44e9333006', 'ango00004@stud.uni-saarland.de', '44PO7jyg4nyMJVlHS2Zq', '46.83.99.48', 'edutech', '3d692d1031e56c7526666291658448a65a26fe76424760cc6ac9af2b45004c90', 1638540163, 0),
(98, 1, 'Hannover', 'e2760abc08f93f67181cd136d6200f73637aa20ca2a29ff8b5d3631ec5251b7e', 'lara.hoffknecht@googlemail.com', 'OWfENScpxXRwmPraau2Y', '46.83.99.48', 'edutech', '845b09bb5e29fc0f0b867f87ceffe4ff4457e362ce5344aede40e4bb4b6f54b1', 1638548095, 0),
(99, 1, 'Funchal', 'b9069207332ed06ce5c6cd71b67ab5ff124314ea9cdf012753227ae262914abc', 's8sebalc@stud.uni-saarland.de', 'gRoga7qwHc1FA3fn3Zd5', '46.83.99.48', 'edutech', '2e58804dac7c9e5466a7f062c67126b8d886d645b13b60921c371f9e72930cd9', 1638548154, 0),
(100, 1, 'Magdeburg', 'd68f7f86fc2483b261b9cad066073aff4248f8f0fea2d68c69ac58262d0bfa39', 'carinamueller285@web.de', 'avZKaQMbvGKuFjAj4j2h', '46.83.99.48', 'edutech', '2ab0476a93eab34e2390c1476defaec87ee05599348a35b32faebb7ae83d8f05', 1638548205, 0),
(101, 1, 'Holbox', 'a25cd65bcbb2701a48af5fb5b6fc7ded3edc88ea6b42fe218856e8ee23a30c34', 'jubo00003@stud.uni-saarland.de', 'xUqjqrwsctqjBl3zJKXz', '46.83.99.48', 'edutech', 'd184aa8bdecf3331ef9bdeac692d38608d6dbe58bc32885862b872bc88ff6bc3', 1638548260, 0),
(102, 1, 'Silao', 'c9821b46930fccb767f56e6c4d398e29e1ef5fa350f2f19026f3d9926a64088f', 'mareike.silber@live.de', 'yLpcTgrfJvNP4aB5Jdry', '46.83.99.48', 'edutech', '609fe1c6bafe06588bb3a7d51cd955ba2b8684dfab1d1c6f9fcc3d74fabc27d7', 1638548294, 0),
(103, 1, 'Bacalar', 'c7ff34d52246b588fbc9045a77abfdf34d4459d9e167386adca9d26151233a90', 's9anziew@stud.uni-saarland.de', 'j3bi5GqHRsffDDLp69Uf', '95.90.200.99', 'edutech', '53e20ee3fd85a2b7219e31b81c4e32dc5ac8fbb4360c2acd7e32f71f3eb067fb', 1638810568, 0),
(104, 1, 'Lindau', '894b1fa642fa341ce75fbe90d92319bc7a317af72bb933870e636d589245886d', 'giulia_go90@yahoo.de', 'pS28KLHtJEHYH7tGzm7D', '95.90.200.99', 'edutech', 'f08726433c100a3ae22c4f8d17261e1cb6c3335b67e3b40a2c831c6a20aeed13', 1638810617, 0),
(105, 1, 'Braga', 'd25810838f4dee6c9b0bf4efa2a3619118471c85d491dfd9d5614d8ec17da795', 'samuel.aschenbrenner.luque@gmail.com', 'vgpQOtbYfgjCegTIURBl', '95.90.200.99', 'edutech', '9aa7ad5ef850d32431211274a5ffe7125acef306e9454141023ee170d3bf8f27', 1638810657, 0),
(106, 1, 'Gujranwarla', '447255a9d56012986716cc2bc4c71477eff965711c5609d1780ad8e0c5d56e39', 'luisa.k.welsch@gmail.com', '4stnXrqaew1MFseUnV0o', '95.90.200.99', 'edutech', 'a1111faa378bc801102cc8053f7a4f1ea814d2341bf3029883cf49379bef9aa3', 1638810706, 0),
(107, 1, 'Portimao', 'c2260913b542c795384e34fe6aed0a06e4bbb790441e8aad49bfd7b877265e71', 'isabelzugo2001@gmail.com', 'cTLOxvEYrpy8y5YM3IPt', '95.90.200.99', 'edutech', 'c453dff87d8b5f962307ea37218c83915fabe4413d0e0a6ab617caab84a61be3', 1638810744, 0),
(108, 1, 'Landshut', 'd3fc7906fd5e5cacdbf01da7172e8703717922b643d104415955abe194335c71', 'katarinavzivkovic@yahoo.de', 'hdokBtM0bYimI9bo9x6G', '95.90.170.209', 'Edutech', '9547442a0f871a035996039ae4b57314d9453581d5a8c3cb104f3be5a157ba14', 1638893188, 0),
(109, 1, 'Mansehra', '5bc8256754512a17be1055e472abf85474b75e880e22ae99561eceefc6d3a681', 'ana99glez@gmail.com', 'mbMc2S95ViJai9dKHFbt', '91.37.110.240', 'edutech123', 'e1971984cdba89b0f3f72078baef0236de9fa92732ecdfab3dc7e338b8feb9b8', 1641458255, 0),
(110, 1, 'Zapopan', 'beeea3c6f96f79a095fba76f8fb1fec315d245a09f9bbfc88d28b26ec872ba3f', 'marie.fjr91@gmail.com', 'YU4Ijmkz7daHBitz5KiI', '91.37.110.240', 'edutech123', 'ae4859596e45501c34217a5036b411c33708383d4f4a34114368729cec4681fe', 1641458318, 0),
(111, 1, 'Palmela', '981d57adfedd92c147db9742a74e2566c1a3e5dc6cd41db6a80df4b0d2c848ea', 's8paburk@stud.uni-saarland.de', 'UFoquRO2U0ugEkRm7AtX', '91.37.110.240', 'edutech123', '1d19b6fcf4f4fee8083b325ba946fd51cc31c1d7d570bc5878d18f0bf1117aab', 1641458386, 0),
(112, 1, 'Pombal', '8f06a26c13c7522a537bd835ee32199e9404cab9eced768754ba855c0fc86713', 'emma.schoeck@gmail.com', 'OQSiRTU7zrMwm79S8bPM', '91.37.110.240', 'edutech123', '75e071bdbd5b34344519875e49c61e2a0dae4cd270c63a12b13a5522641fac5f', 1641458432, 0),
(113, 1, 'Versuchsleitung3', 'f154b6069ff586bef76524bf53df6b1f5b0b33906cc635429caac70414536e7e', 'lesc00008@uni-saarland.de', '6iYVi1N1eT0hy6MtfbqS', '95.90.200.108', 'edutech123456', 'e4fde44a6ce8bc4080ec23b5cfae0b948b296844bdc333171e452e54a5323573', 1641805992, 0),
(114, 1, 'Swabi', '235e863f8413877c7025c600a699ce6240e634929b977f875040af3f1adf702c', 'melaniejacobs@online.de', '7WuZ8XBjaJBwGU8PA8vi', '95.90.200.108', 'edutech123', '5b8d1c2ef8325eaba09fd652cdce7906133993abd9c8006d09368de295c24be7', 1642350264, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blabax_uxtra`
--

CREATE TABLE `blabax_uxtra` (
  `id` int(11) NOT NULL,
  `image` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motto` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(6) NOT NULL,
  `location` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `blabax_uxtra`
--

INSERT INTO `blabax_uxtra` (`id`, `image`, `motto`, `age`, `location`, `gender`) VALUES
(5, '', '', 0, '', ''),
(21, 'avatars/avt41.svg', '', 0, '', ''),
(20, 'avatars/avt58.svg', '', 0, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `blabax_fmedia`
--
ALTER TABLE `blabax_fmedia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_gbox`
--
ALTER TABLE `blabax_gbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_gifs`
--
ALTER TABLE `blabax_gifs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_groups`
--
ALTER TABLE `blabax_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_grules`
--
ALTER TABLE `blabax_grules`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_jbox`
--
ALTER TABLE `blabax_jbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_messages`
--
ALTER TABLE `blabax_messages`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_messages1`
--
ALTER TABLE `blabax_messages1`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_nbox`
--
ALTER TABLE `blabax_nbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_news`
--
ALTER TABLE `blabax_news`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_paintings`
--
ALTER TABLE `blabax_paintings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_qcats`
--
ALTER TABLE `blabax_qcats`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_qdata`
--
ALTER TABLE `blabax_qdata`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_rbox`
--
ALTER TABLE `blabax_rbox`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_rooms`
--
ALTER TABLE `blabax_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blabax_stimoji`
--
ALTER TABLE `blabax_stimoji`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `blabax_stimoji` ADD FULLTEXT KEY `keytags` (`keytags`);

--
-- Índices para tabela `blabax_users`
--
ALTER TABLE `blabax_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `blabax_fmedia`
--
ALTER TABLE `blabax_fmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `blabax_gbox`
--
ALTER TABLE `blabax_gbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_gifs`
--
ALTER TABLE `blabax_gifs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_groups`
--
ALTER TABLE `blabax_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `blabax_grules`
--
ALTER TABLE `blabax_grules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_jbox`
--
ALTER TABLE `blabax_jbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_messages`
--
ALTER TABLE `blabax_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1785;

--
-- AUTO_INCREMENT de tabela `blabax_messages1`
--
ALTER TABLE `blabax_messages1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `blabax_nbox`
--
ALTER TABLE `blabax_nbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_news`
--
ALTER TABLE `blabax_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_paintings`
--
ALTER TABLE `blabax_paintings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `blabax_qcats`
--
ALTER TABLE `blabax_qcats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `blabax_qdata`
--
ALTER TABLE `blabax_qdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `blabax_rbox`
--
ALTER TABLE `blabax_rbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_rooms`
--
ALTER TABLE `blabax_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `blabax_stimoji`
--
ALTER TABLE `blabax_stimoji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blabax_users`
--
ALTER TABLE `blabax_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
