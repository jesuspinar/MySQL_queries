-- crear un tabla para obterner un indice para poder hacer busquedas sobre cualquier campo de texto
-- peliculas , categorias , actores
USE SAKILA;
SELECT COUNT(film.film_id) as NUM_PELICULAS
FROM film 
JOIN film_category USING(film_id)
JOIN film_actor USING(film_id) ;