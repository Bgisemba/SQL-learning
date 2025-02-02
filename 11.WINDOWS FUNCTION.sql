-- Window Function

SELECT gender,AVG(salary)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
GROUP BY gender;

SELECT dem.first_name,dem.last_name,gender,AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.first_name,dem.last_name,gender,SUM(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.first_name,dem.last_name,gender,salary,SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id)AS Rolling_Total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;
SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;

SELECT dem.employee_id,dem.first_name,dem.last_name,gender,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC)row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) rank_num,
DENSE_RANK(PARTITION BY gender ORDER BY salary DESC)dense_rank_num
FROM empoyee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id=sal.employee_id
;