declare 
	type name is varray(3) of varchar2(35);
	arr name;
begin
	arr:= name('yash','virat','king');
	dbms_output.put_line(arr(3));
end;
/