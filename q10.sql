DECLARE
    v_employee_name employees.emp_name%TYPE;
BEGIN
    SELECT emp_name
    INTO v_employee_name
    FROM employees
    WHERE emp_id = 30;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_employee_name);
END;
/
