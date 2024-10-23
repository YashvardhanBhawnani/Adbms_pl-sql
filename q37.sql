declare 
	v number := 1;
begin 
	loop
		dbms_output.put_line(v);
		v:=v+1;
		exit when v>10;
	end loop;
end;
/