CREATE TABLE IF NOT EXISTS `candidate_offers` (
	`id` INTEGER NOT NULL,
	`candidate_id` INTEGER NOT NULL,
	`job_id` INTEGER NOT NULL,
FOREIGN KEY(`candidate_id`) REFERENCES `candidate`(`id`),
FOREIGN KEY(`job_id`) REFERENCES `job_offers`(`id`)
);
CREATE TABLE IF NOT EXISTS `job_offers` (
	`id` INTEGER NOT NULL,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`company_name` TEXT NOT NULL,
	`company_description` TEXT NOT NULL,
FOREIGN KEY(`id`) REFERENCES `job_offers`(`recruiter_id`)
);
CREATE TABLE IF NOT EXISTS `candidate` (
	`id` INTEGER NOT NULL,
	`login` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`firstname` TEXT NOT NULL,
	`phone_number` INTEGER NOT NULL,
	`presentation` TEXT NOT NULL
);