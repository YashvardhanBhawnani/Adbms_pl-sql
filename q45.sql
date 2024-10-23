declare
 	p_category varchar2(35) := 'books';
	p_discount number;
begin
	p_discount := case p_category 
			when 'electronics' then 10
			when 'books' then 15
			else 0
			end;
	dbms_output.put_line(p_discount);
end;
/	
	