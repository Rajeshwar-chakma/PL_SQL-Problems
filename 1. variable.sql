declare
var1 varchar(20);
num1 number(5);
begin
var1:= 'Tutorials';
num1 := 100;
dbms_output.put_line('Value is :' || var1);
dbms_output.put_line('Number is :' || num1);
end;
/