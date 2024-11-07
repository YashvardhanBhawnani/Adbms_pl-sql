create or replace trigger trig2
before update
of salary
on emp
for each row
begin
  :new.last_updated := current_timestamp;
	dbms_output.put_line('Salary Is Being Updated');
end;
/