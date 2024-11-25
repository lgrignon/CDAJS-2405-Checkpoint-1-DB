CREATE TABLE IF NOT EXISTS `employer` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `Company`(`id`)
);
CREATE TABLE IF NOT EXISTS `job` (
	`id` integer primary key NOT NULL UNIQUE,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
	`candidates` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `Company`(`id`),
FOREIGN KEY(`candidates`) REFERENCES `application`(`candidate_id`)
);
CREATE TABLE IF NOT EXISTS `Candidate` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`email` TEXT NOT NULL UNIQUE,
	`phone` TEXT NOT NULL,
	`description` TEXT
);
CREATE TABLE IF NOT EXISTS `Company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`employer_id` INTEGER NOT NULL,
	`jobs` INTEGER NOT NULL,
FOREIGN KEY(`employer_id`) REFERENCES `employer`(`id`),
FOREIGN KEY(`jobs`) REFERENCES `job`(`id`)
);
CREATE TABLE IF NOT EXISTS `application` (
	`id` integer primary key NOT NULL UNIQUE,
	`job_id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
FOREIGN KEY(`job_id`) REFERENCES `job`(`id`),
FOREIGN KEY(`candidate_id`) REFERENCES `Candidate`(`id`)
);