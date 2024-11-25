SELECT * FROM offers;
SELECT * FROM offers WHERE city = 'Paris';
SELECT first_name, last_name, email, telephone, login, password, biography FROM candidate
    INNER JOIN candidacy ON candidate.id = candidacy.candidate_id
    INNER JOIN offers ON candidacy.offer_id = offers.id
    WHERE offers.city = 'Strasbourg';
SELECT first_name, last_name, email, telephone, login, password, biography FROM candidate
    JOIN candidacy ON candidate.id = candidacy.candidate_id
    JOIN offers ON candidacy.offer_id = offers.id
    JOIN company ON offers.company_id = 0;
