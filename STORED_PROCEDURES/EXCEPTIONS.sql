-- UPDATE + PROCEDURES + EXCEPCIONES
DROP PROCEDURE if exists update_payment;
DELIMITER $$
CREATE PROCEDURE update_payment(pPayment_id smallint(5), pAmount decimal(5,2))
BEGIN
	if pAmount <= 0 then
		SIGNAL SQLSTATE '22003' #CONSULTAR CODIGOS EXCEPCION EN LA PAGINA DE IBM
		SET MESSAGE_TEXT = 'INTRODUCISTE UN DATO NEGATIVO';
	end if;
	UPDATE payment SET payment.amount = pAmount 
    WHERE payment.payment_id = pPayment_id;
END$$
DELIMITER ;

