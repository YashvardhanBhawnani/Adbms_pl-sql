DECLARE
    TYPE emp_record IS RECORD (
        emp_id NUMBER,
        name VARCHAR2(100),
        salary NUMBER
    );
    emp emp_record;
BEGIN
    emp.emp_id := 30;
    emp.name := 'Yashvardhan Bhawnani';
    emp.salary := 50000;
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp.emp_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp.name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || emp.salary);
END;
/