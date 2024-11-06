create or replace procedure calc_update_sal 
is 
begin
	update emp4 set emp_salary = case emp_department 
					when 'Management' then emp_salary+1000
					when 'Technical' then emp_salary+1500
					else emp_salary+600
					end;
	commit;
	 dbms_output.put_line('Bonus calculated and updated for all employees based on department.');
end calc_update_sal;

/