-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 19. Sep 2018 um 12:50
-- Server-Version: 5.6.35
-- PHP-Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mvc_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Digital Minimalism'),
(2, 'Productivity'),
(3, 'Mind'),
(4, 'Books and Podcasts');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_content` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `login_attempts` int(11) NOT NULL,
  `permission_id` tinyint(1) NOT NULL DEFAULT '2',
  `file_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `password`, `login_attempts`, `permission_id`, `file_id`) VALUES
(187, 'Admin123', 'Admin', 'admin@v-hos.ru', '$2y$10$Ab803qnTSQ5BseYhbrR.4e6rhlx8ejJgyzrwBhYEXU6VPdW6W3gce', 0, 1, 180),
(191, 'Martines', 'mart24', 'mart24@v-hos.ru', '$2y$10$EFj/tjID42zIH6u4n/0RwO32uNekYKBaddH.3nw42.Eh8Y871YWle', 4, 1, NULL),
(192, 'Gibn', 'Ginos', 'Ginos@v-hos.ru', '$2y$10$nUHvr/wdNblqYRjUK27.FOKnEP4DG7qcEQb5sSltiSIh0R1O2Teiu', 0, 1, NULL),
(193, 'Pepper', 'pepperoni', 'pepper@v-hos.ru', '$2y$10$h8snIfPClSfrOBnjd86g5eUflP1jtH9IYhE2W3zdGur1ODUQltnOG', 0, 3, NULL),
(194, 'New', 'User', 'new@v-hos.ru', '$2y$10$BwEhyRWZwdCHxtoKBN.1G.T2lYijxqWG0rcpG2aAc8MSGY649Sn8S', 0, 1, NULL),
(195, 'new', 'user', 'newuser@v-hos.ru', '$2y$10$G/7tj7tV0D2KiZ1jmWYREeLhjP9fS3aNX7yfXjgPWPIUD5UZ0D21S', 0, 2, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_permission`
--

CREATE TABLE `user_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user_permission`
--

INSERT INTO `user_permission` (`id`, `permission`) VALUES
(1, 'Admin'),
(2, 'Guest'),
(3, 'Editor');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT für Tabelle `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT für Tabelle `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT für Tabelle `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
