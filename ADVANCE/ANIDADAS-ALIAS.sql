#Obtener todas las peliculas donde el rental_rate sea mayor, al promedio de categoria
SELECT title , rental_rate, mainCat.name 
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category AS mainCat ON film_category.category_id = mainCat.category_id
WHERE rental_rate > (
	SELECT AVG(rental_rate) 
	FROM film
	JOIN film_category ON film.film_id = film_category.film_id
	JOIN category ON film_category.category_id = category.category_id
    WHERE category.category_id = mainCat.category_id );
#como hacer referencias de columnas entre las subq y la principal 
# se necista el uso de ALIAS

#WARNING - puede afectar al rendimiento#
/*recorre la tabla por cada registro de la query principal*/