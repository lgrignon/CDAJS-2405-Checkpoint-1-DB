// Toutes les offres d'emploi 
SELECT 
    Offre.ID_Offre, 
    Offre.Titre, 
    Offre.Descriptif, 
    Offre.Ville, 
    Entreprise.Nom AS Nom_Entreprise 
FROM Offre
INNER JOIN Entreprise ON Offre.ID_Entreprise = Entreprise.ID_Entreprise;

// Toutes les offres d'emploi d'une ville
SELECT 
    Offre.ID_Offre, 
    Offre.Titre, 
    Offre.Descriptif, 
    Offre.Ville, 
    Entreprise.Nom AS Nom_Entreprise 
FROM Offre
INNER JOIN Entreprise ON Offre.ID_Entreprise = Entreprise.ID_Entreprise
WHERE Offre.Ville = 'Paris';

// Info des candidats qui ont postulé 
SELECT 
    Candidat.ID_Candidat, 
    Candidat.Nom, 
    Candidat.Prenom, 
    Candidat.Email, 
    Candidat.Telephone, 
    Candidat.TextePresentation 
FROM Candidature
INNER JOIN Candidat ON Candidature.ID_Candidat = Candidat.ID_Candidat
WHERE Candidature.ID_Offre = 1;

// Info de tous les candidats qui ont postulé sur une offre
SELECT 
    DISTINCT Candidat.ID_Candidat, 
    Candidat.Nom, 
    Candidat.Prenom, 
    Candidat.Email, 
    Candidat.Telephone, 
    Candidat.TextePresentation 
FROM Candidature
INNER JOIN Candidat ON Candidature.ID_Candidat = Candidat.ID_Candidat
INNER JOIN Offre ON Candidature.ID_Offre = Offre.ID_Offre
WHERE Offre.ID_Entreprise = 1;
