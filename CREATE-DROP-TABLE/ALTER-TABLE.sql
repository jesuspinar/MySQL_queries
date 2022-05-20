-- Modificacion tabla -- Agrega campo 
ALTER TABLE customer ADD gender CHAR(1) NOT NULL;
-- Modificacion tabla -- Elimina campo
ALTER TABLE customer DROP gender;
-- Modificacion tabla -- cambia el tipo
ALTER TABLE customer MODIFY gender BOOLEAN NOT NULL;

