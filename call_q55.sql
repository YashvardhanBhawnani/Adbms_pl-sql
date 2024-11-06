DECLARE
    bonus BOOLEAN;
BEGIN
    bonus := check_bonus(50000);
    if bonus then dbms_output.put_line('Eligible');
	else dbms_output.put_line('Not Eligible');
	end if;
END;
/