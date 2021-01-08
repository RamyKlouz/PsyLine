-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 08 jan. 2021 à 02:42
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `medicament`
--

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

DROP TABLE IF EXISTS `panier`;
CREATE TABLE IF NOT EXISTS `panier` (
  `idp` int(11) NOT NULL AUTO_INCREMENT,
  `idclient` int(11) NOT NULL,
  `nbproduit` int(11) NOT NULL,
  `totale` float NOT NULL,
  PRIMARY KEY (`idp`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`idp`, `idclient`, `nbproduit`, `totale`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(3, 3, 1, 3009),
(4, 4, 1, 300);

-- --------------------------------------------------------

--
-- Structure de la table `panier_ligne`
--

DROP TABLE IF EXISTS `panier_ligne`;
CREATE TABLE IF NOT EXISTS `panier_ligne` (
  `idlp` int(11) NOT NULL AUTO_INCREMENT,
  `idpanier` int(11) NOT NULL,
  `idproduit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prixunitaire` float NOT NULL,
  PRIMARY KEY (`idlp`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `panier_ligne`
--

INSERT INTO `panier_ligne` (`idlp`, `idpanier`, `idproduit`, `quantite`, `prixunitaire`) VALUES
(82, 3, 34, 1, 3009),
(76, 4, 33, 1, 300);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `reference` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` float NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`reference`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`reference`, `nom`, `quantite`, `prix`, `image`) VALUES
(34, 'produit2', 600, 3009, 'image/images.jpg'),
(35, 'produi3', 100, 1000, 'image/images.jpg'),
(33, 'test', 500, 300, 'image/images.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `matricule`, `motdepasse`, `role`) VALUES
(1, 'Saidi', 'Arbi', 'Arbi', 'b14361404c078ffd549c03db443c3fede2f3e534d73f78f77301ed97d4a436a9fd9db05ee8b325c0ad36438b43fec8510c204fc1c1edb21d0941c00e9e2c1ce2', 'Operateur'),
(2, 'Ben Saad', 'Rami', 'Rami', 'b14361404c078ffd549c03db443c3fede2f3e534d73f78f77301ed97d4a436a9fd9db05ee8b325c0ad36438b43fec8510c204fc1c1edb21d0941c00e9e2c1ce2', 'Superviseur'),
(3, 'test', 'test', 'test', 'test', 'test'),
(4, 'tounsi', 'dorra', 'dorra', 'dorra', 'Super Admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
