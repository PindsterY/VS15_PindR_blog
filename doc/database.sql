-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 22, 2015 kell 07:36 p.k.
-- Serveri versioon: 5.6.26
-- PHP versioon: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `cleanblog`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `author_id`   INT(11) UNSIGNED NOT NULL,
  `author_name` VARCHAR(255)     NOT NULL
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = latin1;

--
-- Andmete tõmmistamine tabelile `authors`
--

INSERT INTO `authors` (`author_id`, `author_name`) VALUES
  (1, 'Klaabu'),
  (2, 'Sipsik');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `post_id`          INT(11) UNSIGNED NOT NULL,
  `author_id`        INT(10) UNSIGNED NOT NULL,
  `post_title`       VARCHAR(255)     NOT NULL,
  `post_description` VARCHAR(255)              DEFAULT NULL,
  `post_created`     DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_text`        TEXT             NOT NULL
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = latin1;

--
-- Andmete tõmmistamine tabelile `posts`
--

INSERT INTO `posts` (`post_id`, `author_id`, `post_title`, `post_description`, `post_created`, `post_text`) VALUES
  (1, 1, 'asd', 'asd', '2015-10-08 10:37:36', 'asdasd'''),
  (2, 2, 'boom    ', 'gwgsi   ', '2015-10-08 10:37:50', 'mison'),
  (3, 1, 'jsinje      ', 'gpowjh  ', '2015-10-08 10:38:30', 'gifrhj'),
  (4, 2, 'nojsa   ', 'bpfdjn', '2015-10-09 10:50:30', 'jgure');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `authors`
--
ALTER TABLE `authors`
ADD PRIMARY KEY (`author_id`);

--
-- Indeksid tabelile `posts`
--
ALTER TABLE `posts`
ADD PRIMARY KEY (`post_id`),
ADD KEY `author_id` (`author_id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `authors`
--
ALTER TABLE `authors`
MODIFY `author_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 3;
--
-- AUTO_INCREMENT tabelile `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 5;
--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`);

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
