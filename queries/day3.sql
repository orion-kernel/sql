-- Converts employee names and the string 'SQL' to lowercase.
SELECT LOWER(ename), LOWER('SQL') FROM emp;

-- Capitalizes the first letter of each employee name and lowers the rest.
SELECT INITCAP(ename) FROM emp;

-- Concatenates employee number and name into a single column labeled "Details".
SELECT CONCAT(empno, ename) "Details" FROM emp;

-- Pads the left side of department names with '*', spaces, or '-' to a total length of 20.
SELECT LPAD(dname, 20, '*'), LPAD(dname, 20), LPAD(dname, 20, '-') FROM dept;

-- Pads the right side of department names with '*', spaces, or '-' to a total length of 20.
SELECT RPAD(dname, 20, '*'), RPAD(dname, 20), RPAD(dname, 20, '-') FROM dept;

-- Removes specified characters ('A', 'S', 'O', 'P') from the left side of department names.
SELECT LTRIM(dname, 'A'), LTRIM(dname, 'AS'), LTRIM(dname, 'ASOP') FROM dept;

-- Removes specified characters ('A', 'S', 'O', 'P') from the right side of department names.
SELECT RTRIM(dname, 'A'), RTRIM(dname, 'AS'), RTRIM(dname, 'ASOP') FROM dept;
