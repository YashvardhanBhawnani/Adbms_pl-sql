CREATE OR REPLACE FUNCTION check_bonus(salary NUMBER)
RETURN BOOLEAN
IS
    bonus BOOLEAN;  
BEGIN
	if salary < 45000 then
		bonus:=true;
	else 
		bonus:= false;
	end if;
       RETURN bonus;
END check_bonus;
/
