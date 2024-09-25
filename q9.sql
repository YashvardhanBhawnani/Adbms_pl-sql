DECLARE
	v_sal NUMBER := 5000;
	v_bonus NUMBER := 1000;
	v_total NUMBER;
BEGIN
	v_total:= v_sal+v_bonus;
	DBMS_OUTPUT.PUT_LINE(v_total);
         DBMS_OUTPUT.PUT_LINE('Yashvardhan Bhawnani');

END;
/