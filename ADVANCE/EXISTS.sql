#Obtener todos los customer que no tengan payment
#SELECT * FROM customer WHERE customer_id NOT IN(SELECT customer_id  FROM payment);

#busca dentro de la subquery por un match devuelve true or false
SELECT * FROM customer AS clienteMain 
WHERE NOT EXISTS(
	SELECT customer_id  
    FROM payment 
    WHERE payment.customer_id = clienteMain.customer_id 
    )
