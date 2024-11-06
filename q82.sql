declare 
	cursor emp_cur is select emp_id,emp_name,emp_salary from emp4 where emp_salary > 5000;
	 emp_id emp4.emp_id%TYPE;
    	emp_name emp4.emp_name%TYPE;
    	emp_salary emp4.emp_salary%TYPE;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_id,emp_name,emp_salary;
		exit when emp_cur%notfound;
		DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id || ', Name: ' || emp_name || ', Salary: ' ||emp_salary);
	end loop;
	close emp_cur;
end;
/