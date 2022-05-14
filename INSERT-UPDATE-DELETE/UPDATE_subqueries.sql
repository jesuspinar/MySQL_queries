UPDATE payment -- tabla
SET amount = 0.00 -- campo
WHERE customer_id IN (
		SELECT customer_id
        FROM customer
        WHERE last_name = 'terry'
);

-- SUBQUERIS ACTUALIZA 