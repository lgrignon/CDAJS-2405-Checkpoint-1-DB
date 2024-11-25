-- Select all the job offers
SELECT * FROM job;

-- Select all job offers in Paris
SELECT * FROM job 
    WHERE city="Paris";

-- Select all users who apply for a job offer
SELECT * FROM candidate 
    JOIN application on candidate.id=application.candidate_id
    WHERE application.job_id=2;

-- Select all users who apply to a compâny offers
SELECT * FROM candidate c
    JOIN application a on c.id=a.candidate_id
        JOIN job on a.job_id=job.id
            JOIN company on job.company_id=company.id
            WHERE company.name = "AppCampus";

