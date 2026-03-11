-- This uses variables to insert data

-- INSERT INTO emp(empno,ename,job, hiredate,sal,comm,deptno)
--     VALUES ( &eno,'&ename','&job','&hr',&sl,&cm,&dno);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7369, 'SMITH', 'CLERK', '13-JAN-03', 800, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7499, 'ALLEN', 'SALESMAN', '15-AUG-03', 1600, 300, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7521, 'WARD', 'SALESMAN', '26-MAR-04', 1250, 500, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7566, 'JONES', 'MANAGER', '31-OCT-03', 2975, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7654, 'MARTIN', 'SALESMAN', '05-DEC-03', 1250, 1400, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7698, 'BLAKE', 'MANAGER', '11-JUN-04', 2850, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7782, 'CLARK', 'MANAGER', '14-MAY-04', 2450, NULL, 10);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7788, 'SCOTT', 'ANALYST', '05-MAR-04', 3000, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7839, 'KING', 'PRESIDENT', '09-JUL-04', 5000, NULL, 10);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7844, 'TURNER', 'SALESMAN', '04-JUN-04', 1500, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7876, 'ADAMS', 'CLERK', '04-JUN-05', 1100, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7900, 'JAMES', 'CLERK', '23-JUL-04', 950, NULL, 30);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7902, 'FORD', 'ANALYST', '05-DEC-03', 3000, NULL, 20);

INSERT INTO emp (empno, ename, job, hiredate, sal, comm, deptno)
VALUES (7934, 'MILLER', 'CLERK', '21-NOV-03', 1300, NULL, 10);



-- now update MGRNO values
UPDATE emp SET mgrno = 7902 WHERE empno = 7369;
UPDATE emp SET mgrno = 7698 WHERE empno = 7499;
UPDATE emp SET mgrno = 7698 WHERE empno = 7521;
UPDATE emp SET mgrno = 7839 WHERE empno = 7566;
UPDATE emp SET mgrno = 7698 WHERE empno = 7654;
UPDATE emp SET mgrno = 7839 WHERE empno = 7698;
UPDATE emp SET mgrno = 7839 WHERE empno = 7782;
UPDATE emp SET mgrno = 7566 WHERE empno = 7788;
UPDATE emp SET mgrno = NULL WHERE empno = 7839;
UPDATE emp SET mgrno = 7698 WHERE empno = 7844;
UPDATE emp SET mgrno = 7788 WHERE empno = 7876;
UPDATE emp SET mgrno = 7698 WHERE empno = 7900;
UPDATE emp SET mgrno = 7566 WHERE empno = 7902;
UPDATE emp SET mgrno = 7782 WHERE empno = 7934;
