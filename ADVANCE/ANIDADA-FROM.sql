#Obtener todos los pagos del film id 1 y su diferencia respecto al pago maximo
SELECT title,amount,PAGO_MAXIMO,DIFERENCIA
FROM (
	SELECT payment_id, amount,rental_id,
    (SELECT MAX(amount) FROM payment ) AS PAGO_MAXIMO,
		(SELECT PAGO_MAXIMO ) - amount AS DIFERENCIA
	FROM payment  
)AS sumario_pagos
JOIN rental USING(rental_id)
JOIN inventory USING(inventory_id)
JOIN film USING(film_id)
WHERE film.film_id = 1