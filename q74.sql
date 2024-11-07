create or replace trigger trig4
after insert
on emp4
for each row
begin
  insert into msg_emp values(:new.emp_id,'Welcome Employee',
  current_timestamp);
end;
/