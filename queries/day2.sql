select empno,ename,job
    from emp
    where job='CLERK';

select dname,deptno
    from dept
    where deptno > 20;

select ename,sal,comm
    from emp
    where comm > sal;

select ename,sal
    from emp
    where sal BETWEEN 1000 AND 2000;

select ename,empno,mgrno
    from emp
    where mgrno IN (7902,7566,7788);

select ename
    from emp
    where ename LIKE 'S%';

select ename
    from emp
    where ename LIKE '____';

select ename,mgrno
    from emp
where mgrno IS NULL;

select ename,sal
    from emp
    where sal NOT BETWEEN 1000 AND 2000;

select ename
    from emp
    where ename NOT LIKE 'M%';

select ename,empno
    from emp
    where mgrno IS NOT NULL;
    






