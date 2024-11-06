create or replace procedure delEmp (
    id IN emp5.empId%TYPE
) is
begin
    delete from emp5 WHERE empId = id;
    commit;
    dbms_output.put_line('Deleted');
END delEmp;
/
