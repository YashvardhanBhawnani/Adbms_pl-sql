declare
	isPrime BOOLEAN;
begin
	isPrime := is_prime(2);
	if isPrime then 
		dbms_output.put_line('Prime');
	else
		dbms_output.put_line('Not Prime');
	end if;
end;
/
