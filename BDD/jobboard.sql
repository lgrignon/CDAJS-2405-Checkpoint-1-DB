CREATE TABLE IF NOT EXISTS `recruiters` (
	`id` integer primary key NOT NULL UNIQUE,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `offers` (
	`id` integer primary key NOT NULL UNIQUE,
	`titre` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`city` TEXT NOT NULL,
	`entreprise_id` INTEGER NOT NULL,
FOREIGN KEY(`entreprise_id`) REFERENCES `entreprises`(`id`)
);
CREATE TABLE IF NOT EXISTS `candidates` (
	`id` integer primary key NOT NULL UNIQUE,
	`firstname` TEXT NOT NULL,
	`lastname` TEXT NOT NULL,
	`email` TEXT NOT NULL,
	`phone` TEXT NOT NULL,
	`presentation` TEXT NOT NULL,
	`login` TEXT NOT NULL,
	`password` TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS `entreprises` (
	`id` integer primary key NOT NULL UNIQUE,
	`name` TEXT NOT NULL,
	`description` TEXT NOT NULL,
	`recruiteur_id` INTEGER NOT NULL,
FOREIGN KEY(`recruiteur_id`) REFERENCES `recruiters`(`id`)
);
CREATE TABLE IF NOT EXISTS `applications` (
	`id` integer primary key NOT NULL UNIQUE,
	`candidate_id` INTEGER NOT NULL,
	`offer_id` INTEGER NOT NULL,
	`application_date` TEXT NOT NULL,
	`application_status` REAL NOT NULL,
FOREIGN KEY(`candidate_id`) REFERENCES `candidates`(`id`),
FOREIGN KEY(`offer_id`) REFERENCES `offers`(`id`)
);

-- Insert into recruiters
INSERT INTO recruiters (id, login, password) VALUES
(1, 'recruiter1', 'password123'),
(2, 'recruiter2', 'securepass456'),
(3, 'recruiter3', 'recruiter789'),
(4, 'recruiter4', 'passadmin321'),
(5, 'recruiter5', 'managerpwd654');

-- Insert into entreprises
INSERT INTO entreprises (id, name, description, recruiteur_id) VALUES
(1, 'TechCorp', 'Leading tech solutions.', 1),
(2, 'GreenEnergy', 'Sustainable energy provider.', 2),
(3, 'MediHealth', 'Innovative healthcare services.', 3),
(4, 'EduNation', 'Educational software development.', 4),
(5, 'FinElite', 'Financial advisory firm.', 5);

-- Insert into offers
INSERT INTO offers (id, titre, description, city, entreprise_id) VALUES
(1, 'Software Developer', 'Develop scalable software.', 'Paris', 1),
(2, 'Energy Consultant', 'Advise on green energy.', 'Lyon', 2),
(3, 'Healthcare Analyst', 'Analyze healthcare data.', 'Marseille', 3),
(4, 'Education Specialist', 'Design educational content.', 'Nice', 4),
(5, 'Financial Advisor', 'Provide financial guidance.', 'Bordeaux', 5);

-- Insert into candidates
INSERT INTO candidates (id, firstname, lastname, email, phone, presentation, login, password) VALUES
(1, 'Alice', 'Doe', 'alice.doe@example.com', '1234567890', 'Eager to contribute to innovative projects.', 'alice01', 'alicepass'),
(2, 'Bob', 'Smith', 'bob.smith@example.com', '0987654321', 'Passionate about tech and problem-solving.', 'bobsmith', 'bobsecure'),
(3, 'Charlie', 'Brown', 'charlie.b@example.com', '1122334455', 'Excited to learn and grow.', 'charlieb', 'charlie123'),
(4, 'Diana', 'Johnson', 'diana.j@example.com', '2233445566', 'Experienced in project management.', 'dianaJ', 'dianaSecure'),
(5, 'Eve', 'Williams', 'eve.w@example.com', '3344556677', 'Creative and results-driven.', 'evew', 'evepass456');

-- Insert into applications
INSERT INTO applications (id, candidate_id, offer_id, application_date, application_status) VALUES
(1, 1, 1, '2024-11-01', 1.0),
(2, 2, 2, '2024-11-05', 0.5),
(3, 3, 3, '2024-11-10', 0.0),
(4, 4, 4, '2024-11-15', 0.8),
(5, 5, 5, '2024-11-20', 1.0);
