-- si colomna es nula devuelve mensaje, sino devuelve valor
SELECT 
	customer.first_name,
    ifnull(parent_id, 'sin familiar')
FROM customer;

-- devolver cualquiera de estas dos columnas que no sea nula , si las dos son nulas devuelve mensaje
SELECT  
	address,
    coalesce(postal_code, address2, 'sin segunda direccion y postal code')
FROM sakila.address