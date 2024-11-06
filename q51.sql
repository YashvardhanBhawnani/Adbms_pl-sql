CREATE OR REPLACE FUNCTION get_employee_name(p_employee_id IN NUMBER) 
RETURN VARCHAR2 
IS
    v_employee_name VARCHAR2(100);  
BEGIN
    -- Select employee name based on employee ID
    SELECT emp_name 
    INTO v_employee_name
    FROM emp4
    WHERE emp_id = p_employee_id;

    RETURN v_employee_name;  -- Return the employee name
END get_employee_name;
/


