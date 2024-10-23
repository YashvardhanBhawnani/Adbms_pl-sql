DECLARE
  hrs_worked NUMBER := 35;
BEGIN
  IF hrs_worked <= 40 THEN
    DBMS_OUTPUT.PUT_LINE('The employee is part-time.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('The employee is full-time.');
  END IF;
END;
/
