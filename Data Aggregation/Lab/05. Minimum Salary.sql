SELECT
	department_id,
	min(salary) as min_salary
from
	employees
group by department_id
order by department_id
;