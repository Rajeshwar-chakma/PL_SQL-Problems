--Computation of Sales Order Dicount

Declare
l_so_num NUMBER; --Sales Order Number
l_dis_num NUMBER; --Discount Number
l_so_f_num NUMBER; --Sales Order Final amount

BEGIN
    l_so_num := 599;
    
    if(l_so_num >= 1000) then
        l_dis_num := 10;
    elsif(l_so_num >= 500 and l_so_num <100) then
        l_dis_num := 5;
    else
        l_dis_num := 2.5;
    end if;
dbms_output.put_line('Discount %' || l_dis_num);
l_so_f_num := l_so_num - l_so_num * l_dis_num / 100;
dbms_output.put_line('Final Sales Order Amount --> ' || l_so_f_num);

END;
/
set serveroutput on