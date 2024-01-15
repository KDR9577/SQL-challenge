--list the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	FROM "Employees" as e
	LEFT JOIN "Salaries" as s
	ON (e.emp_no=s.emp_no) 
	ORDER BY e.emp_no; 
	
--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
	FROM "Employees"
	WHERE CAST(hire_date as DATE) between '01-01-1986' and '12-31-1986';
	
--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
SELECT d.dept_name, dm.dept_no, e.emp_no, e.last_name, e.first_name
	FROM "Departments" as d
	JOIN "Dept_manager" as dm 
	ON (d.dept_no=dm.dept_no)
	JOIN "Employees" as e
	ON (dm.emp_no=e.emp_no);
	
--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
	FROM "Employees" as e
	JOIN "Dept_emp" as de
	ON (e.emp_no=de.emp_no)
	JOIN "Departments" as d
	ON (de.dept_no=d.dept_no);

--List first name, last name, and sex of each employee whose first name is Hercules and whose 
--last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
	FROM "Employees" as e
	WHERE (e.first_name = 'Hercules' and
	e.last_name like 'B%');
		
	
--List each employee in the Sales department, including their employee number, 
--last name, and first name.
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
	FROM "Departments" as d
	JOIN "Dept_emp" as de
	ON (d.dept_no=de.dept_no)
	JOIN "Employees" as e
	ON (de.emp_no=e.emp_no)
	WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
	FROM "Departments" as d
	JOIN "Dept_emp" as de
	ON (d.dept_no=de.dept_no)
	JOIN "Employees" as e
	ON (de.emp_no=e.emp_no)
	WHERE dept_name = 'Sales' or
	dept_name = 'Development';

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT e.last_name, count(*)
FROM "Employees" as e
GROUP BY e.last_name
ORDER BY count(*) DESC;
	