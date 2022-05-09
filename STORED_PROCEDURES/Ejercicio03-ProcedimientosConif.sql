-- MOSTRAR TODOS LOS FILMS CUANDO EL RESULTADO SEA NULL
DROP PROCEDURE if exists get_films_by_year
DELIMITER $$
CREATE PROCEDURE get_films_by_year(pRelease_year int(4))
BEGIN
	SELECT * FROM film 
	WHERE film.release_year = ifnull(pRelease_year, film.release_year);
END$$
DELIMITER ;

/*
BEGIN
	if pRelease_year is null then
		SELECT * FROM film;
	else
    	SELECT * FROM film 
        WHERE film.release_year = pRelease_year;
	end if;
END$$
*/
