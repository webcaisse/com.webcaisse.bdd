-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 07 Novembre 2014 à 22:45
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `webcaisse`
--

-- --------------------------------------------------------

--
-- Structure de la table `cdes`
--

CREATE TABLE IF NOT EXISTS `cdes` (
`id_cde` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `date_cde` datetime DEFAULT NULL,
  `date_prevue` datetime DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  `mode` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `montant` double DEFAULT NULL,
  `livreur` int(11) DEFAULT NULL,
  `id_session` int(11) NOT NULL,
  `paye` bit(1) DEFAULT NULL,
  `reg_esp` double DEFAULT NULL,
  `reg_cb` double DEFAULT NULL,
  `reg_tr` double DEFAULT NULL,
  `reg_ch` double DEFAULT NULL,
  `reg_fi` double DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `commentaire` varchar(1000) DEFAULT NULL,
  `etat` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `cdes_lines`
--

CREATE TABLE IF NOT EXISTS `cdes_lines` (
`id_line` int(11) NOT NULL,
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
  `details` varchar(1000) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE IF NOT EXISTS `societe` (
`id_societe` int(11) NOT NULL,
  `nom` char(50) NOT NULL,
  `adresse` char(100) DEFAULT NULL,
  `telephone` char(12) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `societe`
--

INSERT INTO `societe` (`id_societe`, `nom`, `adresse`, `telephone`) VALUES
(1, 'pizza la routande', '3 rue de la villette', '0636287889');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
`id_client` int(11) NOT NULL,
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
  `code3` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compta`
--

CREATE TABLE IF NOT EXISTS `compta` (
`id_ope` int(11) NOT NULL,
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
  `id_echeance` int(11) DEFAULT NULL
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
  `prix_ttc` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

CREATE TABLE IF NOT EXISTS `etablissement` (
`id_etab` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `nom_etab` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adresse` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `telephone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cp` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `siret` char(25) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `familles`
--

CREATE TABLE IF NOT EXISTS `familles` (
`id_famille` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `composants` bit(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `familles`
--

INSERT INTO `familles` (`id_famille`, `id_societe`, `libelle`, `actif`, `composants`, `num`) VALUES
(1, 1, 'Pizzas', b'1', NULL, NULL),
(2, 1, 'Entrées', b'1', NULL, NULL),
(3, 1, 'Boissons', b'1', NULL, NULL),
(4, 1, 'Desserts', b'1', NULL, NULL),
(5, 1, 'Menus', b'1', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livreurs`
--

CREATE TABLE IF NOT EXISTS `livreurs` (
`id_livreur` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `adresse` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `portable` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `nss` char(15) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `prix`
--

CREATE TABLE IF NOT EXISTS `prix` (
`id_prix` int(11) NOT NULL,
  `prix` double NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Contenu de la table `prix`
--

INSERT INTO `prix` (`id_prix`, `prix`, `id_produit`) VALUES
(1, 10, 1),
(2, 13, 1),
(3, 22, 1),
(4, 9, 2),
(5, 12, 2),
(6, 20, 2),
(7, 9, 4),
(8, 12, 4),
(9, 20, 4),
(10, 7, 5),
(11, 9, 5),
(12, 14, 5),
(13, 7, 6),
(14, 9, 6),
(15, 14, 6),
(16, 8, 7),
(17, 10, 7),
(18, 15, 7),
(19, 8, 8),
(20, 10, 8),
(21, 15, 8),
(22, 8.5, 9),
(23, 13.5, 9),
(24, 18.5, 9),
(25, 8, 10),
(26, 10, 10),
(27, 15, 10),
(28, 8, 11),
(29, 10, 11),
(30, 15, 11),
(31, 8, 12),
(32, 10, 12),
(33, 15, 12),
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
`id_produit` int(11) NOT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `menu` bit(1) DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `id_famille` int(11) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `qte` int(11) DEFAULT NULL,
  `compo_details` char(50) DEFAULT NULL,
  `offre` char(10) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`id_produit`, `libelle`, `menu`, `actif`, `id_famille`, `description`, `num`, `qte`, `compo_details`, `offre`) VALUES
(1, 'Brésilienne', NULL, b'1', 0, NULL, NULL, NULL, NULL, NULL),
(2, 'Anacapri', NULL, NULL, 1, 'Crème fraîche, Fromage, Gorgonzola, Jambon, Ananas', NULL, NULL, NULL, NULL),
(4, 'Formaggi', NULL, NULL, 1, 'Crème fraîche, Fromage, Mozzarella, Gorgonzola, Co', NULL, NULL, NULL, NULL),
(5, 'Marguerite', NULL, NULL, 1, 'Tomate, Fromage, Origan, Olives', NULL, NULL, NULL, NULL),
(6, 'Napolitaine', NULL, NULL, 1, 'Tomate, Fromage, Anchois, Origan, Olives', NULL, NULL, NULL, NULL),
(7, 'Sicilienne', NULL, NULL, 1, 'TTomate, Fromage, Anchois, Câpres, Origan, Olives', NULL, NULL, NULL, NULL),
(8, 'Espagnole', NULL, NULL, 1, 'Tomate, Fromage, Chorizo, Origan, Olives', NULL, NULL, NULL, NULL),
(9, '4 saisons', NULL, NULL, 1, 'Tomate, Fromage, Artichauts, Poivrons, Origan, Oli', NULL, NULL, NULL, NULL),
(10, 'Neptune', NULL, NULL, 1, 'Tomate, Fromage, Thon, Ail, Persillade, Olives', NULL, NULL, NULL, NULL),
(11, 'Paysanne', NULL, NULL, 1, 'Tomate, Fromage, Aubergines, Origan, Olives', NULL, NULL, NULL, NULL),
(12, 'Chèvre', NULL, NULL, 1, 'Tomate, Fromage, Chèvre, Lardons, Origan, Olives', NULL, NULL, NULL, NULL),
(13, 'Italienne', NULL, NULL, 1, 'Tomate, Mozzarella, Tomates fraîches, Basilic, Ori', NULL, NULL, NULL, NULL),
(14, 'Reine', NULL, NULL, 1, 'TTomate, Fromage, Jambon, Champignons frais, Origa', NULL, NULL, NULL, NULL),
(15, 'Roquefort', NULL, NULL, 1, 'Tomate, Fromage, Roquefort, Jambon, Origan, Olives', NULL, NULL, NULL, NULL),
(16, 'Armenienne', NULL, NULL, 1, 'Tomate, Fromage, Boeuf, Origan, Olives', NULL, NULL, NULL, NULL),
(17, 'Mexicaine', NULL, NULL, 1, 'Tomate, Fromage, Champignons Frais, Poivrons, Poul', NULL, NULL, NULL, NULL),
(18, 'Normande', NULL, NULL, 1, 'Crème fraîche, Oignons, Lardons, Fromage, Origan,', NULL, NULL, NULL, NULL),
(19, 'Océane', NULL, NULL, 1, 'Tomate, Fromage, Fruits de mer, Champignons frais,', NULL, NULL, NULL, NULL),
(20, 'Orientale', NULL, NULL, 1, 'Tomate, Fromage, Merguez, Champignons frais, Poivr', NULL, NULL, NULL, NULL),
(21, '4 fromages', NULL, NULL, 1, 'Tomate, Cantal, Roquefort, Chèvre, Mozzarella, Bas', NULL, NULL, NULL, NULL),
(22, 'Hawaienne', NULL, NULL, 1, 'Crème fraîche, Fromage, Poulet, Ananas, Poivrons,', NULL, NULL, NULL, NULL),
(23, 'Saumon', NULL, NULL, 1, 'Tomate, Fromage, Saumon Fumé, Crème fraîche, Citro', NULL, NULL, NULL, NULL),
(24, 'Indienne', NULL, NULL, 1, 'Crème fraîche, Fromage, Poulet Tandory, Champignon', NULL, NULL, NULL, NULL),
(25, 'Libanaise', NULL, NULL, 1, 'Tomate, Fromage, Viande de kebab, Oignons, Tomates', NULL, NULL, NULL, NULL),
(26, 'Tunisienne', NULL, NULL, 1, 'Tomate, Fromage, Thon, Pommes de terre, Câpres, OE', NULL, NULL, NULL, NULL),
(27, 'Salade verte', NULL, NULL, 2, '', NULL, NULL, NULL, NULL),
(28, 'Salade verte tomates', NULL, NULL, 2, '', NULL, NULL, NULL, NULL),
(29, 'Salade bergère', NULL, NULL, 2, 'Salade verte, Tomates, Roquefort, Cerneaux de noix', NULL, NULL, NULL, NULL),
(30, 'Salade caesar', NULL, NULL, 2, 'Salade verte, Poulet pané, Croûtons, Copeaux de pa', NULL, NULL, NULL, NULL),
(31, 'Salade mediterranée', NULL, NULL, 2, 'Salade verte, Tomates, Cocktail de Fruits de Mer,', NULL, NULL, NULL, NULL),
(32, 'Salade mozzarella', NULL, NULL, 2, 'Salade verte, Tomates, Mozzarella, Basilic, Olives', NULL, NULL, NULL, NULL),
(33, 'Salade chèvre', NULL, NULL, 2, 'Salade verte, Tomates, Chèvre, Pignons, Croûtons,', NULL, NULL, NULL, NULL),
(34, 'Salade exotique', NULL, NULL, 2, 'Salade verte, Tomates, Poulet, Jambon, Emmental, M', NULL, NULL, NULL, NULL),
(35, 'Salade niçoise', NULL, NULL, 2, 'Salade verte, Tomates, Thon, Oignon, OEufs, Anchoi', NULL, NULL, NULL, NULL),
(36, 'Badoit', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(37, 'Bière Heineken', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(38, 'Bière Kronenbourg', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(39, 'Bouteille Coca Cola 1,5 L', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(40, 'Coca Cola', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(41, 'Coca Cola light', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(42, 'Coca Cola zero', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(43, 'Eau minérale 50cl', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(44, 'Ice tea pêche', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(45, 'Oasis tropical', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(46, 'Orangina', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(47, 'Schweppes agrumes', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(48, 'Vin Bordeaux', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(49, 'Vin Rosé', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(50, 'Vin Côte de Provence', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(51, 'Gâteau au chocolat', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(52, 'Tarte au citron', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(53, 'Tarte aux pommes', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(54, 'Pizza Nutella 26cm', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(55, 'Choco cookies', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(56, 'Noix de macadamia', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(57, 'Pralinés - caramel', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(58, 'Vanille -cookies', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(59, 'Brownies', NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL),
(60, 'MENU ECO Pizza ', NULL, NULL, 5, 'Pizza normale (marguerite), tarte et boisson 33cl', NULL, NULL, NULL, NULL),
(61, 'MENU ECO Salade ', NULL, NULL, 5, 'Salade, tarte et boisson 33cl (sauf alcool)', NULL, NULL, NULL, NULL),
(62, 'MENU SOLO', NULL, NULL, 5, 'Pizza normale (sauf Texane et Américaine), tarte e', NULL, NULL, NULL, NULL),
(63, 'MENU DUO', NULL, NULL, 5, 'Pizza Mega (sauf Texane et Américaine), 2 tartes e', NULL, NULL, NULL, NULL);

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
`id_ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id_user` int(11) NOT NULL,
  `date_ouerture` datetime DEFAULT NULL,
  `date_fermeture` datetime DEFAULT NULL,
  `chiffre_aff` double DEFAULT NULL,
  `etat` char(1) DEFAULT NULL,
`id_session` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `sous_familles`
--

CREATE TABLE IF NOT EXISTS `sous_familles` (
`id_sous_famille` int(11) NOT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_famille` int(11) DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL,
  `num` int(11) DEFAULT NULL
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
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id_user`, `id_societe`, `code`, `nom`, `prenom`, `actif`, `profil`, `poste`, `telephone_fixe`, `telephone_portable`, `mail_personnel`, `adresse`, `code2`, `username`, `password`, `enabled`) VALUES
(0, 1, 'aaaa', 'Administrateur', NULL, b'1', 0, 'Gérant', '0135784125', '0636287889', 'belhadj.abdessalem@gmail.com', NULL, NULL, '', '', 0),
(1, 1, 'aaaa', 'Administrateur', NULL, b'0', 0, 'Gérant', '0636212245', '0222455878', 'belhadj.abdessalem@gmail.com', NULL, NULL, '', '', 0),
(2, 1, 'aaaa', 'Administrateur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', 0),
(4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abdess', 'abdess', 0),
(5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abb', 'abb', 1);

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE IF NOT EXISTS `villes` (
  `id_ville` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL,
  `cp` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `libelle` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `actif` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `zone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `id_zone` int(11) NOT NULL,
  `id_societe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cdes`
--
ALTER TABLE `cdes`
 ADD PRIMARY KEY (`id_cde`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `cdes_lines`
--
ALTER TABLE `cdes_lines`
 ADD PRIMARY KEY (`id_line`), ADD KEY `id_cde` (`id_cde`), ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
 ADD PRIMARY KEY (`id_client`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `compta`
--
ALTER TABLE `compta`
 ADD PRIMARY KEY (`id_ope`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `compta_lines`
--
ALTER TABLE `compta_lines`
 ADD PRIMARY KEY (`id_line`), ADD KEY `id_ope` (`id_ope`);

--
-- Index pour la table `etablissement`
--
ALTER TABLE `etablissement`
 ADD PRIMARY KEY (`id_etab`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `familles`
--
ALTER TABLE `familles`
 ADD PRIMARY KEY (`id_famille`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `livreurs`
--
ALTER TABLE `livreurs`
 ADD PRIMARY KEY (`id_livreur`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- Index pour la table `prix`
--
ALTER TABLE `prix`
 ADD PRIMARY KEY (`id_prix`), ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
 ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `reference`
--
ALTER TABLE `reference`
 ADD PRIMARY KEY (`id_ref`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
 ADD PRIMARY KEY (`id_session`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `societe`
--
ALTER TABLE `societe`
 ADD PRIMARY KEY (`id_societe`);

--
-- Index pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
 ADD PRIMARY KEY (`id_sous_famille`), ADD KEY `id_famille` (`id_famille`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_societe`,`id_user`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
 ADD PRIMARY KEY (`id_ville`,`id_societe`), ADD KEY `id_societe` (`id_societe`);

--
-- Index pour la table `zones`
--
ALTER TABLE `zones`
 ADD PRIMARY KEY (`id_zone`,`id_societe`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `cdes`
--
ALTER TABLE `cdes`
MODIFY `id_cde` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cdes_lines`
--
ALTER TABLE `cdes_lines`
MODIFY `id_line` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `compta`
--
ALTER TABLE `compta`
MODIFY `id_ope` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `etablissement`
--
ALTER TABLE `etablissement`
MODIFY `id_etab` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `familles`
--
ALTER TABLE `familles`
MODIFY `id_famille` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `livreurs`
--
ALTER TABLE `livreurs`
MODIFY `id_livreur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prix`
--
ALTER TABLE `prix`
MODIFY `id_prix` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
MODIFY `id_produit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT pour la table `reference`
--
ALTER TABLE `reference`
MODIFY `id_ref` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `session`
--
ALTER TABLE `session`
MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `societe`
--
ALTER TABLE `societe`
MODIFY `id_societe` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
MODIFY `id_sous_famille` int(11) NOT NULL AUTO_INCREMENT;
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
-- Contraintes pour la table `reference`
--
ALTER TABLE `reference`
ADD CONSTRAINT `reference_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `session`
--
ALTER TABLE `session`
ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `sous_familles`
--
ALTER TABLE `sous_familles`
ADD CONSTRAINT `sous_familles_ibfk_1` FOREIGN KEY (`id_famille`) REFERENCES `familles` (`id_famille`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
ADD CONSTRAINT `villes_ibfk_1` FOREIGN KEY (`id_societe`) REFERENCES `societe` (`id_societe`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
