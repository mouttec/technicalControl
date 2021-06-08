-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 08 juin 2021 à 20:07
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mouttec`
--

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `idAddress` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `addressStreet` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`idAddress`, `idCustomer`, `addressStreet`) VALUES
(1, 1, '1'),
(2, 1, '2'),
(3, 1, '3'),
(4, 2, '4'),
(5, 3, '5'),
(6, 4, '6'),
(7, 2, '7'),
(8, 2, '8'),
(9, 3, '9'),
(10, 4, '10');

-- --------------------------------------------------------

--
-- Structure de la table `agencies`
--

CREATE TABLE `agencies` (
  `idAgency` int(11) NOT NULL,
  `nameAgency` varchar(250) NOT NULL,
  `addressAgency` varchar(10) NOT NULL,
  `phoneAgency` varchar(20) NOT NULL,
  `mailAgency` varchar(100) NOT NULL,
  `statusAgency` varchar(255) NOT NULL,
  `dateAgency` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `agencies`
--

INSERT INTO `agencies` (`idAgency`, `nameAgency`, `addressAgency`, `phoneAgency`, `mailAgency`, `statusAgency`, `dateAgency`) VALUES
(1, 'Marseille', '10', '1234567890', 'test1@marseille.com', 'Ouvert', '2021-05-08 21:56:27'),
(2, 'Aix', '20', '0987654321', 'test2@aix.com', 'Ouvert', '2021-05-08 21:58:19'),
(3, 'test fichier', 'test', 'test', 'test', 'Ouvert', '2021-05-11 17:18:04');

-- --------------------------------------------------------

--
-- Structure de la table `bookingCalendar`
--

CREATE TABLE `bookingCalendar` (
  `idBookingCalendar` int(11) NOT NULL,
  `datebookingCalendar` date NOT NULL,
  `h1bookingCalendar` time(6) DEFAULT NULL,
  `h2bookingCalendar` time(6) DEFAULT NULL,
  `h3bookingCalendar` time(6) DEFAULT NULL,
  `h4bookingCalendar` time(6) DEFAULT NULL,
  `h5bookingCalendar` time(6) DEFAULT NULL,
  `h6bookingCalendar` time(6) DEFAULT NULL,
  `h7bookingCalendar` time(6) DEFAULT NULL,
  `h8bookingCalendar` time(6) DEFAULT NULL,
  `h9bookingCalendar` time(6) DEFAULT NULL,
  `h10bookingCalendar` time(6) DEFAULT NULL,
  `h11bookingCalendar` time(6) DEFAULT NULL,
  `h12bookingCalendar` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bookingCalendar`
--

