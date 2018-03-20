USE employees;

SELECT CONCAT(
           emp_no, ' - ', last_name, ', ', first_name
       )
AS full_name,
birth_date
AS DOB
FROM employees
LIMIT 10;

SELECT first_name, last_name, dept_no
FROM employees AS A
JOIN dept_emp emp ON A.emp_no = emp.emp_no;


