declare
  type arr_type is varray(5) of number;
arr arr_type;
num number;
begin
  arr := arr_type(1,2);
for i in 1..arr.count loop
  dbms_output.put_line(arr(i));
  end loop;
num := 3;
arr.extend;
arr(arr.count) := num;
dbms_output.put_line('After adding:');
for i in 1..arr.count loop
  dbms_output.put_line(arr(i));
  end loop;
end;
/