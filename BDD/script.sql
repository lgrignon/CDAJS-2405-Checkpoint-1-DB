CREATE TABLE Recruteur (
    ID_Recruteur SERIAL PRIMARY KEY,
    Login VARCHAR(255) NOT NULL UNIQUE,
    MotDePasse VARCHAR(255) NOT NULL
);

CREATE TABLE Entreprise (
    ID_Entreprise SERIAL PRIMARY KEY,
    Nom VARCHAR(255) NOT NULL,
    Description TEXT,
    ID_Recruteur INT UNIQUE NOT NULL,
    FOREIGN KEY (ID_Recruteur) REFERENCES Recruteur(ID_Recruteur)
        ON DELETE CASCADE
);

CREATE TABLE Offre (
    ID_Offre SERIAL PRIMARY KEY,
    Titre VARCHAR(255) NOT NULL,
    Descriptif TEXT NOT NULL,
    Ville VARCHAR(255) NOT NULL,
    ID_Entreprise INT NOT NULL,
    FOREIGN KEY (ID_Entreprise) REFERENCES Entreprise(ID_Entreprise)
        ON DELETE CASCADE
);

CREATE TABLE Candidat (
    ID_Candidat SERIAL PRIMARY KEY,
    Login VARCHAR(255) NOT NULL UNIQUE,
    MotDePasse VARCHAR(255) NOT NULL,
    Nom VARCHAR(255) NOT NULL,
    Prenom VARCHAR(255) NOT NULL,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Telephone VARCHAR(15),
    TextePresentation TEXT
);

CREATE TABLE Candidature (
    ID_Candidature SERIAL PRIMARY KEY,
    DateCandidature TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ID_Offre INT NOT NULL,
    ID_Candidat INT NOT NULL,
    FOREIGN KEY (ID_Offre) REFERENCES Offre(ID_Offre)
        ON DELETE CASCADE,
    FOREIGN KEY (ID_Candidat) REFERENCES Candidat(ID_Candidat)
        ON DELETE CASCADE
);

-- Insertion de recruteurs
INSERT INTO Recruteur (Login, MotDePasse) VALUES 
('recruteur1', 'password1'),
('recruteur2', 'password2');

-- Insertion d'entreprises
INSERT INTO Entreprise (Nom, Description, ID_Recruteur) VALUES 
('TechCorp', 'Entreprise spécialisée dans le développement logiciel.', 1),
('HealthPlus', 'Entreprise dans le secteur de la santé.', 2);

-- Insertion d'offres
INSERT INTO Offre (Titre, Descriptif, Ville, ID_Entreprise) VALUES 
('Développeur Web', 'Développement de sites web modernes.', 'Paris', 1),
('Data Analyst', 'Analyse des données et création de tableaux de bord.', 'Lyon', 1),
('Chargé de projet santé', 'Gestion de projets dans le secteur médical.', 'Marseille', 2);

-- Insertion de candidats
INSERT INTO Candidat (Login, MotDePasse, Nom, Prenom, Email, Telephone, TextePresentation) VALUES 
('candidat1', 'securepass1', 'Dupont', 'Jean', 'jean.dupont@example.com', '0612345678', 'Passionné par le développement.'),
('candidat2', 'securepass2', 'Martin', 'Claire', 'claire.martin@example.com', '0698765432', 'Analyste de données expérimentée.'),
('candidat3', 'securepass3', 'Bernard', 'Sophie', 'sophie.bernard@example.com', '0645678910', 'Intéressée par la gestion de projets.'),
('candidat4', 'securepass4', 'Durand', 'Alexandre', 'alex.durand@example.com', '0623456789', 'Développeur motivé avec 3 ans d\'expérience.');

-- Insertion de candidatures
INSERT INTO Candidature (DateCandidature, ID_Offre, ID_Candidat) VALUES 
('2024-11-01 10:30:00', 1, 1),
('2024-11-02 11:00:00', 1, 4),
('2024-11-03 09:15:00', 2, 2),
('2024-11-04 15:20:00', 3, 3);
