-- Création des tables
CREATE TABLE IF NOT EXISTS `recruiter` (
    `id` INTEGER PRIMARY KEY,
    `login` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    `company_name` TEXT NOT NULL,
    `company_description` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `candidate` (
    `id` INTEGER PRIMARY KEY,
    `login` TEXT NOT NULL,
    `email` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    `lastname` TEXT NOT NULL,
    `firstname` TEXT NOT NULL,
    `phone_number` INTEGER NOT NULL,
    `presentation` TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS `job_offers` (
    `id` INTEGER PRIMARY KEY,
    `title` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `city` TEXT NOT NULL,
    `recruiter_id` INTEGER NOT NULL,
    FOREIGN KEY (`recruiter_id`) REFERENCES `recruiter` (`id`)
);

CREATE TABLE IF NOT EXISTS `candidate_offers` (
    `id` INTEGER PRIMARY KEY,
    `candidate_id` INTEGER NOT NULL,
    `job_id` INTEGER NOT NULL,
    FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
    FOREIGN KEY (`job_id`) REFERENCES `job_offers` (`id`)
);

-- Insertion de données fictives
INSERT INTO `recruiter` (`id`, `login`, `password`, `company_name`, `company_description`)
VALUES
(1, 'recruiter1', 'password1', 'Tech Innovators', 'We specialize in cutting-edge software development.'),
(2, 'recruiter2', 'password2', 'AI Solutions', 'A company focused on AI and machine learning.'),
(3, 'recruiter3', 'password3', 'Creative Designs', 'A design agency creating beautiful user experiences.');

INSERT INTO `candidate` (`id`, `login`, `email`, `password`, `lastname`, `firstname`, `phone_number`, `presentation`)
VALUES
(1, 'johndoe', 'john.doe@example.com', 'password123', 'Doe', 'John', 123456789, 'Passionate software developer.'),
(2, 'janedoe', 'jane.doe@example.com', 'password456', 'Doe', 'Jane', 987654321, 'Experienced project manager with a focus on AI.'),
(3, 'alexsmith', 'alex.smith@example.com', 'password789', 'Smith', 'Alex', 555555555, 'Creative UI/UX designer.');

INSERT INTO `job_offers` (`id`, `title`, `description`, `city`, `recruiter_id`)
VALUES
(1, 'Software Engineer', 'Develop and maintain web applications.', 'New York', 1),
(2, 'Project Manager', 'Lead and manage AI-based projects.', 'San Francisco', 2),
(3, 'UI/UX Designer', 'Design intuitive user interfaces.', 'Los Angeles', 3);

INSERT INTO `candidate_offers` (`id`, `candidate_id`, `job_id`)
VALUES
(1, 1, 1),  -- John Doe postule pour l'offre 1 (Software Engineer)
(2, 2, 2),  -- Jane Doe postule pour l'offre 2 (Project Manager)
(3, 3, 3);  -- Alex Smith postule pour l'offre 3 (UI/UX Designer)
