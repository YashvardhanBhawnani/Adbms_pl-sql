declare 
	emp_role varchar2(35) := 'Senior Developer';
	emp_msg varchar2(50);
begin
	emp_msg := case 	emp_role
			when 'Senior Developer' then 'keep coding'
			when 'Junior Developer' then 'keep growing'
			when 'Hr' then 'You have to manage employees'
			else 'invalid input'
			end;
	dbms_output.put_line(emp_msg);
end;
/