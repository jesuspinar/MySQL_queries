#los joins son mas seguros
SELECT * 
FROM address
JOIN city
	ON address.city_id = city.city_id;
    
#como se hacia antes : sql 1992  
SELECT * 
FROM address,
	city
	WHERE address.city_id = city.city_id
