declare
  emp_rec emp4%rowtype;
begin
  select * into emp_rec from emp4 where emp_id = 3;
  emp_rec.emp_department := 'Management';
  emp_rec.emp_salary := 90000;
  update emp4 set emp_department = emp_rec.emp_department,
    emp_salary = emp_rec.emp_salary where
    emp_id = emp_rec.emp_id;
end;
/