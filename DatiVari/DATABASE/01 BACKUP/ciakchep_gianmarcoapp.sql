-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Feb 18, 2021 alle 00:53
-- Versione del server: 10.3.27-MariaDB-cll-lve
-- Versione PHP: 7.3.6

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
(1, 'Rossa', 'Pomodoro, Olio e Origano', 3.000000000);

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
(99352, 00013, 'Gianmarco ', 'De Grassi', 'Via IV Novembre, 36', '29/03/2000', '3345354270', 'gianmarcodegrassi29@hotmail.com', 'a9245fd7fbeeef9342ceed98a1e4875ed26044f9da43a59be252531b3b3c4564479d28058e05751615c8617023c00f5cf3fe44a495da395149d06be7e0c73901', NULL),
(99353, 00123, 'abc', 'ABC', 'VVVVVVVVVVVVVV', '2/6/6', '34567890', 'ciao@ciao.it', '5cbedc3ca4ccffc86cb05c01fe5d3d0263b398293cc782452044477f7f16b28b1819c47f9db429a9f40b54872853defca3f589a66de93d65b7503df8a257d6ef', NULL),
(99406, 01234, 'sjnfjkvn', 'nvfjlqnfvkjfqò', 'dndnffj', '4/8/8', '5432', 'prova@gmail.com', '314c915555bf35b326a55805a052a5a30808fdfc45aae3e0c40abcf7546b6d17abd635d59ce3e47d4472a48e221301f22ee9dca85f2b56665f3bb62119649a4a', NULL),
(99413, 01234, 'Ciaone', 'Bellone', 'Via del ciaobellone,27', '16/01/1999', '34354334', 'ciaone@ciaone.it', '5cbedc3ca4ccffc86cb05c01fe5d3d0263b398293cc782452044477f7f16b28b1819c47f9db429a9f40b54872853defca3f589a66de93d65b7503df8a257d6ef', NULL),
(99414, 00034, 'fg', 'ggt', 'hgfg', '3566', '655', 'ggg', '22f91e1ec976c25882a3aa2dfc033f1ee4188b50061142389390ecbe9ce3e56208ad087a9de6296785a1021c1a0efbaa0eb8102d046d5df4c961284dc95593d7', NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99415;

--
-- AUTO_INCREMENT per la tabella `creaPizza`
--
ALTER TABLE `creaPizza`
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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
