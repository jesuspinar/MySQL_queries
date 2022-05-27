-- prefix index
-- toma nada mas una parte del indice varchar , text o char
									-- indicar cuantos caracteres
DROP INDEX idx_last_name ON customer;
CREATE INDEX idx_last_name on customer(last_name(5));
-- la mejor manera es ver cuantos valores unicos nos determina un valor largo
-- verificar cual es el valor que mas se acerca a la cantidad total de resultados
SELECT 
	count(distinct last_name),
	count(distinct last_name(2)),
	count(distinct last_name(5))
From customer