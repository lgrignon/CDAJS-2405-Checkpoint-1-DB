DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user  (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	email VARCHAR(100) NOT NULL
	password VARCHAR(180) NOT NULL,
	roles VARCHAR(50),
);
insert into user (id, email, password, roles) values (1, 'radshed0@fastcompany.com', '$2a$04$zaUuo1vm1.lf2BHWMT3ueOZCCIiQnM1pLLr5nibedzdKTHcfogpqq', '[{ROLE_COMPANY}]');
insert into user (id, email, password, roles) values (2, 'bboost1@gmail.com', '$2a$04$K/yAn0re/sVMl1fWasZ6x.MDdfRMaF9O3UI4H0HDabU1JuxxeGcSa', '[{ROLE_CANDIDATE}]');
insert into user (id, email, password, roles) values (3, 'amaylam2@gmail.com', '$2a$04$dLiQYBMIN8U1fDL4Gz5GDu63vkOJALovtZxQ6vthC9a/ZB.FRSryC', '[{ROLE_CANDIDATE}]');

DROP TABLE IF EXISTS recruiter;
CREATE TABLE IF NOT EXISTS recruiter (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	user_id INT,
	firstname VARCHAR(255),
	lastname VARCHAR(255)
);
insert into recruiter (id, user_id, firstname, lastname) values (1, 1, 'Agnès', 'Bewlay');

DROP TABLE IF EXISTS company;
CREATE TABLE IF NOT EXISTS company (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	recruiter_id INT,
	name VARCHAR(255),
	description VARCHAR(800)
);
insert into company (id, recruiter_id, name, description) values (1, 1, 'Google', 'Google is a global technology leader specializing in internet-related services and products, including online advertising, search engines, cloud computing, software, and hardware. Founded in 1998, Google has revolutionized the way people access and interact with information, with tools like Google Search, Gmail, YouTube, and Google Maps. Known for its innovative approach, the company is committed to organizing the world’s information and making it universally accessible and useful.');

DROP TABLE IF EXISTS offer
CREATE TABLE IF NOT EXISTS offer (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	company_id INT,
	title VARCHAR(255),
	description VARCHAR(1200),
	city VARCHAR(800)
);
insert into offer (id, company_id, title, description, city) values (1, 1, 'Product Owner', 'The Product Owner is responsible for defining and managing the product roadmap. They gather user requirements, prioritize features, and ensure the successful achievement of goals.', 'Los Angeles');
insert into offer (id, company_id, title, description, city) values (2, 1, 'Project Manager (MOA)', 'The Project Manager (MOA) coordinates projects related to the business and users. They define requirements, write specifications, and ensure alignment between proposed solutions and user expectations.', 'Boston');
insert into offer (id, company_id, title, description, city) values (3, 1, 'SCRUM Master', 'The SCRUM Master facilitates the implementation of Agile methodology within teams. They ensure effective communication and remove obstacles to guarantee the efficiency of sprints.', 'New York');

DROP TABLE IF EXISTS candidate
CREATE TABLE IF NOT EXISTS candidate (
	id INT,
	user_id INT,
	firstname VARCHAR(255),
	lastname VARCHAR(255),
	phone_number VARCHAR(12),
	presentation VARCHAR(800)
);
insert into candidate (id, user_id, firstname, lastname, phone_number, presentation) values (1, 2, 'Aloïs', 'Conville', '456-125-4118', 'Aloïs Conville is a highly skilled and dedicated professional with extensive experience in IT. With a proven track record of success in benchmarking, Aloïs consistently demonstrates excellent problem-solving abilities and a strong commitment to delivering high-quality results. Known for their strategic thinking and collaborative approach, Aloïs excels in dynamic environments and is always eager to contribute innovative solutions to drive success.');
insert into candidate (id, user_id, firstname, lastname, phone_number, presentation) values (2, 3, 'Annotés', 'Eilhertsen', '574-232-6187', 'Annotés Eilhertsen is a results-driven individual with a strong background in AI. Their expertise in automatisation has enabled them to achieve significant milestones in previous roles. Annotés is known for their attention to detail, adaptability, and exceptional communication skills. With a focus on continuous improvement and team collaboration, Annotés thrives in fast-paced settings and is committed to making a positive impact in every project they undertake.');