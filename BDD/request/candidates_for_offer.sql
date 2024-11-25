SELECT Candidate.*
FROM Candidate
JOIN Application ON Candidate.id = Application.candidate_id
WHERE Application.job_offer_id = 1;