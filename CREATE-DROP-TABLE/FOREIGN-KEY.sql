-- Creando realaciones
DROP TABLE IF EXISTS payment_test;
CREATE TABLE payment_test(
	#creando clave primaria
	payment_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    #creando clave foranea
    FOREIGN KEY fk_payment_customer(customer_id) 
        #hacia donde hace la referencia la clave foranea
		REFERENCES customer(customer_id)
        #creando restricciones
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);
-- eliminando clave foranea
ALTER TABLE payment 
DROP FOREIGN KEY fk_payment_customer;