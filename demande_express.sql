-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 mars 2021 à 09:23
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `demande_express`
--

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE `demande` (
  `id` int(11) NOT NULL,
  `ref` varchar(20) NOT NULL,
  `date` varchar(220) NOT NULL,
  `id_materiel` varchar(20) NOT NULL,
  `id_service` varchar(20) NOT NULL,
  `quantite` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `demande`
--

INSERT INTO `demande` (`id`, `ref`, `date`, `id_materiel`, `id_service`, `quantite`) VALUES
(4, 'dsdsds', '04-03-2021', 'B1223', '56TD', 5000),
(5, 'sqsqsqsqsqsqs', '04-03-2021', 'B1223', '56TD', 5000),
(6, 'sqsqs', '04-03-2021', 'B1223', '56TD', 200);

-- --------------------------------------------------------

--
-- Structure de la table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `type` varchar(220) NOT NULL,
  `id_executeur` varchar(220) NOT NULL,
  `id_cible` varchar(220) NOT NULL,
  `valeur_cible` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `materiel`
--

CREATE TABLE `materiel` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(5) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `quantite` float NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `materiel`
--

INSERT INTO `materiel` (`id`, `identifiant`, `designation`, `quantite`, `type`) VALUES
(7, 'fdfdf', 'cvcvcvcvc', 4518.27, 'sgdshgds'),
(8, 'sdghs', 'sdqghdnxbwcvchwc', 7874.36, 'sdgdhsgds'),
(9, 'B1223', 'SIRA', 500, 'Picty'),
(10, 'l566', 'dazaz', 1220, 'fez');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(220) NOT NULL,
  `nom` varchar(220) NOT NULL,
  `prenom` varchar(220) NOT NULL,
  `genre` varchar(220) NOT NULL,
  `telephone` varchar(220) NOT NULL,
  `mail` varchar(220) NOT NULL,
  `poste` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `identifiant`, `nom`, `prenom`, `genre`, `telephone`, `mail`, `poste`) VALUES
(2, '56TD', 'DTYJD', 'JEJB 6', 'Z6Z', '79556', 'DYJ', 'YDTJ'),
(3, 'sqsqsq', 'sqsqsq', 'sqsqsq', 'sqsqsq', 'sqsqs', 'sqsqsq', 'sqsqsqs'),
(4, '16338-D', 'RANDRIANANTENAINA', 'Jean JAcques Augustin', 'Homme', '0345451367', 'Nantenaina', 'Informaticien'),
(5, '555', 'zzrzr', 'zrzr2', 'Homme', 'zrrzrzr2z', 'zerzeze5ze', 'zer');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `demande`
--
ALTER TABLE `demande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `materiel`
--
ALTER TABLE `materiel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `demande`
--
ALTER TABLE `demande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `materiel`
--
ALTER TABLE `materiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
