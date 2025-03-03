-- Create departments table
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL UNIQUE
	);

 -- Create titles table
CREATE TABLE titles (
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR(50) NOT NULL UNIQUE
	);
	
-- Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(10) NOT NULL,
 	birth_date DATE NOT NULL,
 	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
 	sex CHAR(1) NOT NULL CHECK (sex IN ('M', 'F')),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);

-- Create dept_emp table
CREATE TABLE dept_emp (
 	emp_no INT NOT NULL,
 	dept_no VARCHAR(10) NOT NULL,
 	PRIMARY KEY (emp_no, dept_no),
   	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
   	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);

-- Create dept_manager table	
CREATE TABLE dept_manager (
	dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
 );

-- Create salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary DECIMAL(10,2) NOT NULL CHECK (salary > 0),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Check the departments table
SELECT * FROM departments;

-- Check the titles table
SELECT * FROM titles

-- Check the employees table
SELECT * FROM employees;

-- Check the dept_emp table
SELECT * FROM dept_emp;

-- Check the dept_manager table
SELECT * FROM dept_manager;

-- Check the salaries table
SELECT * FROM salaries;

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;
	
-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT 
    departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT employees.last_name, 
    COUNT(*) AS last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;

