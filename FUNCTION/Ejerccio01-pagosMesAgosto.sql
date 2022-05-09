-- todos los pagos realizado en el mes de agosto
SELECT *
FROM payment
WHERE month(payment_date) = 8

