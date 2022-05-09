CREATE OR REPLACE VIEW payments_with_customer AS
SELECT 
	concat(customer.first_name ,' ' ,customer.last_name) AS full_name,
	payment_id,
    payment_date,
    amount AS total
FROM payment
JOIN customer ON payment.customer_id = customer.customer_id