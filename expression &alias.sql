
select ename as Employee_Name, 
(sal*12) as Annual_Salary
from emp;

select ename as Employee_name, job,
(sal*6) as "HALF TERM SALARY"
from emp;

select *, 2000 as Annual_Bonus
from emp;

select ename, sal, sal+(sal*0.1) as Hike_Salary
from emp;

select ename, sal, sal-(sal*0.25) as Deducted_Salary
from emp;

select ename, sal, (sal+50) as Monthly_Hike
from emp;

select ename, sal, sal - (sal*0.1) as Deducted_Salary
from emp;

select ename, sal + ifnull(comm,0) as Sal_Comm
from emp;

select e.*, (sal*12) as Annual_Salary
from emp as e;

select ename, job, sal, (sal-100) as After_Penalty
from emp;
