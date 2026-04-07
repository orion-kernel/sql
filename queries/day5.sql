-- 3. Retrieves the department number, job title, and department name by joining the employee (emp) and department (dept) tables.
SELECT e.deptno,
       e.job,
       d.dname
FROM emp e,
     dept d
WHERE e.deptno = d.deptno;

-- 4. Retrieves the department number, salary, and corresponding salary grade for each employee.
SELECT e.deptno,
       e.sal,
       s.grade
FROM emp e,
     salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal;

-- 5. Retrieves employee names and their respective department names, sorted alphabetically by the department name.
SELECT e.ename,
       d.dname
FROM emp e,
     dept d
WHERE e.deptno = d.deptno
ORDER BY d.dname;

-- 6. Retrieves the employee name, department name, and department number by matching records between the employee and department tables.
SELECT e.ename,
       d.dname,
       e.deptno
FROM emp e,
     dept d
WHERE e.deptno = d.deptno;

-- 7. Retrieves the employee name, department name, and salary strictly for employees earning more than 1500.
SELECT e.ename,
       d.dname,
       e.sal
FROM emp e,
     dept d
WHERE e.deptno = d.deptno
  AND e.sal > 1500;

-- 8. Retrieves all details from the employee and salary grade tables, specifically filtering for employees whose salary falls within grade 3.
SELECT *
FROM emp e,
     salgrade d
WHERE e.sal BETWEEN d.losal AND d.hisal
  AND d.grade = 3;

-- 9. Retrieves the name, job, salary, and salary grade for all employees who are not working as clerks.
SELECT e.ename,
       e.job,
       e.sal,
       d.grade
FROM emp e,
     salgrade d
WHERE e.sal BETWEEN d.losal AND d.hisal
  AND e.job != 'CLERK';

**

-- 11. A self-join query that retrieves the names and salaries of employees who earn strictly less than their respective managers.
SELECT e.ename AS emp_name,
       e.sal AS emp_sal,
       m.ename AS mgr_name
FROM emp e,
     emp m
WHERE e.mgrno = m.empno
  AND e.sal < m.sal;

-- 12. Combines the unique job titles found in department 30 with those in department 10, removing any duplicates.
SELECT job
FROM emp
WHERE deptno = 30
UNION
SELECT job
FROM emp
WHERE deptno = 10;

-- 13. Combines all job titles from department 30 and department 10 into a single list, keeping all duplicates intact.
SELECT job
FROM emp
WHERE deptno = 30
UNION ALL
SELECT job
FROM emp
WHERE deptno = 10;

-- 14. Retrieves only the specific job titles that exist in BOTH department 30 and department 10.
SELECT job
FROM emp
WHERE deptno = 30
INTERSECT
SELECT job
FROM emp
WHERE deptno = 10;

-- 15. Retrieves the job titles that are present in department 30, but excludes any job titles that also appear in department 10.
SELECT job
FROM emp
WHERE deptno = 30
MINUS
SELECT job
FROM emp
WHERE deptno = 10;
