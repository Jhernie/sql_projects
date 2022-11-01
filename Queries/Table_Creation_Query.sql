---ADD FOREIGN KEY!!


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
/* Dropped table to  make edits, changing "not null" and changing table name for more readability*/
DROP TABLE salary;

/* Make table for salary data csv file */
CREATE TABLE salary_table(
	emp_number SERIAL PRIMARY KEY,
	salary BIGINT 
);

/* View table that I created */
SELECT * FROM salary_table;

-------------------
/* Dropped table to  make edits, changing order of columns to match csv file */
DROP TABLE department_manager;

/* Make table for department/manager csv file */
CREATE TABLE department_manager(
	dept_number VARCHAR,
	emp_number SERIAL PRIMARY KEY
);

/* View table that I created */
SELECT * FROM department_manager;

-------------------
/* Dropped table to  make edits, dropping "not null" constraint */
DROP TABLE employee_data;

/* Make table for employee data csv file */
CREATE TABLE employee_data(
	emp_number SERIAL PRIMARY KEY,
	emp_title_id VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

/* View table that I created */
SELECT * FROM employee_data;

-------------------
/* Dropped table to  make edits, dropping "not null" constraint */
DROP TABLE job_title;
 
/* Make table for job title data csv file */
CREATE TABLE job_title(
	title_id VARCHAR,
	title VARCHAR 
);

/* View table that I created */
SELECT * FROM job_title;
