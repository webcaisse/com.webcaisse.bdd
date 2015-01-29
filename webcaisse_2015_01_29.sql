-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Jeu 29 Janvier 2015 à 22:01
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `webcaisse`
--

-- --------------------------------------------------------

--
-- Structure de la table `cdes`
--

CREATE TABLE IF NOT EXISTS `cdes` (
  `id_cde` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `date_cde` datetime DEFAULT NULL,
  `date_prevue` datetime DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `id_livreur` int(11) DEFAULT NULL,
  `id_session` int(11) NOT NULL,
  `paye` bit(1) DEFAULT NULL,
  `reg_esp` double DEFAULT NULL,
  `reg_cb` double DEFAULT NULL,
  `reg_tr` double DEFAULT NULL,
  `reg_ch` double DEFAULT NULL,
  `reg_fi` double DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `commentaire` varchar(1000) DEFAULT NULL,
  `etat` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_cde`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `cdes`
--

INSERT INTO `cdes` (`id_cde`, `id_societe`, `date_cde`, `date_prevue`, `id_client`, `mode`, `montant`, `id_livreur`, `id_session`, `paye`, `reg_esp`, `reg_cb`, `reg_tr`, `reg_ch`, `reg_fi`, `actif`, `commentaire`, `etat`) VALUES
(4, 1, '2014-12-24 10:51:26', NULL, NULL, NULL, 6, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2014-12-24 10:56:04', NULL, NULL, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, '2014-12-24 11:21:56', NULL, NULL, NULL, 8, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, '2014-12-25 15:32:38', NULL, NULL, NULL, 7, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, '2014-12-26 22:29:59', NULL, NULL, NULL, 10, 0, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, '2014-12-26 22:47:47', NULL, NULL, NULL, 9, 0, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, '2014-12-26 22:48:26', NULL, NULL, NULL, 3, 0, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, '2014-12-26 22:54:51', NULL, NULL, NULL, 4, 0, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, '2015-01-08 23:14:37', NULL, NULL, 'L', 3, 0, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, '2015-01-09 19:44:09', NULL, NULL, 'E', 3, 0, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, '2015-01-09 21:47:07', NULL, NULL, NULL, 17, 0, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, NULL, NULL, NULL, NULL, NULL, 1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, '2015-01-12 17:25:28', NULL, NULL, NULL, 6, NULL, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, '2015-01-13 19:28:54', NULL, NULL, NULL, 6, 5, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, '2015-01-13 19:45:53', NULL, NULL, NULL, 10, 5, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, '2015-01-13 22:20:12', NULL, NULL, NULL, 7, 1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, '2015-01-13 23:23:20', NULL, NULL, NULL, 3, 1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 1, '2015-01-13 23:37:53', NULL, NULL, NULL, 3, 3, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 1, '2015-01-14 00:03:43', NULL, NULL, NULL, 3, 4, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 1, '2015-01-14 00:03:59', NULL, NULL, NULL, 10, 5, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 1, '2015-01-14 11:49:18', NULL, NULL, NULL, 9.5, 2, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 1, '2015-01-17 21:29:34', NULL, 6, 'L', 20, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 1, '2015-01-17 21:32:55', NULL, 7, NULL, 6, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 1, '2015-01-17 21:40:32', NULL, 8, NULL, 14, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 1, '2015-01-17 21:44:50', NULL, 9, NULL, 10, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 1, '2015-01-17 21:51:36', NULL, 10, NULL, 7, NULL, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 1, '2015-01-29 19:49:19', NULL, 12, 'A emporter', 6, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 1, '2015-01-29 19:52:52', NULL, 13, 'A emporter', 0, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 1, '2015-01-29 20:14:33', NULL, 14, 'E', 3, NULL, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cdes_lines`
--

CREATE TABLE IF NOT EXISTS `cdes_lines` (
  `id_line` int(11) NOT NULL AUTO_INCREMENT,
  `id_cde` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `format` int(11) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `offert` int(11) DEFAULT NULL,
  `pourcent` int(11) DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `format_type_varchar` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `details` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_line`),
  KEY `id_cde` (`id_cde`),
  KEY `id_produit` (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Contenu de la table `cdes_lines`
--

INSERT INTO `cdes_lines` (`id_line`, `id_cde`, `id_produit`, `format`, `qte`, `offert`, `pourcent`, `notes`, `prix`, `total`, `format_type_varchar`, `details`) VALUES
(7, 4, 51, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(8, 4, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(9, 5, 55, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(10, 6, 10, NULL, 1, NULL, NULL, NULL, 8, 8, NULL, NULL),
(11, 7, 58, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(12, 8, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(13, 8, 56, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(14, 9, 13, NULL, 1, NULL, NULL, NULL, 9, 9, NULL, NULL),
(15, 10, 27, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(16, 11, 28, NULL, 1, NULL, NULL, NULL, 4, 4, NULL, NULL),
(17, 12, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(18, 13, 27, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(19, 14, 55, NULL, 2, NULL, NULL, NULL, 7, 14, NULL, NULL),
(20, 14, 53, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(21, 18, 51, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(22, 18, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(23, 19, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(24, 19, 53, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(25, 20, 8, NULL, 1, NULL, NULL, NULL, 10, 10, NULL, NULL),
(26, 21, 13, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(27, 22, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(28, 23, 39, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(29, 24, 53, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(30, 25, 8, NULL, 1, NULL, NULL, NULL, 10, 10, NULL, NULL),
(31, 26, 36, NULL, 3, NULL, NULL, NULL, 1.5, 4.5, NULL, NULL),
(32, 26, 38, NULL, 1, NULL, NULL, NULL, 2, 2, NULL, NULL),
(33, 26, 53, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(34, 28, 30, NULL, 1, NULL, NULL, NULL, 6, 6, NULL, NULL),
(35, 29, 55, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(36, 29, 56, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(37, 30, 53, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(38, 30, 56, NULL, 1, NULL, NULL, NULL, 7, 7, NULL, NULL),
(39, 31, 51, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL),
(40, 31, 54, NULL, 1, NULL, NULL, NULL, 4, 4, NULL, NULL),
(41, 32, 29, NULL, 1, NULL, NULL, NULL, 6, 6, NULL, NULL),
(42, 34, 52, NULL, 1, NULL, NULL, NULL, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `telephone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `societe` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `num_rue` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nom_voie` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cp` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ville` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `zone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `code1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `code2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `interphone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `etage` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `porte` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `appart` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `notes_prives` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `notes_ticket` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `notes_livreur` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pts` int(11) DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `rue` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `immeuble` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `code3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_client`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`id_client`, `id_societe`, `telephone`, `nom`, `prenom`, `societe`, `num_rue`, `nom_voie`, `cp`, `ville`, `zone`, `code1`, `code2`, `interphone`, `etage`, `porte`, `appart`, `notes_prives`, `notes_ticket`, `notes_livreur`, `pts`, `date_creat`, `rue`, `immeuble`, `code3`, `email`) VALUES
(4, 1, '33612708258', 'sghaier', 'khaled', NULL, '1', 'rue de metz', NULL, 'Tours', NULL, '', '', '33612708258', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 'sghaierkhaled@live.com'),
(5, 1, '0636112255', 'fdsfds', 'sdfsdf', NULL, 'sddfdfs', '', NULL, '', NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', ''),
(6, 1, '0652411223', 'sghaier', 'khaled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL),
(7, 1, '0625448866', 'demo', 'demo', NULL, NULL, NULL, '95241', 'cergy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, NULL, 'sghaier', 'khaled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(9, 1, NULL, 'sghaier', 'khaled', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(10, 1, NULL, 'abdessalem', 'belhadj', NULL, '10', 'rue de paris', NULL, NULL, NULL, NULL, NULL, '1235', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21', NULL, NULL),
(11, 1, '336999999', 'dfvdf', 'dfgdf', 'dfgdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `compta`
--

CREATE TABLE IF NOT EXISTS `compta` (
  `id_ope` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `date_ope` datetime DEFAULT NULL,
  `fournisseur` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `categorie` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mode` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `note` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `paye` bit(1) DEFAULT NULL,
  `frequence` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `date_debut` datetime DEFAULT NULL,
  `date_fin` datetime DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `id_echeance` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ope`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta_lines`
--

CREATE TABLE IF NOT EXISTS `compta_lines` (
  `id_line` int(11) NOT NULL,
  `id_ope` int(11) DEFAULT NULL,
  `prix_ht` double DEFAULT NULL,
  `taux` double DEFAULT NULL,
  `prix_tva` double DEFAULT NULL,
  `prix_ttc` double DEFAULT NULL,
  PRIMARY KEY (`id_line`),
  KEY `id_ope` (`id_ope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
  `id_etab` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `nom_etab` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telephone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cp` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `siret` char(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_etab`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

CREATE TABLE IF NOT EXISTS `familles` (
  `id_famille` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `format1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `format2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `format3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `composants` bit(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `symbol_famille` char(10) DEFAULT NULL,
  `color` varchar(50) NOT NULL,
  PRIMARY KEY (`id_famille`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `familles`
--

INSERT INTO `familles` (`id_famille`, `id_societe`, `libelle`, `format1`, `format2`, `format3`, `actif`, `composants`, `num`, `symbol_famille`, `color`) VALUES
(1, 1, 'Pizzas', NULL, NULL, NULL, b'1', NULL, NULL, NULL, '#AEEE00'),
(2, 1, 'Entrées', NULL, NULL, NULL, b'1', NULL, NULL, NULL, ''),
(3, 1, 'Boissons', NULL, NULL, NULL, b'1', NULL, NULL, NULL, ''),
(4, 1, 'Desserts', NULL, NULL, NULL, b'1', NULL, NULL, NULL, ''),
(5, 1, 'Menusddll', NULL, NULL, NULL, b'1', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `livreurs`
--

CREATE TABLE IF NOT EXISTS `livreurs` (
  `id_livreur` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `adresse` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `portable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nss` char(15) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id_livreur`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `livreurs`
--

INSERT INTO `livreurs` (`id_livreur`, `id_societe`, `prenom`, `nom`, `actif`, `adresse`, `portable`, `nss`) VALUES
(1, 1, 'xcvxc', 'sghaier', NULL, NULL, 'xcvxcxc', NULL),
(2, 1, 'hhh', 'belhadj', NULL, NULL, 'oooii', 'lllll'),
(3, 1, 'dffdfd', 'Hajji', NULL, 'dffffffd', 'fffff', 'ffff'),
(4, 1, 'dffdfd', 'Marzouk', NULL, 'dffffffd', 'fffff', 'ffff'),
(5, 1, 'dffdfd', 'Bajbouj', NULL, 'dffffffd', 'fffff', 'ffff');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE IF NOT EXISTS `panier` (
  `id_panier` int(11) NOT NULL AUTO_INCREMENT,
  `remise` float NOT NULL,
  `qte` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  PRIMARY KEY (`id_panier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `panier`
--

INSERT INTO `panier` (`id_panier`, `remise`, `qte`, `libelle`) VALUES
(1, 1, 2, '');

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE IF NOT EXISTS `prix` (
  `id_prix` int(11) NOT NULL AUTO_INCREMENT,
  `prix` double NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_prix`),
  KEY `id_produit` (`id_produit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Contenu de la table `prix`
--

INSERT INTO `prix` (`id_prix`, `prix`, `id_produit`) VALUES
(16, 8, 7),
(17, 10, 7),
(18, 15, 7),
(19, 8, 8),
(20, 10, 8),
(21, 15, 8),
(25, 8, 10),
(26, 10, 10),
(27, 15, 10),
(28, 8, 11),
(29, 10, 11),
(30, 15, 11),
(34, 7, 13),
(35, 9, 13),
(36, 14, 13),
(37, 7, 15),
(38, 9, 15),
(39, 14, 15),
(40, 7, 16),
(41, 9, 16),
(42, 14, 16),
(43, 7, 17),
(44, 9, 17),
(45, 14, 17),
(46, 7, 18),
(47, 9, 18),
(48, 14, 18),
(49, 7, 19),
(50, 9, 19),
(51, 14, 19),
(52, 8.5, 20),
(53, 13.5, 20),
(54, 18.5, 20),
(55, 8.5, 21),
(56, 13.5, 21),
(57, 18.5, 21),
(58, 8, 22),
(59, 10, 22),
(60, 15, 22),
(61, 8, 23),
(62, 10, 23),
(63, 15, 23),
(64, 8, 24),
(65, 10, 24),
(66, 15, 24),
(67, 8, 25),
(68, 10, 25),
(69, 15, 25),
(70, 8, 26),
(71, 10, 26),
(72, 15, 26),
(73, 3, 27),
(74, 4, 28),
(75, 6, 29),
(76, 6, 30),
(77, 6, 31),
(78, 6, 32),
(79, 6, 33),
(80, 6.5, 34),
(81, 6.5, 35),
(82, 1.5, 36),
(83, 2, 37),
(84, 2, 38),
(85, 3, 39),
(86, 1.5, 40),
(87, 1.5, 41),
(88, 1.5, 42),
(89, 1.5, 43),
(90, 1.5, 44),
(91, 1.5, 45),
(92, 1.5, 46),
(93, 1.5, 47),
(94, 7, 48),
(95, 7, 49),
(96, 9, 50),
(97, 3, 51),
(98, 3, 52),
(99, 3, 53),
(100, 4, 54),
(101, 7, 55),
(102, 7, 56),
(103, 7, 57),
(104, 7, 58),
(105, 2.5, 59),
(106, 9, 60),
(107, 9, 61),
(108, 11, 62),
(109, 19, 63);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `id_societe` int(11) DEFAULT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prix1` double DEFAULT NULL,
  `prix2` double DEFAULT NULL,
  `prix3` double DEFAULT NULL,
  `pts1` int(11) DEFAULT NULL,
  `pts2` int(11) DEFAULT NULL,
  `pts3` int(11) DEFAULT NULL,
  `id_sous_famille` int(11) DEFAULT NULL,
  `menu` bit(1) DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `id_famille` int(11) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `compo` bit(1) DEFAULT NULL,
  `compo_details` char(50) DEFAULT NULL,
  `produit_menu` char(10) DEFAULT NULL,
  `offre` char(10) DEFAULT NULL,
  `besoin_sauce` bit(1) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_panier` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `id_societe` (`id_societe`),
  KEY `id_menu` (`id_menu`),
  KEY `id_panier` (`id_panier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `id_societe`, `libelle`, `prix1`, `prix2`, `prix3`, `pts1`, `pts2`, `pts3`, `id_sous_famille`, `menu`, `actif`, `id_famille`, `description`, `num`, `qte`, `compo`, `compo_details`, `produit_menu`, `offre`, `besoin_sauce`, `id_menu`, `id_panier`, `color`, `code`) VALUES
(7, 1, 'Sicilienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'TTomate, Fromage, Anchois, Câpres, Origan, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(8, 1, 'Espagnole', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Chorizo, Origan, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(10, 1, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Thon, Ail, Persillade, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(11, 1, 'Paysanne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Aubergines, Origan, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(13, 1, 'Italienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Mozzarella, Tomates fraîches, Basilic, Ori', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(14, 1, 'Reine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'TTomate, Fromage, Jambon, Champignons frais, Origa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(15, 1, 'Roquefort', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Roquefort, Jambon, Origan, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(16, 1, 'Armenienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Boeuf, Origan, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(17, 1, 'Mexicaine', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Champignons Frais, Poivrons, Poul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(18, 1, 'Normande', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Crème fraîche, Oignons, Lardons, Fromage, Origan,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(19, 1, 'Océane', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Fruits de mer, Champignons frais,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(20, 1, 'Orientale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Merguez, Champignons frais, Poivr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(21, 1, '4 fromages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Cantal, Roquefort, Chèvre, Mozzarella, Bas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(22, 1, 'Hawaienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Crème fraîche, Fromage, Poulet, Ananas, Poivrons,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(23, 1, 'Saumon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Saumon Fumé, Crème fraîche, Citro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(24, 1, 'Indienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Crème fraîche, Fromage, Poulet Tandory, Champignon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(25, 1, 'Libanaise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Viande de kebab, Oignons, Tomates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(26, 1, 'Tunisienne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Tomate, Fromage, Thon, Pommes de terre, Câpres, OE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(27, 1, 'Salade verte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(28, 1, 'Salade verte tomates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(29, 1, 'Salade bergère', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Roquefort, Cerneaux de noix', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(30, 1, 'Salade caesar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Poulet pané, Croûtons, Copeaux de pa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(31, 1, 'Salade mediterranée', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Cocktail de Fruits de Mer,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(32, 1, 'Salade mozzarella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Mozzarella, Basilic, Olives', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(33, 1, 'Salade chèvre', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Chèvre, Pignons, Croûtons,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(34, 1, 'Salade exotique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Poulet, Jambon, Emmental, M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(35, 1, 'Salade niçoise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Salade verte, Tomates, Thon, Oignon, OEufs, Anchoi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(36, 1, 'Badoit', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(37, 1, 'Bière Heineken', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(38, 1, 'Bière Kronenbourg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(39, 1, 'Bouteille Coca Cola 1,5 L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(40, 1, 'Coca Cola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(41, 1, 'Coca Cola light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(42, 1, 'Coca Cola zero', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(43, 1, 'Eau minérale 50cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(44, 1, 'Ice tea pêche', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(45, 1, 'Oasis tropical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(46, 1, 'Orangina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(47, 1, 'Schweppes agrumes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(48, 1, 'Vin Bordeaux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(49, 1, 'Vin Rosé', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(50, 1, 'Vin Côte de Provence', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(51, 1, 'Gâteau au chocolat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(52, 1, 'Tarte au citron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(53, 1, 'Tarte aux pommes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(54, 1, 'Pizza Nutella 26cm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(55, 1, 'Choco cookies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(56, 1, 'Noix de macadamia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(57, 1, 'Pralinés - caramel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(58, 1, 'Vanille -cookies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(59, 1, 'Brownies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(60, 1, 'MENU ECO Pizza ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Pizza normale (marguerite), tarte et boisson 33cl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(61, 1, 'MENU ECO Salade ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Salade, tarte et boisson 33cl (sauf alcool)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(62, 1, 'MENU SOLO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Pizza normale (sauf Texane et Américaine), tarte e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(63, 1, 'MENU DUO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'Pizza Mega (sauf Texane et Américaine), 2 tartes e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL),
(64, NULL, 'slata mechweya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10'),
(66, NULL, 'hrissa 3arbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.5'),
(73, NULL, 'mernu perso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '22333'),
(74, NULL, 'boga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2222');

-- --------------------------------------------------------

--
-- Structure de la table `profils`
--

CREATE TABLE IF NOT EXISTS `profils` (
  `id_profil` int(11) NOT NULL AUTO_INCREMENT,
  `nom_profil` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_profil`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `profils`
--

INSERT INTO `profils` (`id_profil`, `nom_profil`) VALUES
(1, 'USER'),
(2, 'ADMIN');

-- --------------------------------------------------------

--
-- Structure de la table `reference`
--

CREATE TABLE IF NOT EXISTS `reference` (
  `nom_parametre` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_societe` int(11) NOT NULL,
  `valeur` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `date_crea` datetime DEFAULT NULL,
  `date_modif` datetime DEFAULT NULL,
  `personne_modifie` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_ref` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ref`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `reference`
--

INSERT INTO `reference` (`nom_parametre`, `id_societe`, `valeur`, `date_crea`, `date_modif`, `personne_modifie`, `id_ref`) VALUES
('khaakka', 1, NULL, NULL, NULL, NULL, 1),
('khaakka', 1, NULL, NULL, NULL, NULL, 2),
('khaakka', 1, NULL, NULL, NULL, NULL, 3),
('ref_1', 1, '52', NULL, NULL, NULL, 4),
('REF_ENTETE1', 1, 'FGFDHD', '2015-01-03 23:25:45', NULL, NULL, 5),
('REF_ENTETE2', 1, 'sdfsd', '2015-01-03 23:25:45', NULL, NULL, 6),
('REF_ENTETE3', 1, 'sdfsd', '2015-01-03 23:25:46', NULL, NULL, 7),
('REF_ENTETE4', 1, 'sdfsd', '2015-01-03 23:25:46', NULL, NULL, 8),
('REF_PIED1', 1, 'sdfdssdfsd', '2015-01-03 23:25:46', NULL, NULL, 9),
('REF_PIED2', 1, 'sdf', '2015-01-03 23:25:46', NULL, NULL, 10),
('REF_PIED3', 1, 'sdf', '2015-01-03 23:25:46', NULL, NULL, 11),
('REF_PIED4', 1, 'dsfs', '2015-01-03 23:25:46', NULL, NULL, 12),
('REF_TVA_SP', 1, 'cvddf', '2015-01-04 17:31:46', NULL, NULL, 13),
('REF_TVA_EM', 1, 'fdfdffd', '2015-01-04 17:31:46', NULL, NULL, 14),
('REF_TVA_LV', 1, 'fffff', '2015-01-04 17:31:46', NULL, NULL, 15);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id_user` int(11) NOT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fermeture` datetime DEFAULT NULL,
  `chiffre_aff` double DEFAULT NULL,
  `etat` char(1) DEFAULT NULL,
  `id_session` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_session`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Contenu de la table `session`
--

INSERT INTO `session` (`id_user`, `date_ouverture`, `date_fermeture`, `chiffre_aff`, `etat`, `id_session`) VALUES
(1, '2014-12-24 00:00:00', '2014-12-26 22:34:06', NULL, 'F', 1),
(1, NULL, NULL, NULL, NULL, 2),
(1, NULL, NULL, NULL, NULL, 3),
(1, NULL, NULL, NULL, NULL, 4),
(1, NULL, NULL, NULL, NULL, 5),
(1, NULL, NULL, NULL, NULL, 6),
(1, NULL, NULL, NULL, NULL, 7),
(1, NULL, NULL, NULL, NULL, 8),
(1, NULL, NULL, NULL, NULL, 9),
(1, NULL, NULL, NULL, NULL, 10),
(1, NULL, NULL, NULL, NULL, 11),
(1, NULL, NULL, NULL, NULL, 12),
(1, NULL, NULL, NULL, NULL, 13),
(1, NULL, NULL, NULL, NULL, 14),
(1, NULL, NULL, NULL, NULL, 15),
(1, NULL, NULL, NULL, NULL, 16),
(1, NULL, NULL, NULL, NULL, 17),
(1, NULL, NULL, NULL, NULL, 18),
(1, NULL, NULL, NULL, NULL, 19),
(1, NULL, NULL, NULL, NULL, 20),
(1, NULL, NULL, NULL, NULL, 21),
(1, NULL, NULL, NULL, NULL, 22),
(1, NULL, NULL, NULL, NULL, 23),
(1, NULL, NULL, NULL, NULL, 24),
(1, NULL, NULL, NULL, NULL, 25),
(1, NULL, NULL, NULL, NULL, 26),
(1, NULL, NULL, NULL, NULL, 27),
(1, NULL, NULL, NULL, NULL, 28),
(1, NULL, NULL, NULL, NULL, 29),
(1, NULL, NULL, NULL, NULL, 30),
(1, NULL, NULL, NULL, NULL, 31),
(1, NULL, NULL, NULL, NULL, 32),
(1, NULL, NULL, NULL, NULL, 33),
(1, NULL, NULL, NULL, NULL, 34),
(1, NULL, NULL, NULL, NULL, 35),
(1, NULL, NULL, NULL, NULL, 36),
(1, NULL, NULL, NULL, NULL, 37),
(1, NULL, NULL, NULL, NULL, 38),
(1, NULL, NULL, NULL, NULL, 39),
(1, NULL, NULL, NULL, NULL, 40),
(1, NULL, NULL, NULL, NULL, 41),
(1, '2014-12-21 23:38:46', NULL, NULL, NULL, 45),
(1, '2014-12-21 23:38:52', NULL, NULL, NULL, 46),
(1, '2014-12-21 23:38:54', NULL, NULL, NULL, 47),
(1, '2014-12-21 23:38:55', NULL, NULL, NULL, 48),
(1, '2014-12-21 23:38:56', NULL, NULL, NULL, 49),
(0, '2014-12-22 00:15:09', NULL, NULL, NULL, 50),
(1, '2014-12-22 00:17:06', NULL, NULL, NULL, 51),
(1, '2014-12-22 00:18:29', NULL, NULL, NULL, 52),
(3, '2014-12-22 00:19:53', NULL, NULL, NULL, 53),
(0, '2014-12-24 23:43:35', NULL, NULL, NULL, 54),
(0, '2014-12-25 00:00:43', NULL, NULL, NULL, 55),
(1, '2014-12-24 00:00:00', '2014-12-25 11:30:28', NULL, 'F', 56),
(1, '2014-12-24 00:00:00', '2014-12-25 11:31:29', NULL, 'F', 57),
(1, NULL, '2014-12-25 11:33:01', NULL, 'F', 58),
(0, '2014-12-26 10:20:05', '2014-12-26 23:55:06', NULL, 'F', 59),
(0, '2014-12-27 00:00:16', '2014-12-27 00:04:00', NULL, 'F', 60),
(0, '2014-12-28 11:36:31', NULL, NULL, NULL, 61),
(0, '2014-12-31 11:15:28', NULL, NULL, 'O', 62),
(0, '2015-01-01 11:27:19', '2015-01-01 17:20:59', NULL, 'F', 63),
(0, '2015-01-01 17:21:01', NULL, NULL, 'O', 64),
(0, '2015-01-02 16:36:59', NULL, NULL, 'O', 65),
(0, '2015-01-03 14:36:51', NULL, NULL, 'O', 66),
(0, '2015-01-04 17:26:46', NULL, NULL, 'O', 67),
(0, '2015-01-06 11:16:49', NULL, NULL, 'O', 68),
(0, '2015-01-08 19:45:51', NULL, NULL, 'O', 69),
(0, '2015-01-09 19:43:42', NULL, NULL, 'O', 70),
(0, '2015-01-12 17:25:03', NULL, NULL, 'O', 71),
(0, '2015-01-13 19:28:38', NULL, NULL, 'O', 72),
(0, '2015-01-14 00:03:32', NULL, NULL, 'O', 73),
(0, '2015-01-16 18:02:24', NULL, NULL, 'O', 74),
(0, '2015-01-17 15:38:51', NULL, NULL, 'O', 75),
(0, '2015-01-18 12:18:59', NULL, NULL, 'O', 76),
(0, '2015-01-21 21:02:32', NULL, NULL, 'O', 77),
(0, '2015-01-24 22:36:06', NULL, NULL, 'O', 78),
(0, '2015-01-25 22:16:01', NULL, NULL, 'O', 79),
(0, '2015-01-26 00:01:30', NULL, NULL, 'O', 80),
(0, '2015-01-28 10:06:56', NULL, NULL, 'O', 81),
(0, '2015-01-29 10:56:51', NULL, NULL, 'O', 82);

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE IF NOT EXISTS `societe` (
  `id_societe` int(11) NOT NULL AUTO_INCREMENT,
  `nom` char(50) DEFAULT NULL,
  `adresse` char(100) DEFAULT NULL,
  `telephone` char(12) DEFAULT NULL,
  `code_societe` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_societe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `societe`
--

INSERT INTO `societe` (`id_societe`, `nom`, `adresse`, `telephone`, `code_societe`) VALUES
(1, NULL, NULL, NULL, ''),
(2, 'pizza1', 'rue de paris', '0636254558', 'DDES');

-- --------------------------------------------------------

--
-- Structure de la table `sous_familles`
--

CREATE TABLE IF NOT EXISTS `sous_familles` (
  `id_sous_famille` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_famille` int(11) DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sous_famille`),
  KEY `id_famille` (`id_famille`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `profil` int(11) DEFAULT NULL,
  `poste` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telephone_fixe` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telephone_portable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mail_personnel` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `code2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `profil_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_societe`,`id_user`),
  KEY `profil_id` (`profil_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `id_societe`, `code`, `nom`, `prenom`, `actif`, `profil`, `poste`, `telephone_fixe`, `telephone_portable`, `mail_personnel`, `adresse`, `code2`, `username`, `password`, `enabled`, `profil_id`) VALUES
(0, 1, 'aaaa', 'khaled', 'sghaier', b'1', 0, 'Gérant', '0135784125', '0636287889', 'belhadj.abdessalem@gmail.com', NULL, NULL, 'khaled', '0000', 0, NULL),
(13, 1, NULL, 'abdessalem', 'belhadj', NULL, NULL, NULL, NULL, '33612708258', NULL, '12 avenue des cottages', NULL, '', '', NULL, NULL),
(14, 1, NULL, 'sdfsd', 'sdfsdf', b'1', NULL, NULL, NULL, 'sdfsdf', NULL, 'sdfd', NULL, 'sdfds', 'dsds', NULL, 1),
(15, 1, NULL, 'toto', 'titi', b'1', NULL, NULL, NULL, '022232255', NULL, 'paris', NULL, 'ahhsd', '555sd5', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE IF NOT EXISTS `users_roles` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users_roles`
--

INSERT INTO `users_roles` (`id_role`, `role`, `username`) VALUES
(1, 'ROLE_USER', 'khaled');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE IF NOT EXISTS `villes` (
  `id_ville` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `cp` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_ville`,`id_societe`),
  KEY `id_societe` (`id_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `zone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_zone` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  PRIMARY KEY (`id_zone`,`id_societe`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `cdes`
--
ALTER TABLE `cdes`
  ADD CONSTRAINT `cdes_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `cdes_lines`
--
ALTER TABLE `cdes_lines`
  ADD CONSTRAINT `cdes_lines_ibfk_1` FOREIGN KEY (`id_cde`) REFERENCES `cdes` (`id_cde`),
  ADD CONSTRAINT `cdes_lines_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Contraintes pour la table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `compta`
--
ALTER TABLE `compta`
  ADD CONSTRAINT `compta_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `compta_lines`
--
ALTER TABLE `compta_lines`
  ADD CONSTRAINT `compta_lines_ibfk_1` FOREIGN KEY (`id_ope`) REFERENCES `compta` (`id_ope`);

--
-- Contraintes pour la table `etablissement`
--
ALTER TABLE `etablissement`
  ADD CONSTRAINT `etablissement_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `familles`
--
ALTER TABLE `familles`
  ADD CONSTRAINT `familles_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `livreurs`
--
ALTER TABLE `livreurs`
  ADD CONSTRAINT `livreurs_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `prix`
--
ALTER TABLE `prix`
  ADD CONSTRAINT `prix_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id_produit`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`),
  ADD CONSTRAINT `produits_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);

--
-- Contraintes pour la table `reference`
--
ALTER TABLE `reference`
  ADD CONSTRAINT `reference_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
  ADD CONSTRAINT `sous_familles_ibfk_1` FOREIGN KEY (`id_famille`) REFERENCES `familles` (`id_famille`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`profil_id`) REFERENCES `profils` (`id_profil`);

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
