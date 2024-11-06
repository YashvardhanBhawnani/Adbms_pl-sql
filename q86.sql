declare
	cursor emp_cur (department varchar2) is select emp_id,emp_name,emp_department from emp4 where emp_department=department;
	emp_id emp4.emp_id%type;
	emp_name emp4.emp_name%type;
	emp_dep emp4.emp_department%type;
begin
	open emp_cur('Technical');
	loop
		fetch emp_cur into emp_id,emp_name,emp_dep;
		exit when emp_cur%notfound;
		 DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id || ', Name: ' || emp_name || ', Department Name: ' || emp_dep);
    	end loop;
	close emp_cur;
end;
/
