-- DELETE ADDRESS WHERE CITY = 'Santiago'

#SELECT * FROM address
DELETE FROM address
WHERE address.city_id IN(
	SELECT city.city_id
    FROM city
    WHERE city.city = 'santiago' 
)
    
 /*   
SELECT * FROM sakila.address
WHERE address_id IN(
	SELECT address_id -- aparece o coincide los que tienen el mismo city_id son los que van al where
    FROM address
    JOIN city ON address.city_id = city.city_id
    WHERE city = 'Santiago')
*/