-- primera encripta: clave
DELIMITER $$
CREATE FUNCTION encripta(clave VARCHAR(50)) RETURNS VARCHAR(50) -- DECLARAR PARAMETROS Y TIPO DE VALOR RETORNO
BEGIN RETURN MD5(clave); -- CONTENIDO
END $$ -- FIN DE LA FUNCION
DELIMITER ;

-- segundo es_correcto : clave_original y encriptada devuelve tiny Integer (boolean false -1  true 0 )
DELIMITER $$
CREATE FUNCTION es_correcto(clave VARCHAR(50)) RETURNS BOOLEAN 
BEGIN 
	IF(clave = encripta(clave))THEN RETURN 0;
    ELSE RETURN -1;
	END IF;
END $$ 
DELIMITER ;
