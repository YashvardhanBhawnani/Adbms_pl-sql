DECLARE
	basic_sal NUMBER := 5000;
	bonus NUMBER := 1000;
	tax CONSTANT NUMBER := 0.05;
	total_sal NUMBER;
BEGIN
	total_sal:= (basic_sal+bonus)-(tax*basic_sal);
	DBMS_OUTPUT.PUT_LINE(total_sal);
         DBMS_OUTPUT.PUT_LINE('Yashvardhan Bhawnani');

END;
/