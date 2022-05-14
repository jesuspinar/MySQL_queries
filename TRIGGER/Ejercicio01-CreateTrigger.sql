USE sakila;
-- update new amount > old amount replazar new por old
DROP TRIGGER if exists  amount_before_update
DELIMITER $$ 
CREATE TRIGGER amount_before_update
BEFORE UPDATE ON payment
FOR EACH ROW -- para cada registro de la tabla

BEGIN 
	if new.amount < old.amount then  -- si el nuevo amount es mayor al que ya existe 
     SET new.amount = old.amount;
	end if;
END $$
DELIMITER ;

