-- mostrar clientes con pagos y los sin pagos
SELECT 
	concat(customer.first_name,' ',customer.last_name) fullname ,
    ifnull(payment.amount, 'sin pago')
FROM customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id