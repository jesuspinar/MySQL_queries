SELECT distinct title, description 
FROM sakila.film
WHERE MATCH(title, description ) AGAINST("shark" IN BOOLEAN MODE);

-- buscar por indices full text en los que aparezca la palabra shark
-- BOOLEAN MODE; busquedas estilo google ordena por relevancia 
-- Si no contiene la cadena de caracteres no la indexa