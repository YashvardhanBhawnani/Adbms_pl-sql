DECLARE
    num1 NUMBER := 30;
    num2 NUMBER := 30; 
BEGIN
    IF num1 = num2 THEN
        DBMS_OUTPUT.PUT_LINE('The two numbers are equal.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The two numbers are not equal.');
    END IF;
END;
/