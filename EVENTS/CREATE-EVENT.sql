-- Crear eventos
-- nomenclatura : cuandoEjecuta_accion_nombreEvento 
/* Cuando ejecuta :	
* weekly
* montly
* yearly
*/
/* Accion :
* DELETE
* UPDATE
* INSERT
*/

DELIMITER $$
CREATE EVENT yearly_delete_customer_logs 
# ON SCHEDULE AT '2019-08-11' -- si solo ejecuta una vez
ON SCHEDULE EVERY 1 year 
	STARTS now() ENDS '2030-08-11'
    
DO BEGIN 
	DELETE FROM customer_log
    WHERE date <= now() - interval 1 YEAR;
END$$
DELIMITER ;