#obtener todos los registros sin hijo asociados (!parent_id)
# y otra con hijo asociados (parent_id)
SELECT concat(first_name,' ', last_name) AS Padre,
    (
		SELECT concat(first_name,' ', last_name)
		FROM customer AS Hijo
		WHERE Hijo.parent_id = customer.customer_id
	) 
    AS Hijo
FROM customer