-- Insert new records into table employees by writing a query. Select all employees’ info to check the new entries.
-- New values: 
-- Samantha Young, Housekeeping, 4, 900
-- Roger Palmer, Waiter, 3, 928.33
-- Submit both INSERT and SELECT queries.

INSERT INTO employees(
	first_name,
	last_name,
	job_title,
	department_id,
	salary)
VALUES
	('Samantha', 'Young', 'Housekeeping', 4, 900),
	('Roger' ,'Palmer', 'Waiter', 3, 928.33);
	
SELECT * FROM employees;
