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


