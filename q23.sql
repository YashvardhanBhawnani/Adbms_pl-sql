declare   
	type emp_salaries_type is table of number;
	emp_salaries emp_salaries_type;
begin
  emp_salaries := emp_salaries_type(5000,6000,10000,7000,8000);
emp_salaries.extend;
emp_salaries(emp_salaries.count):=20000;	
for i in 1..emp_salaries.count loop
  dbms_output.put_line('Index ' || i || ': ' || emp_salaries(i));
  end loop;
end;
/