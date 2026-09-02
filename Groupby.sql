
select deptno, count(*) no_of_emp 
from emp
where job != 'PRESIDENT'
GROUP BY DEPTNO;

select job, sum(sal) Total_Salary
from emp
group by job;

select deptno, count(empno) no_of_emp
from emp
where job="MANAGER"
group by deptno;

select avg(sal) avg_sal ,deptno 
from emp
where deptno != 20
group by deptno;

select job, count(*) as no_of_emp
from emp
where ename like '%A%'
group by job;

select deptno, count(*) as no_of_emp, avg(sal) as avg_sal
from emp
where sal>2000
group by deptno;

select deptno, sum(sal) Total_sal, count(*) num_of_salesman
from emp
where job="salesman"
group by deptno;

select job, count(*) as num_of_emp, max(sal) as max_salary
from emp
group by job;

select deptno, max(sal) max_salary
from emp
group by deptno;

select sal, count(*) num_times
from emp
group by sal
having count(*)>1;