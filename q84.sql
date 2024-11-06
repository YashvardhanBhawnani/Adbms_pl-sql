declare 
	cursor emp_cur is select emp_id,emp_department,emp_salary from emp4;
	emp_id emp4.emp_id%type;
	emp_dep emp4.emp_department%type;
	emp_sal emp4.emp_salary%type;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_id,emp_dep,emp_sal;
		exit when emp_cur%notfound;
		if emp_sal>50000 then
			update emp4 SET emp_department = 'Senior Roles' WHERE emp_id = 1;
		end if;
	end loop;
	close emp_cur;
	dbms_output.put_line('Updated');
end;
/