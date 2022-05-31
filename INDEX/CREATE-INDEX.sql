-- INDICES 
-- mejoran el rendimiento de las consultas 
-- se guardan partes comunes de busquedad de base de datos
-- en la memoria, a modo de arboles binarios

-- relacionanan la clave primaria con el campo que quieras hacer el indice
-- para agilizar la busqueda 

use sakila;
CREATE INDEX idx_district ON address(district);
-- se ejecutan por separado
EXPLAIN SELECT * FROM address
WHERE district = 'california' 
-- TYPE como se ejecuto la consulta , all es revisar todos 
-- los registros para comprobar si corresponde a california por ejemplo
-- no se demora mucho por que hay pocos registros , obtimizar lo seria colocar un indice

#Cada vez que creamos una PRIMARY KEY automaticamente se crea un indice asociado 'cluster_index'
#lo auto genera mySql para agilizar las busquedas
