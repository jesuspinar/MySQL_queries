SELECT * FROM employees
WHERE first_name REGEXP '^J' AND last_name REGEXP 'N$' ;

SELECT * FROM employees
WHERE first_name REGEXP '^J|NE';

SELECT * FROM employees
WHERE first_name REGEXP '^J[ae]';

