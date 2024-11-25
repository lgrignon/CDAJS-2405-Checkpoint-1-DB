CREATE TABLE Recruiter (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE Company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    recruiter_id INTEGER NOT NULL,
    FOREIGN KEY (recruiter_id) REFERENCES Recruiter(id)
);

CREATE TABLE JobOffer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    job_title VARCHAR(255) NOT NULL,
    job_description TEXT,
    job_city VARCHAR(100),
    company_id INTEGER NOT NULL,
    FOREIGN KEY (company_id) REFERENCES Company(id)
);

CREATE TABLE Candidate (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    mail VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    introduction TEXT
);

CREATE TABLE Application (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    job_offer_id INTEGER NOT NULL,
    candidate_id INTEGER NOT NULL,
    application_date DATE,
    FOREIGN KEY (job_offer_id) REFERENCES JobOffer(id),
    FOREIGN KEY (candidate_id) REFERENCES Candidate(id)
);
