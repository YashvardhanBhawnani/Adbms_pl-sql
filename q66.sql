declare
	cursor emp_cursor is select * from emp4;
	emp_rec emp4%rowtype;
begin
  open emp_cursor;
  loop
    fetch emp_cursor into emp_rec;
    exit when emp_cursor%notfound;
    dbms_output.put_line(emp_rec.emp_name);
  end loop;
  close emp_cursor;
end;
/