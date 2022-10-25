/* Dropped table to rename it and make edits, since i was unable to import data on first try */
DROP TABLE departments;

/* Make table for department info csv file */
CREATE TABLE departments(
	dept_no VARCHAR,
	dept_name VARCHAR
);

/* View table that I created */
SELECT * FROM departments;

-------------------

/* Dropped table to  make edits, changing variable type */
DROP TABLE department_employee;

/* Make table for department/employe csv file */
CREATE TABLE department_employee(
	emp_number INTEGER,
	dept_number VARCHAR
);

/* View table that I created */
SELECT * FROM department_employee;

-------------------

/* Make table for salary data csv file */
CREATE TABLE salary(
	emp_number SERIAL PRIMARY KEY NOT NULL,
	salary BIGINT NOT NULL 
);

/* View table that I created */
SELECT * FROM salary;

-------------------

/* Make table for department/manager csv file */
CREATE TABLE department_manager(
	emp_number SERIAL PRIMARY KEY,
	dept_number VARCHAR
);

/* View table that I created */
SELECT * FROM department_manager;

-------------------

/* Make table for employee data csv file */
CREATE TABLE employee_data(
	emp_number SERIAL PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

/* View table that I created */
SELECT * FROM employee_data;

-------------------
 
/* Make table for job title data csv file */
CREATE TABLE job_title(
	title_id SERIAL PRIMARY KEY NOT NULL,
	title VARCHAR NOT NULL 
);

/* View table that I created */
SELECT * FROM job_title;

