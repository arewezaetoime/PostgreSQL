SELECT
	department_id,
	AVG(salary) as avg_salary
from
	employees
group by department_id
order by department_id
;