declare
  type emp_type is table of employees.emp_name%type
  index by pls_integer;
emp emp_type;
begin
  emp(1) := 'yash';
emp(2) := 'bhawnani';
for i in 1..emp.count loop
  dbms_output.put_line(emp(i));
  end loop;
emp.delete(2);
dbms_output.put_line('Employee with index 2 deleted!!!');
for i in 1..emp.count loop
	dbms_output.put_line('After Deleting Elements');
  dbms_output.put_line(emp(i));
end loop;
end;
/