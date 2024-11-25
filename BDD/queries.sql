-- Active: 1732531466391@@127.0.0.1@3306
PRAGMA foreign_keys = ON;

CREATE TABLE Recruiters (
    recruiter_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    login TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
    );

CREATE TABLE Companies (
    company_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    recruiter_id INTEGER NOT NULL,
    name TEXT NOT NULL,
    description TEXT,
    FOREIGN KEY (recruiter_id) REFERENCES Recruiters (recruiter_id) ON DELETE CASCADE
);

CREATE TABLE Offers (
    offer_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    company_id INTEGER NOT NULL,
    job_title TEXT NOT NULL,
    description TEXT,
    city TEXT,
    FOREIGN KEY (company_id) REFERENCES Companies (company_id) ON DELETE CASCADE
);

CREATE TABLE Candidates (
    candidate_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    login TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    name TEXT,
    firstname TEXT,
    email TEXT UNIQUE,
    phone_number TEXT,
    presentation TEXT
);

CREATE TABLE Applications (
    application_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    candidate_id INTEGER NOT NULL,
    offer_id INTEGER NOT NULL,
    application_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (candidate_id) REFERENCES Candidates (candidate_id) ON DELETE CASCADE,
    FOREIGN KEY (offer_id) REFERENCES Offers (offer_id) ON DELETE CASCADE
);
