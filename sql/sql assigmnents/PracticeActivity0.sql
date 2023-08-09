use jet2

CREATE TABLE [dbo].[EmployeeDetails](
	[Emp_No] [int] NOT NULL primary key,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [char](10) NULL,
	[Salary] [int] NULL,
	[City] [varchar](20) NULL,
)


INSERT      
INTO EmployeeDetails(Emp_No, Name, DOB, Gender, Salary, City)
VALUES     (100,'Mahesh','1965-12-01','Male',30000,'Delhi'),
(101,'Suresh','1963-11-14','Male',34000,'Delhi'),
(102,'Rajat','1969-12-21','Male',23000,'Shimla'),
(103,'Kalpana','1961-12-01','Female',40000,'Goa'),
(104,'Neha','1971-12-01','Female',19000,'Goa'),
(105,'Sunita','1958-12-01','Female',50000,'Delhi')


select * from EmployeeDetails 

select Gender, AVG(Salary)
from EmployeeDetails
group by Gender

select City,SUM(Salary) TotalSalary
from EmployeeDetails
group by City
having sum(Salary) > 50000

select City,Gender,AVG(Salary) AverageSalary
from EmployeeDetails
group by City,Gender


