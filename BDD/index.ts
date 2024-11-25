import sqlite3 from 'sqlite3';
// Création d'une connexion avce la base pour pouvoir exéuter des requêtes
const db = new sqlite3.Database('job_board.db');

// csv-parser est utilisé pour lire le fichier CSV. Celui-ci est parcouru ligne par ligne et les résultats sont 
// ajoutés dans un tableau.
import csv from 'csv-parser';