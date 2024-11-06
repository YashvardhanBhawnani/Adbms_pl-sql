DECLARE
    TYPE emp_record IS RECORD (
        emp_id NUMBER,
        name VARCHAR2(100),
        salary NUMBER
    );
    emp emp_record;
BEGIN
	dbms_output.put_line('Record Created');
END;
/
