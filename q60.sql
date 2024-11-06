CREATE OR REPLACE FUNCTION rev_str(str IN VARCHAR2)
RETURN VARCHAR2
IS
    rev_str VARCHAR2(30);
BEGIN
    FOR i IN REVERSE 1..LENGTH(str) LOOP
        rev_str := rev_str || SUBSTR(str, i, 1);
    END LOOP;
    RETURN rev_str;
END;
/