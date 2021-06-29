USE sql_hr;

SELECT 
	e.employee_id,
	e.first_name AS "Employee name", 
	m.first_name AS "Manager name" 
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id;