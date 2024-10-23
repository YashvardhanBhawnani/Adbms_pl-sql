DECLARE
  CURSOR emp_cursor IS SELECT empId, empName,salary FROM emp;
BEGIN
  FOR emp_rec IN emp_cursor LOOP
    DBMS_OUTPUT.PUT_LINE('Employee Id: ' || emp_rec.empId || ', Employee Name: ' || emp_rec.empName||', Employee Salary : ' || emp_rec.salary);
  END LOOP;
END;
/
