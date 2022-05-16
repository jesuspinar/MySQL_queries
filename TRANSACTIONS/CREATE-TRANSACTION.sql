SET @i := (SELECT max(city_id) FROM city); 
START TRANSACTION;
INSERT into address(address, district, city_id, phone)
VALUES ('Av. Religiosas','Monas',@i,'893413421');

INSERT into customer(store_id, first_name,last_name,address_id,create_date)
VALUES (1,'JOHN','DOE',last_insert_id(),now());

COMMIT;