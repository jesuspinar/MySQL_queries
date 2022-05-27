-- INDICES COMPUESTOS
# CREATE INDEX idx_release_year on film(release_year);
CREATE INDEX idx_release_year_renta_rate on film(
	release_year,
    rental_rate
);

-- EXPLAIN
SELECT film_id
FROM film
WHERE release_year = YEAR(NOW())
AND rental_rate = 2.99