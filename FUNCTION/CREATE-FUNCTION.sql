-- Functions solo devuelven un valor , los procedimientos pueden devolver mas de uno
-- deterministic - IF ELSE o un caso u otro
-- read data - select que leera datos de tu base
-- sql data - permite hacer un insert , update , delete
USE employees;
DELIMITER $$
CREATE FUNCTION get_gender(pGender char) returns varchar(10)
deterministic 
BEGIN
	
	DECLARE gender varchar(10); -- declara una variable interna 
    
    SELECT 
		CASE 
			WHEN pGender = 'M' THEN 'Masculino'
			WHEN pGender = 'F' THEN 'Femenino'
        END
	INTO gender;
    
    return gender;
    
END$$
DELIMITER ;