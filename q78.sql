create or replace trigger trig8
before insert
on emp5
for each row
begin
  if :new.hire_date is null then
    :new.hire_date := sysdate;
  end if;
end;
/