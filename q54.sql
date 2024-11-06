CREATE OR REPLACE FUNCTION sum_num(num1 NUMBER,num2 NUMBER)
RETURN NUMBER
IS
     plus NUMBER := 1;  
BEGIN
	plus := num1+num2;
        RETURN plus;
END sum_num;
/
