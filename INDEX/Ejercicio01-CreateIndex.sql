USE employees;
CREATE INDEX idx_hire_date ON employees(hire_date);

EXPLAIN SELECT emp_no FROM employees
WHERE hire_date > '1990-01-01';

/*
ALTER TABLE employees 
DROP INDEX idx_employess_hire_date;
*/