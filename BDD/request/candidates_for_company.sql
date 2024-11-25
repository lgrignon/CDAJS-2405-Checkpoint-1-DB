SELECT DISTINCT Candidate.*
FROM Candidate
JOIN Application ON Candidate.id = Application.candidate_id
JOIN JobOffer ON Application.job_offer_id = JobOffer.id
WHERE JobOffer.company_id = 1;