-- mostrar todos los films donde rental_rate sea igual o mayor 4 , excelente sino regular
SELECT 
    title,
    if(rental_rate >= 4 , 'Excelente', 'Regular')
FROM film