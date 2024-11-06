DECLARE
    factorial NUMBER;
BEGIN
    factorial := fact(7);
    DBMS_OUTPUT.PUT_LINE('Factorial is : ' || factorial);
END;
/