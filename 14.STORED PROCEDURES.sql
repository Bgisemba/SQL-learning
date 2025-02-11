-- Stored Procedures

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL large_salaries();


DELIMITER $$
CREATE PROCEDURE large_salaries3()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

call large_salaries3();


#PARAMETERS
DELIMITER $$
CREATE PROCEDURE large_salaries6(ployee_id INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id =ployee_id
	;
END $$
DELIMITER ;
call large_salaries6(1);


