/*Afficher des colonnes*/
SELECT Rank, Major
FROM recent_grads;

SELECT Rank, Major_code, Major,Major_category, Total
FROM recent_grads;

/* Filtre des données*/
SELECT Major, ShareWomen
FROM recent_grads
WHERE ShareWomen>0.5;

SELECT Major, Employed
FROM recent_grads
WHERE Employed>10000;

/* Limiter le nombre de résultats*/

SELECT Major
FROM recent_grads
LIMIT 5;

SELECT Major, Employed
FROM recent_grads
WHERE Employed>10000
LIMIT 10;


/*Condition multiples avec AND et OR*/

SELECT Major, ShareWomen, Employed
FROM recent_grads
WHERE ShareWomen>0.5 AND Employed>10000
LIMIT 10;

SELECT Major, Median, Unemployed
FROM recent_grads
WHERE Median>=10000 OR Unemployed<=1000
LIMIT 20;


/* Grouper les opérateurs avec des parenthèses*/
SELECT Major, Major_category, ShareWomen, Unemployment_rate
FROM recent_grads
WHERE (Major_category='Engineering') AND (ShareWomen>=0.5 OR Unemployment_rate<0.051) 
;

SELECT Major, Major_category, Employed, Unemployment_rate
FROM  recent_grads
WHERE (Major_category='Business' or Major_category='Arts' OR Major_category='health') AND (Employed>20000 or Unemployment_rate<0.051);


/* Trier les résultats avec ORDER BY*/
SELECT Employed
FROM recent_grads
ORDER BY Employed ASC
limit 10;

SELECT Major
FROM recent_grads
ORDER BY Major DESC
limit 10;

SELECT Major_category, Median, Major
FROM recent_grads
ORDER BY Major_category DESC, Median DESC
LIMIT 20;