select ename
from emp
where sal =(select max(sal) from emp);

select ename
from emp
where sal=(select min(sal) from emp);

select ename, hiredate
from emp
where hiredate =(select min(hiredate) from emp);

select ename ,hiredate
from emp
where hiredate =(select max(hiredate) from emp);

select ename ,comm
from emp
where comm =(select min(comm) from emp);

select ename, sal , comm
from emp
where comm =(select max(comm) from emp);

select *
from emp
where empno =(select max(empno) from emp);

select *
from emp
where hiredate =(select min(hiredate) from emp);

select * ,sal*12 annual_sal
from emp
where sal*12 =(select min(sal*12) from emp);

select ename ,sal*12 annual_sal
from emp
where sal*12 >ALL(select sal*12 from emp where job="SALSMAN");
