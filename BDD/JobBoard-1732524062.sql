-- Création des tables
CREATE TABLE IF NOT EXISTS recruiters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS candidates (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    phone TEXT,
    resume TEXT
);

CREATE TABLE IF NOT EXISTS companies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT NOT NULL,
    recruiter_id INTEGER NOT NULL,
    FOREIGN KEY(recruiter_id) REFERENCES recruiters(id)
);

CREATE TABLE IF NOT EXISTS offers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT NOT NULL,
    city TEXT NOT NULL,
    company_id INTEGER NOT NULL,
    FOREIGN KEY(company_id) REFERENCES companies(id)
);

CREATE TABLE IF NOT EXISTS applications (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    candidate_id INTEGER NOT NULL,
    offer_id INTEGER NOT NULL,
    FOREIGN KEY(candidate_id) REFERENCES candidates(id),
    FOREIGN KEY(offer_id) REFERENCES offers(id)
);

-- Insertion de données fictives
INSERT INTO recruiters (login, password) VALUES
('recruiter1', 'recruiter11234'),
('recruiter2', 'recruiter21234'),
('recruiter3', 'recruiter31234');

INSERT INTO candidates (login, password, first_name, last_name, email, phone, resume) VALUES
('candidate1', 'candidate11234', 'Joe', 'Doe', 'joe.doe@email.com', '0123456789', 'Développeur web Full-Stack passionné'),
('candidate2', 'candidate21234', 'Jean', 'Paul', 'jean.paul@email.com', '9876543210', 'Designer UX/UI créatif'),
('candidate3', 'candidate31234', 'Guillaume', 'Sepulveda', 'guillaume.sepulveda@email.com', '0123498765', 'Développeur Svelte/Node junior');

INSERT INTO companies (name, description, recruiter_id) VALUES
('Dixea', 'Startup innovante en développement web et IA', 1),
('Wild Code School', 'Ecole digitale', 2),
('WebSolutions', 'Agence web full-stack', 3);

INSERT INTO offers (title, description, city, company_id) VALUES
('Développeur Full-Stack', 'Rejoignez notre équipe pour développer des applications web innovantes', 'Paris', 1),
('Développeur Front Svelte', 'Analysez des données massives pour aider nos clients à prendre de meilleures décisions', 'Lyon', 2),
('Designer UX/UI', 'Créez des interfaces utilisateur intuitives et esthétiques', 'Bordeaux', 3);

INSERT INTO applications (candidate_id, offer_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 2),
(3, 3);
