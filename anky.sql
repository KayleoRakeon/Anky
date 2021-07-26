-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : Dim 25 juil. 2021 à 18:21
-- Version du serveur :  5.7.32
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `anky`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `cat`) VALUES
(1, 'Actualité'),
(2, 'Les plus spoilées'),
(3, 'Pour vous'),
(4, 'Nouveautés'),
(5, 'Mes favoris'),
(7, 'Mes séries bloquées');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210612205559', '2021-06-12 20:56:11', 43),
('DoctrineMigrations\\Version20210616213454', '2021-06-16 21:35:05', 103),
('DoctrineMigrations\\Version20210627192732', '2021-06-27 19:27:46', 66),
('DoctrineMigrations\\Version20210627192814', '2021-06-27 19:28:28', 42),
('DoctrineMigrations\\Version20210627193409', '2021-06-27 19:34:18', 176),
('DoctrineMigrations\\Version20210627194334', '2021-06-27 19:43:42', 116),
('DoctrineMigrations\\Version20210630083941', '2021-06-30 08:39:51', 388),
('DoctrineMigrations\\Version20210630095854', '2021-06-30 09:59:10', 231),
('DoctrineMigrations\\Version20210705164019', '2021-07-05 16:40:26', 157),
('DoctrineMigrations\\Version20210705165827', '2021-07-05 16:58:32', 90),
('DoctrineMigrations\\Version20210717131521', '2021-07-17 13:15:45', 138),
('DoctrineMigrations\\Version20210717135623', '2021-07-17 13:56:30', 206),
('DoctrineMigrations\\Version20210720134024', '2021-07-20 13:40:32', 95),
('DoctrineMigrations\\Version20210720141431', '2021-07-20 14:14:39', 46),
('DoctrineMigrations\\Version20210721091521', '2021-07-21 09:25:24', 93),
('DoctrineMigrations\\Version20210722100831', '2021-07-22 10:08:40', 80);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `gen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `gen`) VALUES
(1, 'Thriller'),
(3, 'Psychologique'),
(5, 'Drame'),
(6, 'Policier'),
(8, 'Fantastique'),
(9, 'Comédie');

-- --------------------------------------------------------

--
-- Structure de la table `lock_main`
--

CREATE TABLE `lock_main` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lock_main`
--

INSERT INTO `lock_main` (`id`, `title`, `text`) VALUES
(1, 'Accueil ChatBot Changé', 'Ceci est le texte d\'intro'),
(18, 'Présentation & Tutoriel', 'lorem'),
(19, 'Anky, qu\'est-ce que c\'est ?', 'lorem'),
(20, 'Tutoriels guidés', 'lorem'),
(21, 'Tutoriel', 'lorem'),
(22, 'Mon compte', 'lorem'),
(23, 'Mes informations', 'lorem'),
(24, 'Ma formule d\'abonnement', 'lorem'),
(25, 'Ma liste de mots bloqués', 'lorem'),
(26, 'Méthodes de blocage', 'lorem'),
(27, 'Bloquer des mots', 'lorem'),
(28, 'Ma formule d\'abonnement', 'lorem'),
(29, 'Paramètres du blocage', 'lorem'),
(30, 'Besoin d\'aide ?', 'lorem'),
(31, 'F.A.Q.', 'lorem'),
(32, 'Contacter le support', 'lorem');

-- --------------------------------------------------------

--
-- Structure de la table `lock_question`
--

