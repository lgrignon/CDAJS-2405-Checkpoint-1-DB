/* Toutes les offres d'emploi */
SELECT * FROM offer;

/* Toutes les offres d'emploi d'une ville (Paris) */
SELECT * FROM offer WHERE city = 'Paris';

/* Les informations de tous candidats qui ont postulé à une offre précise */
SELECT firstname, lastname, phone_number, presentation
FROM candidate 
WHERE offer_id = $id;

/* Les informations de tous les candidats qui ont postulé aux offres d'une entreprise */
SELECT id, firstname, lastname, phone_number, presentation
FROM candidate
JOIN company ON offer.company_id 
WHERE company.id = $companyId;