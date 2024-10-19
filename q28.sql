declare
  type emp_phones_type is table of varchar2(10)
  index by pls_integer;
emp_phones emp_phones_type;
begin
  emp_phones(1):='8305281241';
dbms_output.put_line(emp_phones(1));
end;
/