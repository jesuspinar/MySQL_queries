-- formatos para fechas
-- %y año dos digitos finales
-- %Y año todos digitos
-- %M mes en nombre
-- %m mes dos digitos
-- %d dia dos digitos
-- %a dia en nombre minuscula
SELECT 
	date_format(now(), '%a %M %Y' );
    
SELECT 
	time_format(now(), '%h:%i %p' );
    
