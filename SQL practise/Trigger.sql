# Triggers
-- Trigger is a stored Query Which will Execute automatically when an event will occur 
 
# Event :- INSERT, DELETE, UPDATE

/*
Trigger Types:
	BEFORE INSERT 
    AFTER INSERT 
    BEFORE DELETE 
    AFTER DELETE
    BEFORE UPDATE 
    AFTER UPDATE 
    
syntax
	CREATE TRIGGER trigger_name(
    AFTER|BEFORE INSERT|DELETE|UPDATE
    ON table_name
	FOR EACH ROW
    BEGIN
		-- Your SQL Query;
	END;
*/

use ecommerce_db;
select * from employees;





