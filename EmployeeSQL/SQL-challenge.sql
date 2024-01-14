--list the employee number, last name, first name, sex, and salary of each employee.

Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
	from "Employees" as e
	Left Join "Salaries" as s
	on (e.emp_no=s.emp_no) 
	order by e.emp_no; 
	
--List the first name, last name, and hire date for the employees who were hired in 1986.
--DATE FORMAT INCORRECT????
Select first_name, last_name, hire_date
	from "Employees"
	where hire_date between '1-01-1986' and '12-31-1986';
	
--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
--HOW TO JOIN 3 TABLES????
Select d.dept_name, dm.dept_no, e.emp_no, e.last_name, e.first_name
	from "Departments" as d
	Left Join "Dept_manager" as dm 
	on (d.dept_no=dm.dept_no)
	from "Dept_manager" as dm 
	Left Join "Employees" as e
	on (dm.emp_no=e.emp_no);
	
--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.

--List first name, last name, and sex of each employee whose first name is Hercules and whose 
--last name begins with the letter B.
--HOW TO SEARCH WITH LAST NAME BEGINS WITH B????

Select e.first_name, e.last_name, e.sex
	from "Employees" as e
	Where e.first_name = 'Hercules' and e.last_name ='B*';
	
--List each employee in the Sales department, including their employee number, 
--last name, and first name.

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.

--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
	