INSERT INTO `bookingCalendar` (`idBookingCalendar`, `datebookingCalendar`, `h1bookingCalendar`, `h2bookingCalendar`, `h3bookingCalendar`, `h4bookingCalendar`, `h5bookingCalendar`, `h6bookingCalendar`, `h7bookingCalendar`, `h8bookingCalendar`, `h9bookingCalendar`, `h10bookingCalendar`, `h11bookingCalendar`, `h12bookingCalendar`) VALUES
(1, '2021-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2021-06-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2021-06-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2021-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2021-06-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2021-06-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2021-06-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2021-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2021-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2021-06-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bookings`
--

CREATE TABLE `bookings` (
  `idBooking` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idPartner` int(11) NOT NULL,
  `hoursForth` time DEFAULT NULL,
  `dateForth` date DEFAULT NULL,
  `statusBooking` varchar(100) NOT NULL,
  `formulaBooking` varchar(50) NOT NULL,
  `dateBack` date DEFAULT NULL,
  `hoursBack` time DEFAULT NULL,
  `idCar` int(11) NOT NULL,
  `idForthAddress` int(11) DEFAULT NULL,
  `idBackAddress` int(11) DEFAULT NULL,
  `idAgency` int(11) NOT NULL,
  `distanceForth` int(11) DEFAULT NULL,
  `durationForth` int(11) DEFAULT NULL,
  `distanceBack` int(11) DEFAULT NULL,
  `durationBack` int(11) DEFAULT NULL,
  `originBooking` varchar(200) NOT NULL,
  `dateBooking` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idProcess` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `bookings`
--

INSERT INTO `bookings` (`idBooking`, `idCustomer`, `idPartner`, `hoursForth`, `dateForth`, `statusBooking`, `formulaBooking`, `dateBack`, `hoursBack`, `idCar`, `idForthAddress`, `idBackAddress`, `idAgency`, `distanceForth`, `durationForth`, `distanceBack`, `durationBack`, `originBooking`, `dateBooking`, `idProcess`) VALUES
(5, 3, 1, '08:00:00', '2021-05-24', 'Validé', 'technicalControl', '2021-05-24', '14:30:00', 7, 3, 4, 1, 41, 26, 41, 26, 'partner', '2021-05-22 16:19:45', 0),
(6, 4, 2, '08:30:00', '2021-05-25', 'validée', 'technicalControl', '2021-05-25', '16:45:00', 6, 2, 3, 1, 20, 3, 15, 2, '', '2021-05-22 20:00:59', 1),
(7, 2, 3, '08:30:00', '2021-05-26', 'Validée', 'round', '2021-05-26', '17:00:00', 10, 3, 2, 2, 14, 16, 21, 14, 'partner', '2021-05-23 16:56:12', 0),
(8, 3, 1, NULL, NULL, 'Validée', 'back', '2021-05-30', '17:30:00', 10, NULL, 4, 2, NULL, NULL, 30, 14, 'customer', '2021-05-25 11:02:02', 0),
(9, 3, 3, '08:30:00', '2021-05-31', 'Validée', 'forth', NULL, NULL, 6, 3, NULL, 2, 14, 20, NULL, NULL, 'customer', '2021-05-25 11:03:23', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cardIdCustomer`
--

CREATE TABLE `cardIdCustomer` (
  `idCar` int(11) NOT NULL,
  `urlCard` varchar(10000) NOT NULL,
  `idContract` int(11) NOT NULL,
  `dateCard` datetime DEFAULT CURRENT_TIMESTAMP,
  `powerRecovery` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `idCar` int(11) NOT NULL,
  `idCustomer` int(11) DEFAULT NULL,
  `licensePlateCar` varchar(10) NOT NULL,
  `brandCar` varchar(250) NOT NULL,
  `modelCar` varchar(250) NOT NULL,
  `dateOfCirculationCar` varchar(255) NOT NULL,
  `motorizationCar` varchar(50) NOT NULL,
  `colorCar` varchar(250) NOT NULL,
  `versionCar` varchar(250) NOT NULL,
  `urlGrayCard` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`idCar`, `idCustomer`, `licensePlateCar`, `brandCar`, `modelCar`, `dateOfCirculationCar`, `motorizationCar`, `colorCar`, `versionCar`, `urlGrayCard`) VALUES
(6, 1, 'FM327GX', 'AUDI', 'FFF', '01/01/2020', 'test', '', '', '1/vfdvs'),
(7, 1, '13AJE0755', 'NISSAN', 'MICRA', '01/03/2005', '82', '', '0', NULL),
(10, NULL, 'CG512LR', 'HONDA', 'CB750F2', '28/04/1992', '67', 'NOIR', '', NULL),
(11, NULL, 'CG513LR', 'RENAULT', 'CLIO III', '17/08/2006', '98', 'GRIS', '1.4 16V', NULL),
(12, NULL, '', '', '', '', '', '', '', ''),
(13, NULL, '', '', '', '', '', '', '', ''),
(14, NULL, '', '', '', '', '', '', '', ''),
(15, NULL, '', '', '', '', '', '', '', ''),
(16, NULL, '', '', '', '', '', '', '', ''),
(17, NULL, '', '', '', '', '', '', '', ''),
(18, NULL, '', '', '', '', '', '', '', ''),
(19, NULL, '', '', '', '', '', '', '', ''),
(20, NULL, '', '', '', '', '', '', '', ''),
(21, NULL, '', '', '', '', '', '', '', ''),
(22, NULL, '', '', '', '', '', '', '', ''),
(23, NULL, '', '', '', '', '', '', '', ''),
(24, NULL, '', '', '', '', '', '', '', ''),
(25, NULL, '', '', '', '', '', '', '', ''),
(26, NULL, '', '', '', '', '', '', '', ''),
(27, NULL, '', '', '', '', '', '', '', ''),
(28, NULL, '', '', '', '', '', '', '', ''),
(29, NULL, '', '', '', '', '', '', '', ''),
(30, NULL, '', '', '', '', '', '', '', ''),
(31, NULL, '', '', '', '', '', '', '', ''),
(32, NULL, '', '', '', '', '', '', '', ''),
(33, NULL, '', '', '', '', '', '', '', ''),
(34, NULL, '', '', '', '', '', '', '', ''),
(35, NULL, '', '', '', '', '', '', '', ''),
(36, NULL, '', '', '', '', '', '', '', ''),
(37, NULL, '', '', '', '', '', '', '', ''),
(38, NULL, '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `carsProcessing`
--

CREATE TABLE `carsProcessing` (
  `idProcess` int(11) NOT NULL,
  `idCar` int(11) DEFAULT NULL,
  `idPartner` int(11) DEFAULT NULL,
  `idBooking` int(11) DEFAULT NULL,
  `idAgency` int(11) DEFAULT NULL,
  `carStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `carsProcessing`
--

INSERT INTO `carsProcessing` (`idProcess`, `idCar`, `idPartner`, `idBooking`, `idAgency`, `carStatus`) VALUES
(1, 6, 1, 6, 1, 'etape 12'),
(2, 6, 1, 7, 1, 'etape 2');

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

CREATE TABLE `contracts` (
  `idContract` int(11) NOT NULL,
  `idBooking` int(11) NOT NULL,
  `idCar` int(11) NOT NULL,
  `idCustomer` int(11) DEFAULT NULL,
  `idPartner` int(11) DEFAULT NULL,
  `idAgency` int(11) DEFAULT NULL,
  `urlCustomerForthInventory` varchar(1000) DEFAULT NULL,
  `urlPartnerForthInventory` varchar(1000) DEFAULT NULL,
  `urlPartnerBackInventory` varchar(1000) DEFAULT NULL,
  `urlCustomerBackInventory` varchar(1000) DEFAULT NULL,
  `dateContract` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idForthAddress` int(11) DEFAULT NULL,
  `idBackAddress` int(11) DEFAULT NULL,
  `idTeammateForth` int(11) DEFAULT NULL,
  `idTeammateBack` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customerInvoices`
--

CREATE TABLE `customerInvoices` (
  `idInvoice` int(11) NOT NULL,
  `invoiceNumber` varchar(250) NOT NULL,
  `invoiceStatus` varchar(250) NOT NULL,
  `amountInvoice` varchar(250) NOT NULL,
  `idPartner` int(11) NOT NULL,
  `invoiceDate` date NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `invoiceLines` text NOT NULL,
  `idCar` int(11) NOT NULL,
  `idContract` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `idCustomer` int(11) NOT NULL,
  `idBillingAddress` int(11) DEFAULT NULL,
  `firstNameCustomer` varchar(50) NOT NULL,
  `lastNameCustomer` varchar(50) NOT NULL,
  `dateOfBirthdayCustomer` date DEFAULT NULL,
  `phoneCustomer` varchar(20) NOT NULL,
  `mailCustomer` varchar(250) DEFAULT NULL,
  `mixedPassworrd` varchar(255) NOT NULL,
  `idPartner` int(11) DEFAULT NULL,
  `dateCustomer` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statusCustomer` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`idCustomer`, `idBillingAddress`, `firstNameCustomer`, `lastNameCustomer`, `dateOfBirthdayCustomer`, `phoneCustomer`, `mailCustomer`, `mixedPassworrd`, `idPartner`, `dateCustomer`, `statusCustomer`) VALUES
(1, 1, 'Nom1', 'Prénom1', '1991-09-04', '1234567890', 'nom1@test1.com', 'AT1202cm.3', 1, '2021-05-08 22:14:22', NULL),
(2, 4, 'Nom2', 'Prénom2', '1990-03-26', '0987654321', 'nom2@test2.com', 'C260390m', 2, '2021-05-08 22:14:22', NULL),
(3, 5, 'Nom3', 'Prénom3', '1993-12-21', '5432167890', 'nom3@test3.com', 'N121212.m', 3, '2021-05-08 22:16:16', NULL),
(4, 6, 'Nom4', 'Prénom4', '1996-10-15', '6789054321', 'nom4@test4.com', 'P151096n', 4, '2021-05-08 22:16:16', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `partnerInvoices`
--

CREATE TABLE `partnerInvoices` (
  `idInvoice` int(11) NOT NULL,
  `invoiceNumber` varchar(250) NOT NULL,
  `amountInvoice` varchar(250) NOT NULL,
  `idPartner` int(11) NOT NULL,
  `invoiceDate` date NOT NULL,
  `invoiceLines` text NOT NULL,
  `idContract` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idBooking` int(11) NOT NULL,
  `idCar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `partnerInvoices`
--

INSERT INTO `partnerInvoices` (`idInvoice`, `invoiceNumber`, `amountInvoice`, `idPartner`, `invoiceDate`, `invoiceLines`, `idContract`, `idCustomer`, `idBooking`, `idCar`) VALUES
(1, '1', '1', 1, '2021-05-31', '1', 1, 11, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `partners`
--

CREATE TABLE `partners` (
  `idPartner` int(11) NOT NULL,
  `usernamePartner` varchar(100) NOT NULL,
  `mixedPassword` varchar(255) DEFAULT NULL,
  `namePartner` varchar(250) DEFAULT NULL,
  `addressPartner` varchar(1000) DEFAULT NULL,
  `phonePartner` varchar(20) DEFAULT NULL,
  `statusPartner` varchar(20) DEFAULT NULL,
  `typePartner` varchar(20) DEFAULT NULL,
  `mailPartner` varchar(100) DEFAULT NULL,
  `nameBilling` varchar(250) DEFAULT NULL,
  `typeBilling` varchar(250) NOT NULL,
  `siretPartner` varchar(15) DEFAULT NULL,
  `addressBilling` varchar(1000) DEFAULT NULL,
  `datePartner` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `idAgency` int(11) DEFAULT NULL,
  `partnerKey` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `partners`
--

INSERT INTO `partners` (`idPartner`, `usernamePartner`, `mixedPassword`, `namePartner`, `addressPartner`, `phonePartner`, `statusPartner`, `typePartner`, `mailPartner`, `nameBilling`, `typeBilling`, `siretPartner`, `addressBilling`, `datePartner`, `idAgency`, `partnerKey`) VALUES
(1, 'MidasLaValentine', '$2y$10$RhQhRhhx0ezUM5XBIeKRTezx7SomOT4yuDcJpUw1pW75OKQaENQd2', 'Midas', '247', '1234567890', 'Partenaire', 'garage', 'midas@test.com', 'Dylan', 'you', '123456789009876', '', '2021-05-08 22:03:38', 1, NULL),
(2, 'Technique', '$2y$10$a9OzVpWe5EY9S65WtKockegCScvQqDLNSQU5lqQ0KOqgIW/kTUICO', 'Auto Bilan', '12', '0123456789', 'Partenaire', 'Contrôle Technique', 'technicalControl@test.com', 'test Technical Controle', 'compteTier', '123456789012345', '3 Avenue de Sainte-Euphémie, 13380 Plan-de-Cuques, France', '2021-05-08 22:06:14', 1, ''),
(3, 'Technique', '$2y$10$PJFKnKJ/lf26pr/j43PAdOpz5id7gdQwK.iz.flrVNgBRZv8yDweq', 'Auto Bilan', '242 Route des Trois Lucs à la Valentine, 13011 Marseille, France', '5432167890', 'Partenaire', 'Contrôle Technique', 'maix@test.com', 'Midas Aix en Provence', 'lyra', '123456789012345', '242 Route des Trois Lucs à la Valentine, 13011 Marseille, France', '2021-05-08 22:10:24', 1, ''),
(4, 'Controle', 'CAix09876', 'Bilan Auto Aix', '40', '6789054321', 'Partenaire', 'technicalControl', 'aix@technique.com', 'Bilan Auto Aix', '', '678905432154321', '70', '2021-05-08 22:10:24', 2, NULL),
(5, 'Test Create', '$2y$10$zfjo02i/bxnweokvf/ZWT.nkp5XhB3rx1gEWqODpbXezCw3IPN55O', 'test', 'test', 'dddddd', 'ddddd', 'ddd', 'dddd', 'ddddd', 'test', 'ddddd', 'test', '2021-05-22 21:17:53', 2, ''),
(6, 'Test Create', '$2y$10$cpXWTm0K.JwDlgrXtsX5O.REUWra./mlq.V9JzU6VSD1NIBsmhRdK', 'test', 'test', 'dddddd', 'ddddd', 'ddd', 'dddd', 'ddddd', 'test', 'ddddd', 'test', '2021-05-22 21:18:39', 2, ''),
(7, 'Test Create2', '$2y$10$rqbvzP0oj7N4qHDEdh1as.bA7GJCRfyi9WM5v69LmpSCugXVNkyEi', 'test', 'test', 'dddddd', 'ddddd', 'ddd', 'dddd', 'ddddd', 'test', 'ddddd', 'test', '2021-05-22 21:19:05', 2, '');

-- --------------------------------------------------------

--
-- Structure de la table `paybox`
--

CREATE TABLE `paybox` (
  `site` int(200) NOT NULL,
  `rang` int(200) NOT NULL,
  `identifiant` int(200) NOT NULL,
  `keyPaybox` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `paybox`
--

INSERT INTO `paybox` (`site`, `rang`, `identifiant`, `keyPaybox`) VALUES
(2695713, 1, 38004508, '967DF2AFD7B2498CD2BBA74412AE46E2E473937FEF43A80DD8EAA21B24656681EEB92D4F8C56096A9068E0464DF6C1DABEB53F836951D489ABEE10C7139E234E');

-- --------------------------------------------------------

--
-- Structure de la table `price`
--

CREATE TABLE `price` (
  `idPrice` int(11) NOT NULL,
  `typePrice` varchar(255) NOT NULL,
  `amount` double(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `teammates`
--

CREATE TABLE `teammates` (
  `idTeammate` int(11) NOT NULL,
  `firstNameTeammate` varchar(50) NOT NULL,
  `lastNameTeammate` varchar(50) NOT NULL,
  `usernameTeammate` varchar(50) NOT NULL,
  `mailTeammate` varchar(100) NOT NULL,
  `phoneTeammate` varchar(20) NOT NULL,
  `mixedPassword` varchar(255) NOT NULL,
  `statusTeammate` varchar(10) NOT NULL,
  `jobTeammate` varchar(100) NOT NULL,
  `idAgency` int(11) NOT NULL,
  `superAdmin` tinyint(4) NOT NULL,
  `dateTeammate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `teammates`
--

INSERT INTO `teammates` (`idTeammate`, `firstNameTeammate`, `lastNameTeammate`, `usernameTeammate`, `mailTeammate`, `phoneTeammate`, `mixedPassword`, `statusTeammate`, `jobTeammate`, `idAgency`, `superAdmin`, `dateTeammate`) VALUES
(1, 'Test', 'Cyril', 'Cyril', 'cyril@test.com', '1234567890', 'C260390m', 'Activer', 'Manager', 1, 0, '2021-05-08 21:59:48'),
(2, 'Test', 'Micka', 'Micka', 'micka@test.com', '0987654321', 'M181297m', 'Activer', 'Manager', 2, 1, '2021-05-08 22:00:49'),
(3, 'angelqiue', 'tremouilloux', 'test', 'angie@angie.com', '000000000', '$2y$10$UCM9tmhjAnbtlLCmhtS4SO33CcgE6rXDaVC/QKX1GcqTaxYvmVx/O', 'activer', 'manager', 1, 1, '2021-06-04 17:07:05');

-- --------------------------------------------------------

--
-- Structure de la table `technicalControlInvoices`
--

CREATE TABLE `technicalControlInvoices` (
  `idTechnicalControlInvoice` int(11) NOT NULL,
  `idPartner` int(11) NOT NULL,
  `monthlyInvoice` varchar(250) NOT NULL,
  `urlInvoice` varchar(10000) DEFAULT NULL,
  `priceInvoice` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `technicalControlInvoices`
--

INSERT INTO `technicalControlInvoices` (`idTechnicalControlInvoice`, `idPartner`, `monthlyInvoice`, `urlInvoice`, `priceInvoice`) VALUES
(1, 2, 'juin', 'adresseServeur/technicalControlInvoice/2/factureJuin.pdf', '250€'),
(2, 2, 'juin', 'adresseServeur/technicalControlInvoice/2/factureJuin.pdf', '250€'),
(3, 2, 'juin', 'technicalControlInvoices/2/factureJuin.pdf', '250€'),
(4, 2, 'janvier', 'technicalControlInvoices/', '200'),
(5, 2, 'essai4', '', '222'),
(6, 2, 'essai8', '', '222'),
(7, 2, 'janvier', '', '200'),
(8, 2, 'mmmm', '', '1111'),
(9, 2, 'juin', '', '250€'),
(10, 2, 'mars', '', '780'),
(11, 2, 'janvier', '', '200'),
(12, 2, 'fevrier', '', '200'),
(13, 2, 'fevrier', '', '200'),
(14, 2, 'mars', '', '780'),
(15, 2, 'janvier', '', '780'),
(16, 2, 'janvier', '', '780');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

CREATE TABLE `videos` (
  `idVideo` int(11) NOT NULL,
  `urlCustomerBackVideo` varchar(1000) NOT NULL,
  `urlCustomerForthVideo` varchar(1000) NOT NULL,
  `urlPartnerForthVideo` varchar(1000) NOT NULL,
  `urlPartnerBackVideo` varchar(1000) NOT NULL,
  `idContract` int(11) NOT NULL,
  `dateVideo` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `videoType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`idAddress`),
  ADD KEY `FK_idCustomer_addresses` (`idCustomer`);

--
-- Index pour la table `agencies`
--
ALTER TABLE `agencies`
  ADD PRIMARY KEY (`idAgency`);

--
-- Index pour la table `bookingCalendar`
--
ALTER TABLE `bookingCalendar`
  ADD UNIQUE KEY `idBookingCalendar` (`idBookingCalendar`);

--
-- Index pour la table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`idBooking`),
  ADD KEY `FK_idAgency_bookings` (`idAgency`),
  ADD KEY `FK_idBackAddress_bookings` (`idBackAddress`),
  ADD KEY `FK_idCar_bookings` (`idCar`),
  ADD KEY `FK_idCustomer_bookings` (`idCustomer`),
  ADD KEY `FK_idForthAddress_bookings` (`idForthAddress`),
  ADD KEY `FK_idPartner_bookings` (`idPartner`);

--
-- Index pour la table `cardIdCustomer`
--
ALTER TABLE `cardIdCustomer`
  ADD PRIMARY KEY (`idCar`),
  ADD KEY `FK_idContract_cardIdCustomer` (`idContract`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`idCar`),
  ADD KEY `FK_idCustomer_cars` (`idCustomer`);

--
-- Index pour la table `carsProcessing`
--
ALTER TABLE `carsProcessing`
  ADD PRIMARY KEY (`idProcess`),
  ADD KEY `FK_idAgency_carsProccessing` (`idAgency`),
  ADD KEY `FK_idBooking_carsProccessing` (`idBooking`),
  ADD KEY `FK_idCar_carsProccessing` (`idCar`),
  ADD KEY `FK_idPartner_carsProccessing` (`idPartner`);

--
-- Index pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`idContract`),
  ADD KEY `FK_idBooking_contract` (`idBooking`),
  ADD KEY `FK_idCar_contract` (`idCar`),
  ADD KEY `FK_idCustomer_contract` (`idCustomer`),
  ADD KEY `FK_idAgency_contract` (`idAgency`),
  ADD KEY `FK_idForthAddress_contract` (`idForthAddress`),
  ADD KEY `FK_idPartner_contract` (`idPartner`),
  ADD KEY `FK_idBackAddress_contract` (`idBackAddress`),
  ADD KEY `FK_idTeammateForth_contract` (`idTeammateForth`),
  ADD KEY `FK_idTeammateBack_contract` (`idTeammateBack`);

--
-- Index pour la table `customerInvoices`
--
ALTER TABLE `customerInvoices`
  ADD PRIMARY KEY (`idInvoice`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`idCustomer`),
  ADD KEY `FK_idBillingAddress_customer` (`idBillingAddress`),
  ADD KEY `FK_idPartner_customers` (`idPartner`);

--
-- Index pour la table `partnerInvoices`
--
ALTER TABLE `partnerInvoices`
  ADD PRIMARY KEY (`idInvoice`);

--
-- Index pour la table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`idPartner`),
  ADD KEY `FK_idAgency_partners` (`idAgency`);

--
-- Index pour la table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`idPrice`);

--
-- Index pour la table `teammates`
--
ALTER TABLE `teammates`
  ADD PRIMARY KEY (`idTeammate`),
  ADD KEY `FK_idPartner_teammates` (`idAgency`);

--
-- Index pour la table `technicalControlInvoices`
--
ALTER TABLE `technicalControlInvoices`
  ADD PRIMARY KEY (`idTechnicalControlInvoice`),
  ADD KEY `idPartner_technicalControlInvoices` (`idPartner`);

--
-- Index pour la table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`idVideo`),
  ADD KEY `FK_idContract_videos` (`idContract`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `idAddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `agencies`
--
ALTER TABLE `agencies`
  MODIFY `idAgency` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `bookingCalendar`
--
ALTER TABLE `bookingCalendar`
  MODIFY `idBookingCalendar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `idBooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `cardIdCustomer`
--
ALTER TABLE `cardIdCustomer`
  MODIFY `idCar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cars`
--
ALTER TABLE `cars`
  MODIFY `idCar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `carsProcessing`
--
ALTER TABLE `carsProcessing`
  MODIFY `idProcess` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `idContract` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customerInvoices`
--
ALTER TABLE `customerInvoices`
  MODIFY `idInvoice` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `partnerInvoices`
--
ALTER TABLE `partnerInvoices`
  MODIFY `idInvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `partners`
--
ALTER TABLE `partners`
  MODIFY `idPartner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `price`
--
ALTER TABLE `price`
  MODIFY `idPrice` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `teammates`
--
ALTER TABLE `teammates`
  MODIFY `idTeammate` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `technicalControlInvoices`
--
ALTER TABLE `technicalControlInvoices`
  MODIFY `idTechnicalControlInvoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `videos`
--
ALTER TABLE `videos`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `FK_idCustomer_addresses` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`);

--
-- Contraintes pour la table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `FK_idAgency_bookings` FOREIGN KEY (`idAgency`) REFERENCES `agencies` (`idAgency`),
  ADD CONSTRAINT `FK_idBackAddress_bookings` FOREIGN KEY (`idBackAddress`) REFERENCES `addresses` (`idAddress`),
  ADD CONSTRAINT `FK_idCar_bookings` FOREIGN KEY (`idCar`) REFERENCES `cars` (`idCar`),
  ADD CONSTRAINT `FK_idCustomer_bookings` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`),
  ADD CONSTRAINT `FK_idForthAddress_bookings` FOREIGN KEY (`idForthAddress`) REFERENCES `addresses` (`idAddress`),
  ADD CONSTRAINT `FK_idPartner_bookings` FOREIGN KEY (`idPartner`) REFERENCES `partners` (`idPartner`);

--
-- Contraintes pour la table `cardIdCustomer`
--
ALTER TABLE `cardIdCustomer`
  ADD CONSTRAINT `FK_idContract_cardIdCustomer` FOREIGN KEY (`idContract`) REFERENCES `contracts` (`idContract`);

--
-- Contraintes pour la table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `FK_idCustomer_cars` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`);

--
-- Contraintes pour la table `carsProcessing`
--
ALTER TABLE `carsProcessing`
  ADD CONSTRAINT `FK_idAgency_carsProccessing` FOREIGN KEY (`idAgency`) REFERENCES `agencies` (`idAgency`),
  ADD CONSTRAINT `FK_idBooking_carsProccessing` FOREIGN KEY (`idBooking`) REFERENCES `bookings` (`idBooking`),
  ADD CONSTRAINT `FK_idCar_carsProccessing` FOREIGN KEY (`idCar`) REFERENCES `cars` (`idCar`),
  ADD CONSTRAINT `FK_idPartner_carsProccessing` FOREIGN KEY (`idPartner`) REFERENCES `partners` (`idPartner`);

--
-- Contraintes pour la table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `FK_idAgency_contract` FOREIGN KEY (`idAgency`) REFERENCES `agencies` (`idAgency`),
  ADD CONSTRAINT `FK_idBackAddress_contract` FOREIGN KEY (`idBackAddress`) REFERENCES `addresses` (`idAddress`),
  ADD CONSTRAINT `FK_idBooking_contract` FOREIGN KEY (`idBooking`) REFERENCES `bookings` (`idBooking`),
  ADD CONSTRAINT `FK_idCar_contract` FOREIGN KEY (`idCar`) REFERENCES `cars` (`idCar`),
  ADD CONSTRAINT `FK_idCustomer_contract` FOREIGN KEY (`idCustomer`) REFERENCES `customers` (`idCustomer`),
  ADD CONSTRAINT `FK_idForthAddress_contract` FOREIGN KEY (`idForthAddress`) REFERENCES `addresses` (`idAddress`),
  ADD CONSTRAINT `FK_idPartner_contract` FOREIGN KEY (`idPartner`) REFERENCES `partners` (`idPartner`),
  ADD CONSTRAINT `FK_idTeammateBack_contract` FOREIGN KEY (`idTeammateBack`) REFERENCES `teammates` (`idTeammate`),
  ADD CONSTRAINT `FK_idTeammateForth_contract` FOREIGN KEY (`idTeammateForth`) REFERENCES `teammates` (`idTeammate`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK_idBillingAddress_customer` FOREIGN KEY (`idBillingAddress`) REFERENCES `addresses` (`idAddress`),
  ADD CONSTRAINT `FK_idPartner_customers` FOREIGN KEY (`idPartner`) REFERENCES `partners` (`idPartner`);

--
-- Contraintes pour la table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `FK_idAgency_partners` FOREIGN KEY (`idAgency`) REFERENCES `agencies` (`idAgency`);

--
-- Contraintes pour la table `teammates`
--
ALTER TABLE `teammates`
  ADD CONSTRAINT `FK_idPartner_teammates` FOREIGN KEY (`idAgency`) REFERENCES `agencies` (`idAgency`);

--
-- Contraintes pour la table `technicalControlInvoices`
--
ALTER TABLE `technicalControlInvoices`
  ADD CONSTRAINT `idPartner_technicalControlInvoices` FOREIGN KEY (`idPartner`) REFERENCES `partners` (`idPartner`);

--
-- Contraintes pour la table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `FK_idContract_videos` FOREIGN KEY (`idContract`) REFERENCES `contracts` (`idContract`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
