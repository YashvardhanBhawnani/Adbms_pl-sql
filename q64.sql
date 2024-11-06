DECLARE
    v_emp emp4%ROWTYPE;
BEGIN
    SELECT * INTO v_emp FROM emp4 WHERE emp_id = 3;
    v_emp.emp_salary := v_emp.emp_salary + 2000;
    UPDATE emp4 SET emp_salary = v_emp.emp_salary WHERE emp_id = 3;	
    DBMS_OUTPUT.PUT_LINE('Updated Salary of Employee ' || v_emp.emp_id || ': ' || v_emp.emp_salary);
END;
/
