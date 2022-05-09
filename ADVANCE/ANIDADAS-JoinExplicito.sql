#todos los customer que no estene en la tabla payment

SELECT * FROM customer 
WHERE customer_id NOT IN(SELECT customer_id FROM payment);
#MEJOR RENDIMIENTO CON JOIN EXPLICITO
SELECT * FROM customer 
LEFT JOIN payment ON customer.customer_id = payment.customer_id
WHERE payment.customer_id IS NULL