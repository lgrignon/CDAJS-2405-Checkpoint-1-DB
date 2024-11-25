
-- Recruteurs
INSERT INTO Recruteur (login, password) VALUES
('recruteur1', 'password123'),
('recruteur2', 'password456'),
('recruteur3', 'password789');

-- Entreprises
INSERT INTO Entreprise (nom, description, recruteur_id) VALUES
('TechCorp', 'Entreprise spécialisée en IA.', 1),
('WebSolutions', 'Développement de solutions web.', 2),
('DataAnalytics', 'Consulting en data science.', 3);

-- Candidats
INSERT INTO Candidat (login, password, nom, prenom, email, telephone, texte_presentation) VALUES
('candidat1', 'password123', 'Dupont', 'Jean', 'jean.dupont@example.com', '0612345678', 'Développeur passionné par la tech.'),
('candidat2', 'password456', 'Durand', 'Marie', 'marie.durand@example.com', '0623456789', 'Analyste expérimentée.'),
('candidat3', 'password789', 'Martin', 'Paul', 'paul.martin@example.com', '0634567890', 'Ingénieur logiciel.');

-- Offres
INSERT INTO Offre (titre, description, ville, entreprise_id) VALUES
('Développeur Fullstack', 'Poste basé à Paris pour travailler sur des projets web.', 'Paris', 1),
('Data Scientist', 'Analyse des données clients et création de modèles prédictifs.', 'Lyon', 2),
('Consultant DevOps', 'Consulting et gestion des infrastructures cloud.', 'Marseille', 3);

-- Candidatures
INSERT INTO Candidature (offre_id, candidat_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(1, 3);
