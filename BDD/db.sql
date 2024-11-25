CREATE DATABASE IF NOT EXISTS wcs;
USE wcs;

CREATE TABLE IF NOT EXISTS `recruiter` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL UNIQUE,
	`password` TEXT NOT NULL UNIQUE,
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `company` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruiter_id` INTEGER NOT NULL,
FOREIGN KEY(`recruiter_id`) REFERENCES `recruiter`(`id`)
);
CREATE TABLE IF NOT EXISTS `applicant` (
	`id` integer primary key NOT NULL UNIQUE,
	`first_name` TEXT NOT NULL,
	`last_name` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone` INTEGER NOT NULL,
	`about` TEXT NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL,
	`applications_id` INTEGER NOT NULL
);
CREATE TABLE IF NOT EXISTS `offer` (
	`id` integer primary key NOT NULL UNIQUE,
	`title` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`company_id` INTEGER NOT NULL,
FOREIGN KEY(`company_id`) REFERENCES `company`(`id`)
);
CREATE TABLE IF NOT EXISTS `applications` (
	`id` integer primary key NOT NULL UNIQUE,
	`applicant_id` INTEGER NOT NULL,
	`offer_id` INTEGER NOT NULL,
FOREIGN KEY(`applicant_id`) REFERENCES `applicant`(`id`),
FOREIGN KEY(`offer_id`) REFERENCES `offer`(`id`)
);


INSERT INTO `recruiter` (`id`, `login`, `password`, `company_id`) VALUES
(1, 'recruiter1', 'password123', 1),
(2, 'recruiter2', 'password456', 2),
(3, 'recruiter3', 'password789', 3),
(4, 'recruiter4', 'password012', 4),
(5, 'recruiter5', 'password345', 5),
(6, 'recruiter6', 'password678', 6),
(7, 'recruiter7', 'password999', 7);


INSERT INTO `company` (`id`, `name`, `description`, `recruiter_id`) VALUES
(1, 'TechCorp', 'A leading tech company', 1),
(2, 'HealthPlus', 'Healthcare services provider', 2),
(3, 'EduWorld', 'Educational services provider', 3),
(4, 'FinServe', 'Financial services provider', 4),
(5, 'RetailHub', 'Retail services provider', 5),
(6, 'GoodCorner', 'Find what you want', 6),
(7, 'GreenEarth', 'Eco-friendly products', 7);



INSERT INTO `applicant` (`id`, `first_name`, `last_name`, `email`, `phone`, `about`, `login`, `password`, `applications_id`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1234567890, 'Experienced software developer', 'johndoe', 'password789', 1),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 2345678901, 'Project manager with 5 years of experience', 'janesmith', 'password012', 2),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 3456789012, 'Data analyst with 3 years of experience', 'alicejohnson', 'password345', 3),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 4567890123, 'Marketing specialist', 'bobbrown', 'password678', 4),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 5678901234, 'HR manager', 'charliedavis', 'password901', 5),
(6, 'David', 'Wilson', 'davidw@gmail.com', 6789012345, 'Experienced software developer', 'davidwil', 'password965', 6),
(7, 'Eve', 'White', 'eve@hot,fr', 7890123456, 'Project manager with 5 years of experience', 'evewhite', 'password123', 7),
(8, 'Frank', 'Black', 'fblack', 8901234567, 'Data analyst with 3 years of experience', 'frankblack', 'password456', 8),
(9, 'Grace', 'Green', 'gracegreen', 9012345678, 'Marketing specialist', 'gracegreen', 'password789', 9),
(10, 'Helen', 'Brown', 'helenbrown', 1234567890, 'HR manager', 'helenbrown', 'password012', 10);

INSERT INTO `offer` (`id`, `title`, `description`, `city`, `company_id`) VALUES
(1, 'Software Engineer', 'Develop and maintain software applications', 'Paris', 1),
(2, 'Project Manager', 'Manage software development projects', 'San Francisco', 2),
(3, 'Data Analyst', 'Analyze data and generate reports', 'Paris', 1),
(4, 'Marketing Specialist', 'Develop marketing strategies', 'Los Angeles', 4),
(5, 'HR Manager', 'Manage HR activities', 'Houston', 5),
(6, 'Developer', 'Develop and maintain software applications', 'Paris', 1),
(7, 'Project owner', 'Manage software development projects', 'San Francisco', 2),
(8, 'Data engineer', 'Analyze data and generate reports', 'Paris', 1),
(9, 'Marketing junior', 'Develop marketing strategies', 'Los Angeles', 4),
(10, 'HR assistant', 'Manage HR activities', 'Paris', 5);


INSERT INTO `applications` (`id`, `applicant_id`, `offer_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 5),
(6, 6, 3),
(7, 7, 3),
(8, 8, 7),
(9, 9, 7),
(10, 10, 1),
(11, 2, 1),
(12, 3, 2),
(13, 4, 3),
(14, 5, 4),
(15, 6, 5),
(16, 7, 1),
(17, 8, 7),
(18, 9, 8),
(19, 10, 9),
(20, 1, 10);