create or replace procedure transfer_emp (
    emp_id IN emp5.empId%TYPE,
    dept_id IN emp5.dep_id%TYPE
) is
    curr_dept emp5.dep_id%TYPE;
begin
    select dep_id INTO curr_dept from emp5 where empId = emp_id;
    update emp5 set dep_id = dept_id where empId = emp_id;
    commit;
    dbms_output.put_line('Employee with ID ' || emp_id || ' successfully transferred to department ' || dept_id);
END transfer_emp;
/
