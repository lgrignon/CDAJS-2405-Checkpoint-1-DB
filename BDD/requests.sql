SELECT * FROM offers;
SELECT * FROM offers WHERE city = 'Paris';
SELECT candidate.* FROM candidate
    INNER JOIN candidacy ON candidate.id = candidacy.candidate_id
    INNER JOIN offers ON candidacy.offer_id = 4;
SELECT candidate.* FROM candidate
    JOIN candidacy ON candidate.id = candidacy.candidate_id
    JOIN offers ON candidacy.offer_id = offers.id
    JOIN company ON offers.company_id = 0;
