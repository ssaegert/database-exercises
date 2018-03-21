USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
  WHERE de.to_date = '9999-01-01'
ORDER BY `Department Name`;




SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' && e.gender = 'F'
ORDER BY `Department Name`;




SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
  JOIN dept_manager as de
    ON de.emp_no = e.emp_no
  JOIN departments as d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' && e.gender = 'F'
ORDER BY `Department Name`;




SELECT t.title AS Title, COUNT(e.first_name) AS Count
FROM employees as e
  JOIN titles as t
    ON t.emp_no = e.emp_no
  JOIN dept_emp AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' && d.dept_name = 'Customer Service' && t.to_date ='9999-01-01'
GROUP BY Title;



SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS Salary
FROM employees AS e
  JOIN dept_manager AS de
    ON de.emp_no = e.emp_no
  JOIN departments AS d
    ON d.dept_no = de.dept_no
  JOIN salaries AS s
    ON e.emp_no = s.emp_no
WHERE de.to_date = '9999-01-01' && s.to_date = '9999-01-01'
ORDER BY `Department Name`;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
  first_name AS 'Manager Name'
  FROM employees AS e
    JOIN dept_manager AS de
      ON de.emp_no = e.emp_no
    JOIN departments AS d
      ON d.dept_no = de.dept_no;
