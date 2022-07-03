-- How to use the function SQL Count

SET SERVEROUTPUT ON 
DECLARE
V_COUNT NUMBER ;

BEGIN

    SELECT COUNT(1) INTO V_COUNT  -- At PL SQL you must always add the return from the select into a variable.
    FROM HR.EMPLOYEES;

    IF V_COUNT = 0 THEN
      DBMS_OUTPUT.PUT_LINE ('There no employees at the system.');
    ELSE
      DBMS_OUTPUT.PUT_LINE ('There are  ' || TO_CHAR(V_COUNT) || ' employees in the table.');
    END IF;
    
  
END;