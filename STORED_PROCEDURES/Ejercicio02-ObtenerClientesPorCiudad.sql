-- obtener todos los clientes por ciudad
-- get_customer_by_city
DROP PROCEDURE if exists get_customer_by_city;
DELIMITER $$
CREATE PROCEDURE get_customer_by_city (pCity_name varchar(15) )
BEGIN
	SELECT *
    FROM customer
    JOIN address ON customer.address_id = address.address_id
    JOIN city ON address.city_id = city.city_id
    WHERE city = pCity_name;
END$$
DELIMITER ;