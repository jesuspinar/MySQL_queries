-- mostrar desde la tabla CUSTOMER todos los registros de CUSTOMER que no tienen PAYMENT
SELECT *
FROM customer 
LEFT JOIN payment ON customer.customer_id = payment.customer_id 
-- NO PUEDE SER JOIN ya que el campo que se busca no esta en la tabla customer sino en la izq
WHERE payment.customer_id IS NULL;