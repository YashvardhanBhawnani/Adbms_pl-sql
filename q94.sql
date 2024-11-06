create or replace procedure insertEmp
(
	emp_id in emp.empId%type,
	emp_name in emp.empName%type,
	emp_sal in emp.salary%type
) is
begin
	insert into emp(empId,empName,salary) values (emp_id,emp_name,emp_sal);
	commit;
end;

/
