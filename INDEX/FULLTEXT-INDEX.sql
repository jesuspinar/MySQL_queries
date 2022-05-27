-- Fulltext index 
-- guardan todas las palabras del texto ignorando los conectores

CREATE FULLTEXT INDEX idx_description on film(description);

-- EXPLAIN 
SELECT 
	distinct title, description,
    MATCH(title, description ) AGAINST("shark" IN BOOLEAN MODE) Coincidencia
FROM sakila.film
WHERE MATCH(title, description ) AGAINST("shark + drama" IN BOOLEAN MODE);
-- BOOLEAN MODE; +incluye o -excluye ciertas palabras
-- opcion por defecto: Si no contiene la cadena de caracteres no la indexa
