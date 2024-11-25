SELECT * FROM offer;

SELECT * FROM offer WHERE city = 'Paris';

SELECT * FROM applicant WHERE id IN (SELECT applicant_id FROM applications WHERE offer_id = 1);

SELECT * FROM applicant WHERE id IN (SELECT applicant_id FROM applications WHERE offer_id IN (SELECT id FROM offer WHERE company_id = 1));