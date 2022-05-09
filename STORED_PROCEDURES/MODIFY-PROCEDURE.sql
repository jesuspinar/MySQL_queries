-- MODIFICAR UN PROCEDIMIENTO
USE `sakila`;
DROP procedure IF EXISTS `get_payments`;

DELIMITER $$
USE `sakila`$$
CREATE PROCEDURE `get_payments` ()
BEGIN
	SELECT * 
    FROM payment;
END$$

DELIMITER ;
