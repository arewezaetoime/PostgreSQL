SELECT
	department_id,
	max(salary) as max_salary
from
	employees
group by department_id
order by department_id
;