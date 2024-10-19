declare
  type tables_type is table of number;
idx number;
tables tables_type;
begin
  tables := tables_type(1,2,3,4,5,6,7,8,9,10);
idx := tables.first;
while idx is not null loop
  dbms_output.put_line(tables(idx));
idx := tables.next(idx);
  end loop;
end;
/