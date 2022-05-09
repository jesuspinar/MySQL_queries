SELECT 
	length('JESUS') -- devuelve el numero caracteres
	, lower('JESUS') -- minusculas
	, upper('JESUS') -- mayusculas
	, ltrim('  JESUS') -- elimnia espacios en blanco por la izquireda
	, rtrim('JESUS   ') -- elimnia espacios en blanco por la derecha
	, trim('JESUS   ') -- elimnia espacios en blanco
	, left('JESUS',3) -- mostrar los primeros caracteres por la izq
	, right('JESUS',3) -- mostrar los primeros caracteres por la izq
	, substring('JESUS',2,5) -- mostrar caracteres de 0 a X posicion
	, locate('s','jesus') -- mostrar posicion del caracter o primer caracter palabra 0 no encuentra
    , replace('rojoazul', 'rojo','verde') -- remplaza en string (palabra, caracteres a remplazar, nueva palabra)
    , concat('ROJO', '-', 'Azul') -- concatenan dos string