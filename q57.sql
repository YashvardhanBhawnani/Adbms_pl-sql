CREATE OR REPLACE FUNCTION getEmpCount(dep_name VARCHAR2) RETURN NUMBER IS
  emp_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO emp_count FROM emp4 WHERE emp_department = dep_name ;
  RETURN emp_count;
END getEmpCount;
/