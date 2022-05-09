SELECT * FROM payment
WHERE amount > (SELECT amount FROM payment WHERE payment_id = 14)

#cojera el amount del payment_id 14 y solo devolvera de la
#tabla payment los campos que amount este mayor 