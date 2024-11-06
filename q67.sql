declare
  type emp_rec_type is record(emp_id emp4.emp_id%type,
  emp_name emp4.emp_name%type);
  emp_rec emp_rec_type;
begin
  select emp_id, emp_name into emp_rec from emp4
  where emp_id = 1;
  dbms_output.put_line(emp_rec.emp_id);
  dbms_output.put_line(emp_rec.emp_name);
end;
/