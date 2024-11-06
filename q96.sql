create or replace procedure dispEmp
(
	amt in number	
) is
	cursor emp_cur is select empId,empName,salary from emp where salary > amt;
	emp_id emp.empId%type;
	emp_name emp.empName%type;
	emp_sal emp.salary%type;
begin
	open emp_cur;
	loop
		fetch emp_cur into emp_id,emp_name,emp_sal;
		exit when emp_cur %notfound;
		dbms_output.put_line('Employee ID  : ' || emp_id);
        		dbms_output.put_line('Employee Name : ' || emp_name);
         	dbms_output.put_line('Salary : ' || emp_sal);
        	end loop;
	close emp_cur;
end dispEmp;

/
