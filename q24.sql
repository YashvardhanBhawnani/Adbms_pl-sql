declare 
	type emp_dep_type is varray(5) of varchar2(30);
	emp_dep emp_dep_type;
begin
emp_dep := emp_dep_type('Management','Technical','Accounts');
for i in 1..emp_dep.count loop
  dbms_output.put_line(emp_dep(i));
  end loop;
end;
/ 