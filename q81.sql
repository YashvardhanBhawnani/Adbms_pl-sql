declare 
	cursor emp_cur is select emp_name from emp4;
	emp_name emp4.emp_name%TYPE;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_name;
		exit when emp_cur%notfound;
		DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
	end loop;
	close emp_cur;
end;
/