create database employee_management_system;
use employee_management_system;
select * from employeedata;
#1 Write a query to list the number of jobs available in the employees table
select distinct JobRole from employeedata;
#2 Write a query to get the total monthly income payable to employees
select sum(MonthlyIncome) as result from employeedata;
#3.Write a query to get the minimum monthly income from employees table
select min(MonthlyIncome) as result from employeedata;
#4.Write a query to get the maximum monthly income of an employee working as a Research Scientist
select max(MonthlyIncome) as result  from employeedata where JobRole = 'Research Scientist';
#5.Write a query to get the average monthly income and number of employees working as a Laboratory Technician
select avg(MonthlyIncome) as result  from employeedata where JobRole = 'Laboratory Technician';
select count(JobRole) from employeedata where JobRole ='Laboratory Technician';
#6 Write a query to get the number of employees with the same job
select JobRole, count(JobRole) from employeedata group by JobRole;
#7.Write a query to get the difference between the highest and lowest  monthly income
select max(MonthlyIncome) - min(MonthlyIncome) as difference from employeedata;
#8.Write a query to display the department and salary for all employees whose monthly income is not in the range 5000 through 7500
select Department, MonthlyIncome from employeedata where MonthlyIncome not between 5000 and 7500;
select Department, MonthlyIncome from employeedata where MonthlyIncome not between 5000 and 7500 order by Department;
#9.Write a query to display the departmentand job of employees whose jobname have exactly 7 characters
select Department, JobRole from employeedata where JobRole like '_______';
#10 Write a query to display the job of employees having 's' as the third character. 
select JobRole from employeedata where JobRole like '__s%';
