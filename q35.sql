declare 
	cursor department_cursor is select distinct emp_department from emp4; 
	cursor employees_cursor is select emp_name from emp4; 
begin 
    for dep in department_cursor loop 
    	for emp in employees_cursor loop 
    		dbms_output.put_line(dep.emp_department || ' ' ||emp.emp_name); 
    	end loop; 
    end loop; 
end; 
/