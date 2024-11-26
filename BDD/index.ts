import bodyParser from "body-parser";
import express from "express";
import fs from 'fs';
import path from "path";

import sqlite3 from 'sqlite3';
// Création d'une connexion avce la base pour pouvoir exéuter des requêtes
const db = new sqlite3.Database('job_board.sqlite');

import csv from 'csv-parser';

const app = express();
const port = 3000;


app.use(express.json());
app.use(bodyParser.text({ type: 'text/plain' }));

const csvFilesDir = path.join(__dirname, 'csv files');


app.get("/", (req, res) => {
    res.send("Hello checkpoint ! ");
});

// Démarrer le serveur
app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
  });