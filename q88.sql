declare 
	cursor emp_cur is select emp_id,emp_salary,emp_department from emp4 for update;
	emp_id emp4.emp_id%type;
	emp_sal emp4.emp_salary%type;
	emp_dep emp4.emp_department%type;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_id,emp_sal,emp_dep;
		exit when emp_cur%notfound;
		if emp_dep = 'Technical' then
			update emp4 set emp_salary = emp_sal + 1200 where current of emp_cur;
			dbms_output.put_line('Updated Employee Id ' || emp_id || ' with 1200 Rs salary increase.');
		elsif emp_dep = 'Management' then
			update emp4 set emp_salary = emp_sal + 2000 where current of emp_cur;
			dbms_output.put_line('Updated Employee Id ' || emp_id || ' with 2000 Rs salary increase.');
		else
			update emp4 set emp_salary = emp_sal + 1500 where current of emp_cur;
			dbms_output.put_line('Updated Employee Id ' || emp_id || ' with 1500 Rs salary increase.');
		end if;
	end loop;
	close emp_cur;
end;
/
