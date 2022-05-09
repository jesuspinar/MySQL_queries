SELECT title,
	release_year , 'Nuevo' Año -- indicamos un campo FLAG que quire decir coincide con la busqueda where y año el nombre del campo
FROM sakila.film
WHERE release_year = year(now())

UNION  # --> CONBINA EL PRIMER SET DE RESULTADOS CON EL SEGUNDO (LA SELECT DEBE TENER EL MISMO Nº COLUMNAS)

SELECT title,
	release_year,'Antigua' Año -- no es lo mismo que un ALIAS !!
FROM sakila.film
WHERE release_year < year(now())

order by title -- OR 1 que es el primer campo del SELECT

-- year sirve para sacar registros por fecha y la verdad que es util para encontrar pelis
-- SI SE CAMBIA EL ALIEAS EN EL PRIMER SELECT SE GUARDA PARA LA SEGUNDA Y 
-- YA NO SE MODIFICARA EN EL SEGUNDA