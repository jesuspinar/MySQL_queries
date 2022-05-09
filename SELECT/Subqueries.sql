SELECT *
FROM payment
WHERE customer_id 
IN (
	SELECT customer_id
	FROM customer
	WHERE last_name = 'terry'
);

-- SUBQUERIS UNA SELECT DENTRO DE OTRA