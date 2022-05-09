-- tomar desde la tabla paiment amount , payment date
-- join con la tabla customer
-- primer y sengundo nombre de la tabla staff
SELECT 
	CONCAT(customer.first_name, ' ',customer.last_name) CUSTOMER,
	amount,
	payment_date,
    CONCAT(staff.first_name, ' ',staff.last_name) STAFF
	
FROM payment
JOIN customer USING (customer_id)
JOIN staff USING (staff_id)