
CREATE TABLE IF NOT EXISTS candidate (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(100) UNIQUE NOT NULL,
    login VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    biography VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) UNIQUE NOT NULL,
    description VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS offers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(100),
    company_id INTEGER NOT NULL,
    FOREIGN KEY (company_id) REFERENCES company(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS recruiter (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    company_id INTEGER NOT NULL,
    FOREIGN KEY (company_id) REFERENCES company(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS candidacy (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    offer_id INTEGER NOT NULL,
    candidate_id INTEGER NOT NULL,
    FOREIGN KEY (offer_id) REFERENCES offers(id) ON DELETE CASCADE,
    FOREIGN KEY (candidate_id) REFERENCES candidate(id) ON DELETE CASCADE
);

INSERT INTO company (name, description) VALUES ('prune', 'L’agence de développement pour retrouver du temps et de la liberté');
INSERT INTO recruiter (login, password, company_id) VALUES ('bastien', 'password', 0);
INSERT INTO offers (name, description, company_id) VALUES ('Développeur full stack', 'Django', 0);
INSERT INTO offers (name, description, company_id) VALUES ('Développeur full stack', 'NextJS / GraphQL', 0);
INSERT INTO offers (name, description, company_id) VALUES ('Développeur full stack', 'Laravel', 0);
INSERT INTO offers (name, description, company_id) VALUES ('Développeur mobile', 'React Native', 0);
INSERT INTO candidate (first_name, last_name, email, telephone, login, password) VALUES ('Mattéo', 'Donatelli', 'matteo@gmail.com', '0605524094', 'matteo_dntl', 'motdepasse');
INSERT INTO candidacy (offer_id, candidate_id) VALUES (0, 0);
INSERT INTO candidacy (offer_id, candidate_id) VALUES (1, 0);
INSERT INTO candidacy (offer_id, candidate_id) VALUES (3, 0);