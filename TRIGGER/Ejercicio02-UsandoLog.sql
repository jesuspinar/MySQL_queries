-- REALIZANDO AUDITORIAS 
-- insentar datos customer_log cada vez que se realize cambios dentro de la tabla customer
DROP TRIGGER if exists customer_before_update 
DELIMITER $$
CREATE TRIGGER customer_before_update 
BEFORE UPDATE ON customer
FOR EACH ROW 
BEGIN 
	DECLARE vCurrent_user varchar(40); -- > Declaramos una variable 
    SELECT USER() INTO vCurrent_user;   -- > que almacena el usuario de la sesion
    
	-- > los valores auto incrementales se obvian ,lo demas hay que escribirlos para evitar fallos
	INSERT INTO customer_log(customer_id, user,date,name,old_name) 
    VALUES(new.customer_id,vCurrent_user, sysdate(), new.first_name,old.first_name);
END $$
DELIMITER ;
