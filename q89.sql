DECLARE
    CURSOR emp_dept_cur IS
        SELECT e.empId, e.first_name, e.last_name, e.salary, d.department_name, d.location
        FROM emp5 e
        JOIN dep2 d ON e.dep_id = d.department_id;

     emp_id emp5.empId%TYPE;
    first_name emp5.first_name%TYPE;
    last_name emp5.last_name%TYPE;
    salary emp5.salary%TYPE;
    department_name dep2.department_name%TYPE;
    location dep2.location%TYPE;

BEGIN
    OPEN emp_dept_cur;
      LOOP
        FETCH emp_dept_cur INTO emp_id, first_name, last_name, salary, department_name,location;
        EXIT WHEN emp_dept_cur%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id || ', Name: ' || first_name || ' ' || last_name || 
                             ', Salary: ' || salary || ', Department: ' || department_name || ', Location: ' || location);
    END LOOP;
    CLOSE emp_dept_cur;
END;
/
