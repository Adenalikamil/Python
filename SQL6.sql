/* PostgreSQL*/

CREATE DATABASE bank_accounts;

/* Créer des utilisateurs*/

CREATE ROLE sql WITH login WITH password 'password';

CREATE ROLE Batman WITH LOGIN CREATEDB PASSWORD 'aden';

/* Ajouter des permissions*/

GRANT SELECT ON nom_table TO nom_utilisateur;

GRANT SELECT, INSERT, UPDATE ON deposits To sql_login;

GRANT ALL PRIVILEGES ON deposits TO Batman;

/*Retirer des permissions*/

REVOKE INSERT,UPDATE ON deposits from sql_login;

/*Superusers*/
CREATE ROLE superman WITH LOGIN PASSWORD 'password' SUPERUSER;

/*Supprimer*/

DROP ROLE sql_login;



/* 2ème essaie*/

CREATE ROLE myuser WITH LOGIN  PASSWORD '123';
CREATE DATABASE bank_accounts WITH OWNER myuser;


/*Transaction en SQL*/

CREATE TABLE accounts(
    id INTEGER PRIMARY KEY,
    name text,
    balance FLOAT
);

/* léa 100euros, léa 200 euros*/
UPDATE accounts SET balance=200 WHERE name="léo";
UPDATE accounts SET balance=100 WHERE name="léa";





/* RER KAMIL */

CREATE ROLE newuser WITH LOGIN CREATEDB  PASSWORD 'MIRANE' SUPERUSER;
CREATE DATABASE rer_Kamil WITH OWNER newuser;
/*psql -h 127.0.0.1 -U newuser rer_kamil pour se connecter dans l'utilisateur*/

CREATE TABLE famille(
    id integer PRIMARY KEY, 
    prenom text,nom text,
    age integer, 
    diplome text);

/*Permission ALL PRIFILEGES*/
GRANT ALL PRIVILEGES ON famille TO newuser;
