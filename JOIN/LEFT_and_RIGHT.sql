#SOLAMENTE SE MOSTRARAN DESDE ADDRESS QUE GUARDA DEL 1 MAS

SELECT address.address_id , address
FROM sakila.address
LEFT JOIN customer ON address.address_id = customer.address_id;
-- LEFT OUTER JOIN customer ON address.address_id = customer.address_id;
    
#SOLAMENTE SE MOSTRARAN DESDE CUSTOMER QUE GUARDA DEL 5 EN ADELANTE
SELECT address.address_id , address
FROM sakila.address
RIGHT JOIN customer ON address.address_id = customer.address_id;
-- RIGHT OUTER JOIN customer ON address.address_id = customer.address_id;
	