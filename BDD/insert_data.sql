INSERT INTO Recruiter (login, password) VALUES
('AltairRecruiter', 'password123'),
('EzioRecruiter', 'hiddenblade'),
('ConnorRecruiter', 'tomahawk2023'),
('EdwardRecruiter', 'blackflag'),
('BayekRecruiter', 'animus2024');

INSERT INTO Company (name, description, recruiter_id) VALUES
('Brotherhood of Assassins', 'A secret organization dedicated to preserving peace and free will.', 1),
('Templar Order', 'A secret organization focused on controlling humanity for the greater good.', 2);

INSERT INTO JobOffer (job_title, job_description, job_city, company_id) VALUES
('Follow the Merchant', 'Track and gather intel on a suspicious merchant operating in the market.', 'Jerusalem', 1),
('Assassinate the Spy', 'Eliminate a spy leaking Brotherhood secrets to the Templars.', 'Rome', 1),
('Steal the Artifact', 'Infiltrate the Templar hideout and retrieve a powerful artifact.', 'Paris', 2),
('Protect the Citizen', 'Guard a key civilian during their journey through hostile territory.', 'Alexandria', 1);

INSERT INTO Candidate (login, password, firstname, lastname, mail, phone, introduction) VALUES
('Desmond', 'animus123', 'Desmond', 'Miles', 'desmond.miles@animus.com', '1234567890', 'Trained assassin, connected to Animus.'),
('Aveline', 'liberation', 'Aveline', 'de Grandpré', 'aveline.grandpre@animus.com', '1234567891', 'Skilled assassin from New Orleans.'),
('Arno', 'unityblade', 'Arno', 'Dorian', 'arno.dorian@animus.com', '1234567892', 'French revolutionary assassin.'),
('Cassandra', 'odyssey2024', 'Cassandra', 'Misthios', 'cassandra.misthios@animus.com', '1234567893', 'Spartan mercenary with assassin skills.'),
('Eivor', 'valhallablade', 'Eivor', 'Wolf-Kissed', 'eivor.wolf@animus.com', '1234567894', 'Viking warrior with a taste for assassination.');

INSERT INTO Application (job_offer_id, candidate_id, application_date) VALUES
(1, 1, '2024-11-20'),
(2, 1, '2024-11-21'),
(3, 2, '2024-11-22'),
(4, 2, '2024-11-23'),
(1, 3, '2024-11-24'),
(3, 3, '2024-11-25'),
(2, 4, '2024-11-26'),
(4, 4, '2024-11-27'),
(1, 5, '2024-11-28'),
(4, 5, '2024-11-29');
