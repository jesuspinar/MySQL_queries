SELECT * ,YEAR(hire_date) AS CONTRATADO_EN
FROM employees
WHERE YEAR(hire_date) BETWEEN 1980 AND 1990 #Forma corta 
#WHERE YEAR(hire_date) >= 1980 AND YEAR(hire_date) <= 1990 #Forma larga


