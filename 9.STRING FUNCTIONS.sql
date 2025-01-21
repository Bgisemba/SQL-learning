-- String Functions
-- Length
SELECT length('skyfall');

SELECT first_name,LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

-- upper
SELECT UPPER('sky');
SELECT LOWER('SKY');

SELECT first_name,UPPER(first_name)
FROM employee_demographics;

-- trim
SELECT TRIM('      sky    ');
SELECT LTRIM('      sky    ');
SELECT RTRIM('      sky    ');

SELECT  first_name,LEFT(first_name,4)
FROM employee_demographics;

-- substring
SELECT  first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(FIRST_NAME,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics;

-- replace
SELECT first_name,REPLACE(first_name,'a','z')
FROM employee_demographics;

-- Locate
SELECT LOCATE('X','Alexander');

SELECT first_name,LOCATE('An',first_name)
FROM employee_demographics;

SELECT first_name,last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;




