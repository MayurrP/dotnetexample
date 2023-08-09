--Inbuilt functions of the sql to calculate maximum,minimum,average,sum etc
--as salary,as TotalSalary etc are called aliases

select MAX(salary) as Salary from EmployeeDetails
select AVG(salary) as Average from EmployeeDetails
select sum(salary) as TotalSalary from EmployeeDetails
select min(salary) as Minimumsalary from EmployeeDetails
select COUNT(*) as TotalEmployees from EmployeeDetails
select COUNT(city) from EmployeeDetails
select COUNT (distinct city) from EmployeeDetails	 
