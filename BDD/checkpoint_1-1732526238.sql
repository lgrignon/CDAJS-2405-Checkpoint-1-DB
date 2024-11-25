CREATE TABLE IF NOT EXISTS `Recruteur` (
	`id` integer primary key NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Entreprise` (
	`id` integer primary key NOT NULL,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruteur_id` INTEGER NOT NULL,
FOREIGN KEY(`recruteur_id`) REFERENCES `Recruteur`(`id`)
);
CREATE TABLE IF NOT EXISTS `Candidat` (
	`id` integer primary key NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`telephone` TEXT NOT NULL,
	`presentation` TEXT NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `Offre` (
	`id` integer primary key NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`entreprise_id` INTEGER NOT NULL,
FOREIGN KEY(`entreprise_id`) REFERENCES `Entreprise`(`id`)
);
CREATE TABLE IF NOT EXISTS `Candidature` (
	`id` integer primary key NOT NULL,
	`candidat_id` INTEGER NOT NULL,
	`offre_id` INTEGER NOT NULL,
FOREIGN KEY(`candidat_id`) REFERENCES `Candidat`(`id`),
FOREIGN KEY(`offre_id`) REFERENCES `Offre`(`id`)
);