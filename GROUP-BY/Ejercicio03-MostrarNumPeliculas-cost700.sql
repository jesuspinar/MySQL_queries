# MOSTRAR EL NUMERO DE PELICULAS POR ACTOR 
# DONDE LA SUMA DE REPLACEMENT_COST SEA MAYOR A 700

SELECT 
	CONCAT(first_name,' ',last_name) FULL_NAME,
	COUNT(DISTINCT film.film_id) NUM_FILMS,
    SUM(replacement_cost) COST
FROM 
	actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id

GROUP BY FULL_NAME

HAVING COST > 700
ORDER BY COST DESC