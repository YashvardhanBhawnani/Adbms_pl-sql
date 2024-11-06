create or replace procedure printEmp (
    id IN emp4.emp_id%TYPE
) is
    empName emp4.emp_name%TYPE;
    empPhoneNo emp4.emp_phoneno%TYPE;
    empDep emp4.emp_department%TYPE;
    empSal emp4.emp_salary%TYPE;
begin
    select emp_name, emp_phoneno, emp_department, emp_salary into empName, empPhoneNo, empDep, empSal from emp4 where emp_id = id;
    dbms_output.put_line('Employee Name : ' || empName);
    dbms_output.put_line('Employee Phone Number: '|| empPhoneNo);
    dbms_output.put_line('Employee Department : ' || empDep);
    dbms_output.put_line('Employee Salary : ' || empSal);
END printEmp;
/
