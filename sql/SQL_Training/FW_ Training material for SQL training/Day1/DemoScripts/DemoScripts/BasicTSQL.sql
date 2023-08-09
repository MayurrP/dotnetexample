USE [SQLTrainingDB]
GO



CREATE TABLE [dbo].[EmployeeDetails](
	[Emp_No] [int] NOT NULL primary key,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [char](10) NULL,
	[Salary] [int] NULL,
	[City] [varchar](20) NULL,
)

GO



INSERT      
INTO EmployeeDetails(Emp_No, Name, DOB, Gender, Salary, City)
VALUES     (100,'Mahesh','1965-12-01','Male',30000,'Delhi'),
(101,'Suresh','1963-11-14','Male',34000,'Delhi'),
(102,'Rajat','1969-12-21','Male',23000,'Shimla'),
(103,'Kalpana','1961-12-01','Female',40000,'Goa'),
(104,'Neha','1971-12-01','Female',19000,'Goa'),
(105,'Sunita','1958-12-01','Female',50000,'Delhi')





select * from EmployeeDetails

select name,gender,city from EmployeeDetails

--To display the records in ascending  and descending order

select name,gender,city from EmployeeDetails order by Name

select name,gender,city from EmployeeDetails order by Name desc

select city from EmployeeDetails

Select distinct city from EmployeeDetails

--To display all the employees whose salary is in between 30000 to 40000

select * from EmployeeDetails where (Salary between 30000 and 40000)
--OR
select * from EmployeeDetails where Salary>=30000 and Salary<=40000


--Underscores represents the fixed length & % represents variable length characters
select * from EmployeeDetails where DOB like '196_______'

select * from EmployeeDetails where DOB like '196%'

select * from EmployeeDetails where City in ('Shimla','Goa') 


--Inbuilt functions of the sql to calculate maximum,minimum,average,sum etc
--as salary,as TotalSalary etc are called aliases

select MAX(salary) as Salary from EmployeeDetails
select AVG(salary) as Average from EmployeeDetails
select sum(salary) as TotalSalary from EmployeeDetails
select min(salary) as Minimumsalary from EmployeeDetails
select COUNT(*) as TotalEmployees from EmployeeDetails
select COUNT(city) from EmployeeDetails
select COUNT (distinct city) from EmployeeDetails	 



