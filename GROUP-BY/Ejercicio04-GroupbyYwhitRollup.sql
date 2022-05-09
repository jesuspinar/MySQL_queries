# TOTAL DE CIUDADES POR PAIS 
# TOTAL DE CIUDADES DE TODOS LOS PAISES
SELECT 
	country,
	count(country.country_id) TOTAL_CIUDADES
FROM country
JOIN city ON country.country_id = city.country_id
GROUP BY country WITH ROLLUP