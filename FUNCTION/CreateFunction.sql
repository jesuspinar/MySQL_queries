-- CREAR FUNCIONES 

DELIMITER $$
CREATE FUNCTION MMD5(clave VARCHAR(50)) RETURNS VARCHAR(50) -- DECLARAR PARAMETROS Y TIPO DE VALOR RETORNO
BEGIN RETURN "A"; -- CONTENIDO
END $$ -- FIN DE LA FUNCION
DELIMITER ;

/*
IF(...)THEN RETURN 0
#ELSE IF() THEN RETURN -1
ELSE THEN RETURN -1
END IF;

DECLARE name_var INT;
SET name_var = value; 

*/