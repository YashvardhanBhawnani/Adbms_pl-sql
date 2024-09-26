DECLARE
    employee_id    NUMBER := 12;  
    employee_name  VARCHAR2(30);  
    employee_salary NUMBER;        
BEGIN
    emp_name(ID => employee_id, emp_name => employee_name, emp_salary => employee_salary);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || employee_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || employee_salary);
END;
/