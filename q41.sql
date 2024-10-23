begin
	for emp in (select salary from emp) loop
		if emp.salary > 5000 then
			dbms_output.put_line(emp.salary);
		end if;
	end loop;
end;
/