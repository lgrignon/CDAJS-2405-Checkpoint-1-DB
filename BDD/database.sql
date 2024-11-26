-- Active: 1732531466391@@127.0.0.1@3306

DROP TABLE IF EXISTS "recruiters";

CREATE TABLE recruiters (
    recruiter_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    login VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
    );

DROP TABLE IF EXISTS "companies";

CREATE TABLE companies (
    company_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    recruiter_id INTEGER NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    FOREIGN KEY (recruiter_id) REFERENCES Recruiters (recruiter_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS "offers";

CREATE TABLE offers (
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    company_id INTEGER NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    introduction TEXT,
    city VARCHAR(255),
    FOREIGN KEY (company_id) REFERENCES Companies (company_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS "candidates";

CREATE TABLE candidates (
    candidate_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    login VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    firstname VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(15),
    presentation TEXT
);

DROP TABLE IF EXISTS "applications";

CREATE TABLE applications (
    application_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    candidate_id INTEGER NOT NULL,
    offer_id INTEGER NOT NULL,
    application_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (candidate_id) REFERENCES Candidates (candidate_id) ON DELETE CASCADE,
    FOREIGN KEY (offer_id) REFERENCES Offers (offer_id) ON DELETE CASCADE
);
