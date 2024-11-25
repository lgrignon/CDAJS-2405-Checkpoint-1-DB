CREATE TABLE recruiter (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    recruiter_id INTEGER UNIQUE NOT NULL REFERENCES recruiter(id) ON DELETE CASCADE
);

CREATE TABLE offer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    city VARCHAR(255) NOT NULL,
    company_id INTEGER NOT NULL REFERENCES company(id) ON DELETE CASCADE
);

CREATE TABLE applicant (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    introduction TEXT
);

CREATE TABLE application (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    offer_id INTEGER NOT NULL REFERENCES offer(id) ON DELETE CASCADE,
    applicant_id INTEGER NOT NULL REFERENCES applicant(id) ON DELETE CASCADE,
    UNIQUE (offer_id, applicant_id)
);
