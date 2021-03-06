-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 06 Décembre 2016 à 10:49
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion des notes`
--

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `lv_id` int(11) NOT NULL,
  `lv_nom` varchar(20) NOT NULL,
  `lv_prenom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `eleve`
--

INSERT INTO `eleve` (`lv_id`, `lv_nom`, `lv_prenom`) VALUES
(2, 'Bonjoura', 'dqsd'),
(3, 'bonjour', 'nicolas'),
(4, 'Bonjoura', 'nicolas'),
(8, 'Nicolas', 'Vallantin'),
(9, 'bfdhbs', 'bhjdbs');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `mtr_id` int(11) NOT NULL,
  `mtr_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matiere`
--

INSERT INTO `matiere` (`mtr_id`, `mtr_name`) VALUES
(1, 'Math'),
(2, 'dsds'),
(3, 'dsds'),
(4, 'Matheedf');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

CREATE TABLE `note` (
  `nt_id` int(11) NOT NULL,
  `nt_lv_id` int(11) DEFAULT NULL,
  `nt_mtr_id` int(11) DEFAULT NULL,
  `nt_note` int(11) DEFAULT NULL,
  `nt_coeff` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `note`
--

INSERT INTO `note` (`nt_id`, `nt_lv_id`, `nt_mtr_id`, `nt_note`, `nt_coeff`) VALUES
(1, 3, 1, 10, 3),
(2, 9, 4, 15, 10),
(3, 8, 1, 10, 3),
(4, 8, 1, 10, 3),
(5, 8, 1, 10, 3),
(6, 8, 1, 15, 3),
(7, 8, 1, 14, 3),
(8, 8, 1, 14, 3),
(9, 8, 1, 14, 3),
(10, 8, 1, 14, 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`lv_id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`mtr_id`);

--
-- Index pour la table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`nt_id`),
  ADD KEY `nt_mtr_id` (`nt_mtr_id`),
  ADD KEY `nt_lv_id` (`nt_lv_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `lv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `mtr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `note`
--
ALTER TABLE `note`
  MODIFY `nt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
