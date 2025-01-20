-- Having and Where

SELECT gender,AVG(age)
FROM employee_demographics
WHERE AVG(age)>40
GROUP BY gender
;#invalid use of group by

SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)>40
;
SELECT *
FROM employee_salary;

SELECT occupation,AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 75000
;
