declare 
	student_marks number:=90;
begin
	if student_marks >= 90 then
		dbms_output.put_line('Grade is A');
	elsif student_marks >= 80 then 
		dbms_output.put_line('Grade is B');
	elsif student_marks >= 70 then 
		dbms_output.put_line('Grade is C');
	elsif student_marks >= 60 then 
		dbms_output.put_line('Grade is D');
	else 
		dbms_output.put_line('Grade is F');
	end if;
end;
/