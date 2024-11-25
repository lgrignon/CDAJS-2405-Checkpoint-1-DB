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