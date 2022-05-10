DROP PROCEDURE if exists get_rental_rate_variation;
DELIMITER $$
CREATE PROCEDURE get_rental_rate_variation()
BEGIN
	DECLARE variacionAnual DECIMAL; -- variable local no lleva @
    
    SELECT round(AVG(rental_rate) / 
    (
		SELECT AVG(rental_rate)
        FROM film
        WHERE realese_year = YEAR(now()) -1
	),2)
    
    INTO variacionAnual
    
    FROM film
        WHERE realese_year = YEAR(now());
END$$
DELIMITER ;