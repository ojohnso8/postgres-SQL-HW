--Queries

--1. List the following details of each employee: employee number, last name, first name, gender, 
--and salary.
SELECT * FROM employees;
SELECT * FROM salaries;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;

--2. List employees who were hired in 1986:
select * from employees
where hire_date like '1986%';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, 
--first name, and start and end employment dates.

SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM departments;

SELECT employees.last_name, employees.first_name, dept_manager.emp_no, dept_manager.dept_no, departments.dept_name,
dept_manager.from_date, dept_manager.to_date
FROM employees
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments ON departments.dept_no = dept_manager.dept_no;


--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT * FROM employees;
SELECT * FROM dept_emp;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name, dept_emp.dept_no
FROM dept_emp
LEFT JOIN employees ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON departments.dept_no = dept_emp.dept_no;

--5. List all employees whose first name is "Hercules" and last names begin with "B."

select * from employees
where first_name = 'Hercules'
AND last_name like 'B%';

--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

SELECT * FROM employees;
SELECT * FROM dept_emp;

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
where dept_emp.dept_no = 'd007';


--7. List all employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.

SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM departments;

SELECT employees.emp_no, employees.last_name, employees.first_name, dept_emp.dept_no
FROM employees
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
WHERE dept_no = 'd007' 
or dept_no = 'd005';


--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT last_name, COUNT(*) 
FROM employees
GROUP BY last_name
ORDER BY 1 ;