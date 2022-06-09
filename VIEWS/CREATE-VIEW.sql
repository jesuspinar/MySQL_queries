-- creando vistas , como si fueran librerias, formularios y reportes de la BD
-- reduce el impacto de cambios en las base de datos 
-- puedes modificar la view en vez de cambiar la base

CREATE OR REPLACE VIEW payment_by_customer AS 
SELECT 
	customer.customer_id,
	concat(customer.first_name, ' ',customer.last_name) nombre,
	ifnull(sum(payment.amount),0) AS total_pagos
FROM sakila.customer
LEFT JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, nombre