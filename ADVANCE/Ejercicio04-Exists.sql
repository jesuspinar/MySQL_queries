# BUSCAR TODOS LOS ACTORES QUE NO ESTEN EN PELICULA
SELECT * FROM actor AS actorMain
WHERE NOT EXISTS(
		SELECT actor_id
		FROM film_actor
        WHERE film_actor.actor_id = actorMain.actor_id
)  