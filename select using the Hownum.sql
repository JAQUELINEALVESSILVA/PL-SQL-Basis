-- How to use Rownum SQL

SET SERVEROUTPUT ON

DECLARE
V_COUNT NUMBER;

BEGIN
  BEGIN
    SELECT 1 INTO V_COUNT
    FROM HR.EMPLOYEES
    WHERE ROWNUM = 1; -- SELECT QUE BUSCA O PRIMEIRO CAMPO DA PESQUISA E INSERE NA VARIAVEL.
    
    EXCEPTION
    WHEN OTHERS THEN
    V_COUNT := 0;
    
    END;
  

  IF V_COUNT = 0 THEN
    DBMS_OUTPUT.PUT_LINE ('NÃO TEM NINGUEM');
  ELSE
   DBMS_OUTPUT.PUT_LINE ('HA ALGUEM AQUI');
  
  END IF;

EXCEPTION 
 WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);


END;