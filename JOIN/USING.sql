SELECT address,
	city,
    country
FROM address
JOIN city #ON address.city_id = city.city_id
USING(city_id)
JOIN country
USING (country_id)

-- evita la redundacia