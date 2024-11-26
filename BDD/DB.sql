CREATE TABLE IF NOT EXISTS `account` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`passwordSha256` TEXT NOT NULL,
	`type` INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `candidate` (
	`id` integer primary key NOT NULL UNIQUE,
	`id_account` INTEGER NOT NULL,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`phonenumber` TEXT NOT NULL,
	`presentation` TEXT NOT NULL,
	`email` TEXT NOT NULL,
FOREIGN KEY(`id_account`) REFERENCES `account`(`id`)
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` integer primary key NOT NULL UNIQUE,
	`id_account` INTEGER NOT NULL,
	`id_company` INTEGER,
FOREIGN KEY(`id_account`) REFERENCES `account`(`id`),
FOREIGN KEY(`id_company`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `job_offer` (
	`id` integer primary key NOT NULL UNIQUE,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` INTEGER NOT NULL,
	`id_company` INTEGER NOT NULL,
FOREIGN KEY(`id_company`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidate_job_offer_applications` (
	`id_candidate` INTEGER NOT NULL,
	`id_job_offer` INTEGER NOT NULL,
	PRIMARY KEY(id_candidate, id_job_offer),
FOREIGN KEY(`id_candidate`) REFERENCES `candidate`(`id`),
FOREIGN KEY(`id_job_offer`) REFERENCES `job_offer`(`id`)
);