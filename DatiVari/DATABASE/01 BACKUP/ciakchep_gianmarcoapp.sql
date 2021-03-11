-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mar 10, 2021 alle 05:03
-- Versione del server: 10.3.27-MariaDB-cll-lve
-- Versione PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciakchep_gianmarcoapp`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `classiche`
--

CREATE TABLE `classiche` (
  `id` int(11) NOT NULL,
  `nome` varchar(500) NOT NULL,
  `descrizione` varchar(500) NOT NULL,
  `prezzo` double(99,9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `classiche`
--

INSERT INTO `classiche` (`id`, `nome`, `descrizione`, `prezzo`) VALUES
(1, 'Rossa', 'Pomodoro, Olio e Origano', 3.000000000),
(2, 'Margherita', 'pommozz', 2.500000000);

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `id` int(255) NOT NULL,
  `cap` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `data` varchar(10) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `psw` varchar(600) NOT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`id`, `cap`, `nome`, `cognome`, `indirizzo`, `data`, `tel`, `email`, `psw`, `score`) VALUES
(99421, 01234, 'hello', 'world', 'asdfghjk', '1/8/8', '123456789', 'hello@hello.it', '2791885b0d925584ec17996fa052736efd6464455686f3575cff78256666f622b63afc5b0a5dd061ed38906e40660dd4f339624ad29e2b16d0711cd4db0f08cd', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `creaPizza`
--

CREATE TABLE `creaPizza` (
  `id` int(11) NOT NULL,
  `pizza` varchar(500) NOT NULL,
  `ingredienti` varchar(500) DEFAULT NULL,
  `prezzo` double(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `game`
--

CREATE TABLE `game` (
  `id` int(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `game`
--

INSERT INTO `game` (`id`, `nome`, `cognome`, `time`) VALUES
(0, '', '', '18-09-2020 03:57:35'),
(40043, 'Gianmarco ', 'De Grassi', '05-09-2020 18:38:29'),
(53205, 'Matteo', 'Salvini', '26-08-2020 03:53:21'),
(66793, 'Alfredo', 'Librandi', '05-09-2020 18:37:28');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordini`
--

CREATE TABLE `ordini` (
  `id` int(11) NOT NULL,
  `cap` int(5) UNSIGNED ZEROFILL NOT NULL,
  `descrizione` varchar(500) NOT NULL,
  `buono` int(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `prezzo` double(99,9) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `quantita` varchar(255) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `id_pizzeria` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordini`
--

INSERT INTO `ordini` (`id`, `cap`, `descrizione`, `buono`, `data`, `prezzo`, `email`, `quantita`, `nome`, `cognome`, `indirizzo`, `id_pizzeria`) VALUES
(66793, 35621, 'rossa', 0, '24-11-2020 18:55:28', 3.000000000, 'prova@gmail.com', '1', NULL, NULL, NULL, NULL),
(66793, 35621, 'rossa', 0, '24-11-2020 19:06:55', 3.000000000, 'prova@gmail.com', '1', 'Alfredo', 'Librandi', 'Via dei musumeni', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordiniPremi`
--

CREATE TABLE `ordiniPremi` (
  `id` int(11) NOT NULL,
  `nome` varchar(500) DEFAULT NULL,
  `punti` int(255) DEFAULT NULL,
  `idClt` int(255) DEFAULT NULL,
  `modRitiro` varchar(500) DEFAULT NULL,
  `quantita` int(255) DEFAULT NULL,
  `cap` int(5) DEFAULT NULL,
  `descrizione` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `pizzerie`
--

CREATE TABLE `pizzerie` (
  `id` int(255) NOT NULL,
  `cap` int(5) UNSIGNED ZEROFILL NOT NULL,
  `via` varchar(255) DEFAULT NULL,
  `partitaIva` int(255) DEFAULT NULL,
  `incassi` int(255) DEFAULT NULL,
  `filiali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `titolari`
--

CREATE TABLE `titolari` (
  `id` int(255) NOT NULL,
  `cap` int(5) UNSIGNED ZEROFILL NOT NULL,
  `nome` varchar(20) NOT NULL,
  `cognome` varchar(20) NOT NULL,
  `indirizzo` varchar(50) NOT NULL,
  `data` varchar(10) NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `psw` varchar(600) NOT NULL,
  `id_pizzeria` int(255) DEFAULT NULL,
  `auth` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `titolari`
--

INSERT INTO `titolari` (`id`, `cap`, `nome`, `cognome`, `indirizzo`, `data`, `cf`, `tel`, `email`, `psw`, `id_pizzeria`, `auth`) VALUES
(1, 00013, 'Fabio', 'Sociani', '', '', NULL, '', 'ciakchepizzapp@gmail.com', 'eef93c72a9e0540c4e949752acec38e8c68f12ddf5d6c333014ce1b72f7751538008c97899bd349680cea4ff16ab32faab8d8d48a8b068e313326c5a845d1815', NULL, 'Si'),
(10100101, 01234, 'Mario', 'Rossi', '', '', NULL, '', 'ad', '22f61a6aafc0846298ed5b0a58808b411d83102a407409d85e7ce2187791a702c30985d663f01b98caa848a669393e8e0c37a422190099e3a14635b90218264f', NULL, 'No');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `classiche`
--
ALTER TABLE `classiche`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indici per le tabelle `creaPizza`
--
ALTER TABLE `creaPizza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `ordiniPremi`
--
ALTER TABLE `ordiniPremi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pizzerie`
--
ALTER TABLE `pizzerie`
  ADD PRIMARY KEY (`cap`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `titolari`
--
ALTER TABLE `titolari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `classiche`
--
ALTER TABLE `classiche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99422;

--
-- AUTO_INCREMENT per la tabella `creaPizza`
--
ALTER TABLE `creaPizza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `ordiniPremi`
--
ALTER TABLE `ordiniPremi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `pizzerie`
--
ALTER TABLE `pizzerie`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `titolari`
--
ALTER TABLE `titolari`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10100102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
