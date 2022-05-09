-- MOSTRAR LAS PELICULAS DEL AÑO ACTUAL
-- get_current_films()
DELIMITER $$
CREATE PROCEDURE get_current_films()
BEGIN
	SELECT title  ,YEAR(now()) AS fecha 
	FROM film
	WHERE release_year = YEAR(now());
END$$

DELIMITER ;