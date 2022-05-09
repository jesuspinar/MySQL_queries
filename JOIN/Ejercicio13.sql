-- ACTOR , RELACION CON FILMS , FILS_ACTOR
-- MOSTRAR FIRST NAME , LAST NAME , FECHA 
#USE SAKILA
SELECT CONCAT(first_name," ",last_name) AS FULLNAME,
	film.title, film.release_year
FROM actor
JOIN film_actor USING(actor_id)
JOIN film USING (film_id)