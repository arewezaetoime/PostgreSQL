-- Write a query to delete all employees from the employees table who are in department 2 or 1. Then select all from table employees and order the information by id.
-- Submit both DELETE and SELECT queries.

DELETE FROM employees
WHERE
	department_id BETWEEN 1 AND 2;
	
SELECT
	*
FROM employees
ORDER BY id;
