-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Янв 23 2014 г., 14:59
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `persodb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `persokon_type`
--

CREATE TABLE IF NOT EXISTS `persokon_type` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) NOT NULL,
  `name_ru` varchar(150) DEFAULT NULL,
  `name_en` varchar(150) DEFAULT NULL,
  `img` varchar(150) NOT NULL,
  `desc_ru` varchar(255) DEFAULT NULL,
  `desc_en` varchar(255) DEFAULT NULL,
  `weight` tinyint(4) NOT NULL DEFAULT '20',
  `base_str` tinyint(2) NOT NULL DEFAULT '10',
  `base_agi` tinyint(2) NOT NULL DEFAULT '10',
  `base_vit` tinyint(2) NOT NULL DEFAULT '10',
  `base_con` tinyint(2) NOT NULL DEFAULT '10',
  `element_id_1` tinyint(2) NOT NULL,
  `element_id_2` tinyint(2) NOT NULL,
  `evolution_form` tinyint(1) NOT NULL,
  `genmod_id` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `rang`
--

CREATE TABLE IF NOT EXISTS `rang` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name_ru` varchar(150) DEFAULT NULL,
  `name_en` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vk_id` int(12) NOT NULL,
  `login` varchar(24) NOT NULL,
  `date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_act` datetime NOT NULL,
  `rang_id` tinyint(4) NOT NULL DEFAULT '1',
  `money` int(12) NOT NULL DEFAULT '3000',
  `crystal` smallint(6) NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`),
  UNIQUE KEY `vk_id` (`vk_id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
