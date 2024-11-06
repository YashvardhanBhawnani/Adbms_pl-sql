declare 
	cursor emp_top5_sal is select emp_name,emp_salary from emp4 order by emp_salary desc fetch 	first 5 rows only;
	emp_name emp4.emp_name%type;
	emp_sal emp4.emp_salary%type;
begin
	open emp_top5_sal;
	loop 
		fetch emp_top5_sal into emp_name,emp_sal;
		exit when emp_top5_sal%notfound;
		dbms_output.put_line('Employee Name : ' || emp_name || ' ,Employee Salary : ' ||emp_sal);
	end loop;
	close emp_top5_sal;
end;
/