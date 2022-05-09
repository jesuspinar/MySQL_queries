SELECT title,
	release_year AS 'NuevoAño'
FROM sakila.film
WHERE release_year = year(now());

-- year sirve para sacar registros por fecha y la verdad que es util para encontrar pelis