declare 
	i number:=1;
begin
	while i<=20 loop
		if i mod 2 = 0 then
			dbms_output.put_line(i);
		end if;
		i:=i+1;
	end loop;
end;
/	