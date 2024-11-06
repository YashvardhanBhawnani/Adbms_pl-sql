declare 
	cursor emp_cur is select emp_id,emp_name,emp_phoneno,emp_department,emp_salary from emp4;
	emp_id emp4.emp_id%type;
	emp_name emp4.emp_name%type;
	emp_phno emp4.emp_phoneno%type;
	emp_dep emp4.emp_department%type;
	emp_sal emp4.emp_salary%type;
	backup_id number := 1;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_id,emp_name,emp_phno,emp_dep,emp_sal;
		exit when emp_cur%notfound;
		insert into empBackup(backup_id,emp_id,emp_name,emp_phoneno,emp_department,emp_salary) values
		(backup_id,emp_id,emp_name,emp_phno,emp_dep,emp_sal);
		backup_id := backup_id + 1;
		dbms_output.put_line('BackedUp Employee ID ' || emp_id || ' with Salary ' || emp_sal);
	end loop;
	close emp_cur;
end;
/