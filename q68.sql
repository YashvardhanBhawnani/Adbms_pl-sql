declare
  emp_rec emp4%rowtype;
begin
  emp_rec.emp_id := 45;
  emp_rec.emp_name := 'Rohit';
  emp_rec.emp_phoneno := 8901234560;
  emp_rec.emp_department := 'Technical';
  emp_rec.emp_salary := 60000;
  insert into emp4(emp_id, emp_name,
    emp_phoneno, emp_department, emp_salary) values
    (emp_rec.emp_id,
    emp_rec.emp_name,
    emp_rec.emp_phoneno,
    emp_rec.emp_department,
    emp_rec.emp_salary);
commit;
end;
/