begin
	for emp in (select empName,salary from emp) loop
		dbms_output.put_line(emp.empName||' '||emp.salary);
	end loop;
end;
/
