--Perform a few validation checks to checkout the tables
SELECT * 
FROM salary_table;

SELECT * 
FROM employee_data;

SELECT * 
FROM department_employee;

SELECT * 
FROM department_manager;

SELECT * 
FROM job_title;

SELECT * 
FROM salary_table
WHERE salary > 50000; 

SELECT * 
FROM departments
WHERE dept_name LIKE 'Hum%'; 

---Perform join on employee data and salary tables---

--1. List the following details of each employee: 
	--employee number, last name, first name, sex, and salary.
SELECT 
	employee_data.emp_number, 
	employee_data.last_name, 
	employee_data.first_name, 
	employee_data.sex,
	salary_table.salary
FROM employee_data
INNER JOIN salary_table ON 
employee_data.emp_number=salary_table.emp_number;

--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
	employee_data.first_name,
	employee_data.last_name, 
	employee_data.hire_date 
FROM employee_data
WHERE hire_date >= '1986-01-01'
  AND hire_date <  '1987-01-01';

--3. List the manager of each department with the following information: 
	--department number, department name, the manager's employee number, last name, first name.

SELECT * FROM department_manager
ORDER BY dept_number DESC;

SELECT * FROM departments;
SELECT * FROM employee_data;

SELECT 
	department_manager.emp_number, 
	department_manager.dept_number,
	departments.dept_name,
	employee_data.last_name, 
	employee_data.first_name
FROM department_manager
INNER JOIN departments ON department_manager.dept_number=departments.dept_no
INNER JOIN employee_data ON department_manager.emp_number=employee_data.emp_number
ORDER BY dept_number DESC;

--4. List the department of each employee with the following information: 
	--employee number, last name, first name, and department name.

SELECT * FROM department_employee;
SELECT * FROM employee_data;
SELECT * FROM departments;

SELECT 
	employee_data.emp_number,
	employee_data.last_name, 
	employee_data.first_name,
	departments.dept_name
FROM employee_data
INNER JOIN department_employee ON employee_data.emp_number=department_employee.emp_number
INNER JOIN departments ON department_employee.dept_number=departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is 
	--"Hercules" and last names begin with "B."

SELECT 
	employee_data.first_name,
	employee_data.last_name,
	employee_data.sex
FROM employee_data
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';
	
--6. List all employees in the Sales department, including their employee number, 
	--last name, first name, and department name.

SELECT 
	employee_data.emp_number,
	employee_data.last_name, 
	employee_data.first_name,
	departments.dept_name
FROM employee_data
INNER JOIN department_employee 
	ON employee_data.emp_number=department_employee.emp_number
INNER JOIN departments 
	ON department_employee.dept_number=departments.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their 
	--employee number, last name, first name, and department name.

SELECT 
	employee_data.emp_number,
	employee_data.last_name, 
	employee_data.first_name,
	departments.dept_name
FROM employee_data
INNER JOIN department_employee 
	ON employee_data.emp_number=department_employee.emp_number
INNER JOIN departments 
	ON department_employee.dept_number=departments.dept_no
WHERE dept_name = 'Sales'
	OR dept_name = 'Development';
	
--8. List the frequency count of employee last names 
	--(i.e., how many employees share each last name) in descending order.

SELECT last_name,
	COUNT(last_name) AS employee_count	
FROM employee_data 
GROUP BY last_name
ORDER BY employee_count DESC;

--Check table to validate the previous results
SELECT last_name FROM employee_data
WHERE last_name = 'Baba';

