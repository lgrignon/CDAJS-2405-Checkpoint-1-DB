CREATE TABLE IF NOT EXISTS recruiters (
	id INTEGER NOT NULL,
	login TEXT NOT NULL,
	password TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS candidates (
	id INTEGER NOT NULL,
	login TEXT NOT NULL,
	password TEXT NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email TEXT NOT NULL,
	phone_number TEXT NOT NULL,
	presentation_text TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS companies (
	id INTEGER NOT NULL,
	recruiter_id INTEGER NOT NULL,
	name TEXT NOT NULL,
	description TEXT NOT NULL,
FOREIGN KEY(recruiter_id) REFERENCES recruiters(id)
);
CREATE TABLE IF NOT EXISTS job_offers (
	id INTEGER NOT NULL,
	company_id INTEGER NOT NULL,
	title TEXT NOT NULL,
	description TEXT NOT NULL,
	city TEXT NOT NULL,
FOREIGN KEY(company_id) REFERENCES companies(id)
);
CREATE TABLE IF NOT EXISTS applications (
	id INTEGER NOT NULL,
	candidate_id INTEGER NOT NULL,
	job_offer_id INTEGER NOT NULL,
FOREIGN KEY(candidate_id) REFERENCES candidates(id),
FOREIGN KEY(job_offer_id) REFERENCES job_offers(id)
);