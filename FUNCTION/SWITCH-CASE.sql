-- > SWITCH CASE : EVALUAR MAS DE UNA CONDICION
SELECT
	title, 
    realese_year,
    case
		when realese_year = YEAR(now()) then 'nuevas'
		when realese_year = YEAR(now()-1) then 'año pasado'
		when realese_year < YEAR(now()-1) then 'antiguas'
        else 'fecha desconocida' -- es como el default
	end
FROM film;