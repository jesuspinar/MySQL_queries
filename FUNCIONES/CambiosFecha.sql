-- CAMBIAR LA FECHA DE LA BD

-- sumar
SELECT 
	date_add(now(), INTERVAL 1 DAY);

-- restar
SELECT 
	date_sub(now(), INTERVAL 1 YEAR);
    
-- devuelve diferencia en dias #(fechaMayor, fechaMenor)
SELECT 
	datediff('2022-02-02','2022-04-02' );
    
-- devuelve segundos de diferencias entre dos 
SELECT 
	time_to_sec('15:33') - time_to_sec('13:33')
