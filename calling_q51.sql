DECLARE
    v_name VARCHAR2(100);
BEGIN
    v_name := get_employee_name(2);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);
END;
/