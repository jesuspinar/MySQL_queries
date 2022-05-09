-- AVG avarage , promedio de datos
-- MAX el dato maximo
-- MIN el dato minimo
-- SUM suma el dato 
-- COUNT cuenta cuantas ocurrencias, SOLO con registros no null en las columnas

SELECT AVG(amount) FROM sakila.payment;
SELECT MAX(amount) FROM sakila.payment;
SELECT MIN(amount) FROM sakila.payment;
SELECT SUM(amount) FROM sakila.payment;  --  suma todos los registros
SELECT COUNT(amount) FROM sakila.payment;

SELECT 
	MAX(amount) Coste_Maximo,MIN(amount) 'Coste Minimo',AVG(amount) "Coste Promedio",
    SUM(amount) Cantidad_Total, COUNT(amount) nRegistros
FROM payment;
/*AVG funcion
sumatorio precio productos / cantidad productos
 
la suma del precio de todos los alquileres 
dividido entre el catidad de productos 

for(int i = 0; i > cantidadProductos; i++){
	total += producto[i].getPrecioAlquiler();
}
total = total / cantidadProductos;
*/
