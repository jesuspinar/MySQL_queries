-- mostrar todos los film por categoria
-- en caso que reciba una categoria null mostrara todas
-- get_films_by_category
DROP PROCEDURE if exists get_films_by_category;
DELIMITER $$
CREATE PROCEDURE get_films_by_category(pCategory varchar(20))
BEGIN    
	SELECT * 
    FROM film
    JOIN film_category ON film.film_id = film_category.film_id
    JOIN category ON film_category.category_id = category.category_id    
    WHERE category.name = ifnull(pCategory,category.name) ;
END$$
DELIMITER ;