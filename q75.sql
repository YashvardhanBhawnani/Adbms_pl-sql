create or replace trigger trig5
before update
of emp_salary
on emp4
for each row
begin
  if :new.emp_salary <= 0 then
  raise_application_error(-20001,'Salary cannot be reduced!!!');
  end if;
end;
/