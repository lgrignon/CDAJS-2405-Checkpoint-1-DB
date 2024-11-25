-- Tables creation
CREATE TABLE IF NOT EXISTS employer (
	id integer primary key NOT NULL UNIQUE,
	login TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS company (
	id integer primary key NOT NULL UNIQUE,
	name TEXT NOT NULL,
	description TEXT,
	employer_id INTEGER NOT NULL,
FOREIGN KEY(employer_id) REFERENCES employer(id)
);
CREATE TABLE IF NOT EXISTS candidate (
	id integer primary key NOT NULL UNIQUE,
	login TEXT NOT NULL UNIQUE,
	password TEXT NOT NULL,
	lastname TEXT NOT NULL,
	firstname TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE,
	phone TEXT NOT NULL,
	description TEXT
);
CREATE TABLE IF NOT EXISTS job (
	id integer primary key NOT NULL UNIQUE,
	title TEXT NOT NULL,
	description TEXT,
	city TEXT NOT NULL,
	company_id INTEGER NOT NULL,
FOREIGN KEY(company_id) REFERENCES company(id)
);


CREATE TABLE IF NOT EXISTS application (
	id integer primary key NOT NULL UNIQUE,
	job_id INTEGER NOT NULL,
	candidate_id INTEGER NOT NULL,
FOREIGN KEY(job_id) REFERENCES job(id),
FOREIGN KEY(candidate_id) REFERENCES candidate(id)
);

-- Insert datas into tables
INSERT INTO employer (login, password) VALUES
('lsentinella0', '$2a$04$BUQJi7PEJPGnJL2.Ktfig.SGV.X/UqaqqgF7k2Y2yeFmc0qR4i3H.'),
('plambart1', '$2a$04$qqb3k72raSb8MFKC3SzMN.dKe8ajfOEEZycMIwRN0HT9AnRaOL2yi'),
('dmeachen2', '$2a$04$x6o..AYmj5/m0qfkcckPI.lsKE6UCYaAPAjb.MhUZ2TbD./ErdG4a');

INSERT INTO company (name, employer_id) VALUES 
('AppCampus', 1),
('INKK', 2),
('UniPresta', 3);

INSERT INTO job (title, city, company_id) VALUES 
('Analog Circuit Design manager', 'Makata', 1),
('Environmental Specialist', 'Villa Presidente Frei, Ñuñoa, Santiago, Chile', 2),
('VP Product Management', 'Kumane', 3);

INSERT INTO candidate (login, password, last_name, first_name, email, phone) VALUES 
('tdonne0', '$2a$04$pEgQXSD8oELWuj5Ay.YcYurKvTwVN5c0BcIShe8DzNoN129IQmX5q', 'Donne', 'Todd', 'tdonne0@mayoclinic.com', '9389240304'),
('szorro1', '$2a$04$LALBmBYAyVC8FjlmuaRveuMDPolfvsr5gDHjAuHYg70iHEAlP.Qja', 'Zorro', 'Sean', 'szorro1@360.cn', '2292838848'),
('vmalafe2', '$2a$04$Ga/Ywog9z8Eeii7JTkjBBeSZCO/AQ7UJQussqYH6tj35rgNP9YgCK', 'Malafe', 'Vanny', 'vmalafe2@ibm.com', '8738871903');

INSERT INTO application (job_id, candidate_id) VALUES 
(1,2),
(3,1),
(1,3),
(3,3);
