-- unir mas de dos tablas 
-- tabla customers existen mas de un id , une las referencias
-- para evitar que varios campos se solapen por el interprete hay que usar alias
-- para mas tarde invocarlo y evitar esto

SELECT
	concat(customer.first_name, ' ', customer.last_name) AS customerName,
    address.address,
    concat(staff.first_name, ' ', staff.last_name) AS storeAdress,
	store_address.address AS addressStore
FROM sakila.customer
# se van concatenando los join al unir mas de una 
JOIN address 
	ON customer.address_id = address.address_id
JOIN store 
	ON customer.customer_id = store.store_id
JOIN address AS store_address
	ON store.address_id = store_address.address_id
JOIN staff
	ON store.manager_staff_id = staff.staff_id;
