--    Toutes les offres d'emploi
SELECT * FROM offer;
--    Toutes les offres d'emploi d'une ville (Paris)
SELECT * FROM offer 
    WHERE city='Paris';
--    Les informations de tous candidats qui ont postulé à une offre précise
SELECT * FROM applicant 
    JOIN application ON applicant.id = application.applicant_id 
    WHERE application.offer_id = 1;
--    Les informations de tous les candidats qui ont postulé aux offres d'une entreprise
SELECT * FROM applicant 
    JOIN application ON applicant.id = application.applicant_id 
    JOIN offer ON offer.id = application.offer_id 
    WHERE offer.company_id = 1;