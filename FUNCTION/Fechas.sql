set @fecha := now(); -- > guarda la fecha y hora actual

SELECT
	 now() -- muestra fecha y hora actual
    ,curdate() -- muesra solamente la fecha
    ,curtime() -- muesra solamente la hora
    ,YEAR(now()) -- muestra AÑO actual
    ,MONTH(now()) -- muestra MES actual
    ,DAY(now()) -- muestra DIA actual #COMO NUMM
    ,dayname(now()) -- muestra DIA actual #COMO STRING
    ,extract(YEAR FROM now()) -- saca la fecha actual desde la fecha del server
    ,dayofweek(now()) -- > empieza en domingo , abria que cambiar en la conf de la BD
    ,date_add(@fecha, INTERVAL 1 DAY); -- > suma un dia 
    
#SET GLOBAL time_zone = "Europe/Helsinki"; -- > cambia el dia que empieza la semnna
