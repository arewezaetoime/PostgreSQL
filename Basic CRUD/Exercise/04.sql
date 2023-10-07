SELECT
	id AS "ID",
	CONCAT(first_name, ' ', last_name) AS "Full name",
	job_title as "Job Title"
    
FROM employees
ORDER BY first_name
LIMIT 50;
