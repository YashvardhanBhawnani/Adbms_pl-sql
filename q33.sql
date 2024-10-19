declare
  type emp_bonus_t is table of number index by pls_integer;
emp_bonus emp_bonus_t;
begin
  emp_bonus(1) := 7000;
emp_bonus(2) := 5000;
emp_bonus(3) := 2000;
emp_bonus(4) := 3000;
emp_bonus(5) := 8000;
for i in 1..5 loop
  dbms_output.put_line(emp_bonus(i));
  end loop;
end;
/