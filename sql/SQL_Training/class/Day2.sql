use jet2
--
select * from EmployeeDetails
where salary > (select salary from EmployeeDetails
				where Name = 'Rajat')

				----
select salary from EmployeeDetails
order by salary desc

-- 2nd Max Salary

select * from EmployeeDetails
where salary =
(
select max(salary) from EmployeeDetails
where salary < (select MAX(salary) from EmployeeDetails))


--4th Maximum
select top(1) * from
(select top(4) * from EmployeeDetails order by Salary desc) as T
order by T.Salary

--Alternate

select * from EmployeeDetails
where Salary = 
(
select MIN(Salary)
from (select top(4) * from EmployeeDetails order by Salary desc) as T
)

