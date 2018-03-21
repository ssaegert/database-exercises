USE employees;

SELECT first_name, last_name
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

SELECT t.title AS Title
FROM employees as e
  JOIN titles as t
    ON t.emp_no = e.emp_no
WHERE e.first_name IN (
  SELECT first_name
  FROM employees
  WHERE first_name = 'Aamod'
);


SELECT e.first_name, ' ', e.last_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' && e.gender = 'F';


SELECT d.dept_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' && e.gender = 'F';