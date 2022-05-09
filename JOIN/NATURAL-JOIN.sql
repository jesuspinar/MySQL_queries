-- NATURAL JOIN : no necesita especificar el nombre de la columna al que se va aunir sino que sql distinge a que tablas se le va hacer
-- averigua las columnas que son igual , puede hacer duplicidades  (no recommendable)
USE employees;
SELECT * 
FROM salaries
NATURAL JOIN employees

