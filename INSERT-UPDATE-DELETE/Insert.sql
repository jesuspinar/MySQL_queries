INSERT INTO actor
VALUES(DEFAULT, 'juan','Perez',DEFAULT); -- 1,4º YA QUE ES AUTO INCREMENTAL

-- hay que proporcinar el nombre de las columnas sino tendras que rellenar todas
INSERT INTO actor(first_name, last_name)
VALUES('Juan','Perez') ,
	('Jose', 'Gonzales'),
    ('Jesus', 'Pepino');
-- se van añadiendo queries con regisros ... 

