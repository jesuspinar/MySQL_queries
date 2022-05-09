-- rental_rate año actual, y años anteriores;

-- promedio del rental rate 
-- total de peliculas 
-- año actual y años anteriores
SELECT AVG(rental_rate) PROMEDIO_ALQUILER, 
	COUNT(DISTINCT film_id) CANTIDAD_PELIS,
    'Año Anteriores' AS AÑO -- FLAG PARA INDICAR 
FROM film
WHERE release_year  = YEAR(NOW()) -- != 2022 

UNION

SELECT AVG(rental_rate) PROMEDIO, 
	COUNT(DISTINCT film_id) CANTIDAD_PELIS,
    'Año Actual'
FROM film
WHERE release_year  < YEAR(NOW()) -- = 2022
