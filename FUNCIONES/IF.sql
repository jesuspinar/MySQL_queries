SELECT 
	title, 
    release_year,
    if(release_year = YEAR(now()), 'Nuevas', 'Antiguas')
FROM film;


# if(campo , valor_true, valor_false ) -- > el valor tambien puede ser un mensaje