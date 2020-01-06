-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 06. Jan 2020 um 20:49
-- Server-Version: 10.4.10-MariaDB
-- PHP-Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `kundenkartei`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `id` varchar(12) NOT NULL,
  `zaehlerNr` int(8) NOT NULL,
  `knachname` varchar(100) NOT NULL,
  `vorname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telNr` varchar(20) NOT NULL,
  `Bem` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`id`, `zaehlerNr`, `knachname`, `vorname`, `email`, `telNr`, `Bem`) VALUES
('base77852214', 77852214, 'Base', 'Karl', 'kb@g.de', '47114887', NULL),
('eber11111111', 11111111, 'ebert', 'jack', 'ja@g.de', '1232312', 'AAAAAA'),
('kusc45456262', 45456262, 'Kuschel', 'Emma', 'ke@g.de', '47112271', NULL),
('meie12321232', 12321232, 'Meierhofer', 'Anton', 'ma@g.de', '47114856', NULL),
('sonn11223344', 11223344, 'Sonnenschein', 'Susi', 'sose@g.de', '47115623', NULL),
('Arnd09090909', 9090909, 'Arndt', 'Marco', 'am@g.de', '987654', 'alle i.o.'),
('Hose78945612', 78945612, 'Hose', 'Justus', 'fgh@g.de', '745122', 'k.A.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `mitarbeiter`
--

CREATE TABLE `mitarbeiter` (
  `mitarbeiterID` varchar(50) NOT NULL,
  `mNachname` varchar(50) NOT NULL,
  `mVorname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telNr` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zaehler`
--

CREATE TABLE `zaehler` (
  `zaehlerNr` int(8) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `plz` varchar(15) NOT NULL,
  `str` varchar(50) NOT NULL,
  `hNr` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `zaehler`
--

INSERT INTO `zaehler` (`zaehlerNr`, `ort`, `plz`, `str`, `hNr`) VALUES
(11111111, 'Berlin', '12689', 'Barnimstreet', 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zaehlerstaende`
--

CREATE TABLE `zaehlerstaende` (
  `zaehlerNr` int(8) NOT NULL,
  `zaehlerstand` int(255) DEFAULT NULL,
  `aeDatum` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `zaehlerstaende`
--

INSERT INTO `zaehlerstaende` (`zaehlerNr`, `zaehlerstand`, `aeDatum`) VALUES
(9090909, 1000, '2019-12-23 11:42:37'),
(11111111, 1000, '2019-12-23 11:51:58'),
(11111111, 1000, '2019-12-30 11:13:52'),
(11111111, 456, '2019-12-30 12:11:59');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `mitarbeiter`
--
ALTER TABLE `mitarbeiter`
  ADD PRIMARY KEY (`mitarbeiterID`),
  ADD UNIQUE KEY `mitarbeiterID` (`mitarbeiterID`);

--
-- Indizes für die Tabelle `zaehler`
--
ALTER TABLE `zaehler`
  ADD PRIMARY KEY (`zaehlerNr`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
