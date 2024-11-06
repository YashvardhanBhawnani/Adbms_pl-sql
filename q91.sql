create or replace procedure updateEmpSal(
	empId in emp4.emp_id%type,
	performance_rating in number
) is
	emp_currSal emp4.emp_salary%type;
	increment number;
	emp_newSal emp4.emp_salary%type;
begin
	select emp_salary into emp_currSal from emp4 where emp_id = empId;
	increment := case performance_rating
			when 5 then 2500
			when 4 then 2000
			when 3 then 1500
			when 2 then 1000
			else 0
			end;
	emp_newSal := emp_currSal + increment;
	update emp4 set emp_salary = emp_newSal where emp_id = empId;
	commit;
	dbms_output.put_line('Updated salary for employee with ID ' || empId || ' to ' || emp_newSal);
end updateEmpSal;
/
	