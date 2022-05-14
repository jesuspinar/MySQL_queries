-- CUSTOMER. FIRST NAME - LASTNAME FULL NAME
			-- EMAIL
-- COUNTRY ID 22 
CREATE TABLE country22 as
SELECT 
	CONCAT(first_name, ' ', last_name) as FULLNAME,
    email,
    city.city
FROM customer
JOIN address USING(address_id)
JOIN city USING(city_id)
JOIN country USING(country_id)
WHERE country_id = 22;

