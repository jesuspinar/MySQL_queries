SELECT * FROM payment
WHERE payment.customer_id IN (
	SELECT customer.customer_id 
	FROM customer
	WHERE last_name = 'JONES');
