--JOINS
--EQUIJOIN, OUTERJOIN, CARTESIAN JOIN


--EQUIJOIN
--To Display Employee Details & Dept Details for each employee
--Who are having dept
--EmployeeDetails  --DeptName
SELECT e.empno, e.ename, e.deptno, d.dname FROM emp1 e, dept d
WHERE 1=1
AND e.deptno = d.deptno;


--OUTER JOIN
--LEFT OUTER JOIN
--To Display ALL Employee Details & Dept Details for each employee
--Irrespective of Dept Assignment for employee
--EmployeeDetails --DeptName
SELECT E.empno, e.ename, e.deptno, d.dname FROM EMP1 E, DEPT D
WHERE 1=1
and E.deptno = D.deptno (+);

--OUTER JOIN
--RIGHT OUTER JOIN

select e.empno, e.ename, e.deptno, d.dname FROM emp1 e, dept d
where 1=1
and e.deptno(+) = d.deptno
order by 1;

--SELF JOIN--INNER JOIN--EQUI JOIN
--Hierarchial Query
--Oracle Projects
select * from emp;
select e.empno, e.ename, e.mgr, m.empno, m.ename mgrname
from emp1 e, emp1 m
where m.mgr = e.empno;

--CARTESIAN JOIN
select * from emp1 dept;

--Single Row Function
--Multirow (Group) Function
select length(empno) from emp1;

select sum(sal) from emp1
group by empno;

select sum(sal) from emp1
group by sal;

select length(ename), sum(sal) from emp1
group by ename;