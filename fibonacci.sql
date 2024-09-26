DECLARE
    a NUMBER := 0; 
    b NUMBER := 1; 
    c NUMBER;      
    i NUMBER := 1; 
BEGIN
    dbms_output.put_line(a); 
    dbms_output.put_line(b); 
    
    FOR i IN 3..10 LOOP  
        c := a + b;  
        dbms_output.put_line(c); 
        a := b;     
        b := c;     
    END LOOP;
END;
/
  
