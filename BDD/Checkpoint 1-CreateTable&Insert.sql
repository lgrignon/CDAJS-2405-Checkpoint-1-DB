CREATE TABLE IF NOT EXISTS `users` (
    `id` integer primary key NOT NULL UNIQUE,
    `login` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    `recruiter` REAL NOT NULL DEFAULT '0'
);

CREATE TABLE IF NOT EXISTS `profils` (
    `id` integer primary key NOT NULL UNIQUE,
    `name` TEXT NOT NULL,
    `firstname` TEXT NOT NULL,
    `email` TEXT NOT NULL,
    `phone` TEXT NOT NULL,
    `presentation` TEXT,
    `user_id` INTEGER NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);

CREATE TABLE IF NOT EXISTS `enterprises` (
    `id` integer primary key NOT NULL UNIQUE,
    `name` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `user_id` INTEGER NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`)
);

CREATE TABLE IF NOT EXISTS `offers` (
    `id` integer primary key NOT NULL UNIQUE,
    `title` TEXT NOT NULL,
    `description` TEXT NOT NULL,
    `city` TEXT NOT NULL,
    `enterprise_id` INTEGER NOT NULL,
    FOREIGN KEY(`enterprise_id`) REFERENCES `enterprises`(`id`)
);

CREATE TABLE IF NOT EXISTS `applications` (
    `id` integer primary key NOT NULL UNIQUE,
    `user_id` INTEGER NOT NULL,
    `offers_id` INTEGER NOT NULL,
    `created_at` TEXT NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`offers_id`) REFERENCES `offers`(`id`)
);

INSERT INTO `users` (`id`, `login`, `password`, `recruiter`) VALUES
(1, 'john_doe', 'password123', 0),
(2, 'jane_smith', 'mypassword', 1),
(3, 'alice_wonder', 'securepass', 0),
(4, 'bob_martin', 'password456', 1);

INSERT INTO `profils` (`id`, `name`, `firstname`, `email`, `phone`, `presentation`, `user_id`) VALUES
(1, 'Doe', 'John', 'john.doe@example.com', '0123456789', 'Développeur backend', 1),
(2, 'Smith', 'Jane', 'jane.smith@example.com', '0987654321', 'Recruteur spécialisé dans les technologies.', 2),
(3, 'Wonder', 'Alice', 'alice.wonder@example.com', '0172836458', 'Chef de projet dans le secteur du numérique.', 3),
(4, 'Martin', 'Bob', 'bob.martin@example.com', '0123445567', 'Consultant en sécurité informatique.', 4);

INSERT INTO `enterprises` (`id`, `name`, `description`, `user_id`) VALUES
(1, 'TechCorp', 'Entreprise spécialisée dans le développement de logiciels.', 1),
(2, 'Innovatech', 'Start-up innovante dans le domaine des technologies cloud.', 2),
(3, 'CyberSecure', 'Consulting en cybersécurité pour les entreprises.', 3);

INSERT INTO `offers` (`id`, `title`, `description`, `city`, `enterprise_id`) VALUES
(1, 'Développeur Backend', 'Développement de nouvelles fonctionnalités pour des systèmes internes.', 'Paris', 1),
(2, 'Ingénieur Cloud', 'Gestion des infrastructures cloud pour les clients.', 'Lyon', 2),
(3, 'Consultant Cybersécurité', 'Audit de sécurité pour des entreprises du secteur bancaire.', 'Marseille', 3);

INSERT INTO `applications` (`id`, `user_id`, `offers_id`, `created_at`) VALUES
(1, 1, 1, '2024-11-25 09:00:00'),
(2, 2, 2, '2024-11-25 10:30:00'),
(3, 3, 3, '2024-11-25 12:45:00'),
(4, 4, 1, '2024-11-25 15:00:00');