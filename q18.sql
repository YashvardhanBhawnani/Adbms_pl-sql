DECLARE
    v_total_id NUMBER;
BEGIN
    SELECT SUM(emp_id)
    INTO v_total_id
    FROM employees;

    DBMS_OUTPUT.PUT_LINE('Total Sum of Ids is: ' || v_total_id);
    DBMS_OUTPUT.PUT_LINE('yashvardhan bhawnani');
END;
/
