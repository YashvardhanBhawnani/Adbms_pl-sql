declare 
	emp_proj_num number := 10;
	emp_bonus number;
begin
	if emp_proj_num >= 5 then
		emp_bonus := 10000;
		dbms_output.put_line('You have Completed More than 5 projects you have earned a bonus: '||emp_bonus);
	end if;
end;
/
	