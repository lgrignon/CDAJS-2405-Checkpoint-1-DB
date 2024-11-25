-- Toutes les offres d'emploi
SELECT * FROM offers;

-- Toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM offers
WHERE city = 'Paris';

-- Les informations de tous candidats qui ont postulé à une offre précise
SELECT c.*
FROM candidates c
JOIN applications a ON c.id = a.candidate_id
WHERE a.offer_id = 1;

-- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT c.*
FROM candidates c
JOIN applications a ON c.id = a.candidate_id
JOIN offers o ON a.offer_id = o.id
JOIN companies co ON o.company_id = co.id
WHERE co.id = 1;