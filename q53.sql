CREATE OR REPLACE FUNCTION fact(num NUMBER)
RETURN NUMBER
IS
    v_res NUMBER := 1;  
BEGIN
    IF num = 0 OR num = 1 THEN
        RETURN 1;
    ELSE
        FOR i IN 2..num LOOP
            v_res := v_res * i;
        END LOOP;
    END IF;
    RETURN v_res;

END fact;
/

