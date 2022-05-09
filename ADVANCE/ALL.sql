USE sakila;
#Obtener todos los pagos donde el pago sea mayor al del cliente id 260
SELECT * FROM payment WHERE amount > -- no es viable , esto solo mostrara un resultado no todos
(SELECT MAX(amount) cantidad FROM payment WHERE customer_id = 260);

SELECT * FROM payment -- ALL, mostara todos los campos por defecto los mayores
WHERE amount > ALL(SELECT amount FROM payment WHERE customer_id = 260)
