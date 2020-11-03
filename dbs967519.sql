-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : db5001129948.hosting-data.io
-- Généré le : mar. 03 nov. 2020 à 14:00
-- Version du serveur :  5.7.30-log
-- Version de PHP : 7.0.33-0+deb9u10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dbs967519`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `matricule` int(250) NOT NULL,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`matricule`, `nom`, `prenom`, `adresse`) VALUES
(1, 'paul', 'J', '3 rue avion');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(250) NOT NULL,
  `titre` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `tag` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `titre`, `description`, `tag`) VALUES
(1, 'Ecologie', 'Anti-polution/Renouvelable', 'Eco'),
(2, 'Bonne maniere', 'Respect', 'Bonne maniere');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id_client` int(250) NOT NULL,
  `identifiant` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `descriptif` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenujeu`
--

CREATE TABLE `contenujeu` (
  `iddujeu` int(250) NOT NULL,
  `question` varchar(250) NOT NULL,
  `nb_rep` int(250) NOT NULL,
  `bonne_rep` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contenujeu`
--

INSERT INTO `contenujeu` (`iddujeu`, `question`, `nb_rep`, `bonne_rep`) VALUES
(1, 'Où jeter ce mégot ?', 2, '1');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `id_jeu` int(250) NOT NULL,
  `titre` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `niv` varchar(250) NOT NULL,
  `id_cat` int(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id_jeu`, `titre`, `description`, `niv`, `id_cat`) VALUES
(1, 'Poubelle ou sol...', 'Thibault a besoin de vous pour savoir si il doit jeter ses déchets dans la poubelle ou par terre.', '1', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reponsejeu`
--

CREATE TABLE `reponsejeu` (
  `id_rep` int(250) NOT NULL,
  `numrep` int(250) NOT NULL,
  `libelle` varchar(250) NOT NULL,
  `id_jeu` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponsejeu`
--

INSERT INTO `reponsejeu` (`id_rep`, `numrep`, `libelle`, `id_jeu`) VALUES
(1, 1, 'Poubelle', 1),
(2, 2, 'Au sol', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(250) NOT NULL,
  `identifiant` varchar(250) NOT NULL,
  `mdp` varchar(250) NOT NULL,
  `statut` varchar(250) NOT NULL COMMENT 'A ou U',
  `matricule` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `identifiant`, `mdp`, `statut`, `matricule`) VALUES
(1, 'PaulJ', 'paulj', 'A', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `contenujeu`
--
ALTER TABLE `contenujeu`
  ADD PRIMARY KEY (`iddujeu`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`id_jeu`),
  ADD KEY `id_cat` (`id_cat`);

--
-- Index pour la table `reponsejeu`
--
ALTER TABLE `reponsejeu`
  ADD PRIMARY KEY (`id_rep`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `matricule` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_client` int(250) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contenujeu`
--
ALTER TABLE `contenujeu`
  MODIFY `iddujeu` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `jeu`
--
ALTER TABLE `jeu`
  MODIFY `id_jeu` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reponsejeu`
--
ALTER TABLE `reponsejeu`
  MODIFY `id_rep` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
