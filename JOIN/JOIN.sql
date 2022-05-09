SELECT rental_id,rental_date, first_name,last_name
FROM rental #toma prioridad de dalida los campos de la tabla que va aqui
JOIN customer ON rental.customer_id = customer.customer_id

-- ORDER BY customer.first_namem #existen campos que se repiten por que es una relacion de 1-*
#para seleccionar atributos con el mismo nombre pero en diferentes tablas se usa
#el nombre de la tabla seguido de un . y el nombre del atributo