
select * from emp
where comm is Null;

select * from emp
where mgr is NULL;

select * from emp 
where lower(job) ='salesman' 
and deptno in (30);

select * from emp
where lower(job)='salesman'
and deptno in (30) and sal>1500;

select * from emp 
where ename like 'S%' or ename like 'A%';

select * from emp
where deptno not in (10,20);

select * from emp
where ename not like 'S%';

select * from emp
where deptno=10 and mgr is not null;

select * from emp
where comm is Null and job='CLERK';

select * from emp
where mgr is null and deptno in (10 ,30);

select * from emp
where job='SALESMAN' and deptno=30 and sal>2450;

select* from emp
where job='ANALYST' and deptno=20 and sal>2500;

select * from emp
where ename like 'M%' or ename like 'J%';

select * , (sal*12) as Annual_sal from emp
where deptno not in(30);

select * from emp
where ename not like '%ES' and ename not like '%R';

select * ,sal,sal+(sal*0.1) as hike_salary from emp
where mgr is not Null and deptno=10;

select * from emp
where ename like '%E_' and sal between 1000 and 9999;

select * from emp
where hiredate >'1981-12-31';

select * from emp
where month(hiredate )=2;

select * from emp 
where job not in ('MANAGER','CLERK') and deptno in (10,20) and sal between 1000 and 3000;

select * from emp
where sal not between 1000 and 2000 and deptno in (10,20,30)
and job !='SALESMAN';

select dname ,loc
from dept
where loc like '%O%';

select * from emp
where job like '%MAN%';

select * from emp
where hiredate>'1982-12-31' and hiredate<'1987-01-01';

select * from emp
where year(hiredate) > 1982
and year(hiredate) < 1987;

select * from emp
where month(hiredate) in (11,12);

select ename, comm, sal
from emp
where ifnull(comm,0) > sal;

select ename, job
from emp
where mgr is not null
and ename like 'S%';

SELECT ename, sal,
       sal * 12  AS annual_salary,
        MOD(sal * 12, 10) 
FROM emp
WHERE MOD(sal * 12, 10) = 0;

select ename from emp
where ename like '%L%L%';

select ename from emp
where ename like 'A%' or ename like 'E%' or ename like 'I%' or ename like 'O%' or ename like 'U%';
