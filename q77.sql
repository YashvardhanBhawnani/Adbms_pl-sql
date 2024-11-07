create or replace trigger trig7
before insert
on emp4
for each row
begin
  if :new.emp_department != 'Management' and :new.emp_department != 'Technical'
  and :new.emp_department != 'HR'
  then
  raise_application_error(-20001, 'Invalid Department!!!');
  end if;
end;
/