CREATE OR REPLACE PROCEDURE input_employee_details IS
    v_id        employee.id%TYPE;
    v_name      employee.emp_name%TYPE;
    v_department employee.emp_dep%TYPE;
    v_salary    employee.salary%TYPE;
    v_continue  CHAR(1);
BEGIN
    LOOP
        v_id := &Enter_Employee_ID;
        v_name := '&Enter_Employee_Name';
        v_department := '&Enter_Employee_Department';
        v_salary := &Enter_Employee_Salary;
        
        insert_employee(v_id, v_name, v_department, v_salary);
        
        v_continue := '&Do_you_want_to_add_another_employee_(Y/N)';

        EXIT WHEN UPPER(v_continue) <> 'Y';
    END LOOP;
END input_employee_details;
/