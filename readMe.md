### Welcome on checkpoint 1

- Clone this project.
- Read the readme to the end
- Run `npm i`
- Create a branch `<firstname>\_<lastname>` and push it now on github (if it doesn't work, ask your trainer about it)
- Do all exercises (2 parts)
- Commit your code for each differents steps you achieve, with a clear commit message

💡 Problems descriptions are in french but you can write your code and commit messages in english. It shows that it's not a problem for you.

## Part One

Dans cet exercice il s'agira d'abord de modéliser puis de créer la base de données d'un job board.

Un job board est un site internet qui permet aux entreprises de publier des offres d'emploi.

Voici les contraintes de la base de données du job board :

- Un recruteur peut s'enregistrer sur le site
- Une fois enregistré il peut créer une seule entreprise
- Il peut ensuite publier des offres au nom de l'entreprise
- Un candidat peut s'enregistrer sur le site
- Une fois enregistré il peut consulter les offres
- Il peut ensuite candidater à des offres
- Le candidat peut retrouver toutes les entreprises auxquelles il a candidaté
- Le recruteur peut retrouver les informations des candidats qui ont postulé à une offre
- Un recruteur a les attributs suivants : login & mot de passe
- Un candidat a les attributs suivants : login & mot de passe & nom & prénom & email & numéro de téléphone & texte de présentation
- Une entreprise a les attributs suivants : nom & description
- Une offre a les attributs suivants : titre du poste & descriptif du poste & ville du poste

1. Modélisation
   - Modélise le MPD de la base de données, https://www.dbdesigner.net/ te permettra d'exporter la BDD au format SQLite ce qui te sera utile par la suite. Pense à prendre un screenshot de la modélisation puis la placer dans le dossier BDD.

2. SQL
   - Crée la base de données avec SQLite, tu peux utiliser https://sqlime.org/ pour cela.
   - Remplis-la avec des données fictives en utilisant des requêtes SQL. (N'hésites pas à regarder des outils comme https://www.mockaroo.com/ pour cela).
   - Ajoutes le ou les scripts .sql d'insertion au dossier BDD.

3. Écris ensuite les requêtes SQL permettant d'obtenir les informations suivantes : (Fichiers de requêtes à mettre dans le dossier BDD)
   - Toutes les offres d'emploi
   - Toutes les offres d'emploi d'une ville (Paris)
   - Les informations de tous candidats qui ont postulé à une offre précise
   - Les informations de tous les candidats qui ont postulé aux offres d'une entreprise

## Part two

En t'intégrant dans [le code des algos de tableau existants dans ce projet](arr.ts), ajoute les méthodes `pop()` et `shift()`.
N'oublie pas de mettre en place [les tests unitaires](test/array.test.ts). 

💡 De préférence, rédige les tests unitaires avant d'écrire le code afin de t'inscrire dans une démarche TDD.
