/* Compter le nombre de lignes en sql*/

SELECT COUNT(*)
FROM facts;

SELECT COUNT(area_water)
FROM facts;

SELECT MAX(birth_rate)
FROM facts;

SELECT MIN(population_growth)
FROM facts;

SELECT MAX(death_rate)
FROM facts;

/* Calculer des sommes et des moyennes en SQL*/

SELECT SUM(birth_rate)
FROM facts;


SELECT AVG(birth_rate)
FROM facts;

/* Combiner plusieurs fonction*/

SELECT COUNT(*), SUM(death_rate), AVG(population_growth)
FROM facts;

SELECT AVG(population), SUM(population), MAX(birth_rate)
FROM facts;

SELECT COUNT(*)
FROM facts
WHERE population>500000;


SELECT AVG(population_growth)
FROM facts
WHERE population>10000000;

SELECT DISTINCT name, population
FROM facts;

SELECT DISTINCT birth_rate
FROM facts;

SELECT count(DISTINCT birth_rate)
FROM facts;

SELECT AVG(DISTINCT birth_rate)
FROM facts
WHERE population>20000000
;

/*Opérations mathématiques en SQL*/

SELECT population/1000000
FROM facts;

SELECT AVG(birth_rate),sum(population)
FROM facst;

SELECT birth_rate/death_rate
FROM facts;