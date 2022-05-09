-- rating >= 4 'Excelente'
-- rental < 4 && rental > 2.5 'Buenas'
-- regular
SELECT 
	title,
    case
		when rating >= 4 then 'Excelente'
		when rental_rate < 4 AND rental_rate > 2.3 then 'Buenas'
        else 'Regular'
	END AS Valoracion
FROM film
        