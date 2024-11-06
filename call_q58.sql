declare
	avgSal emp4.emp_salary%type;
begin
  avgSal := avgSalary('Technical');
dbms_output.put_line(avgSal);
end;
/