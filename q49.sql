DECLARE
  v_years_of_service NUMBER := 10;
BEGIN
  IF v_years_of_service >= 5 THEN
    DBMS_OUTPUT.PUT_LINE('Employee is eligible for promotion.');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Employee is not yet eligible for promotion.');
  END IF;
END;
/
