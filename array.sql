DECLARE
    type namesarray IS VARRAY(5) OF VARCHAR2(10);
    type grades IS VARRAY(5) OF INTEGER;
    names namesarray;
    marks grades;
    total integer;
BEGIN
    names := namesarray('Rajeshwar', 'Nisha', 'Niamul', 'Asha', 'Thaicho');
    marks := grades('78', '76', '80', '81', '72');
    total := names.count;
    
    dbms_output.put_line('Total' || total || 'students');
    FOR i in 1..total LOOP
        dbms_output.put_line('Students: ' || names(i) || ', Marks: ' || marks(i));
    END LOOP;
END;
/
desc customer;

drop table t3;
