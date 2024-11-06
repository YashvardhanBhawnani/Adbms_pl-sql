create or replace procedure updateHireDate(
	depID in emp5.dep_id%type,
	new_hire_date in emp5.hire_date%type
) is
begin
	update emp5 set hire_date = new_hire_date where dep_id = depId;
	commit;
	dbms_output.put_line('Hire Date Updated for employees with Id : '||depId);
	dbms_output.put_line(new_hire_date);
end updateHireDate;

/
