-- create prodedure with parameters
DROP PROCEDURE if exists get_films_by_year;
DELIMITER $$
CREATE PROCEDURE get_films_by_year (pRelease_year int(4)) -- de tipo date lo pasa a entero de 4 cifras
BEGIN
	SELECT *
    FROM film
    WHERE film.release_year = pRelease_year;
END$$
DELIMITER ;