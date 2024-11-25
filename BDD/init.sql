DROP TABLE IF EXISTS candidate;
CREATE TABLE IF NOT EXISTS candidate 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	login VARCHAR(20) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	phone VARCHAR(20) NOT NULL,
	user_description VARCHAR(300) NOT NULL
);

DROP TABLE IF EXISTS recruiter;
CREATE TABLE IF NOT EXISTS recruiter 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	login VARCHAR(15) NOT NULL UNIQUE,
	password VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS company;
CREATE TABLE IF NOT EXISTS company 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name VARCHAR(50) NOT NULL,
	company_description VARCHAR(300) NOT NULL,
	recruiter_id INTEGER NOT NULL,
	FOREIGN KEY (recruiter_id) REFERENCES recruiter(id)
);

DROP TABLE IF EXISTS ad;
CREATE TABLE ad 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	job_title VARCHAR(100) NOT NULL,
	job_description TEXT NOT NULL,
	city VARCHAR(50) NOT NULL,
	company_id INTEGER NOT NULL,
	FOREIGN KEY (company_id) REFERENCES company(id)
);

DROP TABLE IF EXISTS job_application;
CREATE TABLE job_application 
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	candidate_id INTEGER NOT NULL,
	ad_id INTEGER NOT NULL,
	FOREIGN KEY (candidate_id) REFERENCES candidate(id),
	FOREIGN KEY (ad_id) REFERENCES ad(id)
);

DELETE FROM candidate;
DELETE FROM recruiter;
DELETE FROM company;
DELETE FROM ad;
DELETE FROM job_application;

INSERT INTO candidate (login, password, last_name, first_name, email, phone, user_description) 
VALUES 
("candidate1", "passwordC1", "Dupont", "Louis", "louis_dupont@gmail.com", "0601020304", "Je suis un candidat motivé"),
("candidate2", "passwordC2", "Durand", "Pierre", "pierre_durant@gmail.com", "0601020304", "Je suis un candidat très motivé"),
("candidate3", "passwordC3", "Duchemin", "Marie", "marie_duchemin@gmail.com", "0601020304", "Je suis une candidate encore plus motivée");

INSERT INTO recruiter (login, password)
VALUES 
("recruiter1", "passwordR1"),
("recruiter2", "passwordR2"),
("recruiter3", "passwordR3");

INSERT INTO company (name, company_description, recruiter_id)
VALUES 
("Company1", "Description de la company1", 1),
("Company2", "Description de la company2", 2),
("Company3", "Description de la company3", 3);

INSERT INTO ad (job_title, job_description, city, company_id)
VALUES 
("Développeur web", "Description du poste de développeur web", "Paris", 1),
("Développeur mobile", "Description du poste de développeur mobile", "Lyon", 2),
("Développeur fullstack", "Description du poste de développeur fullstack", "Marseille", 3);

INSERT INTO job_application (candidate_id, ad_id)
VALUES 
(1, 1),
(2, 2),
(3, 3);

