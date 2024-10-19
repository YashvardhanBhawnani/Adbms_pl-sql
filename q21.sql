declare
type name is table of varchar2(50) index by pls_integer;
arr name;
begin
  name(1) := 'yash';
name(2) := 'bhawnani';
for i in 1 .. name.count loop
  dbms_output.put_line(arr(i));
  end loop;
end;
/