--create tables
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no int,
	dept_no VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)

);

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no int,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE employees (
	emp_no int,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date VARCHAR,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
	emp_no int,
	salary int,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
	emp_no int,
	title VARCHAR,
	from_date VARCHAR,
	to_date VARCHAR,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);