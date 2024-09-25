DECLARE
    num1 NUMBER := 20;
    num2 NUMBER := 5;
    add NUMBER;
    diff NUMBER;
    prod NUMBER;
    quot NUMBER;
BEGIN
    add := num1 + num2;
    diff := num1 - num2;
    prod := num1 * num2;
    quot := num1 / num2;
    
    DBMS_OUTPUT.PUT_LINE('Sum: ' || add);
    DBMS_OUTPUT.PUT_LINE('Difference: ' || diff);
    DBMS_OUTPUT.PUT_LINE('Product: ' || prod);
    DBMS_OUTPUT.PUT_LINE('Quotient: ' || quot);
END;
/
