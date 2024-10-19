DECLARE
   num NUMBER := 1;
   sq NUMBER;
BEGIN
   WHILE num * num < 100 LOOP
      sq := num * num;
      DBMS_OUTPUT.PUT_LINE(sq);
      num := num + 1;
   END LOOP;
END;
/
