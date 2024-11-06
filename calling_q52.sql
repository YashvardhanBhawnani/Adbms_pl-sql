DECLARE
    salary NUMBER;
BEGIN
    salary := calc_salary(20000,2000);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || salary);
END;
/