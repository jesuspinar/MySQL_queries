USE sakila;
#Obtener todos los pagos donde el pago sea mayor al del cliente id 260
SELECT * FROM payment WHERE amount > -- no es viable , esto solo mostrara un resultado no todos
(SELECT MAX(amount) cantidad FROM payment WHERE customer_id = 260);

SELECT * FROM payment -- ANY, pensara si los valores de la query principal son mañores de la subq
WHERE amount > ANY(SELECT amount FROM payment WHERE customer_id = 260);
# es decir mostra cualquier valor mayor en este caso que la query anidada 

#IMPORTANTE#
/*ANY tambien se usa como alternativa al IN*/
#Obtener todas las ciudades donde la direccion pertenezcan a california
SELECT city FROM city 
WHERE city_id = ANY(SELECT city_id FROM address WHERE district = "California");

SELECT city FROM city 
WHERE city_id IN(SELECT city_id FROM address WHERE district = "California");