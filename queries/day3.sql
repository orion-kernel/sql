-- TOPICS: Character Functions (LOWER, UPPER, INITCAP, CONCAT, LPAD, RPAD, 
-- LTRIM, RTRIM, SUBSTR, INSTR, LENGTH, TRANSLATE, REPLACE).

-- 1. Converts employee names and the string 'SQL' to lowercase.
SELECT LOWER(ename), LOWER('SQL') FROM emp;

-- 2. Converts employee names and the string 'SQL' to uppercase.
-- SELECT ename FROM emp
-- WHERE ename = UPPER('&ename');

SELECT UPPER(ename), UPPER('SQL')
FROM emp;
-- 3. Capitalizes the first letter of each employee name and lowers the rest.
SELECT INITCAP(ename) FROM emp;

-- 4. Concatenates employee number and name into a single column labeled "Details".
SELECT CONCAT(empno, ename) "Details" FROM emp;

-- 5. Pads the left side of department names with '*', spaces, or '-' to a total length of 20.
SELECT LPAD(dname, 20, '*'), LPAD(dname, 20), LPAD(dname, 20, '-') FROM dept;

-- 6. Pads the right side of department names with '*', spaces, or '-' to a total length of 20.
SELECT RPAD(dname, 20, '*'), RPAD(dname, 20), RPAD(dname, 20, '-') FROM dept;

-- 7. Removes specified characters ('A', 'S', 'O', 'P') from the left side of department names.
SELECT LTRIM(dname, 'A'), LTRIM(dname, 'AS'), LTRIM(dname, 'ASOP') FROM dept;

-- 8. Removes specified characters ('A', 'S', 'O', 'P') from the right side of department names.
SELECT RTRIM(dname, 'A'), RTRIM(dname, 'AS'), RTRIM(dname, 'ASOP') FROM dept;

-- 9. Extracts a substring from 'ORACLE' and department names.
-- SUBSTR('ORACLE',2,4) returns characters 2–5.
-- SUBSTR(dname,2) returns department name from the 2nd character onward.
-- SUBSTR(dname,2,3) returns 3 characters starting from position 2.
SELECT SUBSTR('ORACLE', 2, 4), SUBSTR(dname, 2), SUBSTR(dname, 2, 3) FROM dept;

-- 10. Finds the position of characters or strings inside department names.
-- INSTR returns the location of 'A', 'FS', and 'C' (starting search from position 2).
SELECT dname, INSTR(dname, 'A'), INSTR(dname, 'FS'), INSTR(dname, 'C', 2) FROM dept;

-- 11. Calculates the length of a string, department number, and department name.
-- LENGTH('SQLCOURSE') gives string length,
-- LENGTH(deptno) and LENGTH(dname) give the length of column values.
SELECT LENGTH('SQLCOURSE'), LENGTH(deptno), LENGTH(dname) FROM dept;

-- 12. Replaces specific characters in employee names and job titles.
-- TRANSLATE replaces 'C' with 'P' in ename and replaces 'A'→'I' and 'R'→'T' in job.
SELECT ename, TRANSLATE(ename, 'C', 'P'), job, TRANSLATE(job, 'AR', 'IT') FROM emp 
WHERE deptno = 10;

-- 13. Replaces specific words or character sequences in job titles and employee names.
-- 'SALESMAN' becomes 'SALESPERSON' and 'CO' in names becomes 'CX'.
SELECT job, REPLACE(job, 'SALESMAN', 'SALESPERSON'), REPLACE(ename, 'CO', 'CX') FROM emp;
