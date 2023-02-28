/* Les dates en sql*/

SELECT *
FROM facts
WHERE created_at<"2015-12-01 14:00" 
AND created_at>"2015-10-30 12:00"
;

PRAGMA table_info(facts);

/*Primary Keys (clès primaire)*/
SELECT *
FROM facts
order BY id DESC
LIMIT 1;

/* Insérer des données dans une table*/

INSERT INTO facts
VALUES (262,"ms","Mars",60000,40000,20000,50000,100,50,10,20,
"2017-02-25 12:00:00","2017-02-25 12:00:00");

/*Valeurs manquantes*/
SELECT *
FROM facts
where area is null;

/*Modifier des valeurs*/

UPDATE facts
SET name="New Zealand", code="nz"
WHERE name="Australia";

UPDATE facts
SET name="New Zealand", code="nz"
WHERE name="Australia";

UPDATE facts
SET name="Italy"
WHERE name="United States";

/*Supprimer des lignes*/
DELETE FROM facts
WHERE name="Brazil";

DELETE FROM facts
WHERE name="Canada";


/* Shéma d'un tableau*/
ALTER TABLE facts
ADD awesomeness integer;

/*Créer une table*/

CREATE TABLE leaders(
    id integer PRIMARY KEY,
    name text,
    country text);
/*Ajouter une ligne*/ 
INSERT INTO leaders
VALUES (1,"IOG","Djibouti");


CREATE TABLE leaders2(
    id INTEGER PRIMARY KEY,
    name text,
     country integer,
     worth FLOAT,
     FOREIGN KEY(country) REFERENCES facts(id)
)


CREATE TABLE good( 
    id integer PRIMARY KEY,
    name text,
    area integer,
    country integer,
    FOREIGN KEY(country) REFERENCES facts(id)
);


SELECT *
FROM landmarks
INNER JOIN facts
ON landmarks.country== facts.id;


/* Types de combinaison entre 2 tables*/
SELECT *
FROM landmarks
left OUTER JOIN facts
ON landmarks.country==facts.id;











