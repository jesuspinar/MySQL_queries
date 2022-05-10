-- Cuenta el numero de pagos que tiene cada cliente
DROP PROCEDURE if exists get_payment_by_customer_id;
DELIMITER $$
CREATE PROCEDURE get_payment_by_customer_id(pCustomer_id int, pPage_number int , pPage_size int,
	out pTotal int) -- Definiendo parametros de salida
BEGIN
	SELECT *
    FROM payment
    WHERE payment.payment_id = pCustomer_id
    LIMIT pPage_number, pPage_size;
    
    SELECT count(payment_id) 
    INTO pTotal # actua como return
    FROM payment
	WHERE payment.customer_id = pCustomer_id;
END$$
DELIMITER ;