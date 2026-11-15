# PROCEDURE

/*
Procedure is like a UDF (User Define Function) or its a stored query 
which will execute when user will call that particular Function/Procedure 

Syntax

Delimeter &&
CREATE PROCEDURE procedure_name(Parameter)
BEGIN
	-Sql Query;
END && Delimeter;

CALL procedure_name()


-- Variable 
SET @bonus  = 0;

-- Example
Delimeter &&
CREATE PROCEDURE procedure_name(IN Parameter , OUT Paramter)
BEGIN
	-Sql Query with INTO keyword for stored some value in Variable ;
END && Delimeter;

CALL procedure_name()

-- use INOUT Keyword  

*/




SHOW PROCEDURE STATUS;