SELECT *
FROM employees

--List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries on employees.emp_no= salaries.emp_no

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date

--List the manager of each department along with their department number, department name,
--employee number, last name, and first name.
SELECT departments.dept_no, dept_name, dept_manager.emp_no, employees.first_name, last_name  
From departments
Join dept_manager on departments.dept_no = dept_manager.dept_no
Join employees on dept_manager.emp_no = employees.emp_no

--List the department number for each employee along with that employee’s employee number,
--last name, first name, and department name.
--CREATE VIEW departments_by_employees AS
SELECT departments.dept_no, dept_emp.emp_no, first_name, last_name, dept_name
FROM departments
JOIN dept_emp on departments.dept_no = dept_emp.dept_no
JOIN employees on dept_emp.emp_no = employees.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose
--last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--List each employee in the Sales department, including their employee number,
--last name, and first name.
SELECT dept_name, emp_no, first_name, last_name
FROM departments_by_employees
WHERE dept_name = 'Sales'

--List each employee in the Sales and Development departments,
--including their employee number, last name, first name, and department name
SELECT dept_name, emp_no, first_name, last_name
FROM departments_by_employees
WHERE dept_name = 'Sales' OR dept_name = 'Development'
ORDER BY dept_name

--List the frequency counts, in descending order, of all the employee last names
--(that is, how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC 