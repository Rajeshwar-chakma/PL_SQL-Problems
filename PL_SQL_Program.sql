declare
l_a_num number := 100;
l_b_char varchar2(100) := 'Hello World';
l_c_date date := SYSDATE ;
l_d_boolean BOOLEAN := TRUE;
l_e_ts TIMESTAMP := SYSTIMESTAMP;

BEGIN
--DBMS_OUTPUT Package
--PUT_LINE Procedure
dbms_output.put_line(l_a_num);
dbms_output.put_line(l_b_char);
dbms_output.put_line(l_c_date);
dbms_output.put_line(l_e_ts);

--
IF (l_d_boolean) THEN
    dbms_output.put_line('TRUE');
ELSE
    dbms_output.put_line('FALSE');
END IF;
END;
/