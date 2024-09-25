DECLARE
    v_emp_name emp2.emp_name%TYPE;
BEGIN
    FOR rec IN (SELECT emp_name
                FROM emp2
                WHERE salary > 50000 AND department_id = 10)
    LOOP
        v_emp_name := rec.emp_name;
        DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_emp_name);
    END LOOP;
END;
/
