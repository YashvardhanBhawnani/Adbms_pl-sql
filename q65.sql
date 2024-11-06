declare
	dep_rec departments%rowtype;
begin
  	dep_rec.dep_id := 1;
  	dep_rec.dep_name := 'Technical';
  	dbms_output.put_line(dep_rec.dep_id);
  	dbms_output.put_line(dep_rec.dep_name);
end;
/
