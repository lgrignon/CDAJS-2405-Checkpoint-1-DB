-- All ads
SELECT * FROM ad;

-- All ads in specific city (Paris)
SELECT * FROM ad WHERE city = "Paris";

-- All information about all candidates who applied to a specific ad (example : ad_id = 1)
SELECT c.* 
FROM candidate as c 
JOIN job_application as ja ON c.id = ja.candidate_id
WHERE ja.ad_id = 1;

-- All information about all candidates who applied to a specific company (example : company_id = 2) 
SELECT c.*
FROM candidate as c
JOIN job_application as ja ON c.id = ja.candidate_id
JOIN ad as a ON ja.ad_id = a.id
WHERE a.company_id = 2;