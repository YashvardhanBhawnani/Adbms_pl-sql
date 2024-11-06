declare 
	sal number;
begin
	sal := getMaxSal();
	dbms_output.put_line('Max Employee Salary : '||sal);
end;
/