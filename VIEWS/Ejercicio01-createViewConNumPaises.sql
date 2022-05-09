-- crear vista cities_by_country
-- seleccionar de la tabla country todos los paises
-- numero de ciudades por country
CREATE VIEW cities_by_country AS
SELECT  country.country, count(city.country_id) AS TOTAL_CITIES
FROM country
JOIN city ON country.country_id = city.country_id
GROUP BY country.country asc