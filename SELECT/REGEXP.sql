USE sakila;
SELECT * FROM film
WHERE description REGEXP '^A' # PARA BUSCAR Texto POR COMIENZO
#WHERE description REGEXP 'A$' # PARA BUSCAR Texto POR FIN
#WHERE description REGEXP 'trailer|deleted' # PARA BUSCAR Texto POR Palabras con OR 
#SE UTILIZA PARA EXPRESIONES REGULARES mas concretas Y NO PALABRAS
# ES COMO EL LIKE PERO MAS ABANZADO 

#WHERE title REGEXP '[RMN]A'
#Buscar con array de palabras O grupo caracteres 
-- antes de la a: una letra r
-- 				  una letra m
-- 				  una letra n

#WHERE title REGEXP '[a-f]'