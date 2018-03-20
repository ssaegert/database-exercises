USE employees;

SELECT DISTINCT title
FROM titles;


SELECT last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY first_name, last_name;

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'maya')
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name
ORDER BY full_name
LIMIT 25;