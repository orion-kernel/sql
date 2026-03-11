-- Select employee number, name, and job for all clerks
select empno,ename,job
    from emp
    where job='CLERK';

-- Select department name and number for departments with ID greater than 20
select dname,deptno
    from dept
    where deptno > 20;

-- Select employee name, salary, and commission where commission exceeds salary
select ename,sal,comm
    from emp
    where comm > sal;

-- Select employee name and salary for those earning between 1000 and 2000
select ename,sal
    from emp
    where sal BETWEEN 1000 AND 2000;

-- Select employee details for those reporting to managers 7902, 7566, or 7788
select ename,empno,mgrno
    from emp
    where mgrno IN (7902,7566,7788);

-- Select employee names that start with the letter 'S'
select ename
    from emp
    where ename LIKE 'S%';

-- Select employee names that are exactly four characters long
select ename
    from emp
    where ename LIKE '____';

-- Select employee name and manager number for those without a manager
select ename,mgrno
    from emp
where mgrno IS NULL;

-- Select employee name and salary for those earning outside the 1000-2000 range
select ename,sal
    from emp
    where sal NOT BETWEEN 1000 AND 2000;

-- Select employee names that do not start with the letter 'M'
select ename
    from emp
    where ename NOT LIKE 'M%';

-- Select employee name and number for all employees who have a manager
select ename,empno
    from emp
    where mgrno IS NOT NULL;

-- Select employee name and number for all employees who have not a manager
SELECT ename, empno FROM emp
WHERE mgrno IS NULL;

-- Select employee and job names where jobs do not start with the letter 'M'
SELECT ename, job FROM emp
WHERE job NOT LIKE 'M%';

-- display empno, job, sal, of all emp where emp is a clerk and salary is in 10000 and 20000
SELECT empno, job, sal FROM emp
WHERE
job = 'CLERK'
AND
sal BETWEEN 1000 and 2000;

-- display empno, job, sal, of all emp where emp is a clerk or salary is in 10000 and 20000
SELECT empno, job, sal FROM emp
WHERE
job = 'CLERK'
OR
sal BETWEEN 1000 and 2000;

-- display empno, job, deptno, of all emp who are managers earn salary over 5000 or a salesman
SELECT empno, job, deptno FROM emp
WHERE
sal > 5000 AND job = 'SALESMAN'
OR
job = 'MANAGER';

-- select all the managers and salesman with salary over 5000 and display empno, ename, job, sal, deptno
SELECT ename, empno, job, sal, deptno FROM emp
WHERE
sal > 5000
AND
job IN ('MANAGER', 'SALESMAN');

-- display deptno and dname in order of dename.
SELECT dname, deptno FROM dept
ORDER BY dname;

-- display all different jobs
SELECT DISTINCT job FROM emp;

-- ditails of all emp in deptno 10 and 20 in alphabetical order of name.
SELECT * FROM emp
WHERE deptno IN (10, 20)
ORDER BY ename;

-- display name of employee who is clerk and in deptno 20
SELECT ename FROM emp
WHERE
job = 'CLERK' AND deptno = '20';

-- show the name of employee who has 'th' and 'll' in there name.
SELECT ename FROM emp
WHERE
ename LIKE '%TH%'
OR
ename LIKE '%LL%';

-- dispaly name and remunation of all the employee
SELECT ename, sal * 12 + NVL(comm, 0) remunation FROM emp;

-- dispaly name and remunation and hirdate of all the employee who are employeed on year of 03
SELECT ename, sal * 12 + NVL(comm, 0) remu, hiredate FROM emp
WHERE
hiredate LIKE '%03';

-- display name annual salary where salary is greater than commission and sort on salary
-- highest first, if two or more same salary then sort by ename within the highest salary order.
SELECT ename, sal * 12 + NVL(comm, 0) remunation FROM emp
WHERE sal > comm 
ORDER BY sal DESC , ename;