CREATE TABLE `lock_question` (
  `id` int(11) NOT NULL,
  `main_id_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lock_question`
--

INSERT INTO `lock_question` (`id`, `main_id_id`, `question`, `link`) VALUES
(18, 1, 'Présentation & Tutoriels', '/lock/18'),
(19, 1, 'Mon compte', '/lock/22'),
(20, 1, 'Blocage anti-spoil', '/lock/26'),
(21, 1, 'Besoin d\'aide ?', '/lock/30'),
(22, 18, 'Anky, qu\'est-ce que c\'est ?', '/lock/19'),
(23, 18, 'Tutoriels guidés', '/lock/20'),
(24, 20, 'Tutoriel #1', '/lock/21'),
(25, 20, 'Tutoriel #2', '/lock/21'),
(26, 20, 'Tutoriel #ETC', '/lock/21'),
(27, 22, 'Mes informations', '/lock/23'),
(28, 22, 'Ma formule d\'abonnement', '/lock/24'),
(29, 22, 'Ma liste de mots bloqués', '/lock/25'),
(30, 26, 'Bloquer des mots', '/lock/27'),
(31, 26, 'Voir ma formule d\'abonnement', '/lock/28'),
(32, 26, 'Paramètres du blocage', '/lock/29'),
(33, 27, 'Aller sur la page pour bloquer des mots', '/'),
(34, 27, 'Tutoriel : Bloquer des mots', '/lock/21'),
(35, 30, 'Tutoriels guidés', '/lock/20'),
(36, 30, 'F.A.Q.', '/lock/31'),
(37, 30, 'Contacter le support', '/lock/32'),
(38, 31, 'Question fréquente #1', '/'),
(39, 31, 'Question fréquente #2', '/'),
(40, 31, 'Question fréquente #3', '/'),
(41, 31, 'Page F.A.Q.', '/'),
(42, 32, 'Formulaire de contact', '/');

-- --------------------------------------------------------

--
-- Structure de la table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashtag` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `publications`
--

INSERT INTO `publications` (`id`, `username`, `hashtag`, `post`) VALUES
(5, 'user001', '[\"rick\",\" morty\"]', 'Ceci est un post sur Wanda Vision'),
(6, 'user002', '[\"strangerthings\"]', 'Salut salut');

-- --------------------------------------------------------

--
-- Structure de la table `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` longtext COLLATE utf8mb4_unicode_ci,
  `resume` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `series`
--

INSERT INTO `series` (`id`, `nom`, `keywords`, `resume`, `image`) VALUES
(5, 'Wanda Vision', '[\"Wanda\",\"Vision\",\"Marvel\"]', 'Produite par les studios Marvel, “WandaVision” mélange le style des sitcoms classiques avec l\'univers Marvel. Wanda Maximoff (Elizabeth Olsen) et Vision (Paul Bettany), deux super-héros menant une vie des plus normales, commencent à se douter que celle-ci n\'est pas aussi parfaite qu’elle en a l\'air. Une nouvelle série réalisée par Matt Shakman avec Jac Shaeffer comme scénariste principale.', '60f9496b5b9b6.jpg'),
(16, 'Rick & Morty', '[\"Rick\",\"Morty\",\"AdultSwim\"]', 'Rick, chercheur brillant, mais porté sur la bouteille, emmène son petit-fils timoré Morty dans d\'autres mondes et dimensions où il lui fait vivre de folles escapades.', '60f948c0a97ce.jpg'),
(19, 'Stranger Things', '[\"Horreur\",\"Etrange\",\"Paranormal\",\"StrangerThings\"]', 'Quand un jeune garçon disparaît, une petite ville découvre une affaire mystérieuse, des expériences secrètes, des forces surnaturelles terrifiantes... et une fillette.', '60f9498f03a72.jpg'),
(22, 'Sweet Tooth', '[\"Sweet\",\"tooth\",\"sweettooth\",\"hybrides\",\"gus\",\"jappered\"]', 'Dans un monde post-apocalyptique rempli de dangers, une adorable créature mi-cerf, mi-garçon aspire à un nouveau départ aux côtés d\'un protecteur bourru.', '60f949edadeb0.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `series_categorie`
--

CREATE TABLE `series_categorie` (
  `series_id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `series_categorie`
--

INSERT INTO `series_categorie` (`series_id`, `categorie_id`) VALUES
(5, 1),
(5, 4),
(16, 3),
(16, 7),
(19, 2),
(19, 5),
(22, 1),
(22, 3);

-- --------------------------------------------------------

--
-- Structure de la table `series_genre`
--

CREATE TABLE `series_genre` (
  `series_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `series_genre`
--

INSERT INTO `series_genre` (`series_id`, `genre_id`) VALUES
(5, 8),
(5, 9),
(16, 9),
(19, 3),
(19, 8),
(22, 5),
(22, 8);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords_bloque` longtext COLLATE utf8mb4_unicode_ci,
  `series_bloque` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `keywords_bloque`, `series_bloque`) VALUES
(4, 'benjamin_admin@mail.com', '[\"ROLE_ADMIN\"]', '$2y$13$O5OVxMg7iQnuZojRYdji2Og0kDDzZmigbTbll75yLIn3zQNQXaWri', 'Pepito', '[]', '[]'),
(5, 'benjamin_user@mail.com', '[]', '$2y$13$pTYWARmvZF0QT3RAwrvc2.wtwaa8s3J5otJICk6L7PlNAmClMZIJe', 'Pepito', NULL, NULL),
(6, 'test@mail.com', '[]', '$2y$13$/q4HfQeKFKFOSvlt8GJbMuBZQH2iGBcFB9QGvqvFARPIb.22XJmNa', 'test', '[\"Rick\",\" Morty\",\" AdultSwim \",\"Horreur\",\" Etrange\",\" Netflix\",\" Paranormal\",\" Monstres\",\"StrangerThings\",\" Stranger\",\" Things\",\"test\",\"test2\",\"test3\"]', '[\"Rick & Moty\",\"Stranger Things\",\"test\"]'),
(7, 'nicuu@mail.com', '[]', '$2y$13$CEW024tnuzul9NKK2Gn5He/9t2H0Xiwjs9BNJ.Casvm7Czu9gCRxy', 'Oui', '[]', NULL),
(8, 'benjamin.burkarth@hotmail.com', '[]', '$2y$13$VnfUMkEbhI44eprClt/uzulHGQlM8NQpVb/Q26E9P.GRlsvn4M4eW', 'Benjy', '[\"Horreur\",\"Etrange\",\"Paranormal\",\"StrangerThings\",\"Wanda\",\"Vision\",\"Marvel\"]', '[\"Stranger Things\",\"Wanda Vision\"]'),
(9, 'mathis@mail.com', '[]', '$2y$13$XEbxKaeA7WmP2J5ZUiD1buYzqK8pUrv4juNB83FG/YbwYcLkjezdK', 'Gollum', '[]', '[]');

-- --------------------------------------------------------

--
-- Structure de la table `user_genre`
--

CREATE TABLE `user_genre` (
  `user_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_genre`
--

INSERT INTO `user_genre` (`user_id`, `genre_id`) VALUES
(4, 1),
(4, 3),
(4, 5),
(4, 6),
(4, 8),
(4, 9),
(6, 1),
(6, 3),
(6, 5),
(6, 6),
(6, 8),
(6, 9),
(7, 3),
(7, 5),
(8, 8),
(9, 5),
(9, 8),
(9, 9);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lock_main`
--
ALTER TABLE `lock_main`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lock_question`
--
ALTER TABLE `lock_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5FF4C160DC182D11` (`main_id_id`);

--
-- Index pour la table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `series_categorie`
--
ALTER TABLE `series_categorie`
  ADD PRIMARY KEY (`series_id`,`categorie_id`),
  ADD KEY `IDX_D991203D5278319C` (`series_id`),
  ADD KEY `IDX_D991203DBCF5E72D` (`categorie_id`);

--
-- Index pour la table `series_genre`
--
ALTER TABLE `series_genre`
  ADD PRIMARY KEY (`series_id`,`genre_id`),
  ADD KEY `IDX_F6DFD7E55278319C` (`series_id`),
  ADD KEY `IDX_F6DFD7E54296D31F` (`genre_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_genre`
--
ALTER TABLE `user_genre`
  ADD PRIMARY KEY (`user_id`,`genre_id`),
  ADD KEY `IDX_6192C8A0A76ED395` (`user_id`),
  ADD KEY `IDX_6192C8A04296D31F` (`genre_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `lock_main`
--
ALTER TABLE `lock_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `lock_question`
--
ALTER TABLE `lock_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `lock_question`
--
ALTER TABLE `lock_question`
  ADD CONSTRAINT `FK_5FF4C160DC182D11` FOREIGN KEY (`main_id_id`) REFERENCES `lock_main` (`id`);

--
-- Contraintes pour la table `series_categorie`
--
ALTER TABLE `series_categorie`
  ADD CONSTRAINT `FK_D991203D5278319C` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D991203DBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `series_genre`
--
ALTER TABLE `series_genre`
  ADD CONSTRAINT `FK_F6DFD7E54296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F6DFD7E55278319C` FOREIGN KEY (`series_id`) REFERENCES `series` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_genre`
--
ALTER TABLE `user_genre`
  ADD CONSTRAINT `FK_6192C8A04296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6192C8A0A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;