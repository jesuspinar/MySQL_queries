-- Triggers : scripts que se ejecutan antes o despues de un insert-update-delete
USE sakila;
SELECT * FROM payment;


DELIMITER $$ 
CREATE TRIGGER payment_before_insert -- nombreTabla_beforeAfter_insert-update-delete
BEFORE INSERT ON payment
FOR EACH ROW # POR CADA REGISTRO O FILA SE EJECUTARA ESTE TRIGGER

-- limitar el ingreso a 9.99 
BEGIN 
	if new.amount >= 10 then 
     SET new.amount = 9.99;
	end if;
END $$
DELIMITER ;

/* NEW para acceder al valor nuevo OLD para acceder al
*  valor antiguo solo en las sentencias con UPDATE 
*/