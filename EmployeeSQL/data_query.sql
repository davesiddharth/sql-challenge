SELECT * FROM "Department"
SELECT * FROM "Dept_Emp"
SELECT * FROM "Dept_Manager"
SELECT * FROM "Employees"
SELECT * FROM "Salaries"
SELECT * FROM "Titles"

--1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".gender, "Salaries".salary
FROM "Employees"
INNER JOIN "Salaries"
ON "Salaries".emp_no = "Employees".emp_no

--2. List employees who were hired in 1986.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".hire_date
FROM "Employees"
WHERE hire_date >='1986-01-01' AND hire_date <='1986-12-31'

--3. List the manager of each department with the following information: 
--	 department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 	"Department".dept_no, 
		"Department".dept_name, 
		"Dept_Manager".emp_no, 
		"Employees".last_name, 
		"Employees".first_name, 
		"Dept_Manager".from_date,
		"Dept_Manager".to_date
FROM "Department"
INNER JOIN "Dept_Manager" ON "Department".dept_no = "Dept_Manager".dept_no
INNER JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT 	"Employees".emp_no, 
		"Employees".last_name, 
		"Employees".first_name,
		"Department".dept_name
FROM "Department"
INNER JOIN "Dept_Manager" ON "Dept_Manager".dept_no = "Department".dept_no
INNER JOIN "Employees" ON "Employees".emp_no = "Dept_Manager".emp_no

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT "Employees".first_name, "Employees".last_name
FROM "Employees"
WHERE "Employees".first_name = 'Hercules'  AND "Employees".last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Department".dept_name
FROM "Employees" 
INNER JOIN "Dept_Emp" ON "Dept_Emp".emp_no = "Employees".emp_no
INNER JOIN "Department" ON "Dept_Emp".dept_no = "Department".dept_no
WHERE "Department".dept_name = 'Sales'

