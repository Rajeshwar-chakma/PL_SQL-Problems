DECLARE
    CURSOR emp_cur IS
    SELECT emp_id, first_name
    FROM employee;
    emp_rec emp_cur%rowtype;
BEGIN
    OPEN emp_cur;
    LOOP
        FETCH emp_cur INTO emp_rec;
        EXIT WHEN emp_cur%notfound;
        DBMS_OUTPUT.PUT_LINE(emp_rec.emp_id || ' ' || emp_rec.first_name);
    END LOOP;
END;
/