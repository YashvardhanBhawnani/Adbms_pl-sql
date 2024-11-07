create or replace trigger trig10
after update
of emp_department
on emp4
for each row
begin
  insert into msg_emp values(:old.emp_id, 'Job Title Changed!!!',
  current_timestamp);
end;
/