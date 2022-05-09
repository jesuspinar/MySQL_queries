-- mosta todos los clientes con parent_id o parent_id usando Self Join
SELECT 
	CONCAT(customer.first_name, ' ', customer.last_name) HIJO,
    parent.customer_id,
    CONCAT(parent.first_name, ' ', parent.last_name) PADRE,
    customer.parent_id
    
    
FROM customer
LEFT JOIN customer AS parent
	ON customer.parent_id = parent.parent_id 
