-- Case Statements

SELECT first_name,last_name,age,
CASE
	WHEN age <= 30 THEN 'Young'
END
FROM employee_demographics;

SELECT first_name,last_name,age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'Old'
END AS Age_Bracket
FROM employee_demographics;

-- Pay Increase and Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus

SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments;

select first_name,last_name,salary,
CASE
	WHEN salary < 50000 THEN salary +(salary*0.05)
    WHEN salary > 50000 THEN salary*1.07
END AS New_salary,
CASE
	WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
from employee_salary;

-- Subqueries

SELECT *
FROM employee_demographics
WHERE employee_id IN
				(SELECT employee_id #must be one
					FROM  employee_salary
                    WHERE dept_id = 1)
;

# comparing salary and average sal
select first_name,salary,AVG(salary)
from employee_salary
GROUP BY first_name,salary;

select first_name,salary,
(SELECT AVG(salary)
from employee_salary) AS Avg_salary
FROM employee_salary ;


SELECT gender,AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT AVG(max_age)
FROM
(SELECT gender,
AVG(age) AS avg_age,
MAX(age) AS max_age,
MIN(age) AS min_age,
COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender)AS Agg_table
;
