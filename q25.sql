declare
	type  elem_arr_type is table of number index by pls_integer;
	elem_arr elem_arr_type;
begin
  elem_arr(1) := 1000;
elem_arr(2) := 2000;
elem_arr(3) := 3000;
elem_arr(4) := 4000;
dbms_output.put_line(elem_arr.count);
end;
/