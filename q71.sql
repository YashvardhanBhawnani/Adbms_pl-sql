create or replace trigger trig
  before insert
  on emp5
  for each row
begin
	insert into audit_emp(employee_id) values(:new.empId);
end;
/
