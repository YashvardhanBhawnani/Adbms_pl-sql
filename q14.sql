DECLARE
    a NUMBER := 10;
    b NUMBER := 20;
BEGIN
      IF a = b THEN
        DBMS_OUTPUT.PUT_LINE('a is equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is not equal to b');
    END IF;
    
    IF a != b THEN
        DBMS_OUTPUT.PUT_LINE('a is not equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is equal to b');
    END IF;
    
    IF a < b THEN
        DBMS_OUTPUT.PUT_LINE('a is less than b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is not less than b');
    END IF;
    
    IF a > b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is not greater than b');
    END IF;
    
    IF a <= b THEN
        DBMS_OUTPUT.PUT_LINE('a is less than or equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is not less than or equal to b');
    END IF;
    
    IF a >= b THEN
        DBMS_OUTPUT.PUT_LINE('a is greater than or equal to b');
    ELSE
        DBMS_OUTPUT.PUT_LINE('a is not greater than or equal to b');
    END IF;
END;
/
