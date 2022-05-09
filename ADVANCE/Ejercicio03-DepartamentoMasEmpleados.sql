#MOSTAR EL DEPARTAMENTO QUE MAS EMPLEADOS TIENE
SELECT
	dept_name,
    COUNT(employees.emp_no) AS Total_empleados
FROM departments 
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no

GROUP BY dept_name
ORDER BY Total_empleados
LIMIT 1;