--Loop Concepts

DECLARE
l_it_num NUMBER:=0;
l_max_num NUMBER:=5;

BEGIN
dbms_output.put_line('---------BASIC Loop------------');
LOOP    --EXIT condition loop
    dbms_output.put_line('Iteration = ' || l_it_num);
    l_it_num := l_it_num + 1;
    exit when l_it_num > l_max_num;
END LOOP;

l_it_num := 0;
dbms_output.put_line('------------While Loop-----------');
WHILE(l_it_num <= l_max_num)
LOOP
    dbms_output.put_line('Iteration Output = ' || l_it_num);
    l_it_num := l_it_num+1;
END LOOP;
dbms_output.put_line('---------For Loop------------');
FOR i in 1..5
LOOP
    dbms_output.put_line('Iteration ---> ' || i);
END LOOP;

END;
/