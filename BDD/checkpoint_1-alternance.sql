DROP DATABASE IF EXISTS checkpoint_1_alternance;
CREATE DATABASE IF NOT EXISTS checkpoint_1_alternance;
USE checkpoint_1_alternance;

CREATE TABLE IF NOT EXISTS `Recruteur` (
	`id` integer primary key NOT NULL,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Entreprise` (
	`id` integer primary key NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruteur_id` INTEGER NOT NULL UNIQUE,
FOREIGN KEY(`recruteur_id`) REFERENCES `Recruteur`(`id`) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS `Candidat` (
	`id` integer primary key NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`email` TEXT NOT NULL UNIQUE,
	`telephone` TEXT NOT NULL,
	`presentation` TEXT NOT NULL,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Offre` (
	`id` integer primary key NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`entreprise_id` INTEGER NOT NULL,
FOREIGN KEY(`entreprise_id`) REFERENCES `Entreprise`(`id`) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS `Candidature` (
	`id` integer primary key NOT NULL,
	`candidat_id` INTEGER NOT NULL,
	`offre_id` INTEGER NOT NULL,
FOREIGN KEY(`candidat_id`) REFERENCES `Candidat`(`id`) ON DELETE CASCADE,
FOREIGN KEY(`offre_id`) REFERENCES `Offre`(`id`) ON DELETE CASCADE
);

INSERT INTO `Recruteur` (`id`, `login`, `password`) VALUES
(1, 'recruteur1', 'pass1234'),
(2, 'recruteur2', 'pass5678'),
(3, 'recruteur3', 'pass91011');

INSERT INTO `Entreprise` (`id`, `name`, `description`, `recruteur_id`) VALUES
(1, 'Tech Innov', 'Entreprise spécialisée dans l\'innovation technologique', 1),
(2, 'Green Solutions', 'Solutions écologiques pour les entreprises', 2),
(3, 'Data Corp', 'Analyse et gestion de données', 3);

INSERT INTO `Candidat` (`id`, `firstname`, `lastname`, `email`, `telephone`, `presentation`, `login`, `password`) VALUES
(1, 'Alice', 'Dupont', 'alice.dupont@mail.com', '0601020304', 'Passionnée par les nouvelles technologies', 'aliceD', 'alicepass'),
(2, 'Bob', 'Martin', 'bob.martin@mail.com', '0612345678', 'Ingénieur en énergie renouvelable', 'bobM', 'bobpass'),
(3, 'Clara', 'Lemoine', 'clara.lemoine@mail.com', '0623456789', 'Spécialiste en data science', 'claraL', 'clarapass');

INSERT INTO `Offre` (`id`, `title`, `description`, `city`, `entreprise_id`) VALUES
(1, 'Développeur Full Stack', 'Développement d\'applications web et mobiles', 'Paris', 1),
(2, 'Ingénieur Énergie', 'Conception de solutions écologiques', 'Lyon', 2),
(3, 'Data Analyst', 'Analyse de données et création de rapports', 'Marseille', 3);

INSERT INTO `Candidature` (`id`, `candidat_id`, `offre_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 1, 3),
(5, 3, 1);

-- Toutes les offres d'emploi 
SELECT * FROM `Offre`;

-- Toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM `Offre`
WHERE `city` = 'Paris';

-- Les informations de tous candidats qui ont postulé à une offre précise
SELECT * FROM `Candidat` as c
JOIN Candidature as ca ON ca.candidat_id = c.id
WHERE ca.id = 1;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT * FROM `Candidat` as c
JOIN Candidature as ca ON ca.candidat_id = c.id
JOIN Offre as o ON ca.offre_id = o.id
JOIN Entreprise as e ON o.entreprise_id = e.id
WHERE e.id = 1;