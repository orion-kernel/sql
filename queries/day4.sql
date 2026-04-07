-- 1. Rounding Numbers
-- Demonstrates the ROUND function to round numeric values and calculated columns to a specific number of decimal places.
SELECT ROUND(45.923, 1), ROUND(45.923), ROUND(45.323, 1), ROUND(45.323), ROUND(45.323, -1), ROUND(sal/32) 
FROM emp 
WHERE deptno = 10;

-- 2. Truncating Numbers
-- Uses the TRUNC function to cut off numbers to a specified number of decimal places without rounding them.
SELECT TRUNC(45.923, 1), TRUNC(45.923), TRUNC(45.323, 1), TRUNC(45.323), TRUNC(45.323, -1), TRUNC(sal/32) 
FROM emp 
WHERE deptno = 10;

-- 3. Ceiling Function
-- Applies the CEIL function to round numbers up to the nearest whole integer.
SELECT CEIL(sal), CEIL(99.9), CEIL(101.76), CEIL(101.23), CEIL(-11.1) 
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

-- 4. Floor Function
-- Applies the FLOOR function to round numbers down to the nearest whole integer.
SELECT FLOOR(sal), FLOOR(99.9), FLOOR(101.76), FLOOR(101.23), FLOOR(-11.1) 
FROM emp
WHERE sal BETWEEN 1000 AND 2000;

-- 5. Exponents (Power)
-- Demonstrates the POWER function to raise a base number to a specified exponent.
SELECT POWER(sal, 2), POWER(50, 5) 
FROM emp
WHERE deptno = 10;

-- 6. Exponential Constant
-- Uses the EXP function to calculate the mathematical constant e raised to the power of 4.
SELECT EXP(4) 
FROM dual;

-- 7. Square Root
-- Uses the SQRT function to find the square root of a column's values and a literal number.
SELECT SQRT(sal), SQRT(40) 
FROM emp 
WHERE deptno = 10;

-- 8. Number Signs
-- Employs the SIGN function to return 1 if a number is positive, -1 if it is negative, and 0 if it is exactly zero.
SELECT SIGN(sal - comm), comm - sal, SIGN(comm - sal) 
FROM emp 
WHERE deptno = 10;

-- 9. Absolute Values
-- Uses the ABS function to return the absolute (always positive) value of a number or calculation.
SELECT sal, comm, comm - sal, ABS(comm), ABS(sal), ABS(-35) 
FROM emp;

-- 10. Dual Table Query
-- Selects all columns from dual, which is a special dummy table in Oracle used for evaluating standalone expressions.
SELECT * FROM dual;

-- 11. Modulo (Remainder)
-- Applies the MOD function to find the remainder left over after a division operation.
SELECT sal, comm, MOD(sal, comm), MOD(100, 40) 
FROM emp 
WHERE deptno = 30;
