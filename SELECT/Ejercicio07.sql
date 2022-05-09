-- devolver los 50 films con mayor rental rate y que el raiting = g 
-- ademas special features contenga la palabra trailer
SELECT * FROM sakila.film
WHERE rating = 'g' AND special_features REGEXP '^trailer|trailer$'
ORDER BY rental_rate desc
LIMIT 50