DECLARE
  CURSOR emp_cursor IS SELECT empName, salary FROM emp;
BEGIN
  FOR emp_rec IN emp_cursor LOOP
    IF emp_rec.salary < 50000 THEN
      CONTINUE;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Employee: ' || emp_rec.empName || ', Salary: ' || emp_rec.salary);
  END LOOP;
END;
/
