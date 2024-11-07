create or replace trigger trig3
  before delete
  on emp4
  for each row
begin
  if :old.emp_department = 'Technical' then
  RAISE_APPLICATION_ERROR(-20001, 'Deletion is not allowed for employees in Technical');
  end if;
end;
/