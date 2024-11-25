INSERT INTO recruiter (login, password) VALUES
('IDM_boss_59', 'hashedpassword123'),
('Djimini Cricket', 'hashedpassword123'),
('Merline', 'hashedpassword123');

INSERT INTO company (name, description, recruiter_id) VALUES
('IDM', 'A technology company specializing in software development and Disney.', 1),
('Cap Gimini', 'An company that heats their stairways.', 2),
('Lareine', 'A construction company focusing on innovative designs and vintage costumes.', 3);

INSERT INTO offer (title, description, city, company_id) VALUES
('Software Engineer', 'Develop and maintain software applications.', 'Paris', 1),
('Project Manager', 'Manage multiple eco-friendly projects.', 'Lyon', 2),
('Front-End Developper', 'Loves CSS despite it all.', 'Marseille', 3),
('Full-Stack Developer', 'Work on both front-end and back-end applications.', 'Paris', 1),
('Marketing Specialist', 'Develop and execute marketing campaigns.', 'Lyon', 2);

INSERT INTO applicant (login, password, name, lastname, email, phone, introduction) VALUES
('applicant1', 'password1', 'Thomas', 'Nigon', 'thomas.nigon@example.com', '0601020304', 'Motivated developer looking for new challenges.'),
('applicant2', 'password2', 'Florence', 'Buchelet', 'florence.buchelet@example.com', '0605060708', 'Experienced project manager passionate about sustainability.'),
('applicant3', 'password3', 'Marie', 'Saillard', 'marie.saillard@example.com', '0611121314', 'Creative Front-End Developper with a focus on innovation.'),
('applicant4', 'password4', 'Robin', 'Fantino', 'robin.fantino@example.com', '0615161718', 'Marketing professional with a strong track record.');

INSERT INTO application (offer_id, applicant_id) VALUES
(1, 1), -- Thomas applies for Software Engineer at IDM
(2, 2), -- Florence applies for Project Manager at Cap Gimini
(3, 3), -- Marie applies for Front-End Developper at Lareine Merline
(4, 1), -- Thomas also applies Full-Stack Developer at IDM
(5, 4); -- Robin applies for Marketing Specialist at Cap Gimini
