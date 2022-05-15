DELIMITER $$
-- > ALTER : modifica eventos
ALTER EVENT yearly_delete_customer_logs 
ON SCHEDULE EVERY 1 year 
	STARTS now() ENDS '2030-08-11'
    
DO BEGIN 
	DELETE FROM customer_log
    WHERE date <= now() - interval 1 YEAR;
END$$
DELIMITER ;

-- > Tambien deshabilita Y habilita evento temporalmente
ALTER EVENT yearly_delete_customer_logs DISABLE;
