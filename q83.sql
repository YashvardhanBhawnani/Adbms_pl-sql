declare 
	cursor emp_cur is select emp_salary from emp4;
	emp_sal emp4.emp_salary%type;
begin
	open emp_cur;
	loop 
		fetch emp_cur into emp_sal;
		exit when emp_cur%notfound;
		dbms_output.put_line(emp_sal);
	end loop;
	close emp_cur;
end;
/

		