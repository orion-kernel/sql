---------------------------------------------------------
-- BASIC SELECTION
---------------------------------------------------------
-- 1. Select all columns from the emp table
select * from emp;

-- 2. Select employee number, name, and job from the emp table
select empno,ename,job from emp;

---------------------------------------------------------
-- ARITHMETIC OPERATIONS & ALIASES
---------------------------------------------------------
-- 3. Select employee name and their calculated annual salary (monthly salary * 12)
select ename , sal*12 from emp;

-- 4. Select employee name and annual salary with the alias "Ann-sal"
select ename,sal*12 "Ann-sal" from emp;

-- 5. Select employee name and annual salary including a $250 monthly bonus
select ename,(sal+250)*12 from emp;

-- 6. Calculate total annual income (salary * 12 + commission), treating NULL commissions as 0
select ename ,sal*12+NVL(comm,0) "AnnualSal" from emp;

---------------------------------------------------------
-- STRING CONCATENATION & FORMATTING
---------------------------------------------------------
-- 7. Concatenate employee name and employee number into a single column
select ename||empno from emp;

-- 8. Concatenate employee name and employee number with a hyphen separator
select ename||'-'||empno from emp;

-- 9. Create a formatted string for each employee and alias it as "EMPLOYEE"
select empno||'-'||ename||' WORKS IN DEPARTMENT' "EMPLOYEE" from emp;

-- 10. Concatenate a constant value (50) with a hyphen and the employee number
select 50||'-'||empno from emp;

---------------------------------------------------------
-- DISTINCT VALUES
---------------------------------------------------------
-- 11. Select unique combinations of department numbers and jobs
select distinct deptno,job from emp;

---------------------------------------------------------
-- SORTING (ORDER BY)
---------------------------------------------------------
-- 12. Select employee details ordered by name in ascending order
select ename,job,sal*12,deptno from emp order by ename;

-- 13. Select employee details ordered by name in descending order
select ename,job,sal*12 from emp order by ename desc;

-- 14. Select department and salary, ordered by department (ASC) and then salary (DESC)
select deptno,sal from emp order by deptno,sal desc;

-- 15. Select department and salary, ordered by department (DESC) and then salary (ASC)
select deptno,sal from emp order by deptno desc,sal;
