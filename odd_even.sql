 DECLARE
   num number:=10;
 BEGIN
   if MOD(num,2) = 0 then
     dbms_output.put_line('The Number is even');
   else 
     dbms_output.put_line('The Number is odd');
   END if;
 END;
 /
