-- phpMyAdmin SQL Dump
-- version 2.6.1
-- http://www.phpmyadmin.net
-- 
-- Serveur: localhost
-- Généré le : Samedi 21 Mai 2022 à 22:03
-- Version du serveur: 4.1.9
-- Version de PHP: 4.3.10
-- 
-- Base de données: `gestion`
-- 

-- --------------------------------------------------------

-- 
-- Structure de la table `abonne`
-- 

CREATE TABLE `abonne` (
  `Cin` varchar(8) NOT NULL default '',
  `Nom` varchar(25) NOT NULL default '',
  `Pre` varchar(25) NOT NULL default '',
  `Classe` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`Cin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `abonne`
-- 

INSERT INTO `abonne` VALUES ('01111111', 'Alya', 'Ibtissem', '4SI1');
INSERT INTO `abonne` VALUES ('03333333', 'Barhoumi', 'Mohamed', '3SC2');
INSERT INTO `abonne` VALUES ('04444444', 'Dhouibi', 'Malek', '2TI');
INSERT INTO `abonne` VALUES ('05555555', 'Nouir', 'Afef', '3SC1');

-- --------------------------------------------------------

-- 
-- Structure de la table `emprunt`
-- 

CREATE TABLE `emprunt` (
  `Ncin` varchar(8) NOT NULL default '',
  `NumL` varchar(5) NOT NULL default '',
  `DateEmp` date NOT NULL default '0000-00-00',
  PRIMARY KEY  (`Ncin`,`NumL`,`DateEmp`),
  KEY `Ncin` (`Ncin`,`NumL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `emprunt`
-- 


-- --------------------------------------------------------

-- 
-- Structure de la table `livre`
-- 

CREATE TABLE `livre` (
  `NumL` varchar(5) NOT NULL default '',
  `TypeL` varchar(25) NOT NULL default '',
  `TitreL` varchar(35) NOT NULL default '',
  `NbExpDispo` int(11) NOT NULL default '0',
  PRIMARY KEY  (`NumL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Contenu de la table `livre`
-- 

INSERT INTO `livre` VALUES ('A1111', 'ALGORITHMIQUE', 'Les structures de controles', 2);
INSERT INTO `livre` VALUES ('A2222', 'ALGORITHMIQUE', 'Pascal', 4);
INSERT INTO `livre` VALUES ('B1111', 'BASE DE DONNEES', 'Access 2007', 1);
INSERT INTO `livre` VALUES ('M1111', 'MULTIMEDIA', 'Flash MX', 9);
INSERT INTO `livre` VALUES ('W1111', 'DEVELOPPEMENT WEB', 'JavaScript pour debutant', 19);
        