USE employees;

SELECT *
FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'maya');
WHERE (first_name = 'Irena' OR first_name = 'Vidya'OR first_name = 'maya')
AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;



SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25'
AND hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date DESC, hire_date DESC;
