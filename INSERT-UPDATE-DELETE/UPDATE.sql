#ACTUALIZAR REGISTRO

UPDATE film -- tabla
SET replacement_cost = 12.99, -- atributo, es decimal
	length = DEFAULT -- ACTUALIZAR MAS DE UN atributo REGISTRO USANDO VALOR POR DEFECTO
WHERE film_id = 1 # film_id BETWEEN 1 AND 3
;
UPDATE film SET replacement_cost = 11, lenght = DEFAULT 
WHERE film_id = 1 ;