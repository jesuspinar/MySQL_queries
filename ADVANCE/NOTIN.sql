#obtener todos los customer que no tengan ningun payment
SELECT *
FROM customer 
WHERE customer_id NOT IN(SELECT customer_id FROM payment);
-- DENTRO DEL LA SUBQUERY PUEDES PONER UN WHERE amount > 10 etc.. --
