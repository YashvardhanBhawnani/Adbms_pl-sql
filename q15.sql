DECLARE
    x NUMBER := 15;
    y NUMBER := 20;
    z NUMBER := 25;
BEGIN
    IF (x < y AND y < z) THEN
        DBMS_OUTPUT.PUT_LINE('x is less than y AND y is less than z.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('one of the conditions is false.');
    END IF;
    
    IF (x < y OR y > z) THEN
        DBMS_OUTPUT.PUT_LINE(' x is less than y OR y is greater than z.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Both conditions are false.');
    END IF;
    
    IF (NOT (x > z)) THEN
        DBMS_OUTPUT.PUT_LINE('The condition is true');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The condition is false');
    END IF;
    

    IF (x < y AND NOT (y > z)) THEN
        DBMS_OUTPUT.PUT_LINE('x is less than y AND y is NOT greater than z.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Combined condition is false.');
	END IF;
END;
/
