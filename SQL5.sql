/* Normalisation des bases de données*/

SELECT year, host,category, nominee,movie, character, won
FROM ceremonies
INNER JOIN nominations
ON nominations.ceremony_id==ceremonies.id;

/* Requete sur une base de données normalisées*/

SELECT nominations.movie
FROM nomination
INNER JOIN ceremonies
ON nominations.ceremony_id==ceremonies.id
WHERE ceremonies.year==2010 AND nominations.won==1;

SELECT ceremonies.year,ceremonies.host, nominations.movie, nominations.nominee
FROM nominations
inner JOIN ceremonies
on nominations.ceremony_id==ceremonies.id 
WHERE ceremonies.years=2010;

SELECT nominations.movie
FROM nominations
INNER JOIN ceremonies
ON nominations.ceremony_id==ceremonies.id
WHERE nominations.nominee='Natalie Portman' ;

/* créer une join table ou table intermédiaire*/

CREATE TABLE movies_actors(
    id integer primary KEY
    movie_id INTEGER REFERENCES movies(id)
    actor_id INTEGER REFERENCES actors(id)
);

/* many_to_many*/

SELECT *
FROM movies
INNER JOIN movies_actors on movies.id==movies_actors.movie_id
INNER JOIN actors on movies_actors.actor_id==actors.id;



SELECT actors.actor
FROM movies
INNER JOIN movies_actors on movies.id==movies_actors.movie_id
INNER JOIN actors on movies_actors.actor_id==actors.id
WHERE movies.movie=="Invictus";


SELECT movies.movie, actors.actor
FROM movies
INNER JOIN movies_actors on movies.id==movies_actors.movie_id
INNER JOIN actors on actors.id==movies_actors.actor_id
WHERE actors.actor='Natalie Portman';

insert into ceremonies(Year, Host) values(?,?);
INSERT INTO  ceremonies (Year, Host) VALUES
(2010,"Steve Martin"),
(2009,"Hugh Jackman"),
(2008,"Jon Stewart"),
(2007,"Ellen DeGeneres"),
(2006,"Jon Stewart"),
(2005,"Chris Rock"),
(2004,"Billy Crystal"),
(2002,"Whoopi Goldberg"),
(2001,"Steve Martin"),
(2000,"Billy Crystal");









SELECT nominations.category,nominations.nominee,nominations.movie,
nominations.character,nominations.won,ceremonies.id 
FROM nominations
INNER JOIN ceremonies
ON nominations.year==ceremonies.year;

DROP TABLE nominations

ALTER TABLE nominations_two
RENAME TO nominations;

CREATE TABLE movies_actors(id integer primary key,
movie_id integer REFERENCES movie(id),
actor_id integer REFERENCES actor(id));