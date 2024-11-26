--    Requête pour afficher toutes les offres d'emploi
SELECT * FROM offers;

--    Requête pour afficher toutes les offres d'emploi de Paris
SELECT * FROM offers 
    WHERE city='Paris';

--    Requête pour afficher les informations de tous les candidats qui ont postulé à une offre en particulier
SELECT * FROM candidates
    JOIN applications ON candidates.candidate_id = applications.candidate_id 
    WHERE applications.offer_id = 3;

--    Requête pour afficher les informations de tous les candidats qui ont postulé aux offres d'une company
SELECT * FROM candidates 
    JOIN application ON candidates.candidate_id = applications.candidate_id 
    JOIN offers ON offers.offer_id = applications.offer_id 
    WHERE offers.company_id = 1;