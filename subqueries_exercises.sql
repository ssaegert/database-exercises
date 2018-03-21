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


SELECT e.first_name, e.last_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date IN (
    SELECT to_date
    FROM dept_manager
    WHERE de.to_date = '9999-01-01'
          && e.gender = 'F');


SELECT d.dept_name
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date IN (
  SELECT to_date
  FROM dept_manager
  WHERE de.to_date = '9999-01-01'
        && e.gender = 'F')
ORDER BY dept_name;



SELECT e.first_name, e.last_name
FROM employees AS e
 JOIN salaries AS s
    ON e.emp_no = s.emp_no
WHERE s.salary IN (
  SELECT salary
  FROM salaries
  WHERE salaries.to_date = '9999-01-01'
)
ORDER BY salary DESC
LIMIT 1;



SELECT e.first_name, e.last_name
FROM employees AS e
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
ORDER BY salary DESC
LIMIT 1;