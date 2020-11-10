select 'Hello World' from customers;

select id + 8 from customers;

select 10 + 20, 11-10, 10*90, 1/5--, 0/0, 1/0
from customers;

select 1+null, null+null, 1/null, null/1, null * null
from dual;
--NULL --> is a keyword, not a datatype
--EMPTY VALUE -- Non comparable to any other value
select 10, null, dummy from dual;


select 'HelloWorld', NVL(null, 'First'), 
NVL('Second', 'SecondNotNull') from dual;

--NVL ?? -- FUNCTION
--NVL(exp1, exp2) --if exp1 is not null -display exp1, else exp2

select id, name, salary old_salary, salary+ 10 new_salary,
nvl(salary,0)+10 new_salary_with_nvl
from customers;

--NVL2 ??--
-- 1-- NUL-->3, Else 2
SELECT NVL2('RAJESH','TRAINEE','DEVELOPER'),
NVL2(null,'Chakma','Noname'),
NVL2(null,'NANA' , null )
FROM DUAL;
set serveroutput on
--If an existing employee is not getting any commission
--I want award 25 + 10


select sysdate, systimestamp from dual;

--To display only year
select sysdate, to_char(sysdate, 'YYYY'),
systimestamp From DUAL;


