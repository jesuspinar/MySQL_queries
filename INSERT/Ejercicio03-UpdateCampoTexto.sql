-- busca todos customer activo 0 donde el pais sea angola
/*
SELECT *
FROM customer
*/

--
UPDATE customer
SET active = 0
-- Funcion donde se encuentre el id adrees con country Angola
WHERE address_id IN(
	SELECT address_id FROM address
	JOIN city ON address.city_id = city.city_id
	JOIN country ON city.country_id = country.country_id
    WHERE country = 'Angola' -- donde el customer.addres_id sea igual a country = Angola
);
