declare
  student_rec students%rowtype;
begin
  select * into student_rec from students where student_id = 1;
  dbms_output.put_line(student_rec.student_id);
  dbms_output.put_line(student_rec.student_name);
  dbms_output.put_line(student_rec.student_score);
end;
/