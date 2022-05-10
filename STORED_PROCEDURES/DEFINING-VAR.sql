# VARIABLE DE SESION, SE QUEDAN EN MEMORIA DURANTE LA SESION DEL USUARIO

SET @pCustomer_id = 35;
SET @pPage_number = 2;
SET @pPage_size = 4;
SET @pTotal = 0; -- > SE VA A MODIFICAR POR EL PROCEDIMIENTO
call get_payment_by_customer_id(pCustomer_id,pPage_number,pPage_size,@pTotal);

SELECT @pTotal

# BEGIN DECLARE variacionAnual DECIMAL; -- variable local no lleva @ solo en procedimientos o funcinoes y triggers