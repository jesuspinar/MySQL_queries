-- ACTUALIZAR DATOS EN LAS VISTAS CUANDO NO TENGAN :
-- DISTINCT
-- GROUP BY
-- MIN MAX AVG SUM
-- MISMA TABLA 
-- UNION
/*
CREATE VIEW payment_mod_view AS 
SELECT payment_id,amount
FROM payment;
*/

DELETE 
FROM payment_mod_view
WHERE payment_id = 2051;
