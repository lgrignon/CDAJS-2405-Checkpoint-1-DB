

   -- Toutes les offres d'emploi

   SELECT * FROM offers;
   -- Toutes les offres d'emploi d'une ville (Paris)
   SELECT * 
FROM offers 
WHERE city = 'Paris';

   -- Les informations de tous candidats qui ont postulé à une offre précise
   SELECT *
FROM candidates
INNER JOIN applications ON candidates.id = applications.candidate_id
WHERE applications.offer_id = 1;
   -- Les informations de tous les candidats qui ont postulé aux offres d'une entreprise

   SELECT candidates.*
FROM candidates
INNER JOIN applications ON candidates.id = applications.candidate_id
INNER JOIN offers ON applications.offer_id = offers.id
WHERE offers.entreprise_id = 1;