-- Temporary Tables
#storing intermediate results for complex queries
#manipulate data before storing it in a permanent table

CREATE TEMPORARY TABLE temp_table
(
first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);
SELECT*
FROM temp_table;

INSERT INTO temp_table
VALUES('Brian','Michira','Into the badlands');

SELECT*
FROM temp_table;

SELECT*
from employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM salary_over_50k;

#table last as long as you are in the session



