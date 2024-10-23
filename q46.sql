declare 
	emp_salary number := 50000;
	emp_exp_years number := 10;
begin
	if emp_exp_years > 5 then
		if emp_salary > 40000 then
			dbms_output.put_line('Employee is eligible for promotion');
		else 
			dbms_output.put_line('Employee is eligible for raise');
		end if;
	else
		dbms_output.put_line('Employee needs more experience');
	end if;
end;
/	
			
	 