declare
	day_no number := 3;
begin
	case
		when day_no=1 then
			dbms_output.put_line('Day is Monday');
		when day_no=2 then
			dbms_output.put_line('Day is Tuesday');
		when day_no=3 then
			dbms_output.put_line('Day is Wednesday');
		when day_no=4 then
			dbms_output.put_line('Day is Thrusday');
		when day_no=5 then
			dbms_output.put_line('Day is Friday');
		when day_no=6 then
			dbms_output.put_line('Day is Saturday');
		else 
			dbms_output.put_line('Day is Sunday');
	end case;
end;
/






		