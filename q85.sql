declare
	cursor emp_cur is select emp_salary from emp4;
	emp_sal emp4.emp_salary%type;
	bonus emp4.emp_salary%type;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_sal;
		exit when emp_cur%notfound;
		if emp_sal > 50000 then
			bonus:=2500;
		else
			bonus:=3000;
		end if;
		dbms_output.put_line('Bonus Is : ' || bonus);
	end loop;
	close emp_cur;
	
end;
/