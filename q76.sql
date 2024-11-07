create or replace trigger trig6
after delete
on emp4
for each row
begin
  insert into deleted_employee(emp_id,emp_name,emp_phoneno,emp_department,emp_salary,deleted_at) values(:OLD.emp_id,
  :OLD.emp_name,:OLD.emp_phoneno,:OLD.emp_department,
  :OLD.emp_salary,SYSDATE);
end;
/