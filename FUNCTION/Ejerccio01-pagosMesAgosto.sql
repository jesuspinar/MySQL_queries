-- todos los pagos realizado en el mes de agosto
SELECT *
FROM payment
WHERE monthname(payment_date) = "august"

