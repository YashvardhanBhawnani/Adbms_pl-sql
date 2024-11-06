CREATE OR REPLACE FUNCTION getMaxSal RETURN NUMBER IS
  v_highest_sal NUMBER;
BEGIN
  SELECT MAX(emp_salary) INTO v_highest_sal FROM emp4;
  RETURN v_highest_sal;
END getMaxSal;
/
