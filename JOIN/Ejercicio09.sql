SELECT
	concat(customer.first_name, ' ', customer.last_name) AS customerName,
    payment.amount,
    payment_date,
    concat(staff.first_name, ' ',staff.last_name) AS AdminName
FROM SAKILA.payment
JOIN customer
	ON payment.customer_id = customer.customer_id
JOIN staff
	ON payment.staff_id = staff.staff_id;

-- mostrar todos lo pagos de los clientes, 
-- clientes primer nombre y segundo nombre,
-- 	amount y paymentdate

-- mostrar de staff 
-- staff primer nombre y segundo nombre,

#Muestra el numero de ventas que ha hecho cada vendedor 