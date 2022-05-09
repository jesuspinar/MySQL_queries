SELECT 
	CONCAT(customer.first_name, ' ', customer.last_name) HIJO,
    parent.customer_id,
    CONCAT(parent.first_name, ' ', parent.last_name) PADRE,
    customer.parent_id
    
    
FROM customer
JOIN customer AS parent
	ON customer.parent_id = parent.parent_id 


-- self join de todos los clientes menore edad o con parent id
-- es necesario hacer un alias para que no se confunda
