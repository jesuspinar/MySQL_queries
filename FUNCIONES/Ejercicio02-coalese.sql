-- como devolver un valor si hay un valor nulo
SELECT 
	concat(customer.first_name, ' ', customer.last_name) AS nombre,
	ifnull(amount, 'sin pagos' ) AS tienePagos
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id


-- coalese() hace lo mismo pero comprobando dos columnas