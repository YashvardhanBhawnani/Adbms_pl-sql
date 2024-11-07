create or replace trigger trig9
before update
of emp_salary
on emp4
for each row
begin
  if :old.emp_department = 'Management' then
  raise_application_error(-20001, 'Manager`s salary cannot be changed!!!');
  end if;
end;
/