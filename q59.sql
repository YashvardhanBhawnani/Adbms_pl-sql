CREATE OR REPLACE FUNCTION is_prime(num IN NUMBER)
RETURN BOOLEAN
IS
    isPrime BOOLEAN := TRUE;
BEGIN
    IF num < 2 THEN
        isPrime := FALSE;
    ELSIF num = 2 THEN
        isPrime := TRUE;
    ELSE
        FOR i IN 2..FLOOR(SQRT(num)) LOOP
            IF (num MOD i = 0) THEN
                isPrime := FALSE;
                EXIT;
            END IF;
        END LOOP;
    END IF;
    RETURN isPrime;
END;
/


