-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 04 nov. 2020 à 13:02
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecotips`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `matricule` int(250) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`matricule`, `nom`, `prenom`, `adresse`) VALUES
(1, 'paul', 'J', '3 rue avion');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(250) NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `tag` varchar(250) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `titre`, `description`, `tag`) VALUES
(1, 'Ecologie', 'Anti-polution/Renouvelable/Réchauffement climatique', 'Eco'),
(2, 'Tips', 'Méconnu mais utile', 'Tips'),
(3, 'Santé', 'Santé du corp', 'sante');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id_client` int(250) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `descriptif` varchar(250) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contenujeu`
--

DROP TABLE IF EXISTS `contenujeu`;
CREATE TABLE IF NOT EXISTS `contenujeu` (
  `iddujeu` int(250) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `nb_rep` int(250) NOT NULL,
  `bonne_rep` varchar(250) NOT NULL,
  PRIMARY KEY (`iddujeu`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contenujeu`
--

INSERT INTO `contenujeu` (`iddujeu`, `question`, `nb_rep`, `bonne_rep`) VALUES
(1, 'Où jeter ce mégot ?', 2, '1');

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

DROP TABLE IF EXISTS `jeu`;
CREATE TABLE IF NOT EXISTS `jeu` (
  `id_jeu` int(250) NOT NULL AUTO_INCREMENT,
  `titre` varchar(250) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `niv` varchar(250) NOT NULL,
  `id_cat` int(250) NOT NULL,
  PRIMARY KEY (`id_jeu`),
  KEY `id_cat` (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`id_jeu`, `titre`, `description`, `niv`, `id_cat`) VALUES
(1, 'Mégots dans la poubelle', 'Thibault a besoin de vous pour savoir si il doit jeter ses déchets dans la poubelle ou par terre.', '1', 1),
(2, 'Chauffage et climatisation', 'Confort optimal : 8°C d\'écart max avec la température extérieure', '2', 1),
(3, 'Eteindre tous les appareils électriques lorsque vous partez en vacance', 'L’électricité produite par combustion (fioul, gaz, charbon) produit des microparticules atmosphériques qui polluent l’air que nous respirons', '3', 1),
(4, 'Utiliser une ampoule LED plutôt qu\'une classique', 'Une ampoule LED offre avec une efficacité énergétique estimée à 80 % par rapport aux ampoules classiques. Ainsi, seulement 20 % de l\'énergie électrique est perdue et 80 % convertie en lumière. Ils sont très pratiques pour un style de vie sain', '1', 2),
(5, 'Débrancher les appareils électriques après fin d\'utilisation', 'L’électricité produite par combustion (fioul, gaz, charbon) produit des microparticules atmosphériques qui polluent l’air que nous respirons', '4', 1),
(6, 'Privilégier une lessive a basse température\r\n', 'L\'utilisation de la lessive a basse température (30°C) est plus économique, suffisant pour bien laver, la fibre du linge est bien protégé et c\'est écologique', '2', 2),
(7, 'Eau du Robinet', 'Privilégier l\'eau du robinet si celle-ci est potable à celle en bouteille cela évite d\'utiliser des bouteilles d\'eau en plastique', '5', 1),
(8, 'Bain ou douche', 'Privilégier l\'utilisation d\'une douche plutôt qu\'un bain, cela diminue donc l\'eau utiliser', '2', 2),
(9, 'Jetter tous dans les toilettes', 'Jeter n\'importe quoi dans les toilettes risque de boucher les canalisations, d\'obstruer les grilles de filtrage, de créer des débordements et de polluer la nature', '6', 1),
(10, 'Engrais naturel', 'Les engrais naturels améliorent la richesse du solSi les engrais chimiques permettent une croissance rapide des plantes et un résultat immédiat, ils détruisent rapidement le sol en tuant les micro-organismes qui y vivent. En libérant leurs apports plus lentement, les engrais naturels stimulent la vie micro-organique', '7', 1),
(11, 'Transport en commun', 'Les transports en commun contribuent à diminuer les émissions de gaz à effet de serre. Moins de voitures sur les routes équivaut à un environnement plus propre et plus sain pour tous', '8', 1),
(12, 'Marche ou vélo', 'Pour de cours trajet, privilégier le déplacement à la marche ou en vélo plutôt que la voiture, cela évite de poluer l\'athmosphere inutilement', '9', 1),
(13, 'Produit locaux/bio', 'Quand on achète des produits issus de l\'agriculture locale et cultivés de manière biologique, on peut avoir la certitude qu\'on n\'y décèlera aucune trace de pesticides, de résidus d\'antibiotiques, ou d\'OGM', '1', 3),
(14, 'Activité physique', 'Officiellement, des organismes comme l\'OMS estiment qu\'il faut au minimum pratiquer 150 minutes d\'activité physique modérée par semaine, soit environ 20-25 minutes par jour', '2', 3),
(15, 'Bien s\'hydrater', 'Les instituts de médecine recommandent aux hommes de boire quotidiennement environ 3 litres de boisson, et aux femmes 2,2 litres', '3', 3);

-- --------------------------------------------------------

--
-- Structure de la table `newtips`
--

DROP TABLE IF EXISTS `newtips`;
CREATE TABLE IF NOT EXISTS `newtips` (
  `id_tips` int(250) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  `prenom` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `titretips` varchar(250) NOT NULL,
  `descriptiontips` varchar(250) NOT NULL,
  PRIMARY KEY (`id_tips`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `newtips`
--

INSERT INTO `newtips` (`id_tips`, `nom`, `prenom`, `email`, `titretips`, `descriptiontips`) VALUES
(1, 'zegfzerge', 'rgerg', 'ergerg', 'adfazefzef', 'zefzefzef');

-- --------------------------------------------------------

--
-- Structure de la table `reponsejeu`
--

DROP TABLE IF EXISTS `reponsejeu`;
CREATE TABLE IF NOT EXISTS `reponsejeu` (
  `id_rep` int(250) NOT NULL AUTO_INCREMENT,
  `numrep` int(250) NOT NULL,
  `libelle` varchar(250) NOT NULL,
  `id_jeu` int(250) NOT NULL,
  PRIMARY KEY (`id_rep`),
  KEY `id_jeu` (`id_jeu`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(250) NOT NULL AUTO_INCREMENT,
  `identifiant` varchar(250) NOT NULL,
  `mdp` varchar(250) NOT NULL,
  `statut` varchar(250) NOT NULL COMMENT 'A ou U',
  `matricule` varchar(250) NOT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `identifiant`, `mdp`, `statut`, `matricule`) VALUES
(1, 'admin', '123', 'A', '1');

-- --------------------------------------------------------

--
-- Structure de la table `version`
--

DROP TABLE IF EXISTS `version`;
CREATE TABLE IF NOT EXISTS `version` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `num` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
