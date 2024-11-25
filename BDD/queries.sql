
--  1. Show all the offers
SELECT * FROM offer;

--  2. Show all the offers in Paris
SELECT * FROM offer WHERE city = 'Paris';

--  3. Show all the infos of the applicants who applied to the offer with id 1
SELECT * FROM applicant WHERE id IN (SELECT applicant_id FROM applications WHERE offer_id = 1);

--  4. Show all the infos of the applicants who applied to an offer from TechCorp
SELECT * FROM applicant WHERE id IN (SELECT applicant_id FROM applications WHERE offer_id IN (SELECT id FROM offer WHERE company_id = 1));