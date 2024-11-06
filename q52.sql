CREATE OR REPLACE FUNCTION calc_salary(basic_sal IN NUMBER,bonus IN NUMBER) 
RETURN NUMBER
IS
    total_salary NUMBER;   
BEGIN
    total_salary := basic_sal + bonus;
    RETURN total_salary; 
END calc_salary;
/
