
/*Calculer des statistiques en regroupant des éléments par niveau*/

SELECT SUM(Employed)
FROM recent_grads
GROUP BY Major_category;


SELECT Major_category,avg(ShareWomen)*100
FROM recent_grads
GROUP BY Major_category;

/*Renommer les colonnes avec commande AS*/
SELECT AVG(ShareWomen) AS average_female_share
FROM recent_grads;

SELECT Major_category,AVG(Employed)/AVG(Total) AS DIPLOME
FROM recent_grads
GROUP BY Major_category;

/* Colonnes virtuelles et HAVING*/

SELECT Major_category,AVG(Employed)/AVG(Total) AS DIPLOME
FROM recent_grads
GROUP BY Major_category
HAVING DIPLOME>0.8;

SELECT AVG(Low_wage_jobs)/AVG(Total) AS Revenues
FROM recent_grads
GROUP BY Major_category
HAVING Revenues>0.1

/* Arrondir les résultats*/


SELECT ROUND(AVG(Low_wage_jobs)/AVG(Total),2) AS Revenues
FROM recent_grads
GROUP BY Major_category
HAVING Revenues>0.1;

SELECT Major_category,ROUND(avg(Full_time)/avg(Total),3) AS Share
FROM recent_grads
GROUP BY Major_category
HAVING Share<0.6;

/* Pratique*/
SELECT ROUND(population+population*(population_growth/100),0)
FROM facts
WHERE population>0 and population<7000000000 
and population IS NOT NULL AND population is not NULL;
