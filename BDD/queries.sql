-- Toutes les offres d'emploi
SELECT * FROM job_offers;

-- Toutes les offres d'emploi de la ville 'Paris'
SELECT * FROM job_offers
WHERE city = 'Paris';

-- Les informations des candidats ayant postulé à l'offre avec l'ID 1 (Software Engineer)
SELECT candidate.*
FROM candidate
JOIN candidate_offers ON candidate.id = candidate_offers.candidate_id
WHERE candidate_offers.job_id = 1;

-- Les informations des candidats ayant postulé aux offres de l'entreprise avec l'ID 1 (Tech Innovators)
SELECT candidate.*
FROM candidate
JOIN candidate_offers ON candidate.id = candidate_offers.candidate_id
JOIN job_offers ON candidate_offers.job_id = job_offers.id
WHERE job_offers.recruiter_id = 1;