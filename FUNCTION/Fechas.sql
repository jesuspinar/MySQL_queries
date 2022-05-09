SELECT
	 now() -- muestra fecha y hora actual
    ,curdate() -- muesra solamente la fecha
    ,curtime() -- muesra solamente la hora
    ,YEAR(now()) -- muestra AÑO actual
    ,MONTH(now()) -- muestra MES actual
    ,DAY(now()) -- muestra DIA actual #COMO NUMM
    ,DAYNAME(now()) -- muestra DIA actual #COMO STRING
    ,extract(YEAR FROM NOW()) -- saca la fecha actual desde la fecha del server
    