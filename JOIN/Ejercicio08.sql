SELECT address.address, city 
FROM sakila.address
JOIN city ON address.city_id = city.city_id;



-- address => address
-- city => city