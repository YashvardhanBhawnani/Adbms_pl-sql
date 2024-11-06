declare 
	emp_count number;
begin
	emp_count := getEmpCount('Technical');
	dbms_output.put_line('Employee Count In Technical Department : '||emp_count);
end;
/