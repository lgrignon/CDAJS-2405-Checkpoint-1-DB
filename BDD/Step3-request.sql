-- - Toutes les offres d'emploi

SELECT * FROM offers;

-- - Toutes les offres d'emploi d'une ville (Paris)

SELECT * FROM offers
WHERE city = 'Paris';

--   - Les informations de tous candidats qui ont postulé à une offre précise

SELECT P.* 
FROM profils AS P
JOIN applications AS A ON P.user_id = A.user_id
WHERE A.id = 1;

-- - Les informations de tous les candidats qui ont postulé aux offres d'une entreprise

SELECT P.* 
FROM profils AS P
JOIN applications AS A ON P.user_id = A.user_id
JOIN offers AS O On A.offers_id = O.id
JOIN enterprises AS ENT ON O.enterprise_id = ENT.id
WHERE ENT.id = 1;