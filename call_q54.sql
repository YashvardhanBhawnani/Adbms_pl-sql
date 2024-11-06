DECLARE
    plus NUMBER;
BEGIN
    plus := sum_num(10,8);
    DBMS_OUTPUT.PUT_LINE('Sum is : ' || plus);
END;
/