-- Tables

CREATE TABLE Recruteur (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Entreprise (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(255) UNIQUE NOT NULL,
    description VARCHAR(255),
    recruteur_id INTEGER NOT NULL,
    FOREIGN KEY (recruteur_id) REFERENCES Recruteur(id)
);

CREATE TABLE Candidat (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    login VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telephone VARCHAR(50) UNIQUE,
    texte_presentation VARCHAR(255)
);

CREATE TABLE Offre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    ville VARCHAR(100) NOT NULL,
    entreprise_id INTEGER NOT NULL,
    FOREIGN KEY (entreprise_id) REFERENCES Entreprise(id)
);

CREATE TABLE Candidature (
    candidature_id INTEGER PRIMARY KEY AUTOINCREMENT,
    offre_id INTEGER NOT NULL,
    candidat_id INTEGER NOT NULL,
    UNIQUE(offre_id, candidat_id),
    FOREIGN KEY (offre_id) REFERENCES Offre(id),
    FOREIGN KEY (candidat_id) REFERENCES Candidat(id)
);
