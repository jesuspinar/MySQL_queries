-- # Obten la cantidad de peliculas que ha hecho cada actor 
-- en un podium de 10 
SELECT 
	CONCAT (first_name,' ',last_name) FULL_NAME,
	COUNT(DISTINCT film.film_id) NUM_FILMS
FROM actor
JOIN film_actor USING(actor_id) -- > using unicamente es valido cuando pk y fk se llaman igual
JOIN film ON film_actor.film_id = film.film_id
GROUP BY -- tienes que poner lo para que te haga grupos de actores por nombre y apellido
	first_name,last_name
ORDER BY NUM_FILMS desc
LIMIT 10