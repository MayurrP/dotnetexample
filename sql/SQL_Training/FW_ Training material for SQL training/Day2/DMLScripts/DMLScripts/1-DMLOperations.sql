use jet2
--Use Select...Into Command
select * into NewEmployeeDetails
from EmployeeDetails


select * from NewEmployeeDetails

--Update Commands
s
update NewEmployeeDetails set salary =38000,DOB='1969-06-23' 
where Emp_No=102


update NewEmployeeDetails set salary =55000  
where City='Delhi' and Gender='Female'


--Creating EmployeeUpdate Table


CREATE TABLE [dbo].[EmployeeUpdate](
	[Emp_No] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [char](10) NULL,
	[Salary] [int] NULL,
	[City] [varchar](20) NULL
) 


insert into employeeupdate(Emp_No,Name,DOB,Gender,Salary,City) values
(101,'Suresh','1963-11-14','Male',38000,'Delhi')
,(102,'Rajat','1969-12-21','Male',30000,'Shimla')

select * from NewEmployeeDetails
select * from employeeupdate

select * from NewEmployeeDetails d
inner join employeeupdate u
on d.emp_no=u.emp_no

--Updating data of a NewEmployeeDetails table using EmployeeUpdate Table
update d set
d.Name=u.Name
,d.dob=u.dob
,d.gender=u.gender
,d.city=u.city
,d.salary=u.salary from
NewEmployeeDetails d
inner join employeeupdate u
on d.emp_no=u.emp_no


--Creating EmployeeUpdate1 Table

CREATE TABLE [dbo].[EmployeeUpdate1](
	[Emp_No] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[DOB] [varchar](50) NULL,
	[Gender] [char](10) NULL,
	[Salary] [int] NULL,
	[City] [varchar](20) NULL
) 


insert into employeeupdate1(Emp_No,Name,DOB,Gender,Salary,City) values
(101,'Sumesh',null,null,68000,'Dubai')
,(102,null,'1971-12-14',null,40000,null)

--Updating data of a NewEmployeeDetails table using EmployeeUpdate1 Table
update d set
d.Name=isnull(u.Name,d.Name)
,d.dob=isnull(u.dob,d.dob)
,d.gender=isnull(u.gender,d.gender)
,d.city=isnull(u.city,d.city)
,d.salary=isnull(u.salary,d.salary) from
NewEmployeeDetails d
inner join employeeupdate1 u
on d.emp_no=u.emp_no

--Inserting the data into an existing Table
insert into  NewEmployeeDetails (Emp_No,Name,DOB,Gender,City)
select Emp_No,Name,DOB,Gender,City from EmployeeDetails

--Deleting the data from the Table
delete from NewEmployeeDetails
where salary is null

delete from NewEmployeeDetails
where city='Delhi' and Gender='Female'

--Truncate Command

truncate table  NewEmployeeDetails

select * from  NewEmployeeDetails

--Dropping a table
drop table  NewEmployeeDetails

