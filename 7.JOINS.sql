-- Joins
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

#inner join returns rows that are the same in both columns
SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_id=amployee_id;

SELECT *
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id=employee_salary.employee_id;#2 missing
    
SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id;
    
#selecing actual columns
SELECT employee_id,age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id; -- employee_id field is ambiguous not specified
    

SELECT dem.employee_id,age,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id=sal.employee_id; 
    
-- Outer join
-- left joins takes everything on the left table even when there is no match in the join and will on return the matches on the right table
SELECT *
FROM employee_demographics AS dem #left table
LEFT JOIN employee_salary AS sal  #right table
	ON dem.employee_id=sal.employee_id;
    
SELECT *
FROM employee_demographics AS dem #left table
RIGHT JOIN employee_salary AS sal  #right table
	ON dem.employee_id=sal.employee_id;
    
-- Self join #tie table to itself
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1=emp2.employee_id
;#assigning santa

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id+1=emp2.employee_id
;

-- Joining multiple tables together
SELECT *
FROM employee_demographics AS dem #left table
INNER JOIN employee_salary AS sal  #right table
	ON dem.employee_id=sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id=pd.department_id
;
    
SELECT *
FROM parks_departments;