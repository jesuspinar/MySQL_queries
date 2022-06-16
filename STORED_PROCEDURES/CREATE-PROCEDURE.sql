-- Stored Procedures: 
-- metodo o funcion en la base de datos que puede ser llamado desde
-- otro lenguaje o parte de la base de datos
/* 
* organiza scripts ya que solo lo modificas en un lugar, 
* optimiza los scripts cada vez que se ejecuta , 
* aumenta la seguridad otorgando el permiso a el objeto que puede hacer el cambio
* 
*/

DROP PROCEDURE IF EXISTS get_customer
DELIMITER $$ # NECESARIO CAMBIAR EL DELIMITARDOR POR DEFECTO ONLY MYSQL

CREATE PROCEDURE get_customer()
BEGIN
	SELECT * 
	FROM customer ;
END$$

DELIMITER ; # NECESARIO CAMBIAR EL DELIMITARDOR POR DEFECTO ONLY MYSQL