DECLARE
    emp emp4%ROWTYPE;
BEGIN
    SELECT *
    INTO emp
    FROM emp4
    WHERE emp_id = 3;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp.emp_id);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp.emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Phone Number: ' || emp.emp_phoneno);
    DBMS_OUTPUT.PUT_LINE('Employee Department : ' || emp.emp_department);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || emp.emp_salary);
END;
/